require("dotenv").config();
const express = require("express");
const router = express.Router();
const usuarioController = require("../controllers/usuarioController");
const usuarioModel = require("../models/usuarioModel");
const jwt = require("jsonwebtoken");


router.post("/api/cadastrar", usuarioController.registrar);


router.post("/api/login", async (req, res) => {
  try {
    const { email, senha } = req.body;


    const usuario = await usuarioModel.login(email, senha);
    if (!usuario) {
      return res.status(401).json({ message: "E-mail ou senha incorretos!" });
    }


    const token = jwt.sign(
      { userId: usuario.id },
      process.env.SECRET,
      { expiresIn: 300 } 
    );

    res.status(200).json({
      message: `Bem-vindo(a), ${usuario.login}!`,
      token,
      usuario
    });
  } catch (err) {
    console.error("Erro no login:", err);
    res.status(500).json({ message: "Erro interno no login" });
  }
});


router.post("/pontuar", usuarioController.pontuar);

router.get("/usuario/:email", usuarioController.buscarPorEmail);

module.exports = router;
