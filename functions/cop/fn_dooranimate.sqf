if (!hasInterface) exitWith {}; private["_house","_doors","_door"]; _house = param[0,objNull,[objNull]]; if(isNull _house) exitWith {}; _doors = 1; while {true} do { if(!isClass(configFile >> "CfgVehicles" >> (typeOf _house) >> "AnimationSources" >> format["Door_%1_source",_doors])) exitWith {}; _doors = _doors + 1; }; _door = 0; for "_i" from 1 to _doors do { _selPos = _house selectionPosition format["Door_%1_trigger",_i];
_worldSpace = _house modelToWorld _selPos; if(player distance _worldSpace < 5) exitWith {_door = _i;}; }; if(_door isEqualTo 0) exitWith {(localize "STR_Cop_NotaDoor") call zero_fnc_msg;}; if(_house animationPhase format["door_%1_rot",_door] isEqualTo 0) then { _house animate[format["door_%1_rot",_door],1]; } else { _house animate[format["door_%1_rot",_door],0]; }; closeDialog 0;