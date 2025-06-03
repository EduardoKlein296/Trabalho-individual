var express = require("express");
var router = express.Router();

var votacaoController = require("../controllers/votacaoController");

router.get("/ultimos", function (req, res) {
    votacaoController.buscarVotos(req, res);
});

module.exports = router;