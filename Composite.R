#讀取檔案(路徑要改成自己的)
data <- read.csv('~/Downloads/data.csv')

#抓取106和106年度的資料
year106<-data[年度=='106',]
year107<-data[年度=='107',]

#抓取總人數的資料
year106_people <- year106[,c(4)]
year107_people <- year107[,c(4)]

#將總人數轉換為matrix(向量)
matrix106<-matrix(year106_people)
matrix107<-matrix(year107_people)

#合併兩年的matrix
merge_matrix<-cbind(matrix106,matrix107)

#補上欄位名稱
rownames(merge_matrix) <- c('英國','美國','日本')
colnames(merge_matrix) <- c('106','107')

#設定中文編碼和字體(原來會顯示亂碼)
Sys.setlocale(category="LC_ALL",locale="en_US.UTF-8")
par(family='宋體-繁 細體')

#繪製長條圖
barplot(bind,beside=TRUE,, xlab="國別", ylab="留學生人數",legend=rownames(bind),family="宋體-繁 細體")
