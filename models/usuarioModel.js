//função regististrar usuario
function registarUsuario(nome, email, senha){
    const existe = usuarios.find(u=> u.email === email)
        if(existe){
            console.log ("usario ja registrado")
            return;
        }

        const novoUsuario ={
            nome,
            email,
            senha,
            pontuacao:0
            
        };
        usuarios.push(novoUsuario);
        console.log(`Usuário "${nome}" registrado com sucesso!`);

        //função para login
}
 function login(email, senha){
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
 }
function adicionarPontos(usuario, pontos){
    usario.pontuacao += pontos;
    console.log(`pontuação atual ${usuario.pontos}`);
}

