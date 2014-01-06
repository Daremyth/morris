require 'gosu'
require_relative 'circle'

class GameWindow < Gosu::Window
  def initialize
    super(600,600,false) 
    self.caption = "Three Men's Morris"
  
    @background_image = Gosu::Image.new(self, Circle.new(200), true)
  end
  
  def update
  end
  
  def draw
    @background_image.draw(50,50,0)
  end
end

window = GameWindow.new
window.show
