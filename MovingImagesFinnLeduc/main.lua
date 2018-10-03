-----------------------------------------------------------------------------------------
--  Title: Images and Global Variables
--  Name: Finn Leduc 
-- Course: ICS20
-- This program displays an image that moves across the screen
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variable
scrollSpeed = 3

-- background image with width and height 
local backgroundImage = display.newImageRect("Images/background.png" , 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png" , 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the X-value of the ship
local function MoveShip(event)
	 -- add the scroll speed to the x-value of the ship
	 beetleship.x = beetleship + scrollSpeed
	 -- change the transparency of the ship every time it moves so that it fades in
	 beetleship.alpha = beetleship.alpha + 0.01 
end	 

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame" , MoveShip)