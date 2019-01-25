Background = Object:extend()

function Background:new(imgPath, x, y)
  self.sprite = love.graphics.newImage(imgPath)
end

function Background:draw(a, b)
  love.graphics.draw(self.sprite, a, b)
end

function Background:getWidth()
  return self.sprite:getWidth()
end

function Background:getHeight()
  return self.sprite:getHeight()
end

