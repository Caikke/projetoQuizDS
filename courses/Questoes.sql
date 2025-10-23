USE projetoQuiz;

######### CURSOS ID ##############

CALL InsertDisciplina('Programação e Algoritmos', 1, 'PA');
CALL InsertDisciplina('Banco de Dados', 2, 'BD');
CALL InsertDisciplina('Desenvolvimento de Sistema', 3, 'DS');
CALL InsertDisciplina('Programação de Aplicativo Mobile', 4, 'PAM');
CALL InsertDisciplina('Programação Web', 5, 'PW');

###### Questôes da Programação e Algoritmos ######

CALL InsertQuestoes('1- Qual das opções representa corretamente uma estrutura de repetição para (for), que executa um bloco de código 10 vezes (de 1 a 10)?', 10, 1);
CAll InsertQuestoes('2- Qual dos seguintes tipos de dados é apropriado para armazenar um número com casas decimais?', 10, 1);
CALL InsertQuestoes('3- Em um algoritmo, qual estrutura é usada para tomar decisões com base em uma condição?', 10,  1);
CALL InsertQuestoes('4- Qual das alternativas representa corretamente a declaração de um vetor com 100 elementos inteiros?', 10, 1);
CALL InsertQuestoes('5- O que é um algoritmo?', 10, 1);

##### Alternativa da questão 1 ######

CALL InsertAlternativa(1, '(A) for (int i = 1; i <= 10; i++) {System.out.println(i);}', 1);
CALL InsertAlternativa(1, '(B) for (int i = 0; i < 10; i++) {System.out.println(i);}', 0);
CALL InsertAlternativa(1, '(C) for (int i = 10; i > 0; i--) {System.out.println(i);}', 0);
CALL InsertAlternativa(1, '(D) for (int i = 1; i < 10; i++) {System.out.println(i);}', 0);

##### Alternativa da questão 2 ######

CALL InsertAlternativa(2, '(A) Inteiro',0);
CALL InsertAlternativa(2, '(B) Caractere',0);
CALL InsertAlternativa(2, '(C) Real', 1);
CALL InsertAlternativa(2, '(D) Booleano', 0);

##### Alternativa da questão 3 ######

CALL InsertAlternativa(3, '(A) Laço',0);
CALL InsertAlternativa(3, '(B) Funçao',0);
CALL InsertAlternativa(3, '(C) Se-então-senão', 1);
CALL InsertAlternativa(3, '(D) Vetor', 0);

##### Alternativa da questão 4 ######

CALL InsertAlternativa(4, '(A) Inteiro vetor[1..100]',0);
CALL InsertAlternativa(4, '(B) Vetor = inteiro(100)',0);
CALL InsertAlternativa(4, '(C) Inteiro vetor[100]', 1);
CALL InsertAlternativa(4, '(D) Real vetor(100)', 0);

##### Alternativa da questão 5 ######

CALL InsertAlternativa(5, '(A) Um código executável em qualquer linguagem de programação',0);
CALL InsertAlternativa(5, '(B) Um conjunto finito de instruções para resolver um problema',1);
CALL InsertAlternativa(5, '(C) Um tipo de variável usado em programação', 0);
CALL InsertAlternativa(5, '(D) Um banco de dados com informações organizadas', 0);

###### Questões Banco de Dados ######

CALL InsertQuestoes('1-O que é uma chave primária (primary key) em um banco de dados relacional? ', 10, 2);
CAll InsertQuestoes('2- Qual comando SQL é usado para inserir novos dados em uma tabela?', 10, 2);
CALL InsertQuestoes('3- Em bancos de dados relacionais, qual das seguintes opções é um tipo de relacionamento?', 10,  2);
CALL InsertQuestoes('4- O que faz o comando SQL JOIN?', 10, 2);
CALL InsertQuestoes('5- Qual dos seguintes é um sistema gerenciador de banco de dados (SGBD)?', 10, 2);

##### Alternativa da questão 1 ######

CALL InsertAlternativa(6, '(A) Um campo que aceita valores duplicados.',0);
CALL InsertAlternativa(6, '(B) Um campo que identifica exclusivamente cada registro na tabela.',1);
CALL InsertAlternativa(6, '(C) Um campo que pode conter valores nulos.', 0);
CALL InsertAlternativa(6, '(D) Um campo usado para armazenar arquivos binários', 0);

#### Alternativa da questão 2 #######

