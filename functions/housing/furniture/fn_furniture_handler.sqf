if (!hasInterface) exitWith {}; private _handleType = param [0, ""]; private _display = param [1, displayNull]; private _keys = _display getVariable ["zero_var_camHKeys",[false,false,false,false,false,false,false,false]]; private _cam = _display getVariable ["zero_var_cam",objNull]; private _speed = _display getVariable ["zero_var_camSpeed",0]; private _camMoveAllowed = _display getVariable ["zero_var_camMoveAllowed",false]; private _house = _display getVariable ["zero_var_house",objNull]; private _camMaxDistance = _display getVariable ["zero_var_camMaxDistance",10]; private _curObj = _display getVariable ["zero_var_curObj",objNull]; private _curTarget = _display getVariable ["zero_var_curTarget",objNull]; private _curSelection = _display getVariable ["zero_var_curSelection",objNull]; private _editorObjects = _display getVariable ["zero_var_editorObjects",[]]; private _prompt = _display getVariable ["zero_var_promtActive",[]]; private _limit = _display getVariable ["zero_var_limit",20]; private _handled = false; private _pW = pixelW * 5 * (getResolution select 0) / 1920; private _pH = pixelH * 5 * (getResolution select 1) / 1080; private _promptGrpSizeW = 100 * _pW; private _promptGrpSizeH = 30 * _pH; if (isNull _house) exitWith {}; if (_prompt) exitWith { if (_handleType == "keyDown") then { if ((param [2, -1]) == 1) then { {(_display displayCtrl _x) ctrlEnable true} forEach [200,400,500]; (_display displayCtrl 300) ctrlSetPosition [-10,-10]; (_display displayCtrl 300) ctrlEnable false; (_display displayCtrl 300) ctrlCommit 0; _display setVariable ["zero_var_camMoveAllowed",true]; (findDisplay 175462) setVariable ["zero_var_promtActive",false]; true; }; }; }; private _mouseOverMenu = false; { (ctrlPosition (_display displayCtrl _x)) params ["_xp","_y","_w","_h"]; getMousePosition params ["_xm","_ym"]; _xm = _xm - safeZoneX; _ym = _ym - safeZoneY; if (((_xm>_xp)&&(_xm<(_xp+_w)))&&((_ym>_y)&&(_ym<(_y+_h)))) then { _mouseOverMenu = true; }; } forEach [200,300,400,500]; switch _handleType do { case "mouse": { if (_camMoveAllowed) then { private _distanceToHouse = (getPosASL _house) vectorDistance (getPosASL _cam); if (_distanceToHouse < _camMaxDistance) then { private _horizontal = param [2, 0]; private _vertical = param [3, 0]; _horizontal = _horizontal * 1.6; _vertical = _vertical * 1.6; private _rotate = param [4, false]; if ((!isNull _cam) && (count _keys != 0)) then { if ((_rotate) && (_display getVariable ["zero_var_camRotating",false])) then { private _pitchBank = _cam call zero_fnc_getPB; _cam setDir ((getDir _cam) + _horizontal); [_cam, (_pitchBank select 0) + (_vertical*-1), 0] call zero_fnc_setPB; }; private _motion = 0; private _angel = 0; private _heightChange = 0; call { private _up = _keys select 0; private _down = _keys select 1; private _forw = _keys select 2; private _back = _keys select 3; private _left = _keys select 4; private _rght = _keys select 5; if (_up && !_down) then {_heightChange = 1; _motion = 0.0001;}; if (!_up && _down) then {_heightChange = -1; _motion = 0.0001;}; if (_forw && !_back && !_left && !_rght) exitWith {_angel = 0; _motion = 1;}; if (_forw && !_back && !_left && _rght) exitWith {_angel = 45; _motion = 1;}; if (!_forw && !_back && !_left && _rght) exitWith {_angel = 90; _motion = 1;}; if (!_forw && _back && !_left && _rght) exitWith {_angel = 135; _motion = 1;}; if (!_forw && _back && !_left && !_rght) exitWith {_angel = 180; _motion = 1;}; if (!_forw && _back && _left && !_rght) exitWith {_angel = 225; _motion = 1;}; if (!_forw && !_back && _left && !_rght) exitWith {_angel = 270; _motion = 1;}; if (_forw && !_back && _left && !_rght) exitWith {_angel = 315; _motion = 1;}; }; if (_motion == 0) exitWith {}; private _dir = (getDir _cam) + _angel; private _oldPos = getPosATL _cam; private _newPos = [ (_oldPos select 0) + ((sin _dir) * _motion * _speed), (_oldPos select 1) + ((cos _dir) * _motion * _speed), (_oldPos select 2) + ((_heightChange * _speed) * 0.7) ]; _cam camSetPos _newPos; _cam camCommit 0; }; } else { _display setVariable ["zero_var_camMoveAllowed",false]; _cam spawn { private _camPos = [(player getRelPos [1, 140]) select 0,(player getRelPos [1, 140]) select 1,((getPosATL player) select 2) + (2.3)];
private _camTarget = [(player getRelPos [2, 0]) select 0,(player getRelPos [2, 0]) select 1,((getPosATL player) select 2) + (0.3)]; private _motionRelDir = _camPos vectorFromTo _camTarget; _this camSetPos _camPos; _this camSetDir _motionRelDir; _this camCommit 3; waitUntil {(if (isNil {camCommitted _this}) then {true} else {camCommitted _this})}; if (isNull (findDisplay 175462)) exitWith {}; (findDisplay 175462) setVariable ["zero_var_camMoveAllowed",true]; }; }; }; }; case "keyDown": { private _dikCode = param [2, -1]; if (_dikCode == 16) then {_handled = true; _keys set [0, true];}; if (_dikCode == 44) then {_handled = true; _keys set [1, true];}; if (_dikCode == 17) then {_handled = true; _keys set [2, true];}; if (_dikCode == 31) then {_handled = true; _keys set [3, true];}; if (_dikCode == 30) then {_handled = true; _keys set [4, true];}; if (_dikCode == 32) then {_handled = true; _keys set [5, true];}; if (_dikCode == 42) then {_handled = true; _keys set [6, true];}; if (_dikCode == 56) then {_handled = true; _keys set [7, true];}; if (_dikCode == 1) then { switch (true) do { case (!isNull _curObj): { _handled = true; [_curObj] call zero_fnc_deleteVehicle; [false] spawn zero_fnc_furniture_fillItems; }; case (!isNull _curSelection): { _handled = true; _display setVariable ["zero_var_curSelection",objNull]; }; case (_display getVariable ["zero_var_unsavedChanges",false]): { _handled = true; {(_display displayCtrl _x) ctrlEnable false} forEach [200,400,500]; (_display displayCtrl 300) ctrlSetPosition [(safeZoneW/2)-(_promptGrpSizeW/2),(safeZoneH/2)-(_promptGrpSizeH/2)]; (_display displayCtrl 300) ctrlEnable true; (_display displayCtrl 300) ctrlCommit 0; _display setVariable ["zero_var_camMoveAllowed",false]; _display setVariable ["zero_var_promtActive",true]; }; }; }; }; case "keyUp": { private _dikCode = param [2, -1]; if (_dikCode == 16) then {_handled = true; _keys set [0, false];}; if (_dikCode == 44) then {_handled = true; _keys set [1, false];}; if (_dikCode == 17) then {_handled = true; _keys set [2, false];}; if (_dikCode == 31) then {_handled = true; _keys set [3, false];}; if (_dikCode == 30) then {_handled = true; _keys set [4, false];}; if (_dikCode == 32) then {_handled = true; _keys set [5, false];}; if (_dikCode == 42) then {_handled = true; _keys set [6, false];}; if (_dikCode == 56) then {_handled = true; _keys set [7, false];}; }; case "mouseZChanged": { if (!_mouseOverMenu) then { private _direction = param [2,1]; private _shift = _keys param [6,false]; private _alt = _keys param [7,false]; if (_direction > 0) then { _direction = (if (!_shift && !_alt) then {5} else {if (_shift) then {10} else {if (_alt) then {1}}}); } else { if (_direction < 0) then { _direction = (if (!_shift && !_alt) then {-5} else {if (_shift) then {-10} else {if (_alt) then {-1}}}); }; }; private _obj = (findDisplay 175462) getVariable ["zero_var_curObj",objNull]; if (!isNull _obj) then { private _dir = _display getVariable ["zero_var_curDir",0]; _dir = _dir + _direction; _obj setDir _dir; _display setVariable ["zero_var_curDir",_dir]; }; }; }; case "mouseButtonUp": { private _button = param [2,-1]; if (!_mouseOverMenu) then { if (_button == 0) then { switch (true) do { case (!isNull _curObj): { if (_limit > (count _editorObjects)) then { if (_display getVariable ["zero_var_placementLegit",false]) then { if ([false,(format ["frn_%1",typeOf _curObj]),1] call zero_fnc_handleZOInv) then { _handled = true; _editorObjects pushBack _curObj; _display setVariable ["zero_var_curObj",objNull]; [false] spawn zero_fnc_furniture_fillItems; _display setVariable ["zero_var_unsavedChanges",true]; }; }; } else {[localize "STR_House_furniture_objectLimitReached","err"] spawn zero_fnc_furniture_msg}; }; case ((!isNull _curTarget) && (_curTarget != _curSelection)): { _handled = true; _display setVariable ["zero_var_curSelection",_curTarget]; _display setVariable ["zero_var_curDir",getDir _curTarget]; }; case ((isNull _curTarget) && (!isNull _curSelection)): { _handled = true; _display setVariable ["zero_var_curSelection",objNull]; }; }; }; }; if (_button == 1) then { _display setVariable ["zero_var_camRotating",false]; }; }; case "mouseButtonDown": { if (!_mouseOverMenu) then { private _button = param [2,-1]; if (_button == 1) then { _display setVariable ["zero_var_camRotating",true]; }; }; }; default {}; }; _handled;
