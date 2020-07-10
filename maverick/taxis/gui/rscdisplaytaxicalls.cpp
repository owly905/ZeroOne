class RscDisplayTaxiCalls { idd = MAV_IDD_RSCDISPLAYTAXICALLS; onLoad = "['taxis\gui', 'RscDisplayTaxiCalls', _this, true, 'RscDisplayTaxiCalls'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((70) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((6) * GRID_H); text = dialogTaxiFareList; moving = 0; }; }; class Controls { class ListNBoxTaxiCalls: MAV_ctrlListNBox { idc = MAV_IDC_RSCDISPLAYTAXICALLS_LISTNBOX; x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (8 + 1.5) - (0)) * GRID_H); w = ((150 - 1.5 * 2) * GRID_W); h = ((70 - 8 - 8 - 1.5 * 2) * GRID_H); columns[] = {0, 0.25, 0.375, 0.5, 0.75}; }; class Footer: MAV_ctrlStaticFooter { 

x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 8) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((8) * GRID_H); }; class CloseDialog: MAV_ctrlButton { 


x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogClose; onButtonClick = "closeDialog 0;"; }; class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H);
w = ((5) * GRID_W); h = ((5) * GRID_H); moving = 0; }; class RefreshIcon: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30 + 0.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5 + 0.5) - (0)) * GRID_H); w = ((5 - 1) * GRID_W); h = ((5 - 1) * GRID_H); text = "maverick\taxis\data\images\refresh.paa"; }; class RefreshButton: MAV_ctrlButton { 


idc = MAV_IDC_RSCDISPLAYTAXICALLS_REFRESHBTN; x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30 + 5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = "Refresh"; }; class AcceptButton: MAV_ctrlButton { 


idc = MAV_IDC_RSCDISPLAYTAXICALLS_ACCEPTCALL; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 40) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((40) * GRID_W); h = ((5) * GRID_H); text = dialogTaxiAcceptCall; show = 0; }; class CancelButton: MAV_ctrlButton { 


idc = MAV_IDC_RSCDISPLAYTAXICALLS_CANCELCALL; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 40) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((40) * GRID_W); h = ((5) * GRID_H); text = dialogTaxiCancelCall; show = 0; }; class GoOnDutyButton: MAV_ctrlButton { 

idc = MAV_IDC_RSCDISPLAYTAXICALLS_GOONDUTYBTN; x = (CENTER_X - ((150 / 2) - (150 - 1.5 * 2 - 40 - 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogTaxiGoOnDuty; show = 0; }; class GoOffDutyButton: MAV_ctrlButton { 

idc = MAV_IDC_RSCDISPLAYTAXICALLS_GOOFFDUTYBTN; x = (CENTER_X - ((150 / 2) - (150 - 1.5 * 2 - 40 - 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogTaxiGoOffDuty; show = 0; }; }; };
