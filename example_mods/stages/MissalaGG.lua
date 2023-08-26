function onCreate()

    -- Object --
    luaDebugMode = true
    makeLuaSprite('fondo', 'Missala/FONDO', -600, -250)
    setGraphicSize('fondo',getProperty('fondo.width') * 0.9)

    makeLuaSprite('alf', 'Missala/Alfombra', -600, 450)
    setGraphicSize('alf',getProperty('alf.width') * 0.8)

    makeLuaSprite('tableta', 'Missala/Tableta', -600, 40)
    setGraphicSize('tableta',getProperty('tableta.width') * 0.75)

    makeLuaSprite('tele', 'Missala/Television', 0, -200)
    setGraphicSize('tele',getProperty('tele.width') * 0.9)

    --Layer
    addLuaSprite('fondo', false)
    addLuaSprite('alf', false)
    addLuaSprite('tableta', false)
    addLuaSprite('tele', false)

    if songName == 'Goodfun'  then
        makeLuaSprite('fondo2', 'MissalaNEON/FONDO', -600, -250)
        setGraphicSize('fondo2',getProperty('fondo2.width') * 0.9)

        makeLuaSprite('alf2', 'MissalaNEON/Alfombra', -600, 450)
        setGraphicSize('alf2',getProperty('alf2.width') * 0.8)

        makeLuaSprite('tableta2', 'MissalaNEON/Tableta', -600, 40)
        setGraphicSize('tableta2',getProperty('tableta2.width') * 0.75)

        makeLuaSprite('tele2', 'MissalaNEON/Television', 0, -200)
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