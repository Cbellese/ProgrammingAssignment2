## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
                }
        get <- function() x
        setSolve <- function(solve) inv <<- solve
        getSolve <- function() inv
        list(set=set, get=get, setSolve=setSolve, getSolve=getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
