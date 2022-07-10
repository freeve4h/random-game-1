Player = {}

function Player:load()
    Player.xpos = 400
    Player.ypos = 300
    Player.Size = 32
    Player.Width = Player.Size
    Player.Height = Player.Size
    Player.Speed = 400
end

function Player:update(dt)
    Player:Bounds()
    if love.keyboard.isDown("up") then 
        Player.ypos = Player.ypos - Player.Speed * dt
    end
    if love.keyboard.isDown("down") then 
        Player.ypos = Player.ypos + Player.Speed * dt
    end
    if love.keyboard.isDown("right") then 
        Player.xpos = Player.xpos + Player.Speed * dt 
    end
    if love.keyboard.isDown("left") then 
        Player.xpos = Player.xpos - Player.Speed * dt 
    end
    Player:Bounds()
end

function Player:draw()
    love.graphics.rectangle("fill", Player.xpos, Player.ypos, Player.Width, Player.Height)
end

function Player:Bounds()
    if Player.xpos < 0 then 
        Player.xpos = 0
    elseif Player.xpos + Player.Width > 800 then 
        Player.xpos = 800 - Player.Width
    end
    if Player.ypos < 0 then 
        Player.ypos = 0
    elseif Player.ypos + Player.Height > 600 then 
        Player.ypos = 600 - Player.Height 
    end
end