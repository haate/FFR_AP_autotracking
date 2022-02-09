--  Load configuration options up front
ScriptHost:LoadScript("scripts/settings.lua")
print("Starting up scipts")

-- Add Items
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/hosted_items.json")
Tracker:AddItems("items/flags.json")

if Tracker.ActiveVariantUID == "shardHunt" or Tracker.ActiveVariantUID == "shardHuntNoMap" then
  Tracker:AddItems("shardHunt/shards.json")
end

Tracker:AddMaps("maps/maps.json")

ScriptHost:LoadScript("scripts/logic.lua")
Tracker:AddLocations("locations/locations.json")
Tracker:AddLocations("locations/incentives.json")

Tracker:AddLayouts("layouts/shared.json")
if Tracker.ActiveVariantUID == "shardHunt" then
  Tracker:AddLayouts("shardHunt/tracker.json")
  Tracker:AddLayouts("shardHunt/broadcast.json")
  local shardsRequired = Tracker:FindObjectForCode("shardsRequired")
  shardsRequired.CurrentStage = 8
elseif Tracker.ActiveVariantUID == "shardHuntNoMap" then
  Tracker:AddLayouts("shardHuntNoMap/tracker.json")
  Tracker:AddLayouts("shardHunt/broadcast.json")
  local shardsRequired = Tracker:FindObjectForCode("shardsRequired")
  shardsRequired.CurrentStage = 8
elseif Tracker.ActiveVariantUID == "standardNoMap" then
  Tracker:AddLayouts("standardNoMap/tracker.json")
  Tracker:AddLayouts("layouts/standard_broadcast.json")
else
  Tracker:AddLayouts("layouts/tracker.json")
  Tracker:AddLayouts("layouts/standard_broadcast.json")
end

-- Default Flags
local northernDocksFlag = Tracker:FindObjectForCode("northernDocks")
northernDocksFlag.Active = true
local progressionFlag = Tracker:FindObjectForCode("progressionFlag")
progressionFlag.CurrentStage = 2
local npcsIncentive = Tracker:FindObjectForCode("npcsAreIncentive")
npcsIncentive.Active = true
local fetchQuestsIncentive = Tracker:FindObjectForCode("fetchQuestsAreIncentive")
fetchQuestsIncentive.Active = true
local iceIncentive = Tracker:FindObjectForCode("iceCaveIsIncentive")
iceIncentive.Active = true
local ordealsIncentive = Tracker:FindObjectForCode("ordealsIsIncentive")
ordealsIncentive.Active = true
local marshIncentive = Tracker:FindObjectForCode("marshIsIncentive")
marshIncentive.Active = true
local earthIncentive = Tracker:FindObjectForCode("earthIsIncentive")
earthIncentive.Active = true
local seaIncentive = Tracker:FindObjectForCode("seaIsIncentive")
seaIncentive.Active = true
local skyIncentive = Tracker:FindObjectForCode("skyIsIncentive")
skyIncentive.Active = true
local coneriaLockedIncentive = Tracker:FindObjectForCode("coneriaLockedIsIncentive")
coneriaLockedIncentive.Active = true

Tracker.DisplayAllLocations = PREFERENCE_DISPLAY_ALL_LOCATIONS

-- AutoTracking for Poptracker
if PopVersion and PopVersion>="0.18.0" then
  ScriptHost:LoadScript("scripts/autotracking.lua")    
end
