









































































































































































































































































































































































































































__EXEC(	_fnc_sizeEx = {		_pixelScale = 20 * 	0.50;		_size = _this select 0;		_size = _size * _pixelScale;		_coef = _this select 1;		_sizes = _this select 2;		_sizeEx = _sizes select 0;		{			_xSize = _x * _coef;			_cond = _xSize < _size;			if _cond then {_sizeEx = _xSize;};		} foreach _sizes;		_sizeEx = _sizeEx / _pixelScale;		_bracketL = tostring [40];		_bracketR = tostring [41];		_pixelH = _bracketL + "1 / " + _bracketL + "getResolution select 3" + _bracketR + _bracketR;		str _sizeEx + " * " + _pixelH + " * pixelGrid * " + str 	0.50	};	_fnc_colorRGBAtoHEX = {		_colorRGB = _this;		_colorHEX = "";		_colorCount = count _colorRGB - 1;		for "_i" from 0 to _colorCount do {			_color = _colorRGB select _i;			_color = _color * 255;			_color = round _color;			_color2 = _color % 16;			_color1 = _color - _color2;			_color1 = _color1 / 16;			_colorHEX1 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"] select _color1;			_colorHEX2 = ["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"] select _color2;			_colorHEX + _colorHEX1 + _colorHEX2;			_colorHEX = switch _i do {				case 3: {_colorHEX1 + _colorHEX2 + _colorHEX;};				default {_colorHEX + _colorHEX1 + _colorHEX2;};			};		};		_colorHEX = "#" + _colorHEX;		_colorHEX;	};	_fnc_colorHEXtoRGBA = {		_colorHEX = _this select 0;		_index = _this select 1;		_index2 = _index + 1;		_colorRGBA = [];		_colorHEXarray = toarray _colorHEX;		_color = "0x" + tostring [_colorHEXarray select _index,_colorHEXarray select _index2];		_color = call compile _color;		_color * 0.00392157	};	_fnc_colorHEXtoRGBA_0 = {[_this,0] call _fnc_colorHEXtoRGBA};	_fnc_colorHEXtoRGBA_2 = {[_this,2] call _fnc_colorHEXtoRGBA};	_fnc_colorHEXtoRGBA_4 = {[_this,4] call _fnc_colorHEXtoRGBA};	_fnc_colorHEXtoRGBA_6 = {[_this,6] call _fnc_colorHEXtoRGBA};)
















































































































class MAV_ctrlDefault { access = 0; idc = -1; style = 0x00; default = 0; show = 1; fade = 0; blinkingPeriod = 0; deletable = 0; x = 0; y = 0; w = 0; h = 0; tooltip = ""; tooltipMaxWidth = 0.5; tooltipColorShade[] = {0,0,0,1}; tooltipColorText[] = {1,1,1,1}; tooltipColorBox[] = {0,0,0,0}; class ScrollBar { width = 0; height = 0; scrollSpeed = 0.06; arrowEmpty = "\a3\3DEN\Data\Controls\ctrlDefault\arrowEmpty_ca.paa"; arrowFull = "\a3\3DEN\Data\Controls\ctrlDefault\arrowFull_ca.paa"; border = "\a3\3DEN\Data\Controls\ctrlDefault\border_ca.paa";
thumb = "\a3\3DEN\Data\Controls\ctrlDefault\thumb_ca.paa"; color[] = {1,1,1,1}; }; }; class MAV_ctrlDefaultText: MAV_ctrlDefault { sizeEx = __EVAL([	4.5,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); font = 			"RobotoCondensedLight"; shadow = 1; }; class MAV_ctrlDefaultButton: MAV_ctrlDefaultText { soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1}; soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1}; soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1}; soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1}; };

class MAV_ctrlStatic: MAV_ctrlDefaultText { type = 0; colorBackground[] = {0,0,0,0}; text = ""; lineSpacing = 1; fixedWidth = 0; colorText[] = {1,1,1,1}; colorShadow[] = {0,0,0,1}; moving = 0; autoplay = 0; loops = 0; tileW = 1; tileH = 1; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onVideoStopped = ""; }; class MAV_ctrlStaticPicture: MAV_ctrlStatic { style = 0x30; }; class MAV_ctrlStaticPictureKeepAspect: MAV_ctrlStaticPicture { style = 0x30 + 0x800; }; class MAV_ctrlStaticPictureTile: MAV_ctrlStatic { style = 0x90; }; class MAV_ctrlStaticFrame: MAV_ctrlStatic { style = 0x40;
}; class MAV_ctrlStaticLine: MAV_ctrlStatic { style = 0xB0; }; class MAV_ctrlStaticMulti: MAV_ctrlStatic { style = 0x10 + 0x200; }; class MAV_ctrlStaticBackground: MAV_ctrlStatic { colorBackground[] = {0.12,0.14,0.16,0.8}; }; class MAV_ctrlStaticOverlay: MAV_ctrlStatic { colorBackground[] = {		0,	0,	0, 0.5}; }; class MAV_ctrlStaticTitle: MAV_ctrlStatic { moving = 1; colorBackground[] = {1,1,1,0.1}; colorText[] = {1,1,1,1}; colorShadow[] = {0,0,0,0}; }; class MAV_ctrlStaticFooter: MAV_ctrlStatic { colorBackground[] = {0,0,0,0.3}; }; class MAV_ctrlStaticBackgroundDisable: MAV_ctrlStatic { x = -4; y = -2; w = 8; h = 4; colorBackground[] = {1,1,1,0.5}; }; class MAV_ctrlStaticBackgroundDisableTiles: MAV_ctrlStaticPictureTile { x = -4; y = -2; w = 8; h = 4; text = "\a3\3DEN\Data\Displays\Display3DENEditAttributes\backgroundDisable_ca.paa"; tileW = 8 / (32 * pixelW); tileH = 4 / (32 * pixelH); colorText[] = {1,1,1,0.05}; };

class MAV_ctrlButton: MAV_ctrlDefaultButton { type = 1; style = 0x02 + 0xC0; colorBackground[] = {0.1,0.1,0.1,1}; colorBackgroundDisabled[] = {0.1,0.1,0.1,0.5}; colorBackgroundActive[] = {0.1,0.1,0.1,0.5}; colorFocused[] = {0.1,0.1,0.1,0.5}; font = 			"PuristaLight"; text = ""; colorText[] = {		1,	1,	1, 1}; colorDisabled[] = {	1,	1,	1,0.25}; borderSize = 0; colorBorder[] = {0,0,0,0}; colorShadow[] = {0,0,0,0}; offsetX = 0; offsetY = 0; offsetPressedX = pixelW; offsetPressedY = pixelH; period = 0; periodFocus = 2; periodOver = 0.5; class KeyHints { class A { key = 0x00050000 + 0; hint = "KEY_XBOX_A"; } }; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onButtonClick = ""; onButtonDown = ""; onButtonUp = ""; }; class MAV_ctrlButtonPicture: MAV_ctrlButton { style = 0x02 + 0x30; }; class MAV_ctrlButtonPictureKeepAspect: MAV_ctrlButton { style = 0x02 + 0x30 + 0x800; }; class MAV_ctrlButtonOK: MAV_ctrlButton { default = 1;
idc = 1; text = $STR_DISP_OK; }; class MAV_ctrlButtonCancel: MAV_ctrlButton { idc = 2; text = $STR_DISP_CANCEL; }; class MAV_ctrlButtonClose: MAV_ctrlButtonCancel { text = $STR_DISP_CLOSE; }; class MAV_ctrlButtonToolbar: MAV_ctrlButtonPictureKeepAspect { colorBackground[] = {0,0,0,0}; colorBackgroundDisabled[] = {0,0,0,0}; }; class MAV_ctrlButtonSearch: MAV_ctrlButton { style = 0x02 + 0x30 + 0x800; text = "\a3\3DEN\Data\Displays\Display3DEN\search_start_ca.paa"; textSearch = "\a3\3DEN\Data\Displays\Display3DEN\search_end_ca.paa"; tooltip = $STR_3den_display3den_menubar_search_text; }; class MAV_ctrlButtonExpandAll: MAV_ctrlButtonToolbar { style = 0x02 + 0x30 + 0x800; text = "\a3\3DEN\Data\Displays\Display3DEN\tree_expand_ca.paa"; tooltip = $STR_3DEN_ctrlButtonExpandAll_text; }; class MAV_ctrlButtonCollapseAll: MAV_ctrlButtonToolbar { style = 0x02 + 0x30 + 0x800; text = "\a3\3DEN\Data\Displays\Display3DEN\tree_collapse_ca.paa"; tooltip = $STR_3DEN_ctrlButtonCollapseAll_text; }; class MAV_ctrlButtonFilter: MAV_ctrlButton { colorBackground[] = {0,0,0,0}; colorBackgroundDisabled[] = {0,0,0,0}; colorBackgroundActive[] = {1,1,1,0.3}; colorFocused[] = {0,0,0,0}; };

