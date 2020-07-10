










































disableSerialization; params [ ["_mode", "", [""]], ["_params", [], [[]]] ]; switch (_mode) do { case "onLoad": { _params params [ ["_display", displayNull, [displayNull]] ]; private _mainInfoText = _display displayCtrl 11; private _callTaxiButton = _display displayCtrl 12; _callTaxiButton ctrlAddEventHandler ["ButtonClick", {["callTaxiClicked", _this] call RscDisplayTaxiCall}]; private _cancelTaxiButton = _display displayCtrl 13; _cancelTaxiButton ctrlAddEventHandler ["ButtonClick", {["cancelTaxiClicked", _this] call RscDisplayTaxiCall}]; private _cb1 = _display displayCtrl 15; _cb1 ctrlEnable false; private _cb2 = _display displayCtrl 16; _cb2 ctrlEnable false; private _cb3 = _display displayCtrl 17; _cb3 ctrlEnable false; private _cb4 = _display displayCtrl 18; _cb4 ctrlEnable false; private _map = _display displayCtrl 14; _map ctrlAddEventHandler ["Draw", {["mapDraw", _this] call RscDisplayTaxiCall}]; _map ctrlAddEventHandler ["MouseButtonDblClick", {["mapDblClick", _this] call RscDisplayTaxiCall}]; private _basePrice = getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "basePrice"); if (_basePrice > 0) then { _callTaxiButton ctrlSetText format [(["msgCallTaxi"] call mav_taxi_fnc_getLocalization) + " (%1$)", getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "basePrice")]; } else { _callTaxiButton ctrlSetText (["msgCallTaxi"] call mav_taxi_fnc_getLocalization); }; ["showUI", [_display]] call RscDisplayTaxiCall; }; case "mapDraw": { _params params [ ["_map", controlNull, [controlNull]] ]; private _display = ctrlParent _map; if (count mav_taxi_v_destination == 3) then { _map drawIcon [ "\a3\ui_f\data\Map\MapControl\waypoint_CA.paa", [1,0,0,1], mav_taxi_v_destination, 30, 30, 0, "Destination", 1.5, 0.06, "RobotoCondensed" ]; }; }; case "mapDblClick": { private _exit = false; if (!isNull mav_taxi_v_myDriver) then { if ([5] call mav_taxi_fnc_preventClickSpam) exitWith { _exit = true; }; } else { [] call mav_taxi_fnc_resetClickSpam; }; if (_exit) exitWith { [] call mav_taxi_fnc_hintClickSpam; }; _params params ["_ctrl", "_button", "_mouseX", "_mouseY"]; private _display = ctrlParent _ctrl; private _pos = _ctrl ctrlMapScreenToWorld [_mouseX, _mouseY]; _pos set [2, 0]; private _nearestRoad = [_pos, 250, []] call BIS_fnc_nearestRoad; if (isNull _nearestRoad) then { hint (["msgTaxiNoRoadNearFound"] call mav_taxi_fnc_getLocalization) } else { mav_taxi_v_destination = getPos _nearestRoad; }; ["showUI", [_display]] call RscDisplayTaxiCall; if (!isNull mav_taxi_v_myDriver) then { [player, mav_taxi_v_destination] remoteExecCall ["mav_taxi_fnc_serverUpdateDestination", 2]; if (mav_taxi_v_taxiMeterRan) then { [ [ ["msgTaskDriverGoToDescription"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverGoToDescriptionS"] call mav_taxi_fnc_getLocalization, ["msgTaskDriverGoToDriverHUD"] call mav_taxi_fnc_getLocalization ], mav_taxi_v_destination, "default" ] call mav_taxi_fnc_setTask; }; }; }; case "callTaxiClicked": { if ([1] call mav_taxi_fnc_preventClickSpam) exitWith {[] call mav_taxi_fnc_hintClickSpam;}; private _basePrice = getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "basePrice"); private _exit = false;
if (_basePrice > 0) then { private _couldPay = [_basePrice, false] call mav_taxi_fnc_attemptPayment; if (!_couldPay) then { _exit = true; hint (["msgBaseNotAffordable"] call mav_taxi_fnc_getLocalization); mav_taxi_v_destination = []; }; }; if (_exit) exitWith {}; _params params [ ["_ctrl", controlNull, [controlNull]] ]; private _display = ctrlParent _ctrl; [player, mav_taxi_v_destination] remoteExecCall ["mav_taxi_fnc_serverQueueRequest", 2]; mav_taxi_v_hasCalledTaxi = true; mav_taxi_v_currentFare_startPosition = getPos player; ["showUI", [_display]] call RscDisplayTaxiCall; hint (["msgTaxiCalled"] call mav_taxi_fnc_getLocalization); }; case "cancelTaxiClicked": { if ([1] call mav_taxi_fnc_preventClickSpam) exitWith {[] call mav_taxi_fnc_hintClickSpam;}; _params params [ ["_ctrl", controlNull, [controlNull]] ]; private _display = ctrlParent _ctrl; if (mav_taxi_v_hasCalledTaxi) then { if (isNull mav_taxi_v_myDriver) then { [player] remoteExecCall ["mav_taxi_fnc_serverDequeueRequest", 2]; mav_taxi_v_hasCalledTaxi = false; hint (["msgTaxiCancelled"] call mav_taxi_fnc_getLocalization); ["showUI", [_display]] call RscDisplayTaxiCall; mav_taxi_v_destination = []; private _basePrice = getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "basePrice"); [-_basePrice, false] call mav_taxi_fnc_attemptPayment; } else { [_display] spawn { disableSerialization; params [ ["_display", displayNull, [displayNull]] ]; private _ret = [["msgTaxiCancelConfirm"] call mav_taxi_fnc_getLocalization, ["msgTaxiCancelHeader"] call mav_taxi_fnc_getLocalization, ["msgTaxiCancelButtonConfirm"] call mav_taxi_fnc_getLocalization, ["msgTaxiCancelButtonCancel"] call mav_taxi_fnc_getLocalization ] call BIS_fnc_guiMessage; if (_ret) then { mav_taxi_v_hasCalledTaxi = true; [mav_taxi_v_myCallId] remoteExec ["mav_taxi_fnc_serverFareFinished", 2]; [["msgTaxiCancelled"] call mav_taxi_fnc_getLocalization, true] spawn mav_taxi_fnc_showLargeNotification; ["BY_CUSTOMER"] remoteExecCall ["mav_taxi_fnc_fareCancelled", mav_taxi_v_myDriver]; ["BY_CUSTOMER"] call mav_taxi_fnc_fareCancelled; ["showUI", [_display]] call RscDisplayTaxiCall; closeDialog 0; }; }; }; }; }; case "showUI": { _params params [ ["_display", displayNull, [displayNull]] ]; private _mainInfoText = _display displayCtrl 11; private _callTaxiButton = _display displayCtrl 12; private _cancelTaxiButton = _display displayCtrl 13; private _cb1 = _display displayCtrl 15; private _cb2 = _display displayCtrl 16; private _cb3 = _display displayCtrl 17; private _cb4 = _display displayCtrl 18; private _lblAvailableDrivers = _display displayCtrl 19; _lblAvailableDrivers ctrlSetText str count (playableUnits select {_x getVariable ["mav_taxi_v_isOnDuty", false]}); _cb1 cbSetChecked false; _cb2 cbSetChecked false; _cb3 cbSetChecked false; _cb4 cbSetChecked false; _cancelTaxiButton ctrlShow false; _callTaxiButton ctrlShow false; if (count mav_taxi_v_destination == 3) then { _cb1 cbSetChecked true; }; if (mav_taxi_v_hasCalledTaxi) then { _cancelTaxiButton ctrlShow true; _cb2 cbSetChecked true; if (isNull mav_taxi_v_myDriver) then { } else { _cb3 cbSetChecked true; }; if (mav_taxi_v_taxiMeterRan) then { _cb4 cbSetChecked true; }; } else { _mainInfoText ctrlSetStructuredText parseText format [["msgMainInfoNoTaxiCalled"] call mav_taxi_fnc_getLocalization, count (AllPlayers select {_x getVariable ["mav_taxi_v_isOnDuty", false]})]; _callTaxiButton ctrlShow true; _callTaxiButton ctrlEnable true; if (count mav_taxi_v_destination != 3) then { _callTaxiButton ctrlEnable false; }; }; }; default { }; };