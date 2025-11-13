const connection = require("../config/db");

const consultarQuiz = async () => {
    return (await connection).execute("CALL SelectQuiz()");
};

const novoQuiz = async (quiz) => {
    return (await connection).execute(
        "CALL InsertQuiz(?, ?, ?, ?, ?)",
        [
            quiz.data_quiz,
            quiz.curso_id,
            quiz.disciplina_id,
            quiz.usuario_id,
            quiz.pontuacao
        ]
    );
};

const atualizarQuiz = async (quiz) => {
    return (await connection).execute(
        "CALL UpdateQuiz(?, ?, ?, ?, ?, ?)",
        [
            quiz.id,
            quiz.data_quiz,
            quiz.curso_id,
            quiz.disciplina_id,
            quiz.usuario_id,
            quiz.pontuacao
        ]
    );
};

const deletarQuiz = async (id) => {
    return (await connection).execute(
        "CALL DeleteQuiz(?)",
        [id]
    );
};


const consultarQuizPorIdCurso = async (idCurso) => {
    const sql = "SELECT * FROM quiz WHERE curso_id = ?";
    return (await connection).execute(sql, [idCurso]);
};

const getQuestoesEAlternativasPorDisciplina = async (idDisciplina) => {
    return (await connection).execute(
        "CALL GetQuestoesEAlternativasPorDisciplina(?)",
        [idDisciplina]
    );
};

module.exports = {
    consultarQuiz,
    novoQuiz,
    atualizarQuiz,
    deletarQuiz,
    consultarQuizPorIdCurso,
    getQuestoesEAlternativasPorDisciplina
};
