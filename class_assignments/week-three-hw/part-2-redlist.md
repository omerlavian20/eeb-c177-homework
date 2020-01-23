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

