USE projetoQuiz;

######### CURSOS ID ##############

CALL InsertDisciplina('Programação e Algoritmos', 1, 'PA');
CALL InsertDisciplina('Banco de Dados', 1, 'BD');
CALL InsertDisciplina('Desenvolvimento de Sistema', 1, 'DS');
CALL InsertDisciplina('Programação de Aplicativo Mobile', 1, 'PAM');
CALL InsertDisciplina('Programação Web', 1, 'PW');
CALL InsertDisciplina('Operação de Software Aplicativo',1,'OSA');
CALL InsertDisciplina('Análise e Projeto de Sistema',1,'APS');
CALL InsertDisciplina('Sistemas Embarcados',1,'SE');
CALL InsertDisciplina('Segurança de Sistemas de Informação',1,'SSI');
CALL InsertDisciplina('Internet e Protocolos',1,'IP');
CALL InsertDisciplina('Linguagem , Trabalho e Tecnologia',1,'LTT');
CALL InsertDisciplina('Inglês Instrumental',1,'II');
CALL InsertDisciplina('Design Digital',1,'DD');
CALL InsertDisciplina('Ética e Cidadania Organizacional',1,'ECO');

######### Programação e Algoritmos  ###########
CALL InsertQuestao('1- Qual das opções representa corretamente uma estrutura de repetição para (for), que executa um bloco de código 10 vezes (de 1 a 10)?', 10, 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) for (int i = 1; i <= 10; i++) {System.out.println(i);}', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) for (int i = 0; i < 10; i++) {System.out.println(i);}', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) for (int i = 10; i > 0; i--) {System.out.println(i);}', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) for (int i = 1; i < 10; i++) {System.out.println(i);}', 0);

CALL InsertQuestao('2- Qual dos seguintes tipos de dados é apropriado para armazenar um número com casas decimais?', 10, 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Inteiro',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Caractere',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Real', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Booleano', 0);

CALL InsertQuestao('3- Em um algoritmo, qual estrutura é usada para tomar decisões com base em uma condição?', 10, 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Laço',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Funçao',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Se-então-senão', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Vetor', 0);

CALL InsertQuestao('4- Qual das alternativas representa corretamente a declaração de um vetor com 100 elementos inteiros?', 10, 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Inteiro vetor[1..100]',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Vetor = inteiro(100)',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Inteiro vetor[100]', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Real vetor(100)', 0);

CALL InsertQuestao('5- O que é um algoritmo?', 10, 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Um código executável em qualquer linguagem de programação',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Um conjunto finito de instruções para resolver um problema',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Um tipo de variável usado em programação', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Um banco de dados com informações organizadas', 0);


######### Programação e Algoritmos  ###########

CALL InsertQuestao('1-O que é uma chave primária (primary key) em um banco de dados relacional? ', 10, 2);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Um campo que aceita valores duplicados.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Um campo que identifica exclusivamente cada registro na tabela.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Um campo que pode conter valores nulos.', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Um campo usado para armazenar arquivos binários', 0);

CALL InsertQuestao('2- Qual comando SQL é usado para inserir novos dados em uma tabela?', 10, 2);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) SELECT.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) UPDATE.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) INSERT INTO.', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) DELETE', 0);

CALL InsertQuestao('3- Em bancos de dados relacionais, qual das seguintes opções é um tipo de relacionamento?', 10, 2);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Um para um (1:1).',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Sequencial.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Hash.', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Stack', 0);

CALL InsertQuestao('4- O que faz o comando SQL JOIN?', 10, 2);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Remove dados duplicados.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Une registro de duas ou mais tabelas com base em uma codição.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Atualiza os dados em uma tabela.', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Cria uma nova tabela', 0);

CALL InsertQuestao('5- Qual dos seguintes é um sistema gerenciador de banco de dados (SGBD)?', 10, 2);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Python.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) MySQL.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) HTML.', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) CSS', 0);

##########  Desenvolvimento de Sistema ############

CALL InsertQuestao('1- Qual é a principal função da fase de análise de requisitos no desenvolvimento de sistemas?', 10, 3);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Codificar o sistema final.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Testar o desempenho da aplicação.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Identificar o que o sistema deve fazer.', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Escolher a linguaguem de programação', 0);

