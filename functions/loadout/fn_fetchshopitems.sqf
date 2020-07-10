_interaction = zero_var_interactionTarget getVariable["zero_var_interaction",""]; if (_interaction isEqualTo "") exitWith {[]}; _bool1 = isClass (missionConfigFile >> "zero_CfgInteractions" >> "Groups" >> _interaction); _bool2 = isClass (missionConfigFile >> "zero_CfgInteractions" >> "Actions" >> _interaction); if (!_bool1 && !_bool2) exitWith {[]}; _arr = []; if(_bool1) then { { _action = [_x] call zero_fnc_checkInteraction; if (!isNil "_action") then { _search = (_action select 0) find " spawn zero_fnc_shopMenu"; if(!(_search isEqualTo -1)) then { _info = call compile ((_action select 0) select [0, _search]); _arr pushBack [(_info select 0), (_info select 1)]; }; }; } forEach getArray(missionConfigFile >> "zero_CfgInteractions" >> "Groups" >> _interaction >> "actions"); } else { _action = [_interaction] call zero_fnc_checkInteraction; if(!isNil "_action") then { _search = (_action select 0) find " spawn zero_fnc_shopMenu"; if(!(_search isEqualTo -1)) then { _info = call compile ((_action select 0) select [0, _search]); _arr pushBack [(_info select 0), (_info select 1)]; }; }; }; if(_arr isEqualTo []) exitWith {[]}; _items = []; { _type = _x select 0; _categories = _x select 1; { _array = switch(_x) do { case "c": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "uniform"))};
case "h": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "Kopfbedeckungen"))}; case "g": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "Sonnenbrillen"))}; case "v": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "Vesten"))}; case "b": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "Ruck"))}; case "w": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "Waffen"))}; case "i": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "ITems"))}; case "d": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "Tauchershop"))}; case "k": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "Kartshop"))}; case "god": {(getArray(missionConfigFile >> "zero_CfgItemShops" >> _type >> "GodShop"))}; default {[]}; }; { _cond = _x select 3; if(_cond isEqualTo []) then { _items pushBack [_x select 0, _x select 1, _x select 2,true]; } else { _var = call (call compile (_cond select 0)); _lvl = _cond select 1; _bool = switch (typeName _lvl) do { case "SCALAR" : {_var >= _lvl}; case "ARRAY" : {_var in _lvl}; default {true}; }; _items pushBack [_x select 0, _x select 1, _x select 2,_bool]; }; } forEach _array; } forEach _categories; } forEach _arr; _items