-----------------------------------------------------------------------------------------
-- Title: Touch and drag 
-- Name: Finn Leduc
-- Course: ICS20
-- This program displays 3 images that react to a person's finger.
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local Girl2 = display.newImageRect("Images/girl2.png" , 150, 150)      
local Girl2Width = Girl2.width
local Girl2Height = Girl2.height

local Girl5 = display.newImageRect("Images/girl5.png" , 150, 150)
local Girl5Width = Girl5.width
local Girl5Height = Girl5.height  

local Planet = display.newImageRect("Images/planet.png" , 150, 150)
local PlanetWidth = Planet.width
local Girl5Height = Planet.height 
--my boolean variables to keep track of which object I touched first
local alreadyTouchedGirl2 = false
local alreadyTouchedGirl5 = false
local alreadyTouchedPlanet = false
-- set the initial x and y position of the images
Girl2.x = 400
Girl2.y = 500

Girl5.x = 300 
Girl5.y = 200

Planet.x = 600
Planet.y = 600

-- Function: Girl5Listener
-- Input: touch listener 
-- Output: none
-- Description: when Girl5 is touched, move her
local function Girl5Listener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedGirl2 == false) then
			alreadyTouchedGirl5 = true
		end	

		if (alreadyTouchedPlanet == false) then
			alreadyTouchedGirl5 = true	
		end	
	end		


	if (touch.phase == "moved") then
		Girl5.x = touch.x
		Girl5.y = touch.y
	end	

	if (touch.phase == "ended") then
		alreadyTouchedGirl5 = false
		alreadyTouchedGirl2 = false
		alreadyTouchedPlanet = false
	end
end		

-- Function: Girl2Listener
-- Input: touch listener 
-- Output: none
-- Description: when Girl2 is touched, move her
local function Girl2Listener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedGirl5 == false) then
			alreadyTouchedGirl2 = true
		end	

		if (alreadyTouchedPlanet == false) then
			alreadyTouchedGirl2 = true	
		end	
	end		


	if (touch.phase == "moved") then
		Girl2.x = touch.x
		Girl2.y = touch.y
	end	

	if (touch.phase == "ended") then
		alreadyTouchedGirl2 = false
		alreadyTouchedGirl5 = false
		alreadyTouchedPlanet = false
	end
end	

-- Function: PlanetListener
-- Input: touch listener 
-- Output: none
-- Description: when Planet is touched, move her
local function PlanetListener(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedGirl5 == false) then
			alreadyTouchedPlanet = true
		end	

		if (alreadyTouchedGirl2 == false) then
			alreadyTouchedPlanet = true	
		end	
	end		


	if (touch.phase == "moved") then
		Planet.x = touch.x
		Planet.y = touch.y
	end	

	if (touch.phase == "ended") then
		alreadyTouchedGirl2 = false
		alreadyTouchedGirl5 = false
		alreadyTouchedPlanet = false
	end
end	

-- add the respective listeners to each object
Girl5:addEventListener("touch" , Girl5Listener)

-- add the respective listeners to each object
Girl2:addEventListener("touch" , Girl2Listener)

-- add the respective listeners to each object
Planet:addEventListener("touch" , PlanetListener)