CALL InsertQuestao('2- Em programação orientada a objetos, o que é uma “classe”?', 10, 3);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Um tipo especial de variável.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Um bloco de código que executa automaticamente..',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Um modelo que define atributos e comportamentos de objetos..', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Uma biblioteca externa.', 0);

CALL InsertQuestao('3- Qual é a finalidade dos testes de software no desenvolvimento de sistemas?', 10, 3);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Eliminar a necessidade de manutenção.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Garantir que o sistema seja compatível com todas as linguagens.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Verificar se o sistema funciona corretamente e atende aos requisitos.', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Reduzir o tempo de codificação.', 0);

CALL InsertQuestao('4- O que representa o ciclo de vida de um sistema?', 10, 3);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Apenas o tempo de execução do software.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) As linguagens usadas no desenvolvimento.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) As etapas desde a concepção até a desativação do sistema.', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) O processo de compilação do código', 0);

CALL InsertQuestao('5- Qual dos itens abaixo representa um paradigma de programação?', 10, 3);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Estruturado.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) SQL.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) HTML', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) CSS', 0);

############### Programação de Aplicativo Mobile ######################

CALL InsertQuestao('1- Qual é a principal linguagem usada para desenvolver aplicativos Android nativos atualmente?', 10, 4);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Swift.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Kotlin.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) JavaScript', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) C#', 0);

CALL InsertQuestao('2- Qual framework permite desenvolver aplicativos móveis para Android e iOS com uma única base de código em JavaScript?', 10, 4);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Flutter.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Xamarin.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) React Native', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Android Studio', 0);

CALL InsertQuestao('3- O que é o APK em um aplicativo Android?', 10, 4);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Um tipo de banco de dados.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) O ambiente de desenvolvimento da Google..',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) O arquivo de instalação do aplicativo Android.', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Um plugin de segurança.', 0);

CALL InsertQuestao('4- Em Flutter, qual linguagem é utilizada para programar interfaces e lógica dos aplicativos?', 10, 4);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Dart.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Java.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Python', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Kotlin', 0);

CALL InsertQuestao('5- Qual das opções abaixo é uma vantagem do desenvolvimento mobile híbrido (multiplataforma)?', 10, 4);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Maior consumo de bateria.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Código separado para cada sistema operacional.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Menor desempenho em todos os casos', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Redução de tempo e custo por usar código compartilhado', 1);

################## Programação Web ###################
CALL InsertQuestao('1- Qual linguagem é usada para estruturar o conteúdo de uma página web?)?', 10, 5);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) CSS.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) JavaScript.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) HTML', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Python', 0);

CALL InsertQuestao('2- Para estilizar visualmente uma página web, qual linguagem é utilizada?', 10, 5);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) HTML.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) CSS.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) SQL', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) PHP', 0);

CALL InsertQuestao('3- Qual é a principal função do JavaScript na programação web?', 10, 5);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Criar o conteúdo da página.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Estilizar elementos da página.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Tornar a página interativa e dinâmica', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Armazenar dados no servidor', 0);

CALL InsertQuestao('4- O que faz o protocolo HTTP?', 10, 5);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Transfere páginas web entre cliente e servidor.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Cria bancos de dados para a web.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Estiliza páginas web', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Executa código no servidor', 0);

CALL InsertQuestao('5- Qual das opções abaixo é um framework JavaScript para construir interfaces de usuário?', 10, 5);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) React.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Laravel.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Django', 0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) BootStrap', 0);

################  Operacação de Software Aplicativo ##############

CALL InsertQuestao ('1- Qual é a função principal de um gerenciador de tarefas em um sistema operacional movel?)', 10, 6);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Atualizar automaticamente aplicaivos.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Monitorar e controlar processos em execução.', 1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Proteger o dispositivo contra malware.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Gerenciar permissões de rede.',0);

CALL InsertQuestao ('2- Ao instalar um aplicativo, qual permissão representa maior risco à priacidade do usuário?)', 10, 6);
CALL InsertAlternativa(LAST_INSERT_ID(), '(A) Acesso ao armazenamento local.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(B) Acesso à localização em segundo plano.',1);
CALL InsertAlternativa(LAST_INSERT_ID(), '(C) Acesso à vibração do dispositivo.',0);
CALL InsertAlternativa(LAST_INSERT_ID(), '(D) Acesso à configuração de idioma.',0);

