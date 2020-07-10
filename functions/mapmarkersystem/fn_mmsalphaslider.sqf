if (!hasInterface) exitWith {}; private ["_slider","_dialog","_alpha"]; _dialog = findDisplay 7022; _slider = _dialog displayCtrl 7024; _alpha = sliderPosition _slider;
{if !((markerAlpha _x) isEqualTo 0) then {_x setMarkerAlphaLocal _alpha;};} forEach zero_var_markersAll; basicMarkerAlpha = _alpha;
