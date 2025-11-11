const {
    insertQuestoes,
    updateQuestoes,
    deleteQuestoes
} = require('../models/questaoModel');

const novaQuestao = async (req, res) => {
    try {
        const questao = req.body;
        await insertQuestoes(questao);
        res.status(201).json({ message: 'Questão inserida com sucesso!' });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const atualizarQuestao = async (req, res) => {
    try {
        const questao = { ...req.body, id: req.params.id };
        await updateQuestoes(questao);
        res.status(200).json({ message: 'Questão atualizada com sucesso!' });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const deletarQuestao = async (req, res) => {
    try {
        await deleteQuestoes(req.params.id);
        res.status(200).json({ message: 'Questão excluída com sucesso!' });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

module.exports = {
    novaQuestao,
    atualizarQuestao,
    deletarQuestao
};
