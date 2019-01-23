function love.load()
  Object = require("src.classic")
  Camera = require ("src.Camera")
  require("src.Entity")
  require("src.Character")
  require("src.Background")
  love.graphics.setDefaultFilter('nearest', 'nearest')
  canvas = love.graphics.newCanvas(800, 600)
  camera = Camera(200, 150, 400, 300)
  camera:setFollowStyle('LOCKON')
  camera:setFollowLerp(0.2)

  bg = Background("img/hh.png", 0, 0)

  love.window.setMode(800, 600)
  x = 0
  y = 0
end

function love.update(dt)
  camera:update(dt)
  camera:follow(x, y)
  require("src.lurker").update()
  if love.keyboard.isDown("w") then
    y = y - 100 * dt
  end
  if love.keyboard.isDown("a") then
    x = x - 100 * dt
  end
  if love.keyboard.isDown("s") then
    y = y + 100 * dt
  end
  if love.keyboard.isDown("d") then
    x = x + 100 * dt
  end
end


function love.draw()
  love.graphics.setCanvas(canvas)
  love.graphics.clear()
  camera:attach()
  -- draw aqui.
  bg:draw()
  love.graphics.points(x, y)
  camera:detach()
  love.graphics.setCanvas()

  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.setBlendMode('alpha', 'premultiplied')
  love.graphics.draw(canvas, 0, 0, 0, 2, 2)
  love.graphics.setBlendMode('alpha')

end

function love.keypressed(key)
  if (key == "escape") then
    love.event.quit()
    print("Obrigado por jogar A link to the heart ;)")
  end
end
