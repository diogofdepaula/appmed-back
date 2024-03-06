-- passo a passo para criação de um banco de dados vindo do Postgres para o Sqlite
-- criar depois um mecanismo no front-end que dê a opção de salvar nos dois banco de dados ao mesmo tempo
-- ou criar uma forma de sincronizar um banco de dados com o outro ou sei lá

-- o que tiver -> é para digitar na linha de comando

-- 1
--  instalar o postgres na linux do docker que corre na WSL2
-- verifica se existe primeiro
-- -> postgresql
-- -> sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
-- -> wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
-- -> sudo apt-get update
-- -> sudo apt-get -y install postgresql

-- dá uma testada para ver se está tudo funcionando
-- -> pg_dump 
-- -> psql

-- então cria um arquivo de backup do bando de dados atual usando a chave URL (pega no .env) com o pg_dump 
-- o motivo de usar clean create e inserts está nesse artigo (https://medium.com/@and_rey/how-to-port-postgresql-db-to-sqlite-db-e991b0d82287)
-- -> pg_dump --clean --create --inserts postgres://wdkpsyme:FexxxxxxxxsdfdfMUDEIISSOlzcgppU@babar.db.elephantsql.com/wdkpsyme > backupdev.sql
-- esse arquivo irá criar um protocolo para criação de um novo banco de dados (restore) no Postgres. 
-- na primeira parte do arquivo ele cria o bando de dados e as tabelas, e depois insere os dados.
-- para usar esses dados no Sqlite, tem que fazer algumas modificações no arquivo.
-- para facilitar posteriores exportações dos dados, eu dividi esse arquivo criado anteriormente.
-- o primeiro que chamei de bdcreate (esse arquivo) está só as instruções para criação do bando de dados.
-- fiz isso, pois isso não modifica. 
-- se mudar alguma coisa do bando de dados, tem que atualizar esse arquivo.
-- o outro arquivo (bdinserts) tem só os dados para serem inseridos.

-- antes de usar os dois arquivos, tem que fazer algumas modificações.
-- nesse arquivo (bdcreate), pegar o arquivo do backup e deixar só os CREATE
-- no outro arquivo (bdinserts), pegar o arquido do backup e deixar só os INSERTS 

-- para usar os arquivos, tem que instalar o sqlite no linux (igual ao que fez no postgres)
-- -> sudo apt install sqlite 
-- então cria um banco de dados sqlite
-- -> sqlite3 back.sqlite3
-- quando o sqlite cria o banco de dados, ele já entra na linha de comando do sqlite.
-- então tem que mandar o sqlite ler (e exercutar) os arquivos sql para criar as tabelas (bdcreate) e para inserir os dados (bdinserts)

-- -> .read bdcreate.sql
-- -> .read bdinserts.sql
-- -> .exit

-- teoricamente deu tudo certo


CREATE TABLE apresentacoes (
    id integer NOT NULL,
    descricao character varying(255),
    uso character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "medicamentoId" integer
);

CREATE TABLE atestados (
    id integer NOT NULL,
    diagnostico text,
    tratamento text,
    estado text,
    prognostico text,
    comentario text,
    data date,
    ultimaimpressao date,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "clienteId" integer,
    padrao character varying(255),
    consequencia text,
    prazo character varying(255)
);

CREATE TABLE clientes (
    id integer NOT NULL,
    nome character varying(255),
    nascimento date,
    sexo character varying(255),
    peso character varying(255),
    altura character varying(255),
    endereco character varying(255),
    telefone character varying(255),
    celular character varying(255),
    email character varying(255),
    cns character varying(255),
    cpf character varying(255),
    mae character varying(255),
    image bytea,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);

CREATE TABLE conveniosbiologicos (
    id integer NOT NULL,
    cid10 character varying(255),
    diagnostico character varying(255),
    evolucao text,
    historia text,
    vhs character varying(255),
    pcr character varying(255),
    das28 character varying(255),
    cdai character varying(255),
    sdai character varying(255),
    basdai character varying(255),
    asdas character varying(255),
    sledai character varying(255),
    eva character varying(255),
    data date,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "clienteId" integer
);

CREATE TABLE documentos (
    id integer NOT NULL,
    titulo character varying(255),
    texto text,
    comentario text,
    data date,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "clienteId" integer
);

CREATE TABLE lmes (
    id integer NOT NULL,
    cid10 character varying(255),
    diagnostico character varying(255),
    anamnese text,
    tratamentoprevio boolean,
    tratamentopreviotexto text,
    atestadocapacidade boolean,
    preenchidopor character varying(255),
    "preenchidoporCPF" character varying(255),
    raca character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "clienteId" integer,
    ultimaimpressao date
);

CREATE TABLE medicamentos (
    id integer NOT NULL,
    farmaco character varying(255),
    orientacoes text,
    abreviatura character varying(255),
    lme boolean,
    controlado boolean,
    favorito boolean,
    classe character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);

CREATE TABLE nomescomerciais (
    id integer NOT NULL,
    nomefantasia character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "medicamentoId" integer
);

CREATE TABLE pericias (
    id integer NOT NULL,
    cid10 character varying(255),
    diagnostico character varying(255),
    tratamento text,
    estado text,
    prognostico text,
    comentario text,
    data date,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "clienteId" integer,
    ultimaimpressao date
);

CREATE TABLE posologias (
    id integer NOT NULL,
    posologia text,
    quantidade character varying(255),
    forma character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "medicamentoId" integer
);

CREATE TABLE prescricoes (
    id integer NOT NULL,
    continuo boolean,
    imprimirorientacoes boolean,
    emuso boolean,
    usoposologiapadrao boolean,
    orientacoes text,
    posologianaopadrao text,
    quantidadenaopadrao character varying(255),
    formanaopadrao character varying(255),
    lmemes1 character varying(255),
    lmemes2 character varying(255),
    lmemes3 character varying(255),
    lmemes4 character varying(255),
    lmemes5 character varying(255),
    lmemes6 character varying(255),
    inicio date,
    termino date,
    motivotermico character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "medicamentoId" integer,
    "apresentacoId" integer,
    "posologiaId" integer,
    "conveniosbiologicoId" integer,
    "lmeId" integer,
    "clienteId" integer,
    ultimaimpressao date
);

CREATE TABLE relatorios (
    id integer NOT NULL,
    vhs character varying(255),
    pcr character varying(255),
    ar2010a integer,
    ar2010b integer,
    ar2010c integer,
    ar2010d integer,
    ara boolean,
    arb boolean,
    arc boolean,
    ard boolean,
    are boolean,
    arf boolean,
    arg boolean,
    eaaa boolean,
    eaab boolean,
    eaac boolean,
    medicamento1 character varying(255),
    dose1 character varying(255),
    inicio1 character varying(255),
    fim1 character varying(255),
    motivo1 character varying(255),
    medicamento2 character varying(255),
    dose2 character varying(255),
    inicio2 character varying(255),
    fim2 character varying(255),
    motivo2 character varying(255),
    medicamento3 character varying(255),
    dose3 character varying(255),
    inicio3 character varying(255),
    fim3 character varying(255),
    motivo3 character varying(255),
    medicamento4 character varying(255),
    dose4 character varying(255),
    inicio4 character varying(255),
    fim4 character varying(255),
    motivo4 character varying(255),
    medicamento5 character varying(255),
    dose5 character varying(255),
    inicio5 character varying(255),
    fim5 character varying(255),
    motivo5 character varying(255),
    medicamento6 character varying(255),
    dose6 character varying(255),
    inicio6 character varying(255),
    fim6 character varying(255),
    motivo6 character varying(255),
    medicamento7 character varying(255),
    dose7 character varying(255),
    inicio7 character varying(255),
    fim7 character varying(255),
    motivo7 character varying(255),
    ppdresultado character varying(255),
    rxtoraxresultado character varying(255),
    rxtoraxalteracao character varying(255),
    das28 character varying(255),
    cdai character varying(255),
    sdai character varying(255),
    basdai character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "lmeId" integer,
    idadeinicio character varying(255),
    apperiferica boolean,
    apcaxial boolean,
    apcentesite boolean,
    apa boolean,
    apb boolean,
    apc boolean,
    apd boolean,
    ape boolean,
    apf boolean,
    apg boolean,
    eanya boolean,
    eanyb boolean,
    eanyc boolean,
    eanyd boolean,
    eanye boolean,
    utilizados text,
    dose character varying(255),
    inducao character varying(255),
    justificativa text,
    rxt boolean,
    sqm boolean,
    aine boolean,
    ppdtratamento boolean,
    hepatiteimunidade boolean,
    hepatitevacina boolean,
    sjadas character varying(255),
    dapsa character varying(255),
    lei character varying(255),
    ttopreviobiologico boolean,
    aijsubtipo character varying(255),
    aijopcao character varying(255),
    asdascrp character varying(255),
    asdasesr character varying(255)
);