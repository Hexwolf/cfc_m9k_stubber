if SERVER then AddCSLuaFile() end

CFC_M9k_stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_mp5")

    weapon.Primary.Damage = 10
end)