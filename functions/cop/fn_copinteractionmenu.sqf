if (!hasInterface) exitWith {}; private ["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11","_Btn12","_Btn13","_jail"]; if(!dialog) then { createDialog "zero_var_pInteraction_Menu"; }; disableSerialization; _curTarget = param[0,objNull,[objNull]]; if(isNull _curTarget) exitWith {closeDialog 0;}; if(_curTarget isKindOf "House_F") exitWith { if((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _curTarget || (nearestObject [[20889,19224,0],"Land_Research_HQ_F"]) == _curTarget) then { _display = findDisplay 37400; _Btn1 = _display displayCtrl 37450; _Btn2 = _display displayCtrl 37451; _Btn3 = _display displayCtrl 37452; _Btn4 = _display displayCtrl 37453; _Btn5 = _display displayCtrl 37454; _Btn6 = _display displayCtrl 37455; _Btn7 = _display displayCtrl 37456; _Btn8 = _display displayCtrl 37457; _Btn9 = _display displayCtrl 37458; _Btn10 = _display displayCtrl 37459; _Btn11 = _display displayCtrl 37460; _Btn12 = _display displayCtrl 37461; _Btn13 = _display displayCtrl 37462; zero_var_pInact_curTarget = _curTarget; _Btn1 ctrlSetText localize "STR_pInAct_Repair"; _Btn1 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[zero_var_pInact_curTarget] spawn zero_fnc_repairDoor;"; _Btn2 ctrlSetText localize "STR_pInAct_CloseOpen"; _Btn2 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[zero_var_pInact_curTarget] call zero_fnc_doorAnimate;"; _Btn3 ctrlShow false; _Btn4 ctrlShow false; _Btn5 ctrlShow false; _Btn6 ctrlShow false; _Btn7 ctrlShow false; _Btn8 ctrlShow false; _Btn9 ctrlShow false; _Btn10 ctrlShow false; _Btn11 ctrlShow false; _Btn12 ctrlShow false; _Btn13 ctrlShow false; } else { closeDialog 0; }; }; if(!isPlayer _curTarget && (side _curTarget isEqualTo civilian || side _curTarget isEqualTo east)) exitWith {closeDialog 0;}; _display = findDisplay 37400; _Btn1 = _display displayCtrl 37450; _Btn2 = _display displayCtrl 37451; _Btn3 = _display displayCtrl 37452; _Btn4 = _display displayCtrl 37453; _Btn5 = _display displayCtrl 37454; _Btn6 = _display displayCtrl 37455; _Btn7 = _display displayCtrl 37456; _Btn8 = _display displayCtrl 37457; _Btn9 = _display displayCtrl 37458; _Btn10 = _display displayCtrl 37459; _Btn11 = _display displayCtrl 37460; _Btn12 = _display displayCtrl 37461; _Btn13 = _display displayCtrl 37462; zero_var_pInact_curTarget = _curTarget; if (isNil "zero_var_escort") then { _Btn1 ctrlEnable true; _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain"; _Btn1 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[zero_var_pInact_curTarget] call zero_fnc_unrestrain; closeDialog 0; zero_var_escort = nil;zero_var_action_inUse = false;"; } else { _Btn1 ctrlEnable false; }; _Btn2 ctrlSetText localize "STR_pInAct_checkLicenses"; _Btn2 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[[player],""zero_fnc_licenseCheck"",zero_var_pInact_curTarget] call zero_fnc_sendPacket; zero_var_escort = nil;zero_var_action_inUse = false;"; _Btn3 ctrlSetText localize "STR_pInAct_SearchPlayer"; _Btn3 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[zero_var_pInact_curTarget] spawn zero_fnc_searchAction; closeDialog 0;zero_var_action_inUse = false;"; if((_curTarget getVariable["zero_var_escorting",false])) then { _Btn4 ctrlSetText localize "STR_pInAct_StopEscort"; _Btn4 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[zero_var_pInact_curTarget] call zero_fnc_stopEscorting; [zero_var_pInact_curTarget] call zero_fnc_copInteractionMenu; zero_var_escort = nil;zero_var_action_inUse = false;"; } else { _Btn4 ctrlSetText localize "STR_pInAct_Escort"; _Btn4 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[zero_var_pInact_curTarget] spawn zero_fnc_escortAction; closeDialog 0;zero_var_action_inUse = false;"; }; _Btn5 ctrlSetText localize "STR_pInAct_TicketBtn"; _Btn5 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[zero_var_pInact_curTarget] spawn zero_fnc_ticketAction;zero_var_action_inUse = false;";
_Btn6 ctrlSetText localize "STR_pInAct_Arrest"; _Btn6 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; createDialog ""zero_var_jail_time""; zero_var_escort = nil;zero_var_action_inUse = false;"; _Btn6 ctrlEnable false; _jail = false; { if((player distance getMarkerPos _x) < 30) exitWith {_jail = true;} } forEach ["police_hq_1", "police_hq_2", "cop_spawn_9", "cop_spawn_5", "cop_spawn_7", "cop_spawn_8", "cop_spawn_4_1", "security_base", "security_base_1","cop_car_jail"]; if(_jail) then{_Btn6 ctrlEnable true;}; _Btn7 ctrlSetText localize "STR_pInAct_PutInCar"; _Btn7 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[zero_var_pInact_curTarget] call zero_fnc_putInCar; zero_var_escort = nil; closeDialog 0; zero_var_action_inUse = false;"; _Btn8 ctrlSetText localize "STR_pInAct_removeMapRadio"; _Btn8 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};
						zero_var_allowedToRefresh = serverTime;
						zero_var_pInact_curTarget unassignItem ""ItemMap"";
						zero_var_pInact_curTarget unassignItem ""ItemGPS"";
						zero_var_pInact_curTarget unassignItem ""B_UavTerminal"";
						[localize 'STR_pInAct_removeMapRadioHint',-1] call zero_fnc_msg;
						closeDialog 0;zero_var_action_inUse = false;"; if(_curTarget getVariable["zero_var_usebag", false]) then { _Btn9 ctrlSetText localize "STR_pInAct_removeBag"; _Btn9 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[[1],""zero_fnc_useBag"",zero_var_pInact_curTarget] call zero_fnc_sendPacket; closeDialog 0;zero_var_action_inUse = false;"; }else{ _Btn9 ctrlSetText localize "STR_pInAct_useBag"; _Btn9 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[[0],""zero_fnc_useBag"",zero_var_pInact_curTarget] call zero_fnc_sendPacket; closeDialog 0;zero_var_action_inUse = false;"; }; _Btn10 ctrlSetText "Drogenkontrolle"; _Btn10 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[[clientOwner],""zero_fnc_breathalyzer"",zero_var_pInact_curTarget] call zero_fnc_sendPacket; closeDialog 0;zero_var_action_inUse = false;"; _Btn11 ctrlSetText "Führerscheinentzug"; _Btn11 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[[player,0],""zero_fnc_licenseRecovation"",zero_var_pInact_curTarget,false] call zero_fnc_sendPacket; closeDialog 0;zero_var_action_inUse = false;"; _Btn12 ctrlSetText "Waffenscheinentzug"; _Btn12 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[[player,1],""zero_fnc_licenseRecovation"",zero_var_pInact_curTarget,false] call zero_fnc_sendPacket; closeDialog 0;zero_var_action_inUse = false;"; if(!(_curTarget getVariable["zero_var_sitting",false])) then { _Btn13 ctrlSetText "Hinsetzen"; _Btn13 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[[2],""zero_fnc_visualMove"",zero_var_pInact_curTarget] call zero_fnc_sendPacket; closeDialog 0;zero_var_action_inUse = false;"; }else{ _Btn13 ctrlSetText "Aufstehen"; _Btn13 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[[3],""zero_fnc_visualMove"",zero_var_pInact_curTarget] call zero_fnc_sendPacket; closeDialog 0;zero_var_action_inUse = false;"; }; if((_curTarget getVariable["zero_var_escorting",false])) then{ _Btn13 ctrlEnable false; }; if(!(_curTarget getVariable["zero_var_restrained",false])) then { _Btn1 ctrlEnable false; _Btn4 ctrlEnable false; _Btn6 ctrlEnable false; _Btn7 ctrlEnable false; _Btn8 ctrlEnable false; _Btn9 ctrlEnable false; _Btn13 ctrlEnable false; }; [_curTarget] spawn { disableSerialization; if !(params [["_player", objNull, [objNull]]]) exitWith {}; private _distance = ((boundingBox _player select 1) select 0) + 3; waitUntil {sleep 0.5; _player distance player > _distance || {isNull (findDisplay 37400)}}; if !(isNull (findDisplay 37400)) then { closeDialog 0; closeDialog 0; }; };