const model = require("../models/disciplinaModel");

// GET - Listar disciplinas
const consultarDisciplina = async (req, res) => {
    try {
        const [rows] = await model.consultarDisciplina(); 
        res.status(200).json(rows);
    } catch (error) {
        console.error("Erro ao buscar disciplinas:", error);
        res.status(500).json({ error: "Erro ao buscar disciplinas." });
    }
};

// POST - Criar nova disciplina
const novaDisciplina = async (req, res) => {
    const { nome, curso_id, sigla } = req.body;

    if (!nome || !curso_id || !sigla) {
        return res.status(400).json({ error: "Todos os campos são obrigatórios." });
    }

    try {
        await model.novaDisciplina({ nome, curso_id, sigla });
        res.status(201).json({ message: "Disciplina criada com sucesso!" });
    } catch (error) {
        console.error("Erro ao criar disciplina:", error);
        res.status(500).json({ error: "Erro ao criar disciplina." });
    }
};

// PUT - Atualizar disciplina
const atualizarDisciplina = async (req, res) => {
    const { id } = req.params;
    const { nome, curso_id, sigla } = req.body;

    if (!id || !nome || !curso_id || !sigla) {
        return res.status(400).json({ error: "Todos os campos são obrigatórios." });
    }

    try {
        await model.atualizarDisciplina({ id, nome, curso_id, sigla });
        res.status(200).json({ message: "Disciplina atualizada com sucesso!" });
    } catch (error) {
        console.error("Erro ao atualizar disciplina:", error);
        res.status(500).json({ error: "Erro ao atualizar disciplina." });
    }
};

// DELETE - Excluir disciplina
const deletarDisciplina = async (req, res) => {
    const { id } = req.params;

    if (!id) {
        return res.status(400).json({ error: "ID é obrigatório." });
    }

    try {
        await model.deletarDisciplina(id);
        res.status(200).json({ message: "Disciplina excluída com sucesso!" });
    } catch (error) {
        console.error("Erro ao excluir disciplina:", error);
        res.status(500).json({ error: "Erro ao excluir disciplina." });
    }
};

// Adicionado controller para consultar a disciplina por id do curso
const consultarDisciplinasPorCursoId = async (req, res) => {
    const { curso_id } = req.params;

    if (!curso_id) {
        return res.status(400).json({ error: 'ID do curso é obrigatório.' });
    }

    try {
        const disciplinas = await disciplinaModel.consultarDisciplinasPorCursoId(curso_id);

        if (disciplinas.length === 0) {
            return res.status(404).json({ error: 'Nenhuma disciplina encontrada para este curso.' });
        }

        res.status(200).json({ data: disciplinas });
    } catch (error) {
        console.error('Erro ao consultar disciplinas:', error);
        res.status(500).json({ error: 'Erro interno ao consultar disciplinas.' });
    }
};

module.exports = {
    consultarDisciplina,
    novaDisciplina,
    atualizarDisciplina,
    deletarDisciplina,
    consultarDisciplinasPorCursoId
};
