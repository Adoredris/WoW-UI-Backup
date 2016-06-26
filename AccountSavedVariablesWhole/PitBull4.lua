
PitBull4DB = {
	["namespaces"] = {
		["LeaderIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 23,
						},
						["Player"] = {
							["location"] = "edge_top_right",
						},
						["ToToT"] = {
							["enabled"] = false,
							["position"] = 24,
						},
						["ToT"] = {
							["enabled"] = false,
							["position"] = 23,
						},
					},
				},
			},
		},
		["LibDualSpec-1.0"] = {
		},
		["RangeFader"] = {
		},
		["Border"] = {
		},
		["PhaseIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 22,
						},
						["Player"] = {
							["position"] = 1.00001,
						},
						["ToToT"] = {
							["position"] = 23,
						},
						["ToT"] = {
							["position"] = 22,
						},
					},
				},
			},
		},
		["ComboPoints"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 19,
						},
						["ToT"] = {
							["position"] = 19,
						},
						["ToToT"] = {
							["position"] = 19,
						},
					},
				},
			},
		},
		["RoleIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 25,
						},
						["Player"] = {
							["position"] = 1.00002,
							["location"] = "edge_top_right",
						},
						["ToToT"] = {
							["position"] = 21,
							["location"] = "in_top_right",
							["size"] = 2.5,
						},
						["ToT"] = {
							["position"] = 25,
							["location"] = "in_top_right",
							["size"] = 2.5,
						},
					},
				},
			},
		},
		["LuaTexts"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["position"] = 7,
									["attach_to"] = "Eclipse",
								},
								["Lua:Power"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["position"] = 4,
									["attach_to"] = "PowerBar",
								},
								["Lua:Reputation"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["position"] = 6,
									["attach_to"] = "ReputationBar",
								},
								["Lua:Name"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["position"] = 5,
									["attach_to"] = "HealthBar",
								},
								["Lua:Threat"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["position"] = 2,
									["attach_to"] = "ThreatBar",
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["position"] = 14,
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Cast"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["position"] = 9,
									["attach_to"] = "CastBar",
								},
								["Lua:Alternate power"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["position"] = 12,
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Cast time"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["position"] = 8,
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["position"] = 13,
									["attach_to"] = "HealthBar",
								},
								["Lua:PVPTimer"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["exists"] = true,
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
									["position"] = 11,
								},
								["Lua:Class"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_LEVEL"] = true,
									},
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nreturn \"|cff%02x%02x%02x%s%s|r %s\",dr,dg,db,Level(unit),Classification(unit) and '+' or '',SmartRace(unit) or ''",
									["location"] = "left",
									["position"] = 10,
									["attach_to"] = "PowerBar",
								},
								["Lua:Druid mana"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["position"] = 3,
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Demonic fury"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
						["Player"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["attach_to"] = "Eclipse",
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
								},
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["exists"] = true,
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Power"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
								},
								["Lua:PVPTimer"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
								},
								["Lua:Alternate power"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Class"] = {
									["events"] = {
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_LEVEL"] = true,
									},
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nreturn \"|cff%02x%02x%02x%s%s|r %s\",dr,dg,db,Level(unit),Classification(unit) and '+' or '',SmartRace(unit) or ''",
									["location"] = "left",
									["attach_to"] = "PowerBar",
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Demonic fury"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
						["ToT"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["position"] = 7,
									["attach_to"] = "Eclipse",
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["position"] = 5,
									["attach_to"] = "HealthBar",
								},
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["exists"] = true,
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["position"] = 6,
									["attach_to"] = "ReputationBar",
								},
								["Lua:Power"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["position"] = 4,
									["attach_to"] = "PowerBar",
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["position"] = 2,
									["attach_to"] = "ThreatBar",
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["position"] = 3,
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["position"] = 8,
									["attach_to"] = "CastBar",
								},
								["Lua:PVPTimer"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
									["position"] = 11,
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["position"] = 9,
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["position"] = 13,
									["attach_to"] = "HealthBar",
								},
								["Lua:Alternate power"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["position"] = 12,
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Class"] = {
									["enabled"] = false,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["position"] = 10,
									["attach_to"] = "PowerBar",
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["position"] = 14,
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Demonic fury"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
						["ToToT"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["position"] = 7,
									["attach_to"] = "Eclipse",
								},
								["Lua:Power"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["position"] = 4,
									["attach_to"] = "PowerBar",
								},
								["Lua:Reputation"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["position"] = 6,
									["attach_to"] = "ReputationBar",
								},
								["Lua:Name"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["position"] = 5,
									["attach_to"] = "HealthBar",
								},
								["Lua:Threat"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["position"] = 2,
									["attach_to"] = "ThreatBar",
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["position"] = 14,
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Cast"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["position"] = 9,
									["attach_to"] = "CastBar",
								},
								["Lua:Alternate power"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["position"] = 12,
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Cast time"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["position"] = 8,
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["position"] = 13,
									["attach_to"] = "HealthBar",
								},
								["Lua:PVPTimer"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["exists"] = true,
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
									["position"] = 11,
								},
								["Lua:Class"] = {
									["enabled"] = false,
									["exists"] = true,
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["position"] = 10,
									["attach_to"] = "PowerBar",
								},
								["Lua:Druid mana"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["position"] = 3,
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Demonic fury"] = {
									["exists"] = true,
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
						["Boss"] = {
							["first"] = false,
							["elements"] = {
								["Lua:Eclipse"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "return math.abs(Power(unit,SPELL_POWER_ECLIPSE))\n",
									["location"] = "center",
									["attach_to"] = "Eclipse",
								},
								["Lua:Name"] = {
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
								},
								["Lua:Reputation"] = {
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
									["exists"] = true,
									["code"] = "local name, _, min , max, value, id = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local fs_id, fs_rep, _, _, _, _, _, fs_threshold, next_fs_threshold = GetFriendshipReputation(id)\n  if fs_id then\n    if next_fs_threshold then\n      min, max, value = fs_threshold, next_fs_threshold, fs_rep\n    else\n      min, max, value = 0, 1, 1\n    end\n  end\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
								},
								["Lua:Power"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
								},
								["Lua:Threat"] = {
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
								},
								["Lua:Druid mana"] = {
									["events"] = {
										["UNIT_DISPLAYPOWER"] = true,
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER_FREQUENT"] = true,
									},
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
								},
								["Lua:Cast time"] = {
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
								},
								["Lua:PVPTimer"] = {
									["exists"] = true,
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
									["location"] = "out_right_top",
								},
								["Lua:Cast"] = {
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
								},
								["Lua:Health"] = {
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
								},
								["Lua:Alternate power"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "local max = MaxPower(unit,ALTERNATE_POWER_INDEX)\nif max > 0 then\n  return \"%s%%\",Percent(Power(unit,ALTERNATE_POWER_INDEX),max)\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "AltPowerBar",
								},
								["Lua:Class"] = {
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
								},
								["Lua:Experience"] = {
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
								},
								["Lua:Demonic fury"] = {
									["events"] = {
										["UNIT_POWER_FREQUENT"] = true,
										["UNIT_MAXPOWER"] = true,
									},
									["exists"] = true,
									["code"] = "return \"%s/%s\",Power(unit,SPELL_POWER_DEMONIC_FURY),MaxPower(unit,SPELL_POWER_DEMONIC_FURY)\n",
									["location"] = "center",
									["attach_to"] = "DemonicFury",
								},
							},
						},
					},
				},
			},
		},
		["SoulShards"] = {
		},
		["HostilityFader"] = {
		},
		["MasterLooterIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 29,
						},
						["ToT"] = {
							["position"] = 29,
						},
						["ToToT"] = {
							["position"] = 29,
						},
					},
				},
			},
		},
		["CombatText"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 20,
						},
						["ToT"] = {
							["position"] = 20,
						},
						["ToToT"] = {
							["position"] = 20,
						},
					},
				},
			},
		},
		["ReadyCheckIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 16,
						},
						["ToT"] = {
							["position"] = 16,
						},
						["ToToT"] = {
							["position"] = 16,
						},
					},
				},
			},
		},
		["Chi"] = {
		},
		["Totems"] = {
		},
		["ShadowOrbs"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 17,
						},
						["ToT"] = {
							["position"] = 17,
						},
						["ToToT"] = {
							["position"] = 17,
						},
					},
				},
			},
		},
		["Portrait"] = {
		},
		["ExperienceBar"] = {
		},
		["RaidTargetIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 18,
						},
						["ToT"] = {
							["position"] = 18,
						},
						["ToToT"] = {
							["position"] = 18,
						},
					},
				},
			},
		},
		["Eclipse"] = {
		},
		["Aggro"] = {
		},
		["CombatIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 15,
						},
						["Player"] = {
							["position"] = 1.00001,
						},
						["ToToT"] = {
							["position"] = 15,
						},
						["ToT"] = {
							["position"] = 15,
						},
					},
				},
			},
		},
		["CastBar"] = {
		},
		["BurningEmbers"] = {
		},
		["DruidManaBar"] = {
		},
		["Aura"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["layout"] = {
								["debuff"] = {
									["anchor"] = "TOPRIGHT",
									["side"] = "TOP",
									["growth"] = "left_up",
								},
								["buff"] = {
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["growth"] = "right_up",
								},
							},
						},
						["Player"] = {
							["max_debuffs"] = 8,
							["layout"] = {
								["debuff"] = {
									["width_percent"] = 0.29,
									["my_size"] = 20,
									["anchor"] = "BOTTOMLEFT",
									["size"] = 20,
									["growth"] = "right_down",
								},
								["buff"] = {
									["width_percent"] = 1,
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["growth"] = "right_up",
								},
							},
							["max_buffs"] = 80,
						},
						["ToToT"] = {
							["layout"] = {
								["debuff"] = {
									["anchor"] = "TOPRIGHT",
									["side"] = "TOP",
									["growth"] = "left_up",
								},
								["buff"] = {
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["growth"] = "right_up",
								},
							},
						},
						["ToT"] = {
							["layout"] = {
								["buff"] = {
									["anchor"] = "TOPLEFT",
									["side"] = "TOP",
									["growth"] = "right_up",
								},
								["debuff"] = {
									["anchor"] = "TOPRIGHT",
									["side"] = "TOP",
									["growth"] = "left_up",
								},
							},
						},
					},
					["global"] = {
						["filters"] = {
							["Priest Heals"] = {
								["filter_type"] = "Name",
								["whitelist"] = true,
								["name_list"] = {
									["Renew"] = true,
									["Pain Suppression"] = false,
									["Prayer of Mending"] = true,
									["Power Word: Barrier"] = false,
									["Divine Aegis"] = true,
									["Echo of Light"] = true,
									["Enhanced Leap of Faith"] = false,
									["Levitate"] = false,
									["Mind Quickening"] = false,
									["Angelic Feather"] = false,
									["Power Word: Shield"] = true,
									["Divine Hymn"] = false,
									["Guardian Spirit"] = false,
									["Power Word: Fortitude"] = true,
									["Clarity of Will"] = true,
									["Fear Ward"] = false,
									["Lightwell Renew"] = true,
								},
							},
							["Paladin Heals"] = {
								["filter_type"] = "Name",
								["whitelist"] = true,
								["name_list"] = {
									["Glyph of Flash of Light"] = false,
									["Holy Avenger"] = false,
									["Illuminated Healing"] = true,
									["Stay of Execution"] = false,
									["Hand of Freedom"] = false,
									["Beacon of Light"] = true,
									["Devotion Aura"] = false,
									["Hand of Salvation"] = false,
									["Hand of Purity"] = false,
									["Hand of Protection"] = false,
									["Hand of Sacrifice"] = false,
									["Sacred Shield"] = true,
									["Blessing of Kings"] = false,
									["Eternal Flame"] = true,
									["Seraphim"] = false,
									["Blessing of Might"] = false,
									["Saved by the Light"] = true,
									["Beacon of Insight"] = true,
								},
							},
							["Shaman Heals"] = {
								["filter_type"] = "Name",
								["whitelist"] = true,
								["name_list"] = {
									["Grounding Totem Effect"] = false,
									["Frost Resistance"] = false,
									["Windfury Totem"] = false,
									["Earth Shield"] = true,
									["Fire Resistance"] = false,
									["Riptide"] = true,
									["Bloodlust"] = false,
									["Healing Stream Totem"] = false,
									["Heroism"] = false,
									["Water Walking"] = false,
									["Grace of Air"] = false,
									["Healing Rain"] = false,
								},
							},
							["Druid Heals"] = {
								["filter_type"] = "Name",
								["whitelist"] = true,
								["name_list"] = {
									["Leader of the Pack"] = false,
									["Stampeding Roar"] = false,
									["Tranquility"] = false,
									["Rejuvenation (Germination)"] = true,
									["Wild Growth"] = true,
									["Living Seed"] = true,
									["Lifebloom"] = true,
									["Incarnation: Tree of Life"] = false,
									["Regrowth"] = true,
									["Ironbark"] = false,
									["Moonkin Aura"] = false,
									["Rejuvenation"] = true,
									["Cenarion Ward"] = false,
									["Mark of the Wild"] = false,
								},
							},
							["Monk Heals"] = {
								["filter_type"] = "Name",
								["whitelist"] = true,
								["name_list"] = {
									["Life Cocoon"] = true,
									["Zen Sphere"] = true,
									["Legacy of the White Tiger"] = false,
									["Enveloping Mist"] = true,
									["Tiger's Lust"] = false,
									["Legacy of the Emperor"] = false,
									["Soothing Mist"] = true,
									["Renewing Mist"] = true,
								},
							},
						},
					},
				},
			},
		},
		["RestIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 21,
						},
						["Player"] = {
							["enabled"] = false,
						},
						["ToToT"] = {
							["position"] = 22,
						},
						["ToT"] = {
							["position"] = 21,
						},
					},
				},
			},
		},
		["Background"] = {
		},
		["PowerBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["ToToT"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["HideBlizzard"] = {
		},
		["ReputationBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["enabled"] = false,
						},
						["Player"] = {
							["enabled"] = false,
						},
						["ToToT"] = {
							["enabled"] = false,
						},
						["ToT"] = {
							["enabled"] = false,
						},
					},
				},
			},
		},
		["Sounds"] = {
		},
		["HealthBar"] = {
		},
		["CombatFader"] = {
		},
		["VoiceIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 24,
						},
						["Player"] = {
							["position"] = 1.00001,
						},
						["ToToT"] = {
							["position"] = 25,
						},
						["ToT"] = {
							["position"] = 24,
						},
					},
				},
			},
		},
		["QuestIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 26,
						},
						["Player"] = {
							["position"] = 1.00003,
						},
						["ToToT"] = {
							["enabled"] = false,
							["position"] = 26,
						},
						["ToT"] = {
							["position"] = 26,
						},
					},
				},
			},
		},
		["VisualHeal"] = {
		},
		["PvPIcon"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 28,
						},
						["Player"] = {
							["position"] = 1.00005,
						},
						["ToToT"] = {
							["enabled"] = false,
							["position"] = 28,
						},
						["ToT"] = {
							["position"] = 28,
						},
					},
				},
			},
		},
		["DemonicFury"] = {
		},
		["BattlePet"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 27,
						},
						["Player"] = {
							["position"] = 1.00004,
						},
						["ToToT"] = {
							["position"] = 27,
						},
						["ToT"] = {
							["position"] = 27,
						},
					},
				},
			},
		},
		["AltPowerBar"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["position"] = 3.00001,
						},
						["Player"] = {
							["position"] = 3.00001,
						},
						["ToToT"] = {
							["position"] = 3.00001,
						},
						["ToT"] = {
							["position"] = 3.00001,
						},
					},
				},
			},
		},
		["BlankSpace"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
						["Player"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
						["ToT"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
						["ToToT"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
						["Boss"] = {
							["first"] = false,
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
						},
					},
				},
			},
		},
		["ThreatBar"] = {
		},
		["CastBarLatency"] = {
		},
		["HolyPower"] = {
		},
		["Highlight"] = {
		},
	},
	["global"] = {
		["config_version"] = 2,
	},
	["profileKeys"] = {
		["Eviani - Frostmourne"] = "Default",
		["Ash - Frostmourne"] = "Default",
		["Murkrow - Frostmourne"] = "Default",
		["Jamuel - Frostmourne"] = "Default",
		["Charpedo - Frostmourne"] = "Default",
		["Machoke - Frostmourne"] = "Default",
		["Jemmani - Frostmourne"] = "Default",
		["Adoredris - Frostmourne"] = "Default",
		["Swinub - Frostmourne"] = "Default",
		["Zania - Frostmourne"] = "Default",
		["Zweilous - Frostmourne"] = "Default",
		["Elinarinda - Frostmourne"] = "Default",
		["Janinda - Frostmourne"] = "Default",
		["Yartyxx - Frostmourne"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"MONK", -- [4]
				"PRIEST", -- [5]
				"SHAMAN", -- [6]
				"DRUID", -- [7]
				"ROGUE", -- [8]
				"MAGE", -- [9]
				"WARLOCK", -- [10]
				"HUNTER", -- [11]
			},
			["layouts"] = {
				["Normal"] = {
					["size_y"] = 68,
					["exists"] = true,
					["bar_texture"] = "Perl",
				},
				["Player"] = {
					["exists"] = true,
					["size_y"] = 68,
				},
				["ToT"] = {
					["exists"] = true,
					["size_x"] = 125,
					["size_y"] = 68,
				},
				["ToToT"] = {
					["exists"] = true,
					["size_x"] = 75,
					["size_y"] = 68,
				},
				["Boss"] = {
					["exists"] = true,
				},
			},
			["made_groups"] = true,
			["units"] = {
				["targettargettarget"] = {
					["position_x"] = 474.40031496427,
					["position_y"] = -366.807504897723,
					["layout"] = "ToT",
				},
				["focustarget"] = {
					["position_x"] = 782.584124818748,
					["position_y"] = 24.2368753432612,
				},
				["pet"] = {
					["position_x"] = -489.632746436324,
					["position_y"] = 150.039983967296,
				},
				["player"] = {
					["position_x"] = -167.09991505621,
					["position_y"] = -366.999978321245,
					["layout"] = "Player",
				},
				["focus"] = {
					["position_x"] = 777.536468145121,
					["position_y"] = -69.7808422859639,
				},
				["target"] = {
					["position_x"] = 197.497620636971,
					["position_y"] = -290.058779789738,
				},
				["pettarget"] = {
					["position_x"] = -666.120879232854,
					["position_y"] = -12.305308812496,
				},
				["focustargettarget"] = {
					["position_x"] = 804.888912930803,
					["position_y"] = 110.563884384259,
				},
				["targettarget"] = {
					["position_x"] = 349.400083473465,
					["position_y"] = -366.999978321245,
					["layout"] = "ToT",
				},
			},
			["groups"] = {
				["Party"] = {
					["position_x"] = -728.272147840082,
					["exists"] = true,
					["position_y"] = 344.060407816361,
					["show_when"] = {
						["party"] = false,
					},
				},
				["Party pets"] = {
					["position_x"] = -489.632711422057,
					["unit_group"] = "partypet",
					["exists"] = true,
					["position_y"] = 351.541415961896,
					["show_when"] = {
						["party"] = false,
					},
				},
				["Boss"] = {
					["position_x"] = 791.483350818811,
					["enabled"] = true,
					["unit_group"] = "boss",
					["exists"] = true,
					["position_y"] = 454.196803019652,
					["show_when"] = {
						["raid40"] = true,
						["solo"] = true,
						["raid10"] = true,
						["raid25"] = true,
						["raid"] = true,
						["raid20"] = true,
						["raid15"] = true,
					},
				},
			},
			["minimap_icon"] = {
				["hide"] = true,
			},
		},
	},
}
