if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_suicide_bomb")

    weapon.Spawnable = false
    weapon.AdminSpawnable = false
    weapon.Primary.Round = ("")
end)