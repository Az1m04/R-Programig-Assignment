confi=read.csv("D:/study file/INT 217 class/time_series_19-covid-Confirmed.csv")
confi
death=read.csv("D:/study file/INT 217 class/time_series_19-covid-Deaths.csv")
death
reco=read.csv("D:/study file/INT 217 class/time_series_19-covid-Recovered.csv")
reco

library(sqldf)
Q1:ans
sqldf("select sum(mar19) as total_cases from confi")

output:
#  total_cases
#1      242708

Q2:ans
sqldf("select sum(mar19) as total from confi where Country='China' ")

#output:
#  total_cases
#1      242708
  
Q3:ans
sqldf("select Country ,mar19 as confiremd_cases from confi group by Country order by mar19 DESC")

output:
#   Country confiremd_cases
# 1                              China           67800
# 2                              Italy           41035
# 3                               Iran           18407
# 4                              Spain           17963
# 5                            Germany           15320
# 6                             France           10871
# 7                       Korea, South            8565
# 8                        Switzerland            4075
# 9                        Netherlands            2460
# 10                           Austria            2013
# 11                           Belgium            1795
# 12                            Norway            1746
# 13                            Sweden            1439
# 14                                US            1376
# 15                           Denmark            1151
# 16                             Japan             924
# 17                          Malaysia             900
# 18                          Portugal             785
# 19                       Cruise Ship             712
# 20                           Czechia             694
# 21                            Israel             677
# 22                            Brazil             621
# 23                           Ireland             557
# 24                             Qatar             460
# 25                          Pakistan             454
# 26                            Greece             418
# 27                           Finland             400
# 28                            Poland             355
# 29                         Singapore             345
# 30                        Luxembourg             335
# 31                           Iceland             330
# 32                         Indonesia             311
# 33                         Australia             307
# 34                          Slovenia             286
# 35                           Bahrain             278
# 36                           Romania             277
# 37                      Saudi Arabia             274
# 38                          Thailand             272
# 39                           Estonia             267
# 40                             Egypt             256
# 41                             Chile             238
# 42                              Peru             234
# 43                            Canada             231
# 44                       Philippines             217
# 45                            Russia             199
# 46                           Ecuador             199
# 47                             India             194
# 48                            Turkey             192
# 49                              Iraq             192
# 50                           Lebanon             157
# 51                      South Africa             150
# 52                            Kuwait             148
# 53              United Arab Emirates             140
# 54                          Slovakia             123
# 55                        San Marino             119
# 56                            Mexico             118
# 57                           Armenia             115
# 58                            Panama             109
# 59                           Taiwan*             108
# 60                           Croatia             105
# 61                            Serbia             103
# 62                          Colombia             102
# 63                         Argentina              97
# 64                          Bulgaria              94
# 65                           Algeria              87
# 66                            Latvia              86
# 67                           Vietnam              85
# 68                           Uruguay              79
# 69                            Brunei              75
# 70                           Hungary              73
# 71                            Jordan              69
# 72                        Costa Rica              69
# 73                            Cyprus              67
# 74                           Albania              64
# 75                           Morocco              63
# 76            Bosnia and Herzegovina              63
# 77                         Sri Lanka              60
# 78                             Malta              53
# 79                           Andorra              53
# 80                           Belarus              51
# 81                           Moldova              49
# 82                              Oman              48
# 83                   North Macedonia              48
# 84                        Kazakhstan              44
# 85                        Azerbaijan              44
# 86                         Venezuela              42
# 87                           Georgia              40
# 88                           Tunisia              39
# 89                          Cambodia              37
# 90                         Lithuania              36
# 91                Dominican Republic              34
# 92                      Burkina Faso              33
# 93                           Senegal              31
# 94                       New Zealand              28
# 95                     Liechtenstein              28
# 96                        Uzbekistan              23
# 97                        Martinique              23
# 98                       Afghanistan              22
# 99                        Bangladesh              17
# 100                          Ukraine              16
# 101                          Jamaica              15
# 102                 Congo (Kinshasa)              14
# 103                         Maldives              13
# 104                         Cameroon              13
# 105                         Honduras              12
# 106                          Bolivia              12
# 107                   United Kingdom              11
# 108                         Paraguay              11
# 109                            Ghana              11
# 110                             Cuba              11
# 111              Trinidad and Tobago               9
# 112                        Guatemala               9
# 113                    Cote d'Ivoire               9
# 114                           Rwanda               8
# 115                          Nigeria               8
# 116                           Monaco               7
# 117                            Kenya               7
# 118                           Guyana               7
# 119                         Tanzania               6
# 120                       Seychelles               6
# 121                         Mongolia               6
# 122                         Ethiopia               6
# 123                Equatorial Guinea               6
# 124                         Barbados               5
# 125                          Namibia               3
# 126                       Montenegro               3
# 127                        Mauritius               3
# 128                       Kyrgyzstan               3
# 129              Congo (Brazzaville)               3
# 130                     Bahamas, The               3
# 131                           Zambia               2
# 132                            Sudan               2
# 133                      Saint Lucia               2
# 134                       Mauritania               2
# 135                          Liberia               2
# 136                           Kosovo               2
# 137                            Benin               2
# 138                             Togo               1
# 139                         Suriname               1
# 140                          Somalia               1
# 141 Saint Vincent and the Grenadines               1
# 142                        Nicaragua               1
# 143                            Nepal               1
# 144                         Holy See               1
# 145                           Guinea               1
# 146                      Gambia, The               1
# 147                            Gabon               1
# 148                             Fiji               1
# 149                         Eswatini               1
# 150                      El Salvador               1
# 151                         Djibouti               1
# 152                             Chad               1
# 153         Central African Republic               1
# 154                           Bhutan               1
# 155              Antigua and Barbuda               1

Q4: ans
sqldf("select reco.Country,sum(reco.mar19) as recoverd,sum(death.mar19) as deaths from reco inner join death on reco.State=death.State where  reco.Country='US' ")

# output:
#   Country recoverd deaths
# 1      US        0    207

Q5: ans
sqldf("select * from reco ")

Q6: ans
sqldf("select Country,mar19 as deaths_recorded from death where Country in ('China','Italy') group by Country")

# output:
#   Country deaths_recorded
# 1   China            3130
# 2   Italy            3405

Q7: ans
