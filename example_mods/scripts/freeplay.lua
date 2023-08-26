--Missa Freeplay
SongSelected = 0
function onCreate()
	if songName == 'soul-selection' then
		function onStartCountdown() 
			if not allowCountdown then
				return Function_Stop
			end
		
			if allowCountdown then
				return Function_Continue
			end
		end

    playMusic('freakyMenuFreeplay', 0.8, true)

		makeLuaSprite('missa', 'customMenu/Screen/missa', 380, 172)
        scaleObject('missa',0.9,0.9)
		addLuaSprite('missa', true)
		setScrollFactor('missa', 1, 1);
        setProperty('missa.visible', false)

		makeLuaSprite('Lyrics', 'customMenu/Screen/Lyrics', 365, 152)
		addLuaSprite('Lyrics', true)
		setScrollFactor('Lyrics', 1, 1);
            setProperty('Lyrics.visible', false)

		makeLuaSprite('Billy', 'customMenu/Screen/Billy', 365, 152)
		addLuaSprite('Billy', true)
		setScrollFactor('Billy', 1, 1);
            setProperty('Billy.visible', false)

          makeLuaSprite('Pizza', 'customMenu/Screen/Pizza', 410, 172)
        scaleObject('Pizza',0.8,0.8)
		addLuaSprite('Pizza', true)
		setScrollFactor('Pizza', 1, 1);
            setProperty('Pizza.visible', false)

          makeLuaSprite('Goodfun', 'customMenu/Screen/Goodfun', 410, 190)
        scaleObject('Goodfun',0.8,0.8)
		addLuaSprite('Goodfun', true)
		setScrollFactor('Goodfun', 1, 1);
            setProperty('Goodfun.visible', false)

          makeLuaSprite('wizard', 'customMenu/Screen/Wizard', 350, 152)
		addLuaSprite('wizard', true)
		setScrollFactor('wizard', 1, 1);
            setProperty('wizard.visible', false)

          makeLuaSprite('Aqui_estoy', 'customMenu/Screen/aqui-estoy', 410, 190)
       scaleObject('Aqui_estoy',0.8,0.8)
		addLuaSprite('Aqui_estoy', true)
		setScrollFactor('Aqui_estoy', 1, 1);
            setProperty('Aqui_estoy.visible', false)

          makeLuaSprite('Pokemon_go', 'customMenu/Screen/Pokeball', 390, 160)
		addLuaSprite('Pokemon_go', true)
		setScrollFactor('Pokemon_go', 1, 1);
            setProperty('Pokemon_go.visible', false)

          makeLuaSprite('ignt', 'customMenu/Screen/ignt', 390, 160)
		addLuaSprite('ignt', true)
		setScrollFactor('ignt', 1, 1);
            setProperty('ignt.visible', false)

          makeLuaSprite('Determinacion', 'customMenu/Screen/Determinacion', 390, 160)
		addLuaSprite('Determinacion', true)
		setScrollFactor('Determinacion', 1, 1);
            setProperty('Determinacion.visible', false)

          makeLuaSprite('rap_kirby', 'customMenu/Screen/kirby', 390, 160)
        addLuaSprite('rap_kirby', true)
        setScrollFactor('rap_kirby', 1, 1);
            setProperty('rap_kirby.visible', false)

          makeLuaSprite('Otomatone_Vs_Stylophone', 'customMenu/Screen/OvS', 370, 160)
        addLuaSprite('Otomatone_Vs_Stylophone', true)
        setScrollFactor('Otomatone_Vs_Stylophone', 1, 1);
            setProperty('Otomatone_Vs_Stylophone.visible', false)

        makeAnimatedLuaSprite('Maquinita', 'customMenu/Maquinita', 150, 0)
        addAnimationByPrefix('Maquinita', 'Maquinita', 'Maquinita', 24, true)
        addLuaSprite('Maquinita', true)

		makeLuaSprite('song0', 'customMenu/freeplayText/Lyrics', 800, 240)
		addLuaSprite('song0', true)
		setScrollFactor('song0', 1, 1);
            setProperty('song0.visible', false)

		makeLuaSprite('song1', 'customMenu/freeplayText/beepy-style', 800, 170)
		addLuaSprite('song1', true)
		setScrollFactor('song1', 1, 1);
            setProperty('song1.visible', false)

          makeLuaSprite('song2', 'customMenu/freeplayText/rocktime', 800, 240)
		addLuaSprite('song2', true)
		setScrollFactor('song2', 1, 1);
            setProperty('song2.visible', false)

          makeLuaSprite('song3', 'customMenu/freeplayText/Billy', 800, 170)
		addLuaSprite('song3', true)
		setScrollFactor('song3', 1, 1);
            setProperty('song3.visible', false)

          makeLuaSprite('song4', 'customMenu/freeplayText/Pizza', 800, 240)
		addLuaSprite('song4', true)
		setScrollFactor('song4', 1, 1);
            setProperty('song4.visible', false)

          makeLuaSprite('song5', 'customMenu/freeplayText/Goodfun', 800, 240)
		addLuaSprite('song5', true)
		setScrollFactor('song5', 1, 1);
            setProperty('song5.visible', false)

          makeLuaSprite('song6', 'customMenu/freeplayText/Wizard', 800, 240)
		addLuaSprite('song6', true)
		setScrollFactor('song6', 1, 1);
            setProperty('song6.visible', false)

          makeLuaSprite('song7', 'customMenu/freeplayText/Aqui-estoy', 800, 240)
		addLuaSprite('song7', true)
		setScrollFactor('song7', 1, 1);
            setProperty('song7.visible', false)

          makeLuaSprite('song8', 'customMenu/freeplayText/IGNT', 800, 170)
		addLuaSprite('song8', true)
		setScrollFactor('song8', 1, 1);
            setProperty('song8.visible', false)

          makeLuaSprite('song9', 'customMenu/freeplayText/Determinacion', 800, 240)
		addLuaSprite('song9', true)
		setScrollFactor('song9', 1, 1);
            setProperty('song9.visible', false)

          makeLuaSprite('song10', 'customMenu/freeplayText/Pokemon_go', 800, 240)
        addLuaSprite('song10', true)
        setScrollFactor('song10', 1, 1);
            setProperty('song10.visible', false)

          makeLuaSprite('song11', 'customMenu/freeplayText/rap_kirby', 800, 170)
        addLuaSprite('song11', true)
        setScrollFactor('song11', 1, 1);
            setProperty('song11.visible', false)

          makeLuaSprite('song12', 'customMenu/freeplayText/Ovs', 800, 170)
        addLuaSprite('song12', true)
        setScrollFactor('song12', 1, 1);
            setProperty('song12.visible', false)

          makeLuaSprite('song13', 'customMenu/freeplayText/Grape-soda', 800, 240)
        addLuaSprite('song13', true)
        setScrollFactor('song13', 1, 1);
            setProperty('song13.visible', false)

          makeAnimatedLuaSprite('song14', 'customMenu/freeplayText/Nightmare', 950, 205)
          addAnimationByPrefix('song14','Nightmare','Nightmare',24,true)
          scaleObject('song14',1.5,1.5)
        addLuaSprite('song14', true)
        setScrollFactor('song14', 1, 1);
            setProperty('song14.visible', false)

		return Function_Continue;
	end
