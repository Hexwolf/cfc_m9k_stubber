if SERVER then AddCSLuaFile() end

CFC_M9k_stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_m60")

    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .06
end)