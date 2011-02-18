-- Game Project - Level selection
-- Copyright (C) 2011 Maciek Szejnoch
module(..., package.seeall)

function New()
	-- Create groups --
	local mainGroup = display.newGroup()
	local background = display.newGroup()
	local buttons = display.newGroup()
	-- Create background and buttons
	local bg_image = display.newImage("resources/level_selection_background.png", true)
	local header = display.newImage("resources/select_level.png", true)
	local buttonLevelSelectionBack = ui.newButton{
	default = "resources/main_menu_button_back.png",
	over = "resources/main_menu_button_back_highlight.png",
	onEvent = buttonHandler,
	id = "Back"
}
	local buttonNumber01 = ui.newButton{
	default = "resources/level_button_01.png",
	over = "resources/level_button_01_highlight.png",
	onEvent = buttonHandler,
	id = "Level01_01"
}
	local buttonNumber02 = ui.newButton{
	default = "resources/level_button_02.png",
	over = "resources/level_button_02_highlight.png",
	onEvent = buttonHandler,
	id = "Level01_02"
}
	local buttonNumber03 = ui.newButton{
	default = "resources/level_button_03.png",
	over = "resources/level_button_03_highlight.png",
	onEvent = buttonHandler,
	id = "Level01_03"
}
	mainGroup:insert(background, true)
	mainGroup:insert(buttons, true)
	background:insert(bg_image, true)	
	background:insert(header, true)
	buttons:insert(buttonLevelSelectionBack, true)
	buttons:insert(buttonNumber01, true)
	buttons:insert(buttonNumber02, true)
	buttons:insert(buttonNumber03, true)
	background.x = display.contentWidth / 2; background.y = display.contentHeight / 2 
	header.y = -200
	buttonNumber01.x = display.contentWidth /2 - 90; buttonNumber01.y = display.contentHeight / 2 - 80
	buttonNumber02.x = display.contentWidth /2 - 30; buttonNumber02.y = display.contentHeight / 2 - 80
	buttonNumber03.x = display.contentWidth /2 + 30; buttonNumber03.y = display.contentHeight / 2 - 80
	buttonLevelSelectionBack.x = display.contentWidth - display.contentWidth + 50
	buttonLevelSelectionBack.y = display.contentHeight  - 50
	return mainGroup
end
