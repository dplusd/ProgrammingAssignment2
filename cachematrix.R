## Put comments here that give an overall description of what your
## functions do

## Instead of adding a setter and getter to the inversed matrix, I've implemented one function that calculates the 
## matrix inverse from withing the makeCachedMatrix function,

makeCacheMatrix <- function(x = matrix()) {
    
    inverse <- NULL
    set <- function(y = matrix()) {       
        x  <<- y
        inverse <<- NULL
    }
    
    get <- function () {
        x
    }
    
    getInverse <- function () inverse
    
    setInverse <- function(inv) {
        inverse <<- inv
        
    }
    
    list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## This function only calls the inverse() function of makeCacheMatrix. Caching logic was implemented  within the makeCacheMatrix function

cacheSolve <- function(x, ...) {
    
    if(is.null(x$getInverse())) {
        x$setInverse(solve(x$get()))
    }
    x$getInverse()
}
