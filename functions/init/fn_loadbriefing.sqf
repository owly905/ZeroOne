if (!hasInterface) exitWith {}; 
if(player diarySubjectExists "adressinfo") exitWith {}; 
player createDiarySubject ["adressinfo","www.zero-one.cc"]; 
player createDiarySubject ["ruleslink","Serverregeln"]; 
player createDiarySubject ["illegalitems","Illegales"]; 
player createDiarySubject ["controls","Steuerung"]; 
player createDiaryRecord ["ruleslink", [ "Allgemeines", "http://www.zero-one.cc/regeln" ] ]; 
player createDiaryRecord ["ruleslink", [ "Sirenen", 
	"
	Polizei Sirenen:<br/><br/>
	Yawalla:<br/>
	Die Durchsage ''Achtung Achtung hier spricht die Polizei, sofort stehen bleiben oder wir eröffnen das Feuer!'' - Diese Sirene<br/>
	ist eine aggressive Handlung und meist direkt an eine Person gerichtet. Wenn du diese Sirene hörst ist zur Vorsicht<br/>
	geraten, die Polizei hat die Erlaubnis auf dich zu schießen (sofern du gemeint bist)<br/><br/>
	Yelp:<br/>
	Das schrille trillern signalisiert, dass die Polizei dich anhalten und/oder eine Konversation mit dir herbei führen möchte.<br/><br/>
	Martinshorn:<br/>
	Das Martinshorn dient lediglich zur Warnung anderer Verkehrsteilnehmer und Personen<br/><br/>

	Feuerwehr Sirenen:<br/><br/>
	Pressluft Sirene:<br/>
	Die Pressluft Sirene wird in besonderen Fällen wie, Gefahrenstellen oder kurz vor der Ankunft an einem Einsatzort, verwendet.<br/><br/>
	Martinshorn:<br/>
	Das Martinshorn dient lediglich zur Warnung anderer Verkehrsteilnehmer und Personen<br/>
	"]
]; 
player createDiaryRecord ["medrules", [ "Allgemeines", 
	"
	Die Feuerwehr darf in keinem Falle in einen laufenden Schusswechsel einschreiten.<br/>
	Die Feuerwehr ist gesondert zu behandeln ( Ausrauben, Töten, Überfahren oder als Geisel nehmen ist nicht gestattet )<br/>
	In + extremfällen können Polizisten selbst entscheiden ob eine bestimmte Person inhaftiert werden sollte oder nicht.<br/>
	"] 
]; 
player createDiaryRecord ["Bußgeldkatalog", [ "Verkehrsdelikte", 
	"
	Fahren ohne Führerschein: 1.000€ / 5.000€<br/>
	Fahren ohne Licht bei Nacht: Verwarnung / max. 1.500€<br/>
	Überhöhte Geschwindigkeiten:<br/>
	Geschwindigkeitsüberschreitung ab 15 KM/h über Limit : 3.500€<br/>
	Geschwindigkeitsüberschreitung mehr als 35 KM/h über Limit : 5.000€ / max. 20.000€.<br/>
	Lärmbelästigung durch unnötiges Hupen: 7.000€<br/>
	Fahren auf der falschen Straßenseite: 2.500€<br/>
	Führen von illegalen Fahrzeugen: 35.000€ + Zerstörung des Fahrzeuges<br/>
	Fahrlässiges Überfahren eines anderen Spielers: 10.000€<br/>
	Fahren mit Karts auserhalb der Kartbahn : 25.000€ + Zerstörung des Fahrzeugs<br/>
	Mutwilliges Überfahren eines anderen Spielers: 100.000€ + Administrative Konsequenzen bei Wiederholung.<br/>
	Gefährliche Fahrweise : Verwarnung / Bei Wiederholung 5.000€/max. 25.000<br/>
	" ]
]; 
player createDiaryRecord ["Bußgeldkatalog", [ "Flugverkehr", "
					Fliegen ohne Lizenz: 10.000€ + Impounden des Fahrzeugs<br/>
					Schweben / Fliegen über bewohntem Gebiet unter 200m: 5.000€ / max. 25.000€.<br/>
					Landen auf Straßen: 25.000€ + Beschlagnahmung des Fahrzeugs.<br/>
					Landen in gesperrten Gebieten [z.B.: Polizeistationen]: 35.000€<br/>
					" ] ]; player createDiaryRecord ["Bußgeldkatalog", [ "Umgang mit der Polizei", "
					Das Tragen oder Besitzen von Polizeiausrüstung: 5.000€ / max. 50.000€ + Beschlagnahmung der Ausrüstung<br/>
					Widerstand gegen die Staatsgewalt: min 1.000€ / 10.000€<br/>
					Diebstahl von Polizeifahrzeugen: 25.000€ / 100.000€ <br/>
					Versuchter Diebstahl von Polizeifahrzeugen: 25.000€<br/>
					Nicht befolgen einer polizeilichen Anordnung: 5000€ / max. 10.000€, beim 2.mal Inhaftierung<br/>
					Beleidigung gegenüber der Polizei (Spielerisch): 500€ / max. 5.000€ bei Wiederholung bis 20.000€<br/>
					Beleidigung gegenüber der Polizei (Ernst gemeint): Administrative Konsequenzen<br/>
					Betreten der polizeilichen Sperrzone: Einmalige Verwarnung, anschließend 2.500€ Bußgeld + Gefängnis<br/>
					Befreien festgesetzter Personen: 20.000€<br/>
					Beschuss eines Beamten ohne Körpertreffer: 60.000€<br/>
					Beschuss eines Beamten mit Körpertreffer: 100.000€<br/>
					Töten eines Beamten: 150.000€<br/>
					Einlagern von PKWs während einer Kontrolle bzw. einer Verfolgung: 25.000€<br/>
					Einlagern von Helis während einer Kontrolle bzw. einer Verfolgung: 50.000€<br/>
					Einlagern von LKWs während einer Kontrolle bzw. einer Verfolgung: 150.000€<br/>
					" ] ]; player createDiaryRecord ["Bußgeldkatalog", [ "Drogendelikte", "
                    Drogenschmuggel/-handel: 100.000€ + Beschlagnahmung des Fahrzeugs<br/>
                    Drogenschmuggel/-handel bei Info durch Dealer/ Wanted Liste: 25.000€<br/>
                    Schmuggel mit verbotenen Tieren [Schildkröten]: 100.000€ + Beschlagnahmung des Fahrzeugs<br/>
					" ] ]; player createDiaryRecord ["Bußgeldkatalog", [ "Waffendelikte", "
                    Waffendelikte <br/>
                    Waffenbesitz ohne Lizenz: 10.000€ + Beschlagnahmung der Waffe<br/>
                    Mit offener Waffe durch eine Safezone laufen: 1.000€ / 10.000€ + Beschlagnahmung der Waffe<br/>
                    Besitz einer verbotenen Waffe: 50.000€ + Beschlagnahmen der Waffe<br/>
                    Schusswaffengebrauch innerhalb von Städten: wird vom Polizisten festgelegt / max. 100.000€<br/>
                    Geiselnahme: 100.000€ je Geiselnehmer + Jeder Geiselnehmer wird Inhaftiert<br/>
                    Überfall auf Person oder Fahrzeug: min.15.000€ / max 100.000€ <br/>
                    Mord: 50.000/max.100.000€<br/>
					" ] ]; player createDiaryRecord ["Bußgeldkatalog", [ "Störung der öffentlichen Ordnung", "
					Das Tragen von Kampftarnanzügen (Ghillie-Anzug) in bewohnten Gebieten ist verboten: max 10.000€ bei Wiederholung + Beschlagnahmung<br/>
					Lockpicking [versuchter Fahrzeugdiebstahl]: 5.000€<br/>
					Lockpicking + [Fahrzeugdiebstahl]: 25.000€ + Rückgabe an den Besitzer<br/>
					Banküberfall: 75.000€ + Inhaftierung<br/>
					Missachten / Umfahren eines Checkpoints: 10.000€<br/>
					Diebstahl / Schauen in Rucksack : 10.000€<br/>
					Ernst gemeinte Beleidigung: Kick als einmalige Verwarnung. Bei Wiederholung Ban!<br/><br/>
					Aufstand: Inhaftierung aller Beteiligten + Beschlagnahmung von Fahrzeugen und Waffen + Bußgeld von 50.000/max. 10.000<br/>
					" ] ]; player createDiaryRecord ["serverrules", [ "Exploits", "
				Die folgenden Taten werden als Bugusing/Exploiten angesehen und resultieren in einem Kick / TimeBan / Ban.<br/><br/>

				1. Suizid begehen, um dem Rollenspiel zu entgehen (z.B. um einem Tazer, einer Verhaftung usw. zu entgehen)<br/>
				2. Ausloggen um einer Verhaftung zu entgehen.<br/>
				3. Duplizieren von Gegenständen und / oder Geld. Wenn dir jemand einen unüblich hohen Betrag an Geld sendet, melde dies umgehend einem Admin!<br/>
				4. Das Nutzen von eindeutig gecheateten Gegenständen. Melde diese umgehend einem Admin, sonst riskierst du selbst einen Ban.<br/>
				5. Bugusing, um sich oder anderen Spielern einen Vorteil zu verschaffen.<br/><br/>
				" ] ]; player createDiaryRecord["safezones", [ "Safezones", "
					Jegliche Handlung*, die einen anderen Spieler schaden könnte, ist in diesem Bereich strikt verboten. Verstoß wird mit Bann geahndet.<br/><br/>
					* z.B. : Explosionen verursachen, Töten, Ausrauben, Fesseln, Niederschlagen, etw. klauen ETC.!<br/>
					Als Safezone gilt :<br/>
					- Umkreis von 100M um ATM<br/>
					- Umkreis von 100M um Fahrzeug- spawn/händler<br/>
					- Auf der Map markierter Bereich<br/>
					Eine Safezone wird außer Kraft gesetzt wenn ein verfolgter Spieler diese zum Schutz nutzten möchte.<br/>
					Dabei kann es auch nicht involvierte Spieler treffen, sollte aber möglichst vermieden werden.<br/>
					Polizisten haben das recht gegen Illgalen Aktivitäten vorzugehen selbst wenn diese in der Savezone stattfinden.<br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Verbotene Handlungen/ Blacklist", "
				Sieh das als deine einzige Warnung an. Wir scherzen nicht.<br/><br/>

				1. Hacken<br/>
				2. Cheaten<br/>
				3. Exploiten (Siehe 'Exploits')<br/>
				4. Drei oder mehr mal gekickt werden.<br/><br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Interaktion mit der Polizei", "
				Die folgenden Handlungen sind verboten und können zu einem Kick/Bann führen:<br/><br/>
				1. Bei Verhaftung ist Aussteigen aus dem Polizeifahrzeug und / oder Ausloggen ein Bangrund.<br/>
				2. Zivilisten können dafür verhaftet werden, wenn sie in Rucksäcke oder Fahrzeuge von Polizisten sehen.<br/>
				3. Zivilisten können verhaftet werden, wenn sie Polizisten folgen um ihre Position zu verraten.<br/>
				4. Zivilisten oder Rebellen, die ohne RP-Grund Polizisten töten werden als RDMer angesehen.<br/>
				5. Polizisten zu folgen und/oder diese für längere Zeit zu stören wird als Stalken angesehen und kann zu einem Kick/Bann führen.<br/>
				6. Polizisten aktiv daran zu hindern, ihren Pflichten nachzukommen kann zu einer Verhaftung führen. In Extremfällen führt dies auch zu einem Kick/Bann<br/><br/>
				7. Spielt nicht immer so im Kriegswahn, lasst auch mal gnade vor recht ergehen, und lasst den Polizisten Ihr vergnügen.<br/><br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Allgemeine Verhaltensregeln", "
				Die folgenden Handlungen sind verboten und können zu einem Kick/Bann führen:<br/><br/>
				1. Unangemessene Namen (Rassistisch, Pornografisch, Volksverhetzend und Beleidigende).<br/>
				2. Beleidigungen gegenüber anderen Spielern.<br/>
				3. Spammen des Chats sowohl Text als auch Voice.<br/>
				4. Fremdwerbung...<br/>
				5. SMS Spam...<br/>
				6. Garagen blockieren..<br/><br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Wasserfahrzeuge", "
				Die folgenden Handlungen sind verboten und können zu einem Kick/Bann führen:<br/><br/>

				1. Wiederholt Wasserfahrzeuge ohne die Erlaubnis des Eigentümers zu verschieben.<br/>
				2. Ein Wasserfahrzeug verschieben, um andere Spieler zu Verletzen oder zu Töten.<br/>
				3. Mutwillig schwimmende oder tauchende Spieler zu überfahren.<br/><br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Luftfahrzeuge", "
				Die folgenden Handlungen sind verboten und können zu einem Kick/Bann führen:<br/><br/>

				1. Mutwillig Luftfahrzeuge als Waffe zu verwenden, z.B. Objekte damit zu rammen.<br/>
				2. Innerorts in einer Flughöhe von unter 50M zu fliegen.<br/>
				3. Luftfahrzeuge zu stehlen, indem man neben einem landenden Luftfahrzeug wartet bis der Pilot aussteigt um dann selbst schnell einzusteigen.<br/><br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Verkehr", "
				Die folgenden Handlungen sind verboten und können zu einem Kick/Bann führen:<br/><br/>

				1. Mutwillig Spieler zu überfahren (VRDM).<br/>
				2. Sich selber mutwillig vor Fahrzeuge zu werfen, um verletzt zu werden.<br/>
				3. Fahrzeuge zu rammen, um eine Explosion zu verursachen. <br/>
				4. Permanent zu versuchen Fahrzeuge zu betreten für die man keine Erlaubnis besitzt, um den Fahrzeugbesitzer zu stören.<br/>
				5. Ein Fahrzeug zu stehlen, nur um es zu beschädigen oder zu zerstören.<br/>
				6. Eines oder mehrere Fahrzeuge zu kaufen um einen der oberen Punkte zu begehen.<br/>
				7. Der Beschuss eines Fahrzeugs ist nur erlaubt, um es zu stoppen oder um Warnschüsse abzugeben. (RP)<br/>
				8. Fahrzeuge die in einem Banküberfall involviert sind, sind speziell zu behandeln und dürfen zerstört werden.<br/>
				9. STVO beachten. Ausserdem ist Rechtsfahrgebot!<br/>
				10. Ab Daemmerung ist auf oeffentlichen Strassen für ALLE (auch Polizei) Lichtpflicht.<br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Kommunikation", "
				Die folgenden Handlungen sind verboten und können zu einem Kick/Bann führen:<br/><br/>

				1. Mic Spam(Abspielen von Musik oder ständiges Quasseln über Seitenkanal)<br/>
				2. Spam in jeglicher Form.<br/>
				3. Rassistische Äusserungen im Chat.<br/>
				4. Polizisten müssen, falls sie sich auf dem TS3-Server befinden, zwingend im Polizei-Channel sein.<br/>
				5. Zivilisten ist es verboten den Polizei-Channel zu betreten um Informationen zu Fahndungen etc. zu bekommen.<br/><br/>
				" ] ];
player createDiaryRecord ["serverrules", [ "Random Deathmatching (RDM)", "
				Die folgenden Handlungen sind einzuhalten und können bei Nichtbeachtung zu einem Kick/Bann führen:<br/><br/>

				1. Spieler ohne einen vernünftigen RP-Grund zu töten.<br/>
				2. Einen Aufstand anzuzetteln ist kein Grund für RDM, selbst bei Polizisten.<br/>
				3. Polizisten und Zivilisten/Rebellen dürfen nur mit einem vernünftigen RP-Grund an einer Schießerei teilnehmen.<br/>
				4. Es ist KEIN RDM, falls du in einem Kreuzfeuer getötet wirst.<br/>
				5. Es ist KEIN RDM, falls du einen Spieler tötest um dich oder andere zu beschützen.<br/>
				6. Einen Spieler zu töten, ohne ihm eine angemessene Zeitspanne zum Reagieren und Befolgen von Anweisungen zu geben ist RDM.<br/><br/>

				Administratoren haben das Recht diese Regeln je nach Fall in eigenem Ermessen zu bewerten.<br/><br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Life Regeln", "
				Regeln betreffen alle, sowohl Zivilisten als auch Polizisten.<br/><br/>

				Verstoss gegen folgende Regeln könnte zum Kick oder bei wiederholtem Verstoss zum Ban fuehren.<br/><br/>

				1. Wenn du stirbst, musst du mindestens 10 Minuten warten, bevor du an die Stelle zurueckkehrst. Ausnahme ist eine Kampfsituation ... dort darf man nicht wiederkehren.<br/>
				2. Wer als Verbrecher stirbt, verliert alle Straftaten. Im Umkehrschluss darfst du das Opfer aber auch keine Rache suchen.<br/>
				3. Beim Reconnect sowie auch Selbstmord bleiben die Straftaten erhalten.<br/>
				4. Wahlloses Umbringen von Spielern ohne jeglichen RPG Hintergrund ist Verboten!<br/>
				5. Mitgliedschaft bei Mafia/ Rebellen ist kein Freibrief fuer wahlloses Toeten ohne RPG Hintergrund.<br/>
				" ] ]; player createDiaryRecord ["serverrules", [ "Der Admin", "
				Der Admin hat das letzte Wort, sein Wort ist im Zweifelsfalle Gesetz.<br/>
				Dies ist ein RPG (Role Play Game) verhaltet euch bitte wie im echten Leben.<br/><br/>
				" ] ]; player createDiaryRecord ["adressinfo", [ "Teamspeak3", "
				<br/>ts.zero-one.cc<br/>
				" ] ]; player createDiaryRecord ["adressinfo", [ "Website", "
				<br/>
				Hier könnt ihr Neuigkeiten, Änderungen und Reports lesen.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Polizisten sind KEINE Mods/Admins", "
				Für Polizisten gelten nach wie vor Ingame-Regeln und sind keine Admins oder Mods. Merkt euch das!<br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Verhandlungen in Krisensituationen", "
				Verhandlungen in Krisensituationen müssen durch den General oder einen Oberst durchgeführt werden. Falls keiner berfügbar ist, muss dies ein Beamter mit dem nächsthöchsten Rang machen.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Zentralbank", "
				1. Die Zentralbank ist Sperrgebiet für Zivilisten, außer wenn sie eine gültige Authorisierung für das Betreten erhalten haben.<br/>
				2. Luftfahrzeuge, die über die Zentralbank fliegen, können können dazu aufgefordert werden den Bereich zu verlassen oder im Zweifelsfall ausgeschaltet werden.<br/>
				3. Falls die Zentralbank ausgeraubt wird, sollten alle verfuegbaren Polizeieinheiten helfen dies zu verhindern. Kleinere Straftaten haben in dieser Situation keine Priorität.<br/>
				4. Tazer sind die erste Wahl, scharfe Munition nur im hoechstem Notfall verwenden.<br/>
				5. Die Polizei darf nicht blind in das Bankgebäude schießen. Sie müssen immer sicherstellen, dass sie nicht auf Unbeteiligte feuern.<br/>
				6. Unbeteiligte Zivilisten müssen aus der Gefahrenzone evakuiert werden.<br/>
				7. Zivilisten, die die Polizei daran hindern den Bankraub zu verteiteln können als Komplizen angesehen werden.<br/><br/>
				8. Das ausrauben der Staatsbank ist nur zulässig, sobald 4 oder mehr Cops Online sind.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Luftfahrzeuge", "
				1. Luftfahrzeuge dürfen ohne Authorisierung nicht innerhalb von Städten landen.<br/>
				2. Luftfahrzeuge dürfen nicht auf Straßen landen.<br/>
				3. Die Polizei darf ein temporäres Landeverbot für bestimmte Gebiete verhängen.<br/>
				4. Luftfahrzeuge dürfen Innerorts nicht unter 200M Höhe fliegen.<br/>
				5. Zivile Luftfahrzeuge dürfen nicht über Städten schweben. Dies gilt nicht für die Polizei.<br/><br/>

				" ] ]; player createDiaryRecord ["policerules", [ "Illegale Gebiete", "
				1. Gang/ Mafia Gebiete sind keine illegalen Zonen. Daher dürfen Polizisten diese Gebiete immer betreten, aber ohne hinreichende Beweise für illegale Aktivitäten niemanden festnehmen.<br/>
				2. Gangster und Rebellen nutzen diese Gebiete gerne als Stuetzpunkt. Mitglieder der Regierung, werden dort nicht gerne gesehen.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Patrouille", "
				Der Polizei ist es erlaubt zu Fuß oder via Fahrzeug auf der Insel zu patrouillieren, um verlassene Fahrzeuge und illegale Aktivitäten aufzudecken.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Kontrollen", "
				Polizisten werden dazu aufgefordert Kontrollen an strategischen Punkten zu errichten, um illegale Aktivitäten zu verhindern und die Sicherheit zu erhöhen.<br/><br/>

				1. Eine Kontrolle muss aus 2 oder mehr Beamten bestehen.<br/>
				2. Eine Straßensperre darf nicht innerhalb von 300m in der Nähe einer Illegalen Zone errichtet werden.<br/>
				3. Straßensperren dürfen nur auf Straßen errichtet werden und müssen nicht angekündigt oder markiert werden.<br/><br/>


				Prozedur einer Kontrolle:<br/>
				1. Fordere den Fahrer auf das Fahrzeug zu stoppen und den Motor abzuschalten.<br/>
				2. Frage den Fahrer und sämtliche Insassen des Fahrzeugs nach (versteckten) Waffen.<br/>
				3. Fordere den Fahrer und sämtliche Insassen auf, nach und nach das Fahrzeug zu verlassen. Falls sie Waffen tragen verhafte sie nicht sofort, sondern fordere sie auf die Waffen nicht auf dich zu richten.<br/>
				4. Frage nach dem Reiseziel der Gruppe.<br/>
				5. Frage sie ob sie einer Durchsuchung zustimmen.<br/>
				6. Falls sie einer Durchsuchung zustimmen darfst du ihnen Handschellen anlegen und sie durchsuchen.<br/>
				7. Falls sie einer Durchsuchung NICHT zustimmen, musst du sie laufen lassen OHNE sie oder das Fahrzeug zu durchsuchen AUSSER es gibt einen begründeten Verdacht auf eine Straftat bzw. das direkte Durchsuchen eines Bundespolizisten.<br/>
				8. Nach der Durchsuchung musst du den Personen Zeit lassen das Fahrzeug zu betreten und den Ort zu verlassen.<br/>
			    9. Falls Verstöße gegen Gesetze festgestellt wurden, dürfen dem entsprechende Tickets und Strafen verhängt werden.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Fahrzeuge", "
				1. Fahrzeuge auf Parkplätzen oder anderweitig vernünftig geparkte Fahrzeuge sollen in Ruhe gelassen werden.<br/>
				2. Fahrzeuge die verlassen oder zerstört erscheinen können beschlagnahmt werden, nachdem der Halter ermittelt wurde und dieser der Beschlagnahmung zustimmt.<br/>
				3. Wasserfahrzeuge müssen vernünftig geparkt werden.<br/>
				4. Fahrzeuge die seit einiger Zeit nicht bewegt wurden oder der Halter nicht mehr auf dem Server ist, dürfen beschlagnahmt werden.<br/>
				5. Das Beschlagnahmen von Fahrzeugen ist ein essenzieller Teil der Polizeiarbeit. Es hilft gegen Lag und hält die Map sauber.<br/>
				6. Die Hauptwaffe eines Hunter HMG oder Polizeischnellbootes soll nur zum Ausschalten des Fahrzeuges, nicht zum Töten der Insassen genutzt werden.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Geschwindigkeitsüberschreitung", "
				Die folgenden Geschwindigkeitslimits gelten auf Altis:<br/>

				Ausnahmezone KavalaMarkt etc.: 30KM/H
				Innerhalb der Stadt: 50 KM/H <br/>
				Ausserhalb: 120 KM/H <br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Regeln für die Stadt", "
				1. Beamte dürfen in großen Städten - wie Kavala, Athira, Pyrgos oder Sofia - patrouillieren.<br/>
				2. Beamte sollten wenn möglich beim Autohändler nach verlassenen Fahrzeugen suchen, die beschlagnahmt werden können.<br/>
				3. Beamte sollen nicht einfach in der Stadt herumlungern.<br/>
				4. Beamte können die Stadt in größeren Gruppen betreten, falls sich dort Tumulte oder Aufstände bilden sollten. Wenn die Ordnung wieder hergestellt wurde sollen sie das Areal verlassen.<br/>
				5. Es darf grundlos kein Kriegsrecht ausgerufen werden.<br/>
			    6. Polizeipräsidien und ähnliche Gebäude sind Sperrgebiete für Zivilisten, insofern sie keine Authorisierung erhalten haben diese zu betreten.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Festnahmen und Bußgelder", "
				Kriminelle, die eine Gefahr für sich oder andere darstellen, sollten festgenommen werden.<br/><br/>

				1. Polizisten dürfen niemanden festnehmen wenn der Spieler ein Bußgeld bezahlt hat.<br/>
				2. Dem Verdächtigen muss erklärt werden weshalb er festgehalten wird.<br/>
				3. Wenn ein Zivilist per Haftbefehl gesucht wird, kann er jederzeit festgenommen werden. Tödliche Gewalt darf nur im absoluten Notfall angewendet werden.<br/><br/>

				Zivilisten, die eine Ordnungswidrigkeit begangen haben und keine weitere Gefahr für sich oder andere darstellen, sollten mit einem Bußgeld verwarnt werden.<br/>

				1. Bußgelder müssen angemessen sein und sich anhand der begangenen Ordnungswidrigkeit richten.<br/>
				2. Wenn der Beschuldigte es ablehnt das Bußgeld zu zahlen, kann er festgenommen werden.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Waffen", "
				Angehörigen der Streitkräfte und Polizeieinheiten ist es strengstens untersagt Zivilisten mit Waffen zu versorgen.<br/><br/>

				1. Mit Lizenz dürfen Einwohner alle beim legalen Waffenhändler erhältlichen Waffen tragen.<br/><br/>

				Alle anderen Waffen sind illegal.<br/><br/>

				1. Innerorts ist es Zivilisten nicht erlaubt eine Waffe offen zu führen.<br/>
				2. Außerorts ist es Zivilisten gestattet eine legale Waffe zu führen, solange sie Durchsuchungen durch Polizeibeamte zustimmen und einen Waffenschein besitzen.<br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Nicht-Tödliche Gewalt", "
				Die Nutzung des Tazers zählt zur Ausübung von Nicht-Tödlicher Gewalt.<br/><br/>

				1. Taser sollen genutzt werden um unkooperative Zivilisten außer Gefecht zu setzen, um diese anschließend festzunehmen.<br/>
				2. Das Abfeuern des Tasers darf nur in Notsituationen geschehen. Ein Abfeuern ohne wichtigen Grund stellt ein Grund für eine Suspendierung dar.<br/>
				3. Die Nutzung des Tasers darf nur unter Beachtung der geltenden Gesetze erfolgen.<br/>
				4. Auch das 'Trollen' vor einem Serverrestart oder bei Langeweile ist zu Unterbinden.<br/><br/>
				" ] ]; player createDiaryRecord ["policerules", [ "Razzien/ Raiding", "
				Zur Prävention von Straftaten dürfen Polizeibeamte Razzien durchführen.<br/><br/>

				1. Um eine Razzia in einem Gebiet durchzuführen müssen mindestens vier (4) Beamte involviert sein und es muss mindestens ein Höherrangiger dabei sein.<br/>
				2. Alle Zivilisten im Gebiet der Razzia dürfen festgehalten und durchsucht werden. Sie müssen freigelassen werden wenn keine Straftaten festgestellt wurden.<br/>
				3. Verstärkung ist legal, jedoch darf die 10 Minuten Regel nach dem Tod nicht verletzt werden.<br/>
				4. Nach einer Razzia (ob erfolgreich oder nicht) ist das Gebiet in dem sie stattgefunden hat für 20 Minuten für weitere Razzien gesperrt. Alle Beamten haben das Gebiet unverzüglich zu verlassen.<br/></br>
				" ] ]; player createDiaryRecord ["policerules", [ "Rangfolge", "

				Die Rangfolge auf dem Server:<br/>
                1. Polizeidirektor<br/>
				2. Polizeirat<br/>
				3. Hauptkommissar<br/>
				4. Oberkommissar<br/>
				5. Kommissar<br/>
				6. Hauptwachtmeister<br/>
				7. Oberwachtmeister<br/>
				8. Wachtmeister<br/>
				9. Anwärter<br/><br/>

				" ] ]; player createDiaryRecord ["policerules", [ "Tödliche Gewalt", "
				1. Das Anwenden tödlicher Gewalt ist nur erlaubt um in Situationen, in denen Nicht-tödliche Gewalt nicht effektiv ist, sein eigenes Leben oder das eines anderen Spielers zu retten.</br>
				2. Das grundlose Abfeuern von Waffen ist nur auf Übungsplätzen und in Notsituationen erlaubt. Fehlverhalten fuehrt zu Ausschluss aus der Regierung.</br></br>
				" ] ]; player createDiaryRecord ["illegalitems", [ localize "STR_Briefing_Illegal_Reb",localize "STR_Briefing_Illegal_Reb_List" ] ]; player createDiaryRecord ["illegalitems", [ localize "STR_Briefing_Illegal_Gang",localize "STR_Briefing_Illegal_Gang_List" ] ]; player createDiaryRecord ["illegalitems", [ localize "STR_Briefing_Illegal_Vehicle",localize "STR_Briefing_Illegal_Vehicle_List" ] ]; player createDiaryRecord ["illegalitems", [ localize "STR_Briefing_Illegal_Weapons",localize "STR_Briefing_Illegal_Weapons_List" ] ]; player createDiaryRecord ["illegalitems", [ localize "STR_Briefing_Illegal_Items",localize "STR_Briefing_Illegal_Items_List" ] ]; player createDiaryRecord ["controls", [ "Controls",localize "STR_Briefing_Controls" ] ];
