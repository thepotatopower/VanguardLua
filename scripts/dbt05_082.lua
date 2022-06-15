-- グリントブレス・ドラゴン

function RegisterAbilities()
	local ability1 = NewAbility(GetID())
	ability1.SetDescription(1)
	ability1.SetTiming(a.Cont)
	ability1.SetLocation(l.RC, l.GC)
	ability1.SetActivation("Activation")
end

function Activation()
	if obj.GetNumberOf({q.Location, l.Soul, q.Grade, 2, q.NameContains, obj.LoadName("Blaster"), q.Other, o.DifferentNames}) >= 2 then
		obj.AddCardValue({q.Other, o.This}, cs.BonusPower, 2000, p.Continuous)
		obj.AddCardValue({q.Other, o.This}, cs.BonusShield, 5000, p.Continuous)
	end
end