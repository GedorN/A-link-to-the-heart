function love.load()
  Object = require("src.classic")
  require("src.Entity")

  love.window.setFullscreen(true)

end

function love.update(dt)
end

function love.draw()
end

function love.keypressed(key)
  if (key == "escape") then
    love.event.quit()
    print("Obrigado por jogar A link to the heart ;)")
  end
end
