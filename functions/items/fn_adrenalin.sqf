if (!hasInterface) exitWith {}; private["_med","_corpse"]; if(zero_var_medic_requested) then {[[player,player getVariable["zero_var_realname",name player],1],"zero_fnc_medicRequest",independent] call zero_fnc_sendPacket;}; _med = false; if(playerSide isEqualTo civilian || playerSide isEqualTo east) then { _corpse = player getVariable["zero_var_corpse",objNull]; if(isNull _corpse) exitWith {}; if(!isNull (_corpse getVariable["zero_var_reviving",objNull])) exitWith {_med = true;}; { if(_x != _corpse && ((side _x)) isEqualTo independent) exitWith { _med = true; }; } forEach (_corpse nearEntities["Man", 20]); if(_med) exitWith {}; }; if(_med) exitWith {titleText["Du kannst nicht respawnen, wenn ein Feuerwehrmann in der Nähe ist!","PLAIN"]};
if(playerSide isEqualTo west || playerSide isEqualTo independent) then { [false,"adrenalin",1] call zero_fnc_handleZOInv; [player, true] spawn zero_fnc_revived; }else{ if(zero_var_license_civ_survival) then { if(playerSide isEqualTo east) then { if(zero_var_license_civ_survival_military) then { [false,"adrenalin",1] call zero_fnc_handleZOInv; [player, true] spawn zero_fnc_revived; }else{ titleText[format["Du brauchst ein %1", ["zero_var_license_civ_survival_military"] call zero_fnc_varToStr],"PLAIN"]; }; }else{ [false,"adrenalin",1] call zero_fnc_handleZOInv; [player, true] spawn zero_fnc_revived; }; }else{ titleText[format["Du brauchst ein %1", ["zero_var_license_civ_survival"] call zero_fnc_varToStr],"PLAIN"]; }; };
