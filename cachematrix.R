## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 ## creates a matrix object that can cache its inverse, and then cacheSolve calculates the inverse. 
  ##if the inverse has already been calculated, it will find it in the cache instead of recalculating 
  
   m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
    
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get, setsolve = setsolve, getsolve=getsolve)
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 ##computes the inverse of the matrix. If it has already been solved, then it will retrieve from the cache
  
  m <- x$getsolve()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
