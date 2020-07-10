if (!hasInterface) exitWith {}; private["_veh"]; _veh = param[0,objNull,[objNull]]; if(isNull _veh) exitWith {}; if(player distance _veh > 200) exitWith {}; while {true} do { if(isNull _veh || !alive _veh) exitWith {};
if(isNil {_veh getVariable "mining"}) exitWith {}; if(player distance _veh > 200) exitWith {}; _veh say3D "Device_disassembled_loop"; uiSleep 28.6; };
