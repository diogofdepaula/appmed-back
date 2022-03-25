const Clientes = require('../../models/cadastro/clientes');
const Prescricoes = require('../../models/atendimento/prescricoes');
const Lmes = require('../../models/atendimento/lmes');
const Apresentacoes = require('../../models/cadastro/apresentacoes')
const Medicamentos = require('../../models/cadastro/medicamentos')
const Nomescomerciais = require('../../models/cadastro/nomescomerciais')
const Posologias = require('../../models/cadastro/posologias')
const Relatorios = require('../../models/atendimento/relatorios');

exports.Insert = (req, res, next) => {

    Clientes.create(req.body)
        .then(cliente => {
            if (cliente) {
                res.send("sucesso do cadastro. " + cliente)
            } else {
                res.send("inssucesso do cadastro.")
            }
        })
        .catch(error => next(error))
}

exports.SearchAllFat = (req, res, next) => {
    Clientes.findAll()
        .then((clientes) => {
            return res.json(clientes)
        })
}

exports.SearchAllFit = (req, res, next) => {
    Clientes.findAll({
        attributes: ['id', 'nome', 'nascimento', 'cpf']
    })
        .then((clientes) => {
            return res.json(clientes)
        })
}


exports.SearchAll = (req, res, next) => {
    // tinha que fazer um query para buscar somente o nome
    Clientes.findAll()
        .then((clientes) => {
            return res.json(clientes)
        })
}

exports.SearchOne = (req, res, next) => {
    const id = req.params.id;

    Clientes.findAll({
        where: { id: id },
        include: [
            { model: Prescricoes, include: [Apresentacoes, { model: Medicamentos, include: [Nomescomerciais] }, Posologias] },
            { model: Lmes, include: [Relatorios, Prescricoes] },
        ]
    })
        .then((clientes) => {
            return res.json(clientes[0])
        })


    // Clientes.findByPk(id)
    //     .then((cliente) => {
    //         return res.json(cliente)
    //     })






}

exports.Update = (req, res, next) => {
    const id = req.params.id;
    Clientes.findByPk(id)
        .then(cliente => {
            cliente.update(req.body, { where: { id: id } })
        }).then((cliente) => {
            return res.json(cliente)
        })
}

exports.Delete = (req, res, next) => {

    const id = req.params.id;

    Clientes.findByPk(id)
        .then(cliente => {
            cliente.destroy({ where: { id: id } })
        }).then((cliente) => {
            return res.json(cliente)
        })
}