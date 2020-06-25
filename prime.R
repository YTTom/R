Composite <- function(num){
  yes <- FALSE
  if(num == 2){
    yes <- TRUE
  } else if(num > 2) {
    yes <- TRUE
    for(i in 2:(num-1)) {
      if ((num %% i) == 0) {
        yes <- FALSE
        break
      }
    }
  }
  if(yes) {
    
  } else {
    cat(num,"\n")
  }
}

for(j in 1:100){
  Composite(j)
}
