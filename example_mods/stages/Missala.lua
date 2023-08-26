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
end