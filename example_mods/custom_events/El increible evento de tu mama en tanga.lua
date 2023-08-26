function onEvent(name, value1, value2)
	if name == 'Change Healt Bar' then
		Fase = tonumber(value1);
	
	    if  Fase == 1 then
		    makeLuaSprite('luz', 'stage/PapyrusL', -30, -300);
	        setLuaSpriteScrollFactor('luz', 1, 1);
	        scaleObject('luz', 10, 10);
		    addLuaSprite('Health', true)
	        setObjectOrder('luz',20);
	        setProperty('luz.antialiasing',false);	
            addLuaSprite('luz', false);
	    end	
		if  Fase == 2 then
            makeAnimatedLuaSprite('Health', 'healthbarSacorg',-500, -300);			
	        setObjectCamera('Health', 'hud')
	        addLuaSprite('Health', true)
	        setObjectOrder('Health', getObjectOrder('healthBar')+1)
	        setProperty('healthBar.visible', true)
		    addLuaSprite('Health', false); 
	        addAnimationByPrefix('Health', 'idle', 'healthbarSacorg Idle', 10, true);
	    end	
		
		
    end
end

