class RscTitleTaxiFareSummary { idd = MAV_IDD_RSCTITLETAXIFARESUMMARY; onLoad = "['taxis\gui', 'RscTitleTaxiFareSummary', _this, 'RscTitleTaxiFareSummary'] call MAV_gui_fnc_initLayer"; duration = 1e+030; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((120 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (0) - (0)) * GRID_H); w = ((120) * GRID_W); h = ((60) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((120 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (0) - (0)) * GRID_H); w = ((120) * GRID_W); h = ((6) * GRID_H);
text = dialogFareSummaryTitle; moving = 0; }; }; class Controls { 

class MainText: MAV_ctrlStructuredText { idc = MAV_IDC_RSCTITLETAXIFARESUMMARY_INFOTEXT; x = (CENTER_X - ((120 / 2) - (5) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((120 - 10) * GRID_W); h = ((60 - 15 - 6 - 1.5 * 2) * GRID_H); }; class Footer: MAV_ctrlStaticFooter { x = (CENTER_X - ((120 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (60 - 15) - (0)) * GRID_H); w = ((120) * GRID_W); h = ((15) * GRID_H); }; class FooterPriceText: MAV_ctrlStatic { idc = MAV_IDC_RSCTITLETEXTFARESUMMARY_TOTALPRICE; x = (CENTER_X - ((120 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (60 - 15) - (0)) * GRID_H); w = ((120 - 5) * GRID_W); h = ((15) * GRID_H); style = ST_RIGHT; text = ""; size = 12 * GRID_H; sizeEx = 12 * GRID_H; shadow = 2; }; class FooterCloseText: MAV_ctrlStatic { x = (CENTER_X - ((120 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (60 - SIZE_M - 1.5) - (0)) * GRID_H); w = ((120) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogSummaryClosePromt; shadow = 0; }; }; };
