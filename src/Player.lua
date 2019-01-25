Player = Character:extend()

function Player:new(imgPath, x, y, frameWidth, frameHeight, spaceBtweenFrames, numberOfFrames, initialHealth, speed, jumpForce)
    Player.super.new(self, imgPath, x, y, frameWidth, frameHeight, spaceBtweenFrames, numberOfFrames, initialHealth, speed, jumpForce)
    self.moveRate = 7
end

function Player:update(dt, frames)

    print(self.originInY)
    if love.keyboard.isDown("left") then
        self.orientation = -1
        self.x = self.x - (self.speed * dt)
        if(frames % self.moveRate) == 0 then
            Player.super.nextFrame(self)
        end
    elseif love.keyboard.isDown("right") then
        self.orientation = 1
        self.x = self.x + (self.speed * dt)
        if(frames % 7) == 0 then
            Player.super.nextFrame(self)
        end
    elseif (love.keyboard.isDown("up")) then
       -- AQUI FICARIA O PULO
    elseif (love.keyboard.isDown("down")) then
        
    elseif (love.keyboard.isDown("up") and love.keyboard.isDown("right")) then
        -- AQUI É O PULO PRA FRENTE
    elseif (love.keyboard.isDown("up") and love.keyboard.isDown("left")) then
        -- AQUI É O PULO PARA TRÁS
    end
end

function Player:draw()
    Player.super.draw(self)
end
