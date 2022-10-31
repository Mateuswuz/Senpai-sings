function onUpdate()
	turnvalue = -10
if curBeat % 2 == 0 then
turnvalue = -5
end

setProperty('iconP2.angle',-turnvalue)
setProperty('iconP1.angle',turnvalue)

doTweenAngle('iconTween1','iconP1',0,crochet/222,'circOut')
doTweenAngle('iconTween2','iconP2',0,crochet/222,'circOut')

end

