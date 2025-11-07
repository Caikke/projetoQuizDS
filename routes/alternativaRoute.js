const express = require('express');
const router = express.Router();
const {
    getAlternativa,
    createAlternativa,
    updateAlternativa,
    deleteAlternativa,
    consultarAlternativaPorIDQuestao
} = require("../controllers/alternativaController");

router.get('/alternativa', getAlternativa);           
router.post('/alternativa', createAlternativa);              
router.put('/alternativa/:id', updateAlternativa);      
router.delete('/alternativa/:id', deleteAlternativa);     
router.get('/alternativa/questao/:questao_id', consultarAlternativaPorIDQuestao);
module.exports = router;