function onStepHit()
	if curStep == 10 then
		modchart = false
	end
	if curStep == 384 or curStep == 768 or curStep == 1282 or curStep == 1536 or curStep == 1922 then
		fleetON()
	end
	if curStep == 640 or curStep == 1024 or curStep == 1408 or curStep == 1792 or curStep == 1926 then
		fleetOFF()
	end
	if curStep == 364 or curStep == 748 or curStep == 1256 or curStep == 1262 or curStep == 1284 or curStep == 1516 or curStep == 1902 then
		NotesON()
	end
	if curStep == 620 or curStep == 1004 or curStep == 1259 or curStep == 1280 or curStep == 1388 or curStep == 1772 or curStep == 1906 then
		NotesOFF()
	end
	if curStep == 1 then
		bt()
	end
end
function bt()
	doTweenX('botplayTxt', 'botplayTxt', 14.91, 0.53, 'linear')
	setTextString('botplayTxt', "What?");

end

function fleetON()

	doTweenX('botplayTxt', 'botplayTxt', 634.91, 0.53, 'linear')
	setTextString('botplayTxt', "Ha!");
	    setTextColor('botplayTxt', 'ffa3a6')    


		for i=0,4,1 do
			setPropertyFromGroup('playerStrums', i, 'texture', 'FakeHurt')
		end

local squish= 650
local incs = true

		noteTweenX('4',4,defaultPlayerStrumX0-squish,2.01,'backOut')
		noteTweenX('5',5,defaultPlayerStrumX1-squish,2.01,'backOut')
		noteTweenX('6',6,defaultPlayerStrumX2-squish,2.01,'backOut')
		noteTweenX('7',7,defaultPlayerStrumX3-squish,2.41,'backOut')

local move= 3180

		noteTweenY('0',0,defaultOpponentStrumY0+move,88.01,'backOut')
		noteTweenY('1',1,defaultOpponentStrumY1+move,78.01,'backOut')
		noteTweenY('2',2,defaultOpponentStrumY2+move,68.01,'backOut')
		noteTweenY('3',3,defaultOpponentStrumY3+move,58.01,'backOut')
end

function fleetOFF()

	doTweenX('botplayTxt', 'botplayTxt', 24.91, 0.53, 'linear')
	setTextString('botplayTxt', "Help!");
	    setTextColor('botplayTxt', 'cc986a')   

		for i=0,4,1 do
			setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets')
		end

local squish= 30
local incs = true

		noteTweenX('4',4,defaultPlayerStrumX0-squish,2.41,'backOut')
		noteTweenX('5',5,defaultPlayerStrumX1-squish,2.01,'backOut')
		noteTweenX('6',6,defaultPlayerStrumX2-squish,2.01,'backOut')
		noteTweenX('7',7,defaultPlayerStrumX3-squish,2.11,'backOut')

	end

function NotesON()

        for i = 0, getProperty('unspawnNotes.length')-1 do
		    setPropertyFromGroup('unspawnNotes', i, 'texture', 'FakeHurt');
        end
end

function NotesOFF()

        for i = 0, getProperty('unspawnNotes.length')-1 do
		    setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
        end
	end	