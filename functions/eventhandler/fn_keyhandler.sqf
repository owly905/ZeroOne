if (!hasInterface) exitWith {}; private ["_bool","_ctrl","_code","_shift","_ctrlKey","_alt","_handled","_interactionKey","_redgullKey","_yawallaKey","_getOverKey","_crouchKey","_runKey","_mapKey","_interruptionKeys","_veh","_farmKey","_pickaxeKey","_adminKey","_target","_copYelpKey","_distance","_standKey","_speakKey","_clip","_restrainKey"]; _ctrl = _this select 0; _code = _this select 1; _shift = _this select 2; _ctrlKey = _this select 3; _alt = _this select 4; _handled = false; if (_alt && _code isEqualTo 62 && isNil "zero_var_alt_f4") exitWith { [format ["ALT F4: %1 (%2, %3) drueckt Alt+F4", player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide]] call zero_fnc_zoLog; titleText["Alt + F4 wird dir da auch nicht helfen. ;)","PLAIN"]; [] spawn zero_fnc_updateRequest; zero_var_alt_f4 = true; [] spawn {uiSleep 5; zero_var_alt_f4 = nil;}; true; }; if (_ctrlKey && _code isEqualTo 47 && isNil "zero_var_ctrl_v") then { [format ["ADMIN: %1 (%2, %3) hat STRG + V gedrueckt", player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide]] call zero_fnc_zoLog; zero_var_ctrl_v = true; [] spawn {uiSleep 5; zero_var_ctrl_v = nil;}; }; if( _shift && (_code isEqualTo 74) && isNil "zero_var_input_blocked") exitWith { zero_var_input_blocked = true; [] spawn { disableUserInput true; disableUserInput true; uiSleep 3; while {userInputDisabled} do { disableUserInput false; }; disableUserInput true; disableUserInput false; zero_var_input_blocked = nil; }; [format ["ADMIN: %1 (%2, %3) hat einen ArmA-Cheat-Code via SHIFT + '-' benutzt.", player getVariable["realname", name player], getPlayerUID player, playerSide]] call zero_fnc_zoLog; true; }; if( _code isEqualTo 183 ) exitWith { [format ["ADMIN: %1 (%2, %3) hat die 'Druck'-Taste benutzt.", player getVariable["realname", name player], getPlayerUID player, playerSide]] call zero_fnc_zoLog; true; }; if(_ctrlKey && visibleMap) exitWith {true}; if(zero_var_knocked_out) exitWith {true}; _interactionKey = if((actionKeys "User10") isEqualTo []) then {[219]} else {(actionKeys "User10")}; _redgullKey = if((actionKeys "User11") isEqualTo []) then {[221]} else {(actionKeys "User11")}; _yawallaKey = if((actionKeys "User12") isEqualTo []) then {[42]} else {(actionKeys "User12")}; _farmKey = if((actionKeys "User13") isEqualTo []) then {[18]} else {(actionKeys "User13")}; _pickaxeKey = if((actionKeys "User14") isEqualTo []) then {[16]} else {(actionKeys "User14")}; _copYelpKey = if((actionKeys "User15") isEqualTo []) then {[29]} else {(actionKeys "User15")}; _restrainKey = (actionKeys "User16"); _panicbutton = if((actionKeys "User17") isEqualTo []) then {[63]} else {(actionKeys "User17")}; _adminKey = if((actionKeys "User20") isEqualTo []) then {[60]} else {(actionKeys "User20")}; _getOverKey = if((actionKeys "GetOver") isEqualTo []) then {[47]} else {(actionKeys "GetOver")}; _crouchKey = if((actionKeys "Crouch") isEqualTo []) then {[44]} else {(actionKeys "Crouch")}; _runKey = if((actionKeys "Turbo") isEqualTo []) then {[42]} else {(actionKeys "Turbo")}; _standKey = if((actionKeys "Stand") isEqualTo []) then {[45]} else {(actionKeys "Stand")}; _speakKey = if((actionKeys "PushToTalk") isEqualTo []) then {[58]} else {(actionKeys "PushToTalk")}; _mapKey = actionKeys "ShowMap"; _interruptionKeys = [17,30,31,32]; if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["zero_var_restrained",false])}) exitWith { true; }; if(_code in _mapKey) then { switch (playerSide) do { case west: {if(!visibleMap) then {[] spawn zero_fnc_copMarkers;};}; case independent: {if(!visibleMap) then {[] spawn zero_fnc_medicMarkers;[] spawn zero_fnc_medicPlayerMarkers;};}; default {if(!visibleMap) then {[] spawn zero_fnc_gangPlayerMarkers;};}; }; if(!isNil "zero_var_firstTimeMap") then { zero_var_firstTimeMap = nil; [] spawn { waitUntil{visibleMap}; mapAnimAdd [1.8, 0.15,player]; mapAnimCommit; }; }; [] spawn zero_fnc_mmsGenerallControl; }; private _exit = false; if(zero_var_action_inUse) then { if(playerSide isEqualTo independent) then { if(!(_code == 21 || dialog)) then { if(!zero_var_interrupted && _code in _interruptionKeys) then {zero_var_interrupted = true;}; _exit = true; }; }else{ if(!zero_var_interrupted && _code in _interruptionKeys) then {zero_var_interrupted = true;}; _exit = true; }; }; if(_exit) exitWith {_handled;}; if (_code == (missionNamespace getVariable ["mav_gps_v_dialog_keyCode", -1])) then { if ((missionNamespace getVariable ["mav_gps_v_dialog_reqShift", false]) && !_shift) exitWith {}; if ((missionNamespace getVariable ["mav_gps_v_dialog_reqCtrl", false]) && !_ctrlKey) exitWith {}; if ((missionNamespace getVariable ["mav_gps_v_dialog_reqAlt", false]) && !_alt) exitWith {}; if ((missionNamespace getVariable ["mav_gps_v_dialog_handlerBlockedUntil", 0]) > diag_tickTime) exitWith { _handled = true; }; missionNamespace setVariable ["mav_gps_v_dialog_handlerBlockedUntil", diag_tickTime]; if(!(player getVariable["zero_var_restrained",false])) then { if(!zero_var_action_inUse) then { if (!dialog) then { call zero_fnc_navimenu; }; }; }; }; if (_handled) exitWith { true }; if (_code isEqualTo mav_taxi_v_dialog_keyCode) then { if (mav_taxi_v_dialog_reqShift && !_shift) exitWith {}; if (mav_taxi_v_dialog_reqCtrl && !_ctrlKey) exitWith {}; if (mav_taxi_v_dialog_reqAlt && !_alt) exitWith {}; if ((missionNamespace getVariable ["mav_taxi_v_dialog_handlerBlockedUntil", 0]) > diag_tickTime) exitWith { _handled = true; }; missionNamespace setVariable ["mav_taxi_v_dialog_handlerBlockedUntil", diag_tickTime + 1]; if (!isNull (uiNamespace getVariable ["RscTitleTaxiFareSummary", displayNull])) then { ["RscTitleTaxiFareSummary", 1] call mav_gui_fnc_destroyLayer; missionNamespace setVariable ["mav_taxi_v_dialog_handlerBlockedUntil", diag_tickTime + 4]; } else { if (!dialog) then { createDialog "RscDisplayTaxiMenu"; }; }; }; if (_handled) exitWith { true }; switch ( true ) do { case (_code in _speakKey): { if (!(currentChannel in [3,4,5])) then { setCurrentChannel 5; "Zum Reden wechsel bitte immer in die direkte Kommunikation." call zero_fnc_msg; _handled = true; }; if(!zero_var_is_speaking) then { zero_var_is_speaking = true; if (ctrlText ((findDisplay 55) displayCtrl 101) == "\A3\ui_f\data\igui\rscingameui\rscdisplayvoicechat\microphone_ca.paa") then { if ((ctrlText ((findDisplay 63) displayCtrl 101) == localize "str_channel_direct")) then { player setVariable["zero_var_speaking", true, true]; 0 spawn { waitUntil {(isNull findDisplay 63) && (isNull findDisplay 55)}; player setVariable["zero_var_speaking", false, true]; zero_var_is_speaking = false; }; } else { player setVariable["zero_var_speaking", false, true]; zero_var_is_speaking = false; }; } else { player setVariable["zero_var_speaking", false, true]; zero_var_is_speaking = false; }; }; }; case (_code isEqualTo 41): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.5}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!zero_var_tagson && (isNull (objectParent player))) then { [] spawn { zero_var_ID_PlayerTags = ["zero_var_PlayerTags","onEachFrame","zero_fnc_playerTags"] call BIS_fnc_addStackedEventHandler; zero_var_tagson = true; uiSleep 60; if (zero_var_tagson) then { [zero_var_ID_PlayerTags,"onEachFrame"] call BIS_fnc_removeStackedEventHandler; 500 cutRsc["zero_var_HUD_nameTags","PLAIN"]; zero_var_tagson = false; } }; } else { [zero_var_ID_PlayerTags,"onEachFrame"] call BIS_fnc_removeStackedEventHandler; 500 cutRsc["zero_var_HUD_nameTags","PLAIN"]; zero_var_tagson = false; }; _handled = true; }; case ( _code in _panicbutton ): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 30}) exitWith {}; zero_var_allowedToPressKey = serverTime; if ( playerSide isEqualTo west ) then { if( !(player getVariable["zero_var_restrained",false]) && !(player getVariable["zero_var_surrender",false]) ) then { [ player, 0 ] call zero_fnc_panicbutton; [format ["ADMIN: %1 (%2, %3,Position: %4) hat den Panicbutton benutzt.", player getVariable["realname", name player], getPlayerUID player, playerSide, mapGridposition player]] call zero_fnc_zoLog; } else { _handled = true; }; }; }; case (_code isEqualTo 35): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(_shift && {!_ctrlKey} && {currentWeapon player != ""}) then { zero_var_curWep_h = currentWeapon player; zero_var_holstered = true; player action ["SwitchWeapon", player, player, 100]; player switchCamera cameraView; }; if( (!_shift) && {_ctrlKey} && {!isNil "zero_var_curWep_h"} && {zero_var_curWep_h != ""} ) then { if(zero_var_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then { zero_var_holstered = false; player selectWeapon zero_var_curWep_h; }; }; }; case (_code in _interactionKey): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!(player getVariable["zero_var_restrained",false])) then { if(!zero_var_action_inUse) then { [] spawn { private _handle = [] spawn zero_fnc_actionKeyHandler; waitUntil {scriptDone _handle}; }; }; }else{ (localize "STR_General_Zipties_Error") call zero_fnc_msg; }; }; case (_code in _adminKey && {!isNil "zero_fnc_adminmenu"}): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!isNull (findDisplay 8000)) then { closeDialog 0; } else { createDialog "zero_var_admin_magic"; }; _handled = true; }; case (_code in _redgullKey): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!zero_var_action_inUse) then { if(([false,"redgull",1] call zero_fnc_handleZOInv)) then { zero_var_thirst = 100; [] spawn { zero_var_redgull_effect = time; zero_var_redgull_used = true; titleText["Du kannst nun 3 Minuten sprinten","PLAIN"]; player enableFatigue false; player enableStamina false; player setFatigue 0; waitUntil {!alive player || ((time - zero_var_redgull_effect) > (3 * 60))}; titleText["Die RedGull Zeit ist abgelaufen","PLAIN"]; zero_var_redgull_used = nil; zero_var_overeaten = nil; }; }; }; }; case (_code isEqualTo 19 && !_shift): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(player getVariable["zero_var_restrained",false]) then { _handled = true; }; }; case ((_code isEqualTo 19 && _shift) || (_code in _restrainKey)): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; _target = cursorObject; if(isNull _target || {!(_target isKindOf "Man")}) then { _target = (player nearEntities["Man", 1]); _target = if(count _target < 2) then {objNull}else{_target select 1}; }; if(isNull _target) exitWith {_handled = false;}; if(playerSide in [west,independent] && {(isPlayer _target)} && {(side _target in [civilian,east])} && {alive _target} && {_target distance player < 2.5} && {speed _target < 1.5} && {!(_target getVariable["zero_var_escorting",false])} && {!(_target getVariable["zero_var_restrained",false])}) then { [_target, false] spawn zero_fnc_restrainAction; }else{ if(playerSide in [civilian,east] && {(isPlayer _target)} && {player distance (getMarkerPos "jail") >= 75} && {side _target != independent} && {alive _target} && {_target distance player < 2.5} && {speed _target < 1.5} && {!(_target getVariable["zero_var_escorting",false])} && {!(_target getVariable["zero_var_restrained",false])} && {!zero_var_is_arrested}) then { if([false,"zipties",1] call zero_fnc_handleZOInv) then { [_target, true] spawn zero_fnc_restrainAction; } else { (localize "STR_NOTF_ZiptiesLack") call zero_fnc_msg; }; }; }; _handled = true; }; case (_code isEqualTo 24): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(playerSide in [west,independent] && ((([20889,19224,0]) distance (position player)) > 500)) then { { if (_x animationPhase "Door_1_rot" == 1) then { _x animate ["Door_1_rot", 0]; } else { _x animate ["Door_1_rot", 1]; }; } forEach (nearestObjects [player, ["Land_BarGate_F"], 20]); _handled = true; }; }; case ( _code in _farmKey ): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if( ( !dialog ) && { !zero_var_action_gather } && { isNull(objectParent player) } && { (playerSide isEqualTo civilian || playerSide isEqualTo east || player getVariable["zero_var_streife",""] in ["ZIV1","ZIV2"])} && { !(player getVariable["zero_var_restrained",false])} ) then { [] spawn zero_fnc_gather; }; }; case (_code isEqualTo 34): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(_shift) then {_handled = true;}; if(_shift && playerSide != independent && {!isNull cursorObject} && {cursorObject isKindOf "Man"} && {isPlayer cursorObject} && {alive cursorObject} && {cursorObject distance player < 4} && {cursorObject getVariable["zero_var_canKnockPlayer",true]}) then { if((animationState cursorObject) != "Incapacitated" && (currentWeapon player == primaryWeapon player || currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !zero_var_knockout && !(player getVariable["zero_var_restrained",false]) && !zero_var_istazed) then { [cursorObject] spawn zero_fnc_knockoutAction;
}; }; }; case (_code isEqualTo 20): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!_alt && !_ctrlKey ) then { if (!isNil "zero_var_trunk_in_use" && {(cursorObject in zero_var_vehicles)} && {(cursorObject isKindOf "Car" || cursorObject isKindOf "Air" || cursorObject isKindOf "Ship")}) exitWith { titleRsc ["zero_var_introtext","PLAIN"]; (((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText "Bitte versuch es in ein paar Sekunden erneut."); }; [] spawn { zero_var_trunk_in_use = true; uiSleep 3; waitUntil {isNull (findDisplay 3100) || !alive player}; uiSleep 3; zero_var_trunk_in_use = nil; }; if(!isNull (objectParent player) && alive vehicle player) then { if((vehicle player) in zero_var_vehicles) then { [vehicle player] spawn zero_fnc_openkoffer; }; } else { if((cursorObject isKindOf "Car" || cursorObject isKindOf "Air" || cursorObject isKindOf "Ship") && alive cursorObject) then { _distance = if(((typeOf cursorObject) find "B_T_VTOL_01_") isEqualTo -1) then {7}else{13}; if(player distance2D cursorObject < _distance && (cursorObject in zero_var_vehicles || !(cursorObject getVariable ["zero_var_locked",true]))) then { [cursorObject] spawn zero_fnc_openkoffer; }; }; }; }; }; case (_code isEqualTo 38): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if( (_shift) && { !isNull (objectParent player) } && { ( driver( vehicle player ) ) == player } && { playerSide in [ west,independent ] } && { ( ( vehicle player ) getVariable [ "zero_var_vehicle_side", "" ] ) in ["cop","med"] } ) then { if( !isNil{ vehicle player getVariable "zero_var_lights" } && !zero_var_lights_active ) then { [] spawn { zero_var_lights_active = true; uiSleep 5; zero_var_lights_active = false; }; [] call zero_fnc_sirenLights; }; _handled = true; }; }; case (_code isEqualTo 12): { if (!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if ((currentWeapon player) == "Rangefinder") then { [] spawn zero_fnc_radar; }; }; case (_code isEqualTo 21): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!_alt && !_ctrlKey && !dialog && zero_var_session_completed) then { [] call zero_fnc_p_openMenu; }; }; case (_code in _pickaxeKey): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!zero_var_action_gather && {(isNull (objectParent player))} && {(playerSide isEqualTo civilian || playerSide isEqualTo east || player getVariable["zero_var_streife",""] in ["ZIV1","ZIV2"])} && {!(player getVariable["zero_var_restrained",false])}) then { private _val = ["pickaxe",zero_var_inventory] call zero_fnc_findIndex; if(_val != -1) then { [] spawn zero_fnc_pickaxeUse;}; }; }; case (_code isEqualTo 33): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; _veh = vehicle player; if((((vehicle player) getVariable [ "zero_var_vehicle_side", "" ]) isEqualTo "cop") && playerSide isEqualTo west && {!zero_var_yelp_active} && {((_shift && (42 in _yawallaKey) && !(42 in _copYelpKey)) || (_ctrlKey && (29 in _yawallaKey) && !(29 in _copYelpKey)) || (_alt && (56 in _yawallaKey) && !(56 in _copYelpKey))) } && {!isNull (objectParent player) }&& {((driver vehicle player) == player)}) exitWith { private _all = []; {if (_x distance player < 500) then {_all pushBack _x};}forEach (allPlayers - entities "HeadlessClient_F"); [[_veh,"Yawalla",11.5],"zero_fnc_copYelp",_all,false] call zero_fnc_sendPacket; _handled = true; }; if((((vehicle player) getVariable [ "zero_var_vehicle_side", "" ]) isEqualTo "cop") && playerSide isEqualTo west && {!zero_var_yelp_active} && {((_shift && (42 in _copYelpKey) && !(42 in _yawallaKey)) || (_ctrlKey && (29 in _copYelpKey) && !(29 in _yawallaKey)) || (_alt && (56 in _copYelpKey) && !(56 in _yawallaKey)))} && {!isNull (objectParent player)} && {((driver vehicle player) == player)}) exitWith { private _all = []; {if (_x distance player < 500) then {_all pushBack _x};}forEach (allPlayers - entities "HeadlessClient_F"); [[_veh,"CopYelp",2.5],"zero_fnc_copYelp",_all,false] call zero_fnc_sendPacket; _handled = true; }; if((((vehicle player) getVariable [ "zero_var_vehicle_side", "" ]) isEqualTo "med") && playerSide isEqualTo independent && {!zero_var_yelp_active} && {_shift} && {!isNull (objectParent player)} && {((driver vehicle player) == player)}) exitWith { private _all = []; {if (_x distance player < 500) then {_all pushBack _x};}forEach (allPlayers - entities "HeadlessClient_F"); [[_veh],"zero_fnc_medicYelp",_all,false] call zero_fnc_sendPacket; _handled = true; }; if( ( ( ( vehicle player ) getVariable [ "zero_var_vehicle_side", "" ] ) in ["cop","med"] ) && !zero_var_siren_active && { ( playerSide isEqualTo west ) || ( playerSide isEqualTo independent )} && {!isNull( objectParent player )} && { (driver( vehicle player )) == player } ) then { if(zero_var_siren_enabled) then { zero_var_siren_enabled = false; titleText [localize "STR_MISC_SirensOFF","PLAIN"]; } else { if(_veh getVariable["zero_var_siren",false]) exitWith {}; private _sound = if(playerSide isEqualTo independent) then {"MedicSiren"}else{"SirenLong"}; 4 spawn { zero_var_siren_active = true; uiSleep _this; zero_var_siren_active = false; }; titleText [localize "STR_MISC_SirensON","PLAIN"]; _veh setVariable["zero_var_siren",true,true]; private _all = []; {if (_x distance player < 2000) then {_all pushBack _x};}forEach allPlayers; [[_veh,_sound,player],"zero_fnc_sirenSound",_all,false] call zero_fnc_sendPacket; }; _handled = true; }; }; case (_code isEqualTo 22): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!_alt && !_ctrlKey && !_shift) then { if(isNull (objectParent player)) then { _veh = cursorObject; } else { _veh = vehicle player; }; if(!zero_var_lockToggleAllowed) exitWith {}; zero_var_lockToggleAllowed = false; [] spawn { uiSleep 3; zero_var_lockToggleAllowed = true; }; if ((_veh isKindOf "Land_BackAlley_01_l_gate_F") && (playerSide isEqualTo WEST)) then { if ((player distance2D _veh) < 3) then { private _locked = _veh getVariable["bis_disabled_Door_1", 0]; if(_locked == 0) then { _veh setVariable["bis_disabled_Door_1",1,true]; _veh animate ["door_1_rot",0]; systemChat localize "STR_House_Door_Lock"; } else { _veh setVariable["bis_disabled_Door_1",0,true]; _veh animate ["door_1_rot",1]; systemChat localize "STR_House_Door_Unlock"; }; }; }; if((typeOf _veh) in ["Land_i_Shop_01_V3_F","Land_MilOffices_V1_F"] && (playerSide isEqualTo WEST)) then { _bool = false; if ((typeOf _veh) isEqualTo "Land_i_Shop_01_V3_F") then { if (!(_veh in (nearestObjects [[3591.54,13082.6,0], [], 50]))) then { _bool = true;}; } else { if (!(_veh in (nearestObjects [[5498.44,15020,0], [], 50]))) then { _bool = true;}; }; if (_bool) exitWith {}; private _door = [_veh] call zero_fnc_nearestDoor; if(_door == 0) exitWith {(localize "STR_House_Door_NotNear") call zero_fnc_msg;}; private _locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0]; if(_locked == 0) then { _veh setVariable[format["bis_disabled_Door_%1",_door],1,true]; _veh animate [format["door_%1_rot",_door],0]; systemChat localize "STR_House_Door_Lock"; } else { _veh setVariable[format["bis_disabled_Door_%1",_door],0,true]; _veh animate [format["door_%1_rot",_door],1]; systemChat localize "STR_House_Door_Unlock"; }; }; if(_veh isKindOf "House_F" && (playerSide isEqualTo civilian || playerSide isEqualTo east)) then { if(_veh in zero_var_vehicles && player distance _veh < 8) then { private _door = [_veh] call zero_fnc_nearestDoor; if(_door == 0) exitWith {(localize "STR_House_Door_NotNear") call zero_fnc_msg;}; private _locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0]; if(_locked == 0) then { _veh setVariable[format["bis_disabled_Door_%1",_door],1,true]; _veh animate [format["door_%1_rot",_door],0]; systemChat localize "STR_House_Door_Lock"; } else { _veh setVariable[format["bis_disabled_Door_%1",_door],0,true]; _veh animate [format["door_%1_rot",_door],1]; systemChat localize "STR_House_Door_Unlock"; }; }; } else { private _locked = locked _veh; private _side = _veh getVariable["zero_var_vehicle_side",""]; private _distance = if(((typeOf _veh) find "B_T_VTOL_01_") isEqualTo -1) then {7}else{13}; if(player distance2D _veh < _distance) then { if((_veh in zero_var_vehicles) || (_side == "cop" && playerSide isEqualTo west) || (_side == "med" && playerSide isEqualTo independent)) then { if(_locked == 2) then { if(local _veh) then { _veh lock 0; } else { [[_veh,0],"zero_fnc_lockVehicle",_veh] call zero_fnc_sendPacket; }; systemChat localize "STR_MISC_VehUnlock"; _veh say3D "UnlockSound"; } else { if(local _veh) then { _veh lock 2; } else { [[_veh,2],"zero_fnc_lockVehicle",_veh] call zero_fnc_sendPacket; }; systemChat localize "STR_MISC_VehLock"; _veh say3D "LockSound"; }; }; }; }; } else { if(_shift && zero_var_allowEarplug) then { zero_var_allowEarplug = false; switch (player getVariable["zero_var_Earplugs",0]) do { case 0: {titleText ["Ohrstöpsel 95% Abschwächung", "PLAIN DOWN"]; 1 fadeSound 0.05; player setVariable ["zero_var_Earplugs", 95];}; case 95: {titleText ["Ohrstöpsel 75% Abschwächung", "PLAIN DOWN"]; 1 fadeSound 0.25; player setVariable ["zero_var_Earplugs", 75];}; case 75: {titleText ["Ohrstöpsel 35% Abschwächung", "PLAIN DOWN"]; 1 fadeSound 0.65; player setVariable ["zero_var_Earplugs", 35];}; case 35: {titleText ["Ohrstöpsel entfernt", "PLAIN DOWN"]; 1 fadeSound 1; player setVariable ["zero_var_Earplugs", 0];}; }; playSound "earplug"; [] spawn { uiSleep 0.5; zero_var_allowEarplug = true; }; }; }; }; case (_code isEqualTo 79): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(_shift) then {_handled = true;}; if (player getVariable["zero_var_restrained",false]) exitWith {_handled = true;}; if ((_shift) && (isNull (objectParent player)) && zero_var_animToggle) then { zero_var_animToggle = false; cutText [format["Pushup!!!!!!"], "PLAIN DOWN"]; player playMove "AmovPercMstpSnonWnonDnon_exercisePushup"; [] spawn { uiSleep 2; zero_var_animToggle = true; }; }; }; case (_code isEqualTo 80): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(_shift) then {_handled = true;}; if (player getVariable["zero_var_restrained",false]) exitWith {_handled = true;}; if ((_shift) && (isNull (objectParent player)) && zero_var_animToggle) then { zero_var_animToggle = false; cutText [format["KneeBend Slow baby~"], "PLAIN DOWN"]; player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA"; [] spawn { uiSleep 2; zero_var_animToggle = true; }; }; }; case (_code isEqualTo 81): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(_shift) then {_handled = true;}; if (player getVariable["zero_var_restrained",false]) exitWith {_handled = true;}; if ((_shift) && (isNull (objectParent player)) && zero_var_animToggle) then { zero_var_animToggle = false; cutText [format["KneeBend more Hard!!!Move!!Move!!"], "PLAIN DOWN"]; player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB"; [] spawn { uiSleep 2; zero_var_animToggle = true; }; }; }; case (_code isEqualTo 75): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(_shift) then {_handled = true;}; if (player getVariable["zero_var_restrained",false]) exitWith {_handled = true;}; if ((_shift) && (isNull (objectParent player)) && zero_var_animToggle) then { zero_var_animToggle = false; player playActionNow "gestureHi"; _handled = true; [] spawn { uiSleep 2; zero_var_animToggle = true; }; }; }; case (_code isEqualTo 76): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(_shift) then {_handled = true;}; if (player getVariable["zero_var_restrained",false]) exitWith {_handled = true;}; if ((_shift) && (isNull (objectParent player)) && zero_var_animToggle) then { zero_var_animToggle = false; player playActionNow "gestureHiB"; _handled = true; [] spawn { uiSleep 2; zero_var_animToggle = true; }; }; }; case (_code isEqualTo 77): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(_shift) then {_handled = true;}; if (player getVariable["zero_var_restrained",false]) exitWith {}; if ((_shift) && (isNull (objectParent player)) && zero_var_animToggle) then { zero_var_animToggle = false; player playActionNow "gestureHiC"; _handled = true; [] spawn { uiSleep 2; zero_var_animToggle = true; }; }; }; case (_code isEqualTo 36): { if(!isNil 'zero_var_allowedToPressKey' && {serverTime - zero_var_allowedToPressKey < 0.1}) exitWith {}; zero_var_allowedToPressKey = serverTime; if(!_shift) then {_handled = true;}; if (_shift) then { if (isNull (objectParent player) && !(player getVariable ["zero_var_restrained", false]) && (animationState player) != "Incapacitated" && !zero_var_istazed && zero_var_lockToggleAllowed) then { if (player getVariable ["zero_var_surrender", false]) then { player setVariable ["zero_var_surrender", false, true]; _handled = true; } else { zero_var_lockToggleAllowed = false; [] spawn zero_fnc_surrender; [] spawn { uiSleep 4; zero_var_lockToggleAllowed = true; }; _handled = true; }; } else { _handled = true; }; }; }; case (_code in _getOverKey): { if (zero_var_is_arrested) then{ _handled = true; }; }; case (_code in _crouchKey): { if (zero_var_is_arrested) then{ _handled = true; }; }; case (_code in _runKey): { if (zero_var_is_arrested) then{ _handled = true; }; }; case (_code in _standKey): { if (zero_var_is_arrested) then{ _handled = true; }; }; }; _handled;