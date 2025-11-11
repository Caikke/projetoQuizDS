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

    consultarDisciplinaPorIDCurso: async (id) => {
        const sql = 'SELECT * FROM disciplina WHERE curso_id = ?';
        const res = (await connection).execute(sql, [id]);
        return res;
    }
};

module.exports = disciplinaModel;
