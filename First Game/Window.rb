class Window < Gosu::Window

    def initialize
        super(300,300,false)
        @player = Player.new(self)
    end

    def draw
      @player.draw
    end

        def update
      if button_down? Gosu::Button::KbLeft
        @player.move_left
      end

      if button_down? Gosu::Button::KbRight
        @player.move_right
      end

      if button_down? Gosu::Button::KbDown
        @player.move_down
      end

      if button_down? Gosu::Button::KbUp
        @player.move_up
      end

    end

end
