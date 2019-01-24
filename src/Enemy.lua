Enemy = Character:extend()

function Enemy:new(imgPath, x, y, frameWidth, frameHeight, spaceBtweenFrames, numberOfFrames, initialHealth, speed, jumperForce, attack)
    Enemy.super.new(self, imgPath, x, y, frameWidth, frameHeight, spaceBtweenFrames, numberOfFrames, initialHealth, speed, jumperForce)
    self.attack = attack
end

function Enemy:update(dt)
  
end

function Enemy:draw()
    Character.super.draw(self)
end

function Enemy:getAttackPower()
    return self.attack
end

