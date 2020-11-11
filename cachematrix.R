## Put comments here that give an overall description of what your
## functions do

## Makes a matrix and defines functions for 
##getting and setting values of the cache matrix and inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
   inv <<- NULL
  }
  get <- function() x
  setinv <- function(mean) inv <<- solve()
  getinv <- function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)

}


## This function checks if the inverse of 
# a matrix is storeed in cache and returns it or
# calclulates the inverse if cache is not present

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)){
    message('getting cached data')
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  inv
        ## Return a matrix that is the inverse of 'x'
}
