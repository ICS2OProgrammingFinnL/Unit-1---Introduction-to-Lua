-----------------------------------------------------------------------------------------
-- Title: Whack a mole 
-- Name: Finn
--  Course: ICS20
--
-----------------------------------------------------------------------------------------

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

--set bkg colour
display.setDefault("background" , 100/255, 100/255, 200/255)

	--creating mole 
	local mole = display.newImage( "Images/mole.png", 0, 0 )

	mole.x = display.contentCenterX
	mole.y = display.contentCenterY

 mole:scale(0.3,0.3)

mole.isVisible = false



--point variables
local startingPoints = 0
local pointText

-- music
local Music = audio.loadSound("Sounds/Music.mp3")
local MusicChannel

-- sound when Whacked
local Ow= audio.loadSound("Sounds/cartoon.mp3")
local OwChannel

--play background music
MusicChannel = audio.play (Music)



----------------------------------------------------------------------------------------------
--FUNCTIONS
----------------------------------------------------------------------------------------------
function PopUp()
	-- choosing random pos on the screen between 0 and the size of the screen
	mole.x = math.random( 0 ,  display.contentWidth)
	mole.y = math.random (0 , display.contentHeight)

	mole.isVisible = true

	timer.performWithDelay(500, Hide)

end

--This function calls the popup function ater 3 seconds
function PopUpDelay()
	timer.performWithDelay( 3000, PopUp)
end

-- This function makes the mole invisible and then calls the PopUpDelay function
function Hide()
	-- changing visibility
	mole.isVisible = false

	PopUpDelay()
end

--this function sarts the game
function GameStart()
	PopUpDelay()
end

--this function increments the score only i the mole is clicked. It then displays the new score
function Whacked(event)
	-- if touch phase just started
	if (event.phase == "began") then
		--update points
		startingPoints = startingPoints + 1
		pointsText.text = "points = " .. startingPoints
		 OwChannel = audio.play(Ow)


	end
end



--Listeners
---------------------------------------------------------------------------------
-- I add the listener so that if the mole is touched the whack function is called
mole:addEventListener( "touch" , Whacked)

--start the game
GameStart()

--Text
pointsText = display.newText("Points = " .. startingPoints , display.contentWidth/1.4, display.contentHeight/2, nil, 50 )
pointsText:setTextColor(155/255, 0/255, 100/255)