class MAV_ctrlEdit: MAV_ctrlDefaultText { type = 2; colorBackground[] = {		0,	0,	0, 0.5}; text = ""; colorText[] = {		1,	1,	1, 1}; colorDisabled[] = {	1,	1,	1,0.25}; colorSelection[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; canModify = 1; autocomplete = ""; onCanDestroy = ""; onDestroy = "";
onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; }; class MAV_ctrlEditMulti: MAV_ctrlEdit { style = 0x10; };

class MAV_ctrlSliderV: MAV_ctrlDefault { type = 3; style = 0; color[] = {0,0,0,1}; colorDisabled[] = {1,1,1,0.25}; colorActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; sliderRange[] = {0,1}; sliderPosition = 1; lineSize = 0.1; pageSize = 3; class Title { idc = -1; colorBase[] = {1,1,1,1}; colorActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; }; class Value { idc = -1; format = "%.f"; type = SPTPlain; colorBase[] = {1,1,1,1};
colorActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; }; onCanDestroy = ""; onDestroy = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onSliderPosChanged = ""; }; class MAV_ctrlSliderH: MAV_ctrlSliderV { style = 0x400; };

class MAV_ctrlCombo: MAV_ctrlDefaultText { type = 4; style = 0x00 + 0x10 + 0x200; colorBackground[] = {0.05,0.05,0.05,1}; colorSelectBackground[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorText[] = {		1,	1,	1, 1}; colorDisabled[] = {	1,	1,	1,0.25}; colorSelect[] = {0,0,0,1}; colorTextRight[] = {1,1,1,1}; colorSelectRight[] = {1,1,1,0.25}; colorSelect2Right[] = {1,1,1,1}; colorPicture[] = {1,1,1,1}; colorPictureSelected[] = {1,1,1,1}; colorPictureDisabled[] = {1,1,1,0.25}; colorPictureRight[] = {1,1,1,1}; colorPictureRightSelected[] = {1,1,1,1}; colorPictureRightDisabled[] = {1,1,1,0.25}; arrowEmpty = "\a3\3DEN\Data\Controls\ctrlCombo\arrowEmpty_ca.paa"; arrowFull = "\a3\3DEN\Data\Controls\ctrlCombo\arrowFull_ca.paa"; wholeHeight = 12 * 	5 * (pixelH * pixelGrid * 	0.50); maxHistoryDelay = 1; soundExpand[] = {"\A3\ui_f\data\sound\RscCombo\soundExpand",0.1,1}; soundCollapse[] = {"\A3\ui_f\data\sound\RscCombo\soundCollapse",0.1,1}; soundSelect[] = {"\A3\ui_f\data\sound\RscCombo\soundSelect",0.1,1};
class ComboScrollBar { width = 0; height = 0; scrollSpeed = 0.01; arrowEmpty = "\a3\3DEN\Data\Controls\ctrlDefault\arrowEmpty_ca.paa"; arrowFull = "\a3\3DEN\Data\Controls\ctrlDefault\arrowFull_ca.paa"; border = "\a3\3DEN\Data\Controls\ctrlDefault\border_ca.paa"; thumb = "\a3\3DEN\Data\Controls\ctrlDefault\thumb_ca.paa"; color[] = {1,1,1,1}; }; onCanDestroy = ""; onDestroy = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onLBSelChanged = ""; }; class MAV_ctrlComboToolbar: MAV_ctrlCombo { colorBackground[] = {0.05,0.05,0.05,1}; colorSelectBackground[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; arrowEmpty = "\a3\3DEN\Data\Controls\ctrlCombo\arrowEmptyToolbar_ca.paa"; arrowFull = "\a3\3DEN\Data\Controls\ctrlCombo\arrowEmptyToolbar_ca.paa"; wholeHeight = 12 * 	5 * (pixelH * pixelGrid * 	0.50); };

class MAV_ctrlListbox: MAV_ctrlDefaultText { type = 5; style = 0x00 + 0x10; colorBackground[] = {0,0,0,0.2}; colorSelectBackground[] = {1,0.5,0,0.5}; colorSelectBackground2[] = {1,0.5,0,0.5}; colorShadow[] = {0,0,0,0}; colorDisabled[] = {	1,	1,	1,0.25}; colorText[] = {		1,	1,	1, 1}; colorSelect[] = {1,1,1,1}; colorSelect2[] = {1,1,1,1}; colorTextRight[] = {		1,	1,	1, 1}; colorSelectRight[] = {1,1,1,1}; colorSelect2Right[] = {1,1,1,1}; colorPicture[] = {1,1,1,1}; colorPictureSelected[] = {1,1,1,1}; colorPictureDisabled[] = {1,1,1,0.25}; colorPictureRight[] = {1,1,1,1};
colorPictureRightSelected[] = {1,1,1,1}; colorPictureRightDisabled[] = {1,1,1,0.25}; period = 1; rowHeight = __EVAL([	4.5,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); itemSpacing = 0; maxHistoryDelay = 1; canDrag = 0; soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; class ListScrollBar: ScrollBar{}; onCanDestroy = ""; onDestroy = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onLBSelChanged = ""; onLBDblClick = ""; onLBDrag = ""; onLBDragging = ""; onLBDrop = ""; };

class MAV_ctrlToolbox: MAV_ctrlDefaultText { type = 6; style = 0x02; colorText[] = {1,1,1,1}; colorTextSelect[] = {1,1,1,1}; rows = 1; columns = 1; strings[] = {}; values[] = {}; color[] = {1,0,1,1}; colorSelect[] = {0,0,0,0}; colorTextDisable[] = {0,0,0,0}; colorDisable[] = {0,0,0,0}; colorBackground[] = {1, 1, 1, 0.05}; colorSelectedBg[] = {0.99,0.49,0,1}; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = "";
onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onToolBoxSelChanged = ""; }; class MAV_ctrlToolboxPicture: MAV_ctrlToolbox { style = 0x02 + 0x30; }; class MAV_ctrlToolboxPictureKeepAspect: MAV_ctrlToolbox { style = 0x02 + 0x30 + 0x800; };

class MAV_ctrlCheckboxes: MAV_ctrlDefaultText { type = 7; colorBackground[] = {		0,	0,	0, 0.5}; colorText[] = {1,1,1,1}; colorTextSelect[] = {1,1,1,1}; rows = 1; columns = 1; strings[] = {}; checked_strings[] = {}; color[] = {1,0,1,1}; colorSelect[] = {0,0,0,0}; colorTextDisable[] = {0,0,0,0}; colorDisable[] = {0,0,0,0}; colorSelectedBg[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = ""; onSetFocus = ""; onKillFocus = "";
onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onCheckBoxesSelChanged = ""; }; class MAV_ctrlCheckboxesCheckbox: MAV_ctrlCheckboxes { style = 0x30; strings[] = {"\a3\3DEN\Data\Controls\ctrlCheckbox\textureUnchecked_ca.paa"}; checked_strings[] = {"\a3\3DEN\Data\Controls\ctrlCheckbox\textureChecked_ca.paa"}; colorBackground[] = {0,0,0,0}; colorSelectedBg[] = {0,0,0,0}; };

class MAV_ctrlProgress: MAV_ctrlDefault { type = 8; texture = "#(argb,8,8,3)color(1,1,1,1)";
colorBar[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorFrame[] = {0,0,0,1}; onCanDestroy = ""; onDestroy = ""; };


class MAV_ctrlHTML: MAV_ctrlDefaultText { type = 9; colorBackground[] = {0,0,0,0}; colorText[] = {		1,	1,	1, 1}; colorBold[] = {	1,	1,	1,0.5}; colorLink[] = {		1,	1,	1, 1}; colorLinkActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorPicture[] = {1,1,1,1}; colorPictureBorder[] = {0,0,0,0}; colorPictureLink[] = {1,1,1,1}; colorPictureSelected[] = {1,1,1,1}; prevPage = "\a3\3DEN\Data\Controls\CtrlHTML\prevPage_ca.paa"; nextPage = "\a3\3DEN\Data\Controls\CtrlHTML
extPage_ca.paa"; filename = ""; cycleLinks = 0; cycleAllLinks = 0; class P { font = 			"RobotoCondensedLight";
fontBold = 			"RobotoCondensedBold"; sizeEx = __EVAL([	4.5,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); }; class H1:P { sizeEx = __EVAL([	6.0,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); }; class H2:P { sizeEx = __EVAL([	5.0,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); }; class H3:P { }; class H4:P { }; class H5:P { }; class H6:P { font = 			"RobotoCondensedLight"; fontBold = 			"RobotoCondensedLight"; }; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onHTMLLink = ""; };

class MAV_ctrlActiveText: MAV_ctrlDefaultButton { type = 11; text = ""; color[] = {		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",0.75}; colorActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorDisabled[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = "";
onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onButtonClick = ""; onButtonDown = ""; onButtonUp = ""; }; class MAV_ctrlActivePicture: MAV_ctrlActiveText { style = 0x30; color[] = {		1,	1,	1, 1}; }; class MAV_ctrlActivePictureKeepAspect: MAV_ctrlActiveText { style = 0x30 + 0x800; };

class MAV_ctrlTree: MAV_ctrlDefaultText { type = 12; colorBorder[] = {0,0,0,0}; colorLines[] = {0,0,0,0}; colorBackground[] = {0,0,0,0.2}; colorSelect[] = {1,0.5,0,0.5}; colorSelectBackground[] = {0, 0, 0, 0}; colorMarked[] = {1,0.5,0,0.5}; colorMarkedSelected[] = {1,0.5,0,1}; colorText[] = {		1,	1,	1, 1}; colorSelectText[] = {1,1,1,1}; colorMarkedText[] = {1,1,1,1}; colorSearch[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorPicture[] = {1, 1, 1, 1}; colorPictureSelected[] = {1, 1, 1, 1}; colorPictureDisabled[] = {1, 1, 1, 0.25}; colorPictureRight[] = {1, 1, 1, 1}; colorPictureRightSelected[] = {1, 1, 1, 1}; colorPictureRightDisabled[] = {1, 1, 1, 0.25}; multiselectEnabled = 0; expandOnDoubleclick = 1;
hiddenTexture = "\a3\3DEN\Data\Controls\ctrlTree\hiddenTexture_ca.paa"; expandedTexture = "\a3\3DEN\Data\Controls\ctrlTree\expandedTexture_ca.paa"; maxHistoryDelay = 1; disableKeyboardSearch = 0; class ScrollBar: ScrollBar { scrollSpeed = 0.05; }; colorDisabled[] = {0,0,0,0}; colorArrow[] = {0,0,0,0}; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onTreeSelChanged = ""; onTreeLButtonDown = ""; onTreeDblClick = ""; onTreeExpanded = ""; onTreeCollapsed = ""; onTreeMouseExit = ""; };

class MAV_ctrlStructuredText: MAV_ctrlDefaultText { type = 13; colorBackground[] = {0,0,0,0}; size = __EVAL([	5,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); text = ""; class Attributes { align = "left";
color = __EVAL([1,1,1] call _fnc_colorRGBAtoHEX); colorLink = ; size = 1; font = 			"RobotoCondensedLight"; }; onCanDestroy = ""; onDestroy = ""; };

class MAV_ctrlControlsGroup: MAV_ctrlDefault { type = 15; style = 0x10; x = 0; y = 0; w = 1; h = 1; class VScrollBar: ScrollBar { width = 2 * (pixelW * pixelGrid * 	0.50); height = 0; autoScrollEnabled = 0; autoScrollDelay = 1; autoScrollRewind = 1; autoScrollSpeed = 1; }; class HScrollBar: ScrollBar { width = 0; height = 2 * (pixelH * pixelGrid * 	0.50); }; onCanDestroy = ""; onDestroy = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = "";
onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; }; class MAV_ctrlControlsGroupNoScrollbars: MAV_ctrlControlsGroup { class VScrollbar: VScrollbar {width = 0;}; class HScrollbar: HScrollbar {height = 0;}; }; class MAV_ctrlControlsGroupNoHScrollbars: MAV_ctrlControlsGroup { class HScrollbar: HScrollbar {height = 0;}; }; class MAV_ctrlControlsGroupNoVScrollbars: MAV_ctrlControlsGroup { class VScrollbar: VScrollbar {width = 0;}; };

class MAV_ctrlShortcutButton: MAV_ctrlDefaultButton { type = 16; style = 0xC0; colorBackground[] = {0,0,0,1}; colorBackground2[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorBackgroundFocused[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorBackgroundActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; text = ""; size = __EVAL([	5,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); shadow = 0; color[] = {		1,	1,	1, 1}; color2[] = {		1,	1,	1, 1}; colorFocused[] = {		1,	1,	1, 1}; colorDisabled[] = {	1,	1,	1,0.25}; animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)"; animTextureOver = "#(argb,8,8,3)color(1,1,1,1)"; animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)"; animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)"; animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)"; animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)"; period = 1; periodFocus = 1; periodOver = 0.5; shortcuts[] = {0x00050000 + 0, 0x1C    , 0x39, 0x9C    }; textureNoShortcut = "#(argb,8,8,3)color(1,1,1,1)"; class Attributes { align = "center"; color = "#ffffff"; font = 			"PuristaLight"; shadow = 0; }; class HitZone { left = 0;
top = 0; right = 0; bottom = 0; }; class TextPos { left = 0; top = 0; right = 0; bottom = 0; }; class ShortcutPos { left = 0; top = 0; w = 0; h = 0; }; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onButtonClick = ""; onButtonDown = ""; onButtonUp = ""; }; class MAV_ctrlShortcutButtonOK: MAV_ctrlShortcutButton { default = 1; idc = 1; text = $STR_DISP_OK; }; class MAV_ctrlShortcutButtonCancel: MAV_ctrlShortcutButton { idc = 2; text = $STR_DISP_CANCEL; }; class MAV_ctrlShortcutButtonSteam: MAV_ctrlShortcutButton { colorBackground[] = {0.0313725490196078 , 0.7215686274509804, 0.9176470588235294, 1.0}; textureNoShortcut = "\a3\3DEN\Data\Controls\CtrlShortcutButton\steam_ca.paa"; class TextPos { left = 1.5 * 	5 * (pixelW * pixelGrid * 	0.50); top = 0; right = 0; bottom = 0; }; class ShortcutPos { left = 0; top = 0; w = 	5 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); }; };

class MAV_ctrlXListbox: MAV_ctrlDefaultText { type = 42; style = 0x400 + 0x02 + 0x10; color[] = {1,1,1,1}; colorActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorText[] = {		1,	1,	1, 1}; colorSelect[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorDisabled[] = {	1,	1,	1,0.25}; colorPicture[] = {1,1,1,1}; cycle = 1; arrowEmpty = "\a3\3DEN\Data\Controls\CtrlXSlider\arrowEmpty_ca.paa"; arrowFull = "\a3\3DEN\Data\Controls\CtrlXSlider\arrowFull_ca.paa";
border = "\a3\3DEN\Data\Controls\CtrlXSlider\border_ca.paa"; soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; onCanDestroy = ""; onDestroy = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onLBSelChanged = ""; onLBDblClick = ""; };

class MAV_ctrlXSliderV: MAV_ctrlDefault { type = 43; style = 0; color[] = {1,1,1,0.6}; colorActive[] = {1,1,1,1}; colorDisabled[] = {1,1,1,0.25}; sliderRange[] = {0,1}; sliderPosition = 1; lineSize = 0.1; arrowEmpty = "\a3\3DEN\Data\Controls\CtrlXSlider\arrowEmpty_ca.paa"; arrowFull = "\a3\3DEN\Data\Controls\CtrlXSlider\arrowFull_ca.paa"; border = "\a3\3DEN\Data\Controls\CtrlXSlider\border_ca.paa"; thumb = "\a3\3DEN\Data\Controls\CtrlXSlider\thumb_ca.paa"; class Title { idc = -1; colorBase[] = {1,1,1,1};
colorActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; }; class Value { idc = -1; format = "%.f"; type = SPTPlain; colorBase[] = {1,1,1,1}; colorActive[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; }; onCanDestroy = ""; onDestroy = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onSliderPosChanged = ""; }; class MAV_ctrlXSliderH: MAV_ctrlXSliderV { style = 0x400; };

class MAV_ctrlMenu: MAV_ctrlDefaultText { type = 46; font = 			"RobotoCondensedLight"; colorBorder[] = {0,0,0,0}; colorBackground[] = {0,0,0,1}; colorText[] = {		1,	1,	1, 1}; colorSelect[] = {0,0,0,1}; colorSelectBackground[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorDisabled[] = {	1,	1,	1,0.25}; colorPicture[] = {1,1,1,1}; colorPictureSelect[] = {0,0,0,1}; colorPictureDisabled[] = {1,1,1,0.5};
arrow = "\a3\3DEN\Data\Controls\ctrlMenu\arrow_ca.paa"; rowHeight = 0; itemSpacingW = 0.01; itemSpacingH = 0.01; pictureCheckboxEnabled = "\a3\3DEN\Data\Controls\CtrlMenu\pictureCheckboxEnabled_ca.paa"; pictureCheckboxDisabled= "#(argb,8,8,3)color(0,0,0,0)"; pictureRadioEnabled = "\a3\3DEN\Data\Controls\CtrlMenu\pictureRadioEnabled_ca.paa"; pictureRadioDisabled= "#(argb,8,8,3)color(0,0,0,0)"; };

class MAV_ctrlMenuStrip: MAV_ctrlMenu { type = 47; colorStripBackground[] = {0,0,0,1}; colorStripText[] = {		1,	1,	1, 1};
colorStripSelect[] = {0,0,0,1}; colorStripSelectBackground[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorStripDisabled[] = {	1,	1,	1,0.25}; };

class MAV_ctrlMap: MAV_ctrlDefault { type = 101; style = 0x30; x = safezoneXAbs; y = safezoneY; w = safezoneWAbs; h = safezoneH; sizeEx = 0.05; font = 			"RobotoCondensedLight"; colorText[] = {0,0,0,1}; moveOnEdges = 1; ptsPerSquareSea = 5; ptsPerSquareTxt = 20; ptsPerSquareCLn = 10; ptsPerSquareExp = 10; ptsPerSquareCost = 10; ptsPerSquareFor = 9; ptsPerSquareForEdge = 9; ptsPerSquareRoad = 6; ptsPerSquareObj = 9; scaleMin = 0.0001; scaleMax = 1.0; scaleDefault = 0.16; maxSatelliteAlpha = 0.85; alphaFadeStartScale = 2; alphaFadeEndScale = 2; text = "#(argb,8,8,3)color(1,1,1,1)"; colorBackground[] = {0.969, 0.957, 0.949, 1.000}; colorOutside[] = {0.000, 0.000, 0.000, 1.000}; colorSea[] = {0.467, 0.631, 0.851, 0.500}; colorForest[] = {0.624, 0.780, 0.388, 0.500}; colorForestBorder[] = {0.000, 0.000, 0.000, 0.000}; colorRocks[] = {0.000, 0.000, 0.000, 0.300}; colorRocksBorder[] = {0.000, 0.000, 0.000, 0.000}; colorLevels[] = {0.286, 0.177, 0.094, 0.500}; colorMainCountlines[] = {0.572, 0.354, 0.188, 0.500}; colorCountlines[] = {0.572, 0.354, 0.188, 0.250}; colorMainCountlinesWater[] = {0.491, 0.577, 0.702, 0.600}; colorCountlinesWater[] = {0.491, 0.577, 0.702, 0.300}; colorPowerLines[] = {0.100, 0.100, 0.100, 1.000}; colorRailWay[] = {0.800, 0.200, 0.000, 1.000}; colorNames[] = {0.100, 0.100, 0.100, 0.900}; colorInactive[] = {1.000, 1.000, 1.000, 0.500}; colorTracks[] = {0.840, 0.760, 0.650, 0.150}; colorTracksFill[] = {0.840, 0.760, 0.650, 1.000}; colorRoads[] = {0.700, 0.700, 0.700, 1.000}; colorRoadsFill[] = {1.000, 1.000, 1.000, 1.000}; colorMainRoads[] = {0.900, 0.500, 0.300, 1.000}; colorMainRoadsFill[] = {1.000, 0.600, 0.400, 1.000}; colorTrails[] = {0.840, 0.760, 0.650, 0.150}; colorTrailsFill[] = {0.840, 0.760, 0.650, 0.650}; colorGrid[] = {0.100, 0.100, 0.100, 0.600}; colorGridMap[] = {0.100, 0.100, 0.100, 0.600}; fontLabel = 			"RobotoCondensedLight"; sizeExLabel = 0.05; fontGrid = 			"TahomaB"; sizeExGrid = 0.02; fontUnits = 			"TahomaB"; sizeExUnits = 0.05; fontNames = 			"EtelkaNarrowMediumPro"; sizeExNames = 0.05; fontInfo = 			"RobotoCondensedLight"; sizeExInfo = 0.05; fontLevel = 			"TahomaB"; sizeExLevel = 0.02; showCountourInterval = 0; idcMarkerColor = -1; idcMarkerIcon = -1; textureComboBoxColor = "#(argb,8,8,3)color(1,1,1,1)"; showMarkers = true; class LineMarker { lineWidthThin = 0.008; lineWidthThick = 0.014; lineDistanceMin = 0.00003; lineLengthMin = 5; }; class Legend { x = 0.5; y = 0.5; w = 0.4; h = 0.1; color[] = {0,0,0,1}; colorBackground[] = {1,1,1,0.5}; font = 			"RobotoCondensedLight"; sizeEX = __EVAL([	4.0,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); }; class Task { icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa"; color[] = {1,1,1,1}; iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa"; colorCreated[] = {1,1,0,1}; iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa"; colorCanceled[] = {0.7,0.7,0.7,1}; iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa"; colorDone[] = {0.7,1,0.3,1}; iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa"; colorFailed[] = {1,0.3,0.2,1}; size = 27; importance = 1; coefMin = 1; coefMax = 1; }; class ActiveMarker { color[] = {0,0,0,1}; size = 2; }; class Waypoint { coefMax = 1; coefMin = 1; color[] = {0,0,0,1}; icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa"; importance = 1; size = 24; }; class WaypointCompleted: Waypoint { icon = "\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa"; }; class CustomMark: Waypoint { icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa"; }; class Command: Waypoint { color[] = {1,1,1,1}; icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa"; size = 18; }; class Bush: Waypoint { coefMax = 4; coefMin = 0.25; color[] = {0.45,0.64,0.33,0.4}; icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa"; importance = 0.007; size = 7; }; class SmallTree: Bush { icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa"; importance = 0.36; size = 12; }; class Tree: SmallTree { icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa"; importance = 0.72; }; class Rock: SmallTree { color[] = {0.1,0.1,0.1,0.8}; icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa"; importance = 0.3; }; class BusStop: Bush { color[] = {0.45,0.64,0.33,0.4}; icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
}; class FuelStation: Waypoint { coefMax = 1; coefMin = 0.85; color[] = {1,1,1,1}; icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa"; }; class Hospital: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa"; }; class Church: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa"; }; class Lighthouse: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa"; }; class Power: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa"; }; class PowerSolar: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa"; }; class PowerWave: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa"; }; class PowerWind: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa"; }; class Quay: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa"; }; class Transmitter: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa"; }; class Watertower: FuelStation { icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa"; }; class Cross: Waypoint { color[] = {0,0,0,1}; icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa"; }; class Chapel: Cross { icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa"; }; class Shipwreck: Cross { icon = "\A3\ui_f\data\map\mapcontrol\Shipwreck_CA.paa"; }; class Bunker: Waypoint { coefMax = 4; coefMin = 0.25; color[] = {0,0,0,1}; icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa"; importance = 1.05; size = 14; }; class Fortress: Bunker { icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa"; importance = 1.6; size = 16; }; class Fountain: Bunker { icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa"; importance = 0.6; size = 11; }; class Ruin: Waypoint { coefMax = 4; coefMin = 1; icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa"; importance = 0.96; size = 16; }; class Stack: Waypoint { coefMax = 4; coefMin = 0.9; icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa"; importance = 1.6; size = 20; }; class Tourism: Waypoint { coefMax = 4; coefMin = 0.7; icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa"; importance = 2.8; size = 16; }; class ViewTower: Waypoint { coefMax = 4; coefMin = 0.5; icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa"; importance = 2; size = 16; }; onCanDestroy = ""; onDestroy = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onDraw = ""; }; class MAV_ctrlMapEmpty: MAV_ctrlMap { ptsPerSquareSea = 1000; ptsPerSquareTxt = 1000; ptsPerSquareCLn = 1000; ptsPerSquareExp = 1000; ptsPerSquareCost = 1000; ptsPerSquareFor = 1000; ptsPerSquareForEdge = 1000; ptsPerSquareRoad = 1000; ptsPerSquareObj = 1000; alphaFadeStartScale = 0; alphaFadeEndScale = 0; colorBackground[] = {1,1,1,1}; colorOutside[] = {1,1,1,1}; colorSea[] = {0,0,0,0}; colorForest[] = {0,0,0,0}; colorForestBorder[] = {0,0,0,0}; colorRocks[] = {0,0,0,0}; colorRocksBorder[] = {0,0,0,0}; colorLevels[] = {0,0,0,0}; colorMainCountlines[] = {0,0,0,0}; colorCountlines[] = {0,0,0,0}; colorMainCountlinesWater[] = {0,0,0,0}; colorCountlinesWater[] = {0,0,0,0}; colorPowerLines[] = {0,0,0,0}; colorRailWay[] = {0,0,0,0}; colorNames[] = {0,0,0,0}; colorInactive[] = {0,0,0,0}; colorGrid[] = {0,0,0,0}; colorGridMap[] = {0,0,0,0}; class Task: Task { icon = "#(argb,8,8,3)color(0,0,0,0)"; iconCreated = "#(argb,8,8,3)color(0,0,0,0)"; iconCanceled = "#(argb,8,8,3)color(0,0,0,0)"; iconDone = "#(argb,8,8,3)color(0,0,0,0)"; iconFailed = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; colorCreated[] = {0,0,0,0}; colorCanceled[] = {0,0,0,0}; colorDone[] = {0,0,0,0}; colorFailed[] = {0,0,0,0}; size = 0; }; 

class Waypoint: Waypoint { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class WaypointCompleted: WaypointCompleted { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class CustomMark: CustomMark { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Command: Command { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Bush: Bush { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Rock: Rock { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class SmallTree: SmallTree { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Tree: Tree { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class busstop: busstop { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class fuelstation: fuelstation { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class hospital: hospital { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class church: church { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class lighthouse: lighthouse { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class power: power { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class powersolar: powersolar { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class powerwave: powerwave { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class powerwind: powerwind { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class quay: quay { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class shipwreck: shipwreck { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class transmitter: transmitter { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class watertower: watertower { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Bunker: Bunker { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Cross: Cross { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Fortress: Fortress { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Fountain: Fountain { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Chapel: Chapel { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Ruin: Ruin { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Stack: Stack { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class Tourism: Tourism { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; class ViewTower: ViewTower { icon = "#(argb,8,8,3)color(0,0,0,0)"; color[] = {0,0,0,0}; size = 0; }; };

class MAV_ctrlMapMain: MAV_ctrlMap { };


class MAV_ctrlListNBox: MAV_ctrlDefaultText { type = 102; style = 0x00 + 0x10; colorSelectBackground[] = {0.2, 0.2, 0.2, 0.75}; colorSelectBackground2[] = {0.2, 0.2, 0.2, 0.75}; colorText[] = {		1,	1,	1, 1}; colorDisabled[] = {	1,	1,	1,0.25}; colorSelect[] = {1,1,1,1}; colorSelect2[] = {1,1,1,1}; colorShadow[] = {0,0,0,0.5}; colorPicture[] = {1,1,1,1}; colorPictureSelected[] = {1,1,1,1}; colorPictureDisabled[] = {1,1,1,0.25}; columns[] = {0}; drawSideArrows = 0;
idcLeft = -1; idcRight = -1; period = 1; disableOverflow = 0; rowHeight = __EVAL([	4.5,1.8,[6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,34,35,37,46]] call _fnc_sizeEx); maxHistoryDelay = 1; soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1}; class ListScrollBar: ScrollBar{}; onCanDestroy = ""; onDestroy = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onLBSelChanged = ""; onLBDblClick = ""; };

class MAV_ctrlCheckbox: MAV_ctrlDefault { type = 77; checked = 0; color[] = {1,1,1,0.7}; colorFocused[] = {1,1,1,1}; colorHover[] = {1,1,1,1}; colorPressed[] = {1,1,1,1}; colorDisabled[] = {1,1,1,0.25}; colorBackground[] = {0,0,0,0}; colorBackgroundFocused[] = {0,0,0,0}; colorBackgroundHover[] = {0,0,0,0}; colorBackgroundPressed[] = {0,0,0,0}; colorBackgroundDisabled[] = {0,0,0,0}; textureChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureChecked_ca.paa"; textureUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureUnchecked_ca.paa"; textureFocusedChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureChecked_ca.paa"; textureFocusedUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureUnchecked_ca.paa"; textureHoverChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureChecked_ca.paa"; textureHoverUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureUnchecked_ca.paa"; texturePressedChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureChecked_ca.paa"; texturePressedUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureUnchecked_ca.paa";
textureDisabledChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureChecked_ca.paa"; textureDisabledUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\textureUnchecked_ca.paa"; soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1}; soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1}; soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1}; soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1}; onCanDestroy = ""; onDestroy = ""; onMouseEnter = ""; onMouseExit = ""; onSetFocus = ""; onKillFocus = ""; onKeyDown = ""; onKeyUp = ""; onMouseButtonDown = ""; onMouseButtonUp = ""; onMouseButtonClick = ""; onMouseButtonDblClick = ""; onMouseZChanged = ""; onMouseMoving = ""; onMouseHolding = ""; onCheckedChanged = ""; }; class MAV_ctrlCheckboxToolbar: MAV_ctrlCheckbox { color[] = {1,1,1,1}; colorBackgroundHover[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; colorBackgroundPressed[] = {			"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",	1}; }; class MAV_ctrlCheckboxBaseline: MAV_ctrlCheckbox { 	textureChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureChecked_ca.paa";	textureUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureUnchecked_ca.paa";	textureFocusedChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureChecked_ca.paa";	textureFocusedUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureUnchecked_ca.paa";	textureHoverChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureChecked_ca.paa";	textureHoverUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureUnchecked_ca.paa";	texturePressedChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureChecked_ca.paa";	texturePressedUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureUnchecked_ca.paa";	textureDisabledChecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureChecked_ca.paa";	textureDisabledUnchecked = "\a3\3DEN\Data\Controls\ctrlCheckbox\baseline_textureUnchecked_ca.paa"; };


class maverick_navigation_cfg { class bindings { keyCode = 49; reqShift = 0; reqAlt = 0; reqCtrl = 1; }; option_list[] = { {"Aktuelle Route", "maverick
avigation\data\currentroute.paa", "!isNil 'mav_gps_v_markers'", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationCurrent';"}, {"Neue Route", "maverick
avigation\data
ewroute.paa", "isNil 'mav_gps_v_markers'", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationNew';"}, {"Gespeicherte Routen", "maverick
avigation\data\savedroutes.paa", "true", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationSaved';"}, {"GPS Einstellungen", "maverick
avigation\data\mapsettings.paa", "true", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationSettings';"}, {"GPS Informationen", "maverick
avigation\data\help.paa", "false", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationHelp';"} }; class presets { class Altis { presetLocations[] = { }; }; class Malden { presetLocations[] = { }; }; class Stratis { presetLocations[] = { }; }; class Tanoa { presetLocations[] = { }; }; }; class localization { msgMainInfoNoTaxiCalled = "<t size='2'>Du hast keinen aktiven Taxi Auftrag</t><br/><t>Drücke auf 'Taxi rufen' um einen Taxiauftrag für alle verfügbaren Fahrer zu erstellen!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>"; msgMainInfoNoTaxiYet = "<t size='2'>Ein Taxi wurde gerufen!</t><br/><t>Bisher hat kein Taxifahrer den Auftrag angenommen. Du wirst benachrichtigt, sobald der Auftrag angenommen wurde!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>"; msgTaxiCalled = "Ein Taxiauftrag wurde erstellt!"; msgTaxiCancelled = "Dein aktueller Taxiauftrag wurde abgebrochen!"; msgTaxiFareCancelled = "Du hast die Bezahlung abgelehnt."; msgTaxiCancelConfirm = "Ein Taxifahrer hat ihren Auftrag bereits angenommen und ist auf dem Weg. Willst du wirklich den Auftrag abbrechen?"; msgTaxiCancelHeader = "Taxiauftrag abbrechen"; msgTaxiCancelButtonConfirm = "Ja"; msgTaxiCancelButtonCancel = "Nein"; msgTaxiCancelDriverConfirm = "Willst du wirklich den Tarif abbrechen? Wenn der Preis bereits transferiert wurde, wird dieser an den Kunden zurücküberwiesen."; msgTaxiMeterInfoText = "<t>Distanz</t><t align='right' font='RobotoCondensedBold'>%1</t><br/><t>Zeit vergangen</t><t align='right' font='RobotoCondensedBold'>%2</t><br/><t>Preis (%3$/km)</t><t align='right' font='RobotoCondensedBold'>%4</t>"; msgTaxiMeterStatusTextActive = "<t align='right' font='RobotoCondensedBold'>Aktiv</t>"; msgTaxiMeterStatusTextInactive = "<t align='right' font='RobotoCondensedBold'>Inaktiv</t>"; masTaxiInfoPleaseWait = "<t size='2'>%1 ist auf dem Weg zu dir!</t><br/>Bitte warte an deiner aktuellen Position. Dein Taxi ist im Moment %2 weg.</t>"; msgTaxiFareCancelledAsCustomer = "Dein Taxifahrer hat den Tarif abgebrochen."; masTaxiFareCancelledAsDriver = "Dein Kunde hat den Tarif abgebrochen."; msgTaxiCallAccepted = "Ein Taxifahrer ist auf dem Weg."; msgTaxiDriverNotAvailable = "Du erfüllst nicht die Vorraussetzungen für einen Taxifahrer!"; msgTaxiDestinationUpdated = "Das Reiseziel wurde aktualisiert!"; msgTaxiNoRoadNearFound = "Es wurde keine Straße an der Position gefunden."; msgTaxiCannotCallWhileDriver = "Du kannst kein Taxi rufen, während du als Taxifahrer arbeitest!"; msgTaxiCannotDriveWhileCalling = "Du kannst kein Taxifahrer sein, während du auf ein Taxi wartest!"; msgTaxiSpamClickPrevention = "Du kannst die Aktion nicht so schnell ausführen!"; msgTaxiAlreadyInFare = "Du hast bereits eine Überweisung angenommen!";
msgCallTaxi = "Taxi rufen"; msgBaseNotAffordable = "Du hast nicht genug Geld, um ein Taxi zu rufen!"; msgPaidCustomer = "Du hast dein Ziel erreicht.<br/>Verdientes Geld: %1$"; msgNotFullyPaidCustomer = "Du hast dein Ziel erreicht. Da du keine %1$ hattest, wurden dir %2$ (exklusive Steuern) abgezogen!"; msgPaidDriver = "Du hast dein Ziel erreicht.<br/>Dein Kunde hat dir <t color='#43a047'>%1$</t> bezahlt."; msgNotFullyPaidDriver = "Du hast dein Ziel erreicht. Dein Kunde konnte nicht den ganzen Betrag von über <t color='#43a047'>%1$</t> bezahlen, deshalb wurden dir <t color='#43a047'>%2$</t> (exklusive Steuern) überwiesen."; msgPayCustomer = "Sie haben ihr Ziel erreicht.<br/>Der Gesamtbezahlung liegt bei %1$."; msgPayDriver = "Sie haben ihr Ziel erreicht.<br/>Dein Kunde wurde aufgefordert %1$ zu bezahlen."; msgTotalPayment = "Gesamte Bezahlung: %1$"; msgTaximeterPositionSaved = "Taximeter Position gespeichert"; msgTaximeterPositionReset = "Taximeter Position zurückgesetzt"; msgTaxiPressSpaceSaveSettings = "Drücke [Leertaste] zum speichern"; msgNowOnDuty = "Sie sind nun im Dienst und erhalten eine Nachricht bei einkommenden Aufträgen!"; msgNowOffDuty = "Sie sind nun außer Dienst"; msgTaxiMenuActiveCalls = "Zeige alle Aufträge"; msgTaxiNewCallCreated = "Ein neuer Auftrag wurde erstellt"; msgTaxiBillingPayment = "Gesamtbezahlung durch gefahrene Strecke"; msgTaxiBillingDriverMissingP = "Der Kunde kann sich den Betrag nicht leisten"; msgTaxiBillingBasePrice = "Basispreis"; msgTaxiBillingCustomerMissingP = "Betrag nicht bezahlbar"; msgTaxiCurrentFareInformation = "Aktueller Taxiauftrag"; msgTaxiBillingCancelled = "Tarif storniert"; msgTaskDriverPickupDescription = "Hole deinen Passagier an der Position ab"; msgTaskDriverPickupDescriptionS = "Abholen"; msgTaskDriverPickupHUD = "Abholen"; msgTaskCustomerDriverDescription = "Steige in das Fahrzeug deines Taxifahrers ein"; msgTaskCustomerDriverDescriptionS = "Einsteigen"; msgTaskCustomerDriverHUD = "Einsteigen"; msgTaskDriverGoToDescription = "Kundenziel"; msgTaskDriverGoToDescriptionS = "Ziel"; msgTaskDriverGoToDriverHUD = "Bewege dich hier her"; 


























}; class AlgorithmParameters { class Chernarus_Summer { greedy = 3.2; }; class australia { greedy = 3.2; }; class Malden { radius = 45; }; class Sara { radius = 66; }; }; 
class soundInstructions { 
class female_dede_1 { displayName = "weiblich"; sound100mLeft = "gpsvoice_female1_sound100mLeft"; soundNowLeft = "gpsvoice_female1_soundNowLeft"; sound100mRight = "gpsvoice_female1_sound100mRight"; soundNowRight = "gpsvoice_female1_soundNowRight";
soundOnDestinationRoad = "gpsvoice_female1_soundOnDestinationRoad"; soundDestinationReached = "gpsvoice_female1_soundDestinationReached"; soundFollowRoad = "gpsvoice_female1_soundFollowRoad"; };


class male_dede_1 { displayName = "männlich"; sound100mLeft = "gpsvoice_male1_sound100mLeft"; soundNowLeft = "gpsvoice_male1_soundNowLeft"; sound100mRight = "gpsvoice_male1_sound100mRight"; soundNowRight = "gpsvoice_male1_soundNowRight";
soundOnDestinationRoad = "gpsvoice_male1_soundOnDestinationRoad"; soundDestinationReached = "gpsvoice_male1_soundDestinationReached"; soundFollowRoad = "gpsvoice_male1_soundFollowRoad"; };

};

}; 













































































class MAV_guiNavigation { idd = 52001; onLoad = "['navigation\gui', 'MAV_guiNavigation', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; class Controls { 






class Background: MAV_ctrlStaticBackground { x = 	((getResolution select 2) * 0.5 * pixelW) - (192 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (52 / 2) * (pixelH * pixelGrid * 	0.50); w = 192 * (pixelW * pixelGrid * 	0.50); h = 52 * (pixelH * pixelGrid * 	0.50); }; class Header: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - (192 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (52 / 2) * (pixelH * pixelGrid * 	0.50); w = 192 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogMainMenu; }; class ControlsGroup: MAV_ctrlControlsGroupNoVScrollbars { idc = 0x01; x = 	((getResolution select 2) * 0.5 * pixelW) - ((192 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((52 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = (192 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (52 - ((	5 + 1) + (2 * 2))) * (pixelH * pixelGrid * 	0.50); class controls {}; }; class Footer: MAV_ctrlStaticFooter { idc = 0x03; x = 	((getResolution select 2) * 0.5 * pixelW) - (192 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((52 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = 192 * (pixelW * pixelGrid * 	0.50); h = (	5 + 2) * (pixelH * pixelGrid * 	0.50); show = 0; }; class ButtonClose: MAV_ctrlButtonPicture { idc = 0x02; x = 	((getResolution select 2) * 0.5 * pixelW) - ((192 / 2) - (192 - 	5)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (52 / 2) * (pixelH * pixelGrid * 	0.50); w = 	5 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); colorBackground[] = {0,0,0,0}; text = "\a3\3DEN\Data\Displays\Display3DEN\search_end_ca.paa"; offsetPressedX = 0; offsetPressedY = 0; tooltip = "Schließen"; }; }; }; class MAV_guiNavigationCurrent { idd = 52002; onLoad = "['navigation\gui', 'MAV_guiNavigationCurrent', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; 



class controls { class Background: MAV_ctrlStaticBackground { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (70 / 2) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = 70 * (pixelH * pixelGrid * 	0.50); }; class Header: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (70 / 2) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogCurrentRoute; }; class text: MAV_ctrlStructuredText { idc = 0x01; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = (110 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (70 - ((	5 + 2) + (2 * 5))) * (pixelH * pixelGrid * 	0.50); }; class Footer: MAV_ctrlStaticFooter { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = (	5 + 2) * (pixelH * pixelGrid * 	0.50); }; class ActionButton: MAV_ctrlButton { idc = 0x02; x = 	((getResolution select 2) * 0.5 * pixelW) + ((110 * 1/2) - ((110 * 1/3) + 1)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 1/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogResetRoute; show = 0; }; class RecalculateButton: MAV_ctrlButton { idc = 0x04; x = 	((getResolution select 2) * 0.5 * pixelW) - (110 * 1/3) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 1/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogRecalculate; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x03; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 * 1/2) - 1) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 1/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = "Schließen"; }; }; }; class MAV_guiNavigationNew { idd = 52003; onLoad = "['navigation\gui', 'MAV_guiNavigationNew', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; 



class controls { class Background: MAV_ctrlStaticBackground { x = 	((getResolution select 2) * 0.5 * pixelW) - (150 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (90 / 2) * (pixelH * pixelGrid * 	0.50); w = 150 * (pixelW * pixelGrid * 	0.50); h = 90 * (pixelH * pixelGrid * 	0.50); }; class Header: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - (150 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (90 / 2) * (pixelH * pixelGrid * 	0.50); w = 150 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogNewRoute; }; class Footer: MAV_ctrlStaticFooter { x = 	((getResolution select 2) * 0.5 * pixelW) - (150 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((90 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = 150 * (pixelW * pixelGrid * 	0.50); h = (	5 + 2) * (pixelH * pixelGrid * 	0.50); }; class ActionButton: MAV_ctrlButton { idc = 0x01; x = 	((getResolution select 2) * 0.5 * pixelW) + ((150 * 1/2) - ((150 * 1/3) + 1)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((90 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (150 * 1/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogCalcRoute; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x02; x = 	((getResolution select 2) * 0.5 * pixelW) - ((150 * 1/2) - 1) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((90 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (150 * 1/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogBack; }; class Tabs: MAV_ctrlToolbox { idc = 0x03; x = 	((getResolution select 2) * 0.5 * pixelW) - (150 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - 	5) * (pixelH * pixelGrid * 	0.50); w = 150 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); columns = 3; strings[] = {dialogStart, dialogCheckpoint, "Ziel"}; }; class text: MAV_ctrlMap { idc = 0x04; x = 	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (	5 * 2 + 2)) * (pixelH * pixelGrid * 	0.50); w = (6/10 * 150) * (pixelW * pixelGrid * 	0.50); h = (90 - ((	5 * 2) + (2 * 5.5))) * (pixelH * pixelGrid * 	0.50); }; class title1: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (2 * 2 + (6/10 * 150))) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (	5 * 2 + 2)) * (pixelH * pixelGrid * 	0.50); w = ((4/10 * 150) - 3 * 2) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogCommonDest; }; class locations: MAV_ctrlListbox { idc = 0x05; x = 	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (2 * 2 + (6/10 * 150))) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (	5 * 3 + 2 + 1.5)) * (pixelH * pixelGrid * 	0.50); w = ((4/10 * 150) - 3 * 2) * (pixelW * pixelGrid * 	0.50); h = ((90 - ((	5 * 2) + (2 * 5.5))) / 2.5) * (pixelH * pixelGrid * 	0.50); }; class title2: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (2 * 2 + (6/10 * 150))) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (	5 * 2 + (2 * 4) + ((90 - ((	5 * 2) + (2 * 5.5))) / 2.5) + 2)) * (pixelH * pixelGrid * 	0.50); w = ((4/10 * 150) - 3 * 2) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogSavedRouts; }; class savedroutes: MAV_ctrlListbox { idc = 0x06; x = 	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (2 * 2 + (6/10 * 150))) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (	5 * 3 + (2 * 4) + ((90 - ((	5 * 2) + (2 * 5.5))) / 2.5) + 3.5)) * (pixelH * pixelGrid * 	0.50); w = ((4/10 * 150) - 3 * 2) * (pixelW * pixelGrid * 	0.50); h = ((90 - ((	5 * 2) + (2 * 5.5))) / 3.5) * (pixelH * pixelGrid * 	0.50); }; }; }; class MAV_guiNavigationSettings { idd = 52004; onLoad = "['navigation\gui', 'MAV_guiNavigationSettings', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; 



class controls { class Background: MAV_ctrlStaticBackground { x = 	((getResolution select 2) * 0.5 * pixelW) - (90 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (60 / 2) * (pixelH * pixelGrid * 	0.50); w = 90 * (pixelW * pixelGrid * 	0.50); h = 60 * (pixelH * pixelGrid * 	0.50); }; class Header: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - (90 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (60 / 2) * (pixelH * pixelGrid * 	0.50); w = 90 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = "Einstellungen"; }; class Footer: MAV_ctrlStaticFooter { x = 	((getResolution select 2) * 0.5 * pixelW) - (90 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((60 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = 90 * (pixelW * pixelGrid * 	0.50); h = (	5 + 2) * (pixelH * pixelGrid * 	0.50); }; class ActionButton: MAV_ctrlButton { idc = 0x01; x = 	((getResolution select 2) * 0.5 * pixelW) + ((90 * 1/2) - ((90 * 1/3) + 1)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((60 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (90 * 1/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogSave; }; class CloseButton: MAV_ctrlButton { idc = 0x02; x = 	((getResolution select 2) * 0.5 * pixelW) - ((90 * 1/2) - 1) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((60 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (90 * 1/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogBack; }; class distance: MAV_ctrlControlsGroupNoScrollbars { x = 	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((60 / 2) - (	5 + 0.2) - 1) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); class controls { class title: MAV_ctrlStaticTitle { x = 0; y = 0; w = (4/10 * 90) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogUnitSpeed; }; class list: MAV_ctrlCombo { idc = 0x03; x = (2 + 1.5 + (4/10 * (90 - (2 * 2)))) * (pixelW * pixelGrid * 	0.50); y = 0; w = (6/10 * (90 - (2 * 5))) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); }; }; }; class travel: MAV_ctrlControlsGroupNoScrollbars { x = 	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((60 / 2) - (	5 * 2 + (0.2 * 2)) - 1) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); class controls { class title: MAV_ctrlStaticTitle { x = 0; y = 0; w = (4/10 * 90) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogPreference; }; class list: MAV_ctrlCombo { idc = 0x04; x = (2 + 1.5 + (4/10 * (90 - (2 * 2)))) * (pixelW * pixelGrid * 	0.50); y = 0; w = (6/10 * (90 - (2 * 5))) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); }; }; }; class voicesetting: MAV_ctrlControlsGroupNoScrollbars { x = 	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((60 / 2) - (	5 * 3 + (0.2 * 4)) - 1) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); class controls { class title: MAV_ctrlStaticTitle { x = 0; y = 0; w = (4/10 * 90) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogVoiceSetting; }; class list: MAV_ctrlCombo { idc = 0x11; x = (2 + 1.5 + (4/10 * (90 - (2 * 2)))) * (pixelW * pixelGrid * 	0.50); y = 0; w = (6/10 * (90 - (2 * 5))) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); }; }; }; class gui_position: MAV_ctrlControlsGroupNoScrollbars { x = 	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((60 / 2) - (	5 * 3 + (2 * 3)) - 1) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); class controls { class title: MAV_ctrlStaticTitle { x = 0; y = 0; w = (4/10 * 90) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogGpsPos; }; class customize: MAV_ctrlButton { idc = 0x05; x = (2 + 1.5 + (4/10 * (90 - (2 * 2)))) * (pixelW * pixelGrid * 	0.50); y = 0; w = (6/10 * (90 - (2 * 25))) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogCustomize; }; class reset: MAV_ctrlButton { idc = 0x10; x = (2 + 25 + (4/10 * (90 - 2))) * (pixelW * pixelGrid * 	0.50); y = 0; w = (6/10 * (90 - (2 * 25))) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogReset; }; }; }; class colors: MAV_ctrlControlsGroupNoScrollbars { x = 	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((60 / 2) - (	5 * 4 + (2 * 4))) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (	5 * 4 + (1.5 * 3)) * (pixelH * pixelGrid * 	0.50); class controls { class title: MAV_ctrlStaticTitle { idc = 0x06; x = 0; y = 0; w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogGpsColor; }; class slider1: MAV_ctrlXSliderH { idc = 0x07; x = 0; y = (	5 + 1.5) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); }; class slider2: MAV_ctrlXSliderH { idc = 0x08; x = 0; y = ((	5 * 2) + 1.5) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); }; class slider3: MAV_ctrlXSliderH { idc = 0x09; x = 0; y = ((	5 * 3) + 1.5) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); }; }; }; }; }; class MAV_guiNavigationResize { idd = 52005; onLoad = "['navigation\gui', 'MAV_guiNavigationResize', _this, true] call MAV_gui_fnc_openGUI"; duration = 10e+9; fadeIn = 0; fadeOut = 0; 


class ControlsBackground { class Background: MAV_ctrlStaticBackground { x = (safeZoneX + safeZoneW) - ((100 + 	5) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4) * (pixelH * pixelGrid * 	0.50)); w = 100 * (pixelW * pixelGrid * 	0.50);
h = 60 * (pixelH * pixelGrid * 	0.50); }; class Map: MAV_ctrlMapEmpty { idc = 0x01; x = (safeZoneX + safeZoneW) - ((100 + 	5) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4) * (pixelH * pixelGrid * 	0.50)); w = (100 - (100 / 5)) * (pixelW * pixelGrid * 	0.50); h = (60 - 	5) * (pixelH * pixelGrid * 	0.50); colorBackground[] = {1,1,1,0}; colorOutside[] = {1,1,1,0}; colorTracks[] = {1, 1, 1, 1}; colorTracksFill[] = {1, 1, 1, 1}; colorRoads[] = {1, 1, 1, 1}; colorRoadsFill[] = {1, 1, 1, 1}; colorMainRoads[] = {1, 1, 1, 1}; colorMainRoadsFill[] = {1, 1, 1, 1}; ptsPerSquareSea = 5; ptsPerSquareTxt = 20; ptsPerSquareCLn = 10; ptsPerSquareExp = 10; ptsPerSquareCost = 10; ptsPerSquareFor = 9; ptsPerSquareForEdge = 9; ptsPerSquareRoad = 6; ptsPerSquareObj = 9; scaleMin = 0.0001; scaleMax = 1.0; scaleDefault = 0.1; alphaFadeStartScale = 0; alphaFadeEndScale = 0; text = "#(argb,8,8,3)color(1,1,1,1)"; sizeEx = 0; font = 			"RobotoCondensedLight"; colorText[] = {0,0,0,0}; }; }; class Controls { class BottomText: MAV_ctrlStaticTitle { idc = 0x02; x = (safeZoneX + safeZoneW) - ((100 + 	5) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - (60 - 	5)) * (pixelH * pixelGrid * 	0.50)); w = 100 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); shadow = 1; size = 	5 * (pixelH * pixelGrid * 	0.50); sizeEx = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogDragHere; }; class DirectionIndicatorAhead: MAV_ctrlStaticPictureKeepAspect { idc = 0x05; x = (safeZoneX + safeZoneW) - ((100 + 	5 - (100 - 14)) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - 16 - 2) * (pixelH * pixelGrid * 	0.50)); w = 7 * (pixelW * pixelGrid * 	0.50); h = 7 * (pixelH * pixelGrid * 	0.50); text = "maverick
avigation\data\arrow-left.paa"; }; class BackgroundDirectionIndicator: MAV_ctrlStaticBackground { idc = 0x06; x = (safeZoneX + safeZoneW) - ((100 + 	5 - (100 - 20)) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - 25 - 2) * (pixelH * pixelGrid * 	0.50)); w = (100 / 5) * (pixelW * pixelGrid * 	0.50); h = 28 * (pixelH * pixelGrid * 	0.50); colorBackground[] = {0.99,0.49,0,0}; }; class DirectionIndicator: MAV_ctrlStaticPictureKeepAspect { idc = 0x03; x = (safeZoneX + safeZoneW) - ((100 + 	5 - (100 - 18)) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - 28 - 2) * (pixelH * pixelGrid * 	0.50)); w = 15 * (pixelW * pixelGrid * 	0.50); h = 15 * (pixelH * pixelGrid * 	0.50); text = "maverick
avigation\data\arrow-straight.paa"; colorText[] = {1,1,1,1}; }; class DirectionInformation: MAV_ctrlStructuredText { idc = 0x04; x = (safeZoneX + safeZoneW) - ((100 + 	5 - (100 - 20)) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - 45 - 2) * (pixelH * pixelGrid * 	0.50)); w = (100 / 5) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelW * pixelGrid * 	0.50); text = "<t align='center'>XXXm</t>"; size = 	5 * (pixelH * pixelGrid * 	0.50); sizeEx = 	5 * (pixelH * pixelGrid * 	0.50); shadow = 0; colorText[] = {1,1,1,1}; }; class ETAInformation: MAV_ctrlStaticTitle { idc = 0x07; x = (safeZoneX + safeZoneW) - ((100 + 	5 - (100 - 20)) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - 1) * (pixelH * pixelGrid * 	0.50)); w = (100 / 5) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = "X Min"; }; class DistanceInformation: MAV_ctrlStaticTitle { idc = 0x08; x = (safeZoneX + safeZoneW) - ((100 + 	5 - (100 - 20)) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - 7) * (pixelH * pixelGrid * 	0.50)); w = (100 / 5) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = "XXX m"; }; class BackgroundWarningSignInformation: MAV_ctrlStaticBackground { idc = 0xA; x = (safeZoneX + safeZoneW) - ((100 + 	5 - 1) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - 1) * (pixelH * pixelGrid * 	0.50)); w = 13 * (pixelW * pixelGrid * 	0.50); h = 13 * (pixelH * pixelGrid * 	0.50); colorBackground[] = {0.99,0.49,0,0}; }; class WarningSignInformation: MAV_ctrlStructuredText { idc = 0x09; x = (safeZoneX + safeZoneW) - ((100 + 	5 - 0.5) * (pixelW * pixelGrid * 	0.50)); y = (safeZoneY + safeZoneH) - ((60 + 	4 - 2.5) * (pixelH * pixelGrid * 	0.50)); w = (100 - 20) * (pixelW * pixelGrid * 	0.50); h = 11 * (pixelH * pixelGrid * 	0.50); size = 10 * (pixelH * pixelGrid * 	0.50); sizeEx = 10 * (pixelH * pixelGrid * 	0.50); shadow = 0; color[] = {0,0,0,1}; }; }; }; class MAV_guiNavigationSaved { idd = 52006; onLoad = "['navigation\gui', 'MAV_guiNavigationSaved', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; 



class controls { class Background: MAV_ctrlStaticBackground { x = 	((getResolution select 2) * 0.5 * pixelW) - (90 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (60 / 2) * (pixelH * pixelGrid * 	0.50); w = 90 * (pixelW * pixelGrid * 	0.50); h = 60 * (pixelH * pixelGrid * 	0.50); }; class Header: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - (90 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (60 / 2) * (pixelH * pixelGrid * 	0.50); w = 90 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogSavedTitle; }; class GroupList: MAV_ctrlListbox { idc = 0x01; x = 	((getResolution select 2) * 0.5 * pixelW) - ((90 * 1/2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((60 * 1/2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = (90 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (60 - ((	5 + 2) + 5 + (2 * 2))) * (pixelH * pixelGrid * 	0.50); }; class Footer: MAV_ctrlStaticFooter { x = 	((getResolution select 2) * 0.5 * pixelW) - (90 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((60 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = 90 * (pixelW * pixelGrid * 	0.50); h = (	5 + 2) * (pixelH * pixelGrid * 	0.50); }; class StartButton: MAV_ctrlButton { idc = 0x02; x = 	((getResolution select 2) * 0.5 * pixelW) + ((90 * 1/2) - ((90 * 0.8/3) + 1)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((60 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (90 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogLoad; show = 0; }; class DeleteButton: MAV_ctrlButton { idc = 0x03; x = 	((getResolution select 2) * 0.5 * pixelW) + ((90 * 1/2) - ((90 * 0.8/3) + 33)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((60 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (90 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogDelete; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x04; x = 	((getResolution select 2) * 0.5 * pixelW) - ((90 * 1/2) - 1) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((60 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (90 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogBack; }; }; }; class MAV_guiNavigationCalculateWO { idd = 52007; onLoad = "['navigation\gui', 'MAV_guiNavigationCalculateWO', _this, true] call MAV_gui_fnc_openGUI"; 



class Controls { class Background: MAV_ctrlStaticBackground { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (70 / 2) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = 70 * (pixelH * pixelGrid * 	0.50); }; class Header: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (70 / 2) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogCalculationH; }; class Footer: MAV_ctrlStaticFooter { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = (	5 + 2) * (pixelH * pixelGrid * 	0.50); }; class StartButton: MAV_ctrlButton { idc = 0x01; x = 	((getResolution select 2) * 0.5 * pixelW) + ((110 * 1/2) - ((110 * 0.8/3) + 1)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogStart; show = 0; }; class SaveButton: MAV_ctrlButton { idc = 0x02; x = 	((getResolution select 2) * 0.5 * pixelW) + ((110 * 1/2) - ((110 * 0.8/3) + 40)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogSave; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x03; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 * 1/2) - 1) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogBack; }; class LoadingGroup: MAV_ctrlControlsGroupNoScrollbars { idc = 0x04; x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = (110 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (70 - ((	5 + 2) + (2 * 5))) * (pixelH * pixelGrid * 	0.50); show = 0; class Controls { class Loading: MAV_ctrlStaticPicture { idc = 0x05; x = ((110 / 2) - 4) * (pixelW * pixelGrid * 	0.50); y = (70 / 2.5) * (pixelW * pixelGrid * 	0.50); w = (	6 * 1.5) * (pixelW * pixelGrid * 	0.50); h = (	6 * 1.5) * (pixelH * pixelGrid * 	0.50); text = "maverick
avigation\data\loading.paa"; }; class Text: MAV_ctrlStructuredText { idc = 0x06; x = 0; y = ((70 / 2.5) + (	6 * 1.5) + (2 * 3)) * (pixelW * pixelGrid * 	0.50); w = (110 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (	5 * 1.5) * (pixelH * pixelGrid * 	0.50); text = dialogCalcProgress; }; }; }; class GroupList: MAV_ctrlStructuredText { idc = 0x07; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 * 1/2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((70 * 1/2) - (	5 + 2) - 	5) * (pixelH * pixelGrid * 	0.50); w = (110 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (70 - ((	5 + 2) + 5 + (2 * 2)) - 	5) * (pixelH * pixelGrid * 	0.50); show = 0; }; class Tabs: MAV_ctrlToolbox { idc = 0x08; x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - 	5) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); columns = 2; show = 0; strings[] = {dialogRouteInfo, dialogRouteMapPrev}; }; class PreviewMap: MAV_ctrlMap { idc = 0x09; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 * 1/2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((70 * 1/2) - (	5 + 2) - 	5) * (pixelH * pixelGrid * 	0.50); w = (110 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (70 - ((	5 + 2) + 5 + (2 * 2)) - 	5) * (pixelH * pixelGrid * 	0.50); }; }; }; class MAV_guiNavigationCalculate { idd = 52008; 



class Controls { class Background: MAV_ctrlStaticBackground { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (70 / 2) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = 70 * (pixelH * pixelGrid * 	0.50); }; class Header: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (70 / 2) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogNavigation; }; class Footer: MAV_ctrlStaticFooter { x = 	((getResolution select 2) * 0.5 * pixelW) - (110 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = 110 * (pixelW * pixelGrid * 	0.50); h = (	5 + 2) * (pixelH * pixelGrid * 	0.50); }; class StartButton: MAV_ctrlButton { idc = 0x01; x = 	((getResolution select 2) * 0.5 * pixelW) + ((110 * 1/2) - ((110 * 0.8/3) + 1)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogStart; show = 0; }; class DeleteButton: MAV_ctrlButton { idc = 0x02; x = 	((getResolution select 2) * 0.5 * pixelW) + ((110 * 1/2) - ((110 * 0.8/3) + 40)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogSave; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x03; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 * 1/2) - 1) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((70 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (110 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogBack; }; class text: MAV_ctrlMap { idc = 0x04; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = (110 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (70 - ((	5 + 2) + (2 * 5) + 	5)) * (pixelH * pixelGrid * 	0.50); }; class headerrr: MAV_ctrlStaticTitle { idc = 0x05; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 / 2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (	5 + 2 + (70 - ((	5 + 2) + (2 * 5) + 	5)))) * (pixelH * pixelGrid * 	0.50); w = (110 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = "INFO HERE"; }; class GroupList: MAV_ctrlStructuredText { idc = 0x06; x = 	((getResolution select 2) * 0.5 * pixelW) - ((110 * 1/2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((70 * 1/2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = (110 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = (70 - ((	5 + 2) + 5 + (2 * 2))) * (pixelH * pixelGrid * 	0.50); show = 0; }; }; }; class MAV_guiNavigationSave { idd = 52010; onLoad = "['navigation\gui', 'MAV_guiNavigationSave', _this, true] call MAV_gui_fnc_openGUI"; 



class Controls { class Background: MAV_ctrlStaticBackground { x = 	((getResolution select 2) * 0.5 * pixelW) - (80 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (21 / 2) * (pixelH * pixelGrid * 	0.50); w = 80 * (pixelW * pixelGrid * 	0.50); h = 21 * (pixelH * pixelGrid * 	0.50); }; class Header: MAV_ctrlStaticTitle { x = 	((getResolution select 2) * 0.5 * pixelW) - (80 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - (21 / 2) * (pixelH * pixelGrid * 	0.50); w = 80 * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogSaveRoute; }; class Footer: MAV_ctrlStaticFooter { x = 	((getResolution select 2) * 0.5 * pixelW) - (80 / 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((21 / 2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = 80 * (pixelW * pixelGrid * 	0.50); h = (	5 + 2) * (pixelH * pixelGrid * 	0.50); }; class StartButton: MAV_ctrlButton { idc = 0x01; x = 	((getResolution select 2) * 0.5 * pixelW) + ((80 * 1/2) - ((80 * 0.8/3) + 1)) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((21 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (80 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogSave; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x02; x = 	((getResolution select 2) * 0.5 * pixelW) - ((80 * 1/2) - 1) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) + ((21 * 1/2) - (	5 + 1)) * (pixelH * pixelGrid * 	0.50); w = (80 * 0.8/3) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogBack; }; class RouteName: MAV_ctrlEdit { idc = 0x03; x = 	((getResolution select 2) * 0.5 * pixelW) - ((80 * 1/2) - 2) * (pixelW * pixelGrid * 	0.50); y = 	((getResolution select 3) * 0.5 * pixelH) - ((21 * 1/2) - (	5 + 2)) * (pixelH * pixelGrid * 	0.50); w = (80 - (2 * 2)) * (pixelW * pixelGrid * 	0.50); h = 	5 * (pixelH * pixelGrid * 	0.50); text = dialogRouteName; maxChars = 30; }; }; };






class maverick_taxis_cfg { class pricing { pricePerKilometre = 7500; basePrice = 1000; moneyHandVariable = "life_cash"; moneyBankVariable = "life_atmbank"; paymentSource = "BOTH"; fullRefundOnDriverAbort = 1; }; class keybindings { keyCode = 20; reqShift = 0; reqAlt = 0; reqCtrl = 1; }; class general { automaticNavigation = 1; }; class drivers { condition = "true"; }; class localization { msgMainInfoNoTaxiCalled = "<t size='2'>Du hast keinen aktiven Taxi Auftrag</t><br/><t>Drücke auf 'Taxi rufen' um einen Taxiauftrag für alle verfügbaren Fahrer zu erstellen!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>"; msgMainInfoNoTaxiYet = "<t size='2'>Ein Taxi wurde gerufen!</t><br/><t>Bisher hat kein Taxifahrer den Auftrag angenommen. Du wirst benachrichtigt, sobald der Auftrag angenommen wurde!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>"; msgTaxiCalled = "Ein Taxiauftrag wurde erstellt!"; msgTaxiCancelled = "Dein aktueller Taxiauftrag wurde abgebrochen!"; msgTaxiFareCancelled = "Du hast die Bezahlung abgelehnt."; msgTaxiCancelConfirm = "Ein Taxifahrer hat ihren Auftrag bereits angenommen und ist auf dem Weg. Willst du wirklich den Auftrag abbrechen?"; msgTaxiCancelHeader = "Taxiauftrag abbrechen"; msgTaxiCancelButtonConfirm = "Ja"; msgTaxiCancelButtonCancel = "Nein"; msgTaxiCancelDriverConfirm = "Willst du wirklich den Tarif abbrechen? Wenn der Preis bereits transferiert wurde, wird dieser an den Kunden zurücküberwiesen."; msgTaxiMeterInfoText = "<t>Distanz</t><t align='right' font='RobotoCondensedBold'>%1</t><br/><t>Zeit vergangen</t><t align='right' font='RobotoCondensedBold'>%2</t><br/><t>Preis (%3$/km)</t><t align='right' font='RobotoCondensedBold'>%4</t>"; msgTaxiMeterStatusTextActive = "<t align='right' font='RobotoCondensedBold'>Aktiv</t>"; msgTaxiMeterStatusTextInactive = "<t align='right' font='RobotoCondensedBold'>Inaktiv</t>"; masTaxiInfoPleaseWait = "<t size='2'>%1 ist auf dem Weg zu dir!</t><br/>Bitte warte an deiner aktuellen Position. Dein Taxi ist im Moment %2 weg.</t>"; msgTaxiFareCancelledAsCustomer = "Dein Taxifahrer hat den Tarif abgebrochen."; masTaxiFareCancelledAsDriver = "Dein Kunde hat den Tarif abgebrochen."; msgTaxiCallAccepted = "Ein Taxifahrer ist auf dem Weg."; msgTaxiDriverNotAvailable = "Du erfüllst nicht die Vorraussetzungen für einen Taxifahrer!"; msgTaxiDestinationUpdated = "Das Reiseziel wurde aktualisiert!"; msgTaxiNoRoadNearFound = "Es wurde keine Straße an der Position gefunden."; msgTaxiCannotCallWhileDriver = "Du kannst kein Taxi rufen, während du als Taxifahrer arbeitest!"; msgTaxiCannotDriveWhileCalling = "Du kannst kein Taxifahrer sein, während du auf ein Taxi wartest!"; msgTaxiSpamClickPrevention = "Du kannst die Aktion nicht so schnell ausführen!"; msgTaxiAlreadyInFare = "Du hast bereits eine Überweisung angenommen!"; msgCallTaxi = "Taxi rufen"; msgBaseNotAffordable = "Du hast nicht genug Geld, um ein Taxi zu rufen!"; msgPaidCustomer = "Du hast dein Ziel erreicht.<br/>Verdientes Geld: %1$"; msgNotFullyPaidCustomer = "Du hast dein Ziel erreicht. Da du keine %1$ hattest, wurden dir %2$ (exklusive Steuern) abgezogen!";
msgPaidDriver = "Du hast dein Ziel erreicht.<br/>Dein Kunde hat dir <t color='#43a047'>%1$</t> bezahlt."; msgNotFullyPaidDriver = "Du hast dein Ziel erreicht. Dein Kunde konnte nicht den ganzen Betrag von über <t color='#43a047'>%1$</t> bezahlen, deshalb wurden dir <t color='#43a047'>%2$</t> (exklusive Steuern) überwiesen."; msgPayCustomer = "Sie haben ihr Ziel erreicht.<br/>Der Gesamtbezahlung liegt bei %1$."; msgPayDriver = "Sie haben ihr Ziel erreicht.<br/>Dein Kunde wurde aufgefordert %1$ zu bezahlen."; msgTotalPayment = "Gesamte Bezahlung: %1$"; msgTaximeterPositionSaved = "Taximeter Position gespeichert"; msgTaximeterPositionReset = "Taximeter Position zurückgesetzt"; msgTaxiPressSpaceSaveSettings = "Drücke [Leertaste] zum speichern"; msgNowOnDuty = "Sie sind nun im Dienst und erhalten eine Nachricht bei einkommenden Aufträgen!"; msgNowOffDuty = "Sie sind nun außer Dienst"; msgTaxiMenuActiveCalls = "Zeige alle Aufträge"; msgTaxiNewCallCreated = "Ein neuer Auftrag wurde erstellt"; msgTaxiBillingPayment = "Gesamtbezahlung durch gefahrene Strecke"; msgTaxiBillingDriverMissingP = "Der Kunde kann sich den Betrag nicht leisten"; msgTaxiBillingBasePrice = "Basispreis"; msgTaxiBillingCustomerMissingP = "Betrag nicht bezahlbar"; msgTaxiCurrentFareInformation = "Aktueller Taxiauftrag"; msgTaxiBillingCancelled = "Tarif storniert"; msgTaskDriverPickupDescription = "Hole deinen Passagier an der Position ab"; msgTaskDriverPickupDescriptionS = "Abholen"; msgTaskDriverPickupHUD = "Abholen"; msgTaskCustomerDriverDescription = "Steige in das Fahrzeug deines Taxifahrers ein"; msgTaskCustomerDriverDescriptionS = "Einsteigen"; msgTaskCustomerDriverHUD = "Einsteigen"; msgTaskDriverGoToDescription = "Kundenziel"; msgTaskDriverGoToDescriptionS = "Ziel"; msgTaskDriverGoToDriverHUD = "Bewege dich hier her"; 


























}; }; 








































class RscDisplayTaxiCall { idd = 53001; onLoad = "['taxis\gui', 'RscDisplayTaxiCall', _this, true, 'RscDisplayTaxiCall'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (0) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((150) * (pixelW * pixelGrid * 	0.50)); h = ((90) * (pixelH * pixelGrid * 	0.50)); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (0) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((150) * (pixelW * pixelGrid * 	0.50)); h = ((6) * (pixelH * pixelGrid * 	0.50)); text = "Taxi Service"; moving = 0; }; class DestinationMap: MAV_ctrlMap { idc = 14; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((90) * (pixelW * pixelGrid * 	0.50)); h = ((90 - 6 - 1.5 * 2 - 8) * (pixelH * pixelGrid * 	0.50)); }; 

class DestinationHeader: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90)) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Ziel"; moving = 0; }; class DestinationExplanationText: MAV_ctrlStaticMulti { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 + 1.5 + 	5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90)) * (pixelW * pixelGrid * 	0.50)); h = ((20) * (pixelH * pixelGrid * 	0.50)); text = "Doppelklick auf der Karte um die Zielposition festzulegen. Wenn bereits ein Taxifahrer auf dem Weg ist, wird er über die neue Position informiert."; }; class StatusHeader: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 3 + 	5 + 20) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90)) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Status"; moving = 0; }; class AvailableDriversHeader: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (90 - 8 - 1.5 - 	5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90)) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Verfügbare Fahrer"; moving = 0; }; class AvailableDriversNumber: MAV_ctrlStatic { idc = 19; style = 0x01; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (90 - 8 - 1.5 - 	5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90)) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = ""; shadow = 0; }; class CB1: MAV_ctrlCheckbox { idc = 15; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 4 + 	5 * 2 + 20) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((	5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); }; class CB1Text: MAV_ctrlStatic { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5 + 	5) - (0)) * (pixelW * pixelGrid * 	0.50));
y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 4 + 	5 * 2 + 20) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90) - 	5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Zielort ausgewählt"; }; class CB2: MAV_ctrlCheckbox { idc = 16; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 4 + 	5 * 2 + 20 + (	5 + 1.5) * 1) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((	5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); }; class CB2Text: MAV_ctrlStatic { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5 + 	5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 4 + 	5 * 2 + 20 + (	5 + 1.5) * 1) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90) - 	5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Taxiauftrag erstellt"; }; class CB3: MAV_ctrlCheckbox { idc = 17; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 4 + 	5 * 2 + 20 + (	5 + 1.5) * 2) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((	5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); }; class CB3Text: MAV_ctrlStatic { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5 + 	5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 4 + 	5 * 2 + 20 + (	5 + 1.5) * 2) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90) - 	5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Taxifahrer hat Auftrag angenommen"; }; class CB4: MAV_ctrlCheckbox { idc = 18; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 4 + 	5 * 2 + 20 + (	5 + 1.5) * 3) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((	5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); }; class CB4Text: MAV_ctrlStatic { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 + 90 + 1.5 + 	5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (6 + 1.5 * 4 + 	5 * 2 + 20 + (	5 + 1.5) * 3) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((150 - 1.5 * 3 - 90) - 	5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Abholung"; }; class Footer: MAV_ctrlStaticFooter { 

x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (90 - 8) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((150) * (pixelW * pixelGrid * 	0.50)); h = ((8) * (pixelH * pixelGrid * 	0.50)); }; class CloseDialog: MAV_ctrlButton { 


x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (90 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((30) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "Schließen"; onButtonClick = "closeDialog 0;"; }; class CallTaxiButton: MAV_ctrlButton { 


idc = 12; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (150 - 1.5 - 50) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (90 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((50) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = dialogCallTaxi; show = 0; }; class CancelTaxiButton: MAV_ctrlButton { 


idc = 13; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (150 - 1.5 - 50) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((90 / 2) - (90 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((50) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "Taxiauftrag abbrechen"; show = 0; }; }; };

class RscDisplayTaxiCalls { idd = 53004; onLoad = "['taxis\gui', 'RscDisplayTaxiCalls', _this, true, 'RscDisplayTaxiCalls'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (0) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((150) * (pixelW * pixelGrid * 	0.50)); h = ((70) * (pixelH * pixelGrid * 	0.50)); }; class Header: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (0) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((150) * (pixelW * pixelGrid * 	0.50)); h = ((6) * (pixelH * pixelGrid * 	0.50)); text = "Verfügbare Taxianträge"; moving = 0; }; }; class Controls { class ListNBoxTaxiCalls: MAV_ctrlListNBox { idc = 15; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (8 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((150 - 1.5 * 2) * (pixelW * pixelGrid * 	0.50)); h = ((70 - 8 - 8 - 1.5 * 2) * (pixelH * pixelGrid * 	0.50)); columns[] = {0, 0.25, 0.375, 0.5, 0.75}; }; class Footer: MAV_ctrlStaticFooter { 

x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 8) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((150) * (pixelW * pixelGrid * 	0.50)); h = ((8) * (pixelH * pixelGrid * 	0.50)); }; class CloseDialog: MAV_ctrlButton { 


x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((30) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "Schließen"; onButtonClick = "closeDialog 0;"; }; class Header: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 * 2 + 30) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50));
w = ((5) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); moving = 0; }; class RefreshIcon: MAV_ctrlStaticPictureKeepAspect { x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 * 2 + 30 + 0.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 1.5 - 5 + 0.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((5 - 1) * (pixelW * pixelGrid * 	0.50)); h = ((5 - 1) * (pixelH * pixelGrid * 	0.50)); text = "maverick\taxis\data\images\refresh.paa"; }; class RefreshButton: MAV_ctrlButton { 


idc = 16; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (1.5 * 2 + 30 + 5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((30) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "Refresh"; }; class AcceptButton: MAV_ctrlButton { 


idc = 13; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (150 - 1.5 - 40) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((40) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "Auftrag annehmen"; show = 0; }; class CancelButton: MAV_ctrlButton { 


idc = 14; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (150 - 1.5 - 40) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((40) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "Aktuellen Auftrag abbrechen"; show = 0; }; class GoOnDutyButton: MAV_ctrlButton { 

idc = 11; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (150 - 1.5 * 2 - 40 - 30) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((30) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "In Dienst gehen"; show = 0; }; class GoOffDutyButton: MAV_ctrlButton { 

idc = 12; x = (	((getResolution select 2) * 0.5 * pixelW) - ((150 / 2) - (150 - 1.5 * 2 - 40 - 30) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((70 / 2) - (70 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((30) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "Dienst verlassen"; show = 0; }; }; };

class RscDisplayTaxiMenu { idd = 53001; onLoad = "['taxis\gui', 'RscDisplayTaxiMenu', _this, true, 'RscDisplayTaxiMenu'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (0) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((90) * (pixelW * pixelGrid * 	0.50)); h = ((42) * (pixelH * pixelGrid * 	0.50)); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (0) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((90) * (pixelW * pixelGrid * 	0.50)); h = ((6) * (pixelH * pixelGrid * 	0.50)); text = "Taxi Service"; moving = 0; }; class FirstButtonBackground: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((12) * (pixelW * pixelGrid * 	0.50)); h = ((10) * (pixelH * pixelGrid * 	0.50)); moving = 0; }; class FirstButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5 + 1 + 1) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5 + 1) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((10 - 2) * (pixelW * pixelGrid * 	0.50)); h = ((10 - 2) * (pixelH * pixelGrid * 	0.50)); text = "maverick\taxis\data\images\map_pin.paa"; }; class FirstButton: MAV_ctrlButton { 


idc = 11; x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5 + 12) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((90 - 1.5 * 2 - 12)) * (pixelW * pixelGrid * 	0.50)); h = ((10) * (pixelH * pixelGrid * 	0.50));
text = "Ein Taxi rufen"; }; class SecondButtonBackground: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5 + 10 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((12) * (pixelW * pixelGrid * 	0.50)); h = ((10) * (pixelH * pixelGrid * 	0.50)); moving = 0; }; class SecondButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5 + 1 + 1) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5 + 1 + 10 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((10 - 2) * (pixelW * pixelGrid * 	0.50)); h = ((10 - 2) * (pixelH * pixelGrid * 	0.50)); text = "maverick\taxis\data\images\taxi-front-view.paa"; }; class SecondButton: MAV_ctrlButton { 


idc = 12; x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5 + 12) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5 + 10 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((90 - 1.5 * 2 - 12)) * (pixelW * pixelGrid * 	0.50)); h = ((10) * (pixelH * pixelGrid * 	0.50)); text = "Als Taxifahrer arbeiten"; }; class ThirdButtonBackground: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5 + 10 + 1.5 + 10 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((12) * (pixelW * pixelGrid * 	0.50)); h = ((10) * (pixelH * pixelGrid * 	0.50)); moving = 0; }; class ThirdButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5 + 1 + 1) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5 + 1 + 10 + 1.5 + 10 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((10 - 2) * (pixelW * pixelGrid * 	0.50)); h = ((10 - 2) * (pixelH * pixelGrid * 	0.50)); text = "maverick\taxis\data\images\settings-gears.paa"; }; class ThirdButton: MAV_ctrlButton { 


idc = 13; x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5 + 12) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5 + 10 + 1.5 + 10 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((90 - 1.5 * 2 - 12)) * (pixelW * pixelGrid * 	0.50)); h = ((10) * (pixelH * pixelGrid * 	0.50)); text = "Einstellungen"; }; }; };


class RscDisplayTaxiSettings { idd = 53006; onLoad = "['taxis\gui', 'RscDisplayTaxiSettings', _this, true, 'RscDisplayTaxiSettings'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (0) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((90) * (pixelW * pixelGrid * 	0.50)); h = ((42) * (pixelH * pixelGrid * 	0.50)); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (0) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((90) * (pixelW * pixelGrid * 	0.50)); h = ((6) * (pixelH * pixelGrid * 	0.50)); text = "Taxi Service - Settings"; moving = 0; }; class TaximeterHeader: MAV_ctrlStaticTitle { x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((90 * (1/3) - 1.5 - (1.5 / 2)) * (pixelW * pixelGrid * 	0.50));
h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Taximeter Position"; moving = 0; }; class TaximeterPositionCustomizeButton: MAV_ctrlButton { idc = 11; x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - ((90 * (1/3)) + (1.5 / 2)) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((90 * (2/3) * (1/2)) - 1.5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Anpassen"; }; class TaximeterPositionResetButton: MAV_ctrlButton { idc = 12; x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (90 * (2/3)) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (6 + 1.5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = (((90 * (2/3) * (1/2)) - 1.5) * (pixelW * pixelGrid * 	0.50)); h = ((	5) * (pixelH * pixelGrid * 	0.50)); text = "Zurücksetzen"; }; class Footer: MAV_ctrlStaticFooter { 

x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (0) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (42 - 8) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((90) * (pixelW * pixelGrid * 	0.50)); h = ((8) * (pixelH * pixelGrid * 	0.50)); }; class CloseDialog: MAV_ctrlButton { 


x = (	((getResolution select 2) * 0.5 * pixelW) - ((90 / 2) - (1.5) - (0)) * (pixelW * pixelGrid * 	0.50)); y = (	((getResolution select 3) * 0.5 * pixelH) - ((42 / 2) - (42 - 1.5 - 5) - (0)) * (pixelH * pixelGrid * 	0.50)); w = ((30) * (pixelW * pixelGrid * 	0.50)); h = ((5) * (pixelH * pixelGrid * 	0.50)); text = "Schließen"; onButtonClick = "closeDialog 0; createDialog 'RscDisplayTaxiMenu';"; }; }; };

class RscDisplayTaxiCustomizeTaximeter { idd = 53007; onLoad = "['taxis\gui', 'RscDisplayTaxiCustomizeTaximeter', _this, 'RscDisplayTaxiCustomizeTaximeter'] call MAV_gui_fnc_initLayer"; duration = 1e+030; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * (pixelW * pixelGrid * 	0.50)));
y = (safeZoneY + ((90 + (0)) * (pixelH * pixelGrid * 	0.50))); w = ((59.5) * (pixelW * pixelGrid * 	0.50)); h = ((30) * (pixelH * pixelGrid * 	0.50)); }; class Header: MAV_ctrlStaticTitle { x = (safeZoneX + ((3 + (0)) * (pixelW * pixelGrid * 	0.50))); y = (safeZoneY + ((90 + (0)) * (pixelH * pixelGrid * 	0.50))); w = ((59.5) * (pixelW * pixelGrid * 	0.50)); h = ((6) * (pixelH * pixelGrid * 	0.50)); text = "Zieh mich"; moving = 1; }; }; class Controls { class CurrentInformation: MAV_ctrlStructuredText { x = (safeZoneX + ((3 + (0)) * (pixelW * pixelGrid * 	0.50))); y = (safeZoneY + ((90 + (6 + 1.5)) * (pixelH * pixelGrid * 	0.50))); w = ((59.5) * (pixelW * pixelGrid * 	0.50)); h = ((30 - 6 - (1.5 * 2)) * (pixelH * pixelGrid * 	0.50)); text = ""; shadow = 0; }; class ActiveFooter: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * (pixelW * pixelGrid * 	0.50))); y = (safeZoneY + ((90 + (30 - 6.5)) * (pixelH * pixelGrid * 	0.50))); w = ((59.5) * (pixelW * pixelGrid * 	0.50)); h = ((6.5) * (pixelH * pixelGrid * 	0.50)); colorBackground[] = {0,0,0,0.3}; }; class ActiveFooterText: MAV_ctrlStructuredText { x = (safeZoneX + ((3 + (0)) * (pixelW * pixelGrid * 	0.50))); y = (safeZoneY + ((90 + (30 - 5.5)) * (pixelH * pixelGrid * 	0.50))); w = ((59.5) * (pixelW * pixelGrid * 	0.50)); h = ((5.5) * (pixelH * pixelGrid * 	0.50)); shadow = 0; }; }; };



