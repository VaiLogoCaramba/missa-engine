function onCreate()
	makeLuaSprite('no','',-600, -300)
	makeGraphic('no',2000,2000,'000000')
	addLuaSprite('no',true)
    setScrollFactor('no',0,0)
	setProperty('no.alpha', 0)

	makeLuaSprite('flash','',-600, -300)
	makeGraphic('flash',2000,2000,'ffffff')
	addLuaSprite('flash',true)
    setScrollFactor('flash',0,0)
	setProperty('flash.alpha', 0)

	makeLuaSprite('fondo1', 'fondo1', -200, -100);
	setScrollFactor('fondo1', 0.9, 0.9);
	setProperty('fondo1.visible',true)
	addLuaSprite('fondo1', false)
	
	makeLuaSprite('fondo2', 'fondo2', -200, -100);
	setScrollFactor('fondo2', 0.9, 0.9);
	setProperty('fondo2.visible',false)
	addLuaSprite('fondo2', false)

	makeLuaSprite('habitacionDado', 'habitacionDado', -500, -100);
	setScrollFactor('habitacionDado', 0.9, 0.9);
	setProperty('habitacionDado.visible',false)
	addLuaSprite('habitacionDado', false)

	makeLuaSprite('habitacionNeonDado', 'habitacionNeonDado', -500, -100);
	setScrollFactor('habitacionNeonDado', 0.9, 0.9);
	setProperty('habitacionNeonDado.visible',false)
	addLuaSprite('habitacionNeonDado', false)

	makeLuaSprite('bartop','',-200,-30)
	makeGraphic('bartop',2000,100,'000000')
	addLuaSprite('bartop',true)
    setScrollFactor('bartop',0,0)
    setObjectCamera('bartop','hud')

    makeLuaSprite('barbot','',-200,590)
	makeGraphic('barbot',2000,300,'000000')
	addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

	makeLuaSprite('funny', 'light above', 250, 0);
	setScrollFactor('funny', 0.9, 0.9);
	setProperty('funny.visible',true)
	setBlendMode('funny','add')
	addLuaSprite('funny', false);
	setObjectCamera('funny','hud')
	setProperty('funny.alpha', 0)		

	makeLuaSprite('funny2', 'light_neon', 250, 0);
	setScrollFactor('funny2', 0.9, 0.9);
	setProperty('funny2.visible',true)
	setBlendMode('funny2','add')
	addLuaSprite('funny2', false);
	setObjectCamera('funny2','hud')
	setProperty('funny2.alpha', 0)		

	makeAnimatedLuaSprite('coso', 'coso', 300, 200);
	setScrollFactor('coso', 1, 1);
	scaleObject('coso',1,1);
   	addLuaSprite('coso', false);
   	setObjectCamera('coso','hud')
   	setProperty('coso.alpha',0)
end
function onUpdate()
	noteTweenAlpha('dadTween1', 0, 0, 0.01, 'CubeOut');
	noteTweenAlpha('dadTween2', 1, 0, 0.01, 'CubeOut');
	noteTweenAlpha('dadTween3', 2, 0, 0.01, 'CubeOut');
	noteTweenAlpha('dadTween4', 3, 0, 0.01, 'CubeOut');

	noteTweenX('dadTween1', 0, -500, 0.01, 'CubeOut');
	noteTweenX('dadTween2', 1, -500, 0.01, 'CubeOut');
	noteTweenX('dadTween3', 2, -500, 0.01, 'CubeOut');
	noteTweenX('dadTween4', 3, -500, 0.01, 'CubeOut');

	noteTweenX('bfTween1', 4, 412, 0.01, 'CubeOut');
	noteTweenX('bfTween2', 5, 527, 0.01, 'CubeOut');
	noteTweenX('bfTween3', 6, 643, 0.01, 'CubeOut');
	noteTweenX('bfTween4', 7, 761, 0.01, 'CubeOut');
end

function flash()
	setProperty('flash.alpha', 1)
	doTweenAlpha('flashevent','flash', 0, 1, 'linear')
end

