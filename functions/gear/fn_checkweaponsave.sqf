if(!params[["_itm","",[""]]]) exitWith {}; private _details = [_itm] call zero_fnc_fetchCfgDetails; if(count _details >= 16 && {(_details select 6) == "CfgWeapons"}) then { if((_details select 5) == 1) then { private _prefix = toLower(_itm) splitString "_";
if(count _prefix < 2) exitWith {}; if((_prefix select 0) in ["lmg","arifle","srifle","mmg"]) then { [3] call zero_fnc_updatePartial; }; }else{ if((_details select 5) == 801) then { if(toLower(_itm) find "fullghillie" != -1) then { [3] call zero_fnc_updatePartial; }; }; }; };