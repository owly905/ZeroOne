params [["_mode", 0, [0]]]; if (!hasInterface) exitWith {}; private ["_newDamage","_exit","_move"]; _exit = false; if(zero_var_action_inUse) exitWith {}; if(playerSide != independent) then { if(_mode isEqualTo 0) then{ if(!([false,"medipack",1] call zero_fnc_handleZOInv)) exitWith {_exit = true; "Du brauchst ein Erste-Hilfe Kasten" call zero_fnc_msg;}; }else{ if(!([false,"medipack_large",1] call zero_fnc_handleZOInv)) exitWith {_exit = true; "Du brauchst ein Erste-Hilfe Kasten" call zero_fnc_msg;}; }; }; zero_var_action_inUse = true; _move = if((animationState player) find "amovppnemst" != -1) then {"AinvPpneMstpSlayWrflDnon_medic"}else{"ainvpknlmstpslaywpstdnon_medic"}; player playMove _move; waitUntil {animationState player == _move || zero_var_killed || (vehicle player) != player}; if(_mode == 1 && playerSide != independent)then{ disableSerialization; 5 cutRsc ["zero_var_progress","PLAIN"]; _ui = uiNamespace getVariable "zero_var_progress"; _progress = _ui displayCtrl 38201; _pgText = _ui displayCtrl 38202; _pgText ctrlSetText format["Benutze Medipack (1%1)...","%"]; _progress progressSetPosition 0.01; _cP = 0; _cP2 = 1/60; for "_i" from 0 to 60 step 1 do { if(animationState player != _move ) then { player playMove _move; player playActionNow "stop"; player playMove _move; player playActionNow "stop"; player playMove _move; }; uiSleep 1; _cP = _cP + _cP2; _progress progressSetPosition _cP; _pgText ctrlSetText format["Benutze Medipack (%1%2)...",round(_cP * 100),"%"];
if(_cP >= 1) exitWith {}; if(zero_var_killed) exitWith {_exit = true;}; if(zero_var_istazed) exitWith {_exit = true;}; if(!(isNull objectParent player)) exitWith {_exit = true;}; if(player getVariable["zero_var_restrained",false]) exitWith {_exit = true;}; }; 5 cutText ["","PLAIN"]; player playActionNow "stop"; }else{ uiSleep 6; }; if(!isNull (objectParent player) || zero_var_killed || _exit) exitWith {zero_var_action_inUse = false;}; _newDamage = ["selfhealing"] call zero_fnc_getSkillValueCharacter; if(playerSide isEqualTo independent || _mode isEqualTo 1 || zero_var_buff_healing) then { [[player, "zero_var_fnc_setDamage", [ player, 0]], "zero_fnc_remoteExecuteCommand", zero_var_HC1_owner] call zero_fnc_sendPacket; } else { if((damage player) > _newDamage) then { [[player, "zero_var_fnc_setDamage", [player, _newDamage]], "zero_fnc_remoteExecuteCommand", zero_var_HC1_owner] call zero_fnc_sendPacket; } else { if((player) getHitPointDamage "hitLegs" >= 0.1) then { ["hitLegs", 0] call zero_fnc_setHitPointDamage; } else { _exit = true; ["Deine Vitalwerte sind vollkommen in Ordnung",1] call zero_fnc_msg; }; }; }; if(_exit) exitWith{zero_var_action_inUse = false;}; ["selfhealing"] call zero_fnc_improveSkillCharacter; if(_move == "AinvPpneMstpSlayWrflDnon_medic") then { if(currentWeapon player isEqualTo "") then { uiSleep 1.5; player playMove "AmovPpneMstpSnonWnonDnon"; }; }else{ if(currentWeapon player isEqualTo "") then { uiSleep 0.5; player playMove "AmovPknlMstpSnonWnonDnon"; }; }; zero_var_action_inUse = false; [] call zero_fnc_hudUpdate;