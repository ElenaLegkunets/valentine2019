-- Example: Rotating images

angle = 0

function love.load()
    ball = love.graphics.newImage("assets/love-big-ball.png")
    i1 = love.graphics.newImage("assets/1.jpg")
    i2 = love.graphics.newImage("assets/2.jpg")
    i3 = love.graphics.newImage("assets/3.jpg")
    i4 = love.graphics.newImage("assets/4.jpg")
    i5 = love.graphics.newImage("assets/5.jpg")
    i6 = love.graphics.newImage("assets/6.jpg")
    i7 = love.graphics.newImage("assets/7.jpg")
    love.window.setTitle("I love you!")
end

function love.update(dt)
    angle = (angle + dt) % (2 * math.pi)
    angle2 = (angle - dt) % (2 * math.pi)
    x1, y1 = 400 + math.cos(angle)*100, 300 + math.sin(angle)*100
    x2, y2 = 200 - math.cos(angle)*100, 150 - math.sin(angle)*100
    x3, y3 = 500 + math.cos(angle2)*100, 200 + math.sin(angle2)*100
    x4, y4 = 600 - math.cos(angle2)*100, 350 - math.sin(angle2)*100
    x5, y5 = 400 - love.math.random(1, angle1) * 100, 450 - love.math.random(1, angle2) * 100
    huge = love.graphics.newFont(42)
    love.graphics.setFont(huge)
end

function love.draw()
  love.graphics.draw(i6, 100, 180)
  love.graphics.draw(i3, 150, -150)
  love.graphics.draw(i4, -180, -50, 0, 0.2, 0.2)

  love.graphics.draw(i2, 10, 250)
  love.graphics.draw(i7, 500, 50)

  love.graphics.draw(i1, -20, 420)



  -- love.graphics.draw(i4, 450, 550)
  -- love.graphics.draw(i5, 250, 450)
  -- love.graphics.draw(i6, 50, 450)



  love.graphics.draw(ball, x1, y1, angle)
  love.graphics.draw(ball, x2, y2, angle)
  love.graphics.draw(ball, x3, y3, angle2)
  love.graphics.draw(ball, x4, y4, angle2)
  love.graphics.draw(ball, x1, y4, angle)
  love.graphics.draw(ball, x2, y3, angle)
  love.graphics.draw(ball, x2, y1, angle2)
  love.graphics.draw(ball, x4, y3, angle2)
  love.graphics.draw(ball, x4, y1, angle)
  love.graphics.draw(ball, x3, y2, angle)
  love.graphics.draw(ball, x1, y2, angle2)
  love.graphics.draw(ball, x3, y4, angle2)
  -- love.graphics.draw(image, x5, y5)
  love.graphics.print("I love you!", 300, 300)

end
