function onCreate()
    makeLuaText('cutsceneText', 'Le canto esta cancion al Mar', getPropertyFromClass('flixel.FlxG', 'width') - 100, 0, 620);
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
    if curStep == 139 or curStep == 330 or curStep == 619 or curStep == 885 or curStep == 1227 then
        doTweenAlpha('fadein 1', 'cutsceneText', 1, 0.7, linear)
    end

    if curStep == 171 or curStep == 1259 then
        setTextString('cutsceneText', "Espero me puedas recordar")
    end

    if curStep == 204 or curStep == 1292 then
        setTextString('cutsceneText', "De mi mente no te puedo sacar")
    end

    if curStep == 236 or curStep == 1324 then
        setTextString('cutsceneText', "En mis sueños siempre estás")
    end

    if curStep == 257 then
        setTextString('cutsceneText', "Donde acaban estos mares")
    end

    if curStep == 272 then
        setTextString('cutsceneText', "Donde naufrague el amor")
    end

    if curStep == 289 then
        setTextString('cutsceneText', "Navegando como antes")
    end

    if curStep == 305 then
        setTextString('cutsceneText', "Cantándote esta canción")
    end
    if curStep == 321 or curStep == 609 or curStep == 865 or curStep == 961 or curStep == 1350 or curStep == 1356 then
        doTweenAlpha('fadeout 0', 'cutsceneText', 0, 0.7, linear)
    end
    if curStep == 330 then
        setTextString('cutsceneText', "Sin descansar podíamos navegar")
    end

    if curStep == 363 then
        setTextString('cutsceneText', "Mientras oía tu cantar")
    end

    if curStep == 405 then
        setTextString('cutsceneText', "¿Donde estarás amor?")
    end

    if curStep == 420 then
        setTextString('cutsceneText', "¿Donde te podré encontrar?")
    end  
    
    if curStep == 437 then
        setTextString('cutsceneText', "En este océano podré navegar")
    end

    if curStep == 462 then
        setTextString('cutsceneText', "Junto a ti, en el mar")
    end

    if curStep == 483 then
        setTextString('cutsceneText', "Vuelvo a cantarte esta canción")
    end

    if curStep == 516 then
        setTextString('cutsceneText', "No me vayas a olvidar")
    end

    if curStep == 544 then
        setTextString('cutsceneText', "Ya no quiero mas recuerdos")
    end   

    if curStep == 561 then
        setTextString('cutsceneText', "Quiero que esto sea verdad")
    end

    if curStep == 577 then
        setTextString('cutsceneText', "Ya no quiero verte en sueños")
    end  
    
    if curStep == 593 then
        setTextString('cutsceneText', "Quiero verte en la realidad")
    end

    if curStep == 619 or curStep == 1227 then
        setTextString('cutsceneText', "Le canto esta cancion al Mar")
    end

    if curStep == 651 then
        setTextString('cutsceneText', "Porque tu ya no me escucharas")
    end

    if curStep == 683 then
        setTextString('cutsceneText', "Tus recuerdos nunca se borrarán")
    end

    if curStep == 716 then
        setTextString('cutsceneText', "Espero sientas todo igual")
    end    
    if curStep == 737 then
        setTextString('cutsceneText', "Metas y sueños murieron")
    end

    if curStep == 753 then
        setTextString('cutsceneText', "Junto a la mujer que amé")
    end

    if curStep == 769 then
        setTextString('cutsceneText', "Mientras tu estas en el cielo")
    end

    if curStep == 785 then
        setTextString('cutsceneText', "En el mar yo te cantaré")
    end    
    if curStep == 800 then
        setTextString('cutsceneText', "Amor cuídame en el cielo")
    end

    if curStep == 818 then
        setTextString('cutsceneText', "Al mar le presumiré")
    end

    if curStep == 833 then
        setTextString('cutsceneText', "Que llegará ese momento")
    end  
    
    if curStep == 849 then
        setTextString('cutsceneText', "De volverte a ver")
    end

    if curStep == 885 then
        setTextString('cutsceneText', "Te tenías que ir")
    end

    if curStep == 900 then
        setTextString('cutsceneText', "No lo podía evitar")
    end

    if curStep == 917 then
        setTextString('cutsceneText', "En tus recuerdos podré navegar")
    end

    if curStep == 942 then
        setTextString('cutsceneText', "Hacia el sol, naufragar")
    end 
end    