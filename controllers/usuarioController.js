const usuarioModel = require("../models/usuarioModel");

const usuarioController = {
  
  registrar: async (req, res) => {
    try {
      const { login, email, senha } = req.body;

      const emailExiste = await usuarioModel.verificarEmailExistente(email);
      if (emailExiste) {
        return res.status(409).json({ mensagem: "E-mail já cadastrado!" });
      }

      const usuario = { login, email, senha }; // senha em texto puro
      const [result] = await usuarioModel.registarUsuario(usuario);

      res.status(201).json({ insertId: result.insertId });
    } catch (err) {
      console.error("Erro ao registrar:", err);
      res.status(400).json({ mensagem: "Usuário não registrado." });
    }
  },


  login: async (req, res) => {
    try {
      const { email, senha } = req.body;

      const usuario = await usuarioModel.login(email, senha);
      if (!usuario) {
        return res.status(401).json({ mensagem: "E-mail ou senha incorretos!" });
      }

      res.json({ mensagem: `Bem-vindo(a), ${usuario.login}!`, usuario });
    } catch (err) {
      console.error("Erro no login:", err);
      res.status(500).json({ mensagem: "Erro interno no login" });
    }
  },

  pontuar: async (req, res) => {
    try {
      const { usuarioId } = req.body;
      await usuarioModel.adicionarPontos(usuarioId);
      res.json({ mensagem: "Pontuação atualizada!" });
    } catch (err) {
      console.error("Erro ao atualizar pontuação:", err);
      res.status(500).json({ mensagem: "Erro ao atualizar pontuação" });
    }
  },


  buscarPorEmail: async (req, res) => {
    try {
      const { email } = req.params;
      const usuario = await usuarioModel.pegarUsuarioPeloEmail(email);

      if (!usuario) {
        return res.status(404).json({ mensagem: "Usuário não encontrado!" });
      }

      res.json(usuario);
    } catch (err) {
      console.error("Erro ao buscar usuário:", err);
      res.status(500).json({ mensagem: "Erro ao buscar usuário" });
    }
  }
};

module.exports = usuarioController;
