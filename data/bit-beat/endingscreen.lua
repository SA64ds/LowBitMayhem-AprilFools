function onSongStart()
   endscreen=0
   picoyeah=0
end

function onEndSong()
   endscreen=1
   playMusic('breakfast-(pico)')
   makeLuaText('aprilFoolsHeading','Happy April Fools!')
   addLuaText('aprilFoolsHeading')
   return Function_Stop
end

function onKeyPress(key)
   if endscreen==1 then
      endSong()
   end
end

function onUpdate()
   if picoyeah==6 then
      loadSong('Bit-Beat (Pico Mix)', 1)
   end
end