using Newtonsoft.Json;

namespace Projeto.Multithread.Entidade
{
    internal class RetornoBaseConsulta
    {
        public RetornoConsulta[] Resposta { get; set; }
    }
    public class RetornoConsulta
    {
        public static RetornoConsulta desserializarObjeto(string value)
        {
            var model = new RetornoBaseConsulta();
            if (!string.IsNullOrEmpty(value))
                model = JsonConvert.DeserializeObject<RetornoBaseConsulta>(value);

            var retorno = model.Resposta[0] ?? new RetornoConsulta() { Status = "ERRO", Motivo = $"Não foi possível converter o retorno do serviço ({value})." };
            retorno.Conteudo = value;
            return retorno;
        }
        public string Conteudo { get; set; }
        public string MensagemRetorno { get; set; }

        public string Status { get; set; }
        public string Motivo { get; set; }
        public string CNPJ { get; set; }
        public string InscricaoMunicipal { get; set; }
        public string SerieRps { get; set; }
        public string NumeroRps { get; set; }
        public string CodVerificacao { get; set; }
        public string Situacao { get; set; }
        public string DataAutorizacao { get; set; }
        public string DataCancelamento { get; set; }
        public string ChaveCancelamento { get; set; }
        public string Tipo { get; set; }
        public string XmlImpressao { get; set; }
        public string Protocolo { get; set; }
        public string CSV { get; set; }
        public string DataEmissaoNFSe { get; set; }
        public string NumeroNFSe { get; set; }

    }
}
