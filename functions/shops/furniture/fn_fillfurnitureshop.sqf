disableSerialization; private _tree = (findDisplay 20000) displayCtrl 20009; private _categories = []; private _result = []; { private _subCategories = []; private _category = getText(_x >> "category"); if(!(_category in _categories)) then { { if(getText(_x >> "category") == _category) then { _subCategories pushBackUnique getText(_x >> "subCategory"); }; } forEach ("true" configClasses (missionConfigFile >> "zero_Furniture" >> "furnitureItems")); _categories pushBackUnique _category; _result pushBack [_category, _subCategories]; }; } forEach ("true" configClasses (missionConfigFile >> "zero_Furniture" >> "furnitureItems")); private _disabled = (getArray (missionConfigFile >> "zero_Furniture" >> "furnitureItems" >> "disabledItems")); { private _indexCategory = _forEachIndex; private _category = (_x select 0); _tree tvAdd [[], getText(configFile >> "CfgEditorCategories" >> (_x select 0) >> "displayName")]; { private _count = 0; private _indexSubCategory = _forEachIndex; private _subCategory = _x; _tree tvAdd [[_indexCategory], getText(configFile >> "CfgEditorSubcategories" >> _x >> "displayName")];
{ private _itemCategory = getText(_x >> "category"); private _itemSubCategory = getText(_x >> "subCategory"); private _className = getText(_x >> "className"); if(_category == _itemCategory && _subCategory == _itemSubCategory && (!((configName _x) in _disabled))) then { _tree tvAdd [[_indexCategory,_indexSubCategory], getText(missionConfigFile >> "zero_CfgItems" >> (configName _x) >> "name")]; _tree tvSetPicture [[_indexCategory,_indexSubCategory,_count], getText(configFile >> "CfgVehicles" >> _className >> "editorPreview")]; _tree tvSetTooltip [[_indexCategory,_indexSubCategory,_count], getText(missionConfigFile >> "zero_CfgItems" >> (configName _x) >> "name")]; _tree tvSetData [[_indexCategory,_indexSubCategory,_count], str([(configName _x),getNumber(missionConfigFile >> "zero_CfgItems" >> (configName _x) >> "buyPrice"),getNumber(missionConfigFile >> "zero_CfgItems" >> (configName _x) >> "weight")])]; _count = _count +1; }; } forEach ("true" configClasses (missionConfigFile >> "zero_Furniture" >> "furnitureItems")); } forEach (_x select 1); } forEach _result; _tree tvSetCurSel [0];