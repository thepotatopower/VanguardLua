-- Fairy of Tragic Love

function NumberOfAbilities()
	return 1
end

function NumberOfParams()
	return 2
end

function GetParam(n)
	if n == 1 then
		return q.Location, l.PlayerRC, q.Other, o.This
	elseif n == 2 then
		return q.Location, l.Bind, q.Other, o.Order, q.Count, 1
	end
end

function ActivationRequirement(n)
	if n == 1 then
		return a.OnAttackHits, p.HasPrompt, p.Bind, 1
	end
end

function CheckCondition(n)
	if n == 1 then
		if obj.IsRearguard() and obj.IsBooster() and obj.EnemyVanguardHit() then
			return true
		end
	end
	return false
end

function CanFullyResolve(n)
	if n == 1 then
		if obj.Exists(2) then
			return true
		end
	end
	return false
end

function Activate(n)
	if n == 1 then
		obj.ChooseAddToHand(2)
	end
	return 0
end