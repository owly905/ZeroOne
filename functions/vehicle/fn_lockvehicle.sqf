private["_vehicle","_state"]; _vehicle = param[0,objNull,[objNull]]; _state = param[1,2,[0,false]];
if(isNull _vehicle) exitWith {}; _vehicle lock _state;
