require('dotenv').config()

const express = require ('express');
const routes = require ('./src/routes/routes');
const cors = require('cors');
const app = express();
const bodyParser = require('body-parser');

app.use(cors());

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use(express.json());

// somente para comentar a nota branch
//app.use('/api.appmed', routes);

app.use('/', routes);

// app.get('/', (req, res) => {
//     res.send("Hello world! Teste 3")
// })

app.listen(process.env.PORT || 4001)

// app.listen(4001, () => {
//     console.log("API está funcionando na porta 4001")
// });

