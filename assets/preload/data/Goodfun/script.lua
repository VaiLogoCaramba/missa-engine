local neon = false;
function onCreate() 

	addCharacterToList('gf_neon','gf') 
	addCharacterToList('MissaNEON','dad') 
	addCharacterToList('bf_neon','boyfriend') 
end

function onStepHit()
	if  curStep == 512 or curStep == 1552 then
		NEONmode('on')
	end

	if  curStep == 896 or curStep == 2048 then
		NEONmode('off')
	end
end

function NEONmode(turn)
	cameraFlash('game','FFFFFF',0.3)
	if turn == 'on' then
		neon = true
 		setProperty('fondo.alpha',0)
    	setProperty('alf.alpha',0)
    	setProperty('tableta.alpha',0)
    	setProperty('tele.alpha',0)

    	setProperty('fondo2.alpha',1)
    	setProperty('alf2.alpha',1)
    	setProperty('tableta2.alpha',1)
    	setProperty('tele2.alpha',1)
    	
		triggerEvent('Change Character', '0', 'bf_neon')
		triggerEvent('Change Character', '1', 'MissaNEON')
		triggerEvent('Change Character', '2', 'gf_neon')
	else 
		neon = false
		setProperty('fondo.alpha',1)
    	setProperty('alf.alpha',1)
    	setProperty('tableta.alpha',1)
    	setProperty('tele.alpha',1)

		setProperty('fondo2.alpha',0)
    	setProperty('alf2.alpha',0)
    	setProperty('tableta2.alpha',0)
    	setProperty('tele2.alpha',0)

		triggerEvent('Change Character', '0', 'bf')
		triggerEvent('Change Character', '1', 'Missa_Segundo')
		triggerEvent('Change Character', '2', 'gf')
	end
end