function onStepHit()
	if curStep == 1 then
			doTweenAlpha('fondo alpha', 'fondo1', 0.2, 6, 'linear')
	end
	if curStep == 70 then
		setProperty('no.alpha', 1)
	end
	if curStep == 74 then
		doTweenAlpha('blackword', 'no', 0, 1, 'linear')
		doTweenAlpha('funnyhaha', 'funny', 0.5, 1.5, 'linear')
		setProperty('boyfriend.visible', true)
	end
	--WHOA HE CHANGED
	if curStep == 200 then
		doTweenZoom('screenZoom', 'camGame', 1.2, 1, 'quintOut');
	end

	if curStep == 203 then
		flash()
		setProperty('funny.alpha',0)
		setProperty('funny2.alpha',1)
		doTweenZoom('screenZoom', 'camGame', 0.9, 1, 'quintOut');
		triggerEvent('Change Character', 'bf', 'Missa_Aqui_estoy_Neon');
		setProperty('fondo2.visible',true)
		setProperty('fondo1.visible',false)
	end
	--back to boring shit
	if curStep == 335 then
		setProperty('no.alpha', 1)
		setProperty('funny2.alpha',0)
		doTweenZoom('screenZoom', 'camGame', 1, 1, 'quintOut');
		triggerEvent('Change Character', 'bf', 'Missa_Aqui_estoy');
		setProperty('habitacionDado.visible',true)
		setProperty('fondo2.visible',false)
	end
	if curStep == 337 then
		doTweenAlpha('blackword', 'no', 0, 1, 'linear')
		doTweenAlpha('funnyhaha', 'funny', 0.5, 1.5, 'linear')
	end
	if curStep == 405 then
		doTweenZoom('screenZoom', 'camGame', 1.5, 10, 'linear');
	end
	if curStep == 467 then
		doTweenZoom('screenZoom', 'camGame', 0.85, 1, 'quintOut');
	end
	if curStep == 473 then
		flash()
		setProperty('funny.alpha',0)
		setProperty('funny2.alpha',1)
		doTweenZoom('screenZoom', 'camGame', 0.9, 1, 'quintOut');
		triggerEvent('Change Character', 'bf', 'Missa_Aqui_estoy_Neon');
		setProperty('habitacionNeonDado.visible',true)
		setProperty('habitacionDado.visible',false)
	end
	if curStep == 608 then
		setProperty('no.alpha', 1)
		setProperty('funny2.alpha',0)
		doTweenZoom('screenZoom', 'camGame', 1, 1, 'quintOut');
		triggerEvent('Change Character', 'bf', 'Missa_Aqui_estoy');
		setProperty('fondo1.visible',true)
		setProperty('habitacionNeonDado.visible',false)
	end
	if curStep == 610 then
		doTweenAlpha('blackword', 'no', 0, 1, 'linear')
		doTweenAlpha('funnyhaha', 'funny', 0.5, 1.5, 'linear')
	end
	if curStep == 676 then
		flash()
		setProperty('funny.alpha',0)
		setProperty('funny2.alpha',1)
		doTweenZoom('screenZoom', 'camGame', 0.9, 1, 'quintOut');
		triggerEvent('Change Character', 'bf', 'Missa_Aqui_estoy_Neon');
		setProperty('fondo2.visible',true)
		setProperty('fondo1.visible',false)
	end
	--back to boring shit
	if curStep == 878 then
		setProperty('no.alpha', 1)
		setProperty('funny2.alpha',0)
		doTweenZoom('screenZoom', 'camGame', 1, 1, 'quintOut');
		triggerEvent('Change Character', 'bf', 'Missa_Aqui_estoy');
		setProperty('fondo1.visible',true)
		setProperty('fondo2.visible',false)
	end
	if curStep == 880 then
		doTweenAlpha('blackword', 'no', 0, 1, 'linear')
		doTweenAlpha('funnyhaha', 'funny', 0.5, 1.5, 'linear')
	end
	if curStep == 1149 then
		doTweenAlpha('blackword', 'no', 1, 1, 'linear')
		doTweenAlpha('funnyhaha', 'funny', 0, 0.75, 'linear')
	end

	if curStep == 1152 then
		doTweenAlpha('blackword', 'HUD', 0, 1, 'linear')
	end
	if curStep == 1990 then
		doTweenAlpha('fondo alpha', 'fondo1', 0, 1, 'linear')
	end
	if curStep == 1200 then
		setProperty('coso.alpha',1)
		addAnimationByPrefix('coso', 'coso', 'coso', 24, true);
	end

end