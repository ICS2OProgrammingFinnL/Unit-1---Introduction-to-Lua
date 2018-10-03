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
local 