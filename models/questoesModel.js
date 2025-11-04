const connection = require('./../config/db');

const insertQuestoes = async (questao) => {
    return (await connection).execute(
        'INSERT INTO questao (enunciado, pontuacao, disciplina_id) VALUES (?, ?, ?)',
        [questao.enunciado, questao.pontuacao, questao.disciplina_id]
    );
};

const updateQuestoes = async (questao) => {
    return (await connection).execute(
        'UPDATE questao SET enunciado = ?, pontuacao = ?, disciplina_id = ? WHERE id = ?',
        [questao.enunciado, questao.pontuacao, questao.disciplina_id, questao.id]
    );
};

const deleteQuestoes = async (id) => {
    return (await connection).execute(
        'DELETE FROM questao WHERE id = ?',
        [id]
    );
};

module.exports = {
    insertQuestoes,
    updateQuestoes,
    deleteQuestoes
};
