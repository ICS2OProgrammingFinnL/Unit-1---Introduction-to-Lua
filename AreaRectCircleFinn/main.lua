-----------------------------------------------------------------------------------------
--Title: AreaRectCircle
--Name: Finn
--This program  calculates the area of a rectangle on the Ipad and shows a rectangle on the iPad. 
--Then it calculates the area of a circle and displays the circle on the iPad.
-----------------------------------------------------------------------------------------

-- Create my local variables
local areaText0
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle 
local myCircle
local areaTextCircle
local circumference 
local radiusOfCircle = 140
local areaOfCircle
local PI = 3.14


-- set the background colour of myscreen. Remember that colours are between 0 and 1.
display.setDefault("background" , 100/255, 20/255, 30/255) 

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--draw the circle that has coordinates of (850,150) and a radius of 140
myCircle = display.newCircle(850, 150, radiusOfCircle)

--anchor the rectangle in the top left corner of the screen and set its (x,y)
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--set the width of the border
myCircle.strokeWidth = 20

--  set the width of the border.
myRectangle.strokeWidth = 20

--set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

--set the color of the circle
myCircle:setFillColor(150/255, 150/255, 200/255)

--set the color of the border
myRectangle:setStrokeColor(0, 0, 255)

--set the color of the border
myCircle:setStrokeColor(255, 0, 0)

--calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

--calculate the area of the circle
areaOfCircle = PI * radiusOfCircle * radiusOfCircle

-- write the area on screen.
areaText = display.newText("The area of this rectangle with width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle ..  " is " .. 
	areaOfRectangle .. " pixels².", 0,0, Arial, textSize)
areaTextCircle = display.newText("The area of this circle with radius of \n" ..
	radiusOfCircle ..  " is " .. areaOfCircle .. " pixels².", 0,0, Arial, textSize)

--anchor the text of rectangle and set its x,y position
areaText.anchorY = 0
areaText.anchorX = 0 
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the colour of the newtext
areaText:setTextColor(1, 1, 1)

--anchor the text of circle and set its x,y position
areaTextCircle.anchorY = 0
areaTextCircle.anchorX = 0 
areaTextCircle.x = 20
areaTextCircle.y = display.contentHeight *3/4

-- set the colour of the newtext
areaText:setTextColor(1, 1, 1)