if (!hasInterface) exitWith {}; private["_near","_ausweis","_units","_send"]; closeDialog 0; _ausweis = param [0,"",[""]]; if (!isNil "zero_var_sleep") exitWith {"Du musst kurz warten um den Ausweis wieder zu zücken" call zero_fnc_msg;}; if (isNil "zero_var_pass" || {(count zero_var_pass != 14)}) exitWith { [[player,getPlayerUID player,zero_var_playerSide,clientOwner],"zero_fnc_nokpass",zero_var_HC1_owner,false] call zero_fnc_sendPacket; "Dein Pass wird aktualisiert<br/>Bitte warte einen kurzen Moment!" call zero_fnc_msg; zero_var_sleep = true; uiSleep 5; zero_var_sleep = nil; }; if !(vehicle player isEqualTo player) exitWith {"Du musst aussteigen" call zero_fnc_msg;}; zero_var_sleep = true; _near = nearestObjects [player, ["Man"], 3]; _units = []; { switch (_ausweis) do { case "pass" : { if ((isPlayer _x) && (alive _x) && (vehicle _x isEqualTo _x) && (_x != player)) then { [ [ player getVariable["zero_var_realname",name player], zero_var_pass select 1, format ["%1 %2",zero_var_pass select 2,zero_var_pass select 3], ([zero_var_onlineTime*60,"HH:MM"] call BIS_fnc_secondsToString), format ["%1",((group player) getVariable["zero_var_gang",[nil,""]]) select 1], zero_var_pass select 13, zero_var_pass select 10 ],"zero_fnc_pass",_x,false ] call zero_fnc_sendPacket; _units pushBack (name _x); }; }; case "polizei" : { if ((isPlayer _x) && (alive _x) && (vehicle _x isEqualTo _x) && (_x != player)) then { [ [ player getVariable["zero_var_realname",name player], zero_var_pass select 1, format ["%1 %2",zero_var_pass select 2,zero_var_pass select 3], ([zero_var_onlineTime*60,"HH:MM"] call BIS_fnc_secondsToString), format["%1",switch ((player getVariable ["zero_var_rank",0])) do { case 2: {"Wachtmeister"};
case 3: {"Oberwachtmeister"}; case 4: {"Hauptwachtmeister"}; case 5: {"Kommissar"}; case 6: {"Oberkommissar"}; case 7: {"Hauptkommissar"}; case 8: {"Polizeirat"}; case 9: {"Polizeidirektor"}; default {"Anwärter"}; }], zero_var_pass select 13, format["%1_Polizei",zero_var_pass select 10] ],"zero_fnc_pass",_x,false ] call zero_fnc_sendPacket; _units pushBack (name _x); }; }; }; } forEach _near; if (count _units isEqualTo 0) then { "Es steht niemand in deiner Nähe" call zero_fnc_msg; } else { _send = ""; { _send = _send + format ["%1<br/>",_x]; } forEach _units; _send = _send + "haben deinen Ausweis gesehen."; [parseText _send,-1] call zero_fnc_msg; }; switch (_ausweis) do { case "pass" : { [ player getVariable["zero_var_realname",name player], zero_var_pass select 1, format ["%1 %2",zero_var_pass select 2,zero_var_pass select 3], ([zero_var_onlineTime*60,"HH:MM"] call BIS_fnc_secondsToString), format ["%1",((group player) getVariable["zero_var_gang",[nil,""]]) select 1], zero_var_pass select 13, zero_var_pass select 10 ] spawn zero_fnc_pass; }; case "polizei" : { [ player getVariable["zero_var_realname",name player], zero_var_pass select 1, format ["%1 %2",zero_var_pass select 2,zero_var_pass select 3], ([zero_var_onlineTime*60,"HH:MM"] call BIS_fnc_secondsToString), format["%1",switch ((player getVariable ["zero_var_rank",0])) do { case 2: {"Wachtmeister"}; case 3: {"Oberwachtmeister"}; case 4: {"Hauptwachtmeister"}; case 5: {"Kommissar"}; case 6: {"Oberkommissar"}; case 7: {"Hauptkommissar"}; case 8: {"Polizeirat"}; case 9: {"Polizeidirektor"}; default {"Anwärter"}; }], zero_var_pass select 13, format["%1_Polizei",zero_var_pass select 10] ] spawn zero_fnc_pass; }; }; uiSleep 30; zero_var_sleep = nil;