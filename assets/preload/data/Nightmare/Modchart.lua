local defaultNotePos = {};
local move = 40; -- how much it moves before going the other direction
 
function onStepHit()

	
	if curStep >= 675 then
		setProperty('camHUD.visible', false);
	end

	if curStep >= 109 then

		for i=0, 7 do
			setPropertyFromGroup('strumLineNotes', i, 'downScroll', true)
	   	end
		
		noteTweenY('bfTween1', 0, 570, 0.2, cubeInOut)
		noteTweenY('bfTween2', 1, 570, 0.2, cubeInOut)
		noteTweenY('bfTween3', 2, 570, 0.2, cubeInOut)
		noteTweenY('bfTween4', 3, 570, 0.2, cubeInOut)
		noteTweenY('dadTween1', 4, 570, 0.2, cubeInOut)
		noteTweenY('dadTween2', 5, 570, 0.2, cubeInOut)
		noteTweenY('dadTween3', 6, 570, 0.2, cubeInOut)
		noteTweenY('dadTween4', 7, 570, 0.2, cubeInOut)
	end

	if curStep >= 112 then

		for i=0, 7 do
			setPropertyFromGroup('strumLineNotes', i, 'downScroll', false)
	   	end
		
		noteTweenY('bfTween1', 0, 50, 0.2, cubeInOut)
		noteTweenY('bfTween2', 1, 50, 0.2, cubeInOut)
		noteTweenY('bfTween3', 2, 50, 0.2, cubeInOut)
		noteTweenY('bfTween4', 3, 50, 0.2, cubeInOut)
		noteTweenY('dadTween1', 4, 50, 0.2, cubeInOut)
		noteTweenY('dadTween2', 5, 50, 0.2, cubeInOut)
		noteTweenY('dadTween3', 6, 50, 0.2, cubeInOut)
		noteTweenY('dadTween4', 7, 50, 0.2, cubeInOut)
	end

	if curStep >= 132 then
		
		noteTweenX('bfTween1', 4, 90, 0.2, 'linear');
		noteTweenX('bfTween2', 5, 205, 0.2, 'linear');
		noteTweenX('bfTween3', 6, 315, 0.2, 'linear');
		noteTweenX('bfTween4', 7, 425, 0.2, 'linear');
		noteTweenX('dadTween1', 0, 730, 0.2, 'linear');
		noteTweenX('dadTween2', 1, 845, 0.2, 'linear');
		noteTweenX('dadTween3', 2, 955, 0.2, 'linear');
		noteTweenX('dadTween4', 3, 1065, 0.2, 'linear');
	end

	if curStep >= 135 then

		noteTweenX('dadTween1', 0, 90, 0.2, 'linear');
		noteTweenX('dadTween2', 1, 205, 0.2, 'linear');
		noteTweenX('dadTween3', 2, 315, 0.2, 'linear');
		noteTweenX('dadTween4', 3, 425, 0.2, 'linear');
		noteTweenX('bfTween1', 4, 730, 0.2, 'linear');
		noteTweenX('bfTween2', 5, 845, 0.2, 'linear');
		noteTweenX('bfTween3', 6, 955, 0.2, 'linear');
		noteTweenX('bfTween4', 7, 1065, 0.2, 'linear');
	end

	if curStep >= 156 then

		for i=0, 7 do
			setPropertyFromGroup('strumLineNotes', i, 'downScroll', true)
	   	end
		
		noteTweenY('bfTween1', 0, 570, 0.2, cubeInOut)
		noteTweenY('bfTween2', 1, 570, 0.2, cubeInOut)
		noteTweenY('bfTween3', 2, 570, 0.2, cubeInOut)
		noteTweenY('bfTween4', 3, 570, 0.2, cubeInOut)
		noteTweenY('dadTween1', 4, 570, 0.2, cubeInOut)
		noteTweenY('dadTween2', 5, 570, 0.2, cubeInOut)
		noteTweenY('dadTween3', 6, 570, 0.2, cubeInOut)
		noteTweenY('dadTween4', 7, 570, 0.2, cubeInOut)
	end

	if curStep >= 159 then

		for i=0, 7 do
			setPropertyFromGroup('strumLineNotes', i, 'downScroll', false)
	   	end
		
		noteTweenY('bfTween1', 0, 50, 0.2, cubeInOut)
		noteTweenY('bfTween2', 1, 50, 0.2, cubeInOut)
		noteTweenY('bfTween3', 2, 50, 0.2, cubeInOut)
		noteTweenY('bfTween4', 3, 50, 0.2, cubeInOut)
		noteTweenY('dadTween1', 4, 50, 0.2, cubeInOut)
		noteTweenY('dadTween2', 5, 50, 0.2, cubeInOut)
		noteTweenY('dadTween3', 6, 50, 0.2, cubeInOut)
		noteTweenY('dadTween4', 7, 50, 0.2, cubeInOut)
	end

	if curStep >= 180 then
		
		noteTweenX('bfTween1', 4, 90, 0.2, 'linear');
		noteTweenX('bfTween2', 5, 205, 0.2, 'linear');
		noteTweenX('bfTween3', 6, 315, 0.2, 'linear');
		noteTweenX('bfTween4', 7, 425, 0.2, 'linear');
		noteTweenX('dadTween1', 0, 730, 0.2, 'linear');
		noteTweenX('dadTween2', 1, 845, 0.2, 'linear');
		noteTweenX('dadTween3', 2, 955, 0.2, 'linear');
		noteTweenX('dadTween4', 3, 1065, 0.2, 'linear');
	end

	if curStep >= 183 then

		noteTweenX('dadTween1', 0, 90, 0.2, 'linear');
		noteTweenX('dadTween2', 1, 205, 0.2, 'linear');
		noteTweenX('dadTween3', 2, 315, 0.2, 'linear');
		noteTweenX('dadTween4', 3, 425, 0.2, 'linear');
		noteTweenX('bfTween1', 4, 730, 0.2, 'linear');
		noteTweenX('bfTween2', 5, 845, 0.2, 'linear');
		noteTweenX('bfTween3', 6, 955, 0.2, 'linear');
		noteTweenX('bfTween4', 7, 1065, 0.2, 'linear');
	end

end

function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
 
        table.insert(defaultNotePos, {x,y})
    end
end -- get the property of the note

function onUpdate(elapsed)
 
    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 450) * (bpm / 100) --this is basically speed, idk how to adjust it

    if curStep >= 480 then
        for i = 0,7 do --the amount of notes like 0,7 is all, 0.3 is all opponent and 4,7 is all player. to do single just 0,0
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + move * math.sin((currentBeat + i*2) * math.pi))
                                                                                    -- ^  these can be numbers itself dw
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + move * math.cos((currentBeat + i*0.3) * math.pi))
        end                                                          --this number is to determine how the arrows move ^
    end                                                              --odd numbers (ex. 1, 3) are for zig zag and even numbers (ex. 2, 4) are for the whole thing, 0.3 and under is waving
    if curStep == 335 then --this is to revert back to original position
        for i = 0,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1])
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2])
        end
    end
end