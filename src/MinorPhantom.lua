MinorPhantom = Character:extend()

function  MinorPhantom:new(imgPath, x, y, frameWidth, frameHeight, spaceBtweenFrames, numberOfFrames, initialHealth, speed, jumpForce, finalX)
    MinorPhantom.super.new(self, imgPath, x, y, frameWidth, frameHeight, spaceBtweenFrames, numberOfFrames, initialHealth, speed, jumpForce)
    self.moveRate = 7
    self.x = x
    self.xInitial = x
    self.xFinal = finalX
end

function MinorPhantom:update(dt, frames)
    if(self.x <= self.xInitial) then
        self.orientation = 1
    elseif (self.x >= self.xFinal) then
        self.orientation = -1
    end

    if(self.orientation == 1) then
        self.x = self.x + (self.speed * dt)
    else
        self.x = self.x - (self.speed * dt)
    end
end

function MinorPhantom:draw()
    MinorPhantom.super.draw(self)
end