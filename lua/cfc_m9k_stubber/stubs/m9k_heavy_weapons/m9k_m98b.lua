if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_m98b")

    weapon.Primary.Spread = .07
    weapon.Primary.IronAccuracy = .002
end)