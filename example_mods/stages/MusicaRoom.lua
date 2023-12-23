function onCreate()
    -- Object --
    luaDebugMode = true
    makeLuaSprite('fondo', 'MusicaRoom/FONDO', -600, -70)
    setGraphicSize('fondo',getProperty('fondo.width') * 1)

    makeLuaSprite('set', 'MusicaRoom/Setup', -450, 180)
    setGraphicSize('set',getProperty('set.width') * 0.8)

    makeLuaSprite('bateria', 'MusicaRoom/Bateria', 630, 230)
    setGraphicSize('bateria',getProperty('bateria.width') * 0.75)

    --Layer
    addLuaSprite('fondo', false)
    addLuaSprite('set', false)
    addLuaSprite('bateria', false)

    if songName == 'rock_time' then
        makeLuaSprite('guitar', 'guitar things', 0, 0)
        setGraphicSize('guitar',getProperty('guitar.width') * 1)
        setObjectCamera('guitar', 'camHUD')
        addLuaSprite('guitar', false)
        setProperty('guitar.alpha', 0)
    end
end

function onStepHit()
    if songName == 'rock_time' then
        if curStep == 400 or curStep == 1440 then
            setProperty('guitar.alpha', 0)
        end
    end
end
function onBeatHit()
    if songName == 'rock_time' then
        if curBeat == 36 or curBeat == 164 then
            setProperty('guitar.alpha', 1)
        end
    end
end