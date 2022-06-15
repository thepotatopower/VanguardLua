-- スチームガンナー ブローディ

function RegisterAbilities()
	local ability1 = NewAbility(GetID())
	ability1.SetDescription(1)
	ability1.SetTiming(a.PutOnGC)
	ability1.SetCost("Cost")
	ability1.SetCanFullyResolve("CanFullyResolve")
	ability1.SetTrigger("Trigger")
	ability1.SetActivation("Activation")
end

function Cost(check)
	if check then return obj.CanCB(1) end
	obj.CounterBlast(1)
end

function CanFullyResolve()
	return obj.IsSameZone()
end

function Trigger()
	return obj.IsApplicable()
end

function Activation()
	obj.AddCardValue({q.Location, l.GC, q.Other, o.ThisFieldID}, cs.BonusShield, 5000, p.UntilEndOfBattle)
end