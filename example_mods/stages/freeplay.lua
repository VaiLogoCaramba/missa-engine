function onCreate()
	-- background shit
	makeAnimatedLuaSprite('TV', 'freeplay/TvNoSignal',100, -150);
    setLuaSpriteScrollFactor('TV', 1, 1);		
	scaleObject('TV',0.72,0.72)

	makeLuaSprite('margin', 'freeplay/margin', 0, 0)
	addLuaSprite('margin')
	setScrollFactor('margin', 1, 1);

	makeLuaSprite('arrowUp', 'freeplay/arrowUp', 0, 0)
	addLuaSprite('arrowUp')
	setScrollFactor('arrowUp', 1, 1);

	makeLuaSprite('arrowDown', 'freeplay/arrowDown', 0, 0)
	addLuaSprite('arrowDown')
	setScrollFactor('arrowDown', 1, 1);

	makeLuaSprite('author', 'freeplay/author', 0, 0)
	addLuaSprite('author')
	setScrollFactor('author', 1, 1);

	makeLuaSprite('controls', 'freeplay/controls', 0, 0)
	addLuaSprite('controls')
	setScrollFactor('controls', 1, 1);
    
	
    addLuaSprite('TV', false); 
	addAnimationByPrefix('TV', 'idle', 'TV', 10, true)
end

function onCreatePost()
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('boyfriend.visible', false)
	setProperty('gf.visible', false)
	setProperty('dad.visible', false)
end

function onUpdate(elapsed)
    if keyPressed('up') then
        setProperty('arrowUp.alpha', 0.5)
    else
        setProperty('arrowUp.alpha', 1)

    if keyPressed('down') then
        setProperty('arrowDown.alpha', 0.5)
    else
        setProperty('arrowDown.alpha', 1)
end
end
end
