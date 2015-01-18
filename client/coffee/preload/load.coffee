manifest = require './manifest'

class Preload
  start: (@onComplete) ->
    return console.log "Preload: Must specify onComplete" unless @onComplete
    @loader = new createjs.LoadQueue false
    @loader.addEventListener 'complete', @onComplete
    @loader.loadManifest manifest, true, 'images/'

module.exports = new Preload
