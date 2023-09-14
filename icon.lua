function(...)
  if aura_env["totemActive"] then
      local icon = GetSpellTexture(157153)
      return 971076;
  else
      return false;
  end
end
