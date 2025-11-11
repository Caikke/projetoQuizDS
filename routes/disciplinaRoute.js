const express = require("express");
const router = express.Router();
const disciplinaController = require("../controllers/disciplinaController");
const verifyJwt = require("../config/middleware/verifyToken")

router.get('/api/disciplina', disciplinaController.getDisciplinas);           // Listar todas
router.post('/api/disciplina', disciplinaController.createDisciplinas);               // Criar nova
router.put('/api/disciplina/:id', disciplinaController.updateDisciplinas);       // Atualizar existente
router.delete('/api/disciplina/:id', disciplinaController.deleteDisciplina);      // Excluir por ID
router.get("/api/disciplina/:id", verifyJwt, disciplinaController.consultarDisciplinasPorCursoId) // adicionado rota para consultar disciplina por curso

module.exports = router;
