const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database')
const sequelize = database.sequelize;

class Atestados extends Model { }

Atestados.init({
    diagnostico: {
        type: DataTypes.TEXT
    },
    padrao: {
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
    consequencia: {
        type: DataTypes.TEXT
    },
    prazo: {
        type: DataTypes.STRING
    },
    comentario: {
        type: DataTypes.TEXT
    },
    data: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    },
    ultimaimpressao: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    },
}, {
    sequelize,
    modelName: 'atestados'
});

//Lmes.belongsTo(Clientes) 

module.exports = Atestados