q4=read.table("http://ww2.amstat.org/publications/jse/datasets/kidsfeet.dat.txt")
head(q4)
attach(q4)
str(q4)
boys=subset(q4,V5=="B")
girls=subset(q4,V5=="G")
t.test(boys$V3,alt="greater",girls$V3)
#Output
Welch Two Sample t-test

data:  boys$V3 and girls$V3
t = 1.9174, df = 36.275, p-value = 0.03154
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
  0.09382502        Inf
sample estimates:
  mean of x mean of y 
23.10500  22.32105 
#since p<0.05, we reject ho that means avg boys foot are longer then foot of girls