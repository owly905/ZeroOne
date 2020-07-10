if (!hasInterface) exitWith {}; removeVest player; removeUniform player; removeHeadgear player; [] call zero_fnc_saveGear;
[] spawn zero_fnc_loadGear; titleText[localize "STR_ISTR_ClothingRemovedOwn","PLAIN"];
