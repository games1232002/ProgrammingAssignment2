## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  temp <- NULL
  ##setter
  setCache <- function(y) {
    x <<- y
    temp <<- NULL
  }
  ##getter
  getCache <- function() x
  setinverse <- function(inverse) temp <<- inverse
  getinverse <- function() temp
  ##generate the resultant list
  list(setCache = setCache,
       getCache = getCache,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  temp <- x$getinverse()
  ##check if-empty
  if (!is.null(temp)) {
    message("using cached data")
    return(temp)
  }
  ##get the cached data
  data <- x$getCache()
  ##actual solving of data
  temp <- solve(data,...)
  x$setinverse(temp)
  ##return solution
  temp
  
}