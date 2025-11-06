const db = require('../config/db.js')

//correção do código mudar curso.descrição para curso.sigla para não dar conflito com o banco de dados.
const cursoModel = {
    novoRegistro: async (curso) => {
        const sql = 'CALL inserir_curso(?, ?)';
        const res = (await db).execute(sql, [curso.nome, curso.sigla]);
        return res;
    },

    edicaoRegistro: async (curso) => {
        const sql = 'CALL editar_curso_por_id(?, ?, ?)';
        const res = (await db).execute(sql, [curso.id, curso.nome, curso.sigla]); //inserido id

        return true

    },

    excluirRegistro: async (id) => {
        try {

            const sql = 'CALL excluir_curso_por_id(?)'

            await db.query(sql, [id]);

            return true;

        } catch (error) {
            throw error
        }

    },

    consultarTodosRegistros: async (req, res) => {
        //Método que verifica o email informado através da 'procedure'
        try {
            const sql = 'CALL consultar_cursos()';

            const [result] = await db.execute(sql);

            return result[0];

        } catch (error) {
            Console.error('Erro ao buscar cursos: ', error);
            return error;
        }
    }

};

module.exports = cursoModel;