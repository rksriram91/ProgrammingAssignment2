## Put comments here that give an overall description of what your
## functions do

## the function sets the value of the matrix and its inverse once they are given

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## this functions returns the inverse of the matrix from cache and solves inverse of a matrix if invese is not availabe in cache

cacheSolve <- function(x, ...) {

 inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
        ## Return a matrix that is the inverse of 'x'
}
