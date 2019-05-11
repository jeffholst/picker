100 ' Texas Lotto Generator version 0.0.1
200 ' By: Jeff Holst and Gary Stevens
300 ' Date: May 10, 2019

400 ' The following variables are the ones to set per lotto game
500 '
600 ' BALLCOUNT%          - Number of balls in game
700 ' BALLMINNUMBER%      - Lowest ball number in game
800 ' BALLMAXNUMBER%      - Highest ball number in game
900 ' HASBONUSBALL%       - Is there a bonus ball? 0 = false, 1 = true
1000 ' BONUSBALLMINNUMBER% - Lowest bonus ball number
1100 ' BONUSBALLMAXNUMBER% - Allow duplicate numbers? 0 = false, 1 = true

1200 ' ******** Variables below here probably do not need to be tweaked

1300 DIM BALLS%(12)           ' Array of normal ball values
1400 DIM TEMPBALLS%(100)      ' Array of temp ball values
1500 BONUSBALL% = 0           ' Value of bonus ball 
1600 ORDERNUMBERS% = 0        ' Order numbers? 0 = false, 1 = true
1700 GAMENAME$ = ""           ' Name of game

1800 RANDOMIZE TIMER
1900 GOTO 20500 ' START

2000 ' **********************************************************
2100 '  ___                    _          _ _ 
2200 ' | _ \_____ __ _____ _ _| |__  __ _| | |
2300 ' |  _/ _ \ V  V / -_) '_| '_ \/ _` | | |
2400 ' |_| \___/\_/\_/\___|_| |_.__/\__,_|_|_|  
2500 '
2600 GAMENAME$ = "Powerball"                            
2700 BALLCOUNT% = 5
2800 BALLMINNUMBER% = 1
2900 BALLMAXNUMBER% = 69
3000 HASBONUSBALL% = 1
3100 BONUSBALLMINNUMBER% = 1
3200 BONUSBALLMAXNUMBER% = 35
3300 ALLOWDUPES% = 0
3400 RETURN 


