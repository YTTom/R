TreeShoot <- function(){
id <- c(1:9)
avg <- c(0.3,0.2,0.2,0.7,0.1,0.9,0.5,0.8,0.6)
median.result <- median(avg)

list <- list("同學編號"=id,"命中率"=avg,"中位數"=median.result)
return(list)
}

TreeShoot()
