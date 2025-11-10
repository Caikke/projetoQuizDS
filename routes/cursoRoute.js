const express = require('express')
const router = express.Router()
const cursoController = require("../controllers/cursoController")
const verifyJwt = require("../config/middleware/verifyToken")

router.post("/api/curso", cursoController.novoRegistro)
router.put("/api/curso/:id", cursoController.edicaoRegistro)
router.delete("/api/curso/:id", cursoController.excluirRegistro)
router.get('/api/curso/nome/:nome',cursoController.consultarCursoPorNome) //Adicionado rota para consultar curso por nome
router.get("/api/curso", verifyJwt, cursoController.consultaRegistro)

module.exports = router