## The function makeCacheMatrix creates a matrix and
##CacheSolve generates the inverse of it.

## this function generates a matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(a) {
    x <<- a
    invr <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) invr <<- inverse
  getInverse <- function() invr
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## this function creates a inverse of the matrix created by above function.

cacheSolve <- function(x, ...) {
  invr <- x$getInverse()
  if (!is.null(invr)) {
    message("data cached")
    return(inv)
  }
  m <- x$get()
  invr <- solve(m, ...)
  x$setInverse(invr)
  invr
        ## Return a matrix that is the inverse of 'x'
  
}
