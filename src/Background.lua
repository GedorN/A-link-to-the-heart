Background = Entity:extend()

function Background:new(imgPath, x, y)
  Background.super.new(self, imgPath, x, y, 514, 402, 0, 1)
  width = self.sprite:getWidth()
  height = self.sprite:getHeight()
end
