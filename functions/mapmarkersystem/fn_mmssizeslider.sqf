if (!hasInterface) exitWith {}; private ["_slider","_dialog","_size"]; _dialog = findDisplay 7000; _slider = _dialog displayCtrl 7002;
_size = sliderPosition _slider; {_x setMarkerSizeLocal [_size,_size];} forEach zero_var_markersAll;
