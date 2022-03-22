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
    vhs: {
        type: DataTypes.STRING
    },
    pcr: {
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
    data: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    }
}, {
    sequelize,
    modelName: 'conveniosbiologicos'
});

module.exports = ConveniosBiologicos