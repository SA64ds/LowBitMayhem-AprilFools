function onCreate()
   --All this was borrowed from SFG
   setProperty('camFollowPos.x',650)
   setProperty('camFollowPos.y',520)
   setProperty('camFollow.x',650)
   setProperty('camFollow.y',520)
   setProperty('isCameraOnForcedPos',true)

   picoYeah=0
   easterEggDelay=2
end

function onUpdate()
   --Ending screen testing
   if keyJustPressed('volume_mute') then
      endSong()
   end
end

function onEndSong()
   openCustomSubstate('bitbeatendingscreen')
   return Function_Stop;
end

function onCustomSubstateCreate(bitbeatendingscreen)
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

function onCustomSubstateUpdatePost(bitbeatendingscreen, easterEggDelay)
	--Easter egg
   if keyPressed('up') and picoYeah==0 then
      picoYeah=1
      playSound('easteregg')
   elseif keyPressed('right') and picoYeah==1 then
      picoYeah=2
      playSound('easteregg')
   elseif keyPressed('up') and picoYeah==2 then
      picoYeah=3
      playSound('easteregg')
   elseif keyPressed('left') and picoYeah==3 then
      picoYeah=4
      playSound('easteregg')
   elseif keyJustPressed('left') and picoYeah==4 then
      playSound('warp')
      loadSong('Bit-Beat (Pico Mix)', 1)
      picoYeah=0 --Just in-case the song load fails
   end
end
