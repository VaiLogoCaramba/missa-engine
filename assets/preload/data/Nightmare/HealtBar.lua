
function opponentNoteHit()
	health = getProperty('health')
 if getProperty('health') > 0.1 then
	setProperty('health', health- 0.01);
 end

 	triggerEvent('Screen Shake', '0.05, 0.01', '0, 0');
end
