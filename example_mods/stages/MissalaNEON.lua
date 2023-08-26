function onCreate()

    -- Object --
    luaDebugMode = true
    if songName == 'Goodfun'  then
    makeLuaSprite('fondo2', 'MissalaNEON/FONDO', -600, -250)
    setGraphicSize('fondo2',getProperty('fondo2.width') * 0.9)

    makeLuaSprite('alf2', 'MissalaNEON/Alfombra', -600, 450)
    setGraphicSize('alf2',getProperty('alf2.width') * 0.8)

    makeLuaSprite('tableta2', 'MissalaNEON/Tableta', -600, 30)
    setGraphicSize('tableta2',getProperty('tableta2.width') * 0.75)

    makeLuaSprite('tele2', 'MissalaNEON/Television', 50, -200)
    setGraphicSize('tele2',getProperty('tele2.width') * 0.9)

    --Layer
    addLuaSprite('fondo2', false)
    addLuaSprite('alf2', false)
    addLuaSprite('tableta2', false)
    addLuaSprite('tele2', false)
    
    setProperty('fondo2.alpha',0)
    setProperty('alf2.alpha',0)
    setProperty('tableta2.alpha',0)
    setProperty('tele2.alpha',0)
    end
end