CALL InsertQuestao ('3- Qual prática reduz o consumo de baateria de um aplicativo?', 10, 6);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Executar sincronização contínua em segundo plano.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Manter a tela sempre ativa enquanto o app está em segundo plano.',0 );
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Usar push notifications em vez de polling constante.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Habilitar logging detalahado permanentemente.',0);

CALL InsertQuestao ('4- O que caracteriza a versão alfa de um aplicativo?)',10,6);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Lançamento público estável para todos os usuários.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Testes internos com funcionalidades incompletas e bugs conhecidos.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Versão apenas com correções de segurança sem novas funcionalidades.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Versão finalizada e sem necessidade de manutenção.',0);

CALL InsertQuestao ('5- Qual métrica é mais indicada para avaliar a experiência do usuário em um app?)',10,6);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Latência média de rede em ms.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Taxa de retenção de usuários.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Número de linhas de código.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Quantidade de dependências.',0);

########## Analise e projeto de sistema ###################

CALL InsertQuestao('(1- Qual diagrama UML é mais adequado para representar interação temporal entre objetos?)',10,7);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Diagrama de classe.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Diagrama de sequência',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Digrama de caso de uso.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Diagrama de pacotes.',0);

CALL InsertQuestao('(2- Qual é o objetivo principal da especificação de requisitos funcionais?)',10,7);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Descrever infraestrutura de hardware necessária.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Listar interfaces gráficas sem comportamento associado',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Definir o comportamento observável do sistema',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Estabelecer cronograma da equipe',0);

CALL InsertQuestao('(3- O que representa o princípio de coesão em projeto de software?)',10,7);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) A capacidade de um módulo realizar muitas tarefas diversas.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) O grau em que elementos de um módulo pertecem logicamente juntos.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) A quantidade de dependências entre módulos distintos.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) A frequência de integração contínua no projeto.',0);

CALL InsertQuestao('(4- Qual padrão de projeto é indicado para criar uma única instância controlada de uma clsse?)',10,7);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Observer.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Singleton.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Strategy.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Factory Method',0);

CALL InsertQuestao('(5- Em engenharia de requisitos, uma necessidade não funcional descreve principalmente:)',10,7);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Funcionalidade que o sistema deve fornecer.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Restrições de desempenho, segurança e usabilidade.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Diagrama de fluxo de dados.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Lista de usuários do sistema.',0);

################## Sistema Embarcados ###################

CALL InsertQuestao('(1- Qual característica distingue um sistema embarcado de um computador geral?)',10,8);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Execução de múltiplos sistemas operacionais simultâneos.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Projeto otimizado para uma função específica com recursos limitados.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Alto poder de processamento para tarefas genéricas.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Interface gráfica complexa como requisito padrão.',0);

CALL InsertQuestao('(2- Qual interface é comumente usada para comunicação serial entre microcontroladores e sensores?)',10,8);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) HDMI.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B)I2C.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) USB-C',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Ethernet.',0);

CALL InsertQuestao('(3- Em sistemas embarcados de tempo real, qual propiedade é critica?)',10,8);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Eficiência energética sem compromisso com latência.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Tempo de resposta determinístico às interrupções.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Capacidade de executar aplicações desktop.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Multitarefas sem prioridade de processos.',0);

CALL InsertQuestao('(4- Qual técnica é usada para reduzir o consumo de energia em um microcontrolador?)',10,8);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Aumentar a frequência do clock permanentemente.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Entrar em modos de baixo consumo quando ocioso.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Ativar todos os períficos o tempo todo.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Desabilitar o gerenciador de interrupções.',0);

CALL InsertQuestao('(5 - Qual é a finalidade de um watchdog timer em sistemas embarcados?)',10,8);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Aumentar a velocidade do processador.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Detectar travamentos e reniciar o sistema automicamente',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Armazenar dados críticos por longos períodos.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Fornecer segurança criptográfica de dados.',0);

################# Segurança de Sistema de informação ######################

CALL InsertQuestao('(1- Qual técnica protege a confidencialidade de dados em trânsito?)',10,9);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Backup icremental.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Criptologia TLS/SSL.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Balanceamento de carga.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Compressão de dados.',0);

CALL InsertQuestao('(2- O que é autenticação multifator?)',10,9);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Uso de múltiplos servidores para autenticar um usuário.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Combinação de dois ou mais tipos de prova de identidade.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Autenticação baseada somente em senha forte.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Treinamento de usuároios em boas práticas',0);

