const connection = require("../config/db");


const consultarDisciplina = async () => {
    return (await connection).execute("CALL SelectDisciplina()");
};


const novaDisciplina = async (disciplina) => {
    return (await connection).execute(
        "CALL InsertDisciplina(?, ?, ?)",
        [disciplina.nome, disciplina.curso_id, disciplina.sigla]
    );
};

const atualizarDisciplina = async (disciplina) => {
    return (await connection).execute(
        "CALL UpdateDisciplina(?, ?, ?, ?)",
        [disciplina.id, disciplina.nome, disciplina.curso_id, disciplina.sigla]
    );
};

const deletarDisciplina = async (id) => {
    return (await connection).execute("CALL DeleteDisciplina(?)", [id]);
};

//Adicionado consultar disciplina por id do curso
const consultarDisciplinaPorIDCurso = async (id) => {
    const sql = 'SELECT * FROM disciplina WHERE curso_id = ?';
    const res = (await db).execute(sql, [id]);
    return res;
};

module.exports = {
    consultarDisciplina,
    novaDisciplina,
    atualizarDisciplina,
    deletarDisciplina,
    consultarDisciplinaPorIDCurso
};
