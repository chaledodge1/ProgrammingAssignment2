## This function will create a Matrix and a Vector of four functions
#set the values and dimension of the matrix
#get the values and dimension of the matrix
#set the values and dimension of the inverse matrix
#get the values and dimension of the inverse matrix

makeCacheMatrix <- function(x = numeric(), y = numeric(), z = numeric()) {
  matrix <- matrix(x,nrow = y ,ncol = z)
  ## set the values
  
  s <- NULL
  set <- function(x = numeric(), y = numeric(), z = numeric()) {
  matrix <<- matrix(x,nrow = y ,ncol = z)

  ## get the values  
  s <<- NULL  }
  get <- function()

  ## print matrix
  matrix

  ## set the values of inverse  
  setsolve <- function(solve)
  s <<- solve

  ## get values  
  getsolve <- function()
    s
  list(
    set = set, get = get,
    setsolve = setsolve,
    getsolve = getsolve
  )
}

## returns and stores the inverse matrix of the matrix created by makeCacheMatrix()

cacheSolve <- function(x) {
  s <- x$getsolve()
  if (!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data)
  x$setsolve(s)
  s
}
