function onSongStart()

    setProperty('timeBar.x', 0)
    setProperty('timeBarBG.x', 0)

    setProperty('timeBar.y', 675)
    setProperty('timeBarBG.y', 675)

    setProperty('timeTxt.x', 10)
    setProperty('timeTxt.y', 688)
    scaleObject('timeTxt',0.8,0.8)

end
function onCreatePost()
    setProperty('timeBar.color', getColorFromHex("FF0000"))
    setProperty('scoreTxt.y', 690)
   	makeLuaSprite('yt', 'YoutubeThings', -10, 675)
	setObjectCamera('yt', 'hud')
	addLuaSprite('yt', true)
    setProperty('yt.alpha', 0)  
end
function onStepHit()
  if curStep == 1 then
    doTweenAlpha('yt.alpha', 'yt', 1, 0.5, 'linear') 
  end
end