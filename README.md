Relies on cfc_waiter: https://github.com/CFC-Servers/cfc_waiter


# Example stub registration
```lua
-- lua/cfc_m9k_stubber/sweps/m9k_assault_rifles/m9k_ak47.lua
if SERVER then AddCSLuaFile() end

CFC_M9k_stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_ak47")
    
    weapon.Primary.KickDown = 0.1
    weapon.Primary.Damage = 25
    weapon.Primary.Spread = .08
end)
```
