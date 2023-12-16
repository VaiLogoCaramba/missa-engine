local neon = false;

function onCreate()
	makeLuaSprite('funny', 'light above', 250, 0);
	setScrollFactor('funny', 0.9, 0.9);
	setProperty('funny.visible',true)
	setBlendMode('funny','add')
	addLuaSprite('funny', false);
	setObjectCamera('funny','hud')
	setProperty('funny.alpha', 0)
end

function onStepHit()

	if  curStep == 568 or curStep == 1704 then
		NEONmode('on')
	end
	if  curStep == 824 or curStep == 2472 then
		NEONmode('off')
	end
	if  curStep == 824 then
		setProperty('fondo.alpha',0)
    	setProperty('alf.alpha',0)
    	setProperty('tableta.alpha',0)
    	setProperty('tele.alpha',0)
    	setProperty('dad.visible', false)
		setProperty('funny.alpha',1)
	end
	if  curStep == 1080 then
    	setProperty('dad.visible', true)
		setProperty('funny.alpha',1)
	end	
	if  curStep == 1704 then
		setProperty('funny.alpha',0)
		setProperty('fondo.alpha',1)
    	setProperty('alf.alpha',1)
    	setProperty('tableta.alpha',1)
    	setProperty('tele.alpha',1)
	end
end

function NEONmode(turn)
	cameraFlash('game','FFFFFF',0.3)
	if turn == 'on' then
		neon = true
		doTweenX('aw2','cutsceneText',1200,150,'linear')
		doTweenX('aw','cutsceneText2',1200,150,'linear')
		setProperty('healthBar.visible', false)
	    setProperty('healthBarBG.visible', false)
	    setProperty('iconP1.visible', false)
	    setProperty('iconP2.visible', false)
		setProperty('scoreTxt.visible', false)
        setProperty('timeBarBG.visible', false)
        setProperty('timeBar.visible', false)
        setProperty('timeTxt.visible', false)
		setProperty('cutsceneText2.alpha', 1);
		setProperty('cutsceneText.alpha', 1);
 		setProperty('fondo.alpha',0)
    	setProperty('alf.alpha',0)
    	setProperty('tableta.alpha',0)
    	setProperty('tele.alpha',0)

    	setProperty('fondo2.alpha',1)
    	setProperty('alf2.alpha',1)
    	setProperty('tableta2.alpha',1)
    	setProperty('tele2.alpha',1)

    	setProperty('bartop.alpha', 0)
		setProperty('barbot.alpha', 0)
    	
		triggerEvent('Change Character', '0', 'bf_neon')
		triggerEvent('Change Character', '1', 'MissaNEON')
		triggerEvent('Change Character', '2', 'gf_neon')
	else 
		neon = false
		doTweenX('aw2','cutsceneText',2050,0.1,'linear')
		doTweenX('aw','cutsceneText2',2050,0.1,'linear')
		setProperty('healthBar.visible', true)
	    setProperty('healthBarBG.visible', true)
	    setProperty('iconP1.visible', true)
	    setProperty('iconP2.visible', true)
		setProperty('scoreTxt.visible', true)
        setProperty('timeBarBG.visible', true)
        setProperty('timeBar.visible', true)
        setProperty('timeTxt.visible', true)
		setProperty('cutsceneText2.alpha', 1);
		setProperty('cutsceneText.alpha', 1);
		setProperty('fondo.alpha',1)
    	setProperty('alf.alpha',1)
    	setProperty('tableta.alpha',1)
    	setProperty('tele.alpha',1)

		setProperty('fondo2.alpha',0)
    	setProperty('alf2.alpha',0)
    	setProperty('tableta2.alpha',0)
    	setProperty('tele2.alpha',0)

    	setProperty('bartop.alpha', 1)
		setProperty('barbot.alpha', 1)

		triggerEvent('Change Character', '0', 'bf')
		triggerEvent('Change Character', '1', 'Missa_Segundo')
		triggerEvent('Change Character', '2', 'gf')
	end
end