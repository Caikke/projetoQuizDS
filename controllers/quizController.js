const model = require("../models/quizModel");

const quizController = {
 
    getQuizzes: async (req, res) => {
        try {
            const [rows] = await model.consultarQuiz();
            res.json(rows);
        } catch (error) {
            res.status(500).json({ error: "Erro ao buscar quizzes." });
        }
    },


    createQuiz: async (req, res) => {
        const { data_quiz, curso_id, disciplina_id, usuario_id, pontuacao } = req.body;
        try {
            await model.novoQuiz({ data_quiz, curso_id, disciplina_id, usuario_id, pontuacao });
            res.status(201).json({ message: "Quiz criado com sucesso!" });
        } catch (error) {
            res.status(500).json({ error: "Erro ao criar quiz." });
        }
    },

    updateQuiz: async (req, res) => {
        const { id } = req.params;
        const { data_quiz, curso_id, disciplina_id, usuario_id, pontuacao } = req.body;
        try {
            await model.atualizarQuiz({ id, data_quiz, curso_id, disciplina_id, usuario_id, pontuacao });
            res.json({ message: "Quiz atualizado com sucesso!" });
        } catch (error) {
            res.status(500).json({ error: "Erro ao atualizar quiz." });
        }
    },


    deleteQuiz: async (req, res) => {
        const { id } = req.params;
        try {
            await model.deletarQuiz(id);
            res.json({ message: "Quiz excluído com sucesso!" });
        } catch (error) {
            res.status(500).json({ error: "Erro ao excluir quiz." });
        }
    },


    getQuizzesPorCurso: async (req, res) => {
        const { id } = req.params;
        if (!id) {
            return res.status(400).json({ error: "ID do curso é obrigatório." });
        }

        try {
            const [rows] = await model.consultarQuizPorIdCurso(id);
            res.json(rows);
        } catch (error) {
            res.status(500).json({ error: "Erro ao buscar quizzes por curso." });
        }
    },


    getQuestoesEAlternativas: async (req, res) => {
        const { idDisciplina } = req.params;
        if (!idDisciplina) {
            return res.status(400).json({ error: "ID da disciplina é obrigatório." });
        }

        try {
            const [rows] = await model.getQuestoesEAlternativasPorDisciplina(idDisciplina);
            res.json(rows);
        } catch (error) {
            res.status(500).json({ error: "Erro ao buscar questões e alternativas." });
        }
    }
};

module.exports = quizController;
