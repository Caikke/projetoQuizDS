const cursoModel = require('../models/cursoModel.js');

const cursoController = {
 
    novoRegistro: async (req, res) => {
        try {
            const { nome, sigla } = req.body;
            if (!nome || !sigla) {
                return res.status(400).json({ error: 'Nome e sigla são obrigatórios.' });
            }

            const resposta = await cursoModel.novoRegistro({ nome, sigla });
            res.status(201).json({ message: 'Curso criado com sucesso!', data: resposta });
        } catch (error) {
            console.error('Erro ao criar curso:', error);
            res.status(500).json({ error: 'Erro interno ao criar curso.' });
        }
    },


    edicaoRegistro: async (req, res) => {
        try {
            const { id, nome, sigla } = req.body;
            if (!id || !nome || !sigla) {
                return res.status(400).json({ error: 'ID, nome e sigla são obrigatórios.' });
            }

            const resposta = await cursoModel.edicaoRegistro({ id, nome, sigla });
            res.status(200).json({ message: 'Curso editado com sucesso!', data: resposta });
        } catch (error) {
            console.error('Erro ao editar curso:', error);
            res.status(500).json({ error: 'Erro interno ao editar curso.' });
        }
    },

    excluirRegistro: async (req, res) => {
        try {
            const { id } = req.body;
            if (!id) {
                return res.status(400).json({ error: 'ID é obrigatório.' });
            }

            await cursoModel.excluirRegistro(id);
            res.status(200).json({ message: 'Curso excluído com sucesso!' });
        } catch (error) {
            console.error('Erro ao excluir curso:', error);
            res.status(500).json({ error: 'Erro interno ao excluir curso.' });
        }
    },


    consultaRegistro: async (req, res) => {
        try {
            const [result] = await cursoModel.consultarTodosRegistros();
            res.status(200).json(result);
        } catch (error) {
            console.error('Erro ao consultar cursos:', error);
            res.status(500).json({ error: 'Erro interno ao consultar cursos.' });
        }
    },
//Adicionado controller para consultar o curso por nome
    consultarCursoPorNome: async (req, res) => {
        const {nome} = req.params;

        if (!nome){
            return res.status(400).json({ error: "Nome é obrigatório."});
        }
        
        try {
            const curso = await curso.Model.consultarCursoPorNome(nome);

            if (curso.length === 0) {
                return res.status(404).json({ error: 'Curso não encontrado'});
            }
            res.status(200).json({ data: curso[0]});
        } catch (error) {
            console.error('Erro ao consultar curso por nome:', error);
            res.status(500).json({ error: 'Erro interno ao consultar curso.'})
        }
    }
};

module.exports = cursoController;