CALL InsertAlternativa(7, '(A) SELECT.',0);
CALL InsertAlternativa(7, '(B) UPDATE.',0);
CALL InsertAlternativa(7, '(C) INSERT INTO.', 1);
CALL InsertAlternativa(7, '(D) DELETE', 0);

 #### Alternativa da questão 3 #######

CALL InsertAlternativa(8, '(A) Um para um (1:1).',1);
CALL InsertAlternativa(8, '(B) Sequencial.',0);
CALL InsertAlternativa(8, '(C) Hash.', 0);
CALL InsertAlternativa(8, '(D) Stack', 0);

#### Alternativa da questão 4 #######

CALL InsertAlternativa(9, '(A) Remove dados duplicados.',0);
CALL InsertAlternativa(9, '(B) Une registro de duas ou mais tabelas com base em uma codição.',1);
CALL InsertAlternativa(9, '(C) Atualiza os dados em uma tabela.', 0);
CALL InsertAlternativa(9, '(D) Cria uma nova tabela', 0);

#### Alternativa da questão 5 #######

CALL InsertAlternativa(10, '(A) Python.',0);
CALL InsertAlternativa(10, '(B) MySQL.',1);
CALL InsertAlternativa(10, '(C) HTML.', 0);
CALL InsertAlternativa(10, '(D) CSS', 0);
  
###### Questões Desenvolvimento de Sistema ######

CALL InsertQuestoes('1- Qual é a principal função da fase de análise de requisitos no desenvolvimento de sistemas?', 10, 3);
CALL InsertQuestoes('2- Em programação orientada a objetos, o que é uma “classe”?', 10, 3);
CALL InsertQuestoes('3- Qual é a finalidade dos testes de software no desenvolvimento de sistemas?', 10, 3);
CALL InsertQuestoes('4- O que representa o ciclo de vida de um sistema?', 10, 3);
CALL InsertQuestoes('5- Qual dos itens abaixo representa um paradigma de programação?', 10, 3);

#### Alternativa da questão 1 #######

CALL InsertAlternativa(11, '(A) Codificar o sistema final.',0);
CALL InsertAlternativa(11, '(B) Testar o desempenho da aplicação.',0);
CALL InsertAlternativa(11, '(C) Identificar o que o sistema deve fazer.', 1);
CALL InsertAlternativa(11, '(D) Escolher a linguaguem de programação', 0);

#### Alternativa da questão 2 #######

CALL InsertAlternativa(12, '(A) Um tipo especial de variável.',0);
CALL InsertAlternativa(12, '(B) Um bloco de código que executa automaticamente..',0);
CALL InsertAlternativa(12, '(C) Um modelo que define atributos e comportamentos de objetos..', 1);
CALL InsertAlternativa(12, '(D) Uma biblioteca externa.', 0);

#### Alternativa da questão 3 #######

CALL InsertAlternativa(13, '(A) Eliminar a necessidade de manutenção.',0);
CALL InsertAlternativa(13, '(B) Garantir que o sistema seja compatível com todas as linguagens.',0);
CALL InsertAlternativa(13, '(C) Verificar se o sistema funciona corretamente e atende aos requisitos.', 1);
CALL InsertAlternativa(13, '(D) Reduzir o tempo de codificação.', 0);

#### Alternativa da questão 4 #######

CALL InsertAlternativa(14, '(A) Apenas o tempo de execução do software.',0);
CALL InsertAlternativa(14, '(B) As linguagens usadas no desenvolvimento.',0);
CALL InsertAlternativa(14, '(C) As etapas desde a concepção até a desativação do sistema.', 1);
CALL InsertAlternativa(14, '(D) O processo de compilação do código', 0);

#### Alternativa da questão 5 #######

CALL InsertAlternativa(15, '(A) Estruturado.',1);
CALL InsertAlternativa(15, '(B) SQL.',0);
CALL InsertAlternativa(15, '(C) HTML', 0);
CALL InsertAlternativa(15, '(D) CSS', 0);

###### Questões Programação de Aplicativo Mobile ######

CALL InsertQuestoes('1- Qual é a principal linguagem usada para desenvolver aplicativos Android nativos atualmente?', 10, 4);
CALL InsertQuestoes('2- Qual framework permite desenvolver aplicativos móveis para Android e iOS com uma única base de código em JavaScript?', 10, 4);
CALL InsertQuestoes('3- O que é o APK em um aplicativo Android?', 10, 4);
CALL InsertQuestoes('4- Em Flutter, qual linguagem é utilizada para programar interfaces e lógica dos aplicativos?', 10, 4);
CALL InsertQuestoes('5- Qual das opções abaixo é uma vantagem do desenvolvimento mobile híbrido (multiplataforma)?', 10, 4);

