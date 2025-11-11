const express = require('express')
const path = require('path')
const app = express()

const PORT = 3000

const usuarioRoute = require("./routes/usuarioRoute")
const cursoRoute = require("./routes/cursoRoute")
const disciplinaRoute = require("./routes/disciplinaRoute")

// AQUI PARA VOCÊ CONECTAR A PASTA VIEWS E INDEX-------------
// Permite acessar arquivos estáticos da pasta views (ex: CSS, JS)
app.use(express.static(path.join(__dirname, 'views')));

app.use(express.json())

app.use(usuarioRoute)
app.use(cursoRoute)
app.use(disciplinaRoute)


// Rotas para cada página
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'index.html'));
});
app.get('/login', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'login.html'));
});
app.get('/cadastro', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'cadastro.html'));
});
app.get('/redefinir-senha', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'redefinir-senha.html'));
});
app.get('/sobre', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'sobre.html'));
});

app.get('/disciplinaEcurso', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'disciplinaEcurso.html'));
});

app.listen(PORT, () => {
        console.log(`Servidor rodando em http://localhost:${PORT}`);
    });
