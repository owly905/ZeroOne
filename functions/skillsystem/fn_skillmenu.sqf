if (!hasInterface) exitWith {}; private["_display","_title","_categoryList"]; disableSerialization; if(!(createDialog "zero_var_skillsystem")) exitWith {}; _display = findDisplay 1000; _title = _display displayCtrl 1001; _categoryList = _display displayCtrl 1002; _title ctrlSetStructuredText parseText "<t align='left'>Fähigkeiten System</t>";
lbClear _categoryList; { _categoryList lbAdd _x; _categoryList lbSetData [(lbSize _categoryList)-1,str(_forEachIndex)]; } forEach [localize "STR_Skill_Farm",localize "STR_Skill_Process",localize "STR_Skill_Character"]; _categoryList lbSetCurSel 0;
