-- Script by AquaStrikr (https://twitter.com/AquaStrikr_)
function onCreatePost()
	if songName == 'determinacion' then
		makeLuaSprite('HP', 'HP')
		setObjectCamera('HP', 'hud')
		addLuaSprite('HP', true)
		setObjectOrder('HP', getObjectOrder('healthBar') + 1)
		setProperty('healthBar.visible', true)
	else
	makeLuaSprite('Health', 'CoolHealt')
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	setProperty('healthBar.visible', true)
	end
end

function onUpdatePost(elapsed)
	setProperty('Health.visible', getProperty('scoreTxt.visible'))
	setProperty('Health.alpha', getProperty('scoreTxt.alpha'))
	setProperty('Health.x', getProperty('healthBar.x') - 45)
	setProperty('Health.y', getProperty('healthBar.y') - 20)
	setProperty('HP.visible', getProperty('scoreTxt.visible'))
	setProperty('HP.alpha', getProperty('scoreTxt.alpha'))
	setProperty('HP.x', getProperty('healthBar.x') - 55)
	setProperty('HP.y', getProperty('healthBar.y') - 5)
end