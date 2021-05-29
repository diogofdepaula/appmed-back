const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database');
const sequelize = database.sequelize;

class Profissionais extends Model { }

Profissionais.init({
    nome: {
        type: DataTypes.STRING,
    },
    codinome: {
        type: DataTypes.STRING,
    },
    nascimento: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    },
    sexo: {
        type: DataTypes.STRING
    },
    endereco: {
        type: DataTypes.STRING,
    },
    telefone: {
        type: DataTypes.STRING,
    },
    celular: {
        type: DataTypes.STRING,
    },
    email: {
        type: DataTypes.STRING,
    },
    cns: {
        type: DataTypes.STRING,
    },
    cpf: {
        type: DataTypes.STRING
    },
    crm: {
        type: DataTypes.STRING,
    }
}, {
    sequelize,
    modelName: 'profissionais'
});

module.exports = Profissionais;