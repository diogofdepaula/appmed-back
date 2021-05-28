const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database')
const sequelize = database.sequelize;

class Pericias extends Model { }

Pericias.init({
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
    tratamento: {
        type: DataTypes.TEXT
    },
    estado: {
        type: DataTypes.TEXT
    },
    prognostico: {
        type: DataTypes.TEXT
    },
    comentario: {
        type: DataTypes.TEXT
    },
    data: {
        type: DataTypes.DATEONLY,
    },
}, {
    sequelize,
    modelName: 'pericias'
});

//Lmes.belongsTo(Clientes) 

module.exports = Pericias