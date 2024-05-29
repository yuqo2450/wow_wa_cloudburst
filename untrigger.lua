function(event,arg1,arg2,...)
  if event == "PLAYER_TOTEM_UPDATE" then
    if arg1 ~=  aura_env.totemIndex then
      return false
    end
    if GetTotemInfo(arg1) then
      return false;
    end
    return true
  end

  if arg2 == "SPELL_CAST_SUCCESS" then
    if select(2,...) ~= UnitGUID("player") or select(10,...) ~= 201764 then
      return false
    end
    return true
  end
  return false;
end
