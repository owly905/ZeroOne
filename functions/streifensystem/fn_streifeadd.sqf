if (!hasInterface) exitWith {}; private ["_display","_streifenList","_einheitenList","_streife","_rank","_streifen","_text","_index","_streifenListDefinition"]; disableSerialization; _display = findDisplay 3400; if (isNull _display) exitWith {}; _streifenList = _display displayCtrl 3404; _einheitenList = _display displayCtrl 3405; _streife = lbData[3404,lbCurSel(3404)]; _rank = ""; if(playerSide isEqualTo west) then { _rank = switch ((player getVariable ["zero_var_rank",0])) do { case 2: {"[Wachtmeister]"}; case 3: {"[Oberwachtmeister]"}; case 4: {"[Hauptwachtmeister]"}; case 5: {"[Kommissar]"}; case 6: {"[Oberkommissar]"}; case 7: {"[Hauptkommissar]"}; case 8: {"[Polizeirat]"}; case 9: {"[Polizeidirektor]"}; default {"[Anwärter]"}; }; }else{ _rank = switch (player getVariable ["zero_var_rank",0]) do { case 1: {"[Feuerwehrmann-Anw]"}; case 2: {"[Feuerwehrmann]"}; case 3: {"[Oberfeuerwehrmann]"}; case 4: {"[Unterbrandmeister]"}; case 5: {"[Brandmeister]"}; case 6: {"[Oberbrandmeister]"}; case 7: {"[Wehrführer]"}; default {"[Feuerwehr]"}; }; }; _einheitenList lbAdd format ["%2 %1", player getVariable["zero_var_realname",name player],_rank]; _einheitenList lbSetData[(lbSize _einheitenList)-1,str(player)];
player setVariable["zero_var_streife",_streife,true]; if(_streife == "HQ") then {player setRank "COLONEL";}; lbClear _streifenList; lbClear _einheitenList; _streifen = []; { if(isPlayer _x && !(_x getVariable["zero_var_streife",""] isEqualTo "")) then { _index = [_x getVariable "zero_var_streife",_streifen] call zero_fnc_findIndex; if(_index != -1) then { _streifen set[_index,[(_streifen select _index) select 0,((_streifen select _index) select 1) +1]]; }else{ _streifen pushBack [_x getVariable "zero_var_streife",1]; }; }; } forEach units(group player); _streifenListDefinition = if (playerSide isEqualTo west) then { getArray(missionConfigFile >> "zero_CfgPatrolSystem" >> "police" >> "patrols"); } else { getArray(missionConfigFile >> "zero_CfgPatrolSystem" >> "firefighter" >> "patrols"); }; _text = ""; { _text = format ["%1 (%2)", _x select 0, _x select 1]; _index = [_x select 1,_streifen] call zero_fnc_findIndex; if(_index != -1) then { _text = parseText format ["%1 - %2", _text, (_streifen select _index) select 1]; }else{ _text = format ["%1 - 0", _text]; }; _streifenList lbAdd format["%1",_text]; _streifenList lbSetData [(lbSize _streifenList)-1,(_x select 1)]; } forEach _streifenListDefinition;