df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table

#a
LeftJoin = merge(x = df1,y = df2,by.x = "CustId")
#b
InnerJoin=merge(x=df1,y=df2,by="CustId")
#c
LeftOuter=merge(x=df1,y=df2,by="CustId",all.x=TRUE)
#d
RightOuter=merge(x=df1,y=df2,by="CustId",all.y=TRUE)

#2
#a
without_matching =merge(x = df1, y = df2, by = NULL)

#2b.
df2b<-subset(merge(x=df1,y=df2,by="CustId"),select = -State)
df2b

#2c
df2c<-merge(x=df1,y=df2,by="CustId",all.x=TRUE)
df2c1 <- df5[!complete.cases(df5), ]
df2c2 <- subset(df6, select = -State)
df2c2
