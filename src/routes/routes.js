const express = require('express')
const router = express.Router();

const clientescontroller = require('../controllers/cadastro/clientescontroller');
const medicamentoscontroller = require('../controllers/cadastro/medicamentoscontroller')
// const cid10controller = require('../controllers/cadastro/cid10controller')
const prescricoescontroller = require('../controllers/atendimento/prescricoescontroller')
const lmescontroller = require('../controllers/atendimento/lmescontroller')
const atestadoscontroller = require('../controllers/atendimento/atestadoscontroller')

router.post('/clientes', clientescontroller.Insert);
router.get('/clientes/allfat', clientescontroller.SearchAllFat);
router.get('/clientes/allfit', clientescontroller.SearchAllFit);
router.get('/clientes/:id', clientescontroller.SearchOne);
router.put('/clientes/:id', clientescontroller.Update);
router.delete('/clientes/:id', clientescontroller.Delete);

router.post('/medicamentos', medicamentoscontroller.Insert);
router.get('/medicamentos', medicamentoscontroller.SearchAll);
router.get('/medicamentos/allfat', medicamentoscontroller.SearchAllFat);
router.get('/medicamentos/short', medicamentoscontroller.SearchAllShort);
router.get('/medicamentos/:id', medicamentoscontroller.SearchOne);
router.put('/medicamentos/:id', medicamentoscontroller.Update);
router.delete('/medicamentos/:id', medicamentoscontroller.Delete);
router.put('/medicamentos/nc/:id', medicamentoscontroller.UpdateNomeComercial);

// router.get('/cid10', cid10controller.SearchAll);
// router.get('/cid10/:id', cid10controller.SearchOne);

router.post('/prescricoes', prescricoescontroller.Insert);
router.get('/prescricoes/all', prescricoescontroller.SearchAll);
router.get('/prescricoes/all/:id', prescricoescontroller.SearchAllfindByPk);
router.get('/prescricoes/one/:id', prescricoescontroller.SearchOne);
router.put('/prescricoes/:id', prescricoescontroller.Update);
router.delete('/prescricoes/:id', prescricoescontroller.Delete);

router.post('/lmes', lmescontroller.Insert);
router.get('/lmes/allfat/:id', lmescontroller.SearchAllFat);
router.get('/lmes/allfit/:id', lmescontroller.SearchAllFit);
router.get('/lmes/one/:id', lmescontroller.SearchOne);
router.put('/lmes/:id', lmescontroller.Update);
router.delete('/lmes/:id', lmescontroller.Delete);

router.post('/atestados', atestadoscontroller.Insert);
router.get('/atestados/:id', atestadoscontroller.SearchAllfindByPk);
router.put('/atestados/:id', atestadoscontroller.Update);
router.delete('/atestados/:id', atestadoscontroller.Delete);

module.exports = router;