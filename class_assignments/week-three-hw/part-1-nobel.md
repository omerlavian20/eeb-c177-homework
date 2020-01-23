**Commands and Outputs**



///Bash

$ tail -n +2 nobel.csv | cut -d "," -f 3 | sort -r | uniq -c   

    210 "physics" 
    133 "peace" 
    216 "medicine" 
    114 "literature" 
     81 "economics" 
    181 "chemistry" 



$ tail -n +2 nobel.csv | cut -d "," -f 5-6 | sort -r | uniq -c | sort -n

      2 "Frederick","Sanger"
      2 "John","Bardeen"
      2 "Linus Carl","Pauling"
      2 "Marie","Curie
      2 "Office of the United Nations High Commissioner for Refugees (UNHCR)",NA
      3 "Comité international de la Croix Rouge (International Committee of the Red Cross)",NA



$ tail -n +2 nobel.csv | cut -d "," -f 6 | sort -r | uniq -c | sort -n

      2 "Bardeen"
      2 "Bloch"
      2 "Bohr"
      2 "Bragg"
      2 "Brown"
      2 "Buck"
      2 "Chamberlain"
      2 "Curie
      2 "Frank"
      2 "Friedman"
      2 "Hall"
      2 "Henderson"
      2 "Hess"
      2 "Hodgkin"
      2 "Hoffmann"
      2 "Jensen"
      2 "Kendall"
      2 "Kornberg"
      2 "Krebs"
      2 "Marshall"
      2 "Mistral"
      2 "Moser"
      2 "Mott"
      2 "Murad"
      2 "Myrdal"
      2 "Pauling"
      2 "Porter"
      2 "Richards"
      2 "Richardson"
      2 "Sanger"
      2 "Siegbahn"
      2 "Simon"
      2 "Thomson"
      2 "Tinbergen"
      2 "Wiesel"
      2 "Williams"
      3 "Lee"
      3 "Lewis"
      3 "Müller"
      4 "Fischer"
      4 "Wilson"
      5 "Smith"
     31 NA



$ tail -n +2 nobel.csv | wc -l 

935

$ tail -n +2 nobel.csv | cut -d "," -f 2 | sort -n | uniq -c

6 1901

$ tail -n +2 nobel.csv | head -n 929 | cut -d "," -f 3 | sort -r |  uniq -c


  209 "physics"
  131 "peace"
  215 "medicine"
  113 "literature"
   81 "economics"
  180 "chemistry"




