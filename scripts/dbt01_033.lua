-- Electro Spartan

function NumberOfAbilities()
	return 2
end

function NumberOfParams()
	return 1
end

function GetParam(n)
	if n == 1 then
		return q.Location, l.PlayerHand, q.Count, 1
	end
end

function ActivationRequirement(n)
	if n == 1 then
		return a.OnRide, p.HasPrompt, p.AddToSoul, 1
	elseif n == 2 then
		return a.PlacedOnRC, p.HasPrompt, p.CB, 1
	end
end

function CheckCondition(n)
	if n == 1 then
		if obj.WasRodeUponBy("Master of Gravity, Baromagnes") then
			return true
		end
	elseif n == 2 then
		if obj.LastPlacedOnRC() then
			return true
		end
	end
	return false
end

function CanFullyResolve(n)
	if n == 1 then
		return true
	elseif n == 2 then
		return true
	end
	return false
end

function Activate(n)
	if n == 1 then
		obj.Draw(1)
		obj.SoulCharge(1)
	elseif n == 2 then
		obj.SoulCharge(2)
	end
	return 0
end