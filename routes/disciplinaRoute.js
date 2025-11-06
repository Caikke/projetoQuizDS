const express = require("express");
const router = express.Router();
const {
    consultarDisciplina,
    novaDisciplina,
    atualizarDisciplina,
    deletarDisciplina,
    consultarDisciplinaPorIDCurso
} = require("../controllers/disciplinaController");

router.get('/disciplina', consultarDisciplina);           // Listar todas
router.post('/disciplina', novaDisciplina);               // Criar nova
router.put('/disciplina/:id', atualizarDisciplina);       // Atualizar existente
router.delete('/disciplina/:id', deletarDisciplina);      // Excluir por ID
router.get('/disciplina/curso/:curso_id', consultarDisciplinaPorIDCurso); // adicionado rota para consultar disciplina por curso
module.exports = router;
