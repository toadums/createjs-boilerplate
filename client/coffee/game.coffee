class Game
  constructor: ->
    @stage = new createjs.Stage 'canvas'

    createjs.Ticker.addEventListener 'tick', @tick

    @circle = new createjs.Shape
    @circle.graphics.beginFill("red").drawCircle 0, 0, 50
    @circle.x = @circle.y = 50

    @stage.addChild @circle

  tick: (e) =>
    @stage.update()

module.export = new Game()
