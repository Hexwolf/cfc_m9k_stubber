if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub(function()
    local sent = scripted_ents.GetStored("m9k_ammo_frags").t

    sent.ENT.Spawnable = false
    sent.ENT.AdminOnly = true
end)