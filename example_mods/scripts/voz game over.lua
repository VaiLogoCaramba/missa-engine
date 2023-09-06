finishedGameover = false;
startedPlaying = false;

-- voz pendeja
function onGameOverStart()
	runTimer('playvoice', 2.7);
	return Function_Continue;
end

function onGameOverConfirm(reset)
	finishedGameover = true;
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- no se que es esta mamada,pero si no la pongo,la wea no sirve
	if not finishedGameover and tag == 'playvoice' then
		math.randomseed(os.time());
		soundName = string.format('%i', math.random(1, 7));
		playSound(soundName, 1, 'voice');
		startedPlaying = true;
	end
end

function onSoundFinished(tag)
	if tag == 'voice' and not finishedGameover then
		soundFadeIn(nil, 4, 0.2, 1);
	end
end