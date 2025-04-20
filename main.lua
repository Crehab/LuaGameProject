--[[ 3 Functions that makes the Game Work are :-
1. love.load() 
- Runs when the Game starts.
- uses the features of Love2d game engine. 
- we are going to specify global variables, adjust the window sides
and perform any other preliminary setup before the game starts.

2. love.update(dt)
- holds a parameter called "dt"
- this function updates the game loop means,
- this function will be called every frame when the game is running
- by default games that are created using Love2d runs on 60FPS
- means code inside the function love.update will be running 60 times every second.

3. love.Draw()
- used for Drawing Graphics to the screen,
- anything that the player sees on the screen is the result of the code 
- that we write inside the scope of this function. 
- similary to love.upddate, because it runs every single frame as well
- no declaration of variables or calculations to do here, only graphics & images work is done.

]] 

function love.load()

end


function love.update(dt)

end 

function love.draw()
  love.graphics.setColor(1, 0, 1)
  love.graphics.rectangle("line", 315, 100, 170, 140) -- outlined rectangle demonstration.
  -- love.graphics.rectangle("fill", 0, 0, 100, 100) -- filled rectangle demonstration
  love.graphics.setColor(1, 1, 0)
  love.graphics.circle("fill", 400, 100, 50, 50) 
end
