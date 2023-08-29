function onCreate()

    -- Object --
    luaDebugMode = true
    makeLuaSprite('fondo', 'FondoKirby/Cielo', 0, -250)
    setGraphicSize('fondo',getProperty('fondo.width') * 0.9)

    makeLuaSprite('MontanasFondo', 'FondoKirby/MontanasFondo', 0, 250)
    setGraphicSize('MontanasFondo',getProperty('MontanasFondo.width') * 0.8)

    makeLuaSprite('Montanas', 'FondoKirby/Montanas', 500, -300)
    setGraphicSize('Montanas',getProperty('Montanas.width') * 0.9)

    makeLuaSprite('Sus', 'FondoKirby/Sus', -150, -350)
    setGraphicSize('Sus',getProperty('Sus.width') * 0.9)

    makeLuaSprite('Piso', 'FondoKirby/Piso', 0, 350)
    setGraphicSize('Piso',getProperty('Piso.width') * 0.9)

    --Layer
    addLuaSprite('fondo', false)
    addLuaSprite('MontanasFondo', false)
    addLuaSprite('Montanas', false)
    addLuaSprite('Sus', false)
    addLuaSprite('Piso', false)
end

function onStepHit()
    if curStep == 406 then
        triggerEvent('Play Animation','morir','bf')
    end
    if curStep == 532 then
        triggerEvent('Play Animation','doctorado','bf')
    end
    if curStep == 580 then
        triggerEvent('Play Animation','Anim','bf')
    end
    if curStep == 689 then
        triggerEvent('Play Animation','soy','dad')
    end
    if curStep == 632 then
        triggerEvent('Play Animation','comer','bf')
    end
    if curStep == 644 then
        triggerEvent('Change Character', 'bf', 'Kirby2')
    end
    if curStep == 676 then
        triggerEvent('Play Animation','QuienSos','bf')
    end
    if curStep == 872 then
        triggerEvent('Play Animation','Carrera','bf')
    end
    if curStep == 1106 then
        triggerEvent('Change Character', 'dad', 'MK')
    end
    if curStep == 1139 then
        triggerEvent('Play Animation','sigue','bf')
    end
    if curStep == 1146 then
        triggerEvent('Play Animation','explosion','MK')
    end
    if curStep == 872 then
    	setProperty('dad.visible', false)
    end
    if curStep == 1154 then
    	setProperty('dad.visible', false)
    end
    if curStep == 1106 then
    	setProperty('dad.visible', true)
    end
    if curStep == 644 then
    	setProperty('dad.visible', true)
    end


end