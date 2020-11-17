library("readxl")
zh=read_excel=(Steuern_kt_zh_2019)
zh[1,3]=zh[1,2]
zh[1,5]=zh[1,4]
zh[,2:5]=zh[,2:5]/1000
plot(zh$`kumuliert normal`,zh$`einkommenstuer in %`, pch=16, col="blue", main="EinkommenStuer prozentual zum einkommen",xlab = "Einkommen",ylab="steuern %",type = "b")

lines(zh$`kumliert begünstig`,zh$`einkommenstuer in %`, pch=16,col= "black",type = "b")

legend("topright", legend=c("normal", "begünstigt"), col=c("blue", "black"), pch=16)
grid()
