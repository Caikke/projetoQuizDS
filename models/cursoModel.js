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
        const conn = await db;
        const [rows] = await conn.execute("CALL SelectCurso()");
        return rows[0];
    }


};

module.exports = cursoModel;
