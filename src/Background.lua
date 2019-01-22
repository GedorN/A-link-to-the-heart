Background = Entity:extend()

function Background:new(imgPath, x, y)
  Background.super.new(self, imgPath, x, y, 0, 0, 0, 0)
  width = self.sprite:getWidth()
  height = self.sprite:getHeight()
end
