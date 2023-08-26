function onCreate()
	
	makeAnimatedLuaSprite('P', 'Particulas', -30, 0);
	setScrollFactor('P', 1, 1);
	scaleObject('P',1,1);
    setObjectCamera('P', 'camHUD')
   	addAnimationByPrefix('P', 'Particulas', 'Particulas', 18, true);
	addLuaSprite('P', false);
    setProperty('P.alpha',1)
end

function onStepHit()
    if curStep == 520 then
        setProperty('P.alpha',0)
    end
end
