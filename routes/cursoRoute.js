const express = require('express')
const router = express.Router()
const {
    novoRegistro,
    edicaoRegistro,
    excluirRegistro,
    consultaRegistro,
    consultarCursoPorNome
} = require("../controllers/cursoController")

router.post("/curso", novoRegistro)
router.put("/curso/:id", edicaoRegistro)
router.delete("/curso/:id", excluirRegistro)
router.get("/curso", consultaRegistro)
router.get('/curso/nome/:nome',consultarCursoPorNome) //Adicionado rota para consultar curso por nome

module.exports = router