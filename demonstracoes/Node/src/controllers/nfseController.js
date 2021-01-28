const fs = require('fs') 
const { resolve } = require('path')

const Componte = require('../service/componenteNFSeService')

async function validaParams(req){
    const params = req
    if(!params.docTomador){
        return { error: true , message: "O CNPj do Tomador não foi informada"}
    }
    if(!params.imTomador){
        return { error: true , message: "A Inscrição Municipal do Tomador não foi informada"}
    }
    if(!params.dtInicial){
        return { error: true , message: "A Data Inicial para a consulta não foi informada"}
    }
    if(!params.dtFinal){
        return { error: true , message: "A Data Final para a consulta não foi informada"}
    }
    return { error: false }
}


module.exports = {
    async consultarNotasTomadas(req, res){
        try {
            const params = req.query
            const validation = await validaParams(params)

            if (validation.error){
                return res.status(400).json(validation)
            }

            const retorno = await Componte.consultaNotasTomadas(
                params.municipioConsulta, 
                params.docTomador, 
                params.imTomador, 
                params.docPrestador, 
                params.imPrestador, 
                params.dtInicial, 
                params.dtFinal, 
                params.pagina, 
                params.Extras)

            return res.status(200).type('application/xml').send(retorno)            

        } catch (error) {
            return res.status(400).json(
                {
                    error: true,
                    message: 'Falha ao realizar a consulta!',
                    messageError: error.message
                }
            )
        }
    }
}
