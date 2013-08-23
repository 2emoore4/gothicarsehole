express = require 'express'
child_process = require 'child_process'
app = express()

app.use express.bodyParser()
app.post '/ga/suspend', (req, res) ->
  console.log 'suspending server'
  child_process.exec 'pm-suspend', (error, stdout, stderr) ->
    console.log stdout
    res.send 'gothic castle has been suspended'

app.listen 8888
console.log 'listening on port 8888'
