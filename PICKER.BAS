100 ' Texas Lotto Generator version 0.0.1
200 ' By: Jeff Holst and Gary Stevens
300 ' Date: May 10, 2019
400 ' Last Modified: May 27, 2019
500 ' 
600 ' The following variables are the ones to set per lotto game
700 '
800 ' BALLCOUNT%          - Number of balls in game
900 ' BALLMINNUMBER%      - Lowest ball number in game
1000 ' BALLMAXNUMBER%      - Highest ball number in game
1100 ' HASBONUSBALL%       - Is there a bonus ball? 0 = false, 1 = true
1200 ' BONUSBALLMINNUMBER% - Lowest bonus ball number
1300 ' BONUSBALLMAXNUMBER% - Allow duplicate numbers? 0 = false, 1 = true
1400 ' 
1500 ' ******** Variables below here probably do not need to be tweaked
1600 ' 
1700 DIM BALLS%(12)           ' Array of normal ball values
1800 DIM SORTEDBALLS%(12)     ' Array of sorted ball values
1900 DIM TEMPBALLS%(100)      ' Array of temp ball values
2000 BONUSBALL% = 0           ' Value of bonus ball 
2100 ORDERNUMBERS% = 0        ' Order numbers? 0 = false, 1 = true
2200 GAMENAME$ = ""           ' Name of game
2300 FIRSTRUN% = 1            ' Display a random game on first run
2400 ' 
2500 ' 
2600 RANDOMIZE TIMER
2700 CLS
2800 GOTO 29300 ' START
2900 ' 
3000 ' **********************************************************
3100 LOCATE 1,1
3200 COLOR 6,0
3300 PRINT "  ___                    _          _ _                      "
3400 PRINT " | _ \_____ __ _____ _ _| |__  __ _| | |                     "
3500 PRINT " |  _/ _ \ V  V / -_) '_| '_ \/ _` | | |                     "
3600 PRINT " |_| \___/\_/\_/\___|_| |_.__/\__,_|_|_|                     " 
3700 '
3800 PRINT "                                                             "
3900 GAMENAME$ = "Powerball"                            
4000 BALLCOUNT% = 5
4100 BALLMINNUMBER% = 1
4200 BALLMAXNUMBER% = 69
4300 HASBONUSBALL% = 1
4400 BONUSBALLMINNUMBER% = 1
4500 BONUSBALLMAXNUMBER% = 35
4600 ALLOWDUPES% = 0
4700 GOTO 18500
4800 '
4900 ' ***********************************************************
5000 LOCATE 1,1
5100 COLOR 6,0
5200 PRINT "  __   _                 __  __ _ _ _ _                      "
5300 PRINT " |  \/  |___ __ _ __ _  |  \/  (_) | (_)___ _ _  ___         "
5400 PRINT " | |\/| / -_) _` / _` | | |\/| | | | | / _ \ ' \(_-<         "
5500 PRINT " |_|  |_\___\__, \__,_| |_|  |_|_|_|_|_\___/_||_/__/         "
5600 PRINT "            |___/                                            "
5700 '
5800 GAMENAME$ = "Mega Millions"  
5900 BALLCOUNT% = 5
6000 BALLMINNUMBER% = 1
6100 BALLMAXNUMBER% = 70
6200 HASBONUSBALL% = 1
6300 BONUSBALLMINNUMBER% = 1
6400 BONUSBALLMAXNUMBER% = 25
6500 ALLOWDUPES% = 0
6600 GOTO 18500 
6700 ' 
6800 ' ***********************************************************
6900 LOCATE 1,1
7000 COLOR 6,0
7100 PRINT "  _        _   _         _____                               "            
7200 PRINT " | |   ___| |_| |_ ___  |_   _|____ ____ _ ___               "
7300 PRINT " | |__/ _ \  _|  _/ _ \   | |/ -_) \ / _` (_-<               "
7400 PRINT " |____\___/\__|\__\___/   |_|\___/_\_\__,_/__/               "
7500 PRINT "                                                             "
7600 '
7700 GAMENAME$ = "Lotto Texas"  
7800 BALLCOUNT% = 6
7900 BALLMINNUMBER% = 1
8000 BALLMAXNUMBER% = 54
8100 HASBONUSBALL% = 0
8200 BONUSBALLMINNUMBER% = 0
8300 BONUSBALLMAXNUMBER% = 0
8400 ALLOWDUPES% = 0
8500 GOTO 18500 
8600 ' 
8700 ' ***********************************************************
8800 LOCATE 1,1
8900 COLOR 6,0
9000 PRINT "  _____                  _____              ___ _            "       
9100 PRINT " |_   _|____ ____ _ ___ |_   _|_ __ _____  / __| |_ ___ _ __ "
9200 PRINT "   | |/ -_) \ / _` (_-<   | | \ V  V / _ \ \__ \  _/ -_) '_ \"
9300 PRINT "   |_|\___/_\_\__,_/__/   |_|  \_/\_/\___/ |___/\__\___| .__/"
9400 PRINT "                                                       |_|   "
9500 PRINT '
9600 GAMENAME$ = "Texas Two Step"  
9700 BALLCOUNT% = 4
9800 BALLMINNUMBER% = 1
9900 BALLMAXNUMBER% = 35
10000 HASBONUSBALL% = 1
10100 BONUSBALLMINNUMBER% = 1
10200 BONUSBALLMAXNUMBER% = 35
10300 ALLOWDUPES% = 0
10400 GOTO 18500 
10500 ' 
10600 ' ***********************************************************
10700 LOCATE 1,1
10800 COLOR 6,0
10900 PRINT "    _   _ _             _  _     _   _    _                  "        
11000 PRINT "   /_\ | | |  ___ _ _  | \| |___| |_| |_ (_)_ _  __ _        "
11100 PRINT "  / _ \| | | / _ \ '_| | .` / _ \  _| ' \| | ' \/ _` |       "
11200 PRINT " /_/ \_\_|_| \___/_|   |_|\_\___/\__|_||_|_|_||_\__, |       "
11300 PRINT "                                                |___/        "
11400 PRINT '
11500 GAMENAME$ = "All or Nothing"  
11600 BALLCOUNT% = 12
11700 BALLMINNUMBER% = 1
11800 BALLMAXNUMBER% = 24
11900 HASBONUSBALL% = 0
12000 BONUSBALLMINNUMBER% = 0
12100 BONUSBALLMAXNUMBER% = 0
12200 ALLOWDUPES% = 0
12300 GOTO 18500 
12400 ' 
12500 ' ***********************************************************
12600 LOCATE 1,1
12700 COLOR 6,0
12800 PRINT "  ___ _    _     ____                                        "
12900 PRINT " | _ (_)__| |__ |__ /                                        "
13000 PRINT " |  _/ / _| / /  |_ \                                        "
13100 PRINT " |_| |_\__|_\_\ |___/                                        "
13200 PRINT "                                                             "
13300 PRINT '
13400 GAMENAME$ = "Pick 3"  
13500 BALLCOUNT% = 3
13600 BALLMINNUMBER% = 0
13700 BALLMAXNUMBER% = 9
13800 HASBONUSBALL% = 0
13900 BONUSBALLMINNUMBER% = 0
14000 BONUSBALLMAXNUMBER% = 0
14100 ALLOWDUPES% = 1
14200 GOTO 18500                 
14300 ' 
14400 ' ***********************************************************
14500 LOCATE 1,1
14600 COLOR 6,0
14700 PRINT "  ___       _ _        _ _                                   "
14800 PRINT " |   \ __ _(_) |_  _  | | |                                  "
14900 PRINT " | |) / _` | | | || | |_  _|                                 "
15000 PRINT " |___/\__,_|_|_|\_, |   |_|                                  "
15100 PRINT "                |__/                                         "
15200 PRINT '
15300 GAMENAME$ = "Daily 4"  
15400 BALLCOUNT% = 4
15500 BALLMINNUMBER% = 0
15600 BALLMAXNUMBER% = 9
15700 HASBONUSBALL% = 0
15800 BONUSBALLMINNUMBER% = 0
15900 BONUSBALLMAXNUMBER% = 0
16000 ALLOWDUPES% = 1
16100 GOTO 18500   
16200 ' 
16300 ' ***********************************************************
16400 LOCATE 1,1
16500 COLOR 6,0
16600 PRINT "   ___         _      ___ _                                  "  
16700 PRINT "  / __|__ _ __| |_   | __(_)_ _____                          "
16800 PRINT " | (__/ _` (_-< ' \  | _|| \ V / -_)                         "
16900 PRINT "  \___\__,_/__/_||_| |_| |_|\_/\___|                         "
17000 PRINT "                                                             "
17100 PRINT '
17200 GAMENAME$ = "Cash Five"  
17300 BALLCOUNT% = 5
17400 BALLMINNUMBER% = 1
17500 BALLMAXNUMBER% = 35
17600 HASBONUSBALL% = 0
17700 BONUSBALLMINNUMBER% = 0
17800 BONUSBALLMAXNUMBER% = 0
17900 ALLOWDUPES% = 0 
18000 ' 
18100 ' ***********************************************************   
18200 '
18300 ' GENERATE BALLS
18400 ' 
18500 IF ALLOWDUPES% = 0 THEN GOTO 20000
18600 '
18700 ' **************** Generate Balls Dupes OK *****************
18800 '
18900 FOR LOOP1% = 0 TO BALLCOUNT% - 1
19000 RBALL% = INT(RND * (BALLMAXNUMBER% + 1)) + BALLMINNUMBER%
19100 BALLS%(LOOP1%) = RBALL%
19200 SORTEDBALLS%(LOOP1%) = RBALL%
19300 NEXT LOOP1%
19400 GOTO 22200
19500 '
19600 ' ************ Generate Balls No Dupes **********************
19700 '
19800 ' Generate a temp array of all possible balls
19900 '
20000 COUNTER% = BALLMINNUMBER%
20100 FOR LOOP1% = 0 TO BALLMAXNUMBER% - BALLMINNUMBER%
20200 TEMPBALLS%(LOOP1%) = COUNTER%
20300 COUNTER% = COUNTER% + 1
20400 NEXT LOOP1%
20500 '
20600 ' Randomize the temp ball array
20700 '
20800 FOR LOOP1% = 0 TO BALLMAXNUMBER% - BALLMINNUMBER%
20900 TEMP% = TEMPBALLS%(LOOP1%)
21000 INDEX% = INT(RND * BALLMAXNUMBER% - BALLMINNUMBER% + 1)
21100 '
21200 TEMPBALLS%(LOOP1%) = TEMPBALLS%(INDEX%)
21300 TEMPBALLS%(INDEX%) = TEMP%
21400 NEXT LOOP1%
21500 '
21600 ' Pull appropriate number of randomized temp balls to actual balls array
21700 '
21800 FOR LOOP1% = 0 TO BALLCOUNT% - 1
21900 BALLS%(LOOP1%) = TEMPBALLS%(LOOP1%)
22000 SORTEDBALLS%(LOOP1%) = TEMPBALLS%(LOOP1%)
22100 NEXT LOOP1%
22200 LOCATE 7,1
22300 PRINT "                                                                            "
22400 LOCATE 7,1
22500 COLOR 5,0
22600 TEMP1$ = STR$(BALLMINNUMBER%)
22700 TEMP1$ = MID$(TEMP1$, 2, LEN(TEMP1$) - 1)
22800 TEMP2$ = STR$(BALLMAXNUMBER%)
22900 TEMP2$ = MID$(TEMP2$, 2, LEN(TEMP2$) - 1)
23000 TITLE$ = "T E X A S <> " + GAMENAME$ + " :" + STR$(BALLCOUNT%) + "[" + TEMP1$ + "-" + TEMP2$ + "]"
23100 IF HASBONUSBALL% = 0 THEN GOTO 24100
23200 '
23300 ' ********************* Select Bonus Ball *******************
23400 '
23500 BONUSBALL% = INT(RND * BONUSBALLMAXNUMBER%) + BONUSBALLMINNUMBER%
23600 TEMP1$ = STR$(BONUSBALLMINNUMBER%)
23700 TEMP1$ = MID$(TEMP1$, 2, LEN(TEMP1$) - 1)
23800 TEMP2$ = STR$(BONUSBALLMAXNUMBER%)
23900 TEMP2$ = MID$(TEMP2$, 2, LEN(TEMP2$) - 1)
24000 TITLE$ = TITLE$ + " and" + STR$(BONUSBALLMINNUMBER%) + "[" + TEMP1$ + "-" + TEMP2$ + "]"
24100 PRINT TITLE$
24200 '
24300 ' ********************* Bubble Sort *************************
24400 '
24500 FOR LOOP1% = 0 TO BALLCOUNT% - 2
24600 FOR LOOP2% = 0 TO BALLCOUNT% - 2
24700 IF SORTEDBALLS%(LOOP2%) > SORTEDBALLS%(LOOP2%  + 1) THEN GOSUB 25100
24800 NEXT LOOP2%
24900 NEXT LOOP1%
25000 GOTO 25800
25100 TEMP% = SORTEDBALLS%(LOOP2%)
25200 SORTEDBALLS%(LOOP2%) = SORTEDBALLS%(LOOP2% + 1)
25300 SORTEDBALLS%(LOOP2% + 1) = TEMP%
25400 RETURN
25500 GOSUB 25800
25600 END
25700 '
25800 ' ****************** Print Balls ****************************
25900 '
26000 LOCATE 9,1
26100 PRINT "                                                                            "
26200 LOCATE 9,1
26300 COLOR 11,0
26400 PRINT GAMENAME$ + ":"
26500 LOCATE 9, LEN(GAMENAME$) + 2
26600 OUTPUT$ = ""
26700 COLOR 5,0
26800 ADDCOMMA% = 0
26900 COLOR 12, 0
27000 FOR LOOP1% = 0 TO BALLCOUNT% - 1
27100 IF ADDCOMMA% = 1 THEN OUTPUT$ = OUTPUT$ + ",": LOCATE 9, LEN(GAMENAME$) + LEN(OUTPUT$) + 1: PRINT ","
27200 IF ORDERNUMBERS% = 0 THEN MYOUT$ = STR$(BALLS%(LOOP1%)) ELSE MYOUT$ = STR$(SORTEDBALLS%(LOOP1%))
27300 LOCATE 9, LEN(GAMENAME$) + LEN(OUTPUT$) + 2
27400 PRINT MYOUT$
27500 OUTPUT$ = OUTPUT$ + MYOUT$
27600 ADDCOMMA% = 1
27700 NEXT LOOP1%
27800 IF HASBONUSBALL% = 0 THEN GOTO 29300
27900 COLOR 11,0
28000 LOCATE 9, LEN(GAMENAME$) + LEN(OUTPUT$) + 2
28100 PRINT " Bonus Ball:"
28200 LOCATE 9, LEN(GAMENAME$) + LEN(OUTPUT$) + 14
28300 COLOR 12,0
28400 PRINT STR$(BONUSBALL%)
28500 ' 
28600 ' ***********************************************************
28700 '   ___ _            _   
28800 '  / __| |_ __ _ _ _| |_ 
28900 '  \__ \  _/ _` | '_|  _|
29000 '  |___/\__\__,_|_|  \__|
29100 '
29200 '
29300 LOCATE 11,1
29400 COLOR 2,0
29500 PRINT "(Q)uit, "
29600 IF ORDERNUMBERS% = 1 THEN COLOR 14, 0
29700 LOCATE 11, 9
29800 PRINT "in (O)rder"
29900 COLOR 2, 0
30000 LOCATE 11, 19
30100 PRINT ", "
30200 IF ORDERNUMBERS% = 0 THEN COLOR 14, 0
30300 LOCATE 11, 21
30400 PRINT "(U)nsorted"
30500 COLOR 2, 0
30600 LOCATE 11, 31
30700 PRINT ", (P)owerball, (M)ega Millions"
30800 PRINT ""
30900 PRINT "(L)otto Texas, (C)ash Five, Pick (3), (D)aily 4"
31000 PRINT ""
31100 PRINT "(A)ll or Nothing, (T)exas Two Step, or (R)andom"
31200 IF FIRSTRUN% = 1 THEN GOTO 32800      
31300 IN$ = INKEY$
31400 IF IN$ = "" THEN 31300
31500 IF IN$ = "q" OR IN$ = "Q" THEN CLS : COLOR 7,0: END
31600 IF IN$ = "o" OR IN$ = "O" THEN ORDERNUMBERS% = 1: GOTO 26000
31700 IF IN$ = "u" OR IN$ = "U" THEN ORDERNUMBERS% = 0: GOTO 26000
31800 IF IN$ = "p" OR IN$ = "P" THEN GOTO 3100     ' Powerball
31900 IF IN$ = "m" OR IN$ = "M" THEN GOTO 5000     ' Mega Millions
32000 IF IN$ = "l" OR IN$ = "L" THEN GOTO 6900     ' Lotto Texas
32100 IF IN$ = "c" OR IN$ = "C" THEN GOTO 16400    ' Cash Five
32200 IF IN$ = "d" OR IN$ = "D" THEN GOTO 14500    ' Daily 4
32300 IF IN$ = "a" OR IN$ = "A" THEN GOTO 10700    ' All or Nothing
32400 IF IN$ = "t" OR IN$ = "T" THEN GOTO 8800     ' Texas Two Step
32500 IF IN$ = "r" OR IN$ = "R" THEN GOTO 32900    ' Random
32600 IF IN$ = "3" THEN GOTO 12600
32700 GOTO 31300
32800 FIRSTRUN% = 0
32900 GAME% = INT(RND * 8) + 1
33000 IF GAME% = 1 THEN GOTO 3100
33100 IF GAME% = 2 THEN GOTO 5000
33200 IF GAME% = 3 THEN GOTO 6900
33300 IF GAME% = 4 THEN GOTO 16400
33400 IF GAME% = 5 THEN GOTO 12600
33500 IF GAME% = 6 THEN GOTO 14500
33600 IF GAME% = 7 THEN GOTO 10700
33700 GOTO 8800
