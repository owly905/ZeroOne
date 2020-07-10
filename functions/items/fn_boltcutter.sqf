if (!hasInterface) exitWith {}; private ["_building","_door","_doors","_title","_titleText","_cP","_ui","_exit","_isFed","_cops","_val","_value","_progress"]; _building = param[0,objNull,[objNull]]; if(isNull _building) exitWith {}; if(!(_building isKindOf "House_F")) exitWith {"Du stehst vor keinem Haus!" call zero_fnc_msg;}; if(isNil "zero_var_boltcutter_uses") then {zero_var_boltcutter_uses = 0;}; _exit = false; _isFed = if ((nearestObject [[20889,19224,0],"Land_Research_HQ_F"]) == _building) then {true} else {false}; if(_isFed) then { if(_building getVariable ["used",false]) exitWith {"Die Bank wurde bereits überfallen." call zero_fnc_msg; _exit = true;}; if(serverTime <= 1500) exitWith {"Es ist noch zu früh am Tag, es ist kein Gold im Tresor." call zero_fnc_msg; _exit = true;}; _cops = {(side _x) isEqualTo west} count playableUnits; if(_cops < 20) exitWith {(localize "STR_NOTF_No_Cops") call zero_fnc_msg; _exit = true;}; [[[1,2],localize "STR_ISTR_Bolt_AlertFed"],"zero_fnc_broadcast",west] call zero_fnc_sendPacket; } else { if(player distance (getMarkerPos "jail") < 75) then { "Das Gefängnis kannst du nicht aufbrechen!" call zero_fnc_msg; _exit = true; }else{ [[0,format[localize "STR_ISTR_Bolt_AlertHouse",profileName]],"zero_fnc_broadcast",(allPlayers - entities "HeadlessClient_F")] call zero_fnc_sendPacket; }; }; if(_exit) exitWith {}; _doors = getNumber(configFile >> "CfgVehicles" >> (typeOf _building) >> "NumberOfDoors"); _door = 0; for "_i" from 1 to _doors do { _selPos = _building selectionPosition format["Door_%1_trigger",_i]; _worldSpace = _building modelToWorld _selPos; if(player distance _worldSpace < 5) exitWith {_door = _i;}; }; if(_door == 0) exitWith {(localize "STR_Cop_NotaDoor") call zero_fnc_msg;}; zero_var_action_inUse = true; _value = ["boltcutter"] call zero_fnc_getSkillValueCharacter; _val = 6; disableSerialization; _title = localize "STR_ISTR_Bolt_Process"; 5 cutRsc ["zero_var_progress","PLAIN"]; _ui = uiNamespace getVariable "zero_var_progress"; _progress = _ui displayCtrl 38201; _titleText = _ui displayCtrl 38202; _titleText ctrlSetText format["%2 (1%1)...","%",_title]; _progress progressSetPosition 0.01;
_cP = 0.01; private _pos = position player; private _serverTime = serverTime; if (typeOf _building == "Land_Research_HQ_F") then { _val = _value; [[player, "zero_var_fnc_createMarker", [format ["MarkerBank_%1",_serverTime], _pos]], "zero_fnc_remoteExecuteCommand", zero_var_HC1_owner] call zero_fnc_sendPacket; waitUntil {!isNil "zero_var_createMarkerResponse"}; _marker = zero_var_createMarkerResponse; zero_var_createMarkerResponse = nil; _marker setMarkerColor "ColorRed"; _marker setMarkerText "!ACHTUNG! Banküberfall !ACHTUNG!"; _marker setMarkerType "mil_warning"; }; for "_i" from 0 to 100 step 1 do { if(animationState player != "AinvPknlMstpsnonWnonDnon_medic_1" ) then { player action ["SwitchWeapon", player, player, 100]; player playMove "AinvPknlMstpsnonWnonDnon_medic_1"; player playActionNow "stop"; player playMove "AinvPknlMstpsnonWnonDnon_medic_1"; player playActionNow "stop"; player playMove "AinvPknlMstpsnonWnonDnon_medic_1"; }; uiSleep _val; _cP = _cP + 0.01; _progress progressSetPosition _cP; _titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title]; if(_cP >= 1) exitWith {}; if(zero_var_killed) exitWith {zero_var_interrupted = true;}; if(zero_var_istazed) exitWith {zero_var_interrupted = true;}; if(player getVariable["zero_var_restrained",false]) exitWith {zero_var_interrupted = true;}; }; zero_var_action_inUse = false; 5 cutText ["","PLAIN"]; player playActionNow "stop"; if(zero_var_interrupted) exitWith {deleteMarker format ["MarkerBank_%1",_serverTime];zero_var_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; zero_var_action_inUse = false;}; zero_var_boltcutter_uses = zero_var_boltcutter_uses + 1; zero_var_action_inUse = false; if(zero_var_boltcutter_uses >= 2) then { [false,"boltcutter",1] call zero_fnc_handleZOInv; zero_var_boltcutter_uses = 0; }; _building setVariable[format["bis_disabled_Door_%1",_door],0,true]; if((_building getVariable["zero_var_locked",false])) then { _building setVariable["zero_var_locked",false,true]; }; if(playerSide isEqualTo civilian || playerSide isEqualTo east) then { if(_isFed) then { [5,getPlayerUID player,profileName] call zero_fnc_wantedViaScript; }else{ [6,getPlayerUID player,profileName] call zero_fnc_wantedViaScript; }; }; ["boltcutter"] call zero_fnc_improveSkillCharacter;
