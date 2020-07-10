if (!hasInterface) exitWith {};
 params [ ["_buff","",[""]] ];
 if (_buff isEqualTo "") exitWith {};
 private _name = getText (missionConfigFile >> "zero_CfgBuffs" >> "buffs" >> _buff >> "name");
 private _duration = getNumber (missionConfigFile >> "zero_CfgBuffs" >> "buffs" >> _buff >> "duration");
 private _multiplier = getNumber (missionConfigFile >> "zero_CfgBuffs" >> "buffs" >> _buff >> "multiplier");

_multiplier = if (_multiplier isEqualTo 0) then { "keine";
 } else { format ["Farm Multiplikator um %1 erhöht",_multiplier];
 };
 private _msg = format ["Der Buff %1 ist nun auf deiner Gang aktiviert<br/>Laufzeit: %2 Minuten<br/>Eigenschaften: %3",_name,_duration / 60,_multiplier];
 [_msg,2,"Buffsystem"] call zero_fnc_msg;
 false call zero_fnc_refreshBuffs;
 _duration spawn { uiSleep _this;
 false call zero_fnc_refreshBuffs;
 };

