function(...)

    if aura_env["expirationTime"] then

        local duration = 15;
        local expirationTime = aura_env["expirationTime"];

        return duration, expirationTime;

    end

    return false
end