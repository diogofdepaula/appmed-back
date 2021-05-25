const Sequelize = require('sequelize');

// const sequelize = new Sequelize({
//     dialect: 'sqlite',
//     storage: './src/database/appmeddb.sqlite'
// });

// const sequelize = new Sequelize(
//     process.env.PGDATABASE,
//     process.env.PGUSER,
//     process.env.PGPASSWORD,
//     {
//       //  host: process.env.PGHOST,
//         dialect: 'postgres',
//         dialect: 'postgres',
//         protocol: 'postgres',
//         port: process.env.PGPORT,
//         logging: false,
//         dialectOptions: {
//           ssl: true /* for SSL config since Heroku gives you this out of the box */
//         }
//     });

const sequelize = new Sequelize(process.env.PG_URI);
    

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

// sequelize
// .sync()
// .then(() => {
//     const MedicamentosData = require('./initialdata/MedicamentoData')
//     const CID10 = require('./initialdata/CID10Data')
// })