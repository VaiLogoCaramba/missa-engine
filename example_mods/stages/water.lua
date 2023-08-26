sprite = 'stage/water'
size = 3600
startX = 0
startY = -300
duration = -500



function onCreate()


makeLuaSprite('stagefront', 'stage/waterfondo', 40, -60);
setLuaSpriteScrollFactor('stagefront', 1, 1);
scaleObject('stagefront', 10, 10);
setProperty('stagefront.antialiasing',false);
addLuaSprite('stagefront', false);


makeAnimatedLuaSprite('Reflejo', 'stage/Reflejo', 400, -300);
setLuaSpriteScrollFactor('Reflejo', 1, 1);
scaleObject('Reflejo', 10, 10);
setProperty('Reflejo.antialiasing',false);
addLuaSprite('Reflejo', false);
addAnimationByPrefix('Reflejo', 'Reflejo', 'Reflejo Idle',6, true);


makeLuaSprite(sprite .. '1', sprite, startX, startY)
addLuaSprite(sprite .. '1', false)
scaleObject(sprite .. '1',10,10);
setProperty(sprite .. '1.antialiasing',false);
makeLuaSprite(sprite .. '2', sprite, startX + size, startY)
addLuaSprite(sprite .. '2', false)
scaleObject(sprite .. '2',10,10);
setProperty(sprite .. '2.antialiasing',false);

makeLuaSprite(sprite .. '1speed', sprite, startX, startY)
addLuaSprite(sprite .. '1speed', false)
makeLuaSprite(sprite .. '2speed', sprite, startX + size, startY)
addLuaSprite(sprite .. '2speed', false)

setProperty('stage/cielospeed.alpha', 0)
setProperty('stage/cielospeed.alpha', 0)
scrollA()
scrollA2()


setProperty('stage/cielospeed.alpha', 0)
setProperty('stage/cielospeed.alpha', 0)
scrollA()
scrollA2()

makeAnimatedLuaSprite('Missa', 'stage/child', 400, -300);
setLuaSpriteScrollFactor('Missa', 1, 1);
scaleObject('Missa', 10, 10);
setProperty('Missa.antialiasing',false);

addLuaSprite('Missa', false);
addAnimationByPrefix('Missa', 'Missa', 'child Idle',6, true);


end

function scrollA()
doTweenX(sprite .. '1move',sprite .. '1', startX - size, duration)
doTweenX(sprite .. '2move',sprite .. '2', startX, duration)
end

function scrollA2()
doTweenX(sprite .. '1moveSpeed',sprite .. '1speed', startX - size, 2)
doTweenX(sprite .. '2moveSpeed',sprite .. '2speed', startX, 2)
end

function onTweenCompleted(tag)
if tag == (sprite .. '2move') then
scrollB()
end
if tag == (sprite .. '2move2') then
scrollA()
end

if tag == (sprite .. '2moveSpeed') then
scrollB2()
end
if tag == (sprite .. '2move2Speed') then
scrollA2()
end

end

function scrollB()
doTweenX(sprite .. '1move2',sprite .. '1', startX, 4)
doTweenX(sprite .. '2move2',sprite .. '2', startX + size, 4)
end

function scrollB2()
doTweenX(sprite .. '1move2Speed',sprite .. '1speed', startX, 4)
doTweenX(sprite .. '2move2Speed',sprite .. '2speed', startX + size, 4)
end