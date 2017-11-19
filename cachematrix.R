## R Programming assigment 2. 

## the function to find get - set inverse - and get inverse!

makeCacheMatrix <- function(x = matrix()) {
  I<-NULL
  set<- function(y) {
    x<<- y
    I<<-NULL
  }
  get<-function() x
  setInverse<-function(Inverse) I<<-Inverse
  getInverse<-function() I
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## This function actually do something, it use solve to find the inverse unless it already exist 

cacheSolve <- function(x, ...) {
        I<- x$getInverse()
        if(!is.null(I)) {
          message("Getting Cached Data")
          return(I)
        }
        data<-x$get()
        I<-solve(data,...)
        x$setInverse(I)
        I
}
## This was used just to test if it was working. It does, I promise ;)

cacheSolve(makeCacheMatrix(matrix(c(1,2,3,4), nrow=2, ncol=2)))

