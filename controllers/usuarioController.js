const usuarioModel = require("../models/usuarioModel")
const bcrypt = require("bcrypt")

const usuarioController = {

    registrar: async(req, res) => {
        try{

            const senha = req.body.senha

            const senhaHash = await bcrypt.hash(senha, 10)

            const usuario = {
                login: req.body.login,
                email: req.body.email,
                senha: senhaHash
            }

            const [result] = await usuarioModel.registarUsuario(usuario)

            res.status(201).json({insertId: result.insertId})

        }catch(err){
            res.status(400).json({message:"erro"})
            console.log("erro", err)
        }
    },

  login: async (req, res) => {
        const { email, senha } = req.body;
        const usuario = loginUsuario(email, senha);
        if (!usuario) {
            return res.status(401).json({ mensagem: "E-mail ou senha incorretos!" });
        }
        res.json({ mensagem: `Bem-vindo(a), ${usuario.login}!`, usuario });
    },

  pontuar: async (res, req) => {
        const { email, pontos } = req.body;
        const usuario = adicionarPontos(email, pontos);

        if (!usuario) {
            return res.status(404).json({ mensagem: "Usuário não encontrado!" });
        }
        res.json({ mensagem: "Pontuação atualizada", usuario });
    }

}

module.exports = usuarioController