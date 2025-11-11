const express = require("express");
const router = express.Router();
const {
    novaQuestao,
    atualizarQuestao,
    deletarQuestao
} = require("../controllers/questaoController");

router.post("/questoes", novaQuestao);
router.put("/questoes/:id", atualizarQuestao);
router.delete("/questoes/:id", deletarQuestao);

module.exports = router;
