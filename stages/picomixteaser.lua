function onCreate()
	-- background shit
	makeLuaSprite('lbmvol2cover', 'stages/lbmvol2', 138, -260);
	setScrollFactor('lbmvol2cover', 1, 1);
   setPropertyFromClass("substates.PauseSubState", "songName", "breakfast-(pico-pixel)")

	addLuaSprite('lbmvol2cover', true);
end

function onUpdate(elapsed)
	setProperty("game.camZooming", false)
end