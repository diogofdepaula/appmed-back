const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database');
const Documentos = require('../atendimento/documentos');
const Lmes = require('../atendimento/lmes');
const Prescricoes = require('../atendimento/prescricoes');
const ConveniosBiologicos = require('../atendimento/conveniosbiologicos');
const Atestados = require('../atendimento/atestados');
const sequelize = database.sequelize;

class Clientes extends Model { }

Clientes.init({
    nome: {
        type: DataTypes.STRING,
    },
    nascimento: {
        type: DataTypes.DATEONLY,
        allowNull: true,
    },
    sexo: {
        type: DataTypes.STRING
    },
    peso: {
        type: DataTypes.STRING,
    },
    altura: {
        type: DataTypes.STRING,
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
    mae: {
        type: DataTypes.STRING,
    },
    image: {
        type: DataTypes.BLOB('long'),
    },
}, {
    sequelize,
    modelName: 'clientes'
});

Clientes.hasMany(Prescricoes, { onDelete: 'cascade' })
Clientes.hasMany(Lmes, { onDelete: 'cascade' })
Clientes.hasMany(Atestados, { onDelete: 'cascade' })
Clientes.hasMany(Documentos, { onDelete: 'cascade' })
Clientes.hasMany(ConveniosBiologicos, { onDelete: 'cascade' })

module.exports = Clientes;