function onSongStart()
    setProperty("timeBar.color",getColorFromHex("FF0000"))
    setProperty('numScore.visible', false)
end

function onCreate()
    setProperty('skipCountdown', true)
end

function onUpdate()
    setProperty('showRating', false)
    setProperty('showComboNum', false)
end