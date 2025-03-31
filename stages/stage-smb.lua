function onCreate()
	-- background shit
	makeLuaSprite('smb1stage', 'sa64stage', 138, 46);
	setScrollFactor('smb1stage', 1, 1);
	scaleObject('smb1stage', 4, 4);

	addLuaSprite('smb1stage', false);
	setProperty('smb1stage.antialiasing', false)
end

function onUpdate(elapsed)
	setProperty("game.camZooming", false)
end