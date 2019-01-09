if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_striker12")

    weapon.PrintName = "Stargazer"
    weapon.Primary.KickUp = 100
    weapon.Primary.KickDown = 0
    weapon.Primary.Damage = 3
end)