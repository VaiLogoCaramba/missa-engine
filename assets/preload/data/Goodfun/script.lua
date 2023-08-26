local neon = false;

function BarsDef()
	doTweenY('def1','bartop',-370, 1,'sineInOut')
	doTweenY('def2','barbot',570, 1,'sineInOut')
	noteTweenY('NOTEMOVE1', 0, 120, 1, 'sineInOut')	
	noteTweenY('NOTEMOVE2', 1, 120, 1, 'sineInOut')
	noteTweenY('NOTEMOVE3', 2, 120, 1, 'sineInOut')
	noteTweenY('NOTEMOVE4', 3, 120, 1, 'sineInOut')
	noteTweenY('NOTEMOVE5', 4, 120, 1, 'sineInOut')
	noteTweenY('NOTEMOVE6', 5, 120, 1, 'sineInOut')
	noteTweenY('NOTEMOVE7', 6, 120, 1, 'sineInOut')
	noteTweenY('NOTEMOVE8', 7, 120, 1, 'sineInOut')
end

function barsGone()
	doTweenY('gone1','bartop', -870,0.8,'sineOut')
	doTweenY('gone2','barbot', 800,0.8,'sineOut')	
end

function onCreate()
	makeLuaText('cutsceneText', '"[GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN]"');
    setObjectCamera('cutsceneText', 'camOther');
    screenCenter('cutsceneText', 'x');
    setTextSize('cutsceneText', 28);
    setProperty('cutsceneText.alpha', 0);
    addLuaText('cutsceneText', true);

	makeLuaText('cutsceneText2', '"[GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN][GOODFUN]"', 0,2050, 683);
    setObjectCamera('cutsceneText2', 'camOther');
    screenCenter('cutsceneText2', 'x');
    setTextSize('cutsceneText2', 28);
    setProperty('cutsceneText2.alpha',0);
    addLuaText('cutsceneText2', true);


	makeLuaSprite('bartop','',-200, -870)
	makeGraphic('bartop',2000,500,'000000')
	addLuaSprite('bartop',true)
    setScrollFactor('bartop',1,1)
    setObjectCamera('bartop','camother')

    makeLuaSprite('barbot','',-200,800)
	makeGraphic('barbot',2000,500,'000000')
	addLuaSprite('barbot',true)
    setScrollFactor('barbot',1,1)
    setObjectCamera('barbot','camother')

	addCharacterToList('gf_neon','gf') 
	addCharacterToList('MissaNEON','dad') 
	addCharacterToList('bf_neon','boyfriend') 
end

function onStepHit()


	if  curStep == 512 or curStep == 1552 then
		NEONmode('on')
	end
	if  curStep == 896 or curStep == 2048 then
		NEONmode('of')
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

		triggerEvent('Change Character', '0', 'bf')
		triggerEvent('Change Character', '1', 'Missa_Segundo')
		triggerEvent('Change Character', '2', 'gf')
	end
end