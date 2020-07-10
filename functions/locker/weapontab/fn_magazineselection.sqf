if (!hasInterface) exitWith {}; private ["_list","_index","_edit","_count"]; disableSerialization; _list = param[0,controlNull,[controlNull]]; _index = param[1,0,[0]]; _edit = if((ctrlIDC _list) isEqualTo 1618) then {(findDisplay 1000) displayCtrl 1620}else{(findDisplay 1000) displayCtrl 1621};
_count = _list lbValue _index; _edit ctrlSetText str(_count);
