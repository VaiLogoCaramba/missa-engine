function onCreate()
    -- Object --
    luaDebugMode = true
    makeLuaSprite('fondo', 'MusicaRoom/FONDO', -600, 0)
    setGraphicSize('fondo',getProperty('fondo.width') * 0.9)

    makeLuaSprite('set', 'MusicaRoom/Setup', -450, 180)
    setGraphicSize('set',getProperty('set.width') * 0.8)

    makeLuaSprite('bateria', 'MusicaRoom/Bateria', 630, 230)
    setGraphicSize('bateria',getProperty('bateria.width') * 0.75)

    --Layer
    addLuaSprite('fondo', false)
    addLuaSprite('set', false)
    addLuaSprite('bateria', false)
end