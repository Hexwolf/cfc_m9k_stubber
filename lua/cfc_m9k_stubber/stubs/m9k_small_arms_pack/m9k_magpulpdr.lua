if SERVER then AddCSLuaFile() end

CFC_M9k_stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_magpulpdr")

    weapon.Primary.Damage = 20
end)