CALL InsertQuestao('(3- Qual é a definição correta de princípio do menor privilégio?)',10,9);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Conceder privilégios máximos para facilitar administração.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Conceder apenas as permissões necessárias para realizar uma tarefa.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Remover todas as permissões de todos os usuários.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Compartilhar credenciais entre equipes para produtividade.',0);

CALL InsertQuestao('(4- Qual ataque explora entrada do usuário sem validação para executar comandos no servidor?)',10,9);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Ataque DDoS.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Injeção SQL.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Phishing por E-mail.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Sniffing de rede.',0);

CALL InsertQuestao('(5- Qual mecanismo ajuda a identificar comportamentos anônimalos em uma rede corporativa?)',10,9);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Sistema de detecção e prevenção de intrusões (IDS/IPS).',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Desfragmentação de disco programada.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Atualização de firmware manual somente.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Impressão de logs em papel.',0);

############### Internet Protocolo ################

CALL InsertQuestao('(1- Qual protocolo é responsavel por atribuir endereços IP dinamicamente a dispositivos na rede local?)',10,10);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) FTP.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) DHCP.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) SMTP.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) ARP.',0);

CALL InsertQuestao('(2- Qual camada do modelo TCP/IP trata do roteamento de pacotes entre redes?)',10,10);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Aplicativo.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Transporte.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Internet.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Enlace de dados.',0);

CALL InsertQuestao('(3- Qual porta padrão é usada pelo protocolo HTTPS?)',10,10);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) 80',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) 22',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) 443',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) 25',0);

CALL InsertQuestao('(4- O que faz o protocolo DNS na internet?)',10,10);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Transfere arquivos entre clientes e servidores.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Resolve nomes de domínio para endereços IP.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Criptografa a comunicação ponto a ponto.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Monitora o desempenho da rede.',0);

CALL InsertQuestao('(5- Qual técnica reduz latência em conexões web distribuindo conteúdo geograficamente?)',10,10);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) NAT (Network Address Translation).',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) CDN (Content Delivery Network).',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) VLAN (Virtual LAN).',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) VPN (Virtual Private Network).',0);

################### Linguagem, Trabalho e Tecnologia ####################

CALL InsertQuestao('(1- Qual impacto da tecnologia na linguagem de trabalho costuma facilitar a colaboração remota?)',10,11);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Redução do uso de idiomas técnicos.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Ferramentas de comunicação síncrona e assíncrona integradas.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Aumento de barreiras de comunicação presencial.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Eliminação da necessidade de documentção.',0);

CALL InsertQuestao('(2- Qual habilidade textual é mais valorizada no ambiente tecnológico atual?)',10,11);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Redação acadêmica formal sem foco prático.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Comunicação clara e concisa para documentação e e-mails.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Uso de jargões incompreensíveis para leigos.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Escrita sem revisão.',0);

CALL InsertQuestao('(3- Como a automação impacta o trabalho repetitivo?)',10,11);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Aumenta tarefas repetitivas manualmente.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Substitui etapas rotineiras, liberando tempo para tarefas criativas.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Torna funções humanas desnecessárias em todos os setores.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Diminui a necessidade de atualização de habilidades.',0);

CALL InsertQuestao('(4- Qual é um desafio crescente relacionado à tecnologia no ambiente de trabalho?)',10,11);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Acesso infinito a recursos humanos.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Sobrecarga de informações e necessidade de curadoria.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Falta total de ferramentas colaborativas.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Redução de conectividade em larga escala.',0);

CALL InsertQuestao('(5- Qual prática melhora a inclusão digital no ambiente digital?)',10,11);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Fornecer apenas ferramentas de ponta sem treinamento.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Oferecer treinamentos, acessibildade e suporte técnico contínuo.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Exigir que funcionários aprendam por tentativa e erro.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Centralizar conhecimento em poucas pessoas.',0);

################# Inglês Instrumental  ###################

CALL InsertQuestao('(1- Na leitura técnica em inglês, qual estratégia ajuda a entender termos desconhecidos rapiidamente?)',10,12);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Ignorar todas as palavras desconhecidas e ler adiante.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Identificar palvras-chave e usar o contexto para inferir significado.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Traduzir palavra por palavra sem considerar o contexto.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Substituir termos por sinônimos aleatórios.',0);

