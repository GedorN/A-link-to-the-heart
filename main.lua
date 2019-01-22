function love.load()
  Object = require("src.classic")
  require("src.Entity")
  --require("src.Background")
  --bg = Background("img/bgTest.png", 0, 0)

  love.window.setFullscreen(true)

end

function love.update(dt)
  require("src.lurker").update()
end

function love.draw()
end

function love.keypressed(key)
  if (key == "escape") then
    love.event.quit()
    print("Obrigado por jogar A link to the heart ;)")
  end
end
