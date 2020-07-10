private["_text""_index"]; _text = ctrlText 1500; _index = 0; lbClear 9991; zero_var_wantedCurrentReasons = []; { if(((toLower _x) find (toLower _text)) != -1)then{ zero_var_wantedCurrentReasons pushBack _index;
lbAdd[9991,_x]; }; _index = _index + 1; }forEach(zero_var_wantedListReasons);
