const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database')
const sequelize = database.sequelize;

class Documentos extends Model { }

Documentos.init({
    titulo: {
        type: DataTypes.STRING
    },
    texto: {
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
    modelName: 'documentos'
});

module.exports = Documentos