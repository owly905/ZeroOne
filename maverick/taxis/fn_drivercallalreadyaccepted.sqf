







































["The call you were trying to accept has already been accepted by someone else or deleted. Your list has been refreshed automatically.", true] spawn mav_taxi_fnc_showLargeNotification;
private _display = findDisplay 53004; if (!isNull _display) then { ["refreshButtonClicked", [_display displayCtrl 16]] spawn RscDisplayTaxiCalls; };
