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
    
    def draw
        @positions.each do |position|
          Square.new(x: position[0] * SQUARE_SIZE, y: position[1] * SQUARE_SIZE, size: SQUARE_SIZE - 1, color: 'white')
        end
      end
    
      def grow
        @growing = true
      end
      
      def move
        if !@growing
          @positions.shift
        end
    
        @positions.push(next_position)
        @growing = false
      end

      def can_change_direction_to?(new_direction)
        case @direction
        when 'up' then new_direction != 'down'
        when 'down' then new_direction != 'up'
        when 'left' then new_direction != 'right'
        when 'right' then new_direction != 'left'
        end
      end
    
      def x
        head[0]
      end
    
      def y
        head[1]
      end