if (!hasInterface) exitWith {}; params [["_vehicle", objNull, [objNull]], "_cargoIndex"]; if (isNull _vehicle) exitWith {}; if (!(isNil "_cargoIndex") && {_cargoIndex isEqualType -1}) exitWith { player assignAsCargoIndex [_vehicle, _cargoIndex];
player moveInCargo [_vehicle, _cargoIndex]; }; player moveInCargo _vehicle;
