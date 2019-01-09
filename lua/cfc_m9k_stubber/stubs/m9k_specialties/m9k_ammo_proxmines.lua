if SERVER then AddCSLuaFile() end

CFC_M9k_stubber.registerStub(function()
    local sent = scripted_ents.GetStored("m9k_ammo_proxmines").t

    sent.ENT.AdminOnly = true
end)