#### Alternativa da questão 1 #######

CALL InsertAlternativa(16, '(A) Swift.',0);
CALL InsertAlternativa(16, '(B) Kotlin.',1);
CALL InsertAlternativa(16, '(C) JavaScript', 0);
CALL InsertAlternativa(16, '(D) C#', 0);

#### Alternativa da questão 2 #######

CALL InsertAlternativa(17, '(A) Flutter.',0);
CALL InsertAlternativa(17, '(B) Xamarin.',0);
CALL InsertAlternativa(17, '(C) React Native', 1);
CALL InsertAlternativa(17, '(D) Android Studio', 0);

#### Alternativa da questão 3 #######

CALL InsertAlternativa(18, '(A) Um tipo de banco de dados.',0);
CALL InsertAlternativa(18, '(B) O ambiente de desenvolvimento da Google..',0);
CALL InsertAlternativa(18, '(C) O arquivo de instalação do aplicativo Android.', 1);
CALL InsertAlternativa(18, '(D) Um plugin de segurança.', 0);

#### Alternativa da questão 4 #######

CALL InsertAlternativa(19, '(A) Dart.',1);
CALL InsertAlternativa(19, '(B) Java.',0);
CALL InsertAlternativa(19, '(C) Python', 0);
CALL InsertAlternativa(19, '(D) Kotlin', 0);

#### Alternativa da questão 5 #######

CALL InsertAlternativa(20, '(A) Maior consumo de bateria.',0);
CALL InsertAlternativa(20, '(B) Código separado para cada sistema operacional.',0);
CALL InsertAlternativa(20, '(C) Menor desempenho em todos os casos', 0);
CALL InsertAlternativa(20, '(D) Redução de tempo e custo por usar código compartilhado', 1);

###### Questôes da Programação Web ######

CALL InsertQuestoes('1- Qual linguagem é usada para estruturar o conteúdo de uma página web?)?', 10, 5);
CAll InsertQuestoes('2- Para estilizar visualmente uma página web, qual linguagem é utilizada?', 10, 5);
CALL InsertQuestoes('3- Qual é a principal função do JavaScript na programação web?', 10,  5);
CALL InsertQuestoes('4- O que faz o protocolo HTTP?', 10, 5);
CALL InsertQuestoes('5- Qual das opções abaixo é um framework JavaScript para construir interfaces de usuário?', 10, 5);

#### Alternativa da questão 1 #######

CALL InsertAlternativa(21, '(A) CSS.',0);
CALL InsertAlternativa(21, '(B) JavaScript.',0);
CALL InsertAlternativa(21, '(C) HTML', 1);
CALL InsertAlternativa(21, '(D) Python', 0);

#### Alternativa da questão 2 #######

CALL InsertAlternativa(22, '(A) HTML.',0);
CALL InsertAlternativa(22, '(B) CSS.',1);
CALL InsertAlternativa(22, '(C) SQL', 0);
CALL InsertAlternativa(22, '(D) PHP', 0);

#### Alternativa da questão 3 #######

CALL InsertAlternativa(23, '(A) Criar o conteúdo da página.',0);
CALL InsertAlternativa(23, '(B) Estilizar elementos da página.',0);
CALL InsertAlternativa(23, '(C) Tornar a página interativa e dinâmica', 1);
CALL InsertAlternativa(23, '(D) Armazenar dados no servidor', 0);

#### Alternativa da questão 4 #######

CALL InsertAlternativa(24, '(A) Transfere páginas web entre cliente e servidor.',1);
CALL InsertAlternativa(24, '(B) Cria bancos de dados para a web.',0);
CALL InsertAlternativa(24, '(C) Estiliza páginas web', 0);
CALL InsertAlternativa(24, '(D) Executa código no servidor', 0);

#### Alternativa da questão 5 #######

CALL InsertAlternativa(25, '(A) React.',1);
CALL InsertAlternativa(25, '(B) Laravel.',0);
CALL InsertAlternativa(25, '(C) Django', 0);
CALL InsertAlternativa(25, '(D) BootStrap', 0);

CALL AtualizarPontuacaoUsuario(1);
CALL RankingUsuarios();




