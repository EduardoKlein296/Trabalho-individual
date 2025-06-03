var database = require("../database/config");

function buscarVotos() {

    var instrucaoSql = `select count(voto) from votação where voto = 1;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarVotos
}
