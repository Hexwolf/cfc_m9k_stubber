if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_psg1")

    weapon.Primary.RPM = 400
    weapon.Primary.ClipSize = 5
    weapon.Primary.KickDown = .2
    weapon.Primary.Damage = 55
    weapon.Primary.Spread = .006
end)