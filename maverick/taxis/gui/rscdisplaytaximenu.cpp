class RscDisplayTaxiMenu { idd = MAV_IDD_RSCDISPLAYTAXICALL; onLoad = "['taxis\gui', 'RscDisplayTaxiMenu', _this, true, 'RscDisplayTaxiMenu'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((42) * GRID_H); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((6) * GRID_H); text = "Taxi Service"; moving = 0; }; class FirstButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class FirstButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\map_pin.paa"; }; class FirstButton: MAV_ctrlButton { 


idc = MAV_IDC_RSCDISPLAYTAXIMENU_CUSTOMER; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H);
text = dialogMenuCustomer; }; class SecondButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class SecondButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1 + 10 + 1.5) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\taxi-front-view.paa"; }; class SecondButton: MAV_ctrlButton { 


idc = MAV_IDC_RSCDISPLAYTAXIMENU_DRIVER; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H); text = dialogMenuDriver; }; class ThirdButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class ThirdButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\settings-gears.paa"; }; class ThirdButton: MAV_ctrlButton { 


idc = MAV_IDC_RSCDISPLAYTAXIMENU_SETTINGS; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H); text = dialogMenuSettings; }; }; };
