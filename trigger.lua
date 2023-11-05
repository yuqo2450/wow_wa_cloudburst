-- [[events: CLEU:SPELL_CAST_SUCCESS:SPELL_PERIODIC_HEAL:SPELL_HEAL:,PLAYER_TOTEM_UPDATE]]
function(event,arg1,arg2,...)
  if event == "PLAYER_TOTEM_UPDATE" then
    aura_env.totemActive, aura_env.totemName = GetTotemInfo(arg1);
    if aura_env.totemActive and aura_env.totemName == "Cloudburst Totem" then
      local _,_,_, totemDuration = GetTotemInfo(arg1);
      aura_env.totemDuration = totemDuration;
      aura_env.expirationTime = GetTime() + aura_env.totemDuration;
      aura_env.totemIndex = arg1;
      aura_env.healingCount = 0;
      return true;
    end

  elseif arg2 == "SPELL_HEAL" or arg2 == "SPELL_PERIODIC_HEAL" then
    local unit = select(3,...);
    if unit == UnitFullName("player").."-"..GetRealmName() and aura_env.totemActive then
      aura_env.healingCount = aura_env.healingCount + select(13,...) * 0.3;
      return true;
    end
  end
  return false;
end
