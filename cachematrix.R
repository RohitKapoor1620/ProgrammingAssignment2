## for faster processing  

## This function is creates a function to set and get the value of matrix

makeCacheMatrix <- function(x = matrix()) {
  
  i < NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) i <<- inverse
  getinv <- function() i
  list(set = set, get = get, setinv = setinv, getinv = getinv)
  
}


## This function inversts the matrix created above, if it is already
## computed it skips the calculation and retrive it from cache data

cacheSolve <- function(x, ...) {
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cache data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}         


