Background = Entity:extend()

function Background:new(imgPath, x, y)
  Background.super.new(self, imgPath, x, y, 800, 600, 0, 2)
  width = self.sprite:getWidth()
  height = self.sprite:getHeight()
end
