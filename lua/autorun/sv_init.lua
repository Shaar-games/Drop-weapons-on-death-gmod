

function DoDropWeapon( victim, inflictor, attacker )
	for i=1 , table.Count( victim:GetWeapons() ) do
		local ent = ents.Create( victim:GetWeapons()[i]:GetClass() )
		ent:SetPos( victim:GetPos() )
		ent:SetParent( victim.Entity )
		ent:Spawn()
	end
end

hook.Add("PlayerDeath","DROPWEAPON",DoDropWeapon)