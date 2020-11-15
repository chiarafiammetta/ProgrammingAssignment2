## The assignment consists in writing two functions that allow to cache the 
## inverse of a matrix rather than computing it repeatedly. This allows to 
## save computing time.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
z = NULL
set = function(y) {
  x <<- y
  z <<- NULL
} 
get = function() x
setinv = function(inverse) z <<- inverse 
getinv = function() z
list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## his function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
  z = x$getinv()
  if (!is.null(z)){
    message("retriving cached data")
    return(z)
  }
  x$setinv(z)
  return(z)
  }
