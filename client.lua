local blacklistedweapons = {
    "WEAPON_SMG",
    "WEAPON_COMBATPDW",
    "WEAPON_ASSAULTSMG",
    "WEAPON_RAYCARBINE",
    "WEAPON_PUMPSHOTGUN",
    "WEAPON_PUMPSHOTGUN_MK2",
    "weapon_assaultshotgun",
    "weapon_bullpupshotgun",
    "weapon_musket",
    "weapon_heavyshotgun",
    "weapon_combatshotgun",
    "weapon_assaultrifle",
    "weapon_assaultrifle_mk2",
    "weapon_carbinerifle",
    "weapon_carbinerifle_mk2",
    "weapon_advancedrifle",
    "weapon_specialcarbine",
    "weapon_specialcarbine_mk2",
    "weapon_bullpuprifle",
    "weapon_bullpuprifle_mk2",
    "weapon_militaryrifle",
    "weapon_heavyrifle",
    "weapon_tacticalrifle",
    "weapon_mg",
    "weapon_combatmg",
    "weapon_combatmg_mk2",
    "weapon_gusenberg"
}


CreateThread(function()
 while true do 
    Wait(0)
     local player = PlayerPedId()
     if IsPedDoingDriveby(player) then
        for k,v in pairs (blacklistedweapons) do
        if GetSelectedPedWeapon(player) == GetHashKey(v) then 
              TriggerServerEvent("storm:detected")
             end
          end
       end
       Wait(5000)
    end
end)