if (!hasInterface) exitWith {}; disableSerialization; params [["_animation",false]]; private _display = findDisplay 175462; if (isNull (findDisplay 175462)) exitWith {}; private _itemsGrp = _display displayCtrl 200; private _weightCtrl = _display displayCtrl 502; private _limitCtrl = _display displayCtrl 504; private _limit = _display getVariable ["zero_var_limit",20]; private _objCount = count (_display getVariable ["zero_var_editorObjects",0]); private _pW = pixelW * 5 * (getResolution select 0) / 1920; private _itemGrpSizeW = 60 * _pW; private _makeItemBox = { params ["_yO","_idc","_class","_count"]; private _pic = getText (configFile >> "CfgVehicles" >> _class >> "editorPreview"); private _name = getText (configFile >> "CfgVehicles" >> _class >> "displayName"); private _ctrl = _display ctrlCreate ["RscPicture", _idc, _itemsGrp]; _ctrl ctrlSetPosition [0,(_itemGrpSizeW*0.563)*_yO,_itemGrpSizeW,_itemGrpSizeW*0.563]; _ctrl ctrlSetText _pic; _ctrl ctrlSetTextColor [1,1,1,0.8]; _ctrl ctrlEnable true; _ctrl ctrlSetTooltip (format ["%1 x%2",_name,_count]); _ctrl ctrlSetFade 1; _ctrl ctrlCommit 0; _ctrl ctrlSetFade 0.2; if (_animation) then { _ctrl ctrlCommit 0.8; } else { _ctrl ctrlCommit 0; }; _ctrl ctrlSetEventHandler ["MouseButtonUp",format ['
private _obj = (findDisplay 175462) getVariable ["zero_var_curObj",objNull];
if (!isNull _obj) then {[_obj] call zero_fnc_deleteVehicle};
_obj = ["%1",[0,0,0]] call zero_fnc_createVehicleLocal;
if ((getNumber (configFile >> "CfgVehicles" >> "%1" >> "maximumLoad")) > 0) then {
clearBackpackCargo _obj;
clearMagazineCargo _obj;
clearWeaponCargo _obj;
clearItemCargo _obj;
};
_obj setDir ((findDisplay 175462) getVariable ["zero_var_curDir",0]);
_obj enableSimulation false;
_obj disableCollisionWith player;
(findDisplay 175462) setVariable ["zero_var_curObj", _obj];
(findDisplay 175462) setVariable ["zero_var_curSelection",objNull];
', _class]];
}; private _updateSText = { params [["_ctrl",controlNull],["_text",""]]; if (isNull _ctrl) exitWith {}; (_ctrl getVariable ["format",[]]) params ["_size","_color", "_align","_font","_shadow"]; _ctrl ctrlSetStructuredText (parseText format ["<t shadow='%6' font='%5' align='%4' size='%2' color='%3'>%1</t>", _text,_size,_color, _align,_font,_shadow]); _ctrl ctrlCommit 0; }; [_weightCtrl,format ["%1/%2",zero_var_carryWeight,zero_var_maxWeight]] call _updateSText; [_limitCtrl,format ["%1/%2",_objCount,_limit]] call _updateSText; for "_i" from 1000 to 2000 do { private _ctrl = _display displayCtrl _i; if (isNull _ctrl) exitWith {}; ctrlDelete _ctrl; }; private _yO = 0; private _idc = 1000; private _disabled = (getArray (missionConfigFile >> "zero_Furniture" >> "furnitureItems" >> "disabledItems")); { private _index = [configName _x, zero_var_inventory] call zero_fnc_findIndex; if(_index != -1 && (!((configName _x) in _disabled))) then { private _val = (zero_var_inventory select _index) select 1; if(_val > 0) then { [_yO, _idc, getText (_x >> "className"), _val] call _makeItemBox; _idc = _idc + 1; _yO = _yO + 1; if (_animation) then {uiSleep 0.05}; }; }; } forEach ("true" configClasses (missionConfigFile >> "zero_Furniture" >> "furnitureItems"));
