function onCreate()

    -- Object --
    luaDebugMode = true
    makeLuaSprite('fondo', 'Cielo', -900, -250)
    setGraphicSize('fondo',getProperty('fondo.width') * 0.9)

    makeLuaSprite('Piedra', 'Piedra', -700, 500)
    setGraphicSize('Piedra',getProperty('Piedra.width') * 0.9)

	makeAnimatedLuaSprite('Oceano', 'Mar', -700, 450);
  	addAnimationByPrefix('Oceano', 'Mar', 'Mar', 24, true);

    --Layer
    addLuaSprite('fondo', false)
    addLuaSprite('Oceano', false);
    addLuaSprite('Piedra', false)

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