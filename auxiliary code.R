* Race overall breakdown 

A<-1
B<-2
I<-3
P<-4
Q<-5
U<-6
W<-7
Z<-8

RacePlot<- c(3.5,51.1,0.004,7.1,25.6,0.008,9,2.4)
Racenames <- c(A,B,I,P,Q,U,W,Z)
barplot(RacePlot, names.arg = Racenames, main = "Race Break Down", xlab = "Race", ylab = "Percentage")

* Sex breakdown 

M <- 1
 F <- 2
 Z <- 3 
SexPlot <- c(91.1,6.8,1.8)
Sexnames <- c(M,F,Z)
barplot(SexPlot, names.arg = Sexnames, main = "Sex Break Down", xlab = "Sex", ylab = "Percentage")

* Frisked plot 

Y<-1
N<-2
FriskedPlot<- c(55.66,44.33)
Friskednames <- c(Y,N)
barplot(FriskedPlot, names.arg = Friskednames, main = "Frisked Break Down", xlab = "Frisked", ylab = "Percentage")


* Murder rates 2010 all pct 
Murder_precinct <- c(1,2,3)
Murder_rate <- c(2,1,1)
barplot(Murder_rate, names.arg = Murder_precinct)

barplot(MurderRates2010ALLPCT)
barplot(MurderRates2010ALLPCT, main = "Murder Rates 2010 All Precincts", xlab = "Murder by Precinct", ylab = "Magnitude of Murder")



* Race by precinct: Black / White

table(race,pct)
        pct
race     1     5     6     7     9    10    13    14    17    18    19    20
B       2044  1218  1609  1454  1799  1650  2210  5724   801  1774  1766  2212
W       663   432   595   571  1237   534  1255  1797   440   667  1180  1169

        pct
race    22    23    24    25    26    28    30    32    33    34    40    41
B       519 10357  2503  6658  3369  7163  3131 11268  1594  1054  9200  4617
W       316   398   522   301   217   219   206   181   262   390   199   206

        pct
race    42    43    44    45    46    47    48    49    50    52    60    61
B      7373  7216  8341  1895  5995  8309  2314  4004   693  4256  4991  1844
W       94   280   216   909    92   221   220   997   288   368  2168  3199

       pct
race    62    63    66    67    68    69    70    71    72    73    75    76
B       346  3621   447 11728   216  5486  8737  5486   567 21452 21742  2002
W      2158   548   748   145  1557   127   597   129   465   245   468   886

        pct
race    77    78    79    81    83    84    88    90    94   100   101   102
B      9768  1356 11217 11668  4734  3242  5890  6303   499  3203  9983  1818
W       334   604   635   211   723   615   449  1731   718   972   149   715

       pct
race   103   104   105   106   107   108   109   110   111   112   113   114
B     12093   703  7304  2754  2453   663  2061   886   896   726 10503  3587
W      378  1845   481   736   628   901  1632   416  1498  1229   230  1795

       pct
race   115   120   122   123
B     1539  8608  1439    92
W      663  3090  5680  1665

RACEPCT <- table(race,pct)
barplot(RACEPCT)

table(sex,pct)
        pct
sex     1     5     6     7     9    10    13    14    17    18    19
F      267   310   235   207   459   239   476  1054   200   370   493
M     3353  2728  2622  3915  4760  2837  4721  9440  1781  3240  4560
Z       6    80    97    55   148    13    55   171    79    23   197
       
       pct
sex    20    22    23    24    25    26    28    30    32    33    34
F      636   135  1257   510   759   424   776   412  1150   378   566
M     4543  1279 16007  4393  8849  4543  7913  6819 11643  6613 10746
Z      58     2   234    15   318    24    49   319    66    50   236
      
       pct
sex    40    41    42    43    44    45    46    47    48    49    50
F     1315   880   780  1271   879   481   757   763   423   471   115
M    16338  9950 11201 15261 15407  4713 12945  9998  4528  7993  2558
Z     37   499   433   749   617   168    16   175   314    31    10
     
      pct
sex    52    60    61    62    63    66    67    68    69    70    71
F     732   680   349   258   222   270   870   134   390   895   364
M    12514  9256  6242  4120  4353  3536 11688  2754  5720 10997  5641
Z     402    16    29     7    10    21   535     2     7   412     9
     
      pct
sex    72    73    75    76    77    78    79    81    83    84    88
F     209  1932  2006   492   787   255  1176  1035   883   607   623
M    6739 22603 28157  4161 10549  3219 13070 12560 13647  4539  6898
Z      29   632   937     6    69    81   249    56   491    68   213
       
      pct
sex    90    94   100   101   102   103   104   105   106   107   108
F     874   164   344   318   586  1175   451   513   382   322   333
M    16638  1857  4768 11161  8620 15730  6372  9207  8071  5057  5525
Z      54     2     0    97   280   247    51    71   190   204     2
    
      pct
sex   109   110   111   112   113   114   115   120   122   123
F     585   403   335   177   675   568   608  2071  1106   177
M    12270 10371  4317  3123 11607  9326 17133 14314  8355  1848
Z      9    21    28   107    77   449   415   105    74     2

SEXPCT<- table(sex,pct)
barplot(SEXPCT)

table(frisked,pct)
           pct
frisked     1     5     6     7     9    10    13    14    17    18    19
N         2061  1761  1560  1711  2545  1557  3202  7052  1494  2626  3461
Y        1565  1357  1394  2466  2822  1532  2050  3613   566  1007  1789

          pct
frisked    20    22    23    24    25    26    28    30    32    33    34
N         3640   972  6427  2970  3604  2124  4554  3563  3794  3149  5876
Y         1597   444 11071  1948  6322  2867  4184  3987  9065  3892  5672

          pct
frisked    40    41    42    43    44    45    46    47    48    49    50
N         6576  4435  3652  7532  3766  3186  2691  4296  1713  3894  1333
Y        11114  6894  8762  9749 13137  2176 11027  6640  3552  4601  1350

          pct
frisked    52    60    61    62    63    66    67    68    69    70    71
N        4503  4344  2823  2775  1525  2247  6662  1592  3166  5773  2926
Y        9145  5608  3797  1610  3060  1580  6431  1298  2951  6531  3088

          pct
frisked    72    73    75    76    77    78    79    81    83    84    88
N        3774 11829 14298  2776  5201  2120  7325  5474  6169  3584  3745
Y        3203 13338 16802  1883  6204  1435  7170  8177  8852  1630  3989

          pct
frisked    90    94   100   101   102   103   104   105   106   107   108
N       10645   973  2445  2686  4295  7988  2127  4349  4847  2671  2639
Y        6921  1050  2667  8890  5191  9164  4747  5442  3796  2912  3221

          pct
frisked   109   110   111   112   113   114   115   120   122   123
N        4267  2941  2023  1396  5997  3929  5098  8541  5519  1236
Y        8597  7854  2657  2011  6362  6414 13058  7949  4016   791

FRISKPCT <- table(frisked,pct)
barplot(FRISKPCT)


