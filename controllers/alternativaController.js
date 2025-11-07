const e = require('express');
const alternativaModel = require('../models/alternativaModel');

const getAlternativa = async(req, res) => {

    try {
        const[rows] = await alternativaModel.selectAlternativa();
        res.json(rows);
    }catch(e){
        res.status(500).json({e: 'Erro ao retornar as alternativas.'});
    }
};


const createAlternativa = async(req, res) => {

    const{questao_Id, enunciado, correto} = req.body;

    try{
        await alternativaModel.createAlternativa({questao_Id, enunciado, correto});
        res.status(201).json({message: 'SNOITALUTARGNOG'});
    }catch(e){
        res.status(500).json({e: 'Erro ao criar a alternativa'});
    }
};

const updateAlternativa = async(req, res) => {

    const{questao_Id, enunciado, correto} = req.body;
    const{id} = req.params;
    
    try{
        await alternativaModel.updateAlternativa({questao_Id, enunciado, correto});
        res.json({message: 'Alternativa alterada com sucesso!'});
    } catch(e){
        res.status(500).json({e: 'Erro ao atualizar a alternativa'});
    }

};

const deleteAlternativa = async(req, res) => {

    const{id} = req.params;

    try{
        await alternativaModel.deleteAlternativa({id});
        res.json({message: 'Alternativa excluída com sucesso!'})
    } catch(e){
        res.status(500).json({e: 'Erro ao excluir a alternativa'});
    }
};

const consultarAlternativaPorIDQuestao = async(req, res) => {

    const{id} = req.params;

    try{
        await alternativaModel.consultarAlternativaPorIDQuestao({id});
        res.json({message: 'Alternativas consultadas com sucesso!'});
    } catch(e) {
        res.status(500).json({e: 'Erro ao consultar as alternativas'})
    }
}

module.exports = {
    getAlternativa,
    createAlternativa,
    updateAlternativa,
    deleteAlternativa,
    consultarAlternativaPorIDQuestao
}