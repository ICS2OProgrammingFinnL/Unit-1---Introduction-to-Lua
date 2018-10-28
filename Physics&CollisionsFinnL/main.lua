-----------------------------------------------------------------------------------------
-- Title: Interacting Objects 2
-- Name: Finn 
-- Course: ICS20
-----------------------------------------------------------------------------------------

-- Hide sataus bar
display.setStatusBar(display.HiddenStatusBar)


local physics = require("physics")

-- load physics
physics.start()

----------------------------------------------------------------------------------------
--Objects
---------------------------------------------------------------------------------------


--Ground 

local ground = display.newImage("Images/ground.png", 0, 0)

-- set the position of the ground
ground.x = display.contentCenterX
ground.y = display.contentHeight
 
--change the width to be the height of the screen
 ground.width = display.contentWidth

-- Add to physics
 physics.addBody(ground, "static" , {friction=0.5, bounce=0.3})

-----------------------------------------------------------------------

local beam = display.newImage("Images/beam_long.png")
--set the x and y pos
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

--set the images length and width
beam.width = display.contentWidth/2
beam.height = display.contentHeight/10

-- rotate the beam -60 degrees sp its on an angle
beam:rotate(45)

--send it to the back layer
beam:toBack()

-- add to physics
physics.addBody(beam, "static" , {friction=0.5, bounce=0.3})


------------------------------------------------------------------
local beam2 = display.newImage("Images/beam_long.png")
--set the x and y pos
beam2.x = display.contentCenterX*1.8
beam2.y = display.contentCenterY*1.65

--set the images length and width
beam2.width = display.contentWidth/2
beam2.height = display.contentHeight/10

--send it to the back layer
beam2:toBack()

-- add to physics
physics.addBody(beam2, "static" , {friction=0.5, bounce=0.3})


-- rotate the beam 70 degrees so its on an almost straight angle
beam2:rotate(-70)


-----------------------------------------------------------------------------
local bkg = display.newImage("Images/bkg.png")

-- set the x,y pos
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

--set the images length and width
bkg.width = display.contentHeight*1.5
bkg.height = display.contentWidth*1.5

--send to back
bkg:toBack()


-----------------------------------------------------------------------------------
--FUNCTIONS
-----------------------------------------------------------------------------------

--create the first ball 
local function firstBall()
	-- creating first ball
	local ball1 = display.newImage("Images/super_ball.png" , 0, 0)
	
		-- add to physics
		physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

------------------------------------------------------------------------------------

local function secondBall()
-- creating second ball
	local ball2 = display.newImage("Images/super_ball.png" , 0, 0)
	
		-- add to physics
		physics.addBody(ball2, {density=1.0, friction=0.5, bounce=1, radius=12.5})

		--make the ball half its original size
		ball2:scale(0.5,0.5)



end		
------------------------------------------------------------------------------------

local function thirdBall()
-- creating second ball
	local ball3 = display.newImage("Images/super_ball.png" , 0, 0)
	
		-- add to physics
		physics.addBody(ball3, {density=.5, friction=0.2, bounce=1, radius=50})

		--make the ball half its original size
		ball3:scale(2,2)



end		
----------------------------------------------------------------------------------------------------
--TIMER DELAYS(for the balls)
--------------------------------------------------------------------------------------------------------------

timer.performWithDelay (0, firstBall)
timer.performWithDelay (500, secondBall)
timer.performWithDelay (1000, thirdBall)





