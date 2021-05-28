const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database');
const sequelize = database.sequelize;

class Estabelecimentos extends Model { }

Estabelecimentos.init({
    nome: {
        type: DataTypes.STRING,
    },
    razaosocial: {
        type: DataTypes.STRING,
    },
    cnes: {
        type: DataTypes.STRING,
    },
    cnpj: {
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
    logo: {
        type: DataTypes.BLOB('long'),
    },
}, {
    sequelize,
    modelName: 'estabelecimentos'
});

module.exports = Estabelecimentos;