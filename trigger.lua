function(event,timestamp,subevent,...)

    if select(3,...) == GetUnitName("player") then
        if select(10,...) == 157153 then
            aura_env["expirationTime"] = GetTime() + 18;
            aura_env["healingCount"] = 0;
            aura_env["totemActive"] = true;
            return true;

        elseif subevent == "SPELL_HEAL" or subevent == "SPELL_PERIODIC_HEAL" and aura_env["totemActive"] then
            if select(10,...) == 204266 then
                return false;
            end
            aura_env["healingCount"] = aura_env["healingCount"] + select(13,...) * 0.3;
            return true;
        end
    end
    return false;
end
