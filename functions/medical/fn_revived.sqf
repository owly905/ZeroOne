if (!hasInterface) exitWith {}; private["_medic","_dir","_damage","_toLog"]; _medic = param[0,objNull,[objNull]]; _damage = param[1,false,[false]]; if(isNil "zero_var_corpse" || {isNull zero_var_corpse}) exitWith {}; if((playerSide isEqualTo civilian || playerSide isEqualTo east) && isNil "zero_var_killedInExploitationwar") then {[([zero_var_corpse] call zero_fnc_fetchDeadGear)] spawn zero_fnc_loadDeadGear;}; zero_var_killedInExploitationwar = nil; _dir = getDir zero_var_corpse; player setUnconscious true; zero_var_action_inUse = true; closeDialog 0; zero_var_deathCamera cameraEffect ["TERMINATE","BACK"]; camDestroy zero_var_deathCamera; zero_var_colorCorrection ppEffectEnable false; ppEffectDestroy zero_var_colorCorrection; zero_var_dynamicBlur ppEffectEnable false; ppEffectDestroy zero_var_dynamicBlur; zero_var_aborted = false; zero_var_skills = zero_var_old_skills; [1,(zero_var_corpse getVariable["zero_var_dead_money",0])] call zero_fnc_Z0Check; zero_var_corpse setVariable["zero_var_dead_money",nil,true]; if(playerSide != independent && !isNull _medic && (side _medic) isEqualTo independent) then { [format["Dafür wurden €%1 von deinem Konto eingezogen",[10000] call zero_fnc_numberText],3,format["%1 hat dich wiederbelebt",_medic getVariable["zero_var_realname",name _medic]]] call zero_fnc_msg; if(([2, 0] call zero_fnc_Z0Check) > 10000) then { [0, ([2, 0] call zero_fnc_Z0Check) - 10000] call zero_fnc_Z0Check; } else { [0,0] call zero_fnc_Z0Check; }; [[getPlayerUID player,player getVariable["zero_var_realname",name player]],"zero_fnc_wantedRemove",zero_var_HC1_owner] call zero_fnc_sendPacket; }; [] call zero_fnc_setUniformTexture; player setDir _dir; [player, (visiblePositionASL zero_var_corpse)] call zero_fnc_setPosASL; zero_var_corpse setVariable["zero_var_revive",nil,true]; zero_var_corpse setVariable["zero_var_name",nil,true]; [[zero_var_corpse],"zero_fnc_corpse", (allPlayers - entities "HeadlessClient_F")] call zero_fnc_sendPacket; hideBody zero_var_corpse; [zero_var_corpse] call zero_fnc_deleteVehicle; {[_x] call zero_fnc_deleteVehicle;} forEach nearestObjects [zero_var_corpse, ["GroundWeaponHolder"], 5]; player setVariable["zero_var_revive",nil,true]; player setVariable["zero_var_name",nil,true]; player setVariable["zero_var_side",nil,true]; player setVariable["zero_var_reviving",nil,true]; player setVariable["zero_var_corpse",nil,true]; zero_var_killed = false;
zero_var_medic_requested = false; profileNamespace setVariable["zero_killed",nil]; call zero_fnc_hudUpdate; enableRadio false; enableSentences false; _toLog = format ["REVIVED: %1 (%2, %3) wurde von %4 wiederbelebt",player getVariable["zero_var_realname",getPlayerUID player], getPlayerUID player, playerSide, if(_medic == player) then {"sich selbst"} else {format ["%1 (%2,%3)", _medic getVariable["zero_var_realname",getPlayerUID _medic], getPlayerUID _medic, side _medic]}]; [_toLog] call zero_fnc_zoLog; if(_damage) exitWith { if((side _medic) isEqualTo independent) then { [[player, "zero_var_fnc_setDamage", [player, 0.5]], "zero_fnc_remoteExecuteCommand", zero_var_HC1_owner] call zero_fnc_sendPacket; zero_var_action_inUse = false; player setUnconscious false; player playMoveNow "AmovPercMstpSnonWnonDnon"; }else{ [[player, "zero_var_fnc_setDamage", [player, 0.95]], "zero_fnc_remoteExecuteCommand", zero_var_HC1_owner] call zero_fnc_sendPacket; [] spawn { zero_var_colorCorrection1 = ppEffectCreate ["ColorCorrections", 500]; zero_var_colorCorrection1 ppEffectEnable true; zero_var_colorCorrection1 ppEffectAdjust [1,0.4,0,0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0]; zero_var_colorCorrection1 ppEffectCommit 1; zero_var_dynamicBlur1 = ppEffectCreate ["DynamicBlur", 600]; zero_var_dynamicBlur1 ppEffectEnable true; zero_var_dynamicBlur1 ppEffectAdjust [10]; zero_var_dynamicBlur1 ppEffectCommit 1; if(primaryWeapon player != "") then {player removeWeapon (primaryWeapon player);}; if(secondaryWeapon player != "") then {player removeWeapon (secondaryWeapon player);}; player setVariable ["zero_var_canKnockPlayer",false,true]; uiSleep (60 + random(20)); player setVariable ["zero_var_canKnockPlayer",true,true]; if(primaryWeapon player != "") then {player removeWeapon (primaryWeapon player);}; if(secondaryWeapon player != "") then {player removeWeapon (secondaryWeapon player);}; player setUnconscious false; zero_var_action_inUse = false; player playMoveNow "AmovPercMstpSnonWnonDnon"; private _time = serverTime + 60 + random(20); while {serverTime < _time} do { if(!alive player || zero_var_killed || zero_var_respawned) exitWith {}; uiSleep 1; }; zero_var_action_inUse = false; zero_var_colorCorrection1 ppEffectEnable false; ppEffectDestroy zero_var_colorCorrection1; zero_var_dynamicBlur1 ppEffectEnable false; ppEffectDestroy zero_var_dynamicBlur1; }; }; }; zero_var_action_inUse = false; player setUnconscious false; player playMoveNow "AmovPercMstpSnonWnonDnon"; 0 spawn { waitUntil {!zero_var_Camrunning || !zero_var_killed}; call zero_fnc_hudUpdate; };
