class Game
  constructor: ->
    @stage = new createjs.Stage "canvas"
    circle = new createjs.Shape()

    circle.graphics.beginFill('red').drawCircle 0, 0, 40

    circle.x = circle.y = 40

    @stage.addChild circle

    @stage.update()


module.export = new Game()
