musico = 'artist'
el3tricksong = {'Goodfun', 'Nightmare'}
fadesong = {'Lyrics', 'Rocktime'}
missasong = {'Aqui_estoy', 'cuarentena', 'cancion_china', 'oaxaca', 'otomatone', 'Determinacion', 'ignt', 'missa_langosta', 'Pokemon_go', 'rap_kirby'}
dontplay = {'march', 'true-trolling'}

function onCreatePost()
    if songName ~= nil then
        for _, s in ipairs(el3tricksong) do
            if s == songName then
                musico = 'el3Trick'
                break
            end
        end

        for _, s in ipairs(fadesong) do
            if s == songName then
                musico = 'FadeAway'
                break
            end
        end

        for _, s in ipairs(missasong) do
            if s == songName then
                musico = 'Missasinfonia'
                break
            end
        end

        if songName == 'Billy' then
            musico = 'KennyL'
        end

        if songName == 'Pizza' then
            musico = 'el3Trick & KennyL'
        end

        if songName == 'Wizard' then
            musico = 'FadeAway & Kenny'
        end
    end
end

function onCreate()
    luaDebugMode = true
    makeLuaSprite('musicBar', 'musicBar', 2050, 520)
    setScrollFactor('musicBar', 1.0, 1.0)
    addLuaSprite('musicBar', false)
    setObjectCamera('musicBar', 'camHUD')
    makeLuaText('musicText', musico.. '-' ..(songName or ''), 0, 2050, 533)
    setTextSize('musicText', 40)
    setTextBorder('musicText', 1, '00001')
    addLuaText('musicText')
    makeLuaSprite('musicBar', 'musicBar', 2050, 520)
    setScrollFactor('musicBar', 1.0, 1.0)
    addLuaSprite('musicBar', false)
    setObjectCamera('musicBar', 'camHUD')
end

function onStepHit()
    if curStep == 1 then
        doTweenX('aw', 'musicBar', 600, 2, 'sineOut')
        doTweenX('wa', 'musicText', 700, 2, 'sineOut')
    end
    -- Lo copie de Indie Cross Art, jajaja
    if curStep == 35 then
        doTweenX('aw', 'musicBar', 2000, 2, 'sineIn')
        doTweenX('wa', 'musicText', 2050, 2, 'sineIn')
    end
end
