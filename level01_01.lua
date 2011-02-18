-- Game Project - Level 01 01
-- Copyright (C) 2011 Maciek Szejnoch
module(..., package.seeall)

function New()
	-- Create groups --
	local mainGroup = display.newGroup()
	local hud = display.newGroup()
	--	local bg_image = display.newImage("resources/main_menu_background.png", true)

	local buttonBack = ui.newButton{
	default = "resources/main_menu_button_back.png",
	over = "resources/main_menu_button_back_highlight.png",
	onEvent = buttonHandler,
	id = "LevelBack"
}
		
	mainGroup:insert(hud, true)
	hud:insert(buttonBack, true)
	buttonBack.x = display.contentWidth - display.contentWidth + 50
	buttonBack.y = display.contentHeight  - 50
	return mainGroup
	end
