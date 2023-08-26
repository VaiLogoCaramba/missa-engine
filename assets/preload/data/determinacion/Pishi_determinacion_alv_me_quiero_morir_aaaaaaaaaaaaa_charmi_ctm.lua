function onCreate()
    makeLuaSprite('luz', 'stage/PapyrusL', -30, -200);
	setLuaSpriteScrollFactor('luz', 1, 1);
    scaleObject('luz', 10, 10);
    setObjectOrder('luz',20);
	setProperty('luz.visible',true)
	setProperty('luz.antialiasing',false);	
    

	addLuaSprite('luz', false);
end

function onStepHit()
	if curStep == 1 then
		
	setProperty('luz.visible',false)
	
	end		
    if curStep == 1144 then
		
	setProperty('luz.visible',true)
	
	end		
	if curStep == 1269 then
		
	setProperty('luz.visible',false)
	
	end

    if curStep == 1523 then
		
	setProperty('luz.visible',true)
	
	end	
	
	if curStep == 2029 then
		
	setProperty('luz.visible',false)
	
	end

    if curStep == 2282 then
		
	setProperty('luz.visible',true)
	
	end		
end