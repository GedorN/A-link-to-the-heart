Background = Object:extend()

function Background:new(imgPath, x, y)
<<<<<<< Updated upstream
  Background.super.new(self, imgPath, x, y, 800, 600, 0, 2)
=======
  self.sprite = love.graphics.newImage(imgPath)
>>>>>>> Stashed changes
  width = self.sprite:getWidth()
  height = self.sprite:getHeight()
  self.x, self.y = x, y
end

function Background:draw()
  love.graphics.draw(self.sprite, self.x, self.y)
end
