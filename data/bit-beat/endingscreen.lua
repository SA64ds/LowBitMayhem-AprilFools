function onCreate()
   --All this was borrowed from SFG
   setProperty('camFollowPos.x',650)
   setProperty('camFollowPos.y',520)
   setProperty('camFollow.x',650)
   setProperty('camFollow.y',520)
   setProperty('isCameraOnForcedPos',true)

end

function onEndSong()
   playMusic('breakfast-(pico)')
   openCustomSubstate('endingscreen')
   return Function_Stop
end

function onCustomSubstateCreate(endingscreen)
   makeLuaSprite('endscreensprite','endscreen')
   insertToCustomSubstate('endscreensprite')
end

function onCustomSubstateUpdate(endingscreen)
   if (getPropertyFromClass('flixel.FlxG', 'keys.justPressed.enter') or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.p')) and endscreen==1 then
      endSong()
   end
   if picoyeah==6 then
      loadSong('Bit-Beat (Pico Mix)', 1)
   end
end