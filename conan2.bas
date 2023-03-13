8  REM **********************
10 REM *
20 REM * conan II
25 REM *
30 REM **********************
32 REM
35 REM 1985 by luke
36 REM 2009 typed in by Roberto, Eregil e tsm
38 REM 2022 remake clod     
39 rem
40 REM -variabili-
45 rem
50 DIMno$(4)
60 fo=50:ze=30:ab=45:ft=28:as=0:co$="conan":mz=0:no=0:sp=0:sc=0:pl=0:am=0
62 at=1:df=1:dn=1:xx=0:ve=0:ad=0:rem bonus attacco difesa e danno
65 rem
70 wy=53280:yw=53281
90 REM -titolo-
100 PRINT"{clear}":POKEwy,0:POKEyw,2:GOSUB30000
110 PRINTSPC(10)"{down*4}{black}{reverse on}{space*3}{right}{space*3}{right} {cm asterisk}{right} {right}{space*3}{right} {cm asterisk}{right} "
120 PRINTSPC(10)"{reverse on} {right*3} {right} {right} {reverse off}{cm asterisk}{reverse on}{cm asterisk} {right} {right} {right} {reverse off}{cm asterisk}{reverse on}{cm asterisk} "
130 PRINTSPC(10)"{reverse on} {right*3} {right} {right} {right}{reverse off}{cm asterisk}{reverse on} {right}{space*3}{right} {right}{reverse off}{cm asterisk}{reverse on} "
140 PRINTSPC(10)"{reverse on}{space*3}{right}{space*3}{right} {right*2} {right} {right} {right} {right*2} "
150 PRINTSPC(10)"{down}il barbaro"
155 PRINTSPC(5)"{down*5}1985 adventure game by luke"
160 PRINTSPC(5)"2009 typed roberto, eregil e tsm"
162 PRINTSPC(5)"2022 remake by clod"
163 REM-luce spada-
165 FORa=0TO5
170 FORk=55390TO55403:POKEk,7:FORb=1TO30:NEXTb,k
180 FORk=55390TO55403:POKEk,0:FORb=1TO10:NEXTb,k,a
190 PRINT"{home}":FORk=1TO23:PRINT"{yellow}"SPC(18)"{cm k}":NEXT
200 a=55776:FORk=1504TO1543:POKEk,98:POKEa,7:a=a+1:NEXT
205 REM-schermata di apertura-
207 PRINT"{clear}{home}":POKEyw,1:POKEwy,7
210 PRINT"{black}{down}{right*5}"+chr$(111)+"{cm y*14}"+chr$(112)+"{cm y*15}"+chr$(112)
220 PRINT"{right*5}{cm h}{right*14}{cm m}{right*15}{cm n}"
230 PRINT"{right*5}{cm h}{reverse on}{blue}{right}c{reverse off}{black}hiunque tu{right*2}{cm m}{right*2}gioso,se pen{right}{cm n}"
240 PRINT"{right*5}{cm h}{right}sia prepara-{right}{cm m}{right*2}si di potere{right}{cm n}"
250 PRINT"{right*5}{cm h}{right}ti!dovrai af{right}{cm m}{right*2}farcela{.*5}{right}{cm n}"
260 PRINT"{right*5}{cm h}{right}frontare le{right*2}{cm m}{right*2}{.*4}seguimi!{right}{cm n}"
270 PRINT"{right*5}{cm h}{right}piu'crudeli{right*2}{cm m}{right}{blue}{reverse on}{right}t{reverse off}{black}i portero'{right*2}{cm n}"
280 PRINT"{right*5}{cm h}{right}creature del{right}{cm m}{right*2}nella fredda{right}{cm n}"
290 PRINT"{right*5}{cm h}{right}male per vin{right}{cm m}{right*2}cimeria.qui{right*2}{cm n}"
300 PRINT"{right*5}{cm h}{right}cere{!*3}{right*6}{cm m}{right*2}sarai chiama{right}{cm n}"
310 PRINT"{right*5}{cm h}{blue}{reverse on}{right}s{reverse off}{black}e sei corag{right}{cm m}{right*2}to{.*4}conan!{right}{cm m}"
320 PRINT"{right*5}{cm h}{right*14}{cm m}{right*15}{cm n}"
330 PRINT"{right*5}"+chr$(108)+"{cm p*14}{sh @}{cm p*15}{sh @}":GOSUB 29000
350 POKEyw,2:POKEwy,0:PRINT"{white}{reverse on}la tua missione sara' difficile.{space*8}";
360 PRINT"{reverse on}dovrai recuperare la spada fiammeggiante{down*2}":GOSUB30000:PRINT"{down*2}"
370 PRINT"{down}{reverse on}io ti guidero'attraverso le mille diffi-colta' che dovrai superare.";
380 PRINT"ricorda che{space*2}sei ancora debole per arrivare alla{.*5}"
400 GOSUB29000:GOSUB30050
410 PRINT"{down*2}{white}{.*3}montagna luminosa!"
420 PRINT"e'la che il signore del male custodisce la spada.prima di intrapren";
430 PRINT"dere il viaggio dovrai armarti e rinforzarti.":GOSUB29000
440 xy=INT(RND(1)*11):GOSUB30170
450 POKE53280,3:POKE53281,1:PRINT"{black}la forza sara' cio' che ti terra' in vita.";
455 PRINT" se andra'a zero tu morirai!l'abilita'ti servira'nei combattimenti.";
460 PRINT"con gli zecchini potrai acquistare le armi o altro.anche la fortuna";
465 PRINT"{right}e'molto importante.tutte queste qualita'potranno essere aumentate";
470 PRINT"nelle varie fasi di gioco.per affrontare alcuni avversari sono";
475 PRINT"necessarie le armi incantate in vendita nella citta' di ormuz.";
480 PRINT"invece nella torre magica troverai il {yellow}mistico{black} che ti dara'";
485 PRINT"informazioni preziose.per uccidere il {yellow}signore del male";
486 PRINT"{black} bisogna sapere";
490 PRINT"{right}il suo nome segreto.il misticolo sa!ma ora basta{.*3}conan parti!"
495 PRINT"{red}{down*2}{right*2}{.*5}{reverse on}che gli dei siano con te{reverse off}{.*5}":GOSUB29000
500 REM -nome del signore del male-
510 FORk=1TO4:a=65+INT(RND(1)*(26)):no$(k)=CHR$(a):NEXT
550 REM -mattino-
555 POKEyw,5:POKEwy,0
560 PRINT"{down*2}{yellow}";co$;" {white}svegliati!e'gia mattina.devi alzarti e decidere{.*4}"
562 GOTO30500
1000 REM-tyro-
1005 GOSUB30720
1010 PRINTSPC(10)"{white}{reverse on}in viaggio verso tyro":pe=3:di=3
1020 PRINT"{down}{black}sta andando tutto bene!non c'e' nessuno.":GOSUB29000:GOSUB30780
1030 POKEyw,6:POKEwy,0:PRINT"{clear}"
1040 PRINTSPC(17)"{reverse on}{white}{space*2}tyro{space*2}"
1050 PRINTSPC(19)"{reverse on}{black}{down*3}{space*16}":PRINTSPC(19)"{reverse on}{space*2}{yellow}{space*2}{black}{space*3}{yellow}{space*2}{black}{space*3}{yellow}{space*2}{black}{space*2}"
1055 PRINT"{reverse on}{right}{space*10}";SPC(8);"{space*2}{yellow}{space*2}{black}{space*3}{yellow}{space*2}{black}{space*3}{yellow}{space*2}{black}{space*2}"
1060 PRINT"{reverse on}{right}{space*2}{yellow} {black}{space*4}{yellow} {black}{space*2}";SPC(8);"{space*16}"
1065 PRINT"{reverse on}{right}{space*2}{yellow} {black}{space*4}{yellow} {black}{space*2}{right}{dark gray}{space*7}{black}{space*7}{gray}{space*14}"
1070 PRINT"{up}{reverse on}{right}{black}{space*10}{right}{dark gray} {yellow} {dark gray}{space*2}{yellow} {dark gray}{space*2}{black}{space*2}{yellow}{space*2}{black}{space*3}{gray}{space*2}{yellow}{space*2}{gray}{space*3}{yellow}{space*2}{gray}{space*3}{yellow}{space*2}"
1075 PRINT"{up}{reverse on}{right}{black}{space*7}{yellow} {black}{space*2}{right}{dark gray}{space*7}{black}{space*2}{yellow}{space*2}{black}{space*3}{gray}{space*2}{yellow}{space*2}{gray}{space*3}{yellow}{space*2}{gray}{space*3}{yellow}{space*2}"
1080 PRINT"{up}{reverse on}{right}{black}{space*7}{yellow} {black}{space*2}{light gray}{space*11}{black}{space*4}{gray}{space*13}"
1085 PRINT"{up}{reverse on}{right}{black}{space*10}{light gray} {yellow}{space*2}{light gray}{space*2}{yellow} {light gray}{space*2}{yellow}{space*2}{light gray} {black}{space*4}{gray}{space*5}{white}taverna{gray}{space*2}"
1090 PRINT"{up}{reverse on}{right}{black}{space*2}{yellow} {black}{space*7}{light gray}{space*11}{black}{space*4}{gray}{space*14}"
1095 PRINT"{up}{reverse on}{right}{black}{space*2}{yellow} {black}{space*7}{light gray} {yellow}{space*2}{light gray}{space*2}{yellow} {light gray}{space*5}{black}{space*4}{gray}{space*7}{black}{space*2}{gray}{space*5}"
2000 PRINT"{up}{reverse on}{right}{black}{space*10}{light gray}{space*11}{black}{space*4}{gray}{space*7}{black}{space*2}{gray}{space*5}"
2010 PRINT"{white}sei entrato in tyro.a destra vedi una taverna e ci entri."
2020 GOSUB29000:POKEyw,2:POKEwy,7:
2025 rem
2028 rem tyro missioni
2029 rem
2030 PRINT"{black}";co$;",mentre mangi ascolti e senti{.*6}":GOSUB29990
2040 PRINT"{black}1)un tirannosauro terrorizza la popolazione della cimeria orientale.";
2050 PRINT"sono offerti 50 zecchini a chi lo uccidera'."
2060 PRINT"2)un alchimista ne paghera' 100 a chi gli procurera'le radici dell'";
2070 PRINT"albero della vita che cresce nella foresta dei trolls."
2080 PRINT"3)il conte di yul cerca guerrieri per la vigilanza del suo castello."
2085 PRINT"4) in cambio di fortuna un guaritore ti aiutera'"
2090 PRINT"{black}{down}ora scegli o premi:5 per tornare a casa,6 per la situazione"
2093 INPUTq:PRINT"{clear}"
2095 IFq=6THENGOSUB30170:GOTO2030
2097 POKEyw,1:POKEwy,6:PRINTco$;",parti e buona fortuna!"
3000 rem ONqGOTO3010,5000,8020,30500
3001 ifq=6THENGOSUB30170:GOTO2030:rem situazione
3002 ifq=5THENreturn:rem ritorno
3003 ifq=2THENgosub5000:rem alchimista
3004 ifq=3THENgosub8020:rem conte yul
3005 ifq=1THENgosub3010:rem tiranno sauro
3006 ifq=4THENprint"{clear}il guaritore effettua una preghiera di guarigione."
3007 ifq=4THENmm=int(rnd(1)*5)+1:ft=ft-mm:print" - punti fortuna [";mm;"]{down}"
3008 ifq=4THENve=0
3009 goto 2030 : rem tyro missioni
3010 REM -tirann-
3015 rem
3020 pe=6:di=4:GOSUB30780
3030 PRINT"{clear}":POKEyw,14
3040 PRINTSPC(12)"{reverse on}{white}il tirannosauro"
3050 PRINTSPC(19)"{reverse on}{green}{down*3}{sh pound}{space*6}{cm asterisk}{up}{left*5}{yellow}{sh pound}{green}{space*2}{cm asterisk}{up}{left*2}{sh pound}{down}"
3060 PRINTSPC(21)"{down}{reverse on}{sh pound}{space*4}{down}{left*6}{sh pound}{reverse off}{sh pound}{reverse on}{space*3}{cm asterisk}"
3070 PRINTSPC(23)"{reverse on}{sh pound}{space*3}{down}{left*4}{space*5}{cm asterisk}":PRINTSPC(21)"{reverse on}{light green}{sh pound}{space*3}{green}{space*3}"
3080 PRINTSPC(21)"{light green}{cm asterisk}{reverse on}{right}{green}{space*4}":PRINTSPC(23)"{light green}{Q*5}{down}{left*6}{Q*7}"
3090 PRINTSPC(22)"{Q*7}{down}{left*6}{Q*5}"
4000 PRINTSPC(24)"{reverse on}{green} {black} {green} {down}{left*3}{black} {green} "
4010 PRINT"{brown}{up*2}{right}{reverse on}{sh pound}{space*9}{cm asterisk}":PRINT"{reverse on}{sh pound}{space*12}{cm asterisk}"
4020 FORt=1TO40:PRINT"{reverse on} ";:NEXT
4070 PRINT"{down}{black}ora devi combattere.e' inutile la fuga!":GOSUB29000:POKE53281,1
4080 no=1:nm$="tirannosauro":cm=50:fz=70:GOSUB60000:ze=ze+50:ab=ab+5:fo=fo+10
4085 no=0
4090 PRINT"ottimo lavoro!ora riposati per riprendere forza."
4100 GOSUB29000
4105 return
4110 rem
5000 REM -trolls-
5005 rem
5010 pe=6:di=4:GOSUB30780
5020 PRINT"{clear}":POKEwy,1:POKEyw,0
5030 PRINTSPC(10)"{reverse on}{white}la foresta dei trolls"
5035 PRINT"{reverse on}{light green}{down*4}{right*2}{sh pound} {down}{left*2}{space*2}{down}{left*2}{space*2}{down}{left*2}{reverse off}{cm asterisk}{reverse on} {up*3}";
5040 FORs=1TO4:PRINT"{reverse on}{space*33}":PRINT"{right*4}";:NEXT
5050 PRINT"{reverse on}{brown} {right*2}{brown} {orange}{right*2} {orange}{right*3} {right}{brown} {right*2}{brown} {right}{orange} {right*2}{brown} {right}{orange} {right*4}{orange} {right*2}{brown} {up*4}{light green} {cm asterisk}{down}{left*2}{space*2}{down}{left*2}{space*2}{down}{left*2} {reverse off}{sh pound}"
5060 PRINT"{down}{right*4}{reverse on}{brown} {right*2}{brown} {orange}{right*2} {orange}{right*3} {right}{brown} {right*2}{brown} {right}{orange} {right*2}{brown} {right}{orange} {right*4}{orange} {right*2}{brown} "
5080 FORs=1TO3:FORa=1TO40:PRINT"{reverse on}{green} ";:NEXT:PRINT"";:NEXT
6000 PRINT"{down*3}{right}{reverse off}tutto sembra calmo":GOSUB29000
6010 PRINT"{clear}":POKEyw,0:POKEwy,0
6020 PRINT"{white}maledizione!sei caduto in una buca!":GOSUB29990
6030 PRINT"probabilmente questa e'una caverna dei{space*2}trolls!incamminati{.*5}"
6040 GOSUB29990:PRINT"{yellow}laggiu' c'e' una luce{.*5}":GOSUB29990
6050 PRINT"{red}{.*5}ma anche un troll!ti viene incontro con un'ascia!":GOSUB8000
6080 PRINT"{white}non e' ancora finita!":GOSUB29990
6085 PRINT"{yellow}un altro troll arriva!":GOSUB8000
6090 PRINT"{white}sei ormai vicino{.*6}":GOSUB29990
7000 PRINT"{yellow}{.*3}l'ultimo troll pero' ti assale!":GOSUB8000
7080 ze=ze+100:ab=ab+5:fo=fo+20:no=0
7090 PRINT"{clear}{white}ecco l'albero della vita!prendilo e riposati.":GOSUB29000:GOTO30500
8000 PRINT"{down}{white}";co$;"!difenditi":GOSUB29000:POKE53281,1
8010 no=1:nm$="troll":cm=40:fz=30:GOSUB60000:POKE53281,0:POKE53280,0
8012 return
8015 rem
8020 REM-castello-
8025 rem
8030 pe=4:di=2:GOSUB30780
8040 PRINT"{clear}":POKEyw,4
8050 PRINTSPC(15)"{reverse on}{white}il castello{down*4}"
8060 PRINTSPC(17)"{black}{reverse on}{cm c}{cm v}{right*3}{cm c}{cm v}":PRINTSPC(17)"{reverse on}{space*2}{right*3}{space*2}"
8070 PRINTSPC(17)"{reverse on}{space*2}{gray}{space*3}{black}{space*2}":PRINTSPC(17)"{reverse on}{space*2}{gray}{space*3}{black}{space*2}"
8080 PRINTSPC(15)"{reverse on}{green}{sh pound}{space*9}{cm asterisk}":PRINTSPC(14)"{reverse on}{sh pound}{space*11}{cm asterisk}"
8090 FORt=1TO120:PRINT"{reverse on} ";:NEXT
9000 PRINT"{reverse off}{white}":GOSUB29000
9030 POKEyw,6:t=15+INT(RND(1)*64):ze=ze+t
9040 PRINT"{white}il conte di yul ti offre{yellow} ";t;"{white}zecchini"
9045 PRINT"per tre giorni di servizio"
9050 PRINT"{cyan}";co$;"{white} dovrai sorvegliare i dintorni del castello.":GOSUB29000
9060 POKEyw,1:FORg=1TO3:PRINT"{green}coraggio ";co$;" parti!"
9070 PRINT"{reverse on}{yellow}giornata numero ";g:di=g:pe=3:GOSUB30780:PRINT"{clear}":NEXT
9080 PRINT"hai lavorato bene!{right}ora prendi la paga e torna a casa!"
9090 GOSUB29000
9095 return
9100 rem
10000 REM -arya-
10005 rem
10010 GOSUB30720
10020 PRINTSPC(10)"{white}{reverse on}in viaggio verso arya":pe=6:di=4
10030 PRINT"{down}{black}sta andando tutto bene!non c'e' nessuno.":GOSUB29000:GOSUB30780
10040 PRINTSPC(18)"{blue}{reverse on}arya"
10050 PRINTSPC(20)"{reverse on}{down*4}{black} {down}{left*2}{orange}{space*3}{down}{left*5}{brown}{sh pound}{space*5}{cm asterisk}":GOSUB27260:GOSUB29000
10150 POKEyw,7:PRINT"{white}sei entrato nella piazza.ora ascolta{.*3}":GOSUB29000
10160 POKEyw,5:PRINT"{black}riesci a capire che{.*5}{down}"
10170 PRINT"{white}1)una carovana diretta ad ormuz cerca un guerriero per ";
10180 PRINT"la scorta.paghera' 50 zecchini."
10190 PRINT"2)york,il malvagio unno,ha{right}rubato l'idolo d'oro del dio";
10200 PRINT"{right}crown.sono offerti 60 zecchini a chi lo riportera'al tempio."
10210 PRINT"3)si dice che sui monti un veggente faccia grandi profezie."
10220 PRINT"{yellow}{down*2}ora rispondi con un numero oppure premi:5 per vedere la tua";
10230 PRINT" situazione,4 per tornare a casa.":INPUTx:PRINT"{clear}"
10240 IFx>4THENGOSUB30170:GOTO10160
10250 ONxGOTO10270,11150,11330,30500
10260 rem
10270 REM -ormuz-
10280 rem
10380 POKEyw,7:PRINT"{home}":FORt=1TO280:PRINT"{reverse on}{light blue} ";:NEXT
10390 PRINT"{home}per arrivare ad ormuz bisogna attraversare il deserto{.*4}"
10400 GOSUB29000:di=4:pe=6:GOSUB30780
10410 POKEyw,1:PRINTSPC(18)"{reverse on}{red}ormuz"
10420 PRINTSPC(18)"{down*4}{reverse on}{brown} {right*3} {down}{left*6}{black}{sh pound}{brown} {orange}{space*3}{brown} {black}{cm asterisk}"
10430 PRINTSPC(17)"{black}{reverse on}{space*7}":GOSUB27260
10490 PRINT"{down}{green}sei finalmente arrivato!"
10500 fo=fo+5:ze=ze+50:GOSUB29000
10510 POKEyw,1:PRINT"{clear}{green}";co$;"!ora scegli dove andare{.*8}"
10520 PRINT"{down*2}{red}1)dalla maga delle pozioni":PRINT"2)dall'alchimista"
10530 PRINT"3)dallo stregone della fortuna"
10540 PRINT"{down*2}{blue}scegli o premi:4 per tornare a casa,5 per la situazione"
10550 x=0:INPUT x:IFx>4THENGOSUB30170:GOTO10510
10560 PRINT"{clear}":POKE53281,2:ONxGOTO10570,10720,11000,30500
10570 PRINTSPC(10)"{white}{reverse on}l'antro della maga"
10580 PRINT"{black}{down}ora scegli cosa comprare{.*9}"
10590 PRINT"{yellow}{down*2}1)una pozione che dona 10 di forza(70 zecchini)"
10600 PRINT"2)un filtro che aumenta di 15 la forza(100 zecchini)"
10610 PRINT"3)un infuso che genera 25 di forza(150 zecchini)"
10620 PRINT"4)grazie,torno tra poco!"
10630 PRINT"{white}{down*2}scegli{.*6}":x=0:INPUT x:IFx>3ORx=0THEN10510
10640 IFx=1THENs=ze-70:f=10
10650 IFx=2THENs=ze-100:f=15
10660 IFx=3THENs=ze-150:f=25
10700 IFs<0THENGOSUB11120:GOTO10510
10710 GOSUB11130:ze=s:fo=fo+f:GOTO10510
10720 PRINT"{white}{reverse on}il laboratorio dell'alchimista"
10730 PRINT"{black}{down}ora scegli cosa comprare{.*9}"
10735 PRINT"{yellow}{down*2}0)un'ammazza draghi(500)":PRINT"{reverse on}25 punti d'abilita'"
10740 PRINT"1)una spada d'argento(300 zecchini)":PRINT"{reverse on}17 punti d'abilita'"
10750 PRINT"2)uno scudo d'oro(200 zecchini)":PRINT"{reverse on}10 punti d'abilita'"
10760 PRINT"3)un'ascia incantata(250 zecchini)":PRINT"{reverse on}15 punti d'abilita'"
10770 PRINT"4)una mazza ferrata(150 zecchini)":PRINT"{reverse on}7 punti d'abilita'"
10780 PRINT"5)una spada di platino(350 zecchini)":PRINT"{reverse on}20 punti d'abilita'"
10790 PRINT"6)grazie torno fra poco!"
10800 PRINT"{white}{down}scegli{.*6}":x=0:INPUT x:IFx>6THEN10720
10805 IFx=0THENs=ze-500:a=25
10810 IFx=1THENs=ze-300:a=17
10820 IFx=2THENs=ze-200:a=10
10830 IFx=3THENs=ze-250:a=15
10840 IFx=4THENs=ze-150:a=7
10850 IFx=5THENs=ze-350:a=20
10860 IFs<0THENGOSUB11120:GOTO10510
10870 GOSUB11130:ze=s:ab=ab+a
10875 IFx=0THENad=1
10880 IFx=1THENsp=1
10890 IFx=3THENas=1
10895 IFx=4THENmz=1
10900 IFx=2THENsc=1
10910 IFx=5THENpl=1
10920 GOTO10510
10930 rem
10940 rem  grotta dello stregone
10950 rem
11000 PRINT"{white}{reverse on}la grotta dello stregone"
11010 PRINT"{black}{down}ora scegli cosa comprare{.*9}"
11015 PRINT"{yellow}{down*2}1)un amuleto che dona 10 punti fortuna(70 zecchini)"
11020 PRINT"2)un talismano da 15 punti fortuna(90 zecchini)"
11030 PRINT"3)un quadrifoglio dorato da 20(110 zecchini"
11040 PRINT"4)grazie torno fra poco!"
11050 PRINT"{white}{down}scegli{.*6}":x=0:INPUT x:IFx>3ORx=0THEN10510
11060 IFx=1THENs=ze-70:w=10
11070 IFx=2THENs=ze-90:w=15
11080 IFx=3THENs=ze-110:w=20
11090 IFs<0THENGOSUB11120:GOTO10510
11100 GOSUB11130:ze=s:ft=ft+w:GOTO10510
11120 PRINT"{clear}non hai abbastanza soldi":GOSUB29000:RETURN
11130 if x<>6 then PRINT"{clear}bene,hai fatto un buon acquisto!":GOSUB29000:RETURN
11140 rem
11150 REM -unno-
11155 rem
11160 PRINT"{down*2}{black}vai ";co$;" e uccidi l'unno!":GOSUB29000
11170 pe=2:di=2:GOSUB30780:POKEyw,2
11180 PRINT"{clear}{down}{white}sei arrivato!york e'davanti a te!ha capito che sei venuto per";
11190 PRINT" l'idolo e solleva la sua pesante scure!preparati!"
11200 GOSUB29000:cm=55:fz=45:no=1:nm$="york":POKEyw,1:GOSUB60000
11210 POKEyw,2:PRINT"{clear}";SPC(10);"{reverse on}{white}l'idolo del dio crown{down*2}"
11220 PRINTSPC(18)"{reverse on}{yellow}{sh pound}{space*3}{cm asterisk}{down}{left*5} {cm asterisk} {sh pound} ":PRINTSPC(18)"{reverse on}{space*2}{black} {yellow}{space*2}"
11230 PRINTSPC(17)"{reverse on}{sh pound} {right*3} {cm asterisk}"
11240 FORt=1TO3:PRINTSPC(17)"{reverse on}{space*7}":NEXT
11250 PRINTSPC(17)"{reverse on}{green}{space*7}"
11260 FORt=1TO3:PRINTSPC(17)"{reverse on}{yellow}{space*7}":NEXT
11270 PRINTSPC(17)"{cm asterisk}{reverse on}{space*5}{reverse off}{sh pound}{reverse on}{down}{left*6}{space*5}"
11280 PRINTSPC(18)"{cm asterisk}{reverse on}{space*3}{reverse off}{sh pound}{reverse on}{down}{left*4}{space*3}{down}{left*4}{space*5}"
11310 PRINTSPC(9)"{down}{white}prendilo e torna a casa":GOSUB29000:ab=ab+5:fo=fo+8
11320 ze=ze+60:no=0:GOTO30500
11325 rem
11330 REM -veggente-
11335 rem
11340 POKEyw,2:PRINT"{clear}";SPC(10);"{white}{reverse on}verso i monti di cimeria":GOSUB27050
11350 PRINT"{down*4}la strada sembra sgombra{.*5}":GOSUB29000:pe=6:di=4:GOSUB30780
11360 POKEyw,0:PRINT"{yellow}sei arrivato{.*5}":GOSUB29990
11370 PRINT"{.*3}entri nella grotta{.*4}":GOSUB29990
11380 PRINT"{.*3}ecco il veggente che ti invita dentroe ti dice..":GOSUB29990
11385 PRINT"{white}{down*2}0) tutti i soldi per una diceria"
11390 PRINT"{down}1)per 20 punti della tua forza ti offro la prima profezia"
11400 PRINT"{down}2)per la seconda voglio 15 punti fortuna"
11410 PRINT"3)per la terza voglio ben 10 punti di abilita'"
11420 PRINT"{yellow}{down*2}scegli o premi: 4 per tornare a casa,5 per la situazione"
11425 rem
11430 INPUTx:IFx>4THENGOSUB30170
11431 IFx=0THENPRINT"{clear}{yellow}{down}l'ultima lettera e' custodita da un drago"
11432 IFx=0THENPRINT "l'oro ha la meglio contro il veleno e l'oscurita'...'":ze=0
11433 rem
11435 IFx>4THENPRINT"{clear}":GOTO11390
11440 IFx=4THEN30500
11445 IFx=1THENfo=fo-20
11450 IFx=1ANDfo<0THEN11510
11455 IFx=1THENPRINT"{clear}{yellow}{down}se per la torre andrai non pensar al numero";
11460 IFx=1THENPRINT" dei tuoi nemici lunatici perche'codardi son{.*6}"
11465 IFx=2THENft=ft-15
11470 IFx=2ANDft<0THEN11510
11475 IFx=2THENPRINT"{clear}{yellow}{down}non serve il platino o l'oro per combattere";
11480 IFx=2THENPRINT" contro gli avversari piu'potenti"
11485 IFx=3THENab=ab-10
11490 IFx=3ANDab<0THEN11510
11495 IFx=3THENPRINT"{clear}quando vorrai conquistare l'ambita arma";
11500 IFx=3THENPRINT" una porta dovrai aprir. scegli il numero:{black}{down}"
11502 IFx=3THENPRINT"{down} ... {red}[";xy;"]{yellow}"
11505 GOTO11520
11510 PRINT"{clear}{white}hai tentato di imbrogliarmi!percio'{.*3}":GOSUB29000:GOTO29500
11520 GOSUB29000:GOTO30500
11530 rem
20000 REM -montagna-
20005 rem
20010 POKEyw,0:PRINT"{clear}{white}{reverse on}in viaggio verso la montagna"
20020 PRINT"{down}{white}ora dovrai arrivare alla porta di roccia"
20030 GOSUB29000:pe=4:di=3:GOSUB30780
20040 POKEyw,0:PRINT"{reverse on}{up}{yellow}ecco la porta di roccia{.*4}";
20050 FORt=1TO213:PRINT"{reverse on}{blue} ";:NEXT
20060 PRINTSPC(17)"{down*2}{yellow}{reverse on}{sh pound}{space*2}{cm m}{space*3}{cm asterisk}"
20070 FORt=1TO6:PRINTSPC(17)"{reverse on}{space*3}{cm m}{space*4}":NEXT
20090 PRINT"{down*3}"
20140 PRINT"{.*4}ci sono 10 numeri scolpiti{.*3}":GOSUB29990
20150 PRINT"{white}{.*3}premine uno,ma attento!!":INPUT y
20160 IFy<>xyTHENPRINT"{reverse on}{clear}e' sbagliato!!un fulmine ti colpisce{.*3}":GOSUB29000
20170 IFy<>xyTHEN29500
20180 PRINT"{clear}il numero e' giusto!la porta si apre!!"
20190 PRINT"{down*4}{yellow}ora avanza!!":GOSUB29000
20200 pe=4:di=2:GOSUB30780
20210 POKEyw,4:PRINT"{reverse on}{yellow}inizia il sentiero macabro{.*5}{down*2}":GOSUB27110
20215 GOSUB29000:POKEyw,0:PRINT"{yellow}provi ad avanzare{.*4}{down}":GOSUB29990
20220 PRINT"{white}{.*3}un gigantesco vampiro ti sbarra la{space*3}strada!":GOSUB29000
20230 PRINT"{yellow}egli ti attacca{.*5}{white}":GOSUB29990
20240 IFas=0THENPRINT"{.*3}ma non hai l'ascia!":PRINT"{down}non puoi difenderti!"
20250 IFas=1THENPRINT"{.*3}con l'ascia puoi combattere!"
20260 GOSUB29000:IFas=0THEN29500
20270 nm$="vampiro":fz=60:cm=60:no=1:GOSUB60255
20280 ab=75:fo=80:no=0:PRINT"il sangue del vampiro rigenera le forze."
20285 PRINT"ora continua!":GOSUB 29000
20290 pe=4:di=2:GOSUB30780:GOSUB30050
20300 GOSUB30050:PRINTSPC(8)"{down*2}{yellow}{reverse on}ecco la montagna luminosa!":GOSUB29000
20310 PRINT"{yellow}attento!c'e' qualcuno{.*4}":GOSUB29990
20320 PRINT"{.*3}e' lo spettro del male!":GOSUB29990
20330 PRINT"{white}si lancia su di te!non servono le armi{space*2}comuni{.*4}{red}":GOSUB29990
20340 IFsp=0THENPRINT"{.*3}e tu non hai la spada d'argento.."
20350 IFsp=1THENPRINT"{.*3}ma tu hai la spada d'argento!"
20360 GOSUB29000:IFsp=0THEN29500
20370 nm$="spettro":fz=70:cm=70:no=1:GOSUB60255
20380 POKEyw,0
20390 PRINT"{white}ora entri nella montagna{.*3}":GOSUB29990
20400 PRINT"{.*3}e' molto buio{.*3}senti una risata!":GOSUB29990
20410 PRINT"e'lui!{yellow}il signore del male!":GOSUB29000
20420 PRINT"{clear}{yellow}non serve combattere!devi pronunciare il suo nome(4 lettere)!"
20430 x$="":INPUT x$:IFx$=no$(1)+no$(2)+no$(3)+no$(4)THEN21000
20435 FORy=1TO4:IFMID$(x$,y,1)=""THEN20420
20440 NEXT:PRINT"{white}il nome non e' giusto!":d=INT(RND(1)*30):GOSUB27000
20445 PRINT"l'ultima lettera e'{.*4}";:t=ASC(no$(4)):u=ASC(MID$(x$,4,1))
20450 IFt>uTHENPRINT"troppo bassa!"
20453 IFt<uTHENPRINT"troppo alta!"
20455 IFt=uTHENPRINT"giusta!devi ricordarti le altre"
20457 PRINT"il signore ti colpisce con una saetta!":GOSUB29990
20460 PRINT"la tua forza e' diminuita di ";d:fo=fo-d:IFfo<1THEN29500
20470 PRINT"ora ne hai solo{.*3}";fo
20480 GOSUB29000:GOTO20420
21000 POKEyw,2:PRINT"{clear}{yellow}il signore urla{.*3}":GOSUB29990
21010 PRINT"{.*3}hai indovinato il suo nome!":GOSUB29990
21020 PRINT"{white}egli cade e diventa polvere!{down*4}":GOSUB29990:GOSUB30000
21030 PRINTSPC(5)"{down*4}{reverse on}{yellow}la spada fiammeggiante e' tua!":fi=1:GOSUB29000
25000 REM -punteggio-
25010 POKEyw,4:PRINT"{white}{down*4}{reverse on}punteggio finale{.*4}{yellow}";
25020 p=fo*2+ab*3+ft+ze:IFfi=1THENp=p+1000
25030 IFas=1THENp=p+500
25040 IFmz=1THENp=p+100
25050 IFsc=1THENp=p+50
25060 IFsp=1THENp=p+500
25070 IFpl=1THENp=p+300
25080 PRINTp:PRINT"{down*3}{white}{reverse on}la tua qualifica e'{.*4}"
25085 IFp<100THENq$="inqualificabile":GOTO25500
25090 IFp<300THENq$="schiavo senza onore":GOTO25500
25100 IFp<600THENq$="servo della gleba":GOTO25500
25110 IFp<900THENq$="scudiero di terza categoria":GOTO25500
25120 IFp<1500THENq$="aspirante guerriero":GOTO25500
25130 IFp<2000THENq$="guerriero":GOTO25500
25140 IFp<3000THENq$="eroe dell'avventura":GOTO25500
25150 IFp<4000THENq$="re della cimeria":GOTO25500
25160 IFp>=4000THENq$="imperatore dell'oriente"
25500 PRINT"{reverse on}{yellow}{down}{space*2}";q$;"{space*2}":PRINT"{down*3}{black}vuoi riprovare?(s/n)"
25510 GETa$:IFa$=""THEN25510
25520 IFa$="n"THENPRINT"{clear}":END
25530 CLR:GOTO60
27000 REM -massimo ab e fo-
27010 IFfo>90THENfo=90
27020 IFab>75THENab=75
27030 RETURN
27050 REM -paesaggio-
27060 PRINTSPC(10)"{down*7}{black}{reverse on}{sh pound} {up}{left}{sh pound}{down}{cm asterisk}{sh pound}{right}{sh pound} {up}{left}{sh pound}{down}{cm asterisk}{sh pound}{space*2}{up*3}{sh pound}{cm asterisk}{down}{left*2}{space*2}{cm asterisk}{down}{left*3}{space*3}{down}{left*3}{space*3}";
27080 PRINT"{reverse on}{cm asterisk}{sh pound}{up*2}{sh pound}{space*2}{cm asterisk}{down}{left*4}{space*4}{down}{left*4}{space*4}{cm asterisk}{sh pound}{cm asterisk}"
27090 FORt=1TO240:PRINT"{reverse on} ";:NEXT
27100 RETURN
27110 REM -sentiero-
27120 PRINTSPC(14)"{reverse on}{black}{cm asterisk}{down}{left} {cm asterisk}{down}{left*2}{space*2}{up*2}";
27130 PRINTSPC(9)"{sh pound}{down}{left*2}{sh pound} {down}{left*2}{space*2}":PRINTSPC(14);
27140 FORt=1TO12:PRINT"{reverse on} ";:NEXT:PRINT
27150 PRINTSPC(14)"{reverse on}{space*3}{right*2}{sh pound}{cm asterisk}{right*2}{space*3}":PRINTSPC(14)"{reverse on}{space*3}{cm asterisk}{sh pound}{space*2}{cm asterisk}{sh pound}{space*3}"
27160 PRINTSPC(14);
27170 FORt=1TO12:PRINT"{reverse on} ";:NEXT:PRINT
27180 PRINTSPC(14)"{reverse on}{space*3}{cm asterisk}{reverse off}{cm asterisk}{right*2}{sh pound}{reverse on}{sh pound}{space*3}"
27190 FORt=1TO2:PRINTSPC(14)"{reverse on}{space*4}{right*4}{space*4}":NEXT
27200 PRINTSPC(14)"{reverse on}{space*4}{cm asterisk}{right*2}{sh pound}{space*4}"
27210 PRINTSPC(14)"{reverse on}{space*5}{cm asterisk}{sh pound}{space*5}{down}"
27220 FORt=1TO12:PRINT"{up*2}{reverse on}{space*14}":NEXT:PRINT"{up}"
27230 FORt=1TO12:PRINTSPC(26)"{reverse on}{up}{space*14}":NEXT
27250 RETURN
27260 REM -strada-
27270 POKEyw,1
27280 PRINTSPC(15)"{yellow}{reverse on}{space*4}{reverse off}{sh pound}{right}{cm asterisk}{reverse on}{space*4}":PRINTSPC(15)"{reverse on}{space*3}{reverse off}{sh pound}{right*3}{cm asterisk}{reverse on}{space*3}"
27290 PRINTSPC(15)"{reverse on}{space*2}{reverse off}{sh pound}{right*5}{cm asterisk}{reverse on}{space*2}":PRINTSPC(15)"{reverse on} {reverse off}{sh pound}{right*7}{cm asterisk}{reverse on} "
27300 PRINTSPC(15)"{sh pound}";SPC(9);"{cm asterisk}{up*4}"
27310 FORt=1TO5:PRINT"{reverse on}{up}{space*15}";SPC(11);"{space*14}":NEXT
27320 RETURN
28999 END
29000 REM -attesa-
29005 PRINT"{home}"
29010 FORt=1TO21:PRINT"{down}";:NEXT:PRINTSPC(6)"per continuare premi un tasto"
29020 GET at$:IFat$=""THEN29020
29030 PRINT"{clear}":RETURN
29500 REM -morte-
29510 POKEwy,0:POKEyw,0:PRINT"{clear}{up}{white}nella selvaggia cimeria solo i piu'";
29520 PRINT"forti{down}";SPC(14);"sopravvivono":GOSUB30670
29530 PRINTSPC(9)"{down*3}tu non eri tra questi!":PRINTSPC(13)"{down}{red}riposa in pace"
29540 GOSUB29000:GOTO25000
29550 REM -oggetti ritrovati-
29560 PRINT"{clear}{blue}nella terra di cimeria vale la legge del piu' forte!"
29570 PRINT"a colui che vince spettano gli oggetti{space*2}del perdente!"
29580 PRINTco$;",frugando trovi{.*14}{down}":GOSUB29990:PRINT"{green}{.*4}{reverse on}";
29590 s=INT(RND(1)*(150+ft)):IFs>ftTHENPRINT"niente!":GOSUB29000:RETURN
29600 w=INT(RND(1)*15)+1:t=INT(RND(1)*24)+1
29610 IFw=1THENPRINT"uno scudo per aumentare la tua forza":fo=fo+10
29620 IFw=2THENPRINT"una pozione che dona nuova forza":fo=fo+15
29630 IFw=3THENPRINT"una spada per aumentare l'abilita'":ab=ab+10
29640 IFw=4THENPRINT"un talismano che dona fortuna":ft=ft+5
29650 IFw=5THENPRINT"un amuleto portafortuna":ft=ft+3
29651 IFw=6THENPRINT"una pergmanena che dona attacco":at=at+(int(rnd(1)*4)+1)
29652 IFw=7THENPRINT"uno anello che riduce i danni":df=df+(int(rnd(1)*2)+1)
29654 IFw=8THENPRINT"uno anello che aumenta i danni":dn=dn+1
29655 IFw>8THENPRINT"un sacchetto con ";t;"{left} zecchini d'oro":ze=ze+t
29656 if(at>13)THENat=13
29657 if(df>7)THENdf=7
29658 if(dn>3)THENdn=3
29659 rem
29660 GOSUB29000:RETURN
29990 REM -pausa-
29991 FORy=0TO1100:NEXT:RETURN
30000 REM-grafica spada-
30010 PRINTSPC(10)"{down}{black}Q{reverse on}{space*3}{reverse off}{left*3}{up}{cm @*2}{left*2}{down*2}{cm t*2}{up}{right}{left}{up}{reverse on}i{left}{up}{reverse off}Z{reverse on}{left}{down*3}i{reverse off}{left}{down}Z{up*2}{reverse on}{yellow}{space*12}{cm asterisk}{reverse off}"
30020 RETURN
30050 REM -grafica montagne-
30060 PRINT"{home*2}":POKEyw,0:POKEwy,6
30070 PRINTSPC(18)"{white}{reverse on}{sh pound}{cm asterisk}{down}{left*2}{space*2}{cm asterisk}{down}{left*4}{sh pound}{space*3}{cm asterisk}{down}{left*6}{sh pound}{space*5}"
30080 PRINTSPC(16)"{white}{reverse on}{space*6}{right*6}{gray}{sh pound}{cm asterisk}"
30090 PRINTSPC(9)"{reverse on}{dark gray}{sh pound} {right*4}{white}{sh pound}{space*6}{cm asterisk}{right*4}{gray}{sh pound}{space*3}{right}{sh pound}{space*2}{cm asterisk}"
30100 PRINTSPC(8)"{reverse on}{dark gray}{sh pound}{space*2}{cm asterisk}{right*2}{white}{sh pound}{space*8}{right*2}{gray}{sh pound}{space*5}{right}{space*4}"
30110 PRINT"{right*6}{reverse on}{dark gray}{sh pound}{space*5}{right*2}{white}{space*9}{cm asterisk}{gray}{space*7}{cm asterisk}{space*4}"
30120 PRINT"{right*5}{reverse on}{dark gray}{sh pound}{space*6}{cm asterisk}{white}{sh pound}{space*10}{gray}{space*12}{right*2}{dark gray}{space*2}"
30130 PRINT"{up}{reverse on}{right*4}{sh pound}{space*9}{white}{space*11}{gray}{space*12}{dark gray}{sh pound}{space*2}"
30140 PRINT"{reverse on}{dark gray}{up}{right*3}{space*11}{white}{space*12}{gray}{space*11}{dark gray}{space*3}"
30150 PRINT"{up}{reverse on}{dark gray}{right*2}{sh pound}{space*11}{white}{space*12}{gray}{space*11}{dark gray}{space*3}"
30160 RETURN
30170 POKEyw,5:POKEwy,6:GOSUB27000
30180 PRINT"{white}{clear}{home}{down}la tua situazione e' la seguente{.*5}{down*2}"
30190 PRINT"{black}forza fisica{.*5}";fo;"{right*3}zecchini{.*4}";ze
30200 PRINT"{down}abilita' in armi.";ab;"{right*3}fortuna{.*5}";ft
30205 PRINT"{white}{reverse on}bonus{reverse off}{black}  attacco : ";at-1
30207 PRINT"{right*6} difesa  : ";df-1
30208 PRINT"{right*6} danno   : ";dn-1
30209 REM
30210 PRINT"{down}e possiedi{.*3}{down}{yellow}":j=0
30220 IFas=1THENPRINT"un'ascia incantata;";:j=1:rem
30230 IFmz=1THENPRINT"una mazza ferrata;";:j=1
30240 IFsp=1THENPRINT"una spada d'argento;";:j=1:rem
30250 IFpl=1THENPRINT"una spada di platino;";:j=1
30260 IFsc=1THENPRINT"uno scudo d'oro;";:j=1
30270 IFad=1THENPRINT"un'ammazza draghi';";:j=1
30280 IFj=0THENPRINT"{right*3}ancora nulla!";
30290 PRINT"{down}"
30300 IFfo=90THENPRINT"{black} max di forza ";
30310 IFab=75THENPRINT"{black} max di abilita' ";
30480 GOSUB29000:RETURN
30490 REM-prima scelta-
30500 POKEyw,5:PRINT"{yellow}{down*2}vuoi:":PRINT"{down}1)guardare la tua situazione"
30510 PRINT"2)raggiungere la citta' di tyro"
30520 PRINT"3)proseguire per la montagna luminosa"
30530 PRINT"4)visitare la contrada di arya"
30540 PRINT"5)andare alla torre magica"
30550 PRINT"6)vedere la mappa della cimeria"
30560 PRINT"{down*4}{black}rispondi con un numero e premi return":INPUT n
30565 rem
30570 goto 30647
30580 rem
30600 IFn=4andfo>60THENPRINT"{clear}{black}penso anch'io che sia tempo che tu parta":GOSUB30000
30610 IFn=4andfo<60THENPRINT"{clear}{black}{down}ripensaci ";co$;"!sei ancora molto debole!":GOSUB30670
30620 PRINT"{yellow}{reverse on}{down*4}{right*3}sei proprio deciso a partire?(s/n)"
30630 GETq$:IFq$=""andq$<>"s"andq$<>"n"THEN30630
30640 rem
30645 IFq$="s"THENgosub59000:
30646 goto 30500
30647 ifn=0THENPRINT" < scelta 1-6 > ":goto30500
30648 ifn=1THENgosub30170:rem situazione
30649 ifn=2THENgosub1000:rem tyro
30651 ifn=3THENgosub20000:rem montagna luminosa
30652 ifn=4THENgosub10000:rem arya
30653 ifn=5THENgoto 30600 : rem torre magica
30654 ifn=6THENgosub30900:rem mappa cimmeria
30655 GOTO 30500 : rem ONnGOTO1,1000,20000,10000,15000
30670 REM-teschio-
30675 PRINTSPC(15)"{white}{reverse on}{down*3}{sh pound}{space*8}{cm asterisk}":PRINTSPC(15)"{reverse on}{space*10}"
30680 PRINTSPC(15)"{reverse on}{space*2}{black}{space*2}{white}{space*2}{black}{space*2}{white}{space*2}":PRINTSPC(15)"{reverse on}{space*2}{black}{space*2}{white}{space*2}{black}{space*2}{white}{space*2}"
30690 PRINTSPC(15)"{reverse on}{space*10}{down}{left*10}{space*4}NM{space*4}"
30700 PRINTSPC(15)"{reverse on}{right}{space*8}":PRINTSPC(15)"{right*2}{cm h*7}{left*2}{down}{left*5}{L*6}{cm g}"
30710 RETURN
30720 REM-paesaggio-
30730 POKEyw,6:POKEwy,1:PRINT"{clear}"
30740 PRINTSPC(7)"{down*6}{orange}{reverse on}{sh pound}{space*8}{cm asterisk}"SPC(11)"{black}{sh pound}{space*11}{up}{left*3}{sh pound}{space*2}"
30750 PRINT"{up}{reverse off}{right}{green}Q{right*2}QQ{up}{right*4}{Q*5}{right*5}{down}QQ{right}{Q*4}{right*3}{up}{right}Q{right}Q{down}"
30760 FORt=1TO240:PRINT"{reverse on}{green} ";:NEXT
30770 RETURN
30780 REM-casualita' d'incontro-
30785 b=0:a=0:av=0:POKE53281,1:no=0
30790 b=b+1:a=INT(RND(1)*(ft+50))
30795 IFb=pe/2THENPRINT"{clear}{yellow}coraggio sei a meta' strada!"
30800 IFb=INT(pe/1.5)THENPRINT"{yellow}{clear}manca ormai un terzo di percorso!"
30810 IFb=pe-1THENPRINT"{yellow}{clear}ormai sei arrivato!"
30820 IFb=peTHENRETURN
30830 IFa>ftTHENav=av+1
30840 IFav<di+1ANDa>ftTHENGOSUB40000
30850 PRINT"{down}{red}avanti.sei ancora vivo!":PRINT"non c'e' nessuno in vista!"
30855 zz=INT(RND(1)*(6)) : fo=fo+zz : rem ripristino forza
30858 rem
30860 PRINT"ripristino in forza  (";zz;")"
30865 zz=INT(RND(1)*(3)) : ab=ab+zz :rem ripristino abilita
30866 rem
30868 PRINT"ripristino in abilita(";zz;")"
30870 GOSUB29000:GOTO30790
30900 REM-mappa-
30910 PRINT"{clear}":POKEyw,13:POKEwy,0
30915 PRINTSPC(6)"{white}{reverse on}ecco la terra di cimeria:"
30920 PRINTSPC(4)"{reverse on}{down}{white}{sh pound}{cm asterisk}{left*2}{down}{space*2}{cm asterisk}{down}{left*4}{sh pound}{space*3}{cm asterisk}{down*2}{left*7}{gray}montagna{down}{left*8}luminosa"
30923 PRINT"{down}{reverse off}{blue}{right*2}{Q*2}{down}{left*3}{Q*4}{down}{left*4}{Q*2}{right}{Q*2}{down}{left*5}{Q*2}{right*2}{Q*2}{down}{left*6}{Q}{right*4}{Q*2}"
30925 PRINT"{right}{Q*2}{right*3}{Q*2}{down}{left*6}{Q*2}{right}{Q*2}{down}{left*4}{Q*3}{down}{left*5}{reverse on}lago di{down}{left*7}{space*2}oz{space*3}"
30927 PRINT"{home}";SPC(20);"{down*3}{orange}{reverse on}{cm j}{black}{cm u}{orange}{cm l}{down}{left*5}{brown}{space*5}{down}{left*4}{down}{left}{black}tyro"
30930 PRINTSPC(32)"{up*5}{reverse on}{black}arya{down*2}{left*2}{brown}{down}{black}{left*3}{brown}{down}{left*4}{black}{sh pound}{orange}{space*5}{black}{cm asterisk}"
30932 PRINTSPC(15)"{green}{down}{Q*8}{right*6}{up}{right*4}{yellow}{Q*6}{down}{left*7}{Q*2}{right}{Q*4}";
30935 PRINT"{down}{left*7}{Q}{down}{left}B{right*5}B{up}{left*2}{Q*2}{down*2}{left*7}{Q*2}{down}{left}{Q}{right*3}{Q*2}{up}{left*2}{Q*2}";
30936 PRINT"{down}{left*6}{Q*2}{down}{left}{Q*2}{up}{left}{Q*4}{down*2}{left*7}{blue}deserto"
30937 PRINT"{home}{down*9}";SPC(13);"{green}{Q*12}":PRINTSPC(14)"{Q*13}"
30940 PRINTSPC(16)"{Q*9}{down}{left*6}{Q*5}{down}{left*12}{reverse on}foresta dei trolls"
30945 PRINTSPC(14)"{down*2}{cyan}{cm f*3}{down}{left*3}{reverse on}{space*2}{down}{left*2}{space*2}{down}{left*2}{space*2}{reverse off}{cm k}{up}{left}{cm k}{up}{left}{cm k}{white}torre {down}{left*6}magica";
30950 PRINTSPC(7)"{down*3}{reverse on}{black}{space*7}{up}{left*7}{sh pound}{brown} {cm u}{orange} {brown}{cm u} {black}{cm asterisk}{up}{left*2}{brown} {left*5} {up}{black}{up}{left}ormuz{white}"
39990 GOSUB29000:RETURN
39999 END
40000 REM -avversario-
40005 rem
40010 RESTORE
40020 qu=INT(RND(0)*50)+1:FORk=1TOqu:READnm$,fz,cm:NEXT
40030 fb=INT(fz/10)*3:PRINT"{black}attento ";co$;:PRINT"!"
40035 PRINT"hai incontrato";
40070 PRINT" un{.*21}":GOSUB29990:PRINT"{down}{.*8}{reverse on}{red}";nm$
40075 rem
40078 rem nm$="dragone":fz=120:cm=90:rem debug
40079 rem
40080 GOSUB60000:RETURN
40100 DATAdinosauro,60,20,stregone,20,23,azteco,25,25,samurai,20,60
40110 DATAgorilla,40,30,lottatore,28,45,gladiatore,45,45
40120 DATAippogrifo,12,26,vichingo,33,35,mago,10,20
40130 DATAhobbit,5,9,guerriero,27,43,soldato,28,29
40140 DATAcentauro,25,35,gnomo,9,20,cavaliere nero,35,56
40150 DATAfolletto,13,20,barbaro,41,43,mercenario,20,29
40160 DATAstrano skrull,25,30,ciclope,60,55,mostro alato,50,60
40170 DATAgoblin,37,45,satiro,20,29,grifone,37,46
40180 DATAtitano,70,70,serpente alato,40,35,gigante,65,30
40190 DATAsauriano,39,37,minotauro,34,61,dragone,120,90
40200 DATApterodattilo,37,25,demonio,39,20,cannibale,47,25
40210 DATAmammouth,60,27,ragno gigante,18,34,predone,23,29
40220 DATAunicorno,22,17,zombi,37,15,orco,55,35
40230 DATAuomo-lupo,28,34,indemoniato,13,25,kraken,65,59
40240 DATAtritone,22,38,enorme scorpione,27,40,diavolo,26,24
40250 DATAiguana,18,20,cobra dorato,23,28,varano,28,13,anaconda,12,21
40260 rem
40270 rem 
45000 rem attacco speciale
45001 if(ve>0)thenprint"{green}perdi forza e abilita per il veleno ...{black}"
45002 if(ve>0)then:fo=fo-ve:ab=ab-int(ve/2)
45004 IFfo<1THEN60600:REM ............. VELENO
45005 IFab<1THENprint"sei paralizzato ..."
45006 if int(rnd(1)*3)<>2 THEN 45990
45008 print"{down}"
45010 rem ATTACCO SPECIALE
45011 fori=1to1000:nexti 
45015 rem
45020 if(nm$="hobbit")thenprint"lo ";nm$;" indossa un anello, ora e' quasi invisibile"
45025 if(nm$="hobbit")thencm=70:nm$="hobbit invisibile"
45028 rem
45030 if(nm$="gnomo")thenprint"lo ";nm$;" lancia un incantesimo di illusione":fz=40:cm=40
45035 if(nm$="gnomo")thennm$="gnomo illusionista":goto45040
45036 if(nm$="gnomo illusionista")thenprint"lo ";nm$;" lancia una illusione"
45037 if(nm$="gnomo illusionista")thenprint"diventi te stesso tuo nemico" 
45038 if(nm$="gnomo illusionista")thenfo=fo-5:ab=ab-3:print"danni auto inflitti"
45039 rem
45040 if(nm$="cavaliere nero")then print"{black}{reverse on}il ";nm$:print
45042 if(nm$="cavaliere nero")then print"attiva la sua aura spettrale{reverse off}"
45043 if(nm$="cavaliere nero")and(sc=1)thenprint"lo scudo d'orato ti protegge'"
45044 if(nm$="cavaliere nero")and(sc=1)then45050
45045 if(nm$="cavaliere nero")then fz=fz+5:fo=fo-5:ab=ab-3:cm=cm+3
45048 rem
45050 if(nm$="mago")thenprint"il ";nm$;" lancia mani brucianti" :fo=fo-5*(int(rnd(1)*2)+1)
45055 rem
45060 if(nm$="folletto")thenprint"il " ;nm$;" diventa un gigante "
45065 if(nm$="folletto")thennm$="folletto gigante":fz=50:cm=50
45066 rem
45067 vv=0
45068 if(nm$="serpente alato")thenve=ve+int(rnd(1)*4)+1:nm$=nm$+" ":vv=1
45070 if(nm$="enorme scorpione")thenve=ve+int(rnd(1)*1)+1:nm$=nm$+" ":vv=1
45080 if(nm$="cobra dorato")thenve=ve+int(rnd(1)*2)+1:nm$=nm$+" ":vv=1
45085 if(nm$="varano")thenve=ve+int(rnd(1)*3)+1:nm$=nm$+" ":vv=1
45090 if(vv=1)thenprint"{green}il ";nm$;" ti ha inflitto un attacco velenoso.{black} "
45092 if(vv=1)and(sc=1)thenprint" ... ma lo scudo d'oro ti ha salvato!":ve=0
45095 vv=0
45098 if(nm$="dragone" )thenprint"{reverse on}{red}ti attacca col suo respiro infuocato{reverse off}"
45099 if((nm$="dragone")and(ad=1))thenprint"{reverse on}{yellow}...ma l'ammazza draaghi ti ha salvato{reverse off}"
45100 if((nm$="dragone")and(ad=0))thenprint"... ti provoca danni consistenti"
45102 if((nm$="dragone")and(ad=0))thenfo=int(fo/2):ab=int(ab/2)
45105 rem
45989 fori=1to1000:next
45990 return
46000 rem
59000 REM torre magica
59005 REM
59010 PRINT"{clear}":POKEyw,4:PRINTSPC(10)"{white}{reverse on}verso la torre magica":GOSUB27050
59110 PRINT"{down*3}{white}ora dovrai arrivare alla valle dei licantropi!"
59120 GOSUB29000:pe=6:di=4:GOSUB30780
59130 POKEyw,0:PRINT"{reverse on}{yellow}sei entrato nella valle{.*4}":GOSUB29990
59140 PRINT"{down}{.*4}sembra tutto calmo!e'ormai notte{.*3}":GOSUB29990
59150 PRINT"{white}{down}{.*3}c'e la luna piena in cielo{.*5}":GOSUB29990
59160 PRINT"{red}{down*2}..ed ecco che spuntano sei licantropi!":w=0:GOSUB29000
59170 PRINT"il primo ti attacca{.*3}ha 45 in forza e{space*2}55 in abilita'"
59180 PRINT"{down*2}{white}";co$;"{yellow}!vuoi combattere o preferisci{right}rinunciare al viaggio";
59190 PRINT"?(s/n)"
59200 GETr$:IFr$=""THEN59200
59210 IFr$="n"THENPRINT"{clear}":GOTO30500
59220 cm=55:fz=45:nm$="licantropo":no=1:GOSUB60255:POKE53281,0
59230 IFw=1THEN59250
59240 PRINT"{yellow}il primo lo hai ucciso,ma un altro ti attacca!":w=1:GOTO59180
59250 no=0:PRINT"{yellow}{.*4}anche il secondo{right}e'morto!":GOSUB29990
59260 PRINT"{red}..gli altri ti guardano{.*6}":GOSUB29990
59270 PRINT"{white}{.*3}e si dileguano nella notte!"
59280 PRINT"{down}la strada e'libera.puoi continuare il{space*3}tuo viaggio":GOSUB29000
59290 pe=5:di=3:GOSUB30780
59300 POKEyw,6:PRINTSPC(13)"{reverse on}{white}la torre magica"
59310 PRINTSPC(18)"{down*3}{reverse on}{black} {right} {right} {down}{left*5}{space*5}{down}{left*5}{space*2}{yellow} {black}{space*2}"
59320 PRINTSPC(18)"{reverse on}{space*5}{down}{left*5}{space*5}{down}{left*5}{space*5}"
59330 PRINTSPC(18)"{reverse on}{space*2}{yellow} {black}{space*2}{down}{left*5}{space*2}{yellow} {black}{space*2}"
59340 FORt=1TO200:PRINT"{white}{reverse on} ";:NEXT
59400 GOSUB29000
59410 PRINT"{black}il mistico ti rivela le prime tre lettere del nome del signore";
59420 PRINT" del male!non conosce pero' l'ultima lettera!":GOSUB29990
59430 PRINT"{yellow}{down}esse sono{.*4}{white}{reverse on}";:FORk=1TO3:PRINTno$(k);:NEXT:PRINT
59440 fo=fo+10:PRINT"{down*2}{reverse off}{white}ora vai ";co$;"!":GOSUB29000:GOTO30500
59450 rem
60000 REM -combattimento-
60005 rem
60008 rem fo=120:ab=120:rem debug
60009 rem
60010 PRINT"{down}{green}la sua forza e' di{.*5}{blue}";:GOSUB29990:PRINTfz;"{green}"
60020 PRINT"e ha{.*3}{blue}";:GOSUB29990
60030 PRINTcm;"{green}{right}in abilita' di combattimento":GOTO60100
60090 rem
60091 rem 
60092 rem
60093 rem
60094 rem
60095 IF(cm>40)and(cm<60)>=10THENPRINT"{down}{red}e' molto abile nel combattimento'"
60098 IF(cm>=60)>=10THENPRINT"{down}{red}{reverse on}e' un grande guerriero stai attento{reverse off}"
60100 IF(fz-fo)>=10THENPRINT"{down}{red}e' un avversario duro da uccidere!"
60105 IF(cm-ab)>=0THENPRINT"{down}{blue}attento!e' un ottimo combattente!"
60110 IF(fz-fo)=<10AND(cm-ab)<15THENPRINT"{down}{yellow}e' uno scontro alla tua portata'!"
60115 if(fo<15)THENprint"{down}{reverse on}{red} SEI MOLTO DEBOLE {reverse off}{red}"
60118 rem
60120 if(nm$="dragone")and(xx=1)thennm$="fantasma dragone":cm=0:fz=0:
60121 if(nm$="dragone")THENPRINT"{down}{red}L'avversario piu' forte !"
60122 if(nm$="dragone")andad=0THENPRINT"e non hai l'ammazza draghi!'"
60123 if(nm$="dragone")andad=1THENPRINT"ma hai con te l'ammazza draghi!'":fo=90:ab=75
60124 rem
60125 zf=fz:za=cm:rem salva punteggi iniziali
60150 GOSUB29000:POKE53280,5
60160 POKEyw,1:IFno=1THEN60200
60165 PRINT"{clear}";co$;"{black} pensi di{.*9}":PRINT"{green}{down}1)attaccare immediatamente"
60170 PRINT"2)avvicinarti amichevolmente":PRINT"3)scappare via"
60175 PRINT"4)procedere senza reagire"
60180 PRINT"5)vedere la tua situazione":PRINT"{down*2}{red}rispondi con un numero e return"
60185 INPUT e:PRINT"{clear}":POKEwy,2
60187 IFe=5THENGOSUB30170:GOTO60160
60190 ONeGOTO60200,60300,60400,60500
60192 rem
60195 REM info guerriero vs conan
60198 rem
60200 PRINT"{clear}{reverse on}{red}";nm$
60201 PRINT"{blue}{right*5}forza=";fz;"{right*2}abilita'=";cm:GOSUB27000
60202 PRINT"{reverse on}{red}";co$;"{reverse off}"
60203 PRINT"{blue}{right*5}forza=";fo;"{right*2}abilita'=";ab;"{down}"
60205 PRINTco$;"{green} ti lanci contro il tuo avversario e lo colpisci!!":GOSUB29990
60208 rem
60210 p=INT(RND(1)*((ab+at)+cm))+1
60212 rem
60215 IFp>abTHENPRINT"ma il colpo va a vuoto!":GOTO60255
60220 PRINT"il colpo va a segno!egli urla di dolore!"
60222 PRINT"gli procuri{.*5}{yellow}":GOSUB29990
60224 rem
60225 r=INT(RND(1)*((ab+at)+fz))+1:
60226 IFr>abTHENif(nm$="dragone")andad=1THENprint"l'ammazza draghi ha colpito!":fz=fz-12
60228 IFr>abTHENPRINT"{.*3}una ferita!":fz=fz-3:cm=cm-1
60230 IFr<ab/3THENPRINT"{.*3}tre ferite!":fz=fz-10:cm=cm-3:GOTO60240
60235 IFr<abORr=abTHENPRINT"{.*3}due ferite!":fz=fz-5:cm=cm-2
60240 IFfz<19THENPRINT"{down}{yellow}sembra molto stanco!attaccalo!"
60245 IFfz<9THENPRINT"{down}{black}sta barcollando!e' sfinito!"
60250 GOSUB29990:IFfz<1THEN60600
60255 PRINT"{light blue}{down*2}il{red} ";nm$;"{light blue} con un ringhio ti e' addosso e colpisce!":GOSUB29990
60256 rem
60257 p=INT(RND(1)*(cm+(ab+at)))+1:qc=qc+1
60258 rem
60259 IFno=1ANDqc=1THENfb=INT(fz/10)*3
60260 IFp>cmTHENPRINT"ma tu schivi il colpo!":GOTO60280
60262 PRINT"ti ha ferito!stai sanguinando!":PRINT"hai subito{.*5}{yellow}":GOSUB29990
60264 rem
60265 r=INT(RND(1)*(cm+(fo+dn)))+1:IFr>cmTHENPRINT"{.*3}una ferita!":fo=fo-int(3/df):ab=ab-1
60266 rem
60267 IFr<cm/3THENPRINT"{.*3}tre ferite!":fo=fo-int(10/df):ab=ab-3:GOTO60270
60268 IFr<cmORr=cmTHENPRINT"{.*3}due ferite!":fo=fo-int(5/df):ab=ab-2
60270 IFfo<1THEN60600
60272 IFfo<19THENPRINT"{down}{reverse on}{black}la vista ti si annebbia!"
60274 IFfo<9THENPRINT"{down}{reverse on}{yellow}stai per crollare!sei troppo debole!"
60280 IFno=1THENGOSUB29000:GOTO60200
60288 rem
60292 gosub 45000 : rem ATTACCO SPECIALE
60294 rem
60295 PRINTSPC(6)"{down*3}vuoi continuare? (s/n)"
60296 GETs$:IFs$=""THEN60296
60297 IFs$="n"THEN60400
60298 GOTO60200
60300 PRINT"{clear}{reverse on}{red}";co$;"{reverse off},{blue}provi ad avvicinarti{space*2}amichevolmente{.*4}";:GOSUB29990
60310 PRINT"{.*3}lui ti guarda{.*3}":GOSUB29990
60320 IFqu>20THENPRINT"{black}{.*5}ma non e' un amico e ti attacca!{down}"
60330 IFqu>20THENPRINT"{reverse on}{green}";co$;"{reverse off}{blue},ricordati che un {reverse on}{red}";
60335 IFqu>20THENPRINTnm$;"{reverse off}{blue} non e' mai un amico!"
60340 IFqu>20THENGOSUB29990:GOTO60255
60350 q=INT(RND(1)*(ft+100))+1:IFq>ftTHENPRINT"{.*3}{blue}e ti attacca!":GOTO60255
60360 PRINT"{green}{.*3}e si dimostra un amico!":PRINT"{blue}egli ti dona{.*11}"
60370 GOSUB29990:GOSUB29600:RETURN
60400 PRINT"{clear}{reverse on}{red}";co$;"{reverse off}{blue},abbandoni lo scontro !"
60410 q=INT(RND(1)*(30+ft)):PRINT"{down}{black}il tuo avversario ti corre dietro.."
60420 GOSUB29990
60425 IFq>ftTHENPRINT"{green}{.*3}e ti raggiunge!la fuga non e' servita!":GOTO60255
60430 PRINT"{green}{.*5}ma e' molto lento!sei riuscito a fuggire!":RETURN
60500 PRINT"{clear}{red}{reverse on}";co$;"{reverse off}{blue},avanzi nella sua direzione{.*8}"
60510 q=INT(RND(1)*(ft+100))+1:PRINT"{down}{black}{.*3}egli ti guarda{.*6}":GOSUB29990
60520 IFq>ftTHENPRINT"{green}{.*4}e ti attacca!":GOTO60255
60530 PRINT"{green}{.*4}e se ne va dall'altra parte!":RETURN
60600 IFfo<1THENGOSUB29500
60610 PRINT"{red}{reverse on}{down*2}il tuo avversario crolla!e' morto!":qc=0
60615 rem FIX zm : zf
60620 a1=(INT(za/10)*2)+1:ab=ab+a1
60622 a2=(INT(zf/10)*2)+1:fo=fo+a2
60625 rem print "XXX ";za;" YYY ";zf;" --- ";a1;" --- ";a2;"."
60630 PRINT"{down*2}ottieni";a1;"in abilita' e";a2;"in forza{black}"
60635 rem nm$="dragone":ad=1:poke53181,1 : DEBUG
60640 if(nm$="dragone")THENprint"{clear}{red}{reverse on}Il dragone si dissolve "
60645 if(nm$="dragone")THENprint"{down*2}lasciando sulla terra una lettera [ ";no$(3);" ].""
60647 if(nm$="dragone")andad=1THENPRINT"{down*2}e con esso si dissolve l'ammazzadraghi !"
60648 if(nm$="dragone")THENPRINT"{down*2}ottieni";a1;"in abilita' e";a2;"in forza{black}"
60649 if(nm$="dragone")THENXX=1:ad=0:print"{reverse off}"
60650 GOSUB27000:GOSUB29000:GOSUB29550:RETURN