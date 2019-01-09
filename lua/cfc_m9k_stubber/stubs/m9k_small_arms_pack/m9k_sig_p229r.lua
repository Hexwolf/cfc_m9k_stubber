if SERVER then AddCSLuaFile() end

CFC_M9k_Stubber.registerStub(function()
    local weapon = weapons.GetStored("m9k_sig_p229r")

    weapon.Category = "M9K Specialties"
    weapon.PrintName = "Firelance MK:II"
    weapon.HoldType = "rpg"
    weapon.ViewModel = "models/weapons/v_MAT.mdl"
    weapon.WorldModel = "models/weapons/w_GDCW_MATADOR_RL.mdl"
    weapon.Base = "bobs_scoped_base"
    weapon.Primary.Sound = Sound("Weapon_FAMTC.Single")
    weapon.Primary.RPM = 700
    weapon.Primary.ClipSize = 250
    weapon.Primary.DefaultClip = 1000
    weapon.Primary.KickUp = 0.2
    weapon.Primary.KickDown = 0.0
    weapon.Primary.KickHorizontal = 0.2
    weapon.Primary.Automatic = true
    weapon.Primary.Damage = .75
    weapon.Primary.Spread = .0
    weapon.Primary.IronAccuracy = .0
    weapon.Secondary.ScopeZoom = 3
    weapon.Secondary.UseACOG = false
    weapon.Secondary.UseMilDot = false
    weapon.Secondary.UseSVD = false
    weapon.Secondary.UseParabolic = false
    weapon.Secondary.UseElcan = false
    weapon.Secondary.UseGreenDuplex = false
    weapon.Secondary.UseAimpoint = true
    weapon.ScopeScale = 0.7
    weapon.ReticleScale = 0.6
    weapon.IronSightsPos = Vector(2.773, 0, 0.846)
    weapon.IronSightsAng = Vector(-0.157, 0, 0)
    weapon.SightsPos = Vector(2.773, 0, 0.846)
    weapon.SightsAng = Vector(-0.157, 0, 0)
    weapon.RunSightsPos = Vector(0, 2.95, 0)
    weapon.RunSightsAng = Vector(-13.197, 5.737, 0)
end)