function onCreate()
   --All this was borrowed from SFG
   setProperty('camFollowPos.x',650)
   setProperty('camFollowPos.y',520)
   setProperty('camFollow.x',650)
   setProperty('camFollow.y',520)
   setProperty('isCameraOnForcedPos',true)

   picoYeah=0
end

function onEndSong()
   openCustomSubstate('bitbeatendingscreen', true)
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
   --Easter egg
   if keyJustPressed('up') and picoYeah==0
      picoYeah=1
   elseif keyJustPressed('right') and picoYeah==1 then
      picoYeah=2
   elseif keyJustPressed('up') and picoYeah==2 then
      picoYeah=3
   elseif keyJustPressed('left') and picoYeah==3 then
      picoYeah=4
   elseif keyJustPressed('left') and picoYeah==4 then
      picoYeah=5
   end
   
   if keyJustPressed('accept') then
      exitSong()
   end
   if picoyeah==5 then
      loadSong('Bit-Beat (Pico Mix)', 1)
   end
end