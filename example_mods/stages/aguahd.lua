function onCreate()
	-- background shit
	
    makeLuaSprite('stagefront', 'stage/waterfallhd', 40, -60);
	setLuaSpriteScrollFactor('stagefront', 1, 1);
	scaleObject('stagefront', 10, 10);
	setProperty('stagefront.antialiasing',false);

	addLuaSprite('stagefront', false);

	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

