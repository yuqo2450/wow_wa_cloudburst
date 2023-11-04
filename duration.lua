function(...)
  if aura_env["expirationTime"] then
    return aura_env["totemDuration"], aura_env["expirationTime"];
  end
  return false
end
