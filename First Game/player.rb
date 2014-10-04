

class Player
    def initialize(window)
        @window  = window
        @icon = Gosu::Image.new(@window, '/Users/mario/Documents/Ruby/First Game/player.png',true)
        @x = 0
        @y = 0
    end

    def draw
        @icon.draw(@x, @y, 1)
    end

    def move_left
      @x = @x - 1
      if @x < 0
        @x = 0
      end
    end

    def move_right
        @x = @x + 1
        if @x > @window.width-50
            @x = @window.width-50
        end
    end

    def move_down
        @y = @y + 1
        if @y > @window.height-50
            @y = @window.height-50
        end
    end

    def move_up
        @y = @y - 1
        if @y < 0
            @y = 0
        end
    end
end