3500 ' ***********************************************************
3600 '
3700 '  __  __                 __  __ _ _ _ _             
3800 ' |  \/  |___ __ _ __ _  |  \/  (_) | (_)___ _ _  ___
3900 ' | |\/| / -_) _` / _` | | |\/| | | | | / _ \ ' \(_-<
4000 ' |_|  |_\___\__, \__,_| |_|  |_|_|_|_|_\___/_||_/__/
4100 '            |___/    
4200 '      
4300 GAMENAME$ = "MegaMillions"  
4400 BALLCOUNT% = 5
4500 BALLMINNUMBER% = 1
4600 BALLMAXNUMBER% = 70
4700 HASBONUSBALL% = 1
4800 BONUSBALLMINNUMBER% = 1
4900 BONUSBALLMAXNUMBER% = 25
5000 ALLOWDUPES% = 0
5100 RETURN 


5200 ' ***********************************************************
5300 '
5400 '  _        _   _         _____                
5500 ' | |   ___| |_| |_ ___  |_   _|____ ____ _ ___
5600 ' | |__/ _ \  _|  _/ _ \   | |/ -_) \ / _` (_-<
5700 ' |____\___/\__|\__\___/   |_|\___/_\_\__,_/__/
5800 '
5900 GAMENAME$ = "Lotto Texas"  
6000 BALLCOUNT% = 6
6100 BALLMINNUMBER% = 1
6200 BALLMAXNUMBER% = 54
6300 HASBONUSBALL% = 0
6400 BONUSBALLMINNUMBER% = 0
6500 BONUSBALLMAXNUMBER% = 0
6600 ALLOWDUPES% = 0
6700 RETURN 


6800 ' ***********************************************************
6900 '
7000 '  _____                  _____              ___ _            
7100 ' |_   _|____ ____ _ ___ |_   _|_ __ _____  / __| |_ ___ _ __ 
7200 '   | |/ -_) \ / _` (_-<   | | \ V  V / _ \ \__ \  _/ -_) '_ \
7300 '   |_|\___/_\_\__,_/__/   |_|  \_/\_/\___/ |___/\__\___| .__/
7400 '                                                       |_|   
7500 '
7600 GAMENAME$ = "Texas Two Step"  
7700 BALLCOUNT% = 4
7800 BALLMINNUMBER% = 1
7900 BALLMAXNUMBER% = 35
8000 HASBONUSBALL% = 1
8100 BONUSBALLMINNUMBER% = 1
8200 BONUSBALLMAXNUMBER% = 35
8300 ALLOWDUPES% = 0
8400 RETURN 


8500 ' ***********************************************************
8600 '
8700 '    _   _ _             _  _     _   _    _           
8800 '   /_\ | | |  ___ _ _  | \| |___| |_| |_ (_)_ _  __ _ 
8900 '  / _ \| | | / _ \ '_| | .` / _ \  _| ' \| | ' \/ _` |
9000 ' /_/ \_\_|_| \___/_|   |_|\_\___/\__|_||_|_|_||_\__, |
9100 '                                                |___/ 
9200 '
9300 GAMENAME$ = "All or Nothing"  
9400 BALLCOUNT% = 12
9500 BALLMINNUMBER% = 1
9600 BALLMAXNUMBER% = 24
9700 HASBONUSBALL% = 0
9800 BONUSBALLMINNUMBER% = 0
9900 BONUSBALLMAXNUMBER% = 0
10000 ALLOWDUPES% = 0
10100 RETURN 


10200 ' ***********************************************************
10300 '
10400 '  ___ _    _     ____
10500 ' | _ (_)__| |__ |__ /
10600 ' |  _/ / _| / /  |_ \
10700 ' |_| |_\__|_\_\ |___/
10800 '
10900 GAMENAME$ = "Pick 3"  
11000 BALLCOUNT% = 3
11100 BALLMINNUMBER% = 0
11200 BALLMAXNUMBER% = 9
11300 HASBONUSBALL% = 0
11400 BONUSBALLMINNUMBER% = 0
11500 BONUSBALLMAXNUMBER% = 0
11600 ALLOWDUPES% = 1
11700 RETURN                 


11800 ' ***********************************************************
11900 '
12000 '  ___       _ _        _ _  
12100 ' |   \ __ _(_) |_  _  | | | 
12200 ' | |) / _` | | | || | |_  _|
12300 ' |___/\__,_|_|_|\_, |   |_| 
12400 '                 |__/ 
12500 '
12600 GAMENAME$ = "Daily 4"  
12700 BALLCOUNT% = 4
12800 BALLMINNUMBER% = 0
12900 BALLMAXNUMBER% = 9
13000 HASBONUSBALL% = 0
13100 BONUSBALLMINNUMBER% = 0
13200 BONUSBALLMAXNUMBER% = 0
13300 ALLOWDUPES% = 1
13400 RETURN   


13500 ' ***********************************************************
13600 '   ___         _      ___ _         
13700 '  / __|__ _ __| |_   | __(_)_ _____ 
13800 ' | (__/ _` (_-< ' \  | _|| \ V / -_)
13900 '  \___\__,_/__/_||_| |_| |_|\_/\___|
14000 '
14100 GAMENAME$ = "Cash Five"  
14200 BALLCOUNT% = 5
14300 BALLMINNUMBER% = 1
14400 BALLMAXNUMBER% = 37
14500 HASBONUSBALL% = 0
14600 BONUSBALLMINNUMBER% = 0
14700 BONUSBALLMAXNUMBER% = 0
14800 ALLOWDUPES% = 0
14900 RETURN   


15000 '   
15100 ' GENERATE BALLS

