murderdata <- MuderOffensesNYC[MuderOffensesNYC$CRIME == "MURDER & NON NEGL. MANSLAUGHTER" & MuderOffensesNYC$PCT != 121,]

X2011_SQFData522$frisk <- X2011_SQFData522$frisked == "Y"
friskeddata <- aggregate(frisk ~ pct, data = X2011_SQFData522, FUN = "sum")

stopdata <- aggregate(frisk ~ pct, data = X2011_SQFData522, FUN = "length")


agedata <- aggregate(age ~ pct, data = X2011_SQFData522, FUN = "mean")

stopdatayoung <- aggregate(frisk ~ pct, data = X2011_SQFData522[X2011_SQFData522$age <= 30,], FUN = "length")
stopdatablack <- aggregate(frisk ~ pct, data = X2011_SQFData522[X2011_SQFData522$race == "B",], FUN = "length")
