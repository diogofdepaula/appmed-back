const { DataTypes, Model } = require('sequelize');
const database = require('../../database/database')
const sequelize = database.sequelize;

class Relatorios extends Model { }

Relatorios.init({
	idadeinicio: {
		type: DataTypes.STRING
	},
	vhs: {
		type: DataTypes.STRING
	},
	pcr: {
		type: DataTypes.STRING
	},
	pcrvn: {
		type: DataTypes.STRING
	},
	ar2010a: {
		type: DataTypes.INTEGER
	},
	ar2010b: {
		type: DataTypes.INTEGER
	},
	ar2010c: {
		type: DataTypes.INTEGER
	},
	ar2010d: {
		type: DataTypes.INTEGER
	},
	ara: {
		type: DataTypes.BOOLEAN
	},
	arb: {
		type: DataTypes.BOOLEAN
	},
	arc: {
		type: DataTypes.BOOLEAN
	},
	ard: {
		type: DataTypes.BOOLEAN
	},
	are: {
		type: DataTypes.BOOLEAN
	},
	arf: {
		type: DataTypes.BOOLEAN
	},
	arg: {
		type: DataTypes.BOOLEAN
	},
	apperiferica: {

		type: DataTypes.BOOLEAN
	},
	apcaxial: {

		type: DataTypes.BOOLEAN
	},
	apcentesite: {

		type: DataTypes.BOOLEAN
	},
	apa: {
		type: DataTypes.BOOLEAN
	},
	apb: {
		type: DataTypes.BOOLEAN
	},
	apc: {
		type: DataTypes.BOOLEAN
	},
	apd: {
		type: DataTypes.BOOLEAN
	},
	ape: {
		type: DataTypes.BOOLEAN
	},
	apf: {
		type: DataTypes.BOOLEAN
	},
	apg: {
		type: DataTypes.BOOLEAN
	},
	eaaa: {
		type: DataTypes.BOOLEAN
	},
	eaab: {
		type: DataTypes.BOOLEAN
	},
	eaac: {
		type: DataTypes.BOOLEAN
	},
	eanya: {
		type: DataTypes.BOOLEAN
	},
	eanyb: {
		type: DataTypes.BOOLEAN
	},
	eanyc: {
		type: DataTypes.BOOLEAN
	},
	eanyd: {
		type: DataTypes.BOOLEAN
	},
	eanye: {
		type: DataTypes.BOOLEAN
	},
	utilizados: {
		type: DataTypes.TEXT
	},
	medicamento1: {
		type: DataTypes.STRING
	},
	dose1: {
		type: DataTypes.STRING
	},
	inicio1: {
		type: DataTypes.STRING
	},
	fim1: {
		type: DataTypes.STRING
	},
	motivo1: {
		type: DataTypes.STRING
	},
	medicamento2: {
		type: DataTypes.STRING
	},
	dose2: {
		type: DataTypes.STRING
	},
	inicio2: {
		type: DataTypes.STRING
	},
	fim2: {
		type: DataTypes.STRING
	},
	motivo2: {
		type: DataTypes.STRING
	},
	medicamento3: {
		type: DataTypes.STRING
	},
	dose3: {
		type: DataTypes.STRING
	},
	inicio3: {
		type: DataTypes.STRING
	},
	fim3: {
		type: DataTypes.STRING
	},
	motivo3: {
		type: DataTypes.STRING
	},
	medicamento4: {
		type: DataTypes.STRING
	},
	dose4: {
		type: DataTypes.STRING
	},
	inicio4: {
		type: DataTypes.STRING
	},
	fim4: {
		type: DataTypes.STRING
	},
	motivo4: {
		type: DataTypes.STRING
	},
	medicamento5: {
		type: DataTypes.STRING
	},
	dose5: {
		type: DataTypes.STRING
	},
	inicio5: {
		type: DataTypes.STRING
	},
	fim5: {
		type: DataTypes.STRING
	},
	motivo5: {
		type: DataTypes.STRING
	},
	medicamento6: {
		type: DataTypes.STRING
	},
	dose6: {
		type: DataTypes.STRING
	},
	inicio6: {
		type: DataTypes.STRING
	},
	fim6: {
		type: DataTypes.STRING
	},
	motivo6: {
		type: DataTypes.STRING
	},
	medicamento7: {
		type: DataTypes.STRING
	},
	dose7: {
		type: DataTypes.STRING
	},
	inicio7: {
		type: DataTypes.STRING
	},
	fim7: {
		type: DataTypes.STRING
	},
	motivo7: {
		type: DataTypes.STRING
	},
	dose: {
		type: DataTypes.STRING
	},
	inducao: {
		type: DataTypes.BOOLEAN
	},
	justificativa: {
		type: DataTypes.TEXT
	},
	rxt: {
		type: DataTypes.BOOLEAN
	},
	sqm: {
		type: DataTypes.BOOLEAN
	},
	aine: {
		type: DataTypes.BOOLEAN
	},
	ppddata: {
		type: DataTypes.DATEONLY,
		allowNull: true,
	},
	ppdresultado: {
		type: DataTypes.STRING
	},
	ppdtratamento: {
		type: DataTypes.BOOLEAN
	},
	rxtoraxdata: {
		type: DataTypes.DATEONLY,
		allowNull: true,
	},
	rxtoraxresultado: {
		type: DataTypes.STRING
	},
	rxtoraxalteracao: {
		type: DataTypes.STRING
	},
	hepatiteimunidade: {
		type: DataTypes.BOOLEAN
	},
	hepatitevacina: {
		type: DataTypes.BOOLEAN
	},
	das28: {
		type: DataTypes.STRING
	},
	cdai: {
		type: DataTypes.STRING
	},
	sdai: {
		type: DataTypes.STRING
	},
	sjadas: {
		type: DataTypes.STRING
	},
	basdai: {
		type: DataTypes.STRING
	},
	asdas: {
		type: DataTypes.STRING
	},
	dapsa: {
		type: DataTypes.STRING
	},
	lei: {
		type: DataTypes.STRING
	},
}, {
	sequelize,
	modelName: 'relatorios'
});

module.exports = Relatorios
