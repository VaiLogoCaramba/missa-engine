function onCreate()
	-- background shit
	makeLuaSprite('habitacion', 'habitacion', -700, -500);
	setScrollFactor('habitacion', 1.0, 1.0);
	
	makeAnimatedLuaSprite('closet', 'closet', 225, 120);
  	addAnimationByPrefix('closet', 'Puertas', 'Puertas', 24, true);
    addLuaSprite('Puertas', false);
    objectPlayAnimation('Puertas', 'Puertas', true);

	makeLuaSprite('funny', 'light above', 250, 0);
	setScrollFactor('funny', 0.9, 0.9);
	setProperty('funny.visible',true)
	setBlendMode('funny','add')
	addLuaSprite('funny', false);
	setObjectCamera('funny','hud')
	setProperty('funny.alpha', 1)		

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