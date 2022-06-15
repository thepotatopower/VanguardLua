-- トリクスタ

function RegisterAbilities()
	-- cont
	local ability1 = NewAbility(GetID())
	ability1.SetDescription(1)
	ability1.SetTiming(a.Cont)
	ability1.SetLocation(l.RC)
	ability1.SetActivation("Activation")
end

function Activation()
	obj.AddCardState({q.Location, l.PlayerRC, q.Other, o.This}, cs.Resist, p.Continuous)
end