end
function onUpdate()
  if songName == 'soul-selection' then
      
    onChangeSong()
    if keyJustPressed("up") then
      if SongSelected > 0 then
        SongSelected = SongSelected - 1
        playSound("scrollMenu", 1)
        onChangeSong()
      elseif SongSelected == 0 then
        SongSelected = 14
        playSound("scrollMenu", 1)
        onChangeSong()
      end
    end
    if keyJustPressed("down") then
      if SongSelected < 14 then
        SongSelected = SongSelected + 1
        playSound("scrollMenu", 1)
        onChangeSong()
      elseif SongSelected == 14 then
        SongSelected = 0
        playSound("scrollMenu", 1)
        onChangeSong()
    end
  end
  end
  if keyJustPressed("back") then
    exitSong(false)
  end
end
function onChangeSong()
  --SongSelected
  setProperty('song0.visible', false)
  setProperty('song1.visible', false)
  setProperty('song2.visible', false)
  setProperty('song3.visible', false)
  setProperty('song4.visible', false)
  setProperty('song5.visible', false)
  setProperty('song6.visible', false)
  setProperty('song7.visible', false)
  setProperty('song8.visible', false)
  setProperty('song9.visible', false)
  setProperty('song10.visible', false)
  setProperty('song11.visible', false)
  setProperty('song12.visible', false)
  setProperty('song13.visible', false)
  setProperty('song14.visible', false)
  --ImagenSelected
  setProperty('Lyrics.visible', false)
  setProperty('missa.visible', false)
  setProperty('Billy.visible', false)
  setProperty('Pizza.visible', false)
  setProperty('Goodfun.visible', false)
  setProperty('wizard.visible', false)
  setProperty('Aqui_estoy.visible', false)
  setProperty('ignt.visible', false)
  setProperty('Determinacion.visible', false)
  setProperty('Pokemon_go.visible', false)
  setProperty('Otomatone_Vs_Stylophone.visible', false)
  setProperty('rap_kirby.visible', false)
  if SongSelected == 0 then
    setProperty('song0.visible', true)
    setProperty('Lyrics.visible', true)
    if keyJustPressed("accept") then
      loadSong("Lyrics", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 1 then
    setProperty('song1.visible', true)
    setProperty('missa.visible', true)
    if keyJustPressed("accept") then
      loadSong("beepy_style", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 2 then
    setProperty('song2.visible', true)
    setProperty('missa.visible', true)
    if keyJustPressed("accept") then
      loadSong("rocktime", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 3 then
    setProperty('song3.visible', true)
    setProperty('Billy.visible', true)
    if keyJustPressed("accept") then
      loadSong("Billy", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 4 then
    setProperty('song4.visible', true)
    setProperty('Pizza.visible', true)
    if keyJustPressed("accept") then
      loadSong("Pizza", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 5 then
    setProperty('song5.visible', true)
    setProperty('Goodfun.visible', true)
    if keyJustPressed("accept") then
      loadSong("Goodfun", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 6 then
    setProperty('song6.visible', true)
    setProperty('wizard.visible', true)
    if keyJustPressed("accept") then
      loadSong("wizard", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 7 then
    setProperty('song7.visible', true)
    setProperty('missa.visible', true)
    if keyJustPressed("accept") then
      loadSong("Aqui_estoy", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 8 then
    setProperty('song8.visible', true)
    setProperty('ignt.visible', true)
    if keyJustPressed("accept") then
      loadSong("ignt", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 9 then
    setProperty('song9.visible', true)
    setProperty('Determinacion.visible', true)
    if keyJustPressed("accept") then
      loadSong("Determinacion", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 10 then
    setProperty('song10.visible', true)
    setProperty('Pokemon_go.visible', true)
    if keyJustPressed("accept") then
      loadSong("Pokemon_go", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 11 then
    setProperty('song11.visible', true)
    setProperty('rap_kirby.visible', true)
    if keyJustPressed("accept") then
      loadSong("rap_kirby", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 12 then
    setProperty('song12.visible', true)
    setProperty('Otomatone_Vs_Stylophone.visible', true)

    if keyJustPressed("accept") then
      loadSong("Otomatone_Vs_Stylophone", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 13 then
    setProperty('song13.visible', true)
    setProperty('Goodfun.visible', true)

    if keyJustPressed("accept") then
      loadSong("Grape_soda", -1)
      playSound("confirmMenu", 1)
    end
  elseif SongSelected == 14 then
    setProperty('song14.visible', true)
    if keyJustPressed("accept") then
      loadSong("Nightmare", -1)
      playSound("confirmMenu", 1)
    end
  end
end