const Sequelize = require('sequelize');

const sequelize = new Sequelize(process.env.PG_URI , {
    dialect: 'postgres',
    protocol: 'postgres',
    dialectOptions: {
        ssl: {
            require: true,
            rejectUnauthorized: false
        }
    }
});

sequelize
    .authenticate()
    .then(() => {
        console.log('Conexão estabelecida com sucesso.');
    })
    .catch(err => {
        console.error('Não foi possível conectar ao banco de dados:', err);
    });

(async () => {
    await sequelize
        .sync()
        // .sync({alter: true})
        .then(() => {
            const MedicamentosData = require('./initialdata/MedicamentoData')
          //  const CID10 = require('./initialdata/CID10Data')
        })
})();

module.exports = {
    Sequelize: Sequelize,
    sequelize: sequelize
}