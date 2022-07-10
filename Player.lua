Player = {}

function Player:load()
    Player.xpos = 400
    Player.ypos = 300
    Player.Size = 32
    Player.Width = Player.Size
    Player.Height = Player.Size
end

function Player:update(dt)
end

function Player:draw()
    love.graphics.rectangle("fill", Player.xpos, Player.ypos, Player.Width, Player.Height)
end