const express = require('express')
const router = express.Router()
const cursoController = require("../controllers/cursoController")
router.post("/curso", cursoController.novoRegistro)
router.post ("/curso",cursoController.edicaoRegistro)
router.post ("/curso",cursoController.excluirRegistro)
router.post ("/curso",cursoController.consultaRegistro)
module.exports = router