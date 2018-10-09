-----------------------------------------------------------------------------------------
-- Title: Buttons in Lua
-- Name: Finn
-- Course: ICS20
-- This program does something when I click on the button
-----------------------------------------------------------------------------------------

-- set background colour
display.setDefault ("background", 50/255, 155/255, 100/255)

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, its position and make it visible
local bluebutton = display.newImageRect("Images/BlueButton.png" , 198,96)
bluebutton.x = display.contentWidth/2
bluebutton.y = display.contentHeight/2
BlueButton