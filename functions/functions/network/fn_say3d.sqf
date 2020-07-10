if (!hasInterface) exitWith {}; private["_object","_sound"]; _object = param[0,objNull,[objNull]];
_sound = param[1,"",[""]]; if(isNull _object || _sound == "") exitWith {}; _object say3D _sound;
