Relies on cfc_waiter: https://github.com/CFC-Servers/cfc_waiter

Allows for the stubbing of almost all properties on M9k without having to actually modify the m9k files directly.

One can create the stub files in `lua/cfC_m9k_stubber/stubs/<pack>/<weapon_name>.lua` (see below for example).

The stubs are applied after M9k is loaded during server startup.


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
