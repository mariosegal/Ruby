



require_relative 'window'
require_relative 'player'

require 'gosu'

class Window < Gosu::Window

    def initialize
        super(300,300,false)
        @player = Player.new(self)
    end


    def draw
        @player.draw
    end

end

class Player
    def initialize(window)
        @window = window
        @icon = Gosu::Image.new(@window, "player.png", true)
    end


    def draw
        @icon.draw(0,0,1)
    end
end



window = Window.new
window.show
