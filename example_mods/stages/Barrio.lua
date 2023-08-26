iconboop = true
cameraBoom = false
bam = 3.5
function onCreate()
    makeLuaSprite('fondo', 'Barrio', -550, -150)
    setGraphicSize('fondo',getProperty('fondo.width') * 0.9)
    addLuaSprite('fondo', false)

    makeLuaText('cutsceneText', 'Compa que barrio o que', getPropertyFromClass('flixel.FlxG', 'width') - 100, 0, 620);
    setObjectCamera('cutsceneText', 'camOther');
    screenCenter('cutsceneText', 'x');
    setTextAlignment('cutsceneText', 'center');
    setTextSize('cutsceneText', 28);
    setProperty('cutsceneText.alpha', 0);
    addLuaText('cutsceneText', true);
end

function onStepHit()
    if curStep == 2 then
        setProperty('cutsceneText.alpha', 1);
    end
    if curStep == 9 then
        setTextString('cutsceneText', "Duelo a muerte con cuchillos o que")
    end
    if curStep == 22 then
        setProperty('cutsceneText.alpha', 0);
    end
    if curStep == 26 then
        setProperty('cutsceneText.alpha', 1);
        setTextString('cutsceneText', "idk????")
    end
    if curStep == 38 then
        setProperty('cutsceneText.alpha', 0);
    end
    if curStep == 53 then
        setProperty('cutsceneText.alpha', 1);
        setTextString('cutsceneText', "Te woa hacer un peinado")
    end

    if curStep == 63 then
        doTweenAlpha('fadein 1', 'cutsceneText', 0, 0.7, linear)
    end
	if curStep == 95 or curStep == 159 or curStep == 255 or curStep == 351 or curStep == 511 or curStep == 783 then
        iconboop = false
        cameraBoom = true
    end

    if curStep == 128 or curStep == 193 or curStep == 320 or curStep == 448 or curStep == 720 or curStep == 850 then
        iconboop = true
        cameraBoom = false
        setProperty('iconP1.angle', 0)
		setProperty('iconP2.angle', 0)
    end
end


function onBeatHit()
	if iconboop == false then
			if curBeat % 2 == 0 then
				setProperty('iconP1.angle', -10)
				setProperty('iconP2.angle', 10)
			else
				setProperty('iconP1.angle', 10)
				setProperty('iconP2.angle', -10)
			end
            if cameraBoom == true then
                if curBeat % 2 == 0 then
                triggerEvent('Add Camera Zoom', 0.015 * bam, 0.03 * bam)
                else
                triggerEvent('Add Camera Zoom', 0.015 * bam, 0.03 * bam)
                end
            end
        end
    end