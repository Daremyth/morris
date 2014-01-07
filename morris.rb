require 'gosu'
require_relative 'circle'

class GameWindow < Gosu::Window
  def initialize
    super(600,600,false) 
    self.caption = "Three Men's Morris"
  
    @background_image = Gosu::Image.new(self, "redwood_bg.png", true)
  end
  
  def update
  end
  
  def draw
    @background_image.draw(-8,-8,0)
  end
end

window = GameWindow.new
window.show
