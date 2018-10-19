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
local redButtton = display.newImageRect("Images/RedButton.png" , 198,96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false
