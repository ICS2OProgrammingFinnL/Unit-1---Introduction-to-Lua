-----------------------------------------------------------------------------------------
--Title: Numeric Text Field
--Name: Finn
--Course: ICS20
--This program displays a math question and asks the user to answer in a numeric text field terminal.
-----------------------------------------------------------------------------------------

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background" , 200/255, 50/255, 100/255)


--------------------------------------------------------------------------------------------
-- LOCAL VARIABLES
--------------------------------------------------------------------------------------------

--load and play the music
local CorrectSound = audio.loadSound("Sounds/correctSound.mp3")
local CorrectChannel
--load and play the music
local WrongSound = audio.loadSound("Sounds/wrongSound.mp3")
local WrongChannel

-- create my local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local incorrectAnswer
local randomOperator
local startingPoints = 0
local points





--variables for the  timer
local totalSeconds = 5
local secondsLeft

--variables for the
--------------------------------------------------------------------------------------------
--LOCAL FUNCTIONS
--------------------------------------------------------------------------------------------

local function AskQuestion() 
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)
	randomOperator = math.random(1,3)

	if (randomOperator == 1) then
	
		correctAnswer = randomNumber1 + randomNumber2

		-- create question in text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	elseif (randomOperator == 2) then

		correctAnswer = randomNumber1 - randomNumber2

		--create question in text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

	elseif (randomOperator == 3) then

		correctAnswer = randomNumber1 * randomNumber2

		--create question in text object
		questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "
	end
end









	

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function HideIncorrect()
	incorrectObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener(event)

	-- user begins editing "numeric field"
	if ( event.phase == "began") then
		---clear text field
		event.target.text = ""

		elseif event.phase == "submitted" then 
			-- when the answer is (enter key is pressed) set user input to user's answer
			userAnswer = tonumber(event.target.text)

			-- if the users answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then 
				correctObject.isVisible = true
				CorrectChannel = audio.play(CorrectSound)
				startingPoints = startingPoints + 1
				timer.performWithDelay(2000, HideCorrect)

				--display the points going up
				points.text = " Points = " .. startingPoints
			else
				--if they aren't the same
				incorrectObject.isVisible = true
				WrongChannel = audio.play(WrongSound)
				timer.performWithDelay(2000, HideIncorrect)
			end

			event.target.text = ""
		end
    end

---------------------------------------------------------------------------------------------
--OBJECT CREATION
--------------------------------------------------------------------------------------------

--displays a  question and sets the colour
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(155/255, 100/255, 100/255)

points = display.newText("Points = " .. startingPoints , display.contentWidth/1.4, display.contentHeight/2, nil, 50 )
points:setTextColor(155/255, 100/255, 100/255)

--create the correct text object and make it visible
correctObject = display.newText ("Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
correctObject:setTextColor(255/255, 10/255, 50/255)
correctObject.isVisible = false


incorrectObject = display.newText ("Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
incorrectObject:setTextColor(255/255, 10/255, 50/255)
incorrectObject.isVisible = false


--create numeric field 
numericField = native .newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80)
numericField.inputType = "number"

--add thier event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

----------------------------------------------------------------------------------------------
--FUNCTION CALLS
---------------------------------------------------------------------------------------------

-- call the function to ask the question
AskQuestion()