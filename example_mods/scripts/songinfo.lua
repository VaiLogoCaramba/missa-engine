musico = 'artist'
el3tricksong = {'Goodfun' , 'Cursed_Symphony'}
fadesong = {'Lyrics' , 'Rocktime'}
missasong = {'Aqui_estoy' , 'cuarentena' , 'cancion_china' , 'oaxaca' , 'otomatone' , 'determinacion' , 'Cancion_al_Mar', 'Rap_Mario_3' , 'rap_kirby'}
dontplay = {'march' , 'true-trolling'}

function onCreate()
    makeAnimatedLuaSprite('songinfo','Borde',-650,530)
    
    setGraphicSize('songinfo',getProperty('songinfo.width') * 0.8)
    setObjectCamera('songinfo','camHUD')

    makeLuaText('songname','',0,getProperty('songinfo.x') -650,getProperty('songinfo.y') + 20)
    setObjectCamera('songname','camHUD')

    setTextBorder('songname',4,'000000')
    setTextSize('songname', 40)
    setTextFont('songname','vcr.ttf')

    if downscroll then
        setProperty('songinfo.flipY',true)
        setProperty('songinfo.y', 0)
        setProperty('songname.y', 0)
        
    end

    addLuaText('songname',false)
end

function onCreatePost()

    for _, s in ipairs(el3tricksong) do
        if s == songName then
             musico = 'el3Trick'
          break
        end
      end

      for _, s in ipairs(fadesong) do
        if s == songName then
             musico = 'FadeAway'
          break
        end
      end

      for _, s in ipairs(missasong) do
        if s == songName then
             musico = 'Missasinfonia'
          break
        end
      end
      
      if songName ==  'Billy' then
        musico = 'KennyL'
      end
      
      if songName ==  'Pizza' then
        musico = 'el3Trick & KennyL'
      end

      if songName ==  'Wizard' then
        musico = 'FadeAway & Kenny'
      end

      if songName ==  'Cancion_al_Mar' then
        musico = 'Missasinfonia'
      end

end

function onStepHit()
  if curStep == 1 then
    addAnimationByPrefix('songinfo', 'Borde', 'Borde', 28, true)
    addLuaSprite('songinfo', false)
    setTextString('songname',musico.. '-' ..songName)
    doTweenX('aw','songname',80,2,'sineOut')
    doTweenX('wa','songinfo',30,2,'sineOut')
  end
  --i stole this from indie cross art lmaooooo
  if curStep == 35 then
    doTweenX('aw','songname',-2000,2,'sineIn')
    doTweenX('wa','songinfo',-2050,2,'sineIn')
  end
end