const db = require('../config/db.js');


const novoRegistro = async (curso) => {
    const sql = 'CALL inserir_curso(?, ?)';
    const res = await (await db).execute(sql, [curso.nome, curso.sigla]);
    return res;
};


const edicaoRegistro = async (curso) => {
    const sql = 'CALL editar_curso_por_id(?, ?, ?)';
    const res = await (await db).execute(sql, [curso.id, curso.nome, curso.sigla]);
    return res;
};


const excluirRegistro = async (id) => {
    try {
        const sql = 'CALL excluir_curso_por_id(?)';
        await (await db).execute(sql, [id]);
        return true;
    } catch (error) {
        throw error;
    }
};


const consultarTodosRegistros = async () => {
    try {
        const sql = 'CALL consultar_cursos()';
        const [result] = await (await db).execute(sql);
        return result[0];
    } catch (error) {
        console.error('Erro ao buscar cursos: ', error);
        return error;
    }
};

//Adicionado uma consulta pelo nome do curso
const consultarCursoPorNome = async (id) => {
    const sql = 'SELECT * FROM curso WHERE nome = ?';
    const res = (await db).execute(sql, [nome]);
    return res;
};


module.exports = {
    novoRegistro,
    edicaoRegistro,
    excluirRegistro,
    consultarTodosRegistros,
    consultarCursoPorNome
};
