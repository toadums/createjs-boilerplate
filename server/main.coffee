express = require 'express'
path = require 'path'

app = express()

pub = path.join __dirname, '..', "/public"

app.use express.static(pub)

console.log "Serving #{pub}"

app.listen(3000)
