










































disableSerialization; params [ ["_mode", "", [""]], ["_params", [], [[]]] ]; switch (_mode) do { case "onLoad": { _params params [ ["_display", displayNull, [displayNull]] ]; private _ctrlSummaryText = _display displayCtrl 11; private _ctrlTotalText = _display displayCtrl 12;
private _totalPrice = missionNamespace getVariable ["mav_taxi_v_fareSummary_total", 0]; _ctrlSummaryText ctrlSetStructuredText parseText (missionNamespace getVariable ["mav_taxi_v_fareSummary_summaryString", ""]); if (mav_taxi_v_fareSummary_total < 0) then { _ctrlTotalText ctrlSetText format ["%1$", _totalPrice toFixed 0]; _ctrlTotalText ctrlSetTextColor [0.77,0.15,0.15,1]; } else { _ctrlTotalText ctrlSetText format ["+%1$", _totalPrice toFixed 0]; _ctrlTotalText ctrlSetTextColor [0.26,0.62,0.27,1]; }; }; };