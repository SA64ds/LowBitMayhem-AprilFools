function onCreatePost()
   setProperty('noReset', true); -- prevents key from doing anything
end

function onUpdate()
if keyJustPressed('reset') then
   if difficulty==2 then
      loadSong('roses-erect',2) -- type any song that you want
   else
      loadSong('roses-erect',1)
   end
   setPropertyFromClass('PlayState', 'chartingMode', false)
end
end