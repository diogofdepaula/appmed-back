-- CREATE DATABASE wdkpsyme 

-- \connect wdkpsyme

-- BEGIN TRANSACTION;

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

INSERT INTO apresentacoes VALUES (1, '250 mg Inj Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO apresentacoes VALUES (2, '250 mg Inj Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO apresentacoes VALUES (6, '100 mg Comp Ver', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 3);
INSERT INTO apresentacoes VALUES (10, '5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 5);
INSERT INTO apresentacoes VALUES (11, '40 mg Inj Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 6);
INSERT INTO apresentacoes VALUES (12, '400 mg Comp Mast', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 7);
INSERT INTO apresentacoes VALUES (13, '70 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 8);
INSERT INTO apresentacoes VALUES (14, '100 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 9);
INSERT INTO apresentacoes VALUES (15, '300 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 9);
INSERT INTO apresentacoes VALUES (16, '25 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 10);
INSERT INTO apresentacoes VALUES (17, '75 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 10);
INSERT INTO apresentacoes VALUES (18, '875 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 11);
INSERT INTO apresentacoes VALUES (19, '400 mg/5mL Pó Susp Or', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 11);
INSERT INTO apresentacoes VALUES (20, '875 mg + 125 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 12);
INSERT INTO apresentacoes VALUES (21, '5,0 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 13);
INSERT INTO apresentacoes VALUES (22, '10 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 13);
INSERT INTO apresentacoes VALUES (23, 'Sol Oral', 'uso oral', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 14);
INSERT INTO apresentacoes VALUES (24, '25 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 15);
INSERT INTO apresentacoes VALUES (25, '50 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 15);
INSERT INTO apresentacoes VALUES (26, '10 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 16);
INSERT INTO apresentacoes VALUES (27, '20 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 16);
INSERT INTO apresentacoes VALUES (28, '40 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 16);
INSERT INTO apresentacoes VALUES (29, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO apresentacoes VALUES (30, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 18);
INSERT INTO apresentacoes VALUES (31, '2 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 19);
INSERT INTO apresentacoes VALUES (32, '4 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 19);
INSERT INTO apresentacoes VALUES (33, '120 mg Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO apresentacoes VALUES (34, '400 mg Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO apresentacoes VALUES (35, '100 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 21);
INSERT INTO apresentacoes VALUES (36, '600.000 UI Sus Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 22);
INSERT INTO apresentacoes VALUES (37, '1.200.000 UI Sus Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 22);
INSERT INTO apresentacoes VALUES (38, '6,43 + 2,63 mg Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 23);
INSERT INTO apresentacoes VALUES (39, '0,64 mg/mL Loç Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 24);
INSERT INTO apresentacoes VALUES (40, '0,64 mg/g Crem Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 24);
INSERT INTO apresentacoes VALUES (41, '62,5 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 25);
INSERT INTO apresentacoes VALUES (42, '125 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 25);
INSERT INTO apresentacoes VALUES (43, '10 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 26);
INSERT INTO apresentacoes VALUES (44, '150 mg Comp. Rev.', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 27);
INSERT INTO apresentacoes VALUES (45, '300 mg Comp. Rev.', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 28);
INSERT INTO apresentacoes VALUES (46, '250mg+5mcg+45mcg+50mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 29);
INSERT INTO apresentacoes VALUES (47, '260mg+70mg+90mcg+1000UI Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 30);
INSERT INTO apresentacoes VALUES (48, '260mg+70mg+90mcg+2000UI Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 30);
INSERT INTO apresentacoes VALUES (49, '25 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 31);
INSERT INTO apresentacoes VALUES (50, '50 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 31);
INSERT INTO apresentacoes VALUES (51, '600 mg + 400 UI', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 32);
INSERT INTO apresentacoes VALUES (52, '10 mg/mL Spray', 'uso oral', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 33);
INSERT INTO apresentacoes VALUES (53, '0,15 g/100 mL', 'uso oftálmico', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 34);
INSERT INTO apresentacoes VALUES (54, '3,125 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 35);
INSERT INTO apresentacoes VALUES (55, '6,25 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 35);
INSERT INTO apresentacoes VALUES (56, '12,5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 35);
INSERT INTO apresentacoes VALUES (57, '25 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 35);
INSERT INTO apresentacoes VALUES (58, '500 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 36);
INSERT INTO apresentacoes VALUES (59, '500 mg Drag', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 37);
INSERT INTO apresentacoes VALUES (60, '500 mg Pó Sol Inj', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 38);
INSERT INTO apresentacoes VALUES (61, '1000 mg Pó Sol Inj', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 38);
INSERT INTO apresentacoes VALUES (62, '100 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 39);
INSERT INTO apresentacoes VALUES (63, '200 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO apresentacoes VALUES (64, '200 mg/mL Inj Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 41);
INSERT INTO apresentacoes VALUES (65, '200 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO apresentacoes VALUES (66, '20 mg/g Crem Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO apresentacoes VALUES (67, '20 mg/g Xamp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO apresentacoes VALUES (68, '75 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO apresentacoes VALUES (69, '160 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO apresentacoes VALUES (70, '320 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO apresentacoes VALUES (71, '25 mg/g Gel', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO apresentacoes VALUES (72, '200 mg + 20 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 44);
INSERT INTO apresentacoes VALUES (73, '25 mg/g Gel', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 45);
INSERT INTO apresentacoes VALUES (74, '5 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 46);
INSERT INTO apresentacoes VALUES (75, '10 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 46);
INSERT INTO apresentacoes VALUES (76, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 47);
INSERT INTO apresentacoes VALUES (78, '10 mg Cáp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 49);
INSERT INTO apresentacoes VALUES (79, '25 mg Cáp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 49);
INSERT INTO apresentacoes VALUES (80, '50 mg Cáp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 49);
INSERT INTO apresentacoes VALUES (81, '100 mg Cáp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 49);
INSERT INTO apresentacoes VALUES (82, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 50);
INSERT INTO apresentacoes VALUES (83, '20 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 51);
INSERT INTO apresentacoes VALUES (84, '500 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 52);
INSERT INTO apresentacoes VALUES (86, '0,5 mg/g Crem Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 54);
INSERT INTO apresentacoes VALUES (87, '0,5 mg/g Pom Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 54);
INSERT INTO apresentacoes VALUES (88, '0,5 mg/g Sol Capilar', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 54);
INSERT INTO apresentacoes VALUES (89, '75 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 55);
INSERT INTO apresentacoes VALUES (90, '25 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 56);
INSERT INTO apresentacoes VALUES (91, '50 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 56);
INSERT INTO apresentacoes VALUES (92, '30 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO apresentacoes VALUES (93, '3 mg/mL Sol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO apresentacoes VALUES (94, '30 mg + 500 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 58);
INSERT INTO apresentacoes VALUES (5, '2222200 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-22 00:34:55.245+00', 2);
INSERT INTO apresentacoes VALUES (3, '40 mg/mL Xpe', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-22 00:34:55.245+00', 2);
INSERT INTO apresentacoes VALUES (77, '50 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:48.754+00', 48);
INSERT INTO apresentacoes VALUES (4, 'Granulado D 600 mg', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-22 00:34:55.245+00', 2);
INSERT INTO apresentacoes VALUES (95, '0,5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 59);
INSERT INTO apresentacoes VALUES (96, '1,0 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 59);
INSERT INTO apresentacoes VALUES (97, '100 mg Cáp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 60);
INSERT INTO apresentacoes VALUES (98, '200 mg Cáp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 60);
INSERT INTO apresentacoes VALUES (99, '100 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 61);
INSERT INTO apresentacoes VALUES (100, '30 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 62);
INSERT INTO apresentacoes VALUES (101, '7,5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 63);
INSERT INTO apresentacoes VALUES (102, '6 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 64);
INSERT INTO apresentacoes VALUES (103, '60 mg/mL Inj Fr', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 65);
INSERT INTO apresentacoes VALUES (104, '5 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 66);
INSERT INTO apresentacoes VALUES (105, '50 mg Comp Rev Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 67);
INSERT INTO apresentacoes VALUES (106, '100 mg Comp Rev Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 67);
INSERT INTO apresentacoes VALUES (107, '2 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 68);
INSERT INTO apresentacoes VALUES (108, '30 mg Cáp Lib Ret', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 69);
INSERT INTO apresentacoes VALUES (109, '60 mg Cáp Lib Ret', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 69);
INSERT INTO apresentacoes VALUES (110, '50 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 70);
INSERT INTO apresentacoes VALUES (111, '50 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 71);
INSERT INTO apresentacoes VALUES (112, '450 mg + 50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 72);
INSERT INTO apresentacoes VALUES (113, '10 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 73);
INSERT INTO apresentacoes VALUES (116, '5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 75);
INSERT INTO apresentacoes VALUES (117, '10 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 75);
INSERT INTO apresentacoes VALUES (118, '20 mg/0,2mL', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 76);
INSERT INTO apresentacoes VALUES (119, '40 mg/0,4mL', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 76);
INSERT INTO apresentacoes VALUES (120, '60 mg/0,6mL', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 76);
INSERT INTO apresentacoes VALUES (121, '80 mg/0,8mL', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 76);
INSERT INTO apresentacoes VALUES (122, '10 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 77);
INSERT INTO apresentacoes VALUES (123, '15 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 77);
INSERT INTO apresentacoes VALUES (124, '20 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 77);
INSERT INTO apresentacoes VALUES (125, '20 mg Comp Rev Lib Ret', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 78);
INSERT INTO apresentacoes VALUES (126, '40 mg Comp Rev Lib Ret', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 78);
INSERT INTO apresentacoes VALUES (127, '25 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 79);
INSERT INTO apresentacoes VALUES (128, '100 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 79);
INSERT INTO apresentacoes VALUES (129, '25 mg Inj Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 80);
INSERT INTO apresentacoes VALUES (130, '50 mg Inj Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 80);
INSERT INTO apresentacoes VALUES (131, '70 mg/mL Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 81);
INSERT INTO apresentacoes VALUES (132, '140 mg/mL Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 81);
INSERT INTO apresentacoes VALUES (133, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 82);
INSERT INTO apresentacoes VALUES (134, '60 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 83);
INSERT INTO apresentacoes VALUES (135, '90 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 83);
INSERT INTO apresentacoes VALUES (136, '150 mg + 5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 84);
INSERT INTO apresentacoes VALUES (137, '500 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 85);
INSERT INTO apresentacoes VALUES (138, '200 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 86);
INSERT INTO apresentacoes VALUES (139, '50 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 87);
INSERT INTO apresentacoes VALUES (140, '150 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 87);
INSERT INTO apresentacoes VALUES (141, '20 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 88);
INSERT INTO apresentacoes VALUES (142, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 89);
INSERT INTO apresentacoes VALUES (143, '40 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 90);
INSERT INTO apresentacoes VALUES (144, '300 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO apresentacoes VALUES (145, '5,0 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 92);
INSERT INTO apresentacoes VALUES (146, '722,2 mg + 1,0 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 93);
INSERT INTO apresentacoes VALUES (147, '1,5+1,2g Pó Sol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 94);
INSERT INTO apresentacoes VALUES (148, '500 mg + 400 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 94);
INSERT INTO apresentacoes VALUES (149, '50 mg Inj Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO apresentacoes VALUES (150, '50 mg/4mL Fra', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO apresentacoes VALUES (151, '100 mg Ser Pree', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 96);
INSERT INTO apresentacoes VALUES (152, '10 mg/g Crem Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 97);
INSERT INTO apresentacoes VALUES (153, '10 mg/g Pom Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 97);
INSERT INTO apresentacoes VALUES (156, '400 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 100);
INSERT INTO apresentacoes VALUES (157, '150 mg Comp. Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 101);
INSERT INTO apresentacoes VALUES (158, '600 mg Cap Mole', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 102);
INSERT INTO apresentacoes VALUES (159, '250 mg Inj Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 103);
INSERT INTO apresentacoes VALUES (160, '125 mg/mL Sol Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 103);
INSERT INTO apresentacoes VALUES (161, '10 mg/ml Inj Fr Amp de 10 mL', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO apresentacoes VALUES (162, '100 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 105);
INSERT INTO apresentacoes VALUES (163, '80 mg/mL Inj Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 106);
INSERT INTO apresentacoes VALUES (166, '20 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 109);
INSERT INTO apresentacoes VALUES (167, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO apresentacoes VALUES (168, '750 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO apresentacoes VALUES (169, '200 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 111);
INSERT INTO apresentacoes VALUES (170, '25 mcg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO apresentacoes VALUES (171, '50 mcg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO apresentacoes VALUES (172, '75 mcg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO apresentacoes VALUES (173, '88 mcg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO apresentacoes VALUES (174, '100 mcg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO apresentacoes VALUES (175, '112 mcg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO apresentacoes VALUES (176, '125 mcg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO apresentacoes VALUES (177, '150 mcg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO apresentacoes VALUES (178, '300 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 113);
INSERT INTO apresentacoes VALUES (179, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 114);
INSERT INTO apresentacoes VALUES (180, '100 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 114);
INSERT INTO apresentacoes VALUES (181, '150 mg/mL Susp Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 115);
INSERT INTO apresentacoes VALUES (182, '7,5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 116);
INSERT INTO apresentacoes VALUES (183, '15 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 116);
INSERT INTO apresentacoes VALUES (184, '100 mg/mL Fra', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 117);
INSERT INTO apresentacoes VALUES (185, '250 mg Sups', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO apresentacoes VALUES (186, '400 mg Sups', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO apresentacoes VALUES (187, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO apresentacoes VALUES (188, '800 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO apresentacoes VALUES (189, '3,0 g Emul RetPo + Diluente', 'uso retal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO apresentacoes VALUES (114, '30 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-28 18:45:40.493+00', 74);
INSERT INTO apresentacoes VALUES (115, '60 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-28 18:45:40.493+00', 74);
INSERT INTO apresentacoes VALUES (155, '300 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:03.306+00', 99);
INSERT INTO apresentacoes VALUES (154, '400 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:11.081+00', 98);
INSERT INTO apresentacoes VALUES (190, '1000 mg Sups Retal', 'uso retal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO apresentacoes VALUES (191, '10 mg/mL Emul Ret', 'uso retal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO apresentacoes VALUES (192, '500 mg Comp Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 119);
INSERT INTO apresentacoes VALUES (193, '750 mg Comp Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 119);
INSERT INTO apresentacoes VALUES (194, '1000 mg Comp Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 119);
INSERT INTO apresentacoes VALUES (195, '250 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 120);
INSERT INTO apresentacoes VALUES (196, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 120);
INSERT INTO apresentacoes VALUES (197, '125 mg Pó Liof Sol Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 121);
INSERT INTO apresentacoes VALUES (198, '500 mg Pó Liof Sol Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 121);
INSERT INTO apresentacoes VALUES (199, '1000 mg Pó Liof Sol Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 121);
INSERT INTO apresentacoes VALUES (200, '10 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 122);
INSERT INTO apresentacoes VALUES (201, '25 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 123);
INSERT INTO apresentacoes VALUES (202, '50 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 123);
INSERT INTO apresentacoes VALUES (203, '100 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 123);
INSERT INTO apresentacoes VALUES (204, '25 mg/mL Sol Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO apresentacoes VALUES (206, '250 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO apresentacoes VALUES (207, '400 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO apresentacoes VALUES (208, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO apresentacoes VALUES (209, '100 mg/g Geleia Vag', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO apresentacoes VALUES (210, '5,0 mg/mL Sol Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO apresentacoes VALUES (211, '500 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO apresentacoes VALUES (212, '20 mg/mL Gel Oral', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 128);
INSERT INTO apresentacoes VALUES (213, '20 mg/g Loç Cremosa', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 128);
INSERT INTO apresentacoes VALUES (214, '50 mg/mL Sol Capilar', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 129);
INSERT INTO apresentacoes VALUES (215, '400 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 130);
INSERT INTO apresentacoes VALUES (216, '20mg/g Pom Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 131);
INSERT INTO apresentacoes VALUES (217, '250 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO apresentacoes VALUES (218, '500 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO apresentacoes VALUES (219, '500+20 mg Comp Lib Mod', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 133);
INSERT INTO apresentacoes VALUES (220, '20 mg/mL', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 134);
INSERT INTO apresentacoes VALUES (221, '20 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 135);
INSERT INTO apresentacoes VALUES (222, '30 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 135);
INSERT INTO apresentacoes VALUES (223, '60 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 135);
INSERT INTO apresentacoes VALUES (224, '100 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO apresentacoes VALUES (225, '20 mg/g Gel', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO apresentacoes VALUES (226, '100.000 U/g Crem Vag', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 137);
INSERT INTO apresentacoes VALUES (227, '100.000 U/mL Susp Or', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 137);
INSERT INTO apresentacoes VALUES (228, '25.000 U/g Crem Vag', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 137);
INSERT INTO apresentacoes VALUES (229, ' 500 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 138);
INSERT INTO apresentacoes VALUES (230, '100 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 139);
INSERT INTO apresentacoes VALUES (231, '400 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 140);
INSERT INTO apresentacoes VALUES (232, '10 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 141);
INSERT INTO apresentacoes VALUES (233, '25 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 141);
INSERT INTO apresentacoes VALUES (234, '50 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 141);
INSERT INTO apresentacoes VALUES (235, '75 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 141);
INSERT INTO apresentacoes VALUES (236, '150 mg/mL Fra', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO apresentacoes VALUES (237, '20 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO apresentacoes VALUES (238, '40 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO apresentacoes VALUES (239, '4,0 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 144);
INSERT INTO apresentacoes VALUES (240, '8,0 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 144);
INSERT INTO apresentacoes VALUES (241, '75 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 145);
INSERT INTO apresentacoes VALUES (242, '300 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 146);
INSERT INTO apresentacoes VALUES (243, '600 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 146);
INSERT INTO apresentacoes VALUES (244, '30 mg Inj Fr', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 147);
INSERT INTO apresentacoes VALUES (245, '60 mg Inj Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 147);
INSERT INTO apresentacoes VALUES (246, '20 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 148);
INSERT INTO apresentacoes VALUES (247, '40 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 148);
INSERT INTO apresentacoes VALUES (248, '40 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 149);
INSERT INTO apresentacoes VALUES (249, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 150);
INSERT INTO apresentacoes VALUES (250, '750 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 150);
INSERT INTO apresentacoes VALUES (251, '20 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 151);
INSERT INTO apresentacoes VALUES (252, '5 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 152);
INSERT INTO apresentacoes VALUES (253, '20 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO apresentacoes VALUES (254, '5 mg/g Gel', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO apresentacoes VALUES (255, '0,125 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 154);
INSERT INTO apresentacoes VALUES (256, '0,250 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 154);
INSERT INTO apresentacoes VALUES (257, '1,0 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 154);
INSERT INTO apresentacoes VALUES (258, '5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO apresentacoes VALUES (259, '20 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO apresentacoes VALUES (260, '40 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO apresentacoes VALUES (261, '5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO apresentacoes VALUES (262, '20 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO apresentacoes VALUES (263, '40 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO apresentacoes VALUES (264, '50 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO apresentacoes VALUES (265, '75 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO apresentacoes VALUES (266, '100 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO apresentacoes VALUES (267, '150 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO apresentacoes VALUES (268, '25 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 158);
INSERT INTO apresentacoes VALUES (269, '0,02 g/g Crem Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 158);
INSERT INTO apresentacoes VALUES (270, '10 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 159);
INSERT INTO apresentacoes VALUES (271, '20 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 159);
INSERT INTO apresentacoes VALUES (272, '40 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 159);
INSERT INTO apresentacoes VALUES (273, '25 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO apresentacoes VALUES (274, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO apresentacoes VALUES (275, '100 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO apresentacoes VALUES (276, '200 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO apresentacoes VALUES (277, '300 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO apresentacoes VALUES (278, '25 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 161);
INSERT INTO apresentacoes VALUES (279, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 161);
INSERT INTO apresentacoes VALUES (280, '100 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 161);
INSERT INTO apresentacoes VALUES (281, '200 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 161);
INSERT INTO apresentacoes VALUES (282, '300 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 161);
INSERT INTO apresentacoes VALUES (283, '100 mg Cap', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 162);
INSERT INTO apresentacoes VALUES (284, '60 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 163);
INSERT INTO apresentacoes VALUES (285, '35 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 164);
INSERT INTO apresentacoes VALUES (286, '150 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 164);
INSERT INTO apresentacoes VALUES (287, '500 mg Inj Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 165);
INSERT INTO apresentacoes VALUES (288, '10 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 166);
INSERT INTO apresentacoes VALUES (289, '20 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 166);
INSERT INTO apresentacoes VALUES (290, '40 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 166);
INSERT INTO apresentacoes VALUES (291, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 167);
INSERT INTO apresentacoes VALUES (292, '100 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 167);
INSERT INTO apresentacoes VALUES (293, '25 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 168);
INSERT INTO apresentacoes VALUES (294, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 168);
INSERT INTO apresentacoes VALUES (295, '100 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 168);
INSERT INTO apresentacoes VALUES (296, '10 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 169);
INSERT INTO apresentacoes VALUES (297, '20 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 169);
INSERT INTO apresentacoes VALUES (298, '40 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 169);
INSERT INTO apresentacoes VALUES (299, '80 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 169);
INSERT INTO apresentacoes VALUES (300, '400 mg + 80 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 170);
INSERT INTO apresentacoes VALUES (301, '800 mg + 160 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 170);
INSERT INTO apresentacoes VALUES (302, '40 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 171);
INSERT INTO apresentacoes VALUES (303, '80 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 171);
INSERT INTO apresentacoes VALUES (304, '160 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 171);
INSERT INTO apresentacoes VALUES (305, '320 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 171);
INSERT INTO apresentacoes VALUES (306, '125 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO apresentacoes VALUES (307, '250 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO apresentacoes VALUES (308, '10 mg/g Crem Derm', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO apresentacoes VALUES (309, '10 mg/g Sol Top', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO apresentacoes VALUES (310, '10 mg/g Gel', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO apresentacoes VALUES (311, '250 mcgmL Can Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 173);
INSERT INTO apresentacoes VALUES (312, '20 mg/mL Inj Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO apresentacoes VALUES (313, '5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 175);
INSERT INTO apresentacoes VALUES (314, '25 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 176);
INSERT INTO apresentacoes VALUES (315, '50 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 176);
INSERT INTO apresentacoes VALUES (316, '100 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 176);
INSERT INTO apresentacoes VALUES (317, '50 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO apresentacoes VALUES (318, '100mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO apresentacoes VALUES (319, '100 mg/mL Sol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO apresentacoes VALUES (320, ' 37,5 mg + 325 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 178);
INSERT INTO apresentacoes VALUES (321, '50mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 179);
INSERT INTO apresentacoes VALUES (322, '100mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 179);
INSERT INTO apresentacoes VALUES (323, '150mg Comp Lib Cont', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 179);
INSERT INTO apresentacoes VALUES (324, '3g Gran', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 180);
INSERT INTO apresentacoes VALUES (325, '15 mg Comp Rev Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 181);
INSERT INTO apresentacoes VALUES (326, '45 mg/0,5 mL Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO apresentacoes VALUES (327, '90 mg/1,0 mL Ser', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO apresentacoes VALUES (328, '130 mg/26 mL Fra', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO apresentacoes VALUES (329, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 183);
INSERT INTO apresentacoes VALUES (330, '300 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 184);
INSERT INTO apresentacoes VALUES (331, '500 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 184);
INSERT INTO apresentacoes VALUES (332, '40mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 185);
INSERT INTO apresentacoes VALUES (333, '80mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 185);
INSERT INTO apresentacoes VALUES (334, '160 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 185);
INSERT INTO apresentacoes VALUES (335, '320 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 185);
INSERT INTO apresentacoes VALUES (336, '250 mg + 60 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 186);
INSERT INTO apresentacoes VALUES (337, '5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO apresentacoes VALUES (338, '37,5 mg Cap Dura Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO apresentacoes VALUES (339, '75,0 mg Cap Dura Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO apresentacoes VALUES (340, '150 mg Cap Dura Lib Prol', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO apresentacoes VALUES (341, '1.000 UI Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO apresentacoes VALUES (342, '2.000 UI Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO apresentacoes VALUES (343, '7.000 UI Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO apresentacoes VALUES (344, '10.000 UI Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO apresentacoes VALUES (345, '50.000 UI Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO apresentacoes VALUES (346, '300 mg Inj Fr Amp', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 190);
INSERT INTO apresentacoes VALUES (347, '5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 191);
INSERT INTO apresentacoes VALUES (348, '10 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 191);
INSERT INTO apresentacoes VALUES (349, '5 mg Sol Inj', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 192);
INSERT INTO apresentacoes VALUES (350, '5 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 193);
INSERT INTO apresentacoes VALUES (351, '10 mg Comp Rev', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 193);
INSERT INTO apresentacoes VALUES (165, 'kit', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.378+00', 108);
INSERT INTO apresentacoes VALUES (164, 'kit', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:31.706+00', 107);
INSERT INTO apresentacoes VALUES (7, '200 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-16 16:53:18.83+00', 4);
INSERT INTO apresentacoes VALUES (8, '400 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-16 16:53:18.83+00', 4);
INSERT INTO apresentacoes VALUES (9, '50 mg/g Creme', 'uso externo', '2021-06-09 12:09:43.093+00', '2021-06-16 16:53:18.83+00', 4);
INSERT INTO apresentacoes VALUES (205, '2,5 mg Comp', 'uso interno', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO apresentacoes VALUES (85, '300 mg Cap Dura', 'uso interno', '2021-06-09 12:09:43.093+00', '2023-04-14 17:13:19.935+00', 53);


--
-- Data for Name: atestados; Type: TABLE DATA; Schema: public; Owner: wdkpsyme
--

INSERT INTO atestados VALUES (8, 'AAAAAA', 'BBBBBBBBBBB', 'CCCCCCCCCCCCCC', 'DDDDDDDDDDDDD', 'XXXXXXXXXXXXXXXXXXXX', '2022-11-02', NULL, '2022-11-02 20:42:09.846+00', '2022-11-02 20:49:55.676+00', 4, 'Determinado', 'YYYYYYYYYYYYYYYYYYY', 'cinquenta mil');
INSERT INTO atestados VALUES (9, 'dfgsgmkjk', 'gdfsgs', 'gfdsg', 'gdfsg', '', '2022-11-28', NULL, '2022-11-28 19:00:41.97+00', '2023-04-25 11:47:11.387+00', 6, 'Nada', 'gdfsg', '');


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: wdkpsyme
--

INSERT INTO clientes VALUES (4, 'Rita Lee', '2021-06-01', 'feminino', '', '', '', '', '', '', '', '', '', NULL, '2021-06-16 00:24:06.135+00', '2021-06-16 00:24:06.135+00');
INSERT INTO clientes VALUES (10, 'Caetano Veloso', '2022-02-04', 'masculino', '', '', '', '', '', '', '', '324.324.234-32', '', NULL, '2022-02-18 19:37:45.237+00', '2022-02-18 19:37:45.237+00');
INSERT INTO clientes VALUES (2, 'Abcdfgh Ijklmnopq Rstuvxz Abghjklçl Mjslluoisul', '1945-01-08', 'feminino', '', '', '', '', '', '', '111.1111.1111.1111', '546.334.563-45', '', NULL, '2021-06-10 11:51:16.025+00', '2022-05-30 19:46:07.491+00');
INSERT INTO clientes VALUES (6, 'Renato Russo', '2021-06-10', 'masculino', '', '', '', '', '', '', '888.8888.8888.8888', '', '', NULL, '2021-06-16 00:26:18.587+00', '2022-12-14 19:43:19.624+00');
INSERT INTO clientes VALUES (5, 'Cássia Eller', '2022-12-08', 'feminino', '', '', '', '', '', '', '', '343.432.434-34', '', NULL, '2021-06-16 00:25:42.36+00', '2022-12-19 21:01:02.601+00');
INSERT INTO clientes VALUES (63, 'Manuel Bandeira', '2023-11-08', 'masculino', '', '', '', '', '', '', '', '', '', NULL, '2023-10-04 19:44:03.9+00', '2023-10-04 19:44:03.9+00');
INSERT INTO clientes VALUES (64, 'Carlos Drummond', '2023-10-13', 'masculino', '', '', '', '', '', '', '', '', '', NULL, '2023-10-04 19:45:25.492+00', '2023-10-04 19:45:25.492+00');
INSERT INTO clientes VALUES (65, 'Olavo Bilac', '2023-10-17', 'masculino', '', '', '', '', '', '', '', '', '', NULL, '2023-10-04 19:46:24.482+00', '2023-10-04 19:46:24.482+00');
INSERT INTO clientes VALUES (66, 'Lourdes Mendes Albuquerque', '1960-07-31', 'feminino', '71 ', '160', '', '', '', '', '', '697.609.779-15', '', NULL, '2023-11-09 11:36:55.637+00', '2023-11-09 11:36:55.637+00');



INSERT INTO lmes VALUES (29, 'M800', 'Osteoporose pós-menopáusica com fratura patológica', 'Continuidade de tratamento.', 'f', '', 'f', '', '', '', '2022-02-11 12:01:42.699+00', '2022-02-11 12:01:42.699+00', 4, NULL);
INSERT INTO lmes VALUES (80, 'M058', 'Outras artrites reumatóides soro-positivas', 'Paciente com a presença dos seguintes critérios:   1 - 3 pequenas articulações, Mais que 10 articulações, Fator reumatoide ou anticorpos antipeptídeos citrulinados cíclicos (anti-CCP) em baixos títulos, ', 'f', '', 'f', '', '', '', '2022-11-03 18:34:55.335+00', '2022-11-03 18:34:55.335+00', 4, NULL);
INSERT INTO lmes VALUES (28, 'M073', 'Outras artropatias psoriásicas', 'Paciente com Artrite reumatoide com os seguintes critérios (de 2010): mais que 10 articulações, fator reumatoide não reagente, mais que 10 articulações, 1 - 3 pequenas articulações, 2 - 10 grandes articulações, duração dos sintomas menor que 6 semanas, ', 'f', '', 'f', '', '', '', '2022-01-13 19:54:08.09+00', '2023-04-14 12:02:12.149+00', 2, '2022-08-04');
INSERT INTO lmes VALUES (6, 'M070', 'Artropatia psoriásica interfalangiana distal', 'Continuidade de tratamento.', 'f', '', 'f', '', '', '', '2021-07-01 18:30:58.004+00', '2023-11-14 12:50:40.755+00', 2, '2023-11-14');
INSERT INTO lmes VALUES (83, 'M060', 'Artrite reumatóide soro-negativa', 'dsafasdfsdaf', 'f', '', 'f', '', '', '', '2022-12-05 11:59:17.386+00', '2023-11-14 13:23:09.395+00', 6, '2023-11-14');
INSERT INTO lmes VALUES (82, 'M058', 'Outras artrites reumatóides soro-positivas', 'Paciente com a presença dos seguintes critérios: Mais que 10 articulações, Fator reumatoide ou anticorpos antipeptídeos citrulinados cíclicos (anti-CCP) em baixos títulos, VHS ou PCR alterado, 2 - 10 grandes articulações, bvvv', 'f', '', 'f', '', '', '', '2022-11-23 19:51:19.435+00', '2023-05-18 20:36:31.992+00', 6, '2023-05-18');
INSERT INTO lmes VALUES (8, 'M321', 'Lúpus eritematoso disseminado [sistêmico] com comprometimento de outros órgãos e sistemas', 'Paciente com Lúpus Eritematoso Sistêmico com os seguintes critérios: ', 'f', '', 'f', '', '', '', '2021-07-13 03:04:36.426+00', '2023-11-14 13:24:10.714+00', 2, '2023-11-14');
INSERT INTO lmes VALUES (5, 'M058', 'Outras artrites reumatóides soro-positivas', 'Paciente com Artrite reumatoide com os seguintes critério:
artrite em mãos (punhos, articulações MCF ou IFT proximais)
artrite simétrica (mesma área em ambos os lados do corpo)
Solicito o fornecimento de Abatacepte para o tratamento da doença.', 'f', '', 'f', '', '', '', '2021-06-25 11:56:39.145+00', '2023-11-14 17:12:45.684+00', 2, '2023-11-14');
INSERT INTO lmes VALUES (27, 'M060', 'Artrite reumatóide soro-negativa', 'sdaf', 'f', '', 'f', '', '', '', '2021-10-25 16:08:59.843+00', '2023-11-16 14:41:10.695+00', 2, '2023-11-16');
INSERT INTO lmes VALUES (92, 'R522', 'Outra dor crônica', 'Paciente com a presença dos seguintes critérios: 
Intensidade da dor (escala EVA) de 6; 
Refratários de outros fármacos: analgésicos; 
CID principal R52.2; 
CID secundário (patologia que desencadeou a dor): M15; 
Dor crônica (superior a 30 dias). 
Solicito o fornecimento de Gabapentina.', 'f', '', 'f', '', '', '', '2023-11-09 11:37:13.671+00', '2023-11-09 11:37:33.42+00', 66, '2023-11-09');
INSERT INTO lmes VALUES (86, 'M321', 'Lúpus eritematoso disseminado [sistêmico] com comprometimento de outros órgãos e sistemas', 'artrite não erosiva, leucopenia, linfopenia, convulsão, eritema malar, eritema malar, eritema malar, ', 'f', '', 'f', '', '', '', '2023-01-09 18:44:21.854+00', '2023-01-09 18:44:21.854+00', 6, NULL);
INSERT INTO lmes VALUES (91, 'M080', 'Artrite reumatóide juvenil', 'sdfsdfsd JADAS-VHS de 10.16 (2 + 5 + 5 + 5); ', 'f', '', 'f', '', '', '', '2023-04-27 23:02:27.559+00', '2023-11-14 13:23:22.154+00', 6, '2023-11-14');
INSERT INTO lmes VALUES (85, 'M45', 'Espondilite ancilosante', 'Paciente com a presença dos seguintes critérios:  ASDAS-PCR de 4.9 (9 + 9 + 9 + 0 + 9); ASDAS-VHS de 3.0 (9 + 9 + 9 + 0 + 9). ', 'f', '', 'f', '', '', '', '2022-12-21 16:18:43.228+00', '2023-03-01 18:35:14.501+00', 6, '2023-03-01');
INSERT INTO lmes VALUES (88, 'R522', 'Outra dor crônica', 'Paciente com a presença dos seguintes critérios: 
Intensidade da dor (escala EVA) de 4; 
Refratários de outros fármacos: analgésicos; 
CID principal R52.2; 
CID secundário (patologia que desencadeou a dor): M15; 
Dor crônica (superior a 30 dias). 
Solicito o fornecimento de Gabapentina.', 'f', '', 'f', '', '', '', '2023-04-19 16:53:09.871+00', '2023-04-19 16:54:17.203+00', 6, NULL);
INSERT INTO lmes VALUES (89, 'M050', 'Síndrome de Felty', 'Continuidade de tratamento (renovação).1 - 3 pequenas articulações, Fator reumatoide ou anticorpos antipeptídeos citrulinados cíclicos (anti-CCP) em baixos títulos, Fator reumatoide ou anticorpos antipeptídeos citrulinados cíclicos (anti-CCP) em baixos títulos, ', 'f', '', 'f', '', '', '', '2023-04-24 14:31:28.146+00', '2023-04-24 14:31:28.146+00', 6, NULL);
INSERT INTO lmes VALUES (87, 'M068', 'Outras artrites reumatóides especificadas', '1 grande articulação, 1 - 3 pequenas articulações, Mais que 10 articulações, ', 'f', '', 'f', '', '', '', '2023-04-19 16:15:18.232+00', '2023-11-14 13:23:33.454+00', 6, '2023-11-14');
INSERT INTO lmes VALUES (90, 'M073', 'Outras artropatias psoriásicas', 'Paciente com a presença dos seguintes critérios: História familiar de psoríase (familiar de 1º ou 2º grau), Fator reumatóide negativo, Fator reumatóide negativo, ', 'f', '', 'f', '', '', '', '2023-04-25 14:44:47.527+00', '2023-11-14 13:23:54.224+00', 6, '2023-11-14');


--
-- Data for Name: medicamentos; Type: TABLE DATA; Schema: public; Owner: wdkpsyme
--

INSERT INTO medicamentos VALUES (1, 'Abatacepte', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'ABT', 't', 'f', 't', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (2, 'Acetilcisteína', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (3, 'Acetilsalicílico, Ácido', '', 'AAS', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (5, 'Ácido Fólico', '', 'AF', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (6, 'Adalimumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', 'ADA', 't', 'f', 't', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (7, 'Albendazol', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (8, 'Alendronato', '', 'ALD', 'f', 'f', 'f', 'OSTEOMETABOLICO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (9, 'Alopurinol', 'Não inicie, muito menos interrompa o uso dessa medicação se estiver com crise de gota.', 'ALP', 'f', 'f', 't', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (10, 'Amitriptilina', '', 'AMT', 'f', 't', 't', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (11, 'Amoxicilina', 'dose para suspensão: 25 mg/kg/dia', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (12, 'Amoxicilina + Clavulanato', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (13, 'Anlodipino', '', 'ANL', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (14, 'Aloe Barbadensis', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (15, 'Atenolol', '', 'ATL', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (16, 'Atorvastatina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (17, 'Azatioprina', '', 'AZA', 't', 'f', 't', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (18, 'Azitromicina', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (19, 'Baricitinibe', '', 'BCT', 'f', 'f', 't', 'MMCDPM', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (20, 'Belimumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'BLM', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (21, 'Benzbromarona', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (22, 'Benzilpenicilina Benzatina', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (23, 'Betametasona', '', 'BMS', 'f', 'f', 't', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (24, 'Betametasona', 'Colocar uma pequena quantidade que cubra a ponta do dedo indicador. 
Não utilizar maiores quantidades do que essa.
Aplicar até ter uma fina camada. Não deixar uma grossa camada.', 'BMS', 'f', 'f', 'f', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (25, 'Bosentana', '', 'BST', 't', 'f', 'f', 'VASOATIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (26, 'Bromoprida', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (27, 'Bupropiona', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (28, 'Bupropiona', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (29, 'Cálcio (cálcio citrato malato) + Vitamina D3 + Vitamina K + Magnésio', '', 'CDKM', 'f', 'f', 't', 'SUPLEMENTO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (30, 'Cálcio (cálcio citrato malato) + Vitamina D3 + Vitamina K + Magnésio', '', 'CDMDK', 'f', 'f', 't', 'SUPLEMENTO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (31, 'Captopril', '', 'CPT', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (32, 'Carbonato de cálcio + Colecalciferol', '', 'CaVD', 'f', 'f', 't', 'SUPLEMENTO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (33, 'Carmelose Sódica', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (34, 'Hialuronato de sódio', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (35, 'Carvedilol', '', 'CVD', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (36, 'Cefadroxila', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (37, 'Cefalexina', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (38, 'Ceftriaxona', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (39, 'Celecoxibe', 'Tomar sempre de estômago cheio', 'CLB', 'f', 't', 't', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (40, 'Celecoxibe', 'Tomar sempre de estômago cheio', 'CLB', 'f', 't', 't', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (41, 'Certolizumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', 'CTZ', 't', 'f', 't', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (42, 'Cetoconazol', 'Tomar de estômago cheio.', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (43, 'Cetoprofeno', '', '', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (44, 'Cetoprofeno + Omeprazol', '', '', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (45, 'Cetoprofeno', '', '', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (46, 'Ciclobenzaprina', 'Essa medicação pode causar sonolência.', 'Cz', 'f', 'f', 't', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (47, 'Ciclofosfamida', '', 'CYC', 't', 'f', 'f', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (49, 'Ciclosporina', '', 'CsA', 't', 'f', 't', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (50, 'Ciprofloxacino', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (51, 'Citalopram', '', 'CTL', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (52, 'Claritromicina', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (53, 'Clindamicina', 'Tomar sempre com um copo d'' água bem cheio.', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (54, 'Clobetasol', '', '', 't', 'f', 'f', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (55, 'Clopidogrel', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (56, 'Clortalidona', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (57, 'Codeína', '', 'CDN', 't', 't', 'f', 'OPIOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (58, 'Codeína + Paracetamol', '', 'CDN_PCT', 'f', 't', 'f', 'OPIOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (59, 'Colchicina', '', 'Cx', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (60, 'Danazol', '', '', 't', 'f', 'f', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (61, 'Dapsona', '', '', 'f', 'f', 'f', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (62, 'Deflazacorte', '', 'DFZ', 'f', 'f', 'f', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (63, 'Deflazacorte', '', 'DFZ', 'f', 'f', 'f', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (64, 'Deflazacorte', '', 'DFZ', 'f', 'f', 'f', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (65, 'Denosumabe', '', '', 'f', 'f', 'f', 'OSTEOMETABOLICO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (66, 'Desloratadina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (67, 'Desvenlafaxina', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (68, 'Dexclorfeniramina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (69, 'Dexlansoprazol ', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (70, 'Diacereina', 'Tomar sempre de estômago cheio.', 'DCR', 'f', 'f', 't', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (71, 'Diclofenaco', '', '', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (72, 'Diosmina + Hesperidina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (73, 'Domperidona', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (74, 'Duloxetina', '', 'DLX', 'f', 't', 't', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (75, 'Enalapril', '', 'ENL', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (76, 'Enoxaparina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (77, 'Escitalopram', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (48, 'Ciclofosfamida', '', 'CYC', 't', 'f', 'f', 'MMCDS', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:48.751+00');
INSERT INTO medicamentos VALUES (78, 'Esomeprazol', 'Aguardar 30 a 60 minutos antes de se alimentar.', 'EMZ', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (79, 'Espironolactona', '', 'ESPL', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (80, 'Etanercepte', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', 'ETN', 't', 'f', 't', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (81, 'Erenumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', 'ERN', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (82, 'Etodolaco', '', '', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (83, 'Etoricoxibe', 'Tomar sempre de estômago cheio', 'ETC', 'f', 't', 't', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (84, 'Ferro quelato glicinato + Ácido fólico', 'Tomar com suco de limão ou laranja.', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (85, 'Fanciclovir', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (86, 'Fenofibrato', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (87, 'Fluconazol', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (88, 'Fluoxetina', '', 'FXT', 'f', 't', 't', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (89, 'Fluvoxamina', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (90, 'Furosemida', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (91, 'Gabapentina', '', 'GBP', 't', 't', 't', 'ANTICONVULSIVANTE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (92, 'Glibenclamina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (93, 'Glicinato de magnésio + cloridrato de piridoxina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (94, 'Glicosamina + Condroitina', '', 'G_C', 'f', 'f', 't', 'SUPLEMENTO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (95, 'Golimumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', 'GLM', 't', 'f', 't', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (96, 'Guselcumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'GSC', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (97, 'Hidrocortisona', '', '', 'f', 'f', 'f', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (100, 'Hidroxicloroquina', '', 'HCLQ', 't', 'f', 't', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (101, 'Ibandronato', '', 'IBD', 'f', 'f', 'f', 'OSTEOMETABOLICO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (102, 'Ibuprofeno', '', 'IBP', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (103, 'Imunoglobulina Humana', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado ou internado em hospital. 
', 'IH', 't', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (104, 'Infliximabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'IFX', 't', 'f', 't', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (105, 'Itraconazol', 'Não utilizar bebidas alcoolicas e paracetamol (ou outro medicamento de metabolismo hepático) durante o uso de itraconazol.', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (106, 'Ixequizumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'IXQ', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (109, 'Leflunomida', '', 'LFN', 't', 'f', 't', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (110, 'Levofloxacino', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (111, 'Lesinurade', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (112, 'Levotiroxina', 'Esse medicamento deve ser administrado com um intervalo de, pelo menos,  4 horas da administração de outros medicamentos que conhecidamente alteram a sua absorção.', 'LT4', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (113, 'Lítio', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (114, 'Losartana', '', 'LST', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (115, 'Medroxiprogesterona', '', '', 'f', 'f', 'f', 'CONVENSIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (116, 'Meloxicam', '', 'Mx', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (117, 'Mepolizumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', 'MPL', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (118, 'Mesalazina', '', 'MSZ', 't', 'f', 'f', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (119, 'Metformina', '', 'MTF', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (120, 'Metildopa', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (121, 'Metilprednisolona', 'Iniciar o tratamento somente após a profilaxia com Albendazol. 
Fazer aplicação somente com supervisão médica.', 'MPDN', 'f', 'f', 'f', 'Corticoide', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (122, 'Metoclopramida', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (123, 'Metoprolol, succinato', '', 'ATL', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (124, 'Metotrexato', 'O rótulo (e bula) trás a instrução de administração IM ou EV. Para tratamento de doenças reumatológicas, entretanto, pode-se realizar a aplicação subcutânea. 
Ressalta-se que a bula dessa medicação carece de atualização, e um processo para isso está em tramitação.', 'MTX INJ', 't', 'f', 't', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (125, 'Metotrexato', 'Ressalta-se que a bula dessa medicação carece de atualização, e um processo para isso está em tramitação.', 'MTX VO', 't', 'f', 't', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (126, 'Metronidazol', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (127, 'Micofenolato de mofetila', '', 'MMF', 't', 'f', 't', 'MMCDS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (128, 'Miconazol', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (129, 'Minoxidil', '', '', 'f', 't', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (130, 'Moxifloxacino', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (131, 'Mupirocina', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (132, 'Naproxeno', 'Tomar de estômago cheio.', 'Nx', 't', 'f', 't', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (133, 'Naproxeno + Esomeprazol', 'Tomar pelo menos 30 minutos antes das refeições. 
Este medicamento não pode ser partido, mastigado ou esmagado.', 'Nx', 'f', 'f', 't', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (108, 'Kit aplicação Infliximabe', '', 'KitIFX', 't', 'f', 't', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.375+00');
INSERT INTO medicamentos VALUES (107, 'Kit aplicação Abatacepte', '', 'KitABT', 't', 'f', 't', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:31.705+00');
INSERT INTO medicamentos VALUES (4, 'Aciclovir', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-16 16:53:18.829+00');
INSERT INTO medicamentos VALUES (99, 'Harpagophytum procumbens DC (22% de harpagosídeo)', 'Tomar sempre de estômago cheio.', 'HP', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:03.3+00');
INSERT INTO medicamentos VALUES (98, 'Harpagophytum procumbens DC (5% de harpagosídeo)', 'Tomar sempre de estômago cheio.', 'HP', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:11.079+00');
INSERT INTO medicamentos VALUES (134, 'Natalizumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'NTL', 't', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (135, 'Nifedipina', '', 'NFD', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (136, 'Nimesulida', 'Tomar de estômago cheio.', '', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (137, 'Nistatina', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (138, 'Nitazoxanida', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (139, 'Nitrofurantoína', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (140, 'Norfloxacino', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (141, 'Nortriptilina', '', 'NTL', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (142, 'Omalizumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', 'OML', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (143, 'Omeprazol', 'Aguardar de 30 a 60 minutos para se alimentar.', 'OMZ', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (144, 'Ondansetrona', 'Colocar o comprimido na ponta da língua para que este se dissolva. 
Engolir com saliva. Não é necessário administrar com líquidos.', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (145, 'Oseltamivir', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (146, 'Oxcarbazepina', '', '', 'f', 't', 'f', 'ANTICONVULSIVANTE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (147, 'Pamidronato', 'O pamidronato não é um medicamento aprovado para o tratamento da osteoporose; no entanto, é a única opc¸ão não oral disponível em nossosistema público de saúde para pacientes que têm osteoporose e contraindicaçõespara o uso de bifosfonatos orais.', 'PMD', 't', 'f', 'f', '', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (148, 'Pantoprazol', 'Aguardar 30 a 60 minutos antes de se alimentar.', 'PTZ', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (149, 'Pantoprazol magnésico di-hidratado', 'Aguardar 30 a 60 minutos antes de se alimentar.', 'PTZ-Mg', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (150, 'Paracetamol', '', 'PCT', 'f', 'f', 'f', 'ANALGÉSICO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (151, 'Paroxetina', '', 'PXT', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (152, 'Pilocarpina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (153, 'Piroxicam', 'Tomar de estômago cheio.', '', 'f', 'f', 'f', 'ANTIINFLAMATORIO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (154, 'Pramipexol', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (155, 'Prednisolona', '', 'PDLN', 'f', 'f', 'f', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (156, 'Prednisona', '', 'PDN', 't', 'f', 't', 'CORTICOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (157, 'Pregabalina', '', 'PBL', 'f', 't', 't', 'ANTICONVULSIVANTE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (158, 'Prometazina', 'Essa medicação pode causar sonolência e diminuição de reflexos.', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (159, 'Propanolol', '', 'PPL', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (160, 'Quetiapina', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (161, 'Quetiapina', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (162, 'Racecadotrila', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (163, 'Raloxifeno', '', '', 't', 'f', 'f', 'OSTEOMETABOLICO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (164, 'Risedronato', '', 'RSD', 't', 'f', 't', 'OSTEOMETABOLICO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (165, 'Rituximabe', 'Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
Agendar a infusão com antecedência se possível. 
Caso os serviços hospitalares locais não tenham as medicações ou condições (bomba de infusão) para administração da medicação, recomenda-se o encaminhamento, via central de leitos, para hospital de maior porte que tenha condições de administrar a medicação em regime de internamento (03.03.09.031-6 - TRATAMENTO DAS POLIARTROPATIAS INFLAMATORIAS).', 'RTX', 't', 'f', 't', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (166, 'Rosuvastatina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (167, 'Sertralina', '', 'SRT', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (168, 'Sildenafila', '', 'SDF', 't', 'f', 't', 'VASOATIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (169, 'Sinvastatina', '', 'SVT', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (170, 'Sulfametoxazol + Trimetoprima', '', 'SMZTMP', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (171, 'Valsartana', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (172, 'Terbinafina', 'Não utilizar bebidas alcoolicas e paracetamol (ou outro medicamento de metabolismo hepático) durante o uso de itraconazol.', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (173, 'Teriparatida (ADN recombinante)', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR.', '', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (174, 'Tocilizumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'TCZ', 't', 'f', 't', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (175, 'Tofacitinibe', '', 'TFC', 't', 'f', 't', 'MMCDPM', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (176, 'Topiramato', '', '', 'f', 't', 'f', 'ANTICONVULSIVANTE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (177, 'Tramadol', 'Esse medicamento pode causar sonolência, tontura e redução dos reflexos.', 'TMD', 'f', 't', 't', 'OPIOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (178, 'Tramadol + Paracetamol', '', 'TMD_PCT', 'f', 't', 'f', 'OPIOIDE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (179, 'Trazodona', '', 'TZN', 'f', 't', 't', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (180, 'Trometamol', '', '', 'f', 'f', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (181, 'Upadacitinibe', '', 'TFC', 'f', 'f', 'f', 'MMCDPM', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (182, 'Ustekinumab', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'UTK', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (183, 'Valaciclovir', '', '', 'f', 't', 'f', 'ANTIMICROBIANO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (184, 'Valproato De Sódio', '', '', 'f', 't', 'f', 'ANTICONVULSIVANTE', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (185, 'Valsartana', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (186, 'Valeriana officinalisL. + Humulus lupulus L.', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (187, 'Varfarina', '', '', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (188, 'Venlafaxina', '', 'VFX', 'f', 't', 't', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (189, 'Vitamina D3 (Colecalciferol)', '', 'VD', 'f', 'f', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (190, 'Vedolizumabe', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', 'ABT', 'f', 'f', 'f', 'MMCDB', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (191, 'Vortioxetina ', '', '', 'f', 't', 'f', 'ANTIDEPRESSIVO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (192, 'Ácido Zoledrônico', 'Paciente deve-se fazer uma boa hidratação oral, no dia anterior, no dia da aplicação e no dia seguinte a aplicação. Tomar preferencialmente 2 (ou mais) litros de líquido ao dia.', 'AZ', 'f', 'f', 't', 'OSTEOMETABOLICO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');
INSERT INTO medicamentos VALUES (193, 'Zolpidem', '', 'AMT', 'f', 't', 'f', 'CONVENCIONAL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00');


--
-- Data for Name: nomescomerciais; Type: TABLE DATA; Schema: public; Owner: wdkpsyme
--

INSERT INTO nomescomerciais VALUES (1, 'Orencia', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO nomescomerciais VALUES (3, 'Aspirina Prevent', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 3);
INSERT INTO nomescomerciais VALUES (4, 'AAS Infantil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 3);
INSERT INTO nomescomerciais VALUES (6, 'Endofolin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 5);
INSERT INTO nomescomerciais VALUES (7, 'Folin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 5);
INSERT INTO nomescomerciais VALUES (8, 'Humira', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 6);
INSERT INTO nomescomerciais VALUES (9, 'Zentel', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 7);
INSERT INTO nomescomerciais VALUES (10, 'Parasin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 7);
INSERT INTO nomescomerciais VALUES (11, 'Fosamax', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 8);
INSERT INTO nomescomerciais VALUES (12, 'Zyloric', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 9);
INSERT INTO nomescomerciais VALUES (13, 'Tryptanol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 10);
INSERT INTO nomescomerciais VALUES (14, 'Amytril', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 10);
INSERT INTO nomescomerciais VALUES (15, 'Amoxil BD', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 11);
INSERT INTO nomescomerciais VALUES (16, 'Novocilin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 11);
INSERT INTO nomescomerciais VALUES (17, 'Clavulin BD', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 12);
INSERT INTO nomescomerciais VALUES (18, 'Novamox', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 12);
INSERT INTO nomescomerciais VALUES (19, 'Norvasc', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 13);
INSERT INTO nomescomerciais VALUES (20, 'Naprix', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 13);
INSERT INTO nomescomerciais VALUES (21, 'BioXtra Dry Mouth', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 14);
INSERT INTO nomescomerciais VALUES (22, 'Atenol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 15);
INSERT INTO nomescomerciais VALUES (23, 'Citalor', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 16);
INSERT INTO nomescomerciais VALUES (24, 'Imuran', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO nomescomerciais VALUES (25, 'Zitromax', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 18);
INSERT INTO nomescomerciais VALUES (26, 'Selimax', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 18);
INSERT INTO nomescomerciais VALUES (27, 'Olumiant', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 19);
INSERT INTO nomescomerciais VALUES (28, 'Belysta', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO nomescomerciais VALUES (29, 'Narcaricina', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 21);
INSERT INTO nomescomerciais VALUES (30, 'Benzetacil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 22);
INSERT INTO nomescomerciais VALUES (31, 'Duoflan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 23);
INSERT INTO nomescomerciais VALUES (32, 'Diprospam', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 23);
INSERT INTO nomescomerciais VALUES (33, 'Betnovat', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 24);
INSERT INTO nomescomerciais VALUES (34, 'Tracleer', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 25);
INSERT INTO nomescomerciais VALUES (35, 'Digesan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 26);
INSERT INTO nomescomerciais VALUES (36, 'Plamet', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 26);
INSERT INTO nomescomerciais VALUES (37, 'Zyban', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 27);
INSERT INTO nomescomerciais VALUES (38, 'Zetron', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 27);
INSERT INTO nomescomerciais VALUES (39, 'Bup', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 27);
INSERT INTO nomescomerciais VALUES (40, 'Wellbutrin XL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 28);
INSERT INTO nomescomerciais VALUES (41, 'Zetron XL', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 28);
INSERT INTO nomescomerciais VALUES (42, 'Caldê KM', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 29);
INSERT INTO nomescomerciais VALUES (43, 'Velus', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 29);
INSERT INTO nomescomerciais VALUES (44, 'Caldê KDM', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 30);
INSERT INTO nomescomerciais VALUES (45, 'Captosen', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 31);
INSERT INTO nomescomerciais VALUES (46, 'Caldê', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 32);
INSERT INTO nomescomerciais VALUES (47, 'Salivan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 33);
INSERT INTO nomescomerciais VALUES (48, 'Hyabak', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 34);
INSERT INTO nomescomerciais VALUES (49, 'Coreg', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 35);
INSERT INTO nomescomerciais VALUES (50, 'Cardilol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 35);
INSERT INTO nomescomerciais VALUES (51, 'Cefamox', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 36);
INSERT INTO nomescomerciais VALUES (52, 'Keflex', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 37);
INSERT INTO nomescomerciais VALUES (53, 'Rocefin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 38);
INSERT INTO nomescomerciais VALUES (54, 'Celebra', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 39);
INSERT INTO nomescomerciais VALUES (55, 'Digoxibe', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 39);
INSERT INTO nomescomerciais VALUES (56, 'Celebra', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO nomescomerciais VALUES (57, 'Dicoxibe', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO nomescomerciais VALUES (58, 'Foxis', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO nomescomerciais VALUES (59, 'Cimzia', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 41);
INSERT INTO nomescomerciais VALUES (60, 'Nizoral', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO nomescomerciais VALUES (61, 'Candoral', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO nomescomerciais VALUES (62, 'Profenid', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO nomescomerciais VALUES (63, 'Artrosil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO nomescomerciais VALUES (64, 'Bi-Profenid Protect', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 44);
INSERT INTO nomescomerciais VALUES (65, 'Profenid Gel', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 45);
INSERT INTO nomescomerciais VALUES (66, 'Miosan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 46);
INSERT INTO nomescomerciais VALUES (67, 'Cizax', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 46);
INSERT INTO nomescomerciais VALUES (68, 'Genuxal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 47);
INSERT INTO nomescomerciais VALUES (70, 'Sandimmun Neoral', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 49);
INSERT INTO nomescomerciais VALUES (71, 'Cipro', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 50);
INSERT INTO nomescomerciais VALUES (72, 'Floxocip', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 50);
INSERT INTO nomescomerciais VALUES (73, 'Cipramil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 51);
INSERT INTO nomescomerciais VALUES (74, 'Procimax', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 51);
INSERT INTO nomescomerciais VALUES (75, 'Klaricid UD', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 52);
INSERT INTO nomescomerciais VALUES (77, 'Psorex', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 54);
INSERT INTO nomescomerciais VALUES (78, 'Clobex', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 54);
INSERT INTO nomescomerciais VALUES (79, 'Plavix', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 55);
INSERT INTO nomescomerciais VALUES (80, 'Higroton', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 56);
INSERT INTO nomescomerciais VALUES (81, 'Codein', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO nomescomerciais VALUES (82, 'Tylex', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 58);
INSERT INTO nomescomerciais VALUES (83, 'Codex', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 58);
INSERT INTO nomescomerciais VALUES (84, 'Paco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 58);
INSERT INTO nomescomerciais VALUES (85, 'Colchis', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 59);
INSERT INTO nomescomerciais VALUES (86, 'Ladogal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 60);
INSERT INTO nomescomerciais VALUES (87, 'Dapsona', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 61);
INSERT INTO nomescomerciais VALUES (88, 'Calcort', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 62);
INSERT INTO nomescomerciais VALUES (89, 'Deflanil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 62);
INSERT INTO nomescomerciais VALUES (90, 'Deflanil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 63);
INSERT INTO nomescomerciais VALUES (91, 'Calcort', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 64);
INSERT INTO nomescomerciais VALUES (92, 'Prolia', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 65);
INSERT INTO nomescomerciais VALUES (93, 'Desalex', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 66);
INSERT INTO nomescomerciais VALUES (94, 'Pristiq', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 67);
INSERT INTO nomescomerciais VALUES (95, 'Elifore', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 67);
INSERT INTO nomescomerciais VALUES (96, 'Indefa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 67);
INSERT INTO nomescomerciais VALUES (97, 'Polaramine', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 68);
INSERT INTO nomescomerciais VALUES (98, 'Dexilant', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 69);
INSERT INTO nomescomerciais VALUES (99, 'Artrodar', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 70);
INSERT INTO nomescomerciais VALUES (100, 'Cataflam', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 71);
INSERT INTO nomescomerciais VALUES (101, 'Voltaren', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 71);
INSERT INTO nomescomerciais VALUES (102, 'Diosmin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 72);
INSERT INTO nomescomerciais VALUES (103, 'Motilium', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 73);
INSERT INTO nomescomerciais VALUES (107, 'Renitec', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 75);
INSERT INTO nomescomerciais VALUES (108, 'Clexane', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 76);
INSERT INTO nomescomerciais VALUES (109, 'Lexapro', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 77);
INSERT INTO nomescomerciais VALUES (110, 'Reconter', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 77);
INSERT INTO nomescomerciais VALUES (111, 'Nexium', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 78);
INSERT INTO nomescomerciais VALUES (112, 'Aldactone', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 79);
INSERT INTO nomescomerciais VALUES (113, 'Enbrel', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 80);
INSERT INTO nomescomerciais VALUES (114, 'Pasurta', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 81);
INSERT INTO nomescomerciais VALUES (115, 'Flancox', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 82);
INSERT INTO nomescomerciais VALUES (116, 'Arcoxia', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 83);
INSERT INTO nomescomerciais VALUES (117, 'Hetori', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 83);
INSERT INTO nomescomerciais VALUES (118, 'Neutrofer Fólico', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 84);
INSERT INTO nomescomerciais VALUES (119, 'Penvir', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 85);
INSERT INTO nomescomerciais VALUES (104, 'Cymbalta', '2021-06-09 12:09:43.093+00', '2021-06-28 18:45:40.493+00', 74);
INSERT INTO nomescomerciais VALUES (105, 'Velija', '2021-06-09 12:09:43.093+00', '2021-06-28 18:45:40.493+00', 74);
INSERT INTO nomescomerciais VALUES (106, 'Dual', '2021-06-09 12:09:43.093+00', '2021-06-28 18:45:40.493+00', 74);
INSERT INTO nomescomerciais VALUES (69, 'Genuxal', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:48.754+00', 48);
INSERT INTO nomescomerciais VALUES (120, 'Lipidil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 86);
INSERT INTO nomescomerciais VALUES (121, 'Zoltec', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 87);
INSERT INTO nomescomerciais VALUES (122, 'Fluconal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 87);
INSERT INTO nomescomerciais VALUES (123, 'Prozac', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 88);
INSERT INTO nomescomerciais VALUES (124, 'Verotina', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 88);
INSERT INTO nomescomerciais VALUES (125, 'Luvox', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 89);
INSERT INTO nomescomerciais VALUES (126, 'Lasix', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 90);
INSERT INTO nomescomerciais VALUES (127, 'Neurontin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO nomescomerciais VALUES (128, 'Gabaneurin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO nomescomerciais VALUES (129, 'Daonil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 92);
INSERT INTO nomescomerciais VALUES (130, 'Magnen B6', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 93);
INSERT INTO nomescomerciais VALUES (131, 'CondroFlex', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 94);
INSERT INTO nomescomerciais VALUES (132, 'Artrolive', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 94);
INSERT INTO nomescomerciais VALUES (133, 'Simponi', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO nomescomerciais VALUES (134, 'Tremfya', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 96);
INSERT INTO nomescomerciais VALUES (135, 'Berlison', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 97);
INSERT INTO nomescomerciais VALUES (138, 'Reuquinol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 100);
INSERT INTO nomescomerciais VALUES (139, 'Osteoban', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 101);
INSERT INTO nomescomerciais VALUES (140, 'Bonviva', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 101);
INSERT INTO nomescomerciais VALUES (141, 'Advil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 102);
INSERT INTO nomescomerciais VALUES (142, 'Alivium', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 102);
INSERT INTO nomescomerciais VALUES (143, 'Imunoglobulina Humana', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 103);
INSERT INTO nomescomerciais VALUES (144, 'Remicade', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO nomescomerciais VALUES (145, 'Xilfya', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO nomescomerciais VALUES (146, 'Remsima', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO nomescomerciais VALUES (147, 'Sporanox', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 105);
INSERT INTO nomescomerciais VALUES (148, 'Taltz', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 106);
INSERT INTO nomescomerciais VALUES (151, 'Arava', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 109);
INSERT INTO nomescomerciais VALUES (152, 'Levaquin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO nomescomerciais VALUES (153, 'Tavanic', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO nomescomerciais VALUES (154, 'Levoxin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO nomescomerciais VALUES (155, 'Zurampic', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 111);
INSERT INTO nomescomerciais VALUES (156, 'Puran T4', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO nomescomerciais VALUES (157, 'Synthroid', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO nomescomerciais VALUES (158, 'Carbolitium', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 113);
INSERT INTO nomescomerciais VALUES (159, 'Cozaar', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 114);
INSERT INTO nomescomerciais VALUES (160, 'Corus', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 114);
INSERT INTO nomescomerciais VALUES (161, 'Depo-Provera', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 115);
INSERT INTO nomescomerciais VALUES (162, 'Movatec', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 116);
INSERT INTO nomescomerciais VALUES (163, 'Bioflac', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 116);
INSERT INTO nomescomerciais VALUES (164, 'Nucala', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 117);
INSERT INTO nomescomerciais VALUES (165, 'Pentasa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO nomescomerciais VALUES (166, 'Asalit', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO nomescomerciais VALUES (167, 'Mesacol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO nomescomerciais VALUES (168, 'Glifage XR', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 119);
INSERT INTO nomescomerciais VALUES (169, 'Mytfor LP', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 119);
INSERT INTO nomescomerciais VALUES (170, 'Aldomet', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 120);
INSERT INTO nomescomerciais VALUES (171, 'Solu-Medrol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 121);
INSERT INTO nomescomerciais VALUES (172, 'Plasil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 122);
INSERT INTO nomescomerciais VALUES (173, 'Plamet', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 122);
INSERT INTO nomescomerciais VALUES (174, 'Selozok', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 123);
INSERT INTO nomescomerciais VALUES (175, 'Miantrex CS', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO nomescomerciais VALUES (176, 'Hytas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO nomescomerciais VALUES (179, 'Flagyl', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO nomescomerciais VALUES (180, 'Floxocip', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO nomescomerciais VALUES (181, 'Cellcept', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO nomescomerciais VALUES (182, 'Daktarin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 128);
INSERT INTO nomescomerciais VALUES (183, 'Aloxidil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 129);
INSERT INTO nomescomerciais VALUES (184, 'Avalox', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 130);
INSERT INTO nomescomerciais VALUES (185, 'Bactroban', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 131);
INSERT INTO nomescomerciais VALUES (186, 'Naprosyn', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO nomescomerciais VALUES (187, 'Vimovo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 133);
INSERT INTO nomescomerciais VALUES (188, 'Tysabri', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 134);
INSERT INTO nomescomerciais VALUES (189, 'Adalat Oros', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 135);
INSERT INTO nomescomerciais VALUES (190, 'Nisulid', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO nomescomerciais VALUES (191, 'Micostatin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 137);
INSERT INTO nomescomerciais VALUES (192, 'Annita', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 138);
INSERT INTO nomescomerciais VALUES (193, 'Macrodantina', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 139);
INSERT INTO nomescomerciais VALUES (194, 'Floxacin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 140);
INSERT INTO nomescomerciais VALUES (195, 'Pamelor', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 141);
INSERT INTO nomescomerciais VALUES (196, 'Xolair', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO nomescomerciais VALUES (197, 'Peprazol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO nomescomerciais VALUES (198, 'Lozeprel', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO nomescomerciais VALUES (199, 'Zofran', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 144);
INSERT INTO nomescomerciais VALUES (200, 'Vonau', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 144);
INSERT INTO nomescomerciais VALUES (201, 'Tamiflu', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 145);
INSERT INTO nomescomerciais VALUES (202, 'Trileptal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 146);
INSERT INTO nomescomerciais VALUES (203, 'Fauldpami', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 147);
INSERT INTO nomescomerciais VALUES (204, 'Pantozol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 148);
INSERT INTO nomescomerciais VALUES (205, 'Adipept', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 148);
INSERT INTO nomescomerciais VALUES (206, 'Tecta', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 149);
INSERT INTO nomescomerciais VALUES (207, 'Inilok', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 149);
INSERT INTO nomescomerciais VALUES (208, 'Tylenol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 150);
INSERT INTO nomescomerciais VALUES (209, 'Aropax', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 151);
INSERT INTO nomescomerciais VALUES (210, 'Cebrilin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 151);
INSERT INTO nomescomerciais VALUES (211, 'Selagen', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 152);
INSERT INTO nomescomerciais VALUES (212, 'Feldene', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO nomescomerciais VALUES (213, 'Sifrol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 154);
INSERT INTO nomescomerciais VALUES (214, 'Stabil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 154);
INSERT INTO nomescomerciais VALUES (215, 'Predsim', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO nomescomerciais VALUES (216, 'Prelone', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO nomescomerciais VALUES (217, 'Meticorten', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO nomescomerciais VALUES (218, 'Lyrica', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO nomescomerciais VALUES (219, 'Prebictal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO nomescomerciais VALUES (220, 'Dorene', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO nomescomerciais VALUES (221, 'Fenergan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 158);
INSERT INTO nomescomerciais VALUES (222, 'Inderal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 159);
INSERT INTO nomescomerciais VALUES (223, 'Seroquel', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO nomescomerciais VALUES (224, 'Quielix', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO nomescomerciais VALUES (225, 'Seroquel XRO', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 161);
INSERT INTO nomescomerciais VALUES (226, 'Tiorfan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 162);
INSERT INTO nomescomerciais VALUES (227, 'Evista', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 163);
INSERT INTO nomescomerciais VALUES (228, 'Actonel', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 164);
INSERT INTO nomescomerciais VALUES (229, 'Osteotrat', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 164);
INSERT INTO nomescomerciais VALUES (230, 'Mabthera', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 165);
INSERT INTO nomescomerciais VALUES (231, 'Riximyo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 165);
INSERT INTO nomescomerciais VALUES (232, 'Crestor', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 166);
INSERT INTO nomescomerciais VALUES (233, 'Trezor', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 166);
INSERT INTO nomescomerciais VALUES (234, 'Zoloft', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 167);
INSERT INTO nomescomerciais VALUES (235, 'Assert', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 167);
INSERT INTO nomescomerciais VALUES (236, 'Videnfil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 168);
INSERT INTO nomescomerciais VALUES (237, 'Vasifil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 168);
INSERT INTO nomescomerciais VALUES (238, 'Atenol', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 169);
INSERT INTO nomescomerciais VALUES (177, 'Tecnomed', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO nomescomerciais VALUES (178, 'Reutrexato', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO nomescomerciais VALUES (137, 'Permear', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:03.306+00', 99);
INSERT INTO nomescomerciais VALUES (136, 'Arpadol', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:11.08+00', 98);
INSERT INTO nomescomerciais VALUES (239, 'Bactrin', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 170);
INSERT INTO nomescomerciais VALUES (240, 'Diovan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 171);
INSERT INTO nomescomerciais VALUES (241, 'Lamisil', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO nomescomerciais VALUES (242, 'Fortéo', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 173);
INSERT INTO nomescomerciais VALUES (243, 'Actemra', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO nomescomerciais VALUES (244, 'Xeljanz', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 175);
INSERT INTO nomescomerciais VALUES (245, 'Topamax', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 176);
INSERT INTO nomescomerciais VALUES (246, 'Égide', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 176);
INSERT INTO nomescomerciais VALUES (247, 'Amato', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 176);
INSERT INTO nomescomerciais VALUES (248, 'Tramal', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO nomescomerciais VALUES (249, 'Tramadon', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO nomescomerciais VALUES (250, 'Ultracet', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 178);
INSERT INTO nomescomerciais VALUES (251, 'Paratram', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 178);
INSERT INTO nomescomerciais VALUES (252, 'Revange', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 178);
INSERT INTO nomescomerciais VALUES (253, 'Donaren', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 179);
INSERT INTO nomescomerciais VALUES (254, 'Loredon', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 179);
INSERT INTO nomescomerciais VALUES (255, 'Monuril', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 180);
INSERT INTO nomescomerciais VALUES (256, 'Rinvoq', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 181);
INSERT INTO nomescomerciais VALUES (257, 'Stelara', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO nomescomerciais VALUES (258, 'Valtrex', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 183);
INSERT INTO nomescomerciais VALUES (259, 'Depakene', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 184);
INSERT INTO nomescomerciais VALUES (260, 'Diovan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 185);
INSERT INTO nomescomerciais VALUES (261, 'Tamcore', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 185);
INSERT INTO nomescomerciais VALUES (262, 'Remilev', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 186);
INSERT INTO nomescomerciais VALUES (263, 'Marevan', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO nomescomerciais VALUES (264, 'Efexor XR', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO nomescomerciais VALUES (265, 'Alenthus XR', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO nomescomerciais VALUES (266, 'Venlift OD', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO nomescomerciais VALUES (267, 'Addera D3', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO nomescomerciais VALUES (268, 'Sany D', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO nomescomerciais VALUES (269, 'Addera D3', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO nomescomerciais VALUES (270, 'Entyvio', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 190);
INSERT INTO nomescomerciais VALUES (271, 'Brintellix', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 191);
INSERT INTO nomescomerciais VALUES (272, 'Aclasta', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 192);
INSERT INTO nomescomerciais VALUES (273, 'Densis', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 192);
INSERT INTO nomescomerciais VALUES (274, 'Stilnox', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 193);
INSERT INTO nomescomerciais VALUES (275, 'Lioran', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 193);
INSERT INTO nomescomerciais VALUES (150, 'Kit Infliximabe', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.378+00', 108);
INSERT INTO nomescomerciais VALUES (149, 'Kit Abatacepte', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:31.706+00', 107);
INSERT INTO nomescomerciais VALUES (5, 'Zovirax', '2021-06-09 12:09:43.093+00', '2021-06-16 16:53:18.829+00', 4);
INSERT INTO nomescomerciais VALUES (2, 'Fluimucil', '2021-06-09 12:09:43.093+00', '2021-06-22 00:34:55.245+00', 2);
INSERT INTO nomescomerciais VALUES (277, 'TesteQQQQQ', '2021-06-21 17:41:00.839+00', '2021-06-22 00:34:55.245+00', 2);
INSERT INTO nomescomerciais VALUES (76, 'Dalacin C', '2021-06-09 12:09:43.093+00', '2023-04-14 17:13:19.935+00', 53);


--
-- Data for Name: pericias; Type: TABLE DATA; Schema: public; Owner: wdkpsyme
--



--
-- Data for Name: posologias; Type: TABLE DATA; Schema: public; Owner: wdkpsyme
--

INSERT INTO posologias VALUES (1, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e quatro semanas (em relação a primeira aplicação) após a cada 4 semanas.', '8', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO posologias VALUES (2, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e quatro semanas (em relação a primeira aplicação) após a cada 4 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO posologias VALUES (3, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e quatro semanas (em relação a primeira aplicação) após a cada 4 semanas.', '16', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO posologias VALUES (4, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO posologias VALUES (5, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '9', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO posologias VALUES (6, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO posologias VALUES (7, 'Aplicar 01 ampola (seringa) no subcutâneo uma vez por semana.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 1);
INSERT INTO posologias VALUES (11, 'Tomar 01 comprimido após almoço.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 3);
INSERT INTO posologias VALUES (15, 'Tomar 01 comprimido no dia seguinte que escolheu tomar o Metotrexate. ', '12', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 5);
INSERT INTO posologias VALUES (16, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 5);
INSERT INTO posologias VALUES (17, 'Aplicar 01 ampola (seringa) [40 mg] no subcutâneo a cada 14 dias.', '6', 'ampolas (seringas)', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 6);
INSERT INTO posologias VALUES (18, 'Aplicar 01 ampola (seringa) [40 mg] no subcutâneo uma vez por semana.', '12', 'ampolas (seringas)', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 6);
INSERT INTO posologias VALUES (19, 'Semana 0: Aplicar 4 ampolas (seringas) [160 mg] por via subcutânea no mesmo dia.
Semana 2: Aplicar 2 ampolas (seringas) [80 mg] por via subcutânea no mesmo dia. 
Semana 4 em diante: Aplicar 2 ampolas (seringas) [40 mg] por via subcutânea a cada 14 dias.', '10', 'ampolas (seringas)', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 6);
INSERT INTO posologias VALUES (20, 'Semana 0: Aplicar 2 ampolas (seringas) [80 mg] por via subcutânea no mesmo dia. 
Semana 2 em diante: Aplicar 2 ampolas (seringas) [40 mg] por via subcutânea a cada 14 dias.', '10', 'ampolas (seringas)', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 6);
INSERT INTO posologias VALUES (21, 'Tomar 01 comprimido uma vez ao dia por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 7);
INSERT INTO posologias VALUES (22, 'Tomar 01 comprimido uma vez por semana. 
Tomar em jejum. Aguardar 60 minutos antes da se alimentar. 
Tomar com um copo cheio de água filtrada (180 a 240 mL). 
Você deverá ficar de sentada, de pé ou andando após tomar a medicação. 
NÃO deitar nos 60 minutos seguintes após tomar o medicamento. 
Previsão de tratamento é de um ano.', '4', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 8);
INSERT INTO posologias VALUES (23, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 9);
INSERT INTO posologias VALUES (24, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 9);
INSERT INTO posologias VALUES (25, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 10);
INSERT INTO posologias VALUES (26, 'Tomar 02 comprimidos a noite próximo à hora de dormir. ', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 10);
INSERT INTO posologias VALUES (27, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '14', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 11);
INSERT INTO posologias VALUES (28, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '20', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 11);
INSERT INTO posologias VALUES (29, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '28', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 11);
INSERT INTO posologias VALUES (30, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '14', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 12);
INSERT INTO posologias VALUES (31, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '20', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 12);
INSERT INTO posologias VALUES (32, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '28', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 12);
INSERT INTO posologias VALUES (33, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 13);
INSERT INTO posologias VALUES (34, 'Bochechar cerca de 10mL por 30 segundos após a escovação. Não precisa enxaguar. Use diariamente, regularmente ao longo do dia', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 14);
INSERT INTO posologias VALUES (35, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 15);
INSERT INTO posologias VALUES (36, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 15);
INSERT INTO posologias VALUES (37, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 16);
INSERT INTO posologias VALUES (38, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO posologias VALUES (39, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO posologias VALUES (40, 'Tomar 01 comprimido de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO posologias VALUES (41, 'Tomar 02 comprimidos pela manhã e 01 comprimido a noite.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO posologias VALUES (42, 'Tomar 02 comprimidos de 12 em 12 horas.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO posologias VALUES (43, 'Tomar 02 comprimidos de 8 em 8 horas.', '180', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO posologias VALUES (44, 'Tomar 01 comprimidos uma vez ao dia por 30 dias, então tome 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 17);
INSERT INTO posologias VALUES (45, 'Tomar 01 comprimido uma vez ao dia por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 18);
INSERT INTO posologias VALUES (46, 'Tomar 01 comprimido uma vez ao dia por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 18);
INSERT INTO posologias VALUES (47, 'Tomar 02 comprimidos dose única.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 18);
INSERT INTO posologias VALUES (48, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 19);
INSERT INTO posologias VALUES (10, 'Tomar 01 comprimido de 8 em 8 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-22 00:34:55.245+00', 2);
INSERT INTO posologias VALUES (8, 'Tomar 15 mL (600 mg) uma vez ao dia, de preferência à noite, por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-22 00:34:55.245+00', 2);
INSERT INTO posologias VALUES (49, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e quatro semanas (em relação a primeira aplicação) após a cada 4 semanas.', '8', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO posologias VALUES (104, 'Tomar 01 cápsula de 12 em 12 horas 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO posologias VALUES (105, 'Aplicar uma fina camada sobre a área afetada de 12 em 12 horas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO posologias VALUES (50, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e quatro semanas (em relação a primeira aplicação) após a cada 4 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO posologias VALUES (51, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e quatro semanas (em relação a primeira aplicação) após a cada 4 semanas.', '16', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO posologias VALUES (52, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO posologias VALUES (53, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '9', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO posologias VALUES (54, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 20);
INSERT INTO posologias VALUES (55, 'Tomar 01 comprimido após o café da manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 21);
INSERT INTO posologias VALUES (56, 'Aplicar 01 frasco-ampola intramuscular profunda (glúteo) dose única.', '1', 'ampola', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 22);
INSERT INTO posologias VALUES (57, 'Aplicar 01 frasco-ampola intramuscular profunda (glúteo) a cada 21 dias.', '2', 'ampolas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 22);
INSERT INTO posologias VALUES (58, 'Aplicar 01 frasco-ampola intramuscular profunda (glúteo) dose única.', '1', 'ampola', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 23);
INSERT INTO posologias VALUES (59, 'Aplicar uma quantidade adequada como explicado em consulta na região afetada de 12 em 12 horas por 7 dias.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 24);
INSERT INTO posologias VALUES (60, 'Aplicar uma quantidade adequada como explicado em consulta na região afetada de 12 em 12 horas por 14 dias.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 24);
INSERT INTO posologias VALUES (61, 'Aplicar uma quantidade adequada como explicado em consulta na região afetada de 12 em 12 horas até melhora da lesão.', '2', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 24);
INSERT INTO posologias VALUES (62, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 25);
INSERT INTO posologias VALUES (63, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 25);
INSERT INTO posologias VALUES (64, 'Tomar 02 comprimidos pela manhã e 01 comprimido a noite.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 25);
INSERT INTO posologias VALUES (65, 'Tomar 02 comprimidos de 12 em 12 horas.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 25);
INSERT INTO posologias VALUES (66, 'Tomar 01 cápsula de 12 em 12 horas se náusea ou vômitos.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 26);
INSERT INTO posologias VALUES (67, 'Tomar 01 cápsula de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 26);
INSERT INTO posologias VALUES (68, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 27);
INSERT INTO posologias VALUES (69, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 27);
INSERT INTO posologias VALUES (70, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 28);
INSERT INTO posologias VALUES (71, 'Tomar 01 comprimido após almoço.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 29);
INSERT INTO posologias VALUES (72, 'Tomar 01 comprimido após almoço.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 30);
INSERT INTO posologias VALUES (73, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 31);
INSERT INTO posologias VALUES (74, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 31);
INSERT INTO posologias VALUES (75, 'Tomar 01 comprimido após almoço.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 32);
INSERT INTO posologias VALUES (76, 'Aplicar 02 jatos dentro da boca a cada 4 horas e antes das refeições.', '3', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 33);
INSERT INTO posologias VALUES (77, 'Aplicar vários jatos dentro da boca sempre que necessário.', '3', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 33);
INSERT INTO posologias VALUES (78, 'Pingar uma gota em ambos os olhos uma a duas vezes ao dia.', '2', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 34);
INSERT INTO posologias VALUES (79, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 35);
INSERT INTO posologias VALUES (80, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 35);
INSERT INTO posologias VALUES (81, 'Tomar 01 cápsula de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 36);
INSERT INTO posologias VALUES (82, 'Tomar 01 drágea de 6 em 6 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 37);
INSERT INTO posologias VALUES (83, 'Tomar 01 drágea de 6 em 6 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 37);
INSERT INTO posologias VALUES (84, 'Aplicar 01 ampola intramuscular profunda (glúteo) uma vez ao dia por 7 dias.', '7', 'ampolas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 38);
INSERT INTO posologias VALUES (85, 'Aplicar 01 ampola intramuscular profunda (glúteo) de 12 em 12 horas por 7 dias.', '14', 'ampolas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 38);
INSERT INTO posologias VALUES (86, 'Tomar 01 cápsula de 12 em 12 horas por 30 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 39);
INSERT INTO posologias VALUES (87, 'Tomar 01 cápsula de 12 em 12 horas por 60 dias.', '4', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 39);
INSERT INTO posologias VALUES (88, 'Tomar 01 cápsula de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO posologias VALUES (89, 'Tomar 01 cápsula de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO posologias VALUES (90, 'Tomar 01 cápsula de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO posologias VALUES (91, 'Tomar 01 cápsula de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO posologias VALUES (92, 'Tomar 01 cápsula de 12 em 12 horas por 30 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO posologias VALUES (93, 'Tomar 01 cápsula de 12 em 12 horas por 60 dias.', '60', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 40);
INSERT INTO posologias VALUES (94, 'Semana 0: Aplicar 2 ampolas (seringas) [400 mg] por via subcutânea no mesmo dia. 
Semana 2: Aplicar 2 ampolas (seringas) [400 mg] por via subcutânea no mesmo dia. 
Semana 4: Aplicar 2 ampolas (seringas) [400 mg] por via subcutânea no mesmo dia. 
Semana 6 em diante: Aplicar 1 ampola (seringa) [200 mg] por via subcutânea a cada 14 dias.', '8', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 41);
INSERT INTO posologias VALUES (95, 'Aplicar 01 ampola (seringa) [200 mg] no subcutâneo a cada 14 dias.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 41);
INSERT INTO posologias VALUES (96, 'Aplicar 02 ampolas (seringas) [400 mg] no subcutâneo no mesmo dia a cada 28 dias.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 41);
INSERT INTO posologias VALUES (97, 'Tomar 01 comprimido uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO posologias VALUES (98, 'Tomar 01 comprimido uma vez ao dia por 14 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO posologias VALUES (99, 'Aplicar uma adequada quantidade na região afetada uma vez ao dia por 7 dias.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO posologias VALUES (100, 'Aplicar uma adequada quantidade na região afetada uma vez ao dia por 14 dias.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 42);
INSERT INTO posologias VALUES (101, 'Tomar 01 cápsula uma vez ao dia por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO posologias VALUES (102, 'Tomar 01 cápsula uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO posologias VALUES (103, 'Tomar 01 cápsula de 12 em 12 horas 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 43);
INSERT INTO posologias VALUES (106, 'Tomar 01 cápsula uma vez ao dia por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 44);
INSERT INTO posologias VALUES (107, 'Tomar 01 cápsula uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 44);
INSERT INTO posologias VALUES (108, 'Tomar 01 cápsula uma vez ao dia por 10 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 44);
INSERT INTO posologias VALUES (109, 'Tomar 01 cápsula uma vez ao dia por 14 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 44);
INSERT INTO posologias VALUES (110, 'Aplicar uma adequada quantidade na região afetada uma vez ao dia por 7 dias.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 45);
INSERT INTO posologias VALUES (111, 'Aplicar uma adequada quantidade na região afetada uma vez ao dia por 14 dias.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 45);
INSERT INTO posologias VALUES (112, 'Tomar 01 comprimido a noite próximo à hora de dormir por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 46);
INSERT INTO posologias VALUES (113, 'Tomar 01 comprimido a noite próximo à hora de dormir por 10 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 46);
INSERT INTO posologias VALUES (114, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 46);
INSERT INTO posologias VALUES (115, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 47);
INSERT INTO posologias VALUES (116, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 47);
INSERT INTO posologias VALUES (121, 'Tomar 01 cápsula uma vez ao dia.', '30', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 49);
INSERT INTO posologias VALUES (122, 'Tomar 01 cápsula de 12 em 12 horas.', '60', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 49);
INSERT INTO posologias VALUES (123, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 50);
INSERT INTO posologias VALUES (124, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 50);
INSERT INTO posologias VALUES (125, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 50);
INSERT INTO posologias VALUES (126, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 50);
INSERT INTO posologias VALUES (127, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 51);
INSERT INTO posologias VALUES (128, 'Tomar 01 comprimido uma vez ao dia com alimentos (estômago cheio) por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 52);
INSERT INTO posologias VALUES (129, 'Tomar 01 comprimido uma vez ao dia com alimentos (estômago cheio) por 10 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 52);
INSERT INTO posologias VALUES (130, 'Tomar 01 comprimido uma vez ao dia com alimentos (estômago cheio) por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 52);
INSERT INTO posologias VALUES (135, 'Aplicar uma fina camada na região afetada uma vez ao dia por 7 dias.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 54);
INSERT INTO posologias VALUES (136, 'Aplicar uma fina camada na região afetada uma vez ao dia por 14 dias.', '1', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 54);
INSERT INTO posologias VALUES (137, 'Aplicar uma fina camada na região afetada uma vez ao dia até melhora da lesão.', '3', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 54);
INSERT INTO posologias VALUES (138, 'Tomar 01 comprimido após almoço.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 55);
INSERT INTO posologias VALUES (139, 'Tomar 01 comprimido pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 56);
INSERT INTO posologias VALUES (140, 'Tomar 01 comprimido de 6 em 6 horas se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO posologias VALUES (141, 'Tomar 01 comprimido de 6 em 6 horas se dor.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO posologias VALUES (142, 'Tomar 01 comprimido de 8 em 8 horas se dor.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO posologias VALUES (143, 'Tomar 01 comprimido de 8 em 8 horas se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO posologias VALUES (144, 'Tomar 10 mL de 8 em 8 horas se dor.', '2', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO posologias VALUES (145, 'Tomar 01 comprimido de 12 em 12 horas se dor.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 57);
INSERT INTO posologias VALUES (146, 'Tomar 01 comprimido de 6 em 6 horas se dor.', '1', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 58);
INSERT INTO posologias VALUES (147, 'Tomar 01 comprimido de 8 em 8 horas se dor.', '1', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 58);
INSERT INTO posologias VALUES (148, 'Tomar 01 comprimido de 12 em 12 horas se dor.', '1', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 58);
INSERT INTO posologias VALUES (149, 'Tomar 01 comprimido de 6 em 6 horas.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 59);
INSERT INTO posologias VALUES (150, 'Tomar 01 comprimido de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 59);
INSERT INTO posologias VALUES (151, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 59);
INSERT INTO posologias VALUES (152, 'Tomar 01 comprimido de 30 em 30 minutos até que haja melhora das dores, ou se houver náusea, vômito ou diarréia.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 59);
INSERT INTO posologias VALUES (153, 'Tomar 01 cápsula uma vez ao dia.', '30', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 60);
INSERT INTO posologias VALUES (154, 'Tomar 01 cápsula de 12 em 12 horas.', '60', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 60);
INSERT INTO posologias VALUES (155, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 61);
INSERT INTO posologias VALUES (156, 'Tomar 01 comprimido de 12 em 12 horas.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 61);
INSERT INTO posologias VALUES (157, 'Tomar 01 comprimido pela manhã por 14 dias, então tome 1/2 (meio) comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 62);
INSERT INTO posologias VALUES (158, 'Tomar 01 comprimido pela manhã por 20 dias, então tome 1/2 (meio) comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 62);
INSERT INTO posologias VALUES (159, 'Tomar 01 comprimido pela manhã por 7 dias, então tome 1/2 (meio) comprimido pela manhã mais 7 dias, então pare.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 62);
INSERT INTO posologias VALUES (160, 'Tomar 01 comprimido pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 62);
INSERT INTO posologias VALUES (161, 'Tomar 02 comprimidos pela manhã.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 62);
INSERT INTO posologias VALUES (162, 'Tomar 02 comprimidos pela manhã por 14 dias, então tome 1 comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 63);
INSERT INTO posologias VALUES (163, 'Tomar 02 comprimidos pela manhã por 20 dias, então tome 1 comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 63);
INSERT INTO posologias VALUES (164, 'Tomar 02 comprimidos pela manhã.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 63);
INSERT INTO posologias VALUES (165, 'Tomar 01 comprimido pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 63);
INSERT INTO posologias VALUES (312, 'Tomar 02 comprimidos de 12 em 12 horas.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO posologias VALUES (118, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:48.754+00', 48);
INSERT INTO posologias VALUES (119, 'Tomar 02 comprimidos pela manhã e 01 comprimido a tarde.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:48.754+00', 48);
INSERT INTO posologias VALUES (120, 'Tomar 02 comprimidos de 12 em 12 horas.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:48.754+00', 48);
INSERT INTO posologias VALUES (166, 'Tomar 02 comprimidos pela manhã por 14 dias, então tome 1 comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 64);
INSERT INTO posologias VALUES (167, 'Tomar 02 comprimidos pela manhã por 20 dias, então tome 1 comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 64);
INSERT INTO posologias VALUES (168, 'Tomar 02 comprimidos pela manhã.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 64);
INSERT INTO posologias VALUES (169, 'Tomar 01 comprimido pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 64);
INSERT INTO posologias VALUES (170, 'Aplicar 01 frasco (injeção) subcutânea única de 60 mg administrada uma vez a cada 6 meses.', '2', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 65);
INSERT INTO posologias VALUES (171, 'Tomar 01 comprimido uma vez ao dia por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 66);
INSERT INTO posologias VALUES (132, 'Tomar 01 comprimido de 8 em 8 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2023-04-14 17:13:19.935+00', 53);
INSERT INTO posologias VALUES (133, 'Tomar 01 comprimido de 8 em 8 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2023-04-14 17:13:19.935+00', 53);
INSERT INTO posologias VALUES (134, 'Tomar 01 comprimido de 8 em 8 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2023-04-14 17:13:19.935+00', 53);
INSERT INTO posologias VALUES (172, 'Tomar 01 comprimido uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 66);
INSERT INTO posologias VALUES (173, 'Tomar 01 comprimido uma vez ao dia por 14 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 66);
INSERT INTO posologias VALUES (174, 'Tomar 01 comprimido uma vez ao dia por 28 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 66);
INSERT INTO posologias VALUES (175, 'Tomar 01 comprimido uma vez ao dia, preferencialmente pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 67);
INSERT INTO posologias VALUES (176, 'Tomar 01 comprimido de 8 em 8 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 68);
INSERT INTO posologias VALUES (177, 'Tomar 01 comprimido de 8 em 8 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 68);
INSERT INTO posologias VALUES (178, 'Tomar 01 cápsula pela manhã em jejum por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 69);
INSERT INTO posologias VALUES (179, 'Tomar 01 cápsula pela manhã em jejum por 14 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 69);
INSERT INTO posologias VALUES (180, 'Tomar 01 cápsula pela manhã em jejum por 28 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 69);
INSERT INTO posologias VALUES (181, 'Tomar 01 cápsula pela manhã em jejum', '30', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 69);
INSERT INTO posologias VALUES (182, 'Tomar 01 comprimido uma vez ao dia por 20 dias, então tome 01 comprimido de 12 em 12 horas por 4 meses.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 70);
INSERT INTO posologias VALUES (183, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 70);
INSERT INTO posologias VALUES (184, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 70);
INSERT INTO posologias VALUES (185, 'Tomar 01 comprimido de 8 em 8 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 71);
INSERT INTO posologias VALUES (186, 'Tomar 01 comprimido de 8 em 8 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 71);
INSERT INTO posologias VALUES (187, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 72);
INSERT INTO posologias VALUES (188, 'Tomar 01 comprimido 30 minutos antes do café, do almoço e da janta.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 73);
INSERT INTO posologias VALUES (191, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 75);
INSERT INTO posologias VALUES (192, 'Tomar 01 comprimido de 12 em 12 horas.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 75);
INSERT INTO posologias VALUES (193, 'Aplicar 1 frasco subcutâneo uma vez ao dia.', '30', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 76);
INSERT INTO posologias VALUES (194, 'Aplicar 1 frasco subcutâneo de 12 em 12 horas.', '60', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 76);
INSERT INTO posologias VALUES (195, 'Aplicar 1 frasco subcutâneo uma vez ao dia até a 16ª semana de gestação, então aplique 01 frasco subcutâneo de 12 em 12 horas até a 6ª de puerpério.', '30 a 60', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 76);
INSERT INTO posologias VALUES (196, 'Tomar 01 comprimido ao dia, preferencialmente pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 77);
INSERT INTO posologias VALUES (197, 'Tomar 01 comprimido pela manhã em jejum.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 78);
INSERT INTO posologias VALUES (198, 'Tomar 01 comprimido pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 79);
INSERT INTO posologias VALUES (199, 'Aplicar 01 ampola (seringa) no subcutâneo uma vez por semana.', '12', 'ampolas (seringas)', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 80);
INSERT INTO posologias VALUES (200, 'Aplicar 01 ampola (seringa) no subcutâneo uma vez por mês.', '3', 'Ser', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 81);
INSERT INTO posologias VALUES (201, 'Tomar 01 comprimido de 12 em 12 horas se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 82);
INSERT INTO posologias VALUES (202, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 82);
INSERT INTO posologias VALUES (203, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 82);
INSERT INTO posologias VALUES (204, 'Tomar 01 comprimido uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 83);
INSERT INTO posologias VALUES (205, 'Tomar 01 comprimido uma vez ao dia por 14 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 83);
INSERT INTO posologias VALUES (206, 'Tomar 01 comprimido uma vez ao dia por 28 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 83);
INSERT INTO posologias VALUES (207, 'Tomar 01 comprimido uma vez ao dia por 56 dias.', '4', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 83);
INSERT INTO posologias VALUES (208, 'Tomar 01 comprimido uma vez ao dia.', '30', 'Comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 84);
INSERT INTO posologias VALUES (209, 'Tomar 01 comprimido uma vez ao dia por 30 dias.', '30', 'Comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 84);
INSERT INTO posologias VALUES (210, 'Tomar 01 comprimido uma vez ao dia por 60 dias.', '60', 'Comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 84);
INSERT INTO posologias VALUES (211, 'Tomar 01 comprimido uma vez ao dia por 90 dias.', '90', 'Comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 84);
INSERT INTO posologias VALUES (212, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 85);
INSERT INTO posologias VALUES (213, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 85);
INSERT INTO posologias VALUES (214, 'Tomar 01 comprimido durante o almoço ou janta.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 86);
INSERT INTO posologias VALUES (215, 'Tomar 01 cápsula dose única.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 87);
INSERT INTO posologias VALUES (216, 'Tomar 01 cápsula uma vez por semana por 2 semanas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 87);
INSERT INTO posologias VALUES (217, 'Tomar 01 cápsula uma vez por semana por 4 semanas.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 87);
INSERT INTO posologias VALUES (218, 'Tomar 01 cápsula uma vez por semana por 6 semanas.', '3', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 87);
INSERT INTO posologias VALUES (219, 'Tomar 01 cápsula ao dia, preferencialmente pela manhã.', '30', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 88);
INSERT INTO posologias VALUES (220, 'Tomar 02 cápsulas ao dia, preferencialmente pela manhã.', '60', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 88);
INSERT INTO posologias VALUES (221, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 89);
INSERT INTO posologias VALUES (222, 'Tomar 02 comprimidos a noite próximo à hora de dormir. ', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 89);
INSERT INTO posologias VALUES (223, 'Tomar 01 comprimido pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 90);
INSERT INTO posologias VALUES (224, 'Tomar 01 comprimido uma vez ao dia, preferencialmente a noite.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO posologias VALUES (225, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO posologias VALUES (226, 'Tomar 01 comprimido de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO posologias VALUES (227, 'Tomar 01 comprimido pela manhã e 02 comprimidos a noite.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO posologias VALUES (228, 'Tomar 01 comprimido pela manha, 01 comprimido a tarde e 02 comprimidos a noite.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO posologias VALUES (229, 'Tomar 02 comprimidos de 12 em 12 horas.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO posologias VALUES (230, 'Tomar 02 comprimidos de 8 em 8 horas.', '180', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO posologias VALUES (307, 'Aplicar 03 frascos-ampolas [300 mg] no subcutâneo uma vez por mês.', '9', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 117);
INSERT INTO posologias VALUES (308, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO posologias VALUES (190, 'Tomar 01 cápsula ao dia, preferencialmente pela manhã.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-28 18:45:40.494+00', 74);
INSERT INTO posologias VALUES (231, 'Primeira semana: tome 01 comprimido a noite. 
Segunda semana: tome 01 comprimido de manhã e 01 comprimidos a noite. 
Terceira a sexta semana: tome 01 comprimido de manhã, 01 comprimido a tarde e 01 comprimidos a noite. 
Sétima a décima semana: tome 01 comprimido de manhã, 01 comprimido a tarde e 02 comprimidos a noite. 
Décima primeira a décima quarta semana: tome 01 comprimido de manhã, 02 comprimidos a tarde e 2 comprimidos a noite. 
Décima quinta semana em diante: tome 02 comprimido de 8 em 8 horas.', '180', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 91);
INSERT INTO posologias VALUES (232, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 92);
INSERT INTO posologias VALUES (233, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 92);
INSERT INTO posologias VALUES (234, 'Tomar 01 comprimido uma vez ao dia por 5 dias', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 93);
INSERT INTO posologias VALUES (235, 'Tomar 01 comprimido uma vez ao dia por 10 dias', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 93);
INSERT INTO posologias VALUES (236, 'Tomar 01 comprimido uma vez ao dia por 30 dias', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 93);
INSERT INTO posologias VALUES (237, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 93);
INSERT INTO posologias VALUES (238, 'Tomar 01 comprimido de 12 em 12 horas por 15 dias', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 93);
INSERT INTO posologias VALUES (239, 'Tomar 01 comprimido de 12 em 12 horas por 30 dias', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 93);
INSERT INTO posologias VALUES (240, 'Colocar o conteúdo de um envelope em um copo de água (200 mL). 
 Aguardar 3 minutos, então mexer com um colher. 
Tomar a mistura uma vez ao dia por 6 meses.', '180', 'envelopes', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 94);
INSERT INTO posologias VALUES (241, 'Tomar 01 cápsula de 8 em 8 horas.', '60', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 94);
INSERT INTO posologias VALUES (242, 'Aplicar 01 ampola (seringa) no subcutâneo uma vez por mês.', '3', 'ampolas (seringas)', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO posologias VALUES (243, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero e quatro semanas (em relação a primeira aplicação) após a cada 8 semanas.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO posologias VALUES (244, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero e quatro semanas (em relação a primeira aplicação) após a cada 8 semanas.', '9', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO posologias VALUES (245, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero e quatro semanas (em relação a primeira aplicação) após a cada 8 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO posologias VALUES (246, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 8 semanas.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO posologias VALUES (247, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 8 semanas.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO posologias VALUES (248, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 8 semanas.', '9', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 95);
INSERT INTO posologias VALUES (249, 'Aplicar 01 ampola (seringa) no subcutâneo.Inicia-se com aplicações na semana zero, quatro semanas (em relação a primeira aplicação) após a cada 8 semanas.', '3', 'Seringas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 96);
INSERT INTO posologias VALUES (250, 'Aplicar uma fina camada na região afetada uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 97);
INSERT INTO posologias VALUES (251, 'Aplicar uma fina camada na região afetada uma vez ao dia por 14 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 97);
INSERT INTO posologias VALUES (252, 'Aplicar uma fina camada na região afetada uma vez ao dia até melhora da lesão.', '3', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 97);
INSERT INTO posologias VALUES (257, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 100);
INSERT INTO posologias VALUES (258, 'Tomar 01 comprimido em dias alternados.', '15', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 100);
INSERT INTO posologias VALUES (259, 'Tomar 01 comprimido uma vez. 
Tomar em jejum, 60 minutos antes da ingestão alimentos. 
Tomar com um copo cheio de água filtrada (180 a 240 mL). 
Você deverá estar em posição ereta: sentado, em pé ou andando. 
Você não deve deitar-se nos 60 minutos seguintes após tomar o medicamento.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 101);
INSERT INTO posologias VALUES (260, 'Tomar 01 cápsula de 12 em 12 horas somente se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 102);
INSERT INTO posologias VALUES (261, 'Aplicar 05 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida ou internado em hospital. 
Fazer uma aplicação por dia por 5 dias consecutivos.Infundir a pré-medicação: - Metilprednisolona 125 mg diluído em 100 mL correndo em 30 minutos- Prometazina um comprimido de 25 mg ou uma ampola de 50 mg (2 ml) intra-muscular. 
Infundir a Imunoglobulina em bomba de infusão a 0,5 mL/kg/hora na primeira hora e após a 1,0 mL/kg/hora. 
Paciente deve ser monitorizado durante a aplicação.', '25', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 103);
INSERT INTO posologias VALUES (262, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e seis semanas (em relação a primeira aplicação) após a cada 8 semanas.', '8', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (263, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e seis semanas (em relação a primeira aplicação) após a cada 8 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (264, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e seis semanas (em relação a primeira aplicação) após a cada 8 semanas.', '16', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (309, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO posologias VALUES (310, 'Tomar 01 comprimido de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO posologias VALUES (253, 'Tomar 01 comprimido de 12 em 12 horas por 4 meses.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:11.081+00', 98);
INSERT INTO posologias VALUES (254, 'Tomar 01 comprimido de 12 em 12 horas por 6 meses.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:11.081+00', 98);
INSERT INTO posologias VALUES (265, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e seis semanas (em relação a primeira aplicação) após a cada 6 semanas.', '8', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (266, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e seis semanas (em relação a primeira aplicação) após a cada 6 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (326, 'Tomar 01 cápsula de 8 em 8 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 122);
INSERT INTO posologias VALUES (327, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 123);
INSERT INTO posologias VALUES (328, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 123);
INSERT INTO posologias VALUES (267, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e seis semanas (em relação a primeira aplicação) após a cada 6 semanas.', '16', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (268, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 8 semanas.', '04', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (269, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 8 semanas.', '06', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (270, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 8 semanas.', '08', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (271, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 6 semanas.', '04', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (272, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 6 semanas.', '06', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (273, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 6 semanas.', '08', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (274, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '06', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (275, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '09', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (276, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 104);
INSERT INTO posologias VALUES (277, 'Tomar 02 cápsulas de 12 em 12 horas por um dia.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 105);
INSERT INTO posologias VALUES (278, 'Tomar 01 cápsula por dia por 15 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 105);
INSERT INTO posologias VALUES (279, 'Tomar 02 cápsula por dia por 90 dias.', '90', 'cápsulas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 105);
INSERT INTO posologias VALUES (280, 'Aplicar 02 ampolas [160mg - duas injeções de 80 mg] no subcutâneo na semana 0, seguida por uma injeção de 80 mg nas semanas 2, 4, 6, 8, 10 e 12 e então, 80 mg a cada 4 semanas.', '8', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 106);
INSERT INTO posologias VALUES (281, 'Aplicar 02 ampolas [160mg - duas injeções de 80 mg] no subcutâneo na semana 0, seguida por uma injeção de 80 mg a cada 4 semanas.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 106);
INSERT INTO posologias VALUES (282, 'Aplicar 01 ampolas [80mg] no subcutâneo a cada 4 semanas.', '3', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 106);
INSERT INTO posologias VALUES (292, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 109);
INSERT INTO posologias VALUES (293, 'Tomar 01 comprimido em dias alternados (dia sim, dia não).', '15', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 109);
INSERT INTO posologias VALUES (294, 'Tomar 01 comprimido uma vez ao dia por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO posologias VALUES (295, 'Tomar 01 comprimido uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO posologias VALUES (296, 'Tomar 01 comprimido uma vez ao dia por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO posologias VALUES (297, 'Tomar 01 comprimido uma vez ao dia por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 110);
INSERT INTO posologias VALUES (298, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 111);
INSERT INTO posologias VALUES (299, 'Tomar 01 comprimido pela manhã em jejum, de preferência 30 minutos à 1 hora antes do café da manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 112);
INSERT INTO posologias VALUES (300, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 113);
INSERT INTO posologias VALUES (301, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 114);
INSERT INTO posologias VALUES (302, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 114);
INSERT INTO posologias VALUES (303, 'Aplicar 01 frasco intramuscular profunda (glúteo) a cada 90 dias.', '1', 'ampolas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 115);
INSERT INTO posologias VALUES (304, 'Tomar 01 comprimido uma vez ao dia por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 116);
INSERT INTO posologias VALUES (305, 'Tomar 01 comprimido uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 116);
INSERT INTO posologias VALUES (306, 'Aplicar 01 frasco-ampola [100 mg] no subcutâneo uma vez por mês.', '3', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 117);
INSERT INTO posologias VALUES (311, 'Tomar 02 comprimidos pela manhã e 01 comprimido a noite.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO posologias VALUES (313, 'Tomar 02 comprimidos de 8 em 8 horas.', '180', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO posologias VALUES (314, 'Aplicar 01 supositório via retal uma vez ao dia.', '30', 'sup', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO posologias VALUES (315, 'Aplicar 01 supositório via retal de 12 em 12 horas.', '60', 'sup', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 118);
INSERT INTO posologias VALUES (316, 'Tomar 01 comprimido uma vez ao dia no jantar.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 119);
INSERT INTO posologias VALUES (317, 'Tomar 01 comprimido durante o café da manhã e no jantar.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 119);
INSERT INTO posologias VALUES (318, 'Tomar 01 comprimido durante o café da manhã, no almoço e no jantar.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 119);
INSERT INTO posologias VALUES (319, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 120);
INSERT INTO posologias VALUES (320, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 120);
INSERT INTO posologias VALUES (321, 'Aplicar 1 frasco endovenosamente em dose única. 
Fazer a infusão em pelo menos 30 minutos (ideal em uma hora).', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 121);
INSERT INTO posologias VALUES (322, 'Aplicar 2 frascos endovenosamente em dose única. 
Fazer a infusão em pelo menos 30 minutos (ideal em uma hora).', '2', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 121);
INSERT INTO posologias VALUES (323, 'Aplicar 1 frasco endovenosamente uma vez ao dia por 3 dias consecutivos. 
Fazer cada infusão em pelo menos 30 minutos (ideal em uma hora).', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 121);
INSERT INTO posologias VALUES (324, 'Aplicar 2 frascos endovenosamente uma vez ao dia por 3 dias consecutivos. 
Fazer cada infusão em pelo menos 30 minutos (ideal em uma hora).', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 121);
INSERT INTO posologias VALUES (325, 'Tomar 01 cápsula de 8 em 8 horas se náusea ou vômitos.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 122);
INSERT INTO posologias VALUES (329, 'Aplicar 0,3 mL no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (330, 'Aplicar 0,4 mL no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (331, 'Aplicar 0,5 mL no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (332, 'Aplicar 0,6 mL no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (333, 'Aplicar 0,7 mL no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (334, 'Aplicar 0,8 mL no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (335, 'Aplicar 0,9 mL no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (336, 'Aplicar 1,0 mL (meio frasco) no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (337, 'Aplicar 0,4 mL no subcutâneo (não é necessário fazer intramuscular conforme indicado no rótulo) uma vez por semana por 4 semanas. 
Então, aplicar 0,6 mL no subcutâneo uma vez por semana daí por diante.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 124);
INSERT INTO posologias VALUES (350, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (351, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (352, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (353, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (354, 'Tomar 2 g (4 comprimidos de 500 mg) em dose única.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (355, 'Tomar 2 g (4 comprimidos de 500 mg) em dose única, no primeiro e terceiro dias de tratamento.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (356, 'Aplicar uma medida (um aplicador completamente cheio) de preferência à noite, ao deitar-se, durante 7 dia.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (357, 'Aplicar uma medida (um aplicador completamente cheio) de preferência à noite, ao deitar-se, durante 10 dia.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (339, 'Tomar 04 comprimidos uma vez por semana. Todos os comprimidos devem ser tomados no mesmo dia. 
Não tomar a medicação nos outros dias.', '16', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (341, 'Tomar 06 comprimidos uma vez por semana. Todos os comprimidos devem ser tomados no mesmo dia. 
Não tomar a medicação nos outros dias.', '24', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (342, 'Tomar 07 comprimidos uma vez por semana. Todos os comprimidos devem ser tomados no mesmo dia. 
Não tomar a medicação nos outros dias.', '28', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (344, 'Tomar 09 comprimidos uma vez por semana. Todos os comprimidos devem ser tomados no mesmo dia. 
Não tomar a medicação nos outros dias.', '36', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (345, 'Tomar 10 comprimidos uma vez por semana. Todos os comprimidos devem ser tomados no mesmo dia. 
Não tomar a medicação nos outros dias.', '40', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (346, 'Tomar 04 comprimidos uma vez por semana. 
 
Escolha um dia da semana (por exemplo, na sexta-feira). 
Tomar 02 comprimidos na sexta-feira pela manhã e tomar outros 02 comprimidos na sexta-feira a tarde. 
Não tomar o Metotrexate nos outros dias.', '16', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (347, 'Tomar 06 comprimidos uma vez por semana. 
 
Escolha um dia da semana (por exemplo, na sexta-feira). 
Tomar 03 comprimidos na sexta-feira pela manhã e tomar outros 03 comprimidos na sexta-feira a tarde. 
Não tomar o Metotrexate nos outros dias.', '24', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (348, 'Tomar 08 comprimidos uma vez por semana. 
 
Escolha um dia da semana (por exemplo, na sexta-feira). 
Tomar 04 comprimidos na sexta-feira pela manhã e tomar outros 04 comprimidos na sexta-feira a tarde. 
Não tomar o Metotrexate nos outros dias.', '32', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (358, 'Aplicar uma medida (um aplicador completamente cheio) de preferência à noite, ao deitar-se, durante 14 dia.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 126);
INSERT INTO posologias VALUES (359, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO posologias VALUES (360, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO posologias VALUES (361, 'Tomar 01 comprimido de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO posologias VALUES (362, 'Tomar 02 comprimidos pela manhã e 01 comprimido a noite.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO posologias VALUES (363, 'Tomar 02 comprimidos de 12 em 12 horas.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO posologias VALUES (364, 'Tomar 02 comprimidos de 8 em 8 horas.', '180', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO posologias VALUES (365, 'Tomar 03 comprimidos de 12 em 12 horas.', '180', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 127);
INSERT INTO posologias VALUES (366, 'Aplique 2,5 mL de gel de 6 em 6 horas. O gel não deve ser deglutido imediatamente, mas mantido na boca o maior tempo possível. O tratamento deve ser mantido por pelo menos uma semana após o desaparecimento dos sintomas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 128);
INSERT INTO posologias VALUES (367, 'Aplicar uma fina camada na região afetada de 12 em 12 horas por 4 semanas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 128);
INSERT INTO posologias VALUES (368, 'Aplicar 1 mL no couro cabeludo, sobre a área calva e áreas circunvizinhas, duas vezes ao dia, iniciando a aplicação no centro da área afetada. 
Aplicar apenas quando o cabelo e o couro cabeludo estiverem perfeitamente secos. 
Espere pelo menos quatro horas após a aplicação da medicação para lavar os cabelos novamente', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 129);
INSERT INTO posologias VALUES (369, 'Aplicar uma fina camada na região afetada de 12 em 12 horas por 4 semanas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 129);
INSERT INTO posologias VALUES (370, 'Tomar 01 comprimido uma vez ao dia por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 130);
INSERT INTO posologias VALUES (371, 'Tomar 01 comprimido uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 130);
INSERT INTO posologias VALUES (372, 'Tomar 01 comprimido uma vez ao dia por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 130);
INSERT INTO posologias VALUES (373, 'Tomar 01 comprimido uma vez ao dia por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 130);
INSERT INTO posologias VALUES (374, 'Aplicar uma fina camada na região afetada de 8 em 8 horas (três vezes ao dia) por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 131);
INSERT INTO posologias VALUES (375, 'Tomar 01 comprimido de 12 em 12 horas somente se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO posologias VALUES (376, 'Tomar 01 comprimido de 12 em 12 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO posologias VALUES (377, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO posologias VALUES (378, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO posologias VALUES (379, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO posologias VALUES (380, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 132);
INSERT INTO posologias VALUES (381, 'Tomar 01 comprimido de 12 em 12 horas somente se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 133);
INSERT INTO posologias VALUES (382, 'Tomar 01 comprimido de 12 em 12 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 133);
INSERT INTO posologias VALUES (383, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 133);
INSERT INTO posologias VALUES (384, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 133);
INSERT INTO posologias VALUES (385, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 133);
INSERT INTO posologias VALUES (386, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 133);
INSERT INTO posologias VALUES (387, 'Aplicar 01 frasco a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 134);
INSERT INTO posologias VALUES (388, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 135);
INSERT INTO posologias VALUES (389, 'Tomar 01 comprimido de 12 em 12 horas somente se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO posologias VALUES (390, 'Tomar 01 comprimido de 12 em 12 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO posologias VALUES (391, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO posologias VALUES (392, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO posologias VALUES (393, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO posologias VALUES (394, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO posologias VALUES (395, 'Aplique uma fina camada sobre a área afetada de 12 em 12 horas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 136);
INSERT INTO posologias VALUES (396, 'Fazer bochechos com 5mL quatro vezes ao dia. 
A solução deve ser bochechada por 1 minuto e depois engolida.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 137);
INSERT INTO posologias VALUES (397, 'Remover a tampa do tubo, perfurar completamente o lacre do tubo utilizando a partepontiaguda da tampa. 
Adaptar o aplicador ao bico do tubo. 
Puxar o êmbolo do aplicador até o final do curso e em seguida apertar delicadamente a base dotubo de maneira a forçar a entrada do creme no aplicador, preenchendo-o totalmente. 
Desencaixar o aplicador e tampar o tubo imediatamente. 
Deitar-se de costas e introduzir o aplicador na vagina suavemente, sem causar desconforto. 
Empurrar o êmbolo com o dedo indicador até o final de seu curso, depositando assim todoo creme na vagina. 
O aplicador deve ser imediatamente descartado.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 137);
INSERT INTO posologias VALUES (398, 'Tomar 01 comprimido de 12 em 12 horas por 3 dias.', '1', 'Caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 138);
INSERT INTO posologias VALUES (399, 'Tomar 01 cápsula de 6 em 6 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 139);
INSERT INTO posologias VALUES (400, 'Tomar 01 cápsula de 6 em 6 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 139);
INSERT INTO posologias VALUES (401, 'Tomar 01 cápsula de 6 em 6 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 139);
INSERT INTO posologias VALUES (402, 'Tomar 01 cápsula uma vez ao dia na hora de se deitar', '30', 'cáp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 139);
INSERT INTO posologias VALUES (403, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 140);
INSERT INTO posologias VALUES (404, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 140);
INSERT INTO posologias VALUES (405, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 140);
INSERT INTO posologias VALUES (406, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 140);
INSERT INTO posologias VALUES (407, 'Tomar 01 cápsula a noite próximo à hora de dormir.', '30', 'cáp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 141);
INSERT INTO posologias VALUES (408, 'Tomar 02 cápsulas a noite próximo à hora de dormir. ', '60', 'cáp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 141);
INSERT INTO posologias VALUES (409, 'Aplicar 01 frasco a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, no subcutâneo, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 2 semanas.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO posologias VALUES (410, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, no subcutâneo, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 2 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO posologias VALUES (411, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, no subcutâneo, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 2 semanas.', '9', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO posologias VALUES (412, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, no subcutâneo, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 2 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO posologias VALUES (413, 'Aplicar 01 frasco a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, no subcutâneo, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO posologias VALUES (414, 'Aplicar 02 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, no subcutâneo, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO posologias VALUES (415, 'Aplicar 03 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, no subcutâneo, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '9', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO posologias VALUES (416, 'Aplicar 04 frascos a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, no subcutâneo, somente em centro de infusão habilitado em terapia assistida. 
As aplicações devem ser realizadas a cada 4 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 142);
INSERT INTO posologias VALUES (417, 'Tomar 01 comprimido pela manhã em jejum.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO posologias VALUES (418, 'Tomar 02 comprimidos pela manhã em jejum.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO posologias VALUES (419, 'Tomar 01 comprimido pela manhã e a tarde.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO posologias VALUES (420, 'Tomar 01 comprimido pela manhã em jejum por 30 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO posologias VALUES (421, 'Tomar 01 comprimido pela manhã em jejum por 60 dias.', '2', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 143);
INSERT INTO posologias VALUES (422, 'Tomar 01 comprimido de 12 em 12 horas se náusea ou vômitos.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 144);
INSERT INTO posologias VALUES (423, 'Tomar 01 comprimido de 12 em 12 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 144);
INSERT INTO posologias VALUES (424, 'Tomar 01 comprimido de 12 em 12 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 145);
INSERT INTO posologias VALUES (425, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 146);
INSERT INTO posologias VALUES (426, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 146);
INSERT INTO posologias VALUES (427, 'Tomar 01 comprimido de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 146);
INSERT INTO posologias VALUES (428, 'Aplicar 01 frasco, por via intravenosa a cada 3 meses, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Após reconstituição, deve-se diluir o fármaco em 500 ml de soro fisiológico. 
A duração mínima da infusão é de 2 horas.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 147);
INSERT INTO posologias VALUES (429, 'Tomar 01 comprimido pela manhã em jejum.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 148);
INSERT INTO posologias VALUES (430, 'Tomar 02 comprimidos pela manhã em jejum.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 148);
INSERT INTO posologias VALUES (431, 'Tomar 01 comprimido de 12 em 12 horas. 
Tomar longe das refeições', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 148);
INSERT INTO posologias VALUES (432, 'Tomar 01 comprimido pela manhã em jejum.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 149);
INSERT INTO posologias VALUES (433, 'Tomar 02 comprimidos pela manhã em jejum.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 149);
INSERT INTO posologias VALUES (434, 'Tomar 01 comprimido de 12 em 12 horas. 
Tomar longe das refeições', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 149);
INSERT INTO posologias VALUES (435, 'Tomar 01 comprimido de 6 em 6 horas somente se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 150);
INSERT INTO posologias VALUES (436, 'Tomar 01 comprimido de 8 em 8 horas somente se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 150);
INSERT INTO posologias VALUES (437, 'Tomar 01 comprimido ao dia, preferencialmente pela manhã.', '30', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 151);
INSERT INTO posologias VALUES (438, 'Tomar 02 comprimidos ao dia, preferencialmente pela manhã.', '60', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 151);
INSERT INTO posologias VALUES (439, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 152);
INSERT INTO posologias VALUES (440, 'Tomar 01 comprimido de 8 em 8 horass.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 152);
INSERT INTO posologias VALUES (441, 'Tomar 01 comprimido de 12 em 12 horas somente se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO posologias VALUES (442, 'Tomar 01 comprimido de 12 em 12 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO posologias VALUES (443, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO posologias VALUES (444, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO posologias VALUES (445, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO posologias VALUES (446, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO posologias VALUES (447, 'Aplique uma fina camada sobre a área afetada de 12 em 12 horas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 153);
INSERT INTO posologias VALUES (448, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 154);
INSERT INTO posologias VALUES (449, 'Tomar 02 comprimidos a noite próximo à hora de dormir. ', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 154);
INSERT INTO posologias VALUES (450, 'Tomar 01 comprimido pela manhã por 14 dias, então 
tome 1/2 (meio) comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (451, 'Tomar 01 comprimido pela manhã por 20 dias, então 
tome 1/2 (meio) comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (452, 'Tomar 01 comprimido pela manhã por 7 dias, então 
tome 1/2 (meio) comprimido pela manhã mais 7 dias, então pare.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (453, 'Tome 01 comprimido pela manhã por 5 dias, então 
tome 1/2 (meio) comprimido pela manhã por 4 dias, então pare.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (454, 'Tome 03 comprimidos pela manhã por 7 dias, então 
tome  02 comprimidos pela manhã por 7 dias, então 
tome 01 comprimido pela manhã por 7 dias, então pare.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (455, 'Tome 02 comprimidos pela manhã por 7 dias, então 
tome 01 comprimido pela manhã por 7 dias, então 
tome 1/2 (meio) comprimido pela manhã por 7 dias, então pare.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (456, 'Tomar 01 comprimido pela manhã em dias alternados (dia sim, dia não).', '15', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (457, 'Tomar 01 comprimido pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (458, 'Tomar 02 comprimidos pela manhã.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (459, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (460, 'Tomar 03 comprimidos pela manhã.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (461, 'Tomar 02 comprimidos pela manhã e 01 comprimido a tarde.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 155);
INSERT INTO posologias VALUES (462, 'Tomar 01 comprimido pela manhã por 14 dias, então 
tome 1/2 (meio) comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (463, 'Tomar 01 comprimido pela manhã por 20 dias, então 
tome 1/2 (meio) comprimido pela manhã até o retorno.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (464, 'Tomar 01 comprimido pela manhã por 7 dias, então 
tome 1/2 (meio) comprimido pela manhã mais 7 dias, então pare.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (465, 'Tome 01 comprimido pela manhã por 5 dias, então 
tome 1/2 (meio) comprimido pela manhã por 4 dias, então pare.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (466, 'Tome 03 comprimidos pela manhã por 7 dias, então 
tome  02 comprimidos pela manhã por 7 dias, então 
tome 01 comprimido pela manhã por 7 dias, então pare.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (467, 'Tome 02 comprimidos pela manhã por 7 dias, então 
tome 01 comprimido pela manhã por 7 dias, então 
tome 1/2 (meio) comprimido pela manhã por 7 dias, então pare.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (468, 'Tomar 01 comprimido pela manhã em dias alternados (dia sim, dia não).', '15', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (469, 'Tomar 01 comprimido pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (470, 'Tomar 02 comprimidos pela manhã.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (471, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (472, 'Tomar 03 comprimidos pela manhã.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (473, 'Tomar 02 comprimidos pela manhã e 01 comprimido a tarde.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 156);
INSERT INTO posologias VALUES (474, 'Tomar 01 cápsula uma vez ao dia, preferencialmente a noite.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO posologias VALUES (475, 'Iniciar após acabar as amostras de 50mg. 
Tomar 01 cápsula de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO posologias VALUES (476, 'Tomar 01 cápsula de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO posologias VALUES (477, 'Tomar 01 cápsula de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO posologias VALUES (478, 'Tomar 01 cápsula pela manhã e 02 cápsulas a noite.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO posologias VALUES (479, 'Tomar 01 cápsula pela manha, 01 cápsula a tarde e 02 cápsulas a noite.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO posologias VALUES (480, 'Tomar 02 cápsulas de 12 em 12 horas.', '120', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 157);
INSERT INTO posologias VALUES (481, 'Tomar 01 comprimido de 8 em 8 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 158);
INSERT INTO posologias VALUES (482, 'Tomar 01 comprimido de 8 em 8 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 158);
INSERT INTO posologias VALUES (483, 'Tomar 01 comprimido de 12 em 12 horas por 3 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 158);
INSERT INTO posologias VALUES (484, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 158);
INSERT INTO posologias VALUES (485, 'Aplique uma fina camada sobre a área afetada de 12 em 12 horas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 158);
INSERT INTO posologias VALUES (486, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 159);
INSERT INTO posologias VALUES (487, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 159);
INSERT INTO posologias VALUES (488, 'Tomar 01 comprimido de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 159);
INSERT INTO posologias VALUES (489, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO posologias VALUES (490, 'Tomar 02 comprimidos a noite próximo à hora de dormir. ', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 160);
INSERT INTO posologias VALUES (491, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 161);
INSERT INTO posologias VALUES (492, 'Tomar 02 comprimidos a noite próximo à hora de dormir. ', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 161);
INSERT INTO posologias VALUES (493, 'Na primeira vez que tomar a medicação, tomar 02 cápsulas. 
Então, tomar 01 cápsula de 12 em 12 horas até interromper a diarréia.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 162);
INSERT INTO posologias VALUES (494, 'Tome 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 163);
INSERT INTO posologias VALUES (495, 'Tomar 01 comprimido uma vez por semana. 
Tomar em jejum. Aguardar 60 minutos antes da se alimentar. 
Tomar com um copo cheio de água filtrada (180 a 240 mL). 
Você deverá ficar de sentada, de pé ou andando após tomar a medicação. 
NÃO deitar nos 60 minutos seguintes após tomar o medicamento. 
Previsão de tratamento é de um ano.', '4', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 164);
INSERT INTO posologias VALUES (496, 'Tomar 01 comprimido uma vez por mês. 
Tomar em jejum. Aguardar 60 minutos antes da se alimentar. 
Tomar com um copo cheio de água filtrada (180 a 240 mL). 
Você deverá ficar de sentada, de pé ou andando após tomar a medicação. 
NÃO deitar nos 60 minutos seguintes após tomar o medicamento. 
Previsão de tratamento é de um ano.', '1', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 164);
INSERT INTO posologias VALUES (497, 'Prescrição para infusão de Rituximabe. Fazer em hospital ou centro de infusão habilitado. 
Se realizado em hospital, aconselha-se o internamento para devida preparação, administração e observação da paciente durante a aplicação. Não é essencial o internamento para o especialista, mas caso necessário, sua presença pode requisitada. 
 
Medicamentos pré infusão 
Todas devem ser administradas pelo menos 30 minutos antes da aplicação de Rituximabe. 

 
1) Metilprednisolona 100mg 
Diluir em 100 mL de soro fisiológico 0,9% e infundir endovenoso lentamente. 
2) Prometazina 25 mg/mL 
Aplicar 1 ampola intra-muscular.3) Bromoprida 5 mg/mL 
Diluir em 100 mL de soro fisiológico 0,9% e infundir endovenoso lentamente dose única. 
Caso tenha disponível Ondasentrona, esta é preferível.4) Paracetamol 750mg 
Toma 01 comprimido oral dose única. 
Medicamento imunobiológico 
 
1) Rituximabe (500mg Inj Fr Amp) 
A primeira aplicação (dose de 1000mg) é realizada assim que possível após obtenher a medicação (semana zero). A segunda aplicação (dose de 1000mg) é realizada 15 dias após a primeira aplicação seguindo o mesmo protocolo com Metilprednisona, Prometazina, Bromoprida e Paracetamol. 
Reconstituição: 
Retirar 1000mg de Rituximabe e diluir em 500mL de soro fisiológico a 0,9%. 
Taxa de infusão 
Infusão em bomba de infusão 
Primeiro infusão: Comece 50 mg/h; aumento de 50 mg/h a cada 30min. Não exceder 400 mg/h. 
Infusões subsequentes: Iniciar 100 mg/h, aumento de 100 mg/h a cada 30min. Não exceder 400 mg/h. 
Aplicação: 
Aplicar a diluição endovenosamente por bomba de infusão seguindo a velocidade acima orientada. 
 
Nova aplicação está prevista em 24 semanas após reavaliação médica.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 165);
INSERT INTO posologias VALUES (524, 'Aplicar 05 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '15', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (525, 'Aplicar 06 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '18', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (526, 'Aplicar 07 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '21', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (498, 'Prescrição para infusão de Rituximabe. Fazer em hospital ou centro de infusão habilitado. 
Se realizado em hospital, aconselha-se o internamento para devida preparação, administração e observação da paciente durante a aplicação. Não é essencial o internamento para o especialista, mas caso necessário, sua presença pode requisitada. 
 
Medicamentos pré infusão 
Todas devem ser administradas pelo menos 30 minutos antes da aplicação de Rituximabe. 

 
1) Metilprednisolona 100mg 
Diluir em 100 mL de soro fisiológico 0,9% e infundir endovenoso lentamente. 
2) Prometazina 25 mg/mL 
Aplicar 1 ampola intra-muscular.3) Bromoprida 5 mg/mL 
Diluir em 100 mL de soro fisiológico 0,9% e infundir endovenoso lentamente dose única. 
Caso tenha disponível Ondasentrona, esta é preferível.4) Paracetamol 750mg 
Toma 01 comprimido oral dose única. 
Medicamento imunobiológico 
 
1) Rituximabe (500mg Inj Fr Amp) 
A aplicação (dose de 1000mg) é realizada assim que possível após obtenher a medicação (única aplicação). Reconstituição: 
Retirar 1000mg de Rituximabe e diluir em 500mL de soro fisiológico a 0,9%. 
Taxa de infusão 
Infusão em bomba de infusão 
Primeiro infusão: Comece 50 mg/h; aumento de 50 mg/h a cada 30min. Não exceder 400 mg/h. 
Infusões subsequentes: Iniciar 100 mg/h, aumento de 100 mg/h a cada 30min. Não exceder 400 mg/h. 
Aplicação: 
Aplicar a diluição endovenosamente por bomba de infusão seguindo a velocidade acima orientada. 
  
Nova aplicação está prevista em 24 semanas após reavaliação médica.', '2', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 165);
INSERT INTO posologias VALUES (499, 'Prescrição para infusão de Rituximabe. Fazer em hospital ou centro de infusão habilitado. 
Se realizado em hospital, aconselha-se o internamento para devida preparação, administração e observação da paciente durante a aplicação. Não é essencial o internamento para o especialista, mas caso necessário, sua presença pode requisitada. 
 
Medicamentos pré infusão 
Todas devem ser administradas pelo menos 30 minutos antes da aplicação de Rituximabe. 

 
1) Metilprednisolona 100mg 
Diluir em 100 mL de soro fisiológico 0,9% e infundir endovenoso lentamente. 
2) Prometazina 25 mg/mL 
Aplicar 1 ampola intra-muscular.3) Bromoprida 5 mg/mL 
Diluir em 100 mL de soro fisiológico 0,9% e infundir endovenoso lentamente dose única. 
Caso tenha disponível Ondasentrona, esta é preferível.4) Paracetamol 750mg 
Toma 01 comprimido oral dose única. 
Medicamento imunobiológico 
 
1) Rituximabe (500mg Inj Fr Amp) 
A aplicação (dose de 500mg) é realizada assim que possível após obtenher a medicação (única aplicação). Reconstituição: 
Retirar 1000mg de Rituximabe e diluir em 500mL de soro fisiológico a 0,9%. 
Taxa de infusão 
Infusão em bomba de infusão 
Primeiro infusão: Comece 50 mg/h; aumento de 50 mg/h a cada 30min. Não exceder 400 mg/h. 
Infusões subsequentes: Iniciar 100 mg/h, aumento de 100 mg/h a cada 30min. Não exceder 400 mg/h. 
Aplicação: 
Aplicar a diluição endovenosamente por bomba de infusão seguindo a velocidade acima orientada. 
 
Nova aplicação está prevista em 24 semanas após reavaliação médica.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 165);
INSERT INTO posologias VALUES (585, 'Tomar 02 comprimidos ao dia, preferencialmente pela manhã.', '60', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 191);
INSERT INTO posologias VALUES (500, 'Prescrição para infusão de Rituximabe. Fazer em hospital ou centro de infusão habilitado. 
Se realizado em hospital, aconselha-se o internamento para devida preparação, administração e observação da paciente durante a aplicação. Não é essencial o internamento para o especialista, mas caso necessário, sua presença pode requisitada. 
 
Protocolo de aplicação de Rituximabe para Granulomatose com poliangite (Granulomatose de Wegener) 
Medicamentos pré infusão 
Todas devem ser administradas pelo menos 30 minutos antes da aplicação de Rituximabe. 

 
1) Metilprednisolona 1000mg 
Diluir 1000mg de Metilprednisolona em 500mL (usar o diluente do produto) e completar com soro fisiológico 0,9% até obter 250mL e infudir lentamente (em pelo menos 2 horas (pode levar mais tempo)) endovenosamente uma vez ao dia por três dias consecutivos. 
Caso tenha dificuldade de obter o Metilprednisolona de 500mg, pegar 8 (oito) frascos de Metilprednisolona2) Albendazol 400mg 
Tomar 01 comprimido de 12 em 12 horas por 3 dias.3) Prometazina 25 mg/mL 
Aplicar 1 ampola intra-muscular.4) Bromoprida 5 mg/mL 
Diluir em 100 mL de soro fisiológico 0,9% e infundir endovenoso lentamente dose única. 
Caso tenha disponível Ondasentrona, esta é preferível.5) Paracetamol 750mg 
Toma 01 comprimido oral dose única. 
Medicamento imunobiológico 
 
1) Rituximabe (500mg Inj Fr Amp) 
Dose deve ser calculada no dia da aplicação375mg/m² sendo uma dose por semana por 4 semana. Usar formula DuBois.Reconstituição: 
Retirar 1000mg de Rituximabe e diluir em 500mL de soro fisiológico a 0,9%. 
Taxa de infusão 
Infusão em bomba de infusão 
Primeiro infusão: Comece 50 mg/h; aumento de 50 mg/h a cada 30min. Não exceder 400 mg/h. 
Infusões subsequentes: Iniciar 100 mg/h, aumento de 100 mg/h a cada 30min. Não exceder 400 mg/h. 
Aplicação: 
Aplicar a diluição endovenosamente por bomba de infusão seguindo a velocidade acima orientada. 
 
Nova aplicação está prevista em 24 semanas após reavaliação médica.', '8', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 165);
INSERT INTO posologias VALUES (501, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 166);
INSERT INTO posologias VALUES (502, 'Tomar 01 comprimido ao dia, preferencialmente pela manhã.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 167);
INSERT INTO posologias VALUES (503, 'Tomar 02 comprimidos ao dia, preferencialmente pela manhã.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 167);
INSERT INTO posologias VALUES (504, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 168);
INSERT INTO posologias VALUES (505, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 168);
INSERT INTO posologias VALUES (506, 'Tomar 01 comprimido de 8 em 8 horas.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 168);
INSERT INTO posologias VALUES (507, 'Tomar 01 comprimido a noite, aproximo das 21 horas.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 169);
INSERT INTO posologias VALUES (508, 'Tomar 01 comprimido de 12 em 12 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 170);
INSERT INTO posologias VALUES (509, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 170);
INSERT INTO posologias VALUES (510, 'Tomar 01 comprimido de 12 em 12 horas por 10 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 170);
INSERT INTO posologias VALUES (511, 'Tomar 01 comprimido de 12 em 12 horas por 14 dias.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 170);
INSERT INTO posologias VALUES (512, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 171);
INSERT INTO posologias VALUES (513, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 171);
INSERT INTO posologias VALUES (514, 'Tomar 01 comprimido uma vez ao dia por 2 semanas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO posologias VALUES (515, 'Tomar 01 comprimido uma vez ao dia por 4 semanas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO posologias VALUES (516, 'Tomar 01 comprimido uma vez ao dia por 6 semanas.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO posologias VALUES (517, 'Aplicar uma fina camada sobre a área afetada de 12 em 12 horas por 2 semanas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO posologias VALUES (518, 'Aplicar uma fina camada sobre a área afetada de 12 em 12 horas por 4 semanas.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO posologias VALUES (519, 'Aplicar uma fina camada sobre a área afetada de 12 em 12 horas por 6 semanas.', '2', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 172);
INSERT INTO posologias VALUES (520, 'Aplicar 20 mcg no subcutâneo uma vez ao dia.', '1', 'Can', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 173);
INSERT INTO posologias VALUES (521, 'Aplicar 02 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '6', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (522, 'Aplicar 03 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '9', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (523, 'Aplicar 04 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (527, 'Aplicar 08 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '24', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (528, 'Aplicar 09 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '27', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (529, 'Aplicar 10 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '30', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (530, 'Aplicar 8mg/Kg (a dosagem deve ser confirmada no dia da aplicação com o peso no dia da aplicação) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 4 semanas.', '8mg/Kg', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (531, 'Aplicar 02 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (532, 'Aplicar 03 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '18', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (533, 'Aplicar 04 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '24', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (534, 'Aplicar 05 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '30', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (535, 'Aplicar 06 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '36', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (536, 'Aplicar 07 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '42', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (537, 'Aplicar 08 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '48', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (538, 'Aplicar 09 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '54', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (539, 'Aplicar 10 frascos (8mg/Kg) a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
As aplicações seguintes devem ser feitas a cada 2 semanas.', '60', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (540, 'Aplicar 01 ampola (seringa) no subcutâneo uma vez por semana.', '12', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 174);
INSERT INTO posologias VALUES (541, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 175);
INSERT INTO posologias VALUES (542, 'Tomar 01 comprimido uma vez ao dia, preferencialmente a noite.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 176);
INSERT INTO posologias VALUES (543, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 176);
INSERT INTO posologias VALUES (544, 'Tomar 01 comprimido de 8 em 8 horas se dor.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO posologias VALUES (545, 'Tomar 01 comprimido de 8 em 8 horas se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO posologias VALUES (546, 'Tomar 20 gotas de 8 em 8 horas se dor. 
Caso tenha muita sonolência ou tontura, reduzir a dose para 10 gotas de 12 em 12 horas.', '2', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO posologias VALUES (547, 'Tomar 01 comprimido de 12 em 12 horas se dor.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO posologias VALUES (548, 'Tomar 01 comprimido de 12 em 12 horas se dor.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 177);
INSERT INTO posologias VALUES (549, 'Tomar 01 comprimido de 6 em 6 horas se dor.', '1', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 178);
INSERT INTO posologias VALUES (550, 'Tomar 01 comprimido de 8 em 8 horas se dor.', '1', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 178);
INSERT INTO posologias VALUES (551, 'Tomar 01 comprimido de 12 em 12 horas se dor.', '1', 'caixas', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 178);
INSERT INTO posologias VALUES (552, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 179);
INSERT INTO posologias VALUES (553, 'Tomar 02 comprimidos a noite próximo à hora de dormir. ', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 179);
INSERT INTO posologias VALUES (554, 'Dissolver o conteúdo do envelope em um copo d’água. 
Ingerir de estômago vazio imediatamente após o preparo e preferencialmente à noite antes de deitar e depois de urinar. 
Dose única.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 180);
INSERT INTO posologias VALUES (555, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 181);
INSERT INTO posologias VALUES (556, 'Aplicar 01 ampola (seringa) no subcutâneo.Inicia-se com aplicações na semana zero e quatro semanas (em relação a primeira aplicação) após a cada 12 (doze) semanas.', '3', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO posologias VALUES (557, 'Aplicar 01 ampola (seringa) no subcutâneo a cada 12 semanas.', '1', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO posologias VALUES (558, 'Aplicar 01 ampola (seringa) no subcutâneo a cada 8 semanas.', '2', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO posologias VALUES (559, 'Aplicar 02 frascos [260 mg] a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Após a aplicação endovenosa, a próxima aplicação será subcutânea em 8 semanas.', '2', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO posologias VALUES (560, 'Aplicar 03 frascos [360 mg] a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Após a aplicação endovenosa, a próxima aplicação será subcutânea em 8 semanas.', '3', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO posologias VALUES (561, 'Aplicar 04 frascos [520 mg] a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Após a aplicação endovenosa, a próxima aplicação será subcutânea em 8 semanas.', '4', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 182);
INSERT INTO posologias VALUES (562, 'Tomar 01 comprimido uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 183);
INSERT INTO posologias VALUES (563, 'Tomar 01 comprimido de 12 em 12 horas por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 183);
INSERT INTO posologias VALUES (564, 'Tomar 01 comprimido uma vez ao dia, preferencialmente a noite.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 184);
INSERT INTO posologias VALUES (565, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 184);
INSERT INTO posologias VALUES (566, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 185);
INSERT INTO posologias VALUES (567, 'Tomar 01 comprimido de 12 em 12 horas.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 185);
INSERT INTO posologias VALUES (568, 'Tome 01 comprimido a noite perto da hora de ir dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 186);
INSERT INTO posologias VALUES (569, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO posologias VALUES (570, 'Tomar 01 comprimido em dias alternados (dia sim, dia não).', '15', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO posologias VALUES (571, 'Tomar 01 comprimido de 12 em 12 horas.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO posologias VALUES (572, 'Tomar 02 comprimidos ao dia.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO posologias VALUES (573, 'Tomar 01 comprimido pela manhã e 02 comprimidos a tarde.', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO posologias VALUES (574, 'Tomar 1/2 (meio) comprimido uma vez ao dia.', '15', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO posologias VALUES (575, 'Tomar 1/2 (meio) comprimido em dias alternados (dia sim, dia não).', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 187);
INSERT INTO posologias VALUES (576, 'Tomar 01 cápsula ao dia, preferencialmente pela manhã.', '30', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO posologias VALUES (577, 'Tomar 02 cápsulas ao dia, preferencialmente pela manhã.', '60', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO posologias VALUES (578, 'Tomar 01 cápsula de 12 em 12 horas.', '60', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 188);
INSERT INTO posologias VALUES (579, 'Tomar 01 comprimido uma vez ao dia por 3 meses.', '90', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO posologias VALUES (580, 'Tomar 01 comprimido uma vez por semana por 3 meses.', '12', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO posologias VALUES (581, 'Tomar 01 comprimido uma vez por semana por 4 meses.', '12', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO posologias VALUES (582, 'Iniciar somente após acabar com os de 50.000 ui. 
 Tomar 01 comprimido uma vez por semana por 3 meses.', '12', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 189);
INSERT INTO posologias VALUES (583, 'Aplicar 01 frasco a cada dose, após devida preparação, conforme protocolos preestabelecidos e orientações da bula, endovenosamente, somente em centro de infusão habilitado em terapia assistida. 
Inicia-se com aplicações na semana zero, duas semanas e seis semanas (em relação a primeira aplicação) após a cada 4 semanas.', '8', 'frascos', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 190);
INSERT INTO posologias VALUES (584, 'Tomar 01 comprimido ao dia, preferencialmente pela manhã.', '30', 'cap', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 191);
INSERT INTO posologias VALUES (586, 'Aplicar 1 frasco [5 mg em 100 mL solução pronta para aplicação] intravenosamente a uma velocidade constante. Aplicar em 30 minutos (não menos que 15 minutos). 
Deve ser realizada uma aplicação ao ano.Aplicar somente em Centro de Infusão habilitado para terapia assistida.', '1', 'frasco', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 192);
INSERT INTO posologias VALUES (587, 'Tomar 01 comprimido a noite próximo à hora de dormir.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 193);
INSERT INTO posologias VALUES (588, 'Tomar 02 comprimidos a noite próximo à hora de dormir. ', '60', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-09 12:09:43.093+00', 193);
INSERT INTO posologias VALUES (286, 'Utilizar um kit para aplicação (infusão) de Infliximabe.', '3', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.378+00', 108);
INSERT INTO posologias VALUES (287, 'Utilizar um kit para aplicação (infusão) de Infliximabe.', '4', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.378+00', 108);
INSERT INTO posologias VALUES (288, 'Utilizar um kit para aplicação (infusão) de Infliximabe.', '5', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.378+00', 108);
INSERT INTO posologias VALUES (289, 'Utilizar um kit para aplicação (infusão) de Infliximabe.', '6', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.378+00', 108);
INSERT INTO posologias VALUES (291, 'Utilizar um kit para aplicação (infusão) de Infliximabe.', '8', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.378+00', 108);
INSERT INTO posologias VALUES (290, 'Utilizar um kit para aplicação (infusão) de Infliximabe.', '7', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:21.378+00', 108);
INSERT INTO posologias VALUES (283, 'Utilizar um kit para aplicação (infusão) de Abatacepte.', '3', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:31.706+00', 107);
INSERT INTO posologias VALUES (285, 'Utilizar um kit para aplicação (infusão) de Abatacepte.', '5', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:31.706+00', 107);
INSERT INTO posologias VALUES (284, 'Utilizar um kit para aplicação (infusão) de Abatacepte.', '4', 'uni', '2021-06-09 12:09:43.093+00', '2021-06-16 13:23:31.706+00', 107);
INSERT INTO posologias VALUES (9, 'Dissolver 01 envelope em um copo d’água (200 mL) em temperatura ambiente e ingira em seguida. 

Não se deve guardar a solução.
Tomar um envelope dissolvido uma vez ao dia por 7 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-22 00:34:55.245+00', 2);
INSERT INTO posologias VALUES (189, 'Iniciar com as amostras de 30 mg. 
Tomar 01 cápsula pela manhã.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-28 18:45:40.494+00', 74);
INSERT INTO posologias VALUES (255, 'Tomar 01 comprimido uma vez ao dia por 4 meses.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:03.306+00', 99);
INSERT INTO posologias VALUES (256, 'Tomar 01 comprimido uma vez ao dia por 6 meses.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:03.306+00', 99);
INSERT INTO posologias VALUES (338, 'Tomar 03 comprimidos uma vez por semana. Todos os comprimidos devem ser tomados no mesmo dia. 
Não tomar a medicação nos outros dias.', '12', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (340, 'Tomar 05 comprimidos uma vez por semana. Todos os comprimidos devem ser tomados no mesmo dia. 
Não tomar a medicação nos outros dias.', '20', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (12, 'Tomar 01 comprimido (200 mg), de 4 em 4 horas por 7 dias. 
Pular a dose da madrugada.', '35', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-16 16:53:18.83+00', 4);
INSERT INTO posologias VALUES (13, 'Tomar 02 comprimidos (800 mg), de 4 em 4 horas por 7 dias. 
Pular a dose da madrugada.', '70', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-16 16:53:18.83+00', 4);
INSERT INTO posologias VALUES (14, 'Aplicar uma adequada quantidade na região afetada de 4 em 4 horas. 
Pular a aplicação da madrugada.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2021-06-16 16:53:18.83+00', 4);
INSERT INTO posologias VALUES (343, 'Tomar 08 comprimidos uma vez por semana. Todos os comprimidos devem ser tomados no mesmo dia. 
Não tomar a medicação nos outros dias.', '32', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (349, 'Tomar 04 comprimidos uma vez por semana por 4 semanas, então tome 06 comprimidos uma vez por semana. 
 
Escolha um dia da semana (por exemplo, na sexta-feira). 
Tomar 02 comprimidos na sexta-feira pela manhã e 
tomar outros 02 comprimidos na sexta-feira a tarde 
por 4 semanas, então
tomar 03 comprimidos na sexta-feira pela manhã e 
tomar outros 03 comprimidos na sexta-feira a tarde continuamente.
Não tomar o Metotrexate nos outros dias.', '24', 'comp', '2021-06-09 12:09:43.093+00', '2021-06-21 21:19:07.04+00', 125);
INSERT INTO posologias VALUES (117, 'Tomar 01 comprimido uma vez ao dia.', '30', 'comp', '2021-06-09 12:09:43.093+00', '2022-04-08 14:50:48.754+00', 48);
INSERT INTO posologias VALUES (131, 'Tomar 01 comprimido de 8 em 8 horas por 5 dias.', '1', 'caixa', '2021-06-09 12:09:43.093+00', '2023-04-14 17:13:19.935+00', 53);


--
-- Data for Name: prescricoes; Type: TABLE DATA; Schema: public; Owner: wdkpsyme
--

INSERT INTO prescricoes VALUES (43, 't', 'f', 't', 't', '', '', '', '', '30', '30', '30', '30', '30', '30', '2022-02-11', NULL, '', '2022-02-11 12:01:42.93+00', '2022-02-11 12:01:42.93+00', 49, 79, 121, NULL, 29, 4, NULL);
INSERT INTO prescricoes VALUES (14, 't', 'f', 't', 't', '', '', '', '', '', '', '', '', '', '', '2021-06-28', NULL, '', '2021-06-28 18:44:47.389+00', '2021-06-28 18:44:47.389+00', 74, 115, 190, NULL, NULL, 2, NULL);
INSERT INTO prescricoes VALUES (12, 't', 'f', 'f', 't', '', '', '', '', '', '', '', '', '', '', '2021-06-21', '2022-05-19', '', '2021-06-21 21:17:57.945+00', '2022-05-19 01:54:50.488+00', 125, 205, 342, NULL, NULL, 2, NULL);
INSERT INTO prescricoes VALUES (116, 't', 'f', 't', 't', '', '', '', '', '', '', '', '', '', '', '2022-11-03', NULL, '', '2022-11-03 18:34:26.165+00', '2022-11-03 18:34:26.165+00', 188, 338, 576, NULL, NULL, 4, NULL);
INSERT INTO prescricoes VALUES (117, 't', 't', 't', 't', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', '', '', '', '8', '8', '8', '8', '8', '8', '2022-11-03', NULL, '', '2022-11-03 18:34:55.571+00', '2022-11-03 18:34:55.571+00', 1, 1, 1, NULL, 80, 4, NULL);
INSERT INTO prescricoes VALUES (121, 't', 'f', 't', 't', '', 'Medicação interrompida. Deve-se parar o uso e fornecimento.', '', '', '30', '30', '30', '30', '30', '30', '2022-12-05', '2023-04-19', '', '2022-12-05 11:59:17.638+00', '2023-11-14 13:23:09.579+00', 109, 166, 292, NULL, 83, 6, NULL);
INSERT INTO prescricoes VALUES (17, 't', 't', 't', 't', 'çlksdaj fçlkjdsa çflk çskladjf çk
lkçsadjfç lkfsadçlkj
asçldkkjfçlksjadfçlkjsad çlkfjsadçlkfj çlksadjfçlksadj fçlksdajf çlksdau jfpoisdaujfçkdsajmnç.fkjmnçlasdkjf', '', '', '', '60', '60', '60', '60', '60', '60', '2021-07-13', NULL, '', '2021-07-13 03:04:39.662+00', '2023-11-14 13:24:10.734+00', 127, 211, 360, NULL, 8, 2, NULL);
INSERT INTO prescricoes VALUES (13, 't', 'f', 't', 't', '', '', '', '', '8', '8', '8', '8', '8', '8', '2021-06-25', NULL, '', '2021-06-25 11:56:40.289+00', '2023-11-14 17:12:45.967+00', 1, 2, 1, NULL, 5, 2, NULL);
INSERT INTO prescricoes VALUES (120, 't', 'f', 't', 't', '', '', '', '', '', '', '', '', '', '', '2022-11-25', NULL, '', '2022-11-25 16:35:39.268+00', '2022-11-25 16:35:39.268+00', 9, 15, 23, NULL, NULL, 4, NULL);
INSERT INTO prescricoes VALUES (39, 't', 'f', 't', 't', '', '', '', '', '8', '8', '8', '8', '8', '8', '2021-10-25', NULL, '', '2021-10-25 16:09:00.878+00', '2023-11-16 14:41:10.889+00', 1, 2, 1, NULL, 27, 2, NULL);
INSERT INTO prescricoes VALUES (126, 't', 'f', 't', 't', '', '', '', '', '60', '60', '60', '60', '60', '60', '2023-04-24', NULL, '', '2023-01-09 18:44:22.04+00', '2023-04-24 14:29:06.181+00', 17, 29, 39, NULL, NULL, 6, NULL);
INSERT INTO prescricoes VALUES (41, 't', 't', 't', 'f', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', 'Medicação interrompida.', '', '', '0', '0', '0', '0', '0', '0', '2022-01-24', '2023-03-31', '', '2022-01-13 19:54:09.168+00', '2023-04-14 12:02:12.367+00', 6, 11, 17, NULL, 28, 2, NULL);
INSERT INTO prescricoes VALUES (123, 't', 'f', 't', 'f', '', 'Medicação interrompida. Deve-se parar o uso e fornecimento.', '', '', '0', '0', '0', '0', '0', '0', '2022-12-07', '2023-04-19', '', '2022-12-07 16:35:55.881+00', '2023-05-18 20:36:45.012+00', 125, 205, 341, NULL, 82, 6, '2023-05-18');
INSERT INTO prescricoes VALUES (127, 't', 'f', 't', 'f', '', 'Medicação interrompida. Deve-se parar o uso e fornecimento.', '', '', '0', '0', '0', '0', '0', '0', '2023-01-11', '2023-04-19', '', '2023-01-11 12:45:41.835+00', '2023-04-19 19:35:42.58+00', 6, 11, 17, NULL, 85, 6, NULL);
INSERT INTO prescricoes VALUES (119, 't', 't', 't', 't', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', '', '', '', '1  ', '8', '8', '8', '8', '8', '2022-11-23', NULL, '', '2022-11-23 19:51:19.766+00', '2023-05-19 12:48:44.492+00', 1, 2, 2, NULL, NULL, 6, '2023-05-19');
INSERT INTO prescricoes VALUES (15, 't', 'f', 't', 't', 'dsad', '', '', '', '10', '10', '10', '10', '10', '10', '2021-07-01', NULL, '', '2021-07-01 18:30:58.182+00', '2023-11-14 12:50:40.91+00', 6, 11, 18, NULL, 6, 2, NULL);
INSERT INTO prescricoes VALUES (134, 't', 'f', 't', 't', '', '', '', '', '6', '6', '6', '6', '6', '6', '2023-04-27', NULL, '', '2023-04-27 23:02:29.961+00', '2023-11-14 13:23:22.288+00', 6, 11, 17, NULL, 91, 6, NULL);
INSERT INTO prescricoes VALUES (129, 't', 'f', 't', 't', '', '', '', '', '30', '30', '30', '30', '30', '30', '2023-04-19', NULL, '', '2023-04-19 16:15:18.555+00', '2023-11-14 13:23:33.61+00', 109, 166, 292, NULL, 87, 6, NULL);
INSERT INTO prescricoes VALUES (133, 't', 't', 't', 't', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', '', '', '', '6', '6', '6', '6', '6', '6', '2023-04-25', NULL, '', '2023-04-25 14:44:47.738+00', '2023-11-14 13:23:54.375+00', 6, 11, 17, NULL, 90, 6, NULL);
INSERT INTO prescricoes VALUES (125, 't', 't', 't', 't', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', '', '', '', '6', '6', '6', '6', '6', '6', '2022-12-21', NULL, '', '2022-12-21 16:18:43.493+00', '2023-03-01 18:35:14.684+00', 6, 11, 17, NULL, 85, 6, NULL);
INSERT INTO prescricoes VALUES (130, 't', 'f', 't', 't', '', '', '', '', '60', '60', '60', '60', '60', '60', '2023-04-19', NULL, '', '2023-04-19 16:53:10.05+00', '2023-04-19 16:54:17.229+00', 91, 144, 225, NULL, 88, 6, NULL);
INSERT INTO prescricoes VALUES (131, 't', 'f', 't', 't', '', '', '', '', '1', '1', '1', '1', '1', '1', '2023-04-19', NULL, '', '2023-04-19 16:54:17.23+00', '2023-04-19 16:54:17.23+00', 57, 92, 140, NULL, 88, 6, NULL);
INSERT INTO prescricoes VALUES (132, 't', 't', 't', 't', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', '', '', '', '15', '15', '15', '15', '15', '15', '2023-04-24', NULL, '', '2023-04-24 14:31:28.326+00', '2023-04-24 14:31:28.326+00', 174, 312, 524, NULL, 89, 6, NULL);
INSERT INTO prescricoes VALUES (135, 't', 't', 't', 't', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Trazer a medicação para aplicação dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável. 
- Agendar a infusão com antecedência se possível. 
- Aplicar somente em Centro de Infusão habilitado. 
', '', '', '', '', '', '', '', '', '', '2023-10-04', NULL, '', '2023-10-04 19:46:39.721+00', '2023-10-04 19:46:39.721+00', 1, 2, 1, NULL, NULL, 65, NULL);
INSERT INTO prescricoes VALUES (136, 't', 'f', 't', 't', '', '', '', '', '60', '60', '60', '60', '60', '60', '2023-11-09', NULL, '', '2023-11-09 11:37:13.819+00', '2023-11-09 11:37:33.637+00', 91, 144, 225, NULL, 92, 66, NULL);
INSERT INTO prescricoes VALUES (137, 't', 'f', 't', 't', '', '', '', '', '', '', '', '', '', '', '2023-11-09', NULL, '', '2023-11-09 11:37:48.415+00', '2023-11-09 11:38:03.44+00', 74, 115, 190, NULL, NULL, 66, '2023-11-09');
INSERT INTO prescricoes VALUES (128, 't', 't', 't', 't', '- Manter a medicação na geladeira (2 a 8°C). NÃO CONGELAR. 
- Transportar a medicação somente dentro da bolsa térmica (ou isopor se não tiver) com gelo reutilizável.', '', '', '', '6', '6', '6', '6', '6', '6', '2023-04-18', NULL, '', '2023-04-18 20:35:50.153+00', '2023-11-14 13:23:09.579+00', 6, 11, 17, NULL, 83, 6, NULL);


--
-- Data for Name: relatorios; Type: TABLE DATA; Schema: public; Owner: wdkpsyme
--

INSERT INTO relatorios VALUES (70, '', '', 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b', '', '', '', '', '', '2022-11-03 18:34:55.572+00', '2022-11-03 18:34:55.572+00', 80, '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32er23', '', '', '', 'f', 'f', 'f', 'f', 't', 'f', '', '', '', 'f', '', '', '', '');
INSERT INTO relatorios VALUES (78, '5', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2.8', '', '', '', '2023-04-27 23:02:29.961+00', '2023-11-14 13:23:22.288+00', 91, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 'kjdçsalfjçdlasjfç', 'f', 'f', 'f', 'f', 'f', 'f', '10.2', '', '', 'f', '', '', '', '');
INSERT INTO relatorios VALUES (75, '44 ', '44 ', 5, 2, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c', 'a', '', '4,4', '44', '44', '44, ', '2023-04-19 16:15:18.556+00', '2023-11-14 13:23:33.61+00', 87, '44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4tgfsdgsd', 'gfdsgs', 'b', 'gdsfgsdfgsdf', 'f', 'f', 'f', 'f', 'f', 't', '44 ', '44 ', '44', 'f', '', '', '4.4', '4.4');
INSERT INTO relatorios VALUES (74, '9', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c', 'a', '', '', '', '', '', '2022-12-21 16:18:43.494+00', '2023-03-01 18:35:14.684+00', 85, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 't', 't', 't', NULL, NULL, 'gsdfgsdfg
gdsfgsdfgsdf
gdsfgsdfg', '432432', 'c', 'Paciente com a presença dos seguintes critérios: Sacroileíte em exames de imagem e pelo menos uma característica de Espondiloartrite, Limitação dos movimentos da coluna lombar nos planos sagital e frontal, Expansão torácica diminuída, Limitação dos movimentos da coluna lombar nos planos sagital e frontal, Lombalgia inflamatória por três meses ou mais de duração, Sacroileíte em exames de imagem e pelo menos uma característica de Espondiloartrite, Sacroileíte em exames de imagem e pelo menos uma característica de Espondiloartrite, ', 'f', 'f', 't', 'f', 'f', 't', '', '', '', 'f', '', '', '', '');
INSERT INTO relatorios VALUES (77, '3', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c', 'a', '', '', '', '', '', '2023-04-25 14:44:47.739+00', '2023-11-14 13:23:54.376+00', 90, '', NULL, NULL, NULL, NULL, 't', 't', NULL, 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fdgdfsgdsfgsdf', '', 'c', 'gfdsgfdsg', 'f', 'f', 'f', 'f', 'f', 'f', '', '15', '', 'f', '', '', '2.7', '1.2');
INSERT INTO relatorios VALUES (20, '7', '7', 1, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Metotrexate', '10mg/sem', '8745', '4545', '125345356', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c', 'b', '4545', '', '', '', '', '2022-01-13 19:54:09.168+00', '2023-04-14 12:02:12.369+00', 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '35', '', NULL, NULL, NULL, '4.2', '2.4');
INSERT INTO relatorios VALUES (4, '22 ', '22 ', NULL, NULL, NULL, NULL, 't', 't', 't', 't', 't', 't', 't', NULL, NULL, NULL, 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'AAAAAA ', 'c', 'a', '', '2,2', '22', '22', '22,2', '2021-06-25 11:56:40.29+00', '2023-11-14 17:12:45.968+00', 5, '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdafasdfsa', '23432', 'c', 'fdsafsadfsadf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO relatorios VALUES (76, '3', '3', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2.3', '12', '15', '', '2023-04-24 14:31:28.326+00', '2023-04-24 14:31:28.326+00', 89, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'f', 'f', 'f', 'f', 'f', 'f', '', '', '', 'f', '', '', '', '');
INSERT INTO relatorios VALUES (19, '2', '99', 3, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdf', '', '', '', 'asf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', '', '2.0', '8', '107', '', '2021-10-25 16:09:00.879+00', '2023-11-16 14:41:10.89+00', 27, '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '', '');
INSERT INTO relatorios VALUES (5, '432', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fsdfsdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '34', '', '2021-07-01 18:30:58.182+00', '2023-11-14 12:50:40.911+00', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO relatorios VALUES (72, '55 ', '55 ', 1, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c', 'a', '', '3,3', '', '', '', '2022-11-23 19:51:19.767+00', '2023-05-18 20:36:32.186+00', 82, '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fdsgfdsg', 'gfds', 'c', 'fdsgdsfgsdf', 'f', 'f', 'f', 'f', 'f', 't', '', '', '', 'f', '', '', '', '');
INSERT INTO relatorios VALUES (73, '22 ', '22 ', 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c', 'b', '', '2,2', '', '', '', '2022-12-05 11:59:17.638+00', '2023-11-14 13:23:09.579+00', 83, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfsaf', '324', 'c', 'fdsafsafsad', 'f', 'f', 'f', 'f', 'f', 't', '', '', '', 'f', '', '', '', '');

-- COMMIT TRANSACTION
