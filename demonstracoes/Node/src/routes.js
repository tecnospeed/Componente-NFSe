const express = require('express')
const routes = new express.Router()
// var multer = require('multer');

// const multerConfig = require('./configs/multer')

const nfseController = require('./controllers/nfseController')

routes.get('/consultarNotasTomadas', nfseController.consultarNotasTomadas)
// routes.get('/consultarDestinadas', nfseController.consultarNotasTomadas)

module.exports = routes