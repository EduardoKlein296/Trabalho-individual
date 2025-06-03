var votosModel = require("../models/votacaoModel");

function buscarVotos(req, res) {

    votosModel.buscarVotos(req)
    .then(resultado => {
        res.status(200).json(resultado);
    })
    .catch(erro =>{
        console.error(erro);
        res.status(500).json(erro.sqlMessage);
    })
}
module.exports = {
    buscarVotos
}