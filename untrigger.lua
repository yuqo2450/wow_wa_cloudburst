function(event,timestamp,subevent,...)

    if select(10,...) == 201764 then
        aura_env["healingCount"] = nil;
        aura_env["totemActive"] = false;
        return true;

    elseif aura_env["expirationTime"] <= GetTime() then
        aura_env["healingCount"] = nil;
        aura_env["totemActive"] = false;
        return true;
    else
      return false;
    end
end
