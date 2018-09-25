-----------------------------------------------------------------------------------------
--Name: Finn Leduc
--Course: ICS20
--This program displays Hello, World on te iPad simulator and "Hellooooooo!" to the command terminal
-----------------------------------------------------------------------------------------

-- print "Hello, World" yo the command terminal
print ("***Hellooooooo!")

-- hide the status bar
display.setDefault("background", 240/255,0/255, 100/255)

--create a local variable
local textObject
local signature

--displays text on the screen at position x = 500 and y = 500 with a default font style and font size of 50
textObject = display.newText( "Hello, Finn!" , 500, 500, nil, 70 )

--sets the colour of the text
textObject:setTextColor(250/255, 250/255, 250/255)

--displays my name
signature = display.newText( "From: Finn" , 650, 600, nil, 50 )