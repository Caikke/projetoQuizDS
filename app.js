require('dotenv').config();
const express = require('express');
const path = require('path');
const app = express();

const PORT = process.env.PORT || 3000;

const usuarioRoute = require("./routes/usuarioRoute");
const cursoRoute = require("./routes/cursoRoute");
const disciplinaRoute = require("./routes/disciplinaRoute");
const questaoRoute = require("./routes/questaoRoute");

// AQUI PARA VOCÊ CONECTAR A PASTA VIEWS E INDEX-------------
// Permite acessar arquivos estáticos da pasta views (ex: CSS, JS)
app.use(express.static(path.join(__dirname, 'views')));

app.use(express.json())

app.use(usuarioRoute)
app.use(cursoRoute)
app.use(disciplinaRoute)
app.use(questaoRoute)

// Rotas para cada página
const pages = [
    'index',
    'login',
    'cadastro',
    'redefinir-senha',
    'sobre',
    'disciplinaEcurso',
    'esquecisenha',
    'quiz',
    'ranking',
    'indexLogado'
];

pages.forEach(page => {
    app.get(`/${page === 'index' ? '' : page}`, (req, res) => {
        res.sendFile(path.join(__dirname, 'views', `${page}.html`));
    });
});

const sendMail = require("./config/nodemailer");

app.post("/send-email", async (req, res) => {
  try {
    await sendMail(req.body.to, "Teste Railway", "<h1>Funcionou!</h1>");
    res.send("Email enviado!");
  } catch (err) {
    res.status(500).send("Erro: " + err.message);
  }
});


app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});
