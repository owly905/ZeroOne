if(isServer) then {diag_log format ["RecivePacket: %1", _this];}; if(!isNil "zero_var_doJip") then {call zero_var_doJip}; params[["_inputParams",""],["_functionname",""],["_isCall",true],["_mode",-1]]; if!((_functionname select [0,9] isEqualTo "zero_fnc_")) exitWith {}; if(!isClass (missionConfigFile >> "CfgRemoteFunctions" >> _functionname) || _mode == -1) exitWith {}; if(([_inputParams] call zero_fnc_checkPacket) != "") exitWith {};
if(getNumber (missionConfigFile >> "CfgRemoteFunctions" >> _functionname >> "allowedTargets") isEqualTo _mode) then { if((typeName(missionNamespace getVariable[_functionname, ""])) == (typeName "")) exitWith {}; if(_isCall) then { _inputParams call (missionNamespace getVariable _functionname); } else { _inputParams spawn (missionNamespace getVariable _functionname); }; };
