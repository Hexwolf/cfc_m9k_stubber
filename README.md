Relies on cfc_waiter: https://github.com/CFC-Servers/cfc_waiter


# Example stub registration
```lua
-- lua/cfc_m9k_stubber/stubs/m9k_heavy_weapons/m9k_ares_shrike.lua
if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_ares_shrike")

    weapon.Primary.Ammo = "AirboatGun"
    weapon.Primary.Damage = 20
    weapon.Primary.Spread = .08
end)
```
