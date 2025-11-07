const db = require('../config/db');

const insertAlternativa = async (alternativa) => {
        
        return(await db).execute(
            'INSERT into alternativa(questao_id, enunciado, correto) values (?, ?, ?)'

            [alternativa.questao_id, alternativa.enunciado, alternativa.correto]
        );
}

const updateAlternativa = async (alternativa) => {

        return(await db).execute(
            'UPDATE alternativa set questao_id = ?, enunciado = ?, correto = ? WHERE id = ?'

            [alternativa.questao_id, alternativa.enunciado, alternativa.correto]
        );
}

const deleteAlternativa = async(id) => {

    return (await db).execute(
        'CALL deleteAlternativa(?)'

        [id]
    );
}

const selectAlternativa = async() => {

    return(await db).execute(
        'CALL selectAlternativa()'
    );
}

const consultarAlternativaPorIDQuestao = async(id) => {

     return(await db).execute(
            'SELECT * FROM alternativa WHERE questao_id = ?'

            [id]
        );
}

  module.exports = {
    insertAlternativa,
    updateAlternativa,
    deleteAlternativa,
    selectAlternativa,
    consultarAlternativaPorIDQuestao
  }