-- Game Project - Options Menu
-- Copyright (C) 2011 Maciek Szejnoch
module(..., package.seeall)

function New()
	-- Create groups --
	local mainGroup = display.newGroup()
	local background = display.newGroup()
	local buttons = display.newGroup()
	-- Create background and logo
	local bg_image = display.newImage("resources/main_menu_background.png", true)

	local buttonOptionsBack = ui.newButton{
	default = "resources/main_menu_button_back.png",
	over = "resources/main_menu_button_back_highlight.png",
	onEvent = buttonHandler,
	id = "OptionsBack"
}
		
	mainGroup:insert(background, true)
	mainGroup:insert(buttons, true)
	background:insert(bg_image, true)
   	background.x = display.contentWidth / 2; background.y = display.contentHeight / 2 
	buttons:insert(buttonOptionsBack, true)
	buttonOptionsBack.x = display.contentWidth - display.contentWidth + 50
	buttonOptionsBack.y = display.contentHeight  - 50
	return mainGroup
	end
