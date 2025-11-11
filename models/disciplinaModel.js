const connection = require("../config/db");


const disciplinaModel = {
    consultarDisciplina: async () => {
        return (await connection).execute("CALL SelectDisciplina()");
    },

    novaDisciplina: async (disciplina) => {
        return (await connection).execute(
            "CALL InsertDisciplina(?, ?, ?)",
            [disciplina.nome, disciplina.curso_id, disciplina.sigla]
        );
    },

    atualizarDisciplina: async (disciplina) => {
        return (await connection).execute(
            "CALL UpdateDisciplina(?, ?, ?, ?)",
            [disciplina.id, disciplina.nome, disciplina.curso_id, disciplina.sigla]
        );
    },

    deletarDisciplina: async (id) => {
        return (await connection).execute("CALL DeleteDisciplina(?)", [id]);
    },
    
    consultarTodasDisciplinas: async () => {
        const conn = await connection;
        const [rows] = await conn.execute("CALL SelectDisciplina()");
        return rows[0];
    }

};

module.exports = disciplinaModel;
