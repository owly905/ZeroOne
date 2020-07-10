if (!hasInterface) exitWith {}; 
disableSerialization; 

private _display = (_this select 0); 
private _escRespawn = (_display) displayCtrl 1010; 
private _escManual = (_display) displayCtrl 122; 
private _escConfig = (_display) displayCtrl 101; 
private _escContinue = (_display) displayCtrl 2; 
private _escSave = (_display) displayCtrl 103; 
private _escAbort = (_display) displayCtrl 104; 
private _escBottom = (_display) displayCtrl 120; 

{ 
	private _tmpDisplay = _x; 
	if !(ctrlIDD _tmpDisplay in [0, 8, 12, 18, 46, 49, 70]) then { 
		_tmpDisplay closeDisplay 2; 
	}; 
	true 
} count allDisplays; 

_escContinue ctrlSetText "Zero-One Altis Life"; 
_escContinue ctrlEnable false; 
_escContinue ctrlCommit 0; 
_escSave ctrlSetText "Besuche uns auf www.Zero-One.cc"; 
_escSave ctrlEnable false; 
_escSave ctrlCommit 0; 

if(!(playerSide in [west,independent]) && ((player getVariable["zero_var_restrained",false]) 
	|| (player getVariable["zero_var_escorting",false]) || (player getVariable["zero_var_transporting",false]))) then { 
		_escRespawn ctrlEnable false; 
}; 

_escRespawn ctrlSetEventHandler [ "ButtonClick", "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};
	zero_var_allowedToRefresh = serverTime;[] spawn zero_fnc_respawn; (findDisplay 49) closeDisplay 2;true"];

if(player getVariable["zero_var_usebag", false]) then { 
	_escConfig ctrlSetText "Derzeit nicht möglich !"; 
	_escConfig ctrlEnable false; 
	_escConfig ctrlCommit 0; 
}; 

_escManual ctrlEnable false; 
_escManual ctrlCommit 0; 
_escManual ctrlShow false; 
_escAbort ctrlSetText "Server verlassen"; 
_escAbort ctrlSetTooltip "Server verlassen. Dein Spielstand wird gespeichert."; 
_escAbort ctrlSetEventHandler [ "ButtonClick", "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) 
	exitWith {};zero_var_allowedToRefresh = serverTime;[] spawn zero_fnc_disconnect; (findDisplay 49) closeDisplay 2; true" ]; 

if(lifeState player == "INCAPACITATED") then {
	_escAbort ctrlEnable false;
} else {
	_escAbort ctrlEnable true;
}; 

_escBottom ctrlSetText "Zero-One Altis Life"; 
_escBottom ctrlSetTooltip "Aktuelle Server Meldung"; 

if(player getVariable["zero_var_usebag", false]) then { 
	"DynamicBlur" ppEffectEnable true; 
	"DynamicBlur" ppEffectAdjust[5]; 
	"DynamicBlur" ppEffectCommit 0; 
}; 

true;
