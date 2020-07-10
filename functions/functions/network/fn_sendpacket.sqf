params[["_inputParams",""],["_functionname",""],["_target",-1],["_isCall",true]];

if !((_functionname select [0,9] isEqualTo "zero_fnc_")) exitWith { 
	zero_one_kick = ("Bad Function name: "+str _functionname);
	player setVariable ["zero_var_kick",zero_one_kick,true]; 
}; 

if (!isClass (missionConfigFile >> "CfgRemoteFunctions" >> _functionname)) exitWith { 
	zero_one_kick = ("Tried to send Function which is not defined as class: "+str _functionname); 
	player setVariable ["zero_var_kick",zero_one_kick,true]; 
}; 

if (((typeName(missionNamespace getVariable[_functionname, ""])) == (typeName "")) && {_target != 2} && {_target != zero_var_HC1_owner}) exitWith {
	zero_one_kick = ("Tried to send Function which is not defined: "+str _functionname);
	player setVariable ["zero_var_kick",zero_one_kick,true];
};

private _checkPacket = [_inputParams] call zero_fnc_checkPacket;

if (_checkPacket != "") exitWith {
	zero_one_kick = ("The follwing packet did not pass Security check - Function: "+ str _functionname + " Reason:" + _checkPacket + " Input: "+ str _inputParams);
	player setVariable ["zero_var_kick",zero_one_kick,true];
};

if (getNumber(missionConfigFile >> "CfgRemoteFunctions" >> _functionname >> "allowedTargets") isEqualTo 0) exitWith {
	if (tolower(_functionname) in ["zero_fnc_msg", "zero_fnc_recivemessage"]) then {
		[_inputParams, _functionname, _isCall, 0] remoteExecCall ["zero_fnc_recivePacket", 2];
	};
}; 

if (getNumber(missionConfigFile >> "CfgRemoteFunctions" >> _functionname >> "allowedTargets") isEqualTo 1) exitWith {
	if (!(_target isEqualTo objNull)) then {
		[_inputParams, _functionname, _isCall, 1] remoteExecCall ["zero_fnc_recivePacket", _target, false];
	}; 
	if (tolower(_functionname) isEqualTO "zero_fnc_msg") then {
		[_inputParams, _functionname, _isCall, 0] remoteExecCall ["zero_fnc_recivePacket", 2];
		}; 
	}; 
	
if (getNumber(missionConfigFile >> "CfgRemoteFunctions" >> _functionname >> "allowedTargets") isEqualTo 2 && _target isEqualTo 2) exitWith {
	[_inputParams, _functionname, _isCall, 2] remoteExecCall ["zero_fnc_recivePacket", _target, false];
};
