function onCreate()
   --All this was borrowed from SFG
   setProperty('camFollowPos.x',650)
   setProperty('camFollowPos.y',520)
   setProperty('camFollow.x',650)
   setProperty('camFollow.y',520)
   setProperty('isCameraOnForcedPos',true)
end

function onEndSong()
   openCustomSubstate('picomixendingscreen', true)
   return Function_Stop;
end

function onCustomSubstateCreate(picomixendingscreen)
   makeLuaSprite('endscreensprite','endscreen')
   scaleObject('endscreensprite', 3, 3);
   setProperty('endscreensprite.antialiasing', false)
   insertToCustomSubstate('endscreensprite')
   playMusic('breakfast-(pico)')
end

function onCustomSubstateUpdate(bitbeatendingscreen)
   if keyJustPressed('accept') then
      exitSong()
   end
end