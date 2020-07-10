if (!hasInterface) exitWith {}; private["_source"]; _source = param[0,objNull,[objNull]]; if(isNull _source) exitWith {};
for "_i" from 1 to 7 step 1 do { _source say3D "car_alarm"; uiSleep 2; };
