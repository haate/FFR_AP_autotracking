function hasEnoughShards()
    local shardCountItem = Tracker:FindObjectForCode("shards")
    local shardCountMax = Tracker:FindObjectForCode("shardsRequired")
    local goalShardCount = shardCountMax.CurrentStage + 16
    if shardCountItem.CurrentStage >= goalShardCount then
      return 1
    else
      return 0
    end
end

function canBreakOrb()
  if Tracker.ActiveVariantUID == "shardHunt" then
    return hasEnoughShards()
  else
    return Tracker:FindObjectForCode("earthorb").CurrentStage > 0 and Tracker:FindObjectForCode("fireorb").CurrentStage > 0 and Tracker:FindObjectForCode("waterorb").CurrentStage > 0 and Tracker:FindObjectForCode("airorb").CurrentStage > 0
  end
end
