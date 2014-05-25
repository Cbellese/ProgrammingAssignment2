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
        
        ## 1. Get current inverse from cache
        inv <- x$getSolve()

        ## 2. If current inverse is not null return it and stop
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        
        ## 3. otherwise .. get matrix to inverte
        data <- x$get()
        
        ## 4. compute the inverse and store in the Cache
        inv <- solve(data, ...)
        x$setSolve(inv)

        ## 5. Return inverse just computed
        inv
}
