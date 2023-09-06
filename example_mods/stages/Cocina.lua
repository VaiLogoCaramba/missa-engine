function onCreate()
	
	--mierda del fondo base
	makeLuaSprite('Cocina fondo','Cocina fondo', -650, -230);
	setScrollFactor('Cocina fondo', 1, 1);	
    scaleObject('Cocina fondo',1,1);
	
    --el rola buen pedo
	makeAnimatedLuaSprite('Rola', 'Rola', 250, -140);
	setScrollFactor('Rola', 1, 1);
	scaleObject('Rola',1,1);

    --La hermosa mafer uwu
	makeAnimatedLuaSprite('Mafer', 'Mafer', 550, -40);
	setScrollFactor('Mafer', 1, 1);
    scaleObject('Rola',1,1);

	--weas de la barra
	makeLuaSprite('Cocina barra','Cocina barra', -660, 120);
	setScrollFactor('Cocina barra',1, 1);
	setScrollFactor('Cocina barra', 1, 1);	
	makeLuaSprite('Cocina Ventana','cocina Ventana', -600, -300);
	setScrollFactor('Cocina Ventana',1, 1);
	setScrollFactor('Cocina Ventana', 1, 1);

    addLuaSprite('Cocina fondo', false)
	addLuaSprite('Rola', false);
	addAnimationByPrefix('Rola', 'Rola', 'Rola', 18, true);
	addLuaSprite('Mafer', false);
   	addAnimationByPrefix('Mafer', 'Mafer', 'Mafer', 18, true);
   	addLuaSprite('Cocina Ventana', false);
	addLuaSprite('Cocina barra', false);

end

