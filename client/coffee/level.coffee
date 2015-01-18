Preload     = require './preload/load'
levelData   = require './level_data'

class Level
  constructor: (@delegate, map) ->

    @w = levelData.tileWidth
    @h = levelData.tileHeight

    data =
      images: [Preload.loader.getResult(map)]
      frames:
        width: @w
        height: @h
        margin: 1
        spacing: 1

    @tilesheet = new createjs.SpriteSheet data
    @draw()

    @delegate.stage.update()

  draw: ->
    for i in [0..levelData.y - 1]
      for j in [0..levelData.x - 1]
        s = new createjs.Sprite @tilesheet
        s.gotoAndStop levelData.map[i][j]
        s.x = j*@h
        s.y = i*@h
        @delegate.stage.addChild s

module.exports = Level
