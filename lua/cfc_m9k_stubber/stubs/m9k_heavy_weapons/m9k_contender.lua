if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_contender")

    weapon.Primary.Damage = 55
end)