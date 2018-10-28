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

local ground = display.newImage("Physics/ground.png", 0, 0)

-- set the position of the ground
ground.x = display.contentCenterX
ground.y = display.contentHeight
 
--change the width to be the height of the screen
 ground.width = display.contentWidth

-- Add to physics
 physics.addBody(ground, "static " , {friction=0.5, bounce=0.3})








