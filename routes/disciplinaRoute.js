const express = require("express");
const router = express.Router();
const disciplinaController = require("../controllers/disciplinaController");
const verifyJwt = require("../config/middleware/verifyToken");


router.get("/api/disciplina", verifyJwt, disciplinaController.getDisciplinas);

router.post("/api/disciplina", verifyJwt, disciplinaController.createDisciplinas);

router.put("/api/disciplina/:id", verifyJwt, disciplinaController.updateDisciplinas);

router.delete("/api/disciplina/:id", verifyJwt, disciplinaController.deleteDisciplina);

router.get("/api/disciplina/:id", verifyJwt, disciplinaController.consultarDisciplinasPorCursoId);

module.exports = router;
