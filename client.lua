local blacklistedweapons = {
   "WEAPON_SMG",
   "WEAPON_COMBATPDW",
   "WEAPON_ASSAULTSMG",
   "WEAPON_RAYCARBINE",
   "WEAPON_PUMPSHOTGUN",
   "WEAPON_PUMPSHOTGUN_MK2",
   "WEAPON_ASSAULTSHOTGUN",
   "WEAPON_BULLPUPSHOTGUN",
   "WEAPON_MUSKET",
   "WEAPON_HEAVYSHOTGUN",
   "WEAPON_COMBATSHOTGUN",
   "WEAPON_ASSAULTRIFLE",
   "WEAPON_ASSAULTRIFLE_MK2",
   "WEAPON_CARBINERIFLE",
   "WEAPON_CARBINERIFLE_MK2",
   "WEAPON_ADVANCEDRIFLE",
   "WEAPON_SPECIALCARBINE",
   "WEAPON_SPECIALCARBINE_MK2",
   "WEAPON_BULLPUPRIFLE",
   "WEAPON_BULLPUPRIFLE_MK2",
   "WEAPON_MILITARYRIFLE",
   "WEAPON_HEAVYRIFLE",
   "WEAPON_TACTICALRIFLE",
   "WEAPON_MG",
   "WEAPON_COMBATMG",
   "WEAPON_COMBATMG_MK2",
   "WEAPON_GUSENBERG"
}

local whitelistedveh = {
   `burrito`,
   `burrito2`,
   `burrito3`,
   `burrito4`,
   `burrito5`,
   `policet`,
   `gburrito`,
   `mule`,
   `mule2`,
   `pony`,
   `pony2`,
   `rumpo`,
   `rumpo2`,
   `riot`,
   `speedo`,
   `speedo2`,
   `stockade`,
   `stockade3`,
   `annihilator`,
   `buzzard`,
   `buzzard2`,
   `cargobob`,
   `cargobob2`,
   `cargobob3`,
   `cargobob3`,
   `polmav`,
   `maverick`,
   `frogger`,
   `frogger2`,
   `mule3`,
   `gburrito2`,
   `savage`,
   `valkyrie`,
   `swift2`,
   `cargobob4`,
   `supervolito`,
   `supervolito2`,
   `valkyrie2`,
   `rumpo3`,
   `volatus`,
   `havok`,
   `hunter`,
   `akula`,
   `speedo4`,
   `mule4`,
   `annihilator2`,
   `dinghy5`,
   `conada`
}

function IsWhiteListed(car)
   for k, v in pairs(whitelistedveh) do 
      if car == v then 
         return true
      end
   end
   return false
end

CreateThread(function()
 while true do 
    Wait(0)
     local player = PlayerPedId()
     local veh = GetVehiclePedIsIn(player, false)
     local name = GetEntityModel(veh)
     if IsPedDoingDriveby(player) and not IsWhiteListed(name) then
        for k,v in pairs (blacklistedweapons) do
        if GetSelectedPedWeapon(player) == GetHashKey(v) then 
              TriggerServerEvent("storm:detected")
             end
          end
       end
       Wait(5000)
    end
end)
