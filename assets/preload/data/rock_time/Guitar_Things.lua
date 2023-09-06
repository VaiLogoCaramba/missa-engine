function onCreate()
    makeLuaSprite('guitar', 'guitar_things', 0, 10)
    setGraphicSize('guitar',getProperty('guitar.width') * 1)
    addLuaSprite('guitar', false)
    setObjectCamera('guitar', 'camHUD');
    setProperty('guitar.alpha', 0);
end

function onStepHit()
    if curStep == 144 or curStep == 656 then
        setProperty('guitar.alpha', 1);
    end
    if curStep == 400 or curStep == 1440 then
        setProperty('guitar.alpha', 0);
    end
end