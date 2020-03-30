## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Create a special "matrix", which is a list containing a function to
## 1.  set the value of the matrix
## 2.  get the value of the matrix
## 3.  set the value of the inverse
## 4.  get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
    inverseMatrix <- NULL
    set <- function(y) {
        x <<- y
        inverseMatrix <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse)
        inverseMatrix <<- inverse
    getInverse <- function()
        inverseMatrix
    list(
        set = set,
        get = get,
        setInverse = setInverse,
        getInverse = getInverse
    )
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
    ## Check if inverse matrix has already been calculated
    inverseMatrix <- x$getInverse()
    if (!is.null(inverseMatrix)) {
        message("getting cached data")
        ## Skip computation and return inverse matrix
        return(inverseMatrix)
    }
    
    ## Calculate the inverse of the matrix the data 
    ## and set the value of the result in the cache.
    data <- x$get()
    inverseMatrix <- solve(data, ...)
    x$setInverse(m)
    inverseMatrix
}