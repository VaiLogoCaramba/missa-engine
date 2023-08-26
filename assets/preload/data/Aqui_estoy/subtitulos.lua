function onCreate()
    makeLuaText('cutsceneText', 'En el momento que perdí todo ese rastro', getPropertyFromClass('flixel.FlxG', 'width') - 100, 0, 620);
    setObjectCamera('cutsceneText', 'camOther');
    screenCenter('cutsceneText', 'x');
    setTextAlignment('cutsceneText', 'center');
    setTextSize('cutsceneText', 28);
    setProperty('cutsceneText.alpha', 0);
    setProperty('cutsceneText.antialiasing', false);
    setObjectOrder('cutsceneText', getObjectOrder('bottomBar') + 1);
    addLuaText('cutsceneText', true);
end

function onStepHit()
    if curStep == 72 then
        doTweenAlpha('fadein 1', 'cutsceneText', 1, 0.7, linear)
    end

    if curStep == 98 then
        setTextString('cutsceneText', "De lo que alguna vez sentí")
    end

    if curStep == 138 then
        setTextString('cutsceneText', "La vida me hizo para atrás")
    end

    if curStep == 156 then
        setTextString('cutsceneText', "De alguna forma me explicó")
    end

    if curStep == 175 then
        setTextString('cutsceneText', "que no lo podía lograr")
    end

    if curStep == 198 or curStep == 467 or curStep == 602  or curStep == 870 then
        setTextString('cutsceneText', "Pero aquí estoy")
    end

    if curStep == 210 or curStep == 480 or curStep == 614 or curStep == 883 or curStep == 1018 then
        setTextString('cutsceneText', "muestro de que soy capaz")
    end

    if curStep == 228 or curStep == 497 or curStep == 632 or curStep == 900 then
        setTextString('cutsceneText', "Y sentir la adrenalina")
    end
    
    if curStep == 240 or curStep == 511 or curStep == 646 or curStep == 915 then
        setTextString('cutsceneText', "me prohíbe parar")
    end

    if curStep == 265 or curStep == 535 or curStep == 669 or curStep == 938 then
        setTextString('cutsceneText', "Y porfavor")
    end

    if curStep == 276 or curStep == 548 or curStep == 682 or curStep == 951 then
        setTextString('cutsceneText', "ve por el primer lugar")
    end

    if curStep == 295 or curStep == 565 or curStep == 700 or curStep == 967 then
        setTextString('cutsceneText', "Te han mentido")
    end

    if curStep == 300 or curStep == 572 or curStep == 704 or curStep == 973 then
        setTextString('cutsceneText', "lo importante siempre va a ser ganar")
    end

    if curStep == 126 or curStep == 335 or curStep == 395 or curStep == 463 or curStep == 832 or curStep == 929 or curStep == 1034 then
        doTweenAlpha('fadein 1', 'cutsceneText', 0, 0.75, linear)
    end

    if curStep == 138 or curStep == 340 or curStep == 407 or curStep == 467 or curStep == 870 or curStep == 937 then
        doTweenAlpha('fadein 1', 'cutsceneText', 1, 0.75, linear)
    end

    if curStep == 341 then
        setTextString('cutsceneText', "Es un gran reto")
    end

    if curStep == 351 then
        setTextString('cutsceneText', "Ya lo sé")
    end

    if curStep == 358 then
        setTextString('cutsceneText', "pero no existe nada que")
    end

    if curStep == 376 then
        setTextString('cutsceneText', "no puedas hacer")
    end

    if curStep == 405 then
        setTextString('cutsceneText', "Sube más alto cada vez")
    end

    if curStep == 425 then
        setTextString('cutsceneText', "Y en la cima quédate")
    end

    if curStep == 443 then
        setTextString('cutsceneText', "el mundo esta a tus pies")
    end  
    
    if curStep == 754 then
        setTextString('cutsceneText', "Esta de más decir que")
    end

    if curStep == 768 then
        setTextString('cutsceneText', "tú eres capaz")
    end

    if curStep == 786 then
        setTextString('cutsceneText', "Digan lo que digan")
    end

    if curStep == 799 then
        setTextString('cutsceneText', "tú no mires atrás")
    end

    if curStep == 1013 then
        setTextString('cutsceneText', "YO")
    end    
end    