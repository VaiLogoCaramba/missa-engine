function onStepHit()
	if curStep == 1 then
			doTweenX('aw','musicBar', 650,2,'sineOut')
			doTweenX('wa','musicText', 700,2,'sineOut')
	end
	if curStep == 35 then
			doTweenX('aw','musicBar',2200,2,'sineIn')
			doTweenX('wa','musicText',2250,2,'sineIn')
	end
end
function onCreate()
	-- background shit
	makeLuaSprite('habitacion', 'habitacion', -700, -500);
	setScrollFactor('habitacion', 1.0, 1.0);
	
	makeAnimatedLuaSprite('closet', 'closet', 225, 120);
  	addAnimationByPrefix('closet', 'Puertas', 'Puertas', 24, true);
    addLuaSprite('Puertas', false);
    objectPlayAnimation('Puertas', 'Puertas', true);

	makeAnimatedLuaSprite('Bonnie', 'Bonnie', -220, 170);
	addAnimationByPrefix('Bonnie', 'Bonnie', 'Bonnie', 24, true);
	addLuaSprite('Bonnie', true);
	objectPlayAnimation('Bonnie', 'Bonnie', true);	
	  
	makeLuaText('musicText',"TLT IGNT - Missa cover",0,2050,320);
    setTextSize('musicText',25);
    setTextBorder("musicText", 1, '00001');
    addLuaText('musicText');
   
   makeLuaSprite('musicBar', 'musicBar',2050,300);
	setScrollFactor('musicBar', 1.0, 1.0);
	addLuaSprite('musicBar',false);
    setObjectCamera('musicBar','camHUD');

    makeAnimatedLuaSprite('Chica', 'Chica', 850, 270);
	addAnimationByPrefix('Chica', 'Chica', 'Chica', 30, true);
	  addLuaSprite('Chica', true);
	  objectPlayAnimation('Chica', 'Chica', true);	
	  
	makeAnimatedLuaSprite('Mini_Freddys', 'Mini_Freddys', -100, 430);
	addAnimationByPrefix('Mini_Freddys', 'Mini_Freddys', 'Mini_Freddys', 30, true);
	  addLuaSprite('Mini_Freddys', true);
	  objectPlayAnimation('Mini_Freddys', 'Mini_Freddys', true);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeLuaSprite('habitacion', 'habitacion', -600, -300);
	setScrollFactor('habitacion', 0.9, 0.9);
	end
	
    addLuaSprite('habitacion', false);
	addLuaSprite('closet', false);
	addLuaSprite('Bonnie', false);
	addLuaSprite('Chica', false);
	addLuaSprite('Mini_Freddys', false);
	addLuaSprite('musicBar', true);
	addluaText('musicText', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

