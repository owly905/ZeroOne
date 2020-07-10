if (!hasInterface) exitWith {}; private["_skill","_points","_level","_exit","_name"]; _skill = param[0,"",[""]]; if (_skill isEqualTo "") exitWith {}; _points = 0; _level = 0; _exit = false;
{ { _name = _x select 0; if (_skill == _name) exitWith { _points = _x select 1; _level = _x select 2; _exit = true; }; } forEach _x; if(_exit) exitWith {}; } forEach zero_var_skills; [_points, _level];
