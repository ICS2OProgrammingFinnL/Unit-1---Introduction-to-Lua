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




local function function_name( ... )
	-- body
end =