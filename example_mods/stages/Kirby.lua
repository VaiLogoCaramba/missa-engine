function onCreate()

    -- Object --
    luaDebugMode = true
    makeLuaSprite('fondo', 'FondoKirby/Cielo', -200, -250)
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
    if curStep == 450 then
        triggerEvent('Play Animation','morir','bf')
    end
    if curStep == 591 then
        triggerEvent('Play Animation','doctorado','bf')
    end
    if curStep == 643 then
        triggerEvent('Play Animation','Anim','bf')
    end
    if curStep == 700 then
        triggerEvent('Play Animation','comer','bf')
    end
    if curStep == 725 then
        triggerEvent('Change Character', 'bf', 'Kirby2')
    end
    if curStep == 750 then
        triggerEvent('Play Animation','QuienSos','bf')
    end
    if curStep == 968 then
        triggerEvent('Play Animation','Carrera','bf')
    end
    if curStep == 1121 then
        triggerEvent('Change Character', 'bf', 'Kirby')
    end


end