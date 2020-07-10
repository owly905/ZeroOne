class RscDisplayTaxiCustomizeTaximeter { idd = MAV_IDD_RSCDISPLAYTAXICUSTOMIZETAXIMETER; onLoad = "['taxis\gui', 'RscDisplayTaxiCustomizeTaximeter', _this, 'RscDisplayTaxiCustomizeTaximeter'] call MAV_gui_fnc_initLayer"; duration = 1e+030; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * GRID_W));
y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6) * GRID_H); text = dialogDragMe; moving = 1; }; }; class Controls { class CurrentInformation: MAV_ctrlStructuredText { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (6 + 1.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30 - 6 - (1.5 * 2)) * GRID_H); text = ""; shadow = 0; }; class ActiveFooter: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 6.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6.5) * GRID_H); colorBackground[] = {0,0,0,0.3}; }; class ActiveFooterText: MAV_ctrlStructuredText { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 5.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((5.5) * GRID_H); shadow = 0; }; }; };
