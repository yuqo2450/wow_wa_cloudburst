function(event,arg1,arg2,...)
  if event == "PLAYER_TOTEM_UPDATE" then
    local totemActive = GetTotemInfo(arg1);
    if not totemActive and arg1 == aura_env.totemIndex then
      aura_env.totemActive = nil;
      aura_env.totemName = nil;
      aura_env.totemDuration = nil;
      aura_env.totemIndex = nil;
      aura_env.expirationTime = nil;
      aura_env.healingCount = nil;
      return true;
    end
  end

  if arg2 == "SPELL_CAST_SUCCESS" then
    local guidCaster = select(2,...);
    local spell = select(10,...);

    if guidCaster == UnitGUID("player") and spell == 201764 then
      aura_env.totemActive = nil;
      aura_env.totemName = nil;
      aura_env.totemDuration = nil;
      aura_env.totemIndex = nil;
      aura_env.expirationTime = nil;
      aura_env.healingCount = nil;
      return true;
    end
  end
  return false;
end
