function onCreate()
    -- Object --
    luaDebugMode = true
    makeLuaSprite('JPG', 'JPG', -500, -250)
    setGraphicSize('JPG',getProperty('JPG.width') * 1.5)

    makeAnimatedLuaSprite('Firulais', 'Firulais', 550, -50);
    setScrollFactor('Firulais', 1, 1);
    scaleObject('Firulais',1,1);

    addAnimationByPrefix('Firulais', 'Firulais', 'firulais', 24, true);

    makeLuaSprite('firulaisOP', 'firulaisOP', 650, -30)
    setGraphicSize('firulaisOP',getProperty('firulaisOP.width') * 0.6)

    makeLuaSprite('rip', 'rip', 660, 30)
    setGraphicSize('rip',getProperty('rip.width') * 1.2)

    --Layer
    addLuaSprite('JPG', false)
    addLuaSprite('Firulais', false);
    addLuaSprite('firulaisOP', false);
    addLuaSprite('rip', false);
    setProperty('firulaisOP.visible', false)
    setProperty('rip.visible', false)
end

function onStepHit()
	if curStep == 780 then
		setProperty('firulaisOP.visible', true)
		setProperty('Firulais.visible', false)
	end
	if curStep == 1168 then
		setProperty('firulaisOP.visible', false)
		setProperty('rip.visible', true)
	end
	if curStep == 1302 then
		setProperty('firulaisOP.visible', true)
		setProperty('rip.visible', false)
	end
end