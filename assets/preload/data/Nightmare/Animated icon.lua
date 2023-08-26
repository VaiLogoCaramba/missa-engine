function onCreate()
	makeAnimatedLuaSprite('missa', 'nms', 0, 0)
	addAnimationByPrefix('missa', 'normal', 'normal', 24, true)
	addAnimationByPrefix('missa', 'loss', 'loss', 24, true)
	addAnimationByPrefix('missa', 'win', 'win', 24, true)
	setObjectCamera('missa', 'camHUD')
	addLuaSprite('missa', true)
end

function onCreatePost()
	setProperty('iconP2.alpha', 0)
	setObjectOrder('missa', getObjectOrder('iconP2'))
end

function onUpdate(elapsed)
	if getProperty('health') > 1.61 then
		objectPlayAnimation('missa', 'loss', false)
		setProperty('missa.x', getProperty('iconP2.x') -10) -- the number is icon offset
		setProperty('missa.y', getProperty('iconP2.y') -15)
	elseif getProperty('health') < 1.61 and getProperty('health') > 0.4 then
		objectPlayAnimation('missa', 'normal', false)
		setProperty('missa.x', getProperty('iconP2.x') -55)
		setProperty('missa.y', getProperty('iconP2.y') -55)
	elseif getProperty('health') < 0.4 then
		objectPlayAnimation('missa', 'win', false)
		setProperty('missa.x', getProperty('iconP2.x') -105)
		setProperty('missa.y', getProperty('iconP2.y') -40)
	end

	setProperty('missa.scale.x', getProperty('iconP2.scale.x'))
	setProperty('missa.scale.y', getProperty('iconP2.scale.y'))
end