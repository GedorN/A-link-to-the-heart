Background = Object:extend()

function Background:new(imgPath, x, y)
  self.sprite = love.graphics.newImage(imgPath)
  width = self.sprite:getWidth()
  height = self.sprite:getHeight()
  self.x, self.y = x, y
end

function Background:draw()
  love.graphics.draw(self.sprite, self.x, self.y)
end
