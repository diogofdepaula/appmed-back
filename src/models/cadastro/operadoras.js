const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database');
const ConveniosBiologicos = require('../atendimento/conveniosbiologicos');
const sequelize = database.sequelize;

class Operadoras extends Model { }

Operadoras.init({
    fantasia: {
        type: DataTypes.STRING,
    },
    razaosocial: {
        type: DataTypes.STRING,
    },
    ans: {
        type: DataTypes.STRING,
    },
    cnpj: {
        type: DataTypes.STRING
    },
}, {
    sequelize,
    modelName: 'operadoras'
});

Operadoras.hasMany(ConveniosBiologicos)

module.exports = Operadoras;