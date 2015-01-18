Preload = require './preload/load'
Level = require './level'

class Game
  constructor: ->
    Preload.start @loadComplete

  loadComplete: =>

    @stage = new createjs.Stage 'canvas'
    @level = new Level @, 'level'

  tick: (e) =>
    @stage.update()

module.export = new Game()

