const connection = require("../config/db")


const usuarioModel = {
//função regististrar usuario
 registarUsuario: async (usuario) => {
    return (await connection).execute(
            "INSERT INTO usuario (login, email, senha) VALUES (?, ?, ?)",
            [usuario.login, usuario.email, usuario.senha]
        );

},
        //função para login
  login: async (email, senha) => {
    const usuario = usuario.find(u => u.email === email && u.senha === senha);
    const verificarSenha = senha.find(u=>u.senha === senha);
    if(!verificarSenha){
        console.log("As senhas nao combinam");
        return null;
    } 
    if(!usuario){
        console.log("E-mail ou senha incorretos!");
        return null;
    }
    console.log(`Bem vindo(a), ${usuario.nome}!`);
    return usuario;
 },

 adicionarPontos: async (usuario, pontos) =>{
    usario.pontuacao += pontos;
    console.log(`pontuação atual ${usuario.pontos}`);
},

pegarUsuarioPeloEmail: async (email) => {
        return (await connection).execute("SELECT * FROM usuario WHERE email = ?", [email]);
    }

}

module.exports = usuarioModel

