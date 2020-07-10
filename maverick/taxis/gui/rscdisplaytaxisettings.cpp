class RscDisplayTaxiSettings { idd = MAV_IDD_RSCDISPLAYTAXISETTINGS; onLoad = "['taxis\gui', 'RscDisplayTaxiSettings', _this, true, 'RscDisplayTaxiSettings'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((42) * GRID_H); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((6) * GRID_H); text = "Taxi Service - Settings"; moving = 0; }; class TaximeterHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((90 * (1/3) - 1.5 - (1.5 / 2)) * GRID_W);
h = ((SIZE_M) * GRID_H); text = dialogSettingsCustomizePos; moving = 0; }; class TaximeterPositionCustomizeButton: MAV_ctrlButton { idc = MAV_IDC_RSCDISPLAYTAXISETTINGS_TAXIMETER_CUSTOMIZE; x = (CENTER_X - ((90 / 2) - ((90 * (1/3)) + (1.5 / 2)) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 * (2/3) * (1/2)) - 1.5) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogSettingsCustomize; }; class TaximeterPositionResetButton: MAV_ctrlButton { idc = MAV_IDC_RSCDISPLAYTAXISETTINGS_TAXIMETER_RESET; x = (CENTER_X - ((90 / 2) - (90 * (2/3)) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 * (2/3) * (1/2)) - 1.5) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogSettingsReset; }; class Footer: MAV_ctrlStaticFooter { 

x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (42 - 8) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((8) * GRID_H); }; class CloseDialog: MAV_ctrlButton { 


x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (42 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogClose; onButtonClick = "closeDialog 0; createDialog 'RscDisplayTaxiMenu';"; }; }; };
