if (!hasInterface) exitWith {}; private["_skill","_result","_points","_level","_nextLevel","_needed","_exit","_newLevel","_name","_text","_additionalPoints"]; _skill = param[0,"",[""]]; _additionalPoints = param[1,0,[0]]; if (_skill isEqualTo "") exitWith {}; _result = []; switch (true) do { case (_skill in ["apple","peach","bananen"]): {_skill = "fruit";}; case (_skill in ["heroinu","cocaine","cannabis"]): {_skill = "drugs";}; case (_skill in ["grapes","baumwolle"]): {_skill = "grape";}; case (_skill in ["dp","brief"]): {_skill = "post";}; case (_skill in ["salt","sand"]): {_skill = "sand";}; case (_skill in ["copperore","ironore"]): {_skill = "ore";}; case (_skill in ["oilu","gas"]): { _skill = "fossil";}; case (_skill in ["diamond","rock"]): {_skill = "rock";}; default {_skill = "";}; }; if(_skill isEqualTo "") exitWith {}; _result = [_skill] call zero_fnc_getSkillLevel; _points = _result select 0; _level = _result select 1; _nextLevel = _level + 1; switch (true) do { case (_level == 0): {_needed = 20;}; case (1 <= _level && _level < 5): {_needed = (20 * _level) * _nextLevel;}; case (5 <= _level && _level < 10): {_needed = (25 * _level) * _nextLevel;}; case (10 <= _level && _level < 20): {_needed = (30 * _level) * _nextLevel;
}; case (20 <= _level && _level < 30): {_needed = (35 * _level) * _nextLevel;}; case (30 <= _level && _level < 40): {_needed = (40 * _level) * _nextLevel;}; case (40 <= _level && _level < 50): {_needed = (45 * _level) * _nextLevel;}; default {_needed = (50 * _level) * _nextLevel;}; }; _points = _points + (1 + _additionalPoints) * zero_var_buff_xpboost; _exit = false; _newLevel = false; { _name = _x select 0; if (_skill == _name) exitWith { _x set[1,_points]; if(_points >= _needed && _nextLevel <= 100) then { _x set[2,_nextLevel]; _newLevel = true; }; _exit = true; }; if(_exit) exitWith {}; } forEach (zero_var_skills select 0); _text = format ["<t size='0.75' color='#E91A41' align='left'>%1 %2 %3</t><br/><t size='0.60' color='#FFFFFF' align='left'>%4: %5/%6</t>", [_skill] call zero_fnc_varToStr, localize "STR_Skill_Level",[_level] call zero_fnc_numberText, localize "STR_Skill_Improvement",[_points] call zero_fnc_numberText, [_needed] call zero_fnc_numberText]; if(_newLevel) then { _text = format ["<t size='0.75' color='#E91A41' align='left'>%1 Levelaufstieg!</t><br/><t size='0.60' color='#FFFFFF' align='left'>Neues Level: %2</t>",[_skill] call zero_fnc_varToStr, [_nextLevel] call zero_fnc_numberText]; }; [ _text, [safeZoneX + safeZoneW - 0.8,0.50], [safeZoneY + safeZoneH - 0.8,0.7], 3, 0.25 ] spawn BIS_fnc_dynamicText;
