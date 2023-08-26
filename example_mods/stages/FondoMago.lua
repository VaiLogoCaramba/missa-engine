function onCreate()
	makeLuaSprite('FondoMago','FondoMago', -550, -290);
	setScrollFactor('fondo1', 0.9, 0.9);
	setProperty('FondoMago.visible',false)	addLuaSprite('FondoMago', false)
    setGraphicSize('FondoMago',getProperty('FondoMago.width') * 1.1)
    makeLuaSprite('no','',-600, -300)
	makeGraphic('no',2000,2000,'000000')
	addLuaSprite('no',true)
    setScrollFactor('no',0,0)
	setProperty('no.alpha', 0)
end

function onCreatePost()
	setProperty('gf.visible', false)
    setProperty('dad.visible', false)
	setProperty('boyfriend.visible', false)
end

function onStepHit()
	if curStep == 1 then
		setProperty('FondoMago.visible',true)
		setProperty('no.alpha', 1)
		setProperty('gf.visible', true)
   		setProperty('dad.visible', true)
		setProperty('boyfriend.visible', true)
    end
    if curStep == 2 then
		doTweenAlpha('blackword', 'no', 0.2, 6, 'linear')
    end
    if curStep == 71 then
        triggerEvent('Play Animation','Magic','dad')
    end
    if curStep == 878 then
        triggerEvent('Play Animation','Magic','dad')
    end
end