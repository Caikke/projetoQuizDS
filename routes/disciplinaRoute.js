const express = require("express");
const router = express.Router();
const {
    getDisciplinas,
    createDisciplinas,
    updateDisciplinas,
    deleteDisciplina
} = require("../controllers/disciplinaController");

router.get('/disciplina', getDisciplinas);  
router.post('/disciplina', createDisciplinas);          
router.put('/disciplina/:id', updateDisciplinas);   
router.delete('/disciplina/:id', deleteDisciplina);

module.exports = router;