15200 IF ALLOWDUPES% = 0 THEN GOTO 15800
15300 ' **************** Generate Balls Dupes OK *****************
15400 FOR LOOP1% = 0 TO BALLCOUNT% - 1
15500 BALLS%(LOOP1%) = INT(RND * (BALLMAXNUMBER% + 1)) + BALLMINNUMBER%
15600 NEXT LOOP1%
15700 GOTO 17600
15800 ' ************ Generate Balls No Dupes **********************
15900 ' Generate a temp array of all possible balls
16000 COUNTER% = BALLMINNUMBER%
16100 FOR LOOP1% = 0 TO BALLMAXNUMBER% - BALLMINNUMBER%
16200 TEMPBALLS%(LOOP1%) = COUNTER%
16300 COUNTER% = COUNTER% + 1
16400 NEXT LOOP1%
16500 ' Randomize the temp ball array
16600 FOR LOOP1% = 0 TO BALLMAXNUMBER% - BALLMINNUMBER%
16700 TEMP% = TEMPBALLS%(LOOP1%)
16800 INDEX% = INT(RND * BALLMAXNUMBER% - BALLMINNUMBER%)
16900 TEMPBALLS%(LOOP1%) = TEMPBALLS%(INDEX%)
17000 TEMPBALLS%(INDEX%) = TEMP%
17100 NEXT LOOP1%
17200 ' Pull appropriate number of randomized temp balls to actual balls array
17300 FOR LOOP1% = 0 TO BALLCOUNT% - 1
17400 BALLS%(LOOP1%) = TEMPBALLS%(LOOP1%)
17500 NEXT LOOP1%
17600 IF HASBONUSBALL% = 0 THEN GOTO 17900
17700 ' ********************* Select Bonus Ball *******************
17800 BONUSBALL% = INT(RND * BONUSBALLMAXNUMBER%) + BONUSBALLMINNUMBER%
17900 IF ORDERNUMBERS% = 0 THEN GOTO 19300
18000 ' ********************* Bubble Sort *************************
18100 FOR LOOP1% = 0 TO BALLCOUNT% - 2
18200 FOR LOOP2% = 0 TO BALLCOUNT% - 2
18300 IF BALLS%(LOOP2%) > BALLS%(LOOP2%  + 1) THEN GOSUB 18700
18400 NEXT LOOP2%
18500 NEXT LOOP1%
18600 GOTO 19300
18700 TEMP% = BALLS%(LOOP2%)
18800 BALLS%(LOOP2%) = BALLS%(LOOP2% + 1)
18900 BALLS%(LOOP2% + 1) = TEMP%
19000 RETURN
19100 GOSUB 19300
19200 END
19300 ' ****************** Print Balls ****************************
19400 OUTPUT$ = GAMENAME$ + ":"
19500 ADDCOMMA% = 0
19600 FOR LOOP1% = 0 TO BALLCOUNT% - 1
19700 IF ADDCOMMA% = 1 THEN OUTPUT$ = OUTPUT$ + ","
19800 OUTPUT$ = OUTPUT$ + STR$(BALLS%(LOOP1%))
19900 ADDCOMMA% = 1
20000 NEXT LOOP1%
20100 IF HASBONUSBALL% = 0 THEN GOTO 20300
20200 OUTPUT$ = OUTPUT$ + ". Bonus Ball:" + STR$(BONUSBALL%)
20300 PRINT OUTPUT$
20400 RETURN 


20500 ' ***********************************************************
20600 '
20700 '   ___ _            _   
20800 '  / __| |_ __ _ _ _| |_ 
20900 '  \__ \  _/ _` | '_|  _|
21000 '  |___/\__\__,_|_|  \__|
21100 '

21200 CLS 


21300 GOSUB 2000 ' Set up for Powerball
21400 GOSUB 15200 ' Generate and print

21500 GOSUB 3500 ' Set up for Mega Millions
21600 GOSUB 15200 ' Generate and print

21700 GOSUB 5200 ' Set up for Lotto Texas
21800 GOSUB 15200 ' Generate and print

21900 GOSUB 6800 ' Set up for Texas Two Step
22000 GOSUB 15200 ' Generate and print

22100 GOSUB 8500 ' Set up for All or Nothing
22200 GOSUB 15200 ' Generate and print

22300 GOSUB 10200 ' Set up for Pick 3
22400 GOSUB 15200 ' Generate and print

22500 GOSUB 11800 ' Set up for Daily 4
22600 GOSUB 15200 ' Generate and print

22700 GOSUB 13500 ' Set up for Cash Five
22800 GOSUB 15200 ' Generate and print

22900 PRINT
23000 PRINT "(Q)uit, (O)rdered Numbers, or (U)nordered  Numbers."
23100 IN$ = INKEY$
23200 IF IN$ = "" THEN 23100
23300 IF IN$ = "q" OR IN$ = "Q" THEN END
23400 IF IN$ = "o" OR IN$ = "O" THEN ORDERNUMBERS% = 1: GOTO 20500
23500 IF IN$ = "u" OR IN$ = "U" THEN ORDERNUMBERS% = 0: GOTO 20500
23600 GOTO 23100
