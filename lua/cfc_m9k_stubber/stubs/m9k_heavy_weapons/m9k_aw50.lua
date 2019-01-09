if SERVER then AddCSLuaFile() end

CFC_M9k_stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_aw50")

    weapon.Primary.Spread = .07
    weapon.Primary.IronAccuracy = .002
end)