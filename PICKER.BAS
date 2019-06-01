100 ' Texas Lotto Generator
200 VERSION$ = "0.0.5"
300 ' By: Jeff Holst and Gary Stevens
400 ' Date: May 10, 2019
500 ' Last Modified: June 01, 2019
600 ' 
700 ' The following variables are the ones to set per lotto game
800 '
900 ' BALLCOUNT%          - Number of balls in game
1000 ' BALLMINNUMBER%      - Lowest ball number in game
1100 ' BALLMAXNUMBER%      - Highest ball number in game
1200 ' HASBONUSBALL%       - Is there a bonus ball? 0 = false, 1 = true
1300 ' BONUSBALLMINNUMBER% - Lowest bonus ball number
1400 ' BONUSBALLMAXNUMBER% - Allow duplicate numbers? 0 = false, 1 = true
1500 ' 
1600 ' ******** Variables below here probably do not need to be tweaked
1700 ' 
1800 DIM BALLS%(12)           ' Array of normal ball values
1900 DIM SORTEDBALLS%(12)     ' Array of sorted ball values
2000 DIM TEMPBALLS%(100)      ' Array of temp ball values
2100 BONUSBALL% = 0           ' Value of bonus ball 
2200 ORDERNUMBERS% = 0        ' Order numbers? 0 = false, 1 = true
2300 GAMENAME$ = ""           ' Name of game
2400 FIRSTRUN% = 1            ' Display a random game on first run
2500 LOCATELINE% = 1          ' The line number to print centered text on
2600 CENTERLINE$ = ""         ' The text to print centered
2700 SCREENWIDTH% = 80        ' The character width of the screen
2800 LASTGAME% = 0            ' Last game number played
2900 CURRENTGAME% = 0         ' Current game number
3000 ' 
3100 ' 
3200 RANDOMIZE TIMER
3300 CLS
3400 GOSUB 22800 ' PRINT VERSTION
3500 GOSUB 38500 ' MENU
3600 GOTO 41300 ' INPUT SECTION
3700 ' 
3800 ' **********************************************************
3900 IF LASTGAME% = 1 THEN GOTO 5700
4000 LOCATE 2,1
4100 COLOR 6,0
4200 PRINT "                    ___                    _          _ _                 "
4300 PRINT "                   | _ \_____ __ _____ _ _| |__  __ _| | |                "
4400 PRINT "                   |  _/ _ \ V  V / -_) '_| '_ \/ _` | | |                "
4500 PRINT "                   |_| \___/\_/\_/\___|_| |_.__/\__,_|_|_|                " 
4600 PRINT "                                                                          "
4700 PRINT "                                                                          "
4800 GAMENAME$ = "Powerball"
4900 BALLCOUNT% = 5
5000 BALLMINNUMBER% = 1
5100 BALLMAXNUMBER% = 69
5200 HASBONUSBALL% = 1
5300 BONUSBALLMINNUMBER% = 1
5400 BONUSBALLMAXNUMBER% = 26
5500 ALLOWDUPES% = 0
5600 CURRENTGAME% = 1
5700 GOSUB 28600 ' GENERATE AND PRINT BALLS
5800 LASTGAME% = 1
5900 GOTO 41400 ' MENU
6000 '
6100 ' ***********************************************************
6200 IF LASTGAME% = 2 THEN GOTO 8000
6300 LOCATE 2,1
6400 COLOR 6,0
6500 PRINT "               __   _                 __  __ _ _ _ _                     "
6600 PRINT "              |  \/  |___ __ _ __ _  |  \/  (_) | (_)___ _ _  ___        "
6700 PRINT "              | |\/| / -_) _` / _` | | |\/| | | | | / _ \ ' \(_-<        "
6800 PRINT "              |_|  |_\___\__, \__,_| |_|  |_|_|_|_|_\___/_||_/__/        "
6900 PRINT "                            |___/                                        "
7000 PRINT "                                                                         "
7100 GAMENAME$ = "Mega Millions"
7200 BALLCOUNT% = 5
7300 BALLMINNUMBER% = 1
7400 BALLMAXNUMBER% = 70
7500 HASBONUSBALL% = 1
7600 BONUSBALLMINNUMBER% = 1
7700 BONUSBALLMAXNUMBER% = 25
7800 ALLOWDUPES% = 0
7900 CURRENTGAME% = 2
8000 GOSUB 28600 ' GENERATE AND PRINT BALLS
8100 LASTGAME% = 2
8200 GOTO 41400 ' MENU
8300 ' 
8400 ' ***********************************************************
8500 IF LASTGAME% = 3 THEN GOTO 10300
8600 LOCATE 2,1
8700 COLOR 6,0
8800 PRINT "                   _        _   _         _____                            "            
8900 PRINT "                  | |   ___| |_| |_ ___  |_   _|____ ____ _ ___            "
9000 PRINT "                  | |__/ _ \  _|  _/ _ \   | |/ -_) \ / _` (_-<            "
9100 PRINT "                  |____\___/\__|\__\___/   |_|\___/_\_\__,_/__/            "
9200 PRINT "                                                                           "
9300 PRINT "                                                                           "
9400 GAMENAME$ = "Lotto Texas"
9500 BALLCOUNT% = 6
9600 BALLMINNUMBER% = 1
9700 BALLMAXNUMBER% = 54
9800 HASBONUSBALL% = 0
9900 BONUSBALLMINNUMBER% = 0
10000 BONUSBALLMAXNUMBER% = 0
10100 ALLOWDUPES% = 0
10200 CURRENTGAME% = 3
10300 GOSUB 28600 ' GENERATE AND PRINT BALLS
10400 LASTGAME% = 3
10500 GOTO 41400 ' MENU
10600 ' 
10700 ' ***********************************************************
10800 IF LASTGAME% = 4 THEN GOTO 12600
10900 LOCATE 2,1
11000 COLOR 6,0
11100 PRINT "           _____                  _____              ___ _               "       
11200 PRINT "          |_   _|____ ____ _ ___ |_   _|_ __ _____  / __| |_ ___ _ __    "
11300 PRINT "            | |/ -_) \ / _` (_-<   | | \ V  V / _ \ \__ \  _/ -_) '_ \   "
11400 PRINT "            |_|\___/_\_\__,_/__/   |_|  \_/\_/\___/ |___/\__\___| .__/   "
11500 PRINT "                                                                |_|      "
11600 PRINT "                                                                         "
11700 GAMENAME$ = "Texas Two Step"                
11800 BALLCOUNT% = 4
11900 BALLMINNUMBER% = 1
12000 BALLMAXNUMBER% = 35
12100 HASBONUSBALL% = 1
12200 BONUSBALLMINNUMBER% = 1
12300 BONUSBALLMAXNUMBER% = 35
12400 ALLOWDUPES% = 0
12500 CURRENTGAME% = 4
12600 GOSUB 28600 ' GENERATE AND PRINT BALLS
12700 LASTGAME% = 4
12800 GOTO 41400 ' MENU
12900 ' 
13000 ' ***********************************************************
13100 IF LASTGAME% = 5 THEN GOTO 14900
13200 LOCATE 2,1
13300 COLOR 6,0
13400 PRINT "                 _   _ _             _  _     _   _    _                  "        
13500 PRINT "                /_\ | | |  ___ _ _  | \| |___| |_| |_ (_)_ _  __ _        "
13600 PRINT "               / _ \| | | / _ \ '_| | .` / _ \  _| ' \| | ' \/ _` |       "
13700 PRINT "              /_/ \_\_|_| \___/_|   |_|\_\___/\__|_||_|_|_||_\__, |       "
13800 PRINT "                                                             |___/        "
13900 PRINT "                                                                          "
14000 GAMENAME$ = "All or Nothing"
14100 BALLCOUNT% = 12
14200 BALLMINNUMBER% = 1
14300 BALLMAXNUMBER% = 24
14400 HASBONUSBALL% = 0
14500 BONUSBALLMINNUMBER% = 0
14600 BONUSBALLMAXNUMBER% = 0
14700 ALLOWDUPES% = 0
14800 CURRENTGAME% = 5
14900 GOSUB 28600 ' GENERATE AND PRINT BALLS
15000 LASTGAME% = 5
15100 GOTO 41400 ' MENU
15200 ' 
15300 ' ***********************************************************
15400 IF LASTGAME% = 6 THEN GOTO 17300
15500 LOCATE 2,1
15600 COLOR 6,0
15700 PRINT "                             ___ _    _       ____                       "
15800 PRINT "                            | _ (_)__| |__   |__ /                       "
15900 PRINT "                            |  _/ / _| / /    |_ \                       "
16000 PRINT "                            |_| |_\__|_\_\   |___/                       "
16100 PRINT "                                                                         "
16200 PRINT "                                                                         "
16300 GAMENAME$ = "Pick 3"
16400 BALLCOUNT% = 3
16500 BALLMINNUMBER% = 0
16600 BALLMAXNUMBER% = 9
16700 HASBONUSBALL% = 0
16800 BONUSBALLMINNUMBER% = 0
16900 BONUSBALLMAXNUMBER% = 0
17000 ORDERNUMBERS% = 0
17100 ALLOWDUPES% = 1
17200 CURRENTGAME% = 6
17300 GOSUB 28600 ' GENERATE AND PRINT BALLS
17400 LASTGAME% = 6
17500 GOTO 41400 ' MENU           
17600 ' 
17700 ' ***********************************************************
17800 IF LASTGAME% = 7 THEN GOTO 19700
17900 LOCATE 2,1
18000 COLOR 6,0
18100 PRINT "                           ___       _ _         _ _                      "
18200 PRINT "                          |   \ __ _(_) |_  _   | | |                     "
18300 PRINT "                          | |) / _` | | | || |  |_  _|                    "
18400 PRINT "                          |___/\__,_|_|_|\_, |    |_|                     "
18500 PRINT "                                         |__/                             "
18600 PRINT "                                                                          "
18700 GAMENAME$ = "Daily 4"
18800 BALLCOUNT% = 4
18900 BALLMINNUMBER% = 0
19000 BALLMAXNUMBER% = 9
19100 HASBONUSBALL% = 0
19200 BONUSBALLMINNUMBER% = 0
19300 BONUSBALLMAXNUMBER% = 0
19400 ORDERNUMBERS% = 0
19500 ALLOWDUPES% = 1
19600 CURRENTGAME% = 7
19700 GOSUB 28600 ' GENERATE AND PRINT BALLS
19800 LASTGAME% = 7
19900 GOTO 41400 ' MENU
20000 ' 
20100 ' ***********************************************************
20200 IF LASTGAME% = 8 THEN GOTO 22000
20300 LOCATE 2,1
20400 COLOR 6,0
20500 PRINT "                        ___         _       ___ _                         "  
20600 PRINT "                       / __|__ _ __| |_    | __(_)_ _____                 "
20700 PRINT "                      | (__/ _` (_-< ' \   | _|| \ V / -_)                "
20800 PRINT "                       \___\__,_/__/_||_|  |_| |_|\_/\___|                "
20900 PRINT "                                                                          "
21000 PRINT "                                                                          "
21100 GAMENAME$ = "Cash Five"
21200 BALLCOUNT% = 5
21300 BALLMINNUMBER% = 1
21400 BALLMAXNUMBER% = 35
21500 HASBONUSBALL% = 0
21600 BONUSBALLMINNUMBER% = 0
21700 BONUSBALLMAXNUMBER% = 0
21800 ALLOWDUPES% = 0 
21900 CURRENTGAME% = 8
22000 GOSUB 28600 ' GENERATE AND PRINT BALLS
22100 LASTGAME% = 8
22200 GOTO 41400 ' MENU
22300 '
22400 ' ***********************************************************
22500 '
22600 ' PRINT VERSION SUBROUTINE
22700 '
22800 COLOR 6,0
22900 LOCATELINE% = 1
23000 CENTERLINE$ = "VER " + VERSION$
23100 GOSUB 24900
23200 RETURN
23300 '
23400 ' ***********************************************************
23500 '
23600 ' PRINT TITLE SUBROUTINE
23700 '
23800 LOCATELINE% = 8
23900 GOSUB 25700 ' CLEAR LINE
24000 COLOR 5,0
24100 CENTERLINE$ = TITLE$
24200 GOSUB 24900
24300 RETURN
24400 ' 
24500 ' ***********************************************************   
24600 '
24700 ' PRINT CENTERED LINE SUBROUTINE
24800 ' 
24900 LOCATE LOCATELINE%, (SCREENWIDTH% / 2) - (LEN(CENTERLINE$) / 2)
25000 PRINT CENTERLINE$
25100 RETURN
25200 ' 
25300 ' ***********************************************************   
25400 '
25500 ' CLEAR LINE SUBROUTINE
25600 ' 
25700 FOR LOOP1% = 1 TO SCREENWIDTH%
25800 LOCATE LOCATELINE%, LOOP1%
25900 PRINT " "
26000 NEXT LOOP1%
26100 RETURN 
26200 ' 
26300 ' ***********************************************************   
26400 '
26500 ' PRINT BALLS CENTERED SUBROUTINE
26600 ' 
26700 COLOR 12,0
26800 IF HASBONUSBALL% = 0 THEN CENTERLINE$ = OUTPUT$: GOTO 24900 ' RETURN in Subroutine
26900 BONUSBALLLABEL$ = " Bonus Ball:"
27000 MYLEN% = LEN(OUTPUT$) + LEN(BONUSBALLLABEL$) + LEN(STR$(BONUSBALL%))
27100 STARTPOSITION% = (SCREENWIDTH% / 2) - (MYLEN%  / 2)
27200 LOCATE LOCATELINE%, STARTPOSITION%
27300 PRINT OUTPUT$
27400 LOCATE LOCATELINE%, STARTPOSITION% + LEN(OUTPUT$)
27500 COLOR 11,0
27600 PRINT BONUSBALLLABEL$
27700 COLOR 12,0
27800 LOCATE LOCATELINE%, STARTPOSITION% + LEN(OUTPUT$) + LEN(BONUSBALLLABEL$)
27900 PRINT STR$(BONUSBALL%)
28000 RETURN 
28100 ' 
28200 ' ***********************************************************   
28300 '
28400 ' GENERATE BALLS
28500 ' 
28600 IF ALLOWDUPES% = 0 THEN GOTO 29900
28700 '
28800 ' DUPLICATE BALLS OKAY
28900 '
29000 FOR LOOP1% = 0 TO BALLCOUNT% - 1
29100 RBALL% = INT(RND * (BALLMAXNUMBER% + 1)) + BALLMINNUMBER%
29200 BALLS%(LOOP1%) = RBALL%
29300 SORTEDBALLS%(LOOP1%) = RBALL%
29400 NEXT LOOP1%
29500 GOTO 32600
29600 '
29700 ' NO DUPLICATE BALLS ALLOWED
29800 '
29900 COUNTER% = BALLMINNUMBER%
30000 FOR LOOP1% = 0 TO BALLMAXNUMBER% - BALLMINNUMBER%
30100 TEMPBALLS%(LOOP1%) = COUNTER%
30200 COUNTER% = COUNTER% + 1
30300 NEXT LOOP1%
30400 '
30500 ' RANDOMIZE TEMP BALL ARRAY
30600 '
30700 FOR LOOP1% = 0 TO BALLMAXNUMBER% - BALLMINNUMBER%
30800 TEMP% = TEMPBALLS%(LOOP1%)
30900 INDEX% = INT(RND * BALLMAXNUMBER% - BALLMINNUMBER% + 1)
31000 '
31100 TEMPBALLS%(LOOP1%) = TEMPBALLS%(INDEX%)
31200 TEMPBALLS%(INDEX%) = TEMP%
31300 NEXT LOOP1%
31400 '
31500 ' PUT RANDOMIZED BALLS IN BALL ARRAY
31600 '
31700 FOR LOOP1% = 0 TO BALLCOUNT% - 1
31800 BALLS%(LOOP1%) = TEMPBALLS%(LOOP1%)
31900 SORTEDBALLS%(LOOP1%) = TEMPBALLS%(LOOP1%)
32000 NEXT LOOP1%
32100 ' 
32200 ' ***********************************************************   
32300 '
32400 ' CREATE TITLE WITH GAME RULES
32500 ' 
32600 IF CURRENTGAME% = LASTGAME% THEN GOTO 33200                
32700 TEMP1$ = STR$(BALLMINNUMBER%)
32800 TEMP1$ = MID$(TEMP1$, 2, LEN(TEMP1$) - 1)
32900 TEMP2$ = STR$(BALLMAXNUMBER%)
33000 TEMP2$ = MID$(TEMP2$, 2, LEN(TEMP2$) - 1)
33100 TITLE$ = " " + GAMENAME$ + " :" + STR$(BALLCOUNT%) + "[" + TEMP1$ + "-" + TEMP2$ + "]" 
33200 IF HASBONUSBALL% = 0 THEN GOTO 34400
33300 '
33400 ' ***********************************************************   
33500 ' SELECT BONUS BALL
33600 '
33700 BONUSBALL% = INT(RND * BONUSBALLMAXNUMBER%) + BONUSBALLMINNUMBER%
33800 IF CURRENTGAME% = LASTGAME% THEN GOTO 35100
33900 TEMP1$ = STR$(BONUSBALLMINNUMBER%)
34000 TEMP1$ = MID$(TEMP1$, 2, LEN(TEMP1$) - 1)
34100 TEMP2$ = STR$(BONUSBALLMAXNUMBER%)
34200 TEMP2$ = MID$(TEMP2$, 2, LEN(TEMP2$) - 1)
34300 TITLE$ = TITLE$ + " and" + STR$(BONUSBALLMINNUMBER%) + "[" + TEMP1$ + "-" + TEMP2$ + "]"
34400 IF CURRENTGAME% = LASTGAME% THEN GOTO 35100
34500 GOSUB 23800 ' PRINT TITLE
34600 '
34700 ' *********************************************************** 
34800 '
34900 ' BUBBLE SORT
35000 '
35100 FOR LOOP1% = 0 TO BALLCOUNT% - 2
35200 FOR LOOP2% = 0 TO BALLCOUNT% - 2
35300 IF SORTEDBALLS%(LOOP2%) > SORTEDBALLS%(LOOP2%  + 1) THEN GOSUB 35700
35400 NEXT LOOP2%
35500 NEXT LOOP1%
35600 GOTO 36600
35700 TEMP% = SORTEDBALLS%(LOOP2%)
35800 SORTEDBALLS%(LOOP2%) = SORTEDBALLS%(LOOP2% + 1)
35900 SORTEDBALLS%(LOOP2% + 1) = TEMP%
36000 RETURN
36100 '
36200 ' *********************************************************** 
36300 '
36400 ' PRINT BALLS SUBROUTINE
36500 '
36600 OUTPUT$ = ""
36700 ADDCOMMA% = 0
36800 FOR LOOP1% = 0 TO BALLCOUNT% - 1
36900 IF ADDCOMMA% = 1 THEN OUTPUT$ = OUTPUT$ + ","
37000 IF ORDERNUMBERS% = 0 THEN MYOUT$ = STR$(BALLS%(LOOP1%)) ELSE MYOUT$ = STR$(SORTEDBALLS%(LOOP1%))
37100 OUTPUT$ = OUTPUT$ + MYOUT$
37200 ADDCOMMA% = 1
37300 NEXT LOOP1%
37400 LOCATELINE% = 10
37500 GOSUB 25700 ' CLEAR LINE
37600 GOSUB 26700 ' CENTER BALLS
37700 IF ORDERNUMBERS% <> LASTORDERNUMBERS% THEN GOSUB 38500
37800 RETURN
37900 ' 
38000 ' ***********************************************************
38100 '  
38200 ' MAIN MENU SUBROUTINE
38300 '
38400 '
38500 LOCATE 15,10
38600 COLOR 2,0
38700 PRINT "(Q)uit, "
38800 IF ORDERNUMBERS% = 1 THEN LASTORDERNUMBERS% = 1: COLOR 14, 0
38900 LOCATE 15, 18
39000 PRINT "in (O)rder"
39100 COLOR 2, 0
39200 LOCATE 15, 28
39300 PRINT ", "
39400 IF ORDERNUMBERS% = 0 THEN LASTORDERNUMBERS% = 0: COLOR 14, 0
39500 LOCATE 15, 30
39600 PRINT "(U)nsorted"
39700 COLOR 2, 0
39800 LOCATE 15,40 
39900 PRINT ", (P)owerball, (M)ega Millions"
40000 PRINT ""
40100 LOCATE 17,17
40200 PRINT "(L)otto Texas, (C)ash Five, Pick (3), (D)aily 4"
40300 PRINT ""
40400 LOCATE 19, 17
40500 PRINT "(A)ll or Nothing, (T)exas Two Step, or (R)andom"
40600 RETURN 
40601 ' 
40602 ' ***********************************************************
40603 '  
40604 ' CHECK IF SORT ALLOWED
40605 '
40610 IF LASTGAME% = 6 OR LASTGAME% = 7 THEN BEEP: RETURN ' SORT NOT ALLOWED FOR THESE GAMES
40615 ORDERNUMBERS% = 1
40620 GOSUB 38500: GOSUB 36600
40700 ' 
40800 ' ***********************************************************
40900 '  
41000 ' INPUT SECTION
41100 '
41200 '
41300 IF FIRSTRUN% = 1 THEN GOTO 42900      
41400 IN$ = INKEY$
41500 IF IN$ = "" THEN 41400
41600 IF IN$ = "q" OR IN$ = "Q" THEN CLS : COLOR 7,0: END
41700 IF IN$ = "o" OR IN$ = "O" THEN GOSUB 40610
41800 IF IN$ = "u" OR IN$ = "U" THEN ORDERNUMBERS% = 0: GOSUB 38500: GOSUB 36600
41900 IF IN$ = "p" OR IN$ = "P" THEN GOTO 3900     ' Powerball
42000 IF IN$ = "m" OR IN$ = "M" THEN GOTO 6200     ' Mega Millions
42100 IF IN$ = "l" OR IN$ = "L" THEN GOTO 8500     ' Lotto Texas
42200 IF IN$ = "c" OR IN$ = "C" THEN GOTO 20200    ' Cash Five
42300 IF IN$ = "d" OR IN$ = "D" THEN GOTO 17800    ' Daily 4
42400 IF IN$ = "a" OR IN$ = "A" THEN GOTO 13100    ' All or Nothing
42500 IF IN$ = "t" OR IN$ = "T" THEN GOTO 10800    ' Texas Two Step
42600 IF IN$ = "r" OR IN$ = "R" THEN GOTO 43000    ' Random
42700 IF IN$ = "3" THEN GOTO 15400                 ' Pick 3
42800 GOTO 41400
42900 FIRSTRUN% = 0
43000 GAME% = INT(RND * 8) + 1
43100 IF GAME% = 1 THEN GOTO 3900
43200 IF GAME% = 2 THEN GOTO 6200
43300 IF GAME% = 3 THEN GOTO 8500
43400 IF GAME% = 4 THEN GOTO 20200
43500 IF GAME% = 5 THEN GOTO 15400
43600 IF GAME% = 6 THEN GOTO 17800
43700 IF GAME% = 7 THEN GOTO 13100
43800 GOTO 10800
