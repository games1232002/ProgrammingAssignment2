## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  temp <- NULL
  setCache <- function(y) {
    x <<- y
    temp <<- NULL
  }
  getCache <- function() x
  setinverse <- function(inverse) temp <<- inverse
  getinverse <- function() temp
  list(setCache = setCache,
       getCache = getCache,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  temp <- x$getinverse()
  if (!is.null(temp)) {
    message("using cached data")
    return(temp)
  }
  data <- x$getCache()
  temp <- solve(data,...)
  x$setinverse(temp)
  temp
  
}