Character = Entity:extend()

--[[
    @Author: Gedor Neto
        @class: Entity
                |
                |__Character
    A classe tenta, por meio de métodos genéricos, ser o mais desacoplada possível, podendo ser derivada por qualquer classe de personagem
    Parâmetros da construtora:
    * imgPath: caminho da main.lua para o arquivo de imagem (string)
    *x = posição x incial da entidade
    *y = posição y inicial da entidade
    *frameWidth: largura de cada frame(em pixels)
    *frameHeight: altura de cada frame (em pixels)
    *spcaeBtweenFrames: espaço vazio na imagem entre cada frame (em pixels)
    *numberOfFrames: número total de frames na imagem
    *initialHealth: vida inical o personagem
    *speed: velocidade do personagem
    *jumpForce: capacidade de pulo do personagem
]]


function Character:new(imgPath, x, y, frameWidth, frameHeight, spaceBtweeenFrames, numberOfFrames, initialHealth, speed, jumpForce)
    Character.super.new(self, imgPath, x, y, frameWidth, frameHeight, spaceBtweeenFrames, numberOfFrames)
    self.health = initialHealth
    self.speed = speed
    self.jump = jumpForce

    self.originInX = frameWidth / 2
    self.originInY = frameHeight / 2

end

function Character:update(dt)
  
end

function Character:draw()
    Character.super.draw(self)
end

function Character:nextFrame()
    self.currentFrame = ((self.currentFrame) % self.numberOfFrames ) + 1
end

function Character:setCoordinateX(valueOfX)
    self.x = valueOfX
end

function Character:setCoordinateY(valueOfY)
    self.y = valueOfY
end

--****************** Essa função recebe um vetor contento value[1] = x e value[2] = y ************--
function Character:setCoordinates(value)
    self.x = value[1]
    self.y = value[2]
end

function Character:setDamage(damage)
    self.health = self.health - damage
end

function Character:getSpeed()
    return self.speed
end

function Character:getJump()
    return self.jump
end

function Character:getHealth()
    return self.health
end


