const model = require("../models/disciplinaModel");

const disciplinaController = {
    // GET - Listar disciplinas
    getDisciplinas: async (req, res) => {
        try {
            const [rows] = await model.selectDisciplinas();
            res.json(rows);
        } catch (error) {
            res.status(500).json({ error: "Erro ao buscar" });
        }
    },

    // POST - Criar disciplina
    createDisciplinas: async (req, res) => {
        const { nome, curso_id, sigla } = req.body;
        try {
            await model.insertDisciplina({ nome, curso_id, sigla });
            res.status(201).json({ message: "Disciplina criada!" });
        } catch (error) {
            res.status(500).json({ error: "Erro ao criar disciplina." });
        }
    },

    // PUT - Atualizar disciplina
    updateDisciplinas: async (req, res) => {
        const { id } = req.params;
        const { nome, curso_id, sigla } = req.body;
        try {
            await model.updateDisciplina({ id, nome, curso_id, sigla });
            res.json({ message: "Disciplina atualizada com sucesso!" });
        } catch (error) {
            res.status(500).json({ error: "Erro ao atualizar disciplina." });
        }
    },

    // DELETE - Deletar disciplina
    deleteDisciplina: async (req, res) => {
        const { id } = req.params;
        try {
            await model.deleteDisciplina(id);
            res.json({ message: "Disciplina excluída!" });
        } catch (error) {
            res.status(500).json({ error: "Erro ao excluir disciplina." });
        }
    },

    // Adicionado controller para consultar a disciplina por id do curso
    consultarDisciplinasPorCursoId: async (req, res) => {
        const { id } = req.params;

        if (!id) {
            return res.status(400).json({ error: 'ID do curso é obrigatório.' });
        }

        try {
            const [disciplina] = await model.consultarDisciplinaPorIDCurso(id);

            if (disciplina.length === 0) {
                return res.status(404).json({ error: 'Nenhuma disciplina encontrada para este curso.' });
            }

            res.status(200).json(disciplina);
        } catch (error) {
            console.error('Erro ao consultar disciplinas:', error);
            res.status(500).json({ error: 'Erro interno ao consultar disciplinas.' });
        }
    }
};

module.exports = disciplinaController;
