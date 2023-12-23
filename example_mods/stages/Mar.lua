function onCreate()

    -- Object --
    luaDebugMode = true
    makeLuaSprite('fondo', 'Cielo', -700, -250)
    setGraphicSize('fondo',getProperty('fondo.width') * 0.7)

    makeLuaSprite('Piedra', 'Piedra', -700, 500)
    setGraphicSize('Piedra',getProperty('Piedra.width') * 0.9)

	makeAnimatedLuaSprite('Oceano', 'Mar', -700, 450);
  	addAnimationByPrefix('Oceano', 'Mar', 'Mar', 24, true);

    makeLuaSprite('mapa', 'mapa', 500, 200)
    setGraphicSize('mapa',getProperty('mapa.width') * 0.9)
    setProperty('mapa.alpha', 0)

    makeLuaSprite('Paint 1', 'Paint 1', 0, 0)
    setGraphicSize('Paint 1',getProperty('Paint 1.width') * 0.35)
    setObjectCamera('Paint 1','hud')
    setProperty('Paint 1.alpha', 0)

    makeLuaSprite('Paint 2', 'Paint 2', 0, 0)
    setGraphicSize('Paint 2',getProperty('Paint 2.width') * 0.35)
    setObjectCamera('Paint 2','hud')
    setProperty('Paint 2.alpha', 0)

    --Layer
    addLuaSprite('fondo', false)
    addLuaSprite('Oceano', false);
    addLuaSprite('Piedra', false)
    addLuaSprite('mapa', false)
    addLuaSprite('Paint 1', false)
    addLuaSprite('Paint 2', false)

    makeLuaSprite('bartop','',-200,-55)
	makeGraphic('bartop',2000,100,'000000')
	addLuaSprite('bartop',true)
    setScrollFactor('bartop',0,0)
    setObjectCamera('bartop','hud')

    makeLuaSprite('barbot','',-200,590)
	makeGraphic('barbot',2000,300,'000000')
	addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
end

function onStepHit()
	if curStep == 401 then
	    setProperty('Piedra.visible', false)
	end
	if curStep == 561 then
	    doTweenAlpha('mapa.alpha', 'mapa', 0.7, 3, 'linear')
	end
	if curStep == 608 then
	    doTweenAlpha('mapa.alpha', 'mapa', 0, 3, 'linear')
	end
	if curStep == 962 then
	    setProperty('Paint 1.alpha', 1)
	end
	if curStep == 1024 then
	    setProperty('Paint 2.alpha', 1)
	    setProperty('Paint 1.alpha', 0)
	end
	if curStep == 1088 then
	    setProperty('Piedra.visible', true)
	    doTweenAlpha('Paint 2.alpha', 'Paint 2', 0, 3, 'linear')
	end
end