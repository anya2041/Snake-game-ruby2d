require 'ruby2d'

set background: 'navy'
set fps_cap: 20

SQUARE_SIZE = 20
GRID_WIDTH = Window.width / SQUARE_SIZE
GRID_HEIGHT = Window.height / SQUARE_SIZE

class Snake
    attr_writer :direction
  
    def initialize
      @positions = [[2, 0], [2, 1], [2, 2], [2 ,3]]
      @direction = 'down'
      @growing = false
    end
  