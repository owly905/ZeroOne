if (!hasInterface) exitWith {}; private["_skill","_return","_currAdvantage","_nextAdvantage","_maxAdvantage","_points","_level","_index","_type","_needed","_exit","_nextLevel","_probability1","_probability2","_probability3","_name","_var","_value"]; _skill = param[0,"",[""]]; if (_skill == "") exitWith {}; _return = []; _currAdvantage = ""; _nextAdvantage = ""; _maxAdvantage = ""; _points = -1; _level = -1; _index = -1; _type = ""; _needed = ""; _exit = false; { _index = _forEachIndex; { _name = _x select 0; if (_skill == _name) exitWith { _points = _x select 1; _level = _x select 2; _exit = true; }; } forEach _x; if(_exit) exitWith {}; } forEach zero_var_skills; _nextLevel = _level + 1; switch (_index) do { case 0: { switch (true) do { case (_level isEqualTo 0): { _needed = 20; }; case (1 <= _level && _level < 5): { _needed = (20 * _level) * _nextLevel; }; case (5 <= _level && _level < 10): { _needed = (25 * _level) * _nextLevel; }; case (10 <= _level && _level < 20): { _needed = (30 * _level) * _nextLevel; }; case (20 <= _level && _level < 30): { _needed = (35 * _level) * _nextLevel; }; case (30 <= _level && _level < 40): { _needed = (40 * _level) * _nextLevel; }; case (40 <= _level && _level < 50): { _needed = (45 * _level) * _nextLevel; }; default { _needed = (50 * _level) * _nextLevel; }; }; _var = switch (true) do { case (_skill == "fruit"): {"zero_var_fruit_skill_value"}; case (_skill == "drugs"): {"zero_var_drugs_skill_value"}; case (_skill in ["grape","sand"]): {"zero_var_lightweight_skill_value"}; case (_skill in ["ore","fossil","rock"]): {"zero_var_heavyweight_skill_value"}; case (_skill == "post"): {"zero_var_lightweight_skill_value"}; default {""}; }; if(_var isEqualTo "") exitWith {}; _var = call compile (format ["%1", _var]); if(_skill == "post") then { _currAdvantage = _currAdvantage + (format ["DP: Geld: %1€ Wahrscheinlichkeit: %2%3<br/>Brief: ", [(zero_var_dp_skill_value select _level)*1000] call zero_fnc_numberText, zero_var_lockpick_skill_chance select _level, "%"]); _maxAdvantage = _maxAdvantage + (format ["DP: Geld: %1€ Wahrscheinlichkeit: %2%3<br/>Brief: ", [(zero_var_dp_skill_value select 100)*1000] call zero_fnc_numberText, zero_var_lockpick_skill_chance select 100, "%"]); if(_level >= 100) exitWith { _nextAdvantage = _nextAdvantage + "DP: Keine Vorteile";}; _nextAdvantage = _nextAdvantage + (format ["DP: Geld: %1€ Wahrscheinlichkeit: %2%3<br/>", [(zero_var_dp_skill_value select _nextLevel)*1000] call zero_fnc_numberText, zero_var_lockpick_skill_chance select _nextLevel, "%"]); }; _probability1 = _var select _level; { if(_x != 0) then {_currAdvantage = _currAdvantage + (format ["Menge: %3 Wahrscheinlichkeit: %1%2<br/>", (_x), "%", _forEachIndex + 1]);}; } forEach _probability1; _probability3 = _var select 100; { if(_x != 0) then {_maxAdvantage = _maxAdvantage + (format ["Menge: %3 Wahrscheinlichkeit: %1%2 ", (_x), "%", _forEachIndex + 1]);}; } forEach _probability3; if(_level >= 100) exitWith {_nextAdvantage = "Keine Vorteile";}; _probability2 = _var select _nextLevel; { if(_x != 0) then {_nextAdvantage = _nextAdvantage + (format ["Menge: %3 Wahrscheinlichkeit: %1%2<br/>", (_x), "%", _forEachIndex + 1]);}; } forEach _probability2; }; case 1: { if(_level == 0) then { _needed = 15; }else{ _needed = (15 * _level) * _nextLevel; }; _currAdvantage = format ["Zeit %1s", (zero_var_process_skill_time select _level) * 100]; _maxAdvantage = format ["Zeit %1s", (zero_var_process_skill_time select 100) * 100]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Zeit %1s", (zero_var_process_skill_time select _nextLevel) * 100]; }; case 2: { if(_level isEqualTo 0) then { _needed = 5; }else{ _needed = (5 * _level) * _nextLevel; }; switch (_skill) do { case "boltcutter": { _currAdvantage = format ["Banktresor: %1s", (zero_var_boltcutter_skill_value select _level) * 100];
_maxAdvantage = format ["Banktresor: %1s", (zero_var_boltcutter_skill_value select 100) * 100]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Banktresor: %1s", (zero_var_boltcutter_skill_value select _nextLevel) * 100]; }; case "repair": { _currAdvantage = format ["Zeit: %1s<br/>%2", (zero_var_character_skill_time select _level) * 100,format["Erfolg: %1%2",zero_var_repair_skill_chance select _level,"%"]]; _maxAdvantage = format ["Zeit: %1s<br/>%2", (zero_var_character_skill_time select 100) * 100,format["Erfolg: %1%2",zero_var_repair_skill_chance select 100,"%"]]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Zeit: %1s<br/>%2", (zero_var_character_skill_time select _nextLevel) * 100,format["Erfolg: %1%2",zero_var_repair_skill_chance select _nextLevel,"%"]]; }; case "revive": { _currAdvantage = format ["Zeit: %1s<br/>Erfolg: %2%3", (zero_var_impound_skill_time select _level) * 100,zero_var_repair_skill_chance select _level,"%"]; _maxAdvantage = format ["Zeit: %1s<br/>Erfolg: %2%3", (zero_var_impound_skill_time select 100) * 100,zero_var_repair_skill_chance select 100,"%"]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Zeit: %1s<br/>Erfolg: %2%3", (zero_var_impound_skill_time select _nextLevel) * 100,zero_var_repair_skill_chance select _nextLevel,"%"]; }; case "impound": { _currAdvantage = format ["Zeit: %1s", (zero_var_impound_skill_time select _level) * 100]; _maxAdvantage = format ["Zeit: %1s", (zero_var_impound_skill_time select 100) * 100]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Zeit: %1s", (zero_var_impound_skill_time select _nextLevel) * 100]; }; case "selfhealing": { _currAdvantage = format ["Leben %1%2", 100 - ((zero_var_selfheal_skill_value select _level)*100),"%"]; _maxAdvantage = format ["Leben %1%2", 100 - ((zero_var_selfheal_skill_value select 100)*100),"%"]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Leben %1%2", 100 - ((zero_var_selfheal_skill_value select _nextLevel)*100),"%"]; }; case "lockpick": { _currAdvantage = format ["Zeit: %1s<br/>Erfolg: %2%3", (zero_var_character_skill_time select _level) * 100, (zero_var_lockpick_skill_chance select _level), "%"]; _maxAdvantage = format ["Zeit: %1s Erfolg: %2%3", (zero_var_character_skill_time select 100) * 100, (zero_var_lockpick_skill_chance select 100), "%"]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Zeit: %1s<br/>Erfolg: %2%3", (zero_var_character_skill_time select _nextLevel) * 100, (zero_var_lockpick_skill_chance select _nextLevel), "%"]; }; case "search": { _value = 0; private _nextValue = 0; if(!isNil {player getVariable "zero_var_rank"}) then { if(player getVariable["zero_var_rank",0] <= 4) then { _value = (player getVariable["zero_var_rank",0]) * 20; _nextValue = _value + (_nextLevel * 2.5); _value = _value + (_level * 2.5); }else{ _value = 100; _nextValue = 100; }; }; if(_value > 100) then { _value = 100; }; if(_nextValue > 100) then { _nextValue = 100; }; _currAdvantage = format ["Erfolg: %1%2",_value,"%"]; _maxAdvantage = format ["Erfolg: 100%1","%"]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Erfolg: %1%2", _nextValue, "%"]; }; case "stamina": { _currAdvantage = format ["Entfernung: ca. %1m", (zero_var_stamina_skill_value select _level)*2]; _maxAdvantage = format ["Entfernung: ca. %1m", (zero_var_stamina_skill_value select 100)*2]; if(_level >= 100) exitWith { _nextAdvantage = "Keine Vorteile";}; _nextAdvantage = format ["Entfernung: ca. %1m", (zero_var_stamina_skill_value select _nextLevel)*2]; }; default { _currAdvantage = "Keine Vorteile"; _nextAdvantage = "Keine Vorteile"; _maxAdvantage = "Keine Vorteile"; }; }; }; }; _return = [_points,_level,_needed,_currAdvantage,_nextAdvantage,_maxAdvantage]; _return;