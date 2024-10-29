-- [[events: CLEU:SPELL_CAST_SUCCESS:SPELL_PERIODIC_HEAL:SPELL_HEAL:,PLAYER_TOTEM_UPDATE]]
function(event,arg1,arg2,...)
  if event == "PLAYER_TOTEM_UPDATE" then
    aura_env.totemActive, aura_env.totemName = GetTotemInfo(arg1);
    if not aura_env.totemActive or aura_env.totemName ~= "Cloudburst Totem" then
      return false
    end
    aura_env.totemDuration = select(4,GetTotemInfo(arg1));
    aura_env.expirationTime = GetTime() + aura_env.totemDuration;
    aura_env.totemIndex = arg1;
    aura_env.healingCount = 0;
    return true;
  elseif arg2 == "SPELL_HEAL" or arg2 == "SPELL_PERIODIC_HEAL" then
    if select(2,...) ~= UnitGUID("player") or not aura_env.totemActive then
      return false
    end
    aura_env.healingCount = aura_env.healingCount + select(13,...) * aura_env.HEALING_PERCENT;
    return true;
  end
  return false;
end
