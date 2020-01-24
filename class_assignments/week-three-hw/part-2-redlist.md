**Commands and Outputs**

\\\Bash

$ tail -n +2 European_Red_List.csv | cut -d "," -f 10 | sort | uniq -c

    456 CR
      8 CR (PE)
   2409 DD
    687 EN
      4 EW
     29 EX
   5805 LC
    411 NA
      4 NE
    964 NT
      8 RE
    885 VU




$ tail -n +2 European_Red_List.csv | cut -d "," -f 4 | sort | uniq -c

   1604 ACTINOPTERYGII
     89 AMPHIBIA
    533 AVES
     54 BIVALVIA
     13 CEPHALASPIDOMORPHI
    132 CHONDRICHTHYES
      3 CONIFEROPSIDA
     17 EQUISETOPSIDA
   2048 GASTROPODA
      2 GNETOPSIDA
   4365 INSECTA
     31 ISOETOPSIDA
    720 LILIOPSIDA
     21 LYCOPODIOPSIDA
   1443 MAGNOLIOPSIDA
    261 MAMMALIA
      3 MYXINI
      3 OPHIOGLOSSOPSIDA
     10 PINOPSIDA
    157 POLYPODIOPSIDA
     13 PSILOTOPSIDA
    148 REPTILIA





$ tail -n +2 European_Red_List.csv | cut -d "," -f 4-10 | sort -k 1 | tail -n +1694 | head -n 533 | cut -d "," -f 7 | sort | uniq -c

     10 CR
     18 EN
      2 EX
    428 LC
     32 NT
      4 RE
     39 VU  






$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "CR"

ACCIPITRIFORMES,ACCIPITRIDAE,Aquila,nipalensis,No,CR
CHARADRIIFORMES,CHARADRIIDAE,Vanellus,gregarius,No,CR
CHARADRIIFORMES,SCOLOPACIDAE,Numenius,tenuirostris,No,CR
CHARADRIIFORMES,TURNICIDAE,Turnix,sylvaticus,No,CR
OTIDIFORMES,OTIDIDAE,Chlamydotis,macqueenii,No,CR
PASSERIFORMES,ALAUDIDAE,Ammomanes,deserti,No,CR
PASSERIFORMES,ALAUDIDAE,Melanocorypha,yeltoniensis,No,CR
PASSERIFORMES,EMBERIZIDAE,Emberiza,aureola,No,CR
PROCELLARIIFORMES,PROCELLARIIDAE,Puffinus,mauretanicus,Yes,CR
STRIGIFORMES,STRIGIDAE,Ketupa,zeylonensis,No,CR



$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "CR" | grep -w  "ACCIPITRIFORMES" 


ACCIPITRIFORMES,ACCIPITRIDAE,Aquila,nipalensis,No,CR



$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "CR" | grep -w  "ACCIPITRIFORMES" | wc -l 


1


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "CR" | grep -w  "CHARADRIIFORMES" | wc -l


3


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "CR" | grep -w  "OTIDIFORMES" | wc -l


1


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "CR" | grep -w  "PASSERIFORMES" | wc -l

3


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "CR" | grep -w  "PROCELLARIIFORMES" | wc -l


1


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "CR" | grep -w  "STRIGIFORMES" | wc -l


1


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "EX"

 
CHARADRIIFORMES,ALCIDAE,Pinguinus,impennis,No,EX
CHARADRIIFORMES,HAEMATOPODIDAE,Haematopus,meadewaldoi,Yes,EX


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "EX" | grep -w "CHARADRIIFORMES" | wc -l


2


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "RE"


CHARADRIIFORMES,CHARADRIIDAE,Charadrius,asiaticus,No,RE
PASSERIFORMES,SYLVIIDAE,Sylvia,nana,No,RE
PELECANIFORMES,THRESKIORNITHIDAE,Geronticus,eremita,No,RE
SULIFORMES,ANHINGIDAE,Anhinga,rufa,No,RE


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "RE" | grep -w "CHARADRIIFORMES" | wc -l

1

$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "RE" | grep -w "PASSERIFORMES" | wc -l


1


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "RE" | grep -w "PELECANIFORMES" | wc -l


1


$ grep AVES European_Red_List.csv  | grep -w -E "EX|RE|CR" | cut -d "," -f 5-10 | grep -w "RE" | grep -w "SULIFORMES" | wc -l


1

