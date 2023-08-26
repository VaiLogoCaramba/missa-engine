function onCreate()
	-- background shit
	makeAnimatedLuaSprite('MainMenu','customMenu/Cuadros', 20, -50) scaleObject('MainMenu',screenWidth/1280,screenHeight/720)
	addAnimationByPrefix('MainMenu','Cuadros','Cuadros',24,true) addLuaSprite('MainMenu')

	makeLuaSprite('ScreenA', 'customMenu/pantallaArcade', 350, 200)
	addLuaSprite('ScreenA')
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