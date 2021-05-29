const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database');
const sequelize = database.sequelize;

class ConveniosBiologicos extends Model { }

ConveniosBiologicos.init({
    cid10: {
        type: DataTypes.STRING
    },
    // optei por não fazer por chave estrangeira para ele não ter que fazer busca no BD toda vez 
    // que chamar uma LME. O tabela de CID ficou com 12500 linhas. 
    // como o a tabela CID é estática (não irá mudar nada do que está lá) e como 
    // o CID da LME é estático (não é editável - o que está definido será definido. se precisar mudar 
    // precisará fazer um nova LME) , optei por deixar fixo, tanto o CID como diagnóstico
    diagnostico: {
        type: DataTypes.STRING
    },
    evolucao: {
        type: DataTypes.TEXT
    },
    historia: {
        type: DataTypes.TEXT
    },
    medicamento1: {
        type: DataTypes.STRING
    },
    dose1: {
        type: DataTypes.STRING
    },
    inicio1: {
        type: DataTypes.STRING
    },
    fim1: {
        type: DataTypes.STRING
    },
    motivo1: {
        type: DataTypes.STRING
    },
    medicamento2: {
        type: DataTypes.STRING
    },
    dose2: {
        type: DataTypes.STRING
    },
    inicio2: {
        type: DataTypes.STRING
    },
    fim2: {
        type: DataTypes.STRING
    },
    motivo2: {
        type: DataTypes.STRING
    },
    medicamento3: {
        type: DataTypes.STRING
    },
    dose3: {
        type: DataTypes.STRING
    },
    inicio3: {
        type: DataTypes.STRING
    },
    fim3: {
        type: DataTypes.STRING
    },
    motivo3: {
        type: DataTypes.STRING
    },
    medicamento4: {
        type: DataTypes.STRING
    },
    dose4: {
        type: DataTypes.STRING
    },
    inicio4: {
        type: DataTypes.STRING
    },
    fim4: {
        type: DataTypes.STRING
    },
    motivo4: {
        type: DataTypes.STRING
    },
    medicamento5: {
        type: DataTypes.STRING
    },
    dose5: {
        type: DataTypes.STRING
    },
    inicio5: {
        type: DataTypes.STRING
    },
    fim5: {
        type: DataTypes.STRING
    },
    motivo5: {
        type: DataTypes.STRING
    },
    medicamento6: {
        type: DataTypes.STRING
    },
    dose6: {
        type: DataTypes.STRING
    },
    inicio6: {
        type: DataTypes.STRING
    },
    fim6: {
        type: DataTypes.STRING
    },
    motivo6: {
        type: DataTypes.STRING
    },
    medicamento7: {
        type: DataTypes.STRING
    },
    dose7: {
        type: DataTypes.STRING
    },
    inicio7: {
        type: DataTypes.STRING
    },
    fim7: {
        type: DataTypes.STRING
    },
    motivo7: {
        type: DataTypes.STRING
    },
    motivosuspensao: {
        type: DataTypes.TEXT
    },
    protocolo: {
        type: DataTypes.STRING,
    },
    desmielinizante: {
        type: DataTypes.BOOLEAN
    },
    gestacao: {
        type: DataTypes.BOOLEAN
    },
    icc: {
        type: DataTypes.BOOLEAN
    },
    infeccao: {
        type: DataTypes.BOOLEAN
    },
    ppddata: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    },
    ppdresultado: {
        type: DataTypes.STRING
    },
    rxtoraxdata: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    },
    rxtoraxresultado: {
        type: DataTypes.STRING
    },
    rxtoraxalteracao: {
        type: DataTypes.STRING
    },
    bioquimica: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    },
    hb: {
        type: DataTypes.STRING
    },
    ht: {
        type: DataTypes.STRING
    },
    leucocitos: {
        type: DataTypes.STRING
    },
    vhs: {
        type: DataTypes.STRING
    },
    pcr: {
        type: DataTypes.STRING
    },
    anticorpo: {
        type: DataTypes.STRING
    },
    hbsag: {
        type: DataTypes.STRING
    },
    antihbcag: {
        type: DataTypes.STRING
    },
    antihbsag: {
        type: DataTypes.STRING
    },
    imagem: {
        type: DataTypes.STRING
    },
    bhcgdata: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    },
    bhcgjustificativa: {
        type: DataTypes.STRING
    },
    das28: {
        type: DataTypes.STRING
    },
    cdai: {
        type: DataTypes.STRING
    },
    sdai: {
        type: DataTypes.STRING
    },
    basdai: {
        type: DataTypes.STRING
    },
    asdas: {
        type: DataTypes.STRING
    },
    sledai: {
        type: DataTypes.STRING
    },
    eva: {
        type: DataTypes.STRING
    },
    dor: {
        type: DataTypes.STRING
    },
    edema: {
        type: DataTypes.STRING
    },
    axial: {
        type: DataTypes.BOOLEAN
    },
    periferico: {
        type: DataTypes.BOOLEAN
    },
    data: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    }
}, {
    sequelize,
    modelName: 'conveniosbiologicos'
});

module.exports = ConveniosBiologicos