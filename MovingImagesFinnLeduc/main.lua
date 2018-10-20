-----------------------------------------------------------------------------------------
--  Title: Images and Global Variables
--  Name: Finn Leduc 
-- Course: ICS20
-- This program displays an image that moves across the screen
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variable
local scrollSpeed = 3

-- background image with width and height 
local backgroundImage = display.newImageRect("Images/background.png" , 2048, 1536)

-- beetleship image with width and height
local beetleship = display.newImageRect("Images/beetleship.png" , 200, 200)

<<<<<<< HEAD
-- octopus image with width and height
=======
>>>>>>> 7c609048c666ecb87d1ce5a21eb0ec3930a504cd
local octopus = display.newImageRect("Images/octopus.png" , 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

<<<<<<< HEAD
=======
--set the scale of the octopus to change direction
octopus.xScale = -1

-- set the image to opaque
>>>>>>> 7c609048c666ecb87d1ce5a21eb0ec3930a504cd
octopus.alpha = 1

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

<<<<<<< HEAD

--load and play the music
local Music = audio.loadSound("Sounds/Music.mp3")
local MusicChannel

MusicChannel = audio.play(Music)


local function StopMusic()
	-- Function
end

=======
-- set the initial x and y position of the octopus
octopus.x = 1048
octopus.y = display.contentHeight * 3/4
>>>>>>> 7c609048c666ecb87d1ce5a21eb0ec3930a504cd

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the X-value of the ship
local function MoveShip(event)
	 -- add the scroll speed to the x-value of the ship
	 beetleship.x = beetleship.x + scrollSpeed
	 -- change the transparency of the ship every time it moves so that it fades in
	 beetleship.alpha = beetleship.alpha + 0.01 
end	 


-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the X-value of the ship

local function MoveOctopus(event)
	 -- add the scroll speed to the x-value of the ship
	 octopus.x = octopus.x - scrollSpeed
	 -- change the transparency of the ship every time it moves so that it fades in
	 octopus.alpha = octopus.alpha - 0.0001 
end	 

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame" , MoveShip)

<<<<<<< HEAD
-- set the initial x and y position of octopus
octopus.x = 1048
octopus.y = display.contentHeight/1.5

octopus.xScale = -1
-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the X-value of the ship
local function MoveShip(event)
	 -- add the scroll speed to the x-value of the ship
	 octopus.x = octopus.x - scrollSpeed
	 -- change the transparency of the ship every time it moves so that it fades in
	 octopus.alpha = octopus.alpha - 0.0001 
end	 

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame" , MoveShip)
=======
-- MoveOctopus will be called over and over again
Runtime:addEventListener("enterFrame" , MoveOctopus)
>>>>>>> 7c609048c666ecb87d1ce5a21eb0ec3930a504cd
