if (!hasInterface) exitWith {}; private ["_feld","_buy","_bild","_select","_menge","_exit","_uniform"]; _feld = (findDisplay 3100) displayCtrl 3108; _buy = (findDisplay 3100) displayCtrl 3104; _bild = (findDisplay 3100) displayCtrl 3109; _select = _this; _bild ctrlSetText (_select select 2); lbClear _feld; _feld lbAdd "0"; _feld lbAdd "1"; _feld ctrlEnable false; _buy ctrlEnable true; if((_select select 6) == "CfgMagazines") then { _exit = false; _menge = 0; lbClear _feld; _feld ctrlEnable true;
_feld lbAdd "0"; while {(!_exit)} do { if (player canAdd [(_select select 0),(_menge+1)]) then { _menge = _menge + 1; } else { _exit = true; if (_menge == 0) then { _buy ctrlEnable false; } else { for "_i" from 1 to _menge do { _feld lbAdd format ["%1",_i]; }; }; }; }; }else{ if(_select select 6 == "CfgVehicles") then { if((_select select 0) isKindOf "Man") then { _uniform = [(_select select 16)] call zero_fnc_fetchCfgDetails; _bild ctrlSetText (_uniform select 2); }; }; }; _feld lbSetCurSel 1;