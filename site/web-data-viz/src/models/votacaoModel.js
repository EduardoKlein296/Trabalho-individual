var database = require("../database/config");

function buscarVotos() {

    var instrucaoSql = `select f.nome, count(v.voto) as votos from votação v inner join
    funko f on v.voto = f.id group by f.nome;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarVotos
}
