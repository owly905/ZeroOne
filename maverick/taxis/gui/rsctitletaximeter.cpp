class RscTitleTaxiMeter { idd = MAV_IDD_RSCTITLETAXIMETER; onLoad = "['taxis\gui', 'RscTitleTaxiMeter', _this, 'RscTitleTaxiMeter'] call MAV_gui_fnc_initLayer"; duration = 1e+030; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (safeZoneX + ((3 + (0)) * GRID_W));
y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6) * GRID_H); text = dialogTaxiMeter; moving = 0; }; }; class Controls { class CurrentInformation: MAV_ctrlStructuredText { idc = MAV_IDC_RSCTITLETAXIMETER_INFOTEXT; x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (6 + 1.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30 - 6 - (1.5 * 2)) * GRID_H); text = ""; shadow = 0; }; class ActiveFooter: MAV_ctrlStaticBackground { idc = MAV_IDC_RSCTITLETAXIMETER_ACTIVEFOOTER_BACKGROUND; x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 6.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6.5) * GRID_H); colorBackground[] = {0,0,0,0.3}; }; class ActiveFooterText: MAV_ctrlStructuredText { idc = MAV_IDC_RSCTITLETAXIMETER_ACTIVEFOOTER_TEXT; x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 5.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((5.5) * GRID_H); shadow = 0; }; }; };
