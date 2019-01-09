if SERVER then AddCSLuaFile() end

CFC_M9k_stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_remington870")

    weapon.Primary.NumShots = 10
    weapon.Primary.Damage = 5
end)