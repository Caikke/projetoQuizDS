import {registrarUsuario, loginUsuario, adicionarPontos} from "../models/usuarioModel.js"

export function registrar(req, res){
    const {login, email, senha} = req.body;
    const usuario = registrarUsuario(login, email, senha);
    if (!usuario) {
        return res.status(400).json({mensagem: "Usuário já registrado!"});
    }
}

export function login (req, res){
    const{email, senha} = req.body;
    const usuario = loginUsuario(email, senha);
    if(!usuario){
        return res.status(401).json({mensagem:"E-mail ou senha incorretos!"});
    }
    res.json({mensagem:`Bem-vindo(a), ${usuario.login}!`, usuario});
}

export function pontuar(res, req){
    const {email, pontos} = req.body;
    const usuario = adicionarPontos(email, pontos);

    if(!usuario){
        return res.status(404).json({mensagem:"Usuário não encontrado!"});
    }
    res.json({mensagem:"Pontuação atualizada", usuario});
}