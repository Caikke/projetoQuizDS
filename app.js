const express = require('express')
const path = require('path')
const app = express()

const PORT = 3000

// AQUI PARA VOCÊ CONECTAR A PASTA VIEWS E INDEX-------------
// Permite acessar arquivos estáticos da pasta views (ex: CSS, JS)
app.use(express.static(path.join(__dirname, 'views')));

// Rotas para cada página
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'index.html'));
});
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'login.html'));
});
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'views', 'cadastro.html'));
});


app.listen(PORT, () => {
        console.log(`Servidor rodando em http://localhost:${PORT}`);
    });
