const express = require('express')
const router = express.Router()
const cursoController = require("../controllers/cursoController")

router.post("/curso", cursoController.novoRegistro)
router.put("/curso", cursoController.edicaoRegistro)
router.delete("/curso", cursoController.excluirRegistro)
router.get("/curso", cursoController.consultaRegistro)
module.exports = router