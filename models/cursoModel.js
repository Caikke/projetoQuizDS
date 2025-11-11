const db = require('../config/db.js');


const cursoModel = {
    novoRegistro: async (curso) => {
        const sql = 'CALL inserir_curso(?, ?)';
        const res = (await db).execute(sql, [curso.nome, curso.sigla]);
        return res;
    },

    edicaoRegistro: async (curso) => {
        const sql = 'CALL editar_curso_por_id(?, ?, ?)';
        const res = (await db).execute(sql, [curso.id, curso.nome, curso.sigla]);

        return res

    },

    excluirRegistro: async (id) => {
        try {

            const sql = 'CALL excluir_curso_por_id(?)'

            return (await db).execute(sql, [id])

        } catch (error) {
            console.error(error)
        }

    },

    consultarTodosRegistros: async () => {
        try {
            const sql = "select * from curso";

            return (await db).execute(sql);

        } catch (error) {
            Console.error('Erro ao buscar cursos: ', error);
            return error;
        }
    },

    consultarCursoPorNome: async (id) => {
        const sql = 'SELECT * FROM curso WHERE nome = ?';
        const res = (await db).execute(sql, [nome]);
        return res;
    }

};

module.exports = cursoModel;
