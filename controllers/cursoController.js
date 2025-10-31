const cursoModel = require('../models/cursoModel.js');

const cursoController = {

    novoRegistro: async (req, res) => {
        const [resposta] = cursoModel.novoRegistro(req.body)
        res.status(201).json({insertId: resposta.insertId})
    },

    edicaoRegistro: async (req, res) => {
        const [resposta] = cursoModel.edicaoRegistro(req.body)
        res.status(201).json({insertId: resposta.insertId})

        try {
            if (!id || !nome || !descricao) {
                return res.status(400).json({
                    error: 'ID, nome e descrição são obrigatórios.'
                });
            }

            const edit = await cursoModel.edicaoRegistro(id, nome, descricao);
            if (edit) {
                return res.status(200).json({
                    message: 'Edição realizada com sucesso!',
                    data: edit
                });
            } else {
                return res.status(500).json({
                    error: 'Erro ao realizar edição.'
                });
            }
        } catch (error) {
            console.error('Erro ao editar registro: ', error);
            return res.status(500).json({
                error: 'Erro interno ao editar curso.'
            });
        }
    },

    excluirRegistro: async (req, res) => {
        const [resposta] = cursoModel.excluirRegistro(req.body)
        res.status(201).json({insertId: resposta.insertId})

        try {
            if (!id) {
                return res.status(400).json({
                    error: 'ID é obrigatório.'
                });
            }

            const esc = await cursoModel.excluirRegistro(id);
            if (esc) {
                return res.status(200).json({
                    message: 'Exclusão feita com sucesso!'
                });
            } else {
                return res.status(500).json({
                    error: 'Curso não excluído.'
                });
            }
        } catch (error) {
            console.error('Erro ao excluir curso: ', error);
            return res.status(500).json({
                error: 'Erro interno ao excluir curso.'
            });
        }
    },

    consultaRegistro: async (req, res) => {
        
        const [resposta] = cursoModel.consultarTodosRegistros(req.body)
        res.status (201).json ({insertId: resposta.insertId})

        try {
            const cursos = await cursoModel.consultarTodosRegistros();

            res.status(200).json({
                message: 'Cursos encontrados com sucesso!',
                data: cursos
            })
            
        } catch (error) {
            console.error('Erro ao consultar registros: ', error);
            return res.status(500).json({
                error: 'Erro interno ao consultar cursos.'
            });
        }
    }
};

module.exports = cursoController;