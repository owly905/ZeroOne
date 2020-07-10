







































class RscDisplayTaxiCall { idd = 53001; onLoad = "['taxis\gui', 'RscDisplayTaxiCall', _this, true, 'RscDisplayTaxiCall'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((90) * GRID_H); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((6) * GRID_H); text = dialogCallTaxiTitle; moving = 0; }; class DestinationMap: MAV_ctrlMap { idc = 14; x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((90 - 6 - 1.5 * 2 - 8) * GRID_H); }; 

class DestinationHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogDestination; moving = 0; }; class DestinationExplanationText: MAV_ctrlStaticMulti { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 + 1.5 + SIZE_M) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((20) * GRID_H); text = dialogHowToDestination; }; class StatusHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 3 + SIZE_M + 20) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogStatusTitle; moving = 0; }; class AvailableDriversHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 8 - 1.5 - SIZE_M) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogAvaibleDrivers; moving = 0; }; class AvailableDriversNumber: MAV_ctrlStatic { idc = 19; style = ST_RIGHT; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 8 - 1.5 - SIZE_M) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((SIZE_M) * GRID_H); text = ""; shadow = 0; }; class CB1: MAV_ctrlCheckbox { idc = 15; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20) - (0)) * GRID_H); w = ((SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); }; class CB1Text: MAV_ctrlStatic { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5 + SIZE_M) - (0)) * GRID_W);
y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90) - SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogStatusMarkedDest; }; class CB2: MAV_ctrlCheckbox { idc = 16; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 1) - (0)) * GRID_H); w = ((SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); }; class CB2Text: MAV_ctrlStatic { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5 + SIZE_M) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 1) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90) - SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogStatusCreatedCall; }; class CB3: MAV_ctrlCheckbox { idc = 17; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 2) - (0)) * GRID_H); w = ((SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); }; class CB3Text: MAV_ctrlStatic { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5 + SIZE_M) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 2) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90) - SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogStatusDriverFound; }; class CB4: MAV_ctrlCheckbox { idc = 18; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 3) - (0)) * GRID_H); w = ((SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); }; class CB4Text: MAV_ctrlStatic { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5 + SIZE_M) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 3) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90) - SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogStatusPickedUp; }; class Footer: MAV_ctrlStaticFooter { 

x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 8) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((8) * GRID_H); }; class CloseDialog: MAV_ctrlButton { 


x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogClose; onButtonClick = "closeDialog 0;"; }; class CallTaxiButton: MAV_ctrlButton { 


idc = 12; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 50) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 1.5 - 5) - (0)) * GRID_H); w = ((50) * GRID_W); h = ((5) * GRID_H); text = dialogCallTaxi; show = 0; }; class CancelTaxiButton: MAV_ctrlButton { 


idc = 13; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 50) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 1.5 - 5) - (0)) * GRID_H); w = ((50) * GRID_W); h = ((5) * GRID_H); text = dialogCancelTaxi; show = 0; }; }; };

class RscDisplayTaxiCalls { idd = 53004; onLoad = "['taxis\gui', 'RscDisplayTaxiCalls', _this, true, 'RscDisplayTaxiCalls'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((70) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((6) * GRID_H); text = dialogTaxiFareList; moving = 0; }; }; class Controls { class ListNBoxTaxiCalls: MAV_ctrlListNBox { idc = 15; x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (8 + 1.5) - (0)) * GRID_H); w = ((150 - 1.5 * 2) * GRID_W); h = ((70 - 8 - 8 - 1.5 * 2) * GRID_H); columns[] = {0, 0.25, 0.375, 0.5, 0.75}; }; class Footer: MAV_ctrlStaticFooter { 

x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 8) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((8) * GRID_H); }; class CloseDialog: MAV_ctrlButton { 


x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogClose; onButtonClick = "closeDialog 0;"; }; class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H);
w = ((5) * GRID_W); h = ((5) * GRID_H); moving = 0; }; class RefreshIcon: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30 + 0.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5 + 0.5) - (0)) * GRID_H); w = ((5 - 1) * GRID_W); h = ((5 - 1) * GRID_H); text = "maverick\taxis\data\images\refresh.paa"; }; class RefreshButton: MAV_ctrlButton { 


idc = 16; x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30 + 5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = "Refresh"; }; class AcceptButton: MAV_ctrlButton { 


idc = 13; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 40) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((40) * GRID_W); h = ((5) * GRID_H); text = dialogTaxiAcceptCall; show = 0; }; class CancelButton: MAV_ctrlButton { 


idc = 14; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 40) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((40) * GRID_W); h = ((5) * GRID_H); text = dialogTaxiCancelCall; show = 0; }; class GoOnDutyButton: MAV_ctrlButton { 

idc = 11; x = (CENTER_X - ((150 / 2) - (150 - 1.5 * 2 - 40 - 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogTaxiGoOnDuty; show = 0; }; class GoOffDutyButton: MAV_ctrlButton { 

idc = 12; x = (CENTER_X - ((150 / 2) - (150 - 1.5 * 2 - 40 - 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogTaxiGoOffDuty; show = 0; }; }; };

class RscDisplayTaxiMenu { idd = 53001; onLoad = "['taxis\gui', 'RscDisplayTaxiMenu', _this, true, 'RscDisplayTaxiMenu'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((42) * GRID_H); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((6) * GRID_H); text = "Taxi Service"; moving = 0; }; class FirstButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class FirstButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\map_pin.paa"; }; class FirstButton: MAV_ctrlButton { 


idc = 11; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H);
text = dialogMenuCustomer; }; class SecondButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class SecondButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1 + 10 + 1.5) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\taxi-front-view.paa"; }; class SecondButton: MAV_ctrlButton { 


idc = 12; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H); text = dialogMenuDriver; }; class ThirdButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class ThirdButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\settings-gears.paa"; }; class ThirdButton: MAV_ctrlButton { 


idc = 13; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H); text = dialogMenuSettings; }; }; };


class RscDisplayTaxiSettings { idd = 53006; onLoad = "['taxis\gui', 'RscDisplayTaxiSettings', _this, true, 'RscDisplayTaxiSettings'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((42) * GRID_H); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((6) * GRID_H); text = "Taxi Service - Settings"; moving = 0; }; class TaximeterHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((90 * (1/3) - 1.5 - (1.5 / 2)) * GRID_W);
h = ((SIZE_M) * GRID_H); text = dialogSettingsCustomizePos; moving = 0; }; class TaximeterPositionCustomizeButton: MAV_ctrlButton { idc = 11; x = (CENTER_X - ((90 / 2) - ((90 * (1/3)) + (1.5 / 2)) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 * (2/3) * (1/2)) - 1.5) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogSettingsCustomize; }; class TaximeterPositionResetButton: MAV_ctrlButton { idc = 12; x = (CENTER_X - ((90 / 2) - (90 * (2/3)) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 * (2/3) * (1/2)) - 1.5) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogSettingsReset; }; class Footer: MAV_ctrlStaticFooter { 

x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (42 - 8) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((8) * GRID_H); }; class CloseDialog: MAV_ctrlButton { 


x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (42 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = dialogClose; onButtonClick = "closeDialog 0; createDialog 'RscDisplayTaxiMenu';"; }; }; };

class RscDisplayTaxiCustomizeTaximeter { idd = 53007; onLoad = "['taxis\gui', 'RscDisplayTaxiCustomizeTaximeter', _this, 'RscDisplayTaxiCustomizeTaximeter'] call MAV_gui_fnc_initLayer"; duration = 1e+030; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * GRID_W));
y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6) * GRID_H); text = dialogDragMe; moving = 1; }; }; class Controls { class CurrentInformation: MAV_ctrlStructuredText { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (6 + 1.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30 - 6 - (1.5 * 2)) * GRID_H); text = ""; shadow = 0; }; class ActiveFooter: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 6.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6.5) * GRID_H); colorBackground[] = {0,0,0,0.3}; }; class ActiveFooterText: MAV_ctrlStructuredText { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 5.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((5.5) * GRID_H); shadow = 0; }; }; };

