function camera_track(x, y)
  w = (width / 2) / Zoom
  h = (height / 2) / Zoom
  if x - w >= 0 and x + w <= width then
    camera:lockX(x, Camera.smooth.damped(2))
  end

  if y - h >= 0 and y + h <= height then
    camera:lockY(y, Camera.smooth.damped(2))
  end
end

function love.load()
  --Require--
  Object = require("src.classic")
  require("src.Entity")
  require("src.Character")
  require("src.Enemy")
  require("src.Player")
  require("src.Background")
<<<<<<< Updated upstream
  love.graphics.setDefaultFilter('nearest', 'nearest')
  canvas = love.graphics.newCanvas(800, 600)
  camera = Camera(200, 150, 400, 300)
  camera:setFollowStyle('LOCKON')
  camera:setFollowLerp(0.2)
  frames = 1
  bg = Background("img/back.png", 0, 0)
  p = Player("img/player.png", 100, 100, 49, 84, 10, 5, 100, 200, 50)
  love.window.setMode(800, 600)
  love.window.setFullscreen(true)
  x = 0
  y = 0
=======
  push = require("src.push")
  --Require--
  local _, _, flags = love.window.getMode()
  width, height = love.window.getDesktopDimensions(flags.display) -- flags.display contem o monitor que esta sendo usado.
  love.graphics.setDefaultFilter('nearest', 'nearest') -- Filtro para que o render não use blur e deixe um aspecto pixelado.

  Camera = require("src.Camera") -- Camera.
  push:setupScreen(width, height, width, height, {fullscreen = true}) -- GameScreen Settings.

  Zoom = 2
  bg = Background("img/hh.png", 0, 0)
  camera = Camera(0, 0, Zoom)

  --- Abaixo apagar quando personagem estiver pronto.
  x = 960
  y = 540
  camera:lookAt(x, y)
>>>>>>> Stashed changes
end
--[[  Anotação sobre a Camera:
O tamanho da camera é calculado considerando o width e height dividido por 2 respectivamente,
isso pois ele divide o ponto a ser focado em 4 eixos a partir dele. Ou seja, um zoom de 2 em
uma resolução de 1920 considerando o eixo X significa dividir em 2 partes, 960 a direita do ponto
e 960 a esquerda, então dividir esse valor por 2(que é o Zoom efetivamente), o que resulta em 480 que é a largura da camera.
Basicamente para calcular o tamanho da camera fazemos: (Tamanho TOTAL)
x = GameWidth
y = GameHeight
camSizeX = x / Zoom
camsizeY = y / Zoom
]]
--[[ Dica, efeito interessante: Iniciar a camera em uma posição aleatoria e em update()
colocar para seguir um objeto, gera efeito de movimento da camera até o objeto. Focando.
]]
function love.update(dt)
<<<<<<< Updated upstream
  camera:update(dt)
  p:update(dt, frames)
  camera:follow(p:getCoordinateX(), p:getCoordinateY())
=======
>>>>>>> Stashed changes
  require("src.lurker").update()
  camera_track(x, y)

  if love.keyboard.isDown("w") then
    y = y - 100 * dt
  end
  if love.keyboard.isDown("s") then
    y = y + 100 * dt
  end

  if love.keyboard.isDown("a") then
    x = x - 100 * dt
  end
  if love.keyboard.isDown("d") then
    x = x + 100 * dt
  end
  frames = (frames % 61) + 1
end


function love.draw()
  push:start()
  camera:attach()
<<<<<<< Updated upstream
  bg:draw()
  -- draw aqui.
  p:draw()
=======
  -- Inicio Draw.
  bg:draw()
  love.graphics.points(x, y)
  -- Fim Draw.
>>>>>>> Stashed changes
  camera:detach()
  push:finish()
end

function love.keypressed(key)
  if (key == "escape") then
    love.event.quit()
    print("Obrigado por jogar A link to the heart ;)")
  end
end
