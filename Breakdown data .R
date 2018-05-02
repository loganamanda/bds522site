library(readxl)
MuderOffensesNYC <- read_excel("~/Desktop/Website_template/MuderOffensesNYC.xls")
murderdata <- MuderOffensesNYC[MuderOffensesNYC$CRIME == "MURDER & NON NEGL. MANSLAUGHTER" & MuderOffensesNYC$PCT != 121,]
robberydata <- MuderOffensesNYC[MuderOffensesNYC$CRIME == "ROBBERY" & MuderOffensesNYC$PCT != 121,]



X2011_SQFData522$frisk <- X2011_SQFData522$frisked == "Y"
friskeddata <- aggregate(frisk ~ pct, data = X2011_SQFData522, FUN = "sum")
stopdata <- aggregate(frisk ~ pct, data = X2011_SQFData522, FUN = "length")


agedata <- aggregate(age ~ pct, data = X2011_SQFData522, FUN = "mean")

stopdatayoung <- aggregate(frisk ~ pct, data = X2011_SQFData522[X2011_SQFData522$age <= 30,], FUN = "length")
stopdatablack <- aggregate(frisk ~ pct, data = X2011_SQFData522[X2011_SQFData522$race == "B",], FUN = "length")

summary(lm(stopdatablack$frisk ~ murderdata$`2010`))
summary(lm(stopdatablack$frisk ~ murderdata$`2010` + murderdata$`2011` +  murderdata$`2012`))
summary(lm(stopdatayoung$frisk ~ murderdata$`2010` + murderdata$`2011` +  murderdata$`2012`))
summary(lm(stopdata$frisk ~ murderdata$`2010` + murderdata$`2011` +  murderdata$`2012`))

summary(lm(stopdata$frisk ~ murderdata$`2010` + robberydata$`2010`))
summary(lm(stopdatablack$frisk ~ murderdata$`2010` + robberydata$`2010`))
summary(lm(stopdatayoung$frisk ~ murderdata$`2010` + robberydata$`2010`))


