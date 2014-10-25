## The two functions makeCacheMatrix caches an inverse of a given matrix,
## while cacheSolve checks to see if there is a cache of the given matrix
## to send before running the calculation.


## This function checks to see if the given matrix x is an n by n 
## matrix then calculates the inverse matrix and caches the results.

makeCacheMatrix <- function(x = matrix()) {
  m <-NULL
  if (nrow(x) == ncol(x)){
    m <<- solve(x)
  } else {
    print("This is not an n by n matrix.")
  }
  z <<- x
}

## This function checks to see if that the original matrix used in 
## makeCacheMatrix() and the current matrix are the same.  Then it checks 
## if there is a cached inverse matrix of the given matrix.  If so, it 
## returns the cached inverse.  Otherwise its runs the calculation to cache
## a new matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(identical(x, z)){
    if (!is.null(m)) {
      message("getting cached data")
      return(m)
    } else{
      print("The inverse of the matrix was not cached, but here is the inverse")
      q <- makeCacheMatrix(x)
      q
      } 
    } else {
      print("This is not the same matrix that was used to cache the inverse; first use makeCacheMAtrix()")
    }
  
}
