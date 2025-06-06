--[[ 3 Functions that makes the Game Work are :-
1. love.load()
- Runs when the Game starts.
- uses the features of Love2d game engine.
- we are going to specify global variables, adjust the window sides
and perform any other preliminary setup before the game starts.

2. love.update(dt)
- holds a parameter called "dt"
- this function updates the game loop, means,
- this function will be called every frame when the game is running
- by default games that are created using Love2d runs on 60FPS
- means code inside the function love.update will be running 60 times every second.

3. love.Draw()
- used for Drawing Graphics to the screen,
- anything that the player sees on the screen is the result of the code
- that we write inside the scope of this function.
- similar to love.update, because it runs every single frame as well
- no declaration of variables or calculations to do here, only graphics & images work is done.

]]

function love.load()
    target = {} -- enpty table, main circle target
    target.x = 400
    target.y = 250
    target.radius = 50

    score = 0


    gameFont = love.graphics.newFont(30) -- declaring the font size of score.
end

function love.update(dt)

end

function love.draw()
    love.graphics.setColor(0.5, 0.2, 1)
    love.graphics.circle("fill", target.x, target.y, target.radius)

    love.graphics.setColor(1, 1, 1) -- score color will be white.
    love.graphics.setFont(gameFont)
    love.graphics.print(score, 0, 0)
end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then -- 1 reprents mouse button 1
        local mouseToTarget = distanceBetween(x, y, target.x, target.y)
        if mouseToTarget < target.radius then
            score = score + 1 -- score increases if the player clicks with mouse button 1, anywhere on the screen.
            -- circle randomly changes its position, when clicked.
            target.x = math.random(target.radius, love.graphics.getWidth() - target.radius)
            target.y = math.random(target.radius, love.graphics.getHeight() - target.radius)
        end
    end
end

function distanceBetween(x1, y1, x2, y2)
    return math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
end
