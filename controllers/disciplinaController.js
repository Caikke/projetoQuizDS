const model = require("../models/disciplinaModel");

//GET - listar disciplia
const getDisciplinas = async (req, res) => {
    try {
        const [rows] = await model.selectDisciplinas();
        res.json(rows);
    } catch (error) {
        res.status(500).json({ error: "Erro ao buscar" });
    }
};

//POST - criar disciplina
const createDisciplinas = async (req, res) => {
    const { nome, curso_id, sigla } = req.body;
    try {
        await model.insertDisciplina({ nome, curso_id, sigla });
        res.status(201).json({ message: "Disciplina criada!" });
    } catch (error) {
        res.status(500).json({ error: "Erro ao criar disciplina." });
    }
};

//PUT - atualizar discipina
const updateDisciplinas = async (req, res) => {
    const { id } = req.params;
    const { nome, curso_id, sigla } = req.body;
    try {
        await model.updateDisciplina({ id, nome, curso_id, sigla });
        res.json({ message: "Disciplina atualizada com sucesso!" });
    } catch (error) {
        res.status(500).json({ error: "Erro ao atualizar disciplina." });
    }
};

// DELETE - Deletar disiciplina
const deleteDisciplina = async (req, res) => {
    const { id } = req.params;
    try {
        await model.deleteDisciplina(id);
        res.json({ message: "Disciplina excluída!" });
    } catch (error) {
        res.status(500).json({ error: "Erro ao excluir disciplina." });
    }
};

module.exports = {
    getDisciplinas,
    createDisciplinas,
    updateDisciplinas,
    deleteDisciplina
};
