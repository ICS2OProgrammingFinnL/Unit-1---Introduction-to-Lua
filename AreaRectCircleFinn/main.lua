-----------------------------------------------------------------------------------------
--Title: AreaRectCircle
--Name: Finn
--This program  calculates the area of a rectangle on the Ipad and shows a rectangle on the iPad. 
--Then it calculates the area of a circle and displays the circle on the iPad.
-----------------------------------------------------------------------------------------

-- Create my local variables
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle 

-- set the background colour of myscreen. Remember that colours are between 0 and 1.
display.setDefault("background" , 100/255, 20/255, 30/255) 

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor the rectangle in the top left corner of the screen and set its (x,y)
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--  set the width of the border.
myRectangle.strokeWidth = 20

--set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

--set the color of the border
myRectangle:setStrokeColor(0, 0, 255)

--calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle
