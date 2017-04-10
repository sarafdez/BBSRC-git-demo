
# From https://github.com/poldrack/reproducible-workflows

# R code
df=read.table('http://data.bris.ac.uk/datasets/swyt56qr4vaj17op9cw3sag7d/LskyetalPLOSONE.csv',
              header=TRUE,sep=',')
head(df)

# R code
max_age=120
min_age=18

# R code
df=subset(df,age>min_age&age<max_age)

stopifnot(max(df$age)<max_age)
stopifnot(min(df$age)>min_age)

# R code
lm.result=lm(conspiracist_avg~age,data=df)
summary(lm.result)

# R code
plot(df$age,df$conspiracist_avg)

