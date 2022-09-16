const Atestados = require('../../models/atendimento/atestados')

exports.Insert = (req, res, next) => {

    Atestados.create(req.body)
        .then(atestado => {
            if (atestado) {
                res.send("sucesso do cadastro do atestado")
            } else {
                res.send("inssucesso do cadastro da atestado")
            }
        }).catch(error => next(error))
}

exports.SearchAllfindByPk = (req, res) => {
    const id = req.params.id; // nesse caso é o idCliente 
    Atestados.findAll({ where: { clienteId: id }})
        .then((atestado) => {
            return res.json(atestado)
        })
}

exports.Update = (req, res) => {
    const id = req.params.id;
    Atestados.update( req.body, { where: { id: id } })
        .then((atestado) => {
            return res.json(atestado)
        })
}

exports.Delete = (req, res) => {
    const id = req.params.id;
    Atestados.destroy({ where: { id: id } })
        .then((atestado) => {
            return res.json(atestado)
        })
}