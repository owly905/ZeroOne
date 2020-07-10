if (!hasInterface) exitWith {}; private["_skill","_result","_points","_level","_nextLevel","_needed","_exit","_newLevel","_name","_text"]; _skill = param[0,"",[""]]; if (_skill isEqualTo "") exitWith {}; _result = [_skill] call zero_fnc_getSkillLevel; _points = _result select 0; _level = _result select 1; _nextLevel = _level + 1; if(_level isEqualTo 0) then { _needed = 5; }else{ _needed = (5 * _level) * _nextLevel; }; _points = _points + 1 * zero_var_buff_xpboost; _exit = false; _newLevel = false; { _name = _x select 0; if (_skill == _name) exitWith { _x set[1,_points]; if(_points >= _needed && _nextLevel <= 100) then { _x set[2,_nextLevel]; _newLevel = true; }; _exit = true; }; if(_exit) exitWith {};
} forEach (zero_var_skills select 2); _text = format ["<t size='0.75' color='#E91A41' align='left'>%1 %2 %3</t><br/><t size='0.60' color='#FFFFFF' align='left'>%4: %5/%6</t>", [_skill] call zero_fnc_varToStr, localize "STR_Skill_Level",[_level] call zero_fnc_numberText, localize "STR_Skill_Improvement",[_points] call zero_fnc_numberText, [_needed] call zero_fnc_numberText]; if(_newLevel) then { _text = format ["<t size='0.75' color='#E91A41' align='left'>%1 Levelaufstieg!</t><br/><t size='0.60' color='#FFFFFF' align='left'>Neues Level: %2</t>", [_skill] call zero_fnc_varToStr, [_nextLevel] call zero_fnc_numberText]; }; [ _text, [safeZoneX + safeZoneW - 0.8,0.50], [safeZoneY + safeZoneH - 0.8,0.7], 3, 0.25 ] spawn BIS_fnc_dynamicText;
