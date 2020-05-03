## Put comments here that give an overall description of what your
## functions do
##my function will store the matrix and cash its inverse
## Write a short comment describing this function
##it take the matrix then stores it and get it inverse

makeCacheMatrix <- function(x = matrix()) {
          i <- NULL
          set <- function(y){
            i <<-NULL
          }
          get <-function() x
          setinverse <- function(inverse) i <<- inverse
          getinverse <- function() i
          list(set=set,
               get=get,
               setinverse=setinverse,
               getinverse=getinverse)
}


## Write a short comment describing this function
##the function will calculate the inverse of the matrix returned above if it is not calculated oher cachsolve will retrieve the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <-x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data,...)
  x$setinverse(i)
  i
  
}
