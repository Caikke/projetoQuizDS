const express = require("express")
const router = express.Router()
const usuarioController = require("../controllers/usuarioController")
const usuarioModel = require("../models/usuarioModel")
const bcrypt = require("bcrypt")
const jwt = require("jsonwebtoken")

router.post("/api/cadastrar", usuarioController.registrar)

router.post("/api/login", async (req, res) =>  {
    const {email, senha} = req.body
    const [usuario] = await usuarioModel.pegarUsuarioPeloEmail(email)

    const isMatch = await bcrypt.compare(senha, usuario[0].senha)


    if(email === usuario[0].email && isMatch ){
        const token = jwt.sign({userId: usuario[0].idUsuario},
            "segredo",
            {expiresIn:150}
        )

        res.status(200).json({token: token})
    }else{
        res.status(400).json({message:"erro"})
    }

})

router.post("/pontuar", usuarioController.pontuar);

module.exports = router