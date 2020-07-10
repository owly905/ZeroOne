if (!hasInterface) exitWith {}; private _obj = param[0,objNull,[objNull]]; if (isNull _obj || {_obj isEqualTo player}) exitWith {};
_obj removeAllEventHandlers 'Explosion'; _obj addEventHandler ['Explosion', { call zero_fnc_handleExplosion; }];
