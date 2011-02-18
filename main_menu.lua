-- Game Project - Main Menu
-- Copyright (C) 2011 Maciek Szejnoch
module(..., package.seeall)

function New()
	-- Create groups --
	local mainGroup = display.newGroup()
	local background = display.newGroup()
	local buttons = display.newGroup()
	-- Create background and logo
	local bg_image = display.newImage("resources/main_menu_background.png", true)
	local logo = movieclip.newAnim{"resources/main_menu_logo02.png","resources/main_menu_logo.png","resources/main_menu_logo03.png","resources/main_menu_logo.png"}
	local buttonPlay = ui.newButton{
		default = "resources/main_menu_button_play.png",
		over = "resources/main_menu_button_play_highlight.png",
		onEvent = buttonHandler,
		id = "Play"
	}
	local buttonOptions = ui.newButton{
	default = "resources/main_menu_button_options.png",
	over = "resources/main_menu_button_options_highlight.png",
	onEvent = buttonHandler,
	id = "Options"
}
	mainGroup:insert(background, true)
	mainGroup:insert(buttons, true)
	background:insert(bg_image, true)
	background:insert(logo, true)
	buttons:insert(buttonPlay, true)
	buttons:insert(buttonOptions, true)
   	background.x = display.contentWidth / 2; background.y = display.contentHeight / 2 
	logo.y = -120
	logo:play()
   	buttons.x = display.contentWidth / 2; buttons.y = display.contentHeight / 2 + 50
	buttonOptions.y = 100
	transition.from(logo, {time=1500, alpha=0, y=-300, transition=easing.outExpo})
	transition.from(buttonOptions, {time=600, delay=800, x=200, alpha=0, transition=easing.outExpo})
	transition.from(buttonPlay, {time=600, delay=500, x=200, alpha=0, transition=easing.outExpo})
--	mainGroup:removeSelf()
	return mainGroup
	end
