-----------------------------------------------------------------------------------------
-- Title: Buttons in Lua
-- Name: Finn
-- Course: ICS20
-- This program does something when I click on the button
-----------------------------------------------------------------------------------------

-- set background colour
display.setDefault ("background", 50/255, 100/255, 100/255)

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, its position and make it visible
local blueButton = display.newImageRect("Images/BlueButton.png" , 198,96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true


-- create red button, its position and make it invisible
local redButton = display.newImageRect("Images/RedButton.png" , 198,96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false


-- create Thumbs Up image, its position and make it invisible
local ThumbsUp = display.newImageRect("Images/ThumbsUp.png" ,200,200)
ThumbsUp.x = display.contentWidth/1.3
ThumbsUp.y = display.contentHeight/2
ThumbsUp.isVisible = false


-- create text object, its position and make it invisible
local Clicked = display.newText("Clicked!" , 198,96)
Clicked.x = display.contentWidth/2
Clicked.y = display.contentHeight/3
Clicked.isVisible = false

--load Boing noise 
local Boing = audio.loadSound ("Sounds/BoingSound.mp3")
local BoingChannel

-- Function: BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: When the blue button is clicked, it will make the text appear with the red button
local function BlueButtonListener( touch )
	if (touch.phase == "began" ) then
		blueButton.isVisible = false
		redButton.isVisible = true
		Clicked.isVisible = true
		ThumbsUp.isVisible = true
		--play noise
		BoingChannel = audio.play(Boing)
	end

		if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		Clicked.isVisible = false
		ThumbsUp.isVisible = false
	end
end

-- Function: RedButtonListener
-- Input: touch listener
-- Output: none
-- Description: When the red button is clicked, it will make the text appear with the red button
local function RedButtonListener( touch )
	if (touch.phase == "began" ) then
		blueButton.isVisible = true
		redButton.isVisible = false
		Clicked.isVisible = false
	end
end

-- add the respective listeners to each object
blueButton:addEventListener("touch" , BlueButtonListener)

redButton:addEventListener("touch" , RedButtonListener)