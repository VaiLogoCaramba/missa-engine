function onCreate()
    -- Object --
    makeLuaSprite('fondo', 'Nightmare/FONDO', -600, -250)
    setGraphicSize('fondo',getProperty('fondo.width') * 0.9)

    makeLuaSprite('alf', 'Nightmare/Alfombra', -600, 450)
    setGraphicSize('alf',getProperty('alf.width') * 0.8)

    makeLuaSprite('tableta', 'Nightmare/Tableta', -600, 40)
    setGraphicSize('tableta',getProperty('tableta.width') * 0.75)

    makeLuaSprite('tele', 'Nightmare/Television', 0, -200)
    setGraphicSize('tele',getProperty('tele.width') * 0.9)

    --Layer
    addLuaSprite('fondo', false)
    addLuaSprite('alf', false)
    addLuaSprite('tableta', false)
    addLuaSprite('tele', false)

    makeAnimatedLuaSprite('Scream', 'Scream', -950, -250);
    setScrollFactor('Scream', 1, 1);  
    scaleObject('Scream',1,1);
    addAnimationByPrefix('Scream', 'Scream', 'Scream', 61, true);
    addLuaSprite('Scream', false)
    setProperty('Scream.alpha', 0)
end

function onStepHit()
    if curStep == 960 then
    setProperty('Scream.alpha', 1)
    end
    if curStep == 980 then
    setProperty('Scream.alpha', 0)
    end
    if curStep == 953 then
        triggerEvent('Play Animation','Scream','dad')
    end
    if curStep >= 896 then
        setProperty('camHUD.visible', false);
    end
    if curStep >= 900 then
        SetProperty('Scream.visible', true);
    end
end