require("Player")

function love.load()
    love.window.setMode(800, 600, {resizable = true})
    Player:load()
end

function love.update(dt)
    if love.keyboard.isDown("escape") then 
        love.event.quit()
    end
    Player:update(dt)
end

function love.draw()
    Player:draw()
end