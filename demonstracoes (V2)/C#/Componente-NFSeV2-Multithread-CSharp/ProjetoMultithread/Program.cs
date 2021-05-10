using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Threading;
using NFSeX;
using Projeto.Multithread.Entidade;

namespace Projeto.Multithread
{
    class Program
    {
        static int qtdeThreadsConsultaImpressao = 20;
        static int qtdeRpsParaConsulta = 500;

        static List<String> filaConsulta = null;

        static void Main(string[] args)
        {
            if (filaConsulta == null)
            {
                filaConsulta = new List<String>();
                for (int i = 1; i <= qtdeRpsParaConsulta; i++)
                {
                    filaConsulta.Add(i.ToString());
                }
            }

            for (int i = 1; i <= qtdeThreadsConsultaImpressao; i++)
            {
                System.Threading.Thread newThread = new System.Threading.Thread(ConsultarExportarImpressaoParaPDF);
                newThread.SetApartmentState(ApartmentState.MTA);
                newThread.Name = "Con_Imp_" + i.ToString();
                newThread.Start(i);
            }

            System.Console.ReadKey();
        }
        static void ConsultarExportarImpressaoParaPDF(object threads)
        {
            // NFS-e (Por Thread)
            spdNFSeX vNFSe = new spdNFSeX();
            vNFSe.ConfigurarSoftwareHouse(ConfigurationManager.AppSettings["CNPJ_SOFTWARE_HOUSE"], ConfigurationManager.AppSettings["TOKEN_SOFTWARE_HOUSE"]);
            vNFSe.LoadConfig(ConfigurationManager.AppSettings["ARQUIVO_CONFIGURACAO_NFSE"] ?? string.Empty);

            // Caminho para impressão
            string caminhoImpressao = ConfigurationManager.AppSettings["PASTA_IMPRESSOA_NFSE"] ?? string.Empty;
            if (!Directory.Exists(caminhoImpressao))
                Directory.CreateDirectory(caminhoImpressao);

            // while
            String numeroRps = GetPrimeiroItemPendenteProcessamento();
            while (numeroRps != null)
            {
                try
                {
                    vNFSe.Consultar(string.Empty, numeroRps, "1", "1", string.Empty);

                    RetornoConsulta retornoModel = RetornoConsulta.desserializarObjeto(vNFSe.RetornoJson());
                    String arquivo = caminhoImpressao + "\\Documento_" + numeroRps + ".pdf";
                    vNFSe.ExportarImpressaoParaPDF(retornoModel.XmlImpressao, string.Empty, string.Empty, arquivo);

                    System.Console.WriteLine($"Arquivo gerado: {arquivo}. Thread: {threads}.");
                }
                catch (Exception ex)
                {
                    var mensagem = $"ProcessarConsultar: {ex.Message}. Thread: {threads}. RPS: {numeroRps}";
                    if (ex.InnerException != null)
                        mensagem += $" InnerException: {ex.InnerException.Message}. Thread: {threads}. RPS: {numeroRps}";

                    System.Console.WriteLine(mensagem);
                    // Inclui item na fila novamente
                    SetPrimeiroItemPendenteProcessamento(numeroRps);
                }
                finally
                {
                    // Próximo item da fila
                    numeroRps = GetPrimeiroItemPendenteProcessamento();
                }
            }
        }
        public static String GetPrimeiroItemPendenteProcessamento()
        {
            String numeroRps = null;
            if ((filaConsulta != null) && (filaConsulta.Count > 0))
            {
                int indice = 0;
                numeroRps = filaConsulta[indice];
                filaConsulta.Remove(numeroRps);
            }
            return numeroRps;
        }

        public static void SetPrimeiroItemPendenteProcessamento(String numeroRps)
        {
            if (filaConsulta != null)
            {
                int indice = 0;
                filaConsulta.Insert(indice, numeroRps);
            }
        }
    }
}