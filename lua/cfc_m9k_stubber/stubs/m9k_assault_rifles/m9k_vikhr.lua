if SERVER then AddCSLuaFile() end

CFC_M9k_stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_vikhr")

    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .07
end)