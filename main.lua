-- Game Project - Main
-- Copyright (C) 2011 Maciek Szejnoch
local ui = require("ui")
local movieclip = require("movieclip")
local mainMenu = require("main_menu")
local optionsMenu = require("options_menu")
local levelSelection = require("level_selection")
local level01_01 = require("level01_01")
local mainGroup, newScreen, oldScreen

-- Function to switch between menu screens
local function showScreen(name)
	if oldScreen then
	transition.to(oldScreen, {time=500, alpha=0, transition=easing.outExpo})
--oldScreen:removeSelf()
	else
	name = mainMenu
	end
newScreen = name.New()
transition.from(newScreen, {time=500, delay=200, alpha=0, transition=easing.outExpo})
oldScreen = newScreen

end

-- Button handler for all menu screens and in-game HUD
function buttonHandler (event)
	if ("release" == event.phase) then
	print (event.id ..  " pressed")
		if ("Play" == event.id) then
		showScreen(levelSelection)
		elseif ("Options" == event.id) then
		showScreen(optionsMenu)
		elseif ("Back" == event.id) then
		showScreen(mainMenu)
		elseif ("OptionsBack" == event.id) then
		showScreen(mainMenu)
		elseif ("LevelBack" == event.id) then
		showScreen(levelSelection)

		
		
		end
	end
end

local function init()
	mainGroup = display.newGroup()	
	showScreen()

end

init()
