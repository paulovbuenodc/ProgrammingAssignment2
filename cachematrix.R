# Please, follow the directions in the file README.md for running the code 
# and get its output. I choosed an specific assignment state for running the code 
# because neither all matrixes have its invert matrix. 
# If you are sure that your square matrix has its invert matrix, 
# you can make the test also. Pay attention to choose a *square matrix* for the test, 
# because the function 'solve', used in the program, can only be applied to a square matrix. 

# 'makeCacheMatrix' is a function that returns a list of the following functions.
# It aims to store a matrix and cache the value of its invert matrix. 

# 'makeCacheMatrix' contains the functions:

# 'set_matrix' -  set the value of a matrix
# 'get_matrix' -  get the value of a matrix
# 'set_solve'  -  get the cached value (invert matrix)
# 'get_solve'  -  get the cached value (invert matrix)


# This function creates a special "matrix" object that 
# can cache its inverse. 

makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
  set_matrix <- function(y) {
    x <<- y
    cache <<- NULL
  }
  get_matrix <- function() {
    x
  }  
  set_solve <- function(solve) {
    cache <<- solve
  }
  get_solve <- function() {
    cache
  }
  
  list(set_matrix = set_matrix, get_matrix = get_matrix,
       set_solve = set_solve, get_solve = get_solve)
}

# This function computes the inverse of the special 
# "matrix" returned by makeCacheMatrix above. 
# If the inverse has already been calculated 
# (and the matrix has not changed), then the cachesolve 
# retrieves the inverse from the cache.

cacheSolve <- function(x, ...) {
  cache <- x$get_solve()
  
  if(!is.null(cache)) {
    message("getting cached matrix")
    return(cache)
  }
  
  data <- x$get_matrix()
  cache <- solve(data, ...)
  x$set_solve(cache)
  
  ## Return a matrix that is the inverse of 'x'
  return(cache)
}