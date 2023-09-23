RegisterServerEvent('storm:detected')
AddEventHandler('storm:detected', function()
local _src = source 
local reason = "Advanced DriveBy Detected"
if _src ~= nil then
DropPlayer(_src, reason)
   end
end)