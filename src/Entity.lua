Entity = Object:extend()

--[[
    @Author: Gedor Neto
        @class: Entity
    A classe tenta ser a mais genérica possível, aceitando sprites com ou sem mudaça de movimento.
    Parâmetros da construtora:
    * imgPath: caminho da main.lua para o arquivo de imagem (string)
    *x = posição x incial da entidade
    *y = posição y inicial da entidade
    *frameWidth: largura de cada frame(em pixels)
    *frameHeight: altura de cada frame (em pixels)
    *spcaeBtweenFrames: espaço vazio na imagem entre cada frame (em pixels)
    *numberOfFrames: número total de frames na imagem
]]

function Entity:new(imgPath, x, y, frameWidth, frameHeight, spaceBtweenFrames, numberOfFrames)
    self.sprite = love.graphics.newImage(imgPath)
    self.width = self.sprite:getWidth()
    self.height = self.sprite:getHeight()
    
    self.frames = {}
    self.spaceBtweenFrames = spaceBtweenFrames
    self.numberOfFrames = numberOfFrames
    
    self.currentFrame = 1
    self.frameWidth = frameWidth
    self.frameHeight = frameHeight

    self.originInX = frameWidth / 2
    self.originInY = frameHeight / 2

    self.x = x
    self.y = y
    self.orientation = 1

    for i= 0, numberOfFrames - 1 do
        table.insert(self.frames, love.graphics.newQuad( (i * self.frameWidth) + i * self.spaceBtweenFrames, 0, self.frameWidth, self.frameHeight, self.width, self.height))
    end

end

function Entity:update(dt)
end

function Entity:draw()
    love.graphics.draw(self.sprite, self.frames[math.floor(self.currentFrame)], self.x, self.y, 0, self.orientation ,1, self.originInX, self.originInY )
end

function Entity:getHeight()
    return self.frameHeight
end

function Entity:getWidth()
    return self.frameWidth
end

function Entity:getCoordinates()
    local coordinates = {}
    table.insert(coordinates, self.x)
    table.insert(coordinates, self.y)
    return coordinates
end

function Entity:getCoordinateX()
    return self.x
end

function Entity:getCoordinateY()
    return self.y
end