CALL InsertQuestao('(2- Qual expressão é comum em instruções técnicas para indicar obrigatoriamente?)',10,12);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) May.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Should.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Must.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Might',0);

CALL InsertQuestao('(3- Em manuais técnicos, qual seção normalmente descreve procedimentos passo a passo?)',10,12);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Glossary.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Introduction.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Procedures or Instructions.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) References.',0);

CALL InsertQuestao('(4- Qual é o objetivo principal do abstract em um artigo técnico?)',10,12);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Aprensentar dados brutos sem interpretação.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Resumir objetivos, métodos e conclusões do trabalho.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Listar referências bibliográficas.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Fornecer biografia dos autores.',0);

CALL InsertQuestao('(5- Qual tempo verbal é frequentemente usado para descrever procedimentos em instruções?)',10,12);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Futuro simples.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Passado perfeito.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Imperativo ou preente simples',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Condicional.',0);

####################### Designer Digital #########################

CALL InsertQuestao('(1- Qual princípio é essencial para garantir boa usabilidade em interfaces digitais?)',10,13);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Eficiência operacional.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Ética profissional.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Competividade de mercado.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Rdeução de custos.',0);

CALL InsertQuestao('(2- O que representa responsividade no contexto de design digital?)',10,13);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Design que e adapta a diferentes tamanhos de tela e dispositivos.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Aplicações que não funcionam em dispositivos móveis.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Imagens de alta resolução somente para desktop.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Layout fixo independente do dispositivo.',0);

CALL InsertQuestao('(3- Qual ferramenta de prototipagem é comunente usada para criar interações e fluxos ?)',10,13);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Editor de texto simples.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Ferramentas como Figma ou Adobe XD.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Planilhas eletrônicas sem recursos visuais.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) IDEs de programação sem suporte a design.',0);

CALL InsertQuestao('(4- Qual elemento contribui para a acessibilidade digital?)',10,13);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Texto alternativo (alt text) em imagens.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Uso exclusivo de cores para transmitir informações sem redundância.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Fonte muito pequena sem opção de aumento.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Animações sem posiibilidade de pausa.',0);

CALL InsertQuestao('(5- Qual métrica avalia a facilidade de um usuário completar uma tarefa numa interface?)',10,13);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Tempo de carregamento do servidor.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Taxa de sucesso de tarefas e tempo para conclusão.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Número de linhas de código da interface.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Quantidade de imagens usadas.',0);

################## Ética e Cidadania Organizacional ####################

CALL InsertQuestao('(1- Qual conceito descreve comportamento que segue normas e valores aceitos pela a sociedade e organização?)',10,14);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Eficiência operacional.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Ética profissional.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Competividade de mercado.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Redução de custos.',0);

CALL InsertQuestao('(2- Qual prática demonstra responsabilidade social corporativa?)',10,14);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Ignorar impactos ambientais para reduzir despesas.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Situação onde interesses pessoais podem influenciar decisões profissionais.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Priorizar lucros acima de leis trabalhistas.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Evitar transparência em relatórios.',0);

CALL InsertQuestao('(3- O que caracteriza conflito de interesse em uma organização?)',10,14);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Decisões sempre baseadas em dados objetivos.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Situação onde interesses pessoais podem influenciar decisões profissionais.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Compartilhar recursos indiscriminadamente.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Rotatividade alta de funcionarios.',0);

CALL InsertQuestao('(4- Qual ação promove cidadania organizacional entre os empregados?)',10,14);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Incentivar atitudes colaborativas e respeito mútuo no ambiente de trabalho.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Recompensar apenas desempenho individual sem reconhecer comportamento cooperativo.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Estimular concorrência desleal entre colegas.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Centralizar todas as decisões naliderança sem participação.',0);

CALL InsertQuestao('(5- Qual princípio norteia a proteção de informações sensíveis de clientes?)',10,14);
CALL InsertAlternativa(LAST_INSERT_ID(),'(A) Divulgação irrestrita para maximizar.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(B) Confidencialidade e conformidade com normas legais.',1);
CALL InsertAlternativa(LAST_INSERT_ID(),'(C) Compartilhamento livre entre departamentos sem controle.',0);
CALL InsertAlternativa(LAST_INSERT_ID(),'(D) Armazenamento de dados sem medidas de segurança.',0);

CALL AtualizarPontuacaoUsuario(1);
CALL RankingUsuarios();