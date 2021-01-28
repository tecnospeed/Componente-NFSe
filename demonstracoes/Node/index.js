const express = require('express')
var bodyParser = require('body-parser')
const cors = require('cors')
require('./src/lib/ComponenteActiveX')


var app = express();


app.use(cors())
app.use(express.json())

app.use("/nfse", require('./src/routes'))


app.listen(process.env.PORT || 5001, function(){
    console.log(`Disponível em: http://localhost:5001`)
});