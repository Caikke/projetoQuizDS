const connection = require("../config/db");


const selectDisciplinas = async () => {
    return (await connection).execute("CALL SelectDisciplina()"); //Listar disciplina
};


const insertDisciplina = async (disciplina) => {
    return (await connection).execute("CALL InsertDisciplina(?, ?, ?)", [ // Cria uma nova disciplina
        disciplina.nome,
        disciplina.curso_id,
        disciplina.sigla
    ]);
};

const updateDisciplina = async (disciplina) => {
    return (await connection).execute("CALL UpdateDisciplina(?, ?, ?, ?)", [ // Atualiza uma disciplina
        disciplina.id,
        disciplina.nome,
        disciplina.curso_id,
        disciplina.sigla
    ]);
};


const deleteDisciplina = async (id) => {
    return (await connection).execute("CALL DeleteDisciplina(?)", [id]); // Deleta uma disciplina
};

module.exports = {
    selectDisciplinas,
    insertDisciplina,
    updateDisciplina,
    deleteDisciplina
};
