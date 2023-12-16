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

    if songName == 'Goodfun' or songName == 'Grape_soda' then
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
    makeLuaSprite('bartop','',-200,-130)
    makeGraphic('bartop',2000,300,'000000')
    addLuaSprite('bartop',true)
    setScrollFactor('bartop',0,0)
    setObjectCamera('bartop','hud')
    setProperty('bartop.alpha', 0)

    makeLuaSprite('barbot','',-200,590)
    makeGraphic('barbot',2000,300,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
    setProperty('barbot.alpha', 0)

    addCharacterToList('gf_neon','gf') 
    addCharacterToList('MissaNEON','dad') 
    addCharacterToList('bf_neon','boyfriend') 
end

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