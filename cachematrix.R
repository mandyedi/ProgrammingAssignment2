## This small project's goal is to write two functions for matrix inversion
## Because in R we can use very big data sets, we need to cache the data
## so in case we would use it again, we don't need to load it, just get the cached data

## Creates the cache for the matrix
## This function creates a list of functions
## which are setters and getters for the inversion and chached matrix
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) inv <<- inverse
	getInverse <- function() inv
	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Calculates the inversion of the given matrix
## In case the inversion has been calculated, it returns the cached matrix
cacheSolve <- function(x, ...) {
	inv <- x$getInverse()
	if(!is.null(inv)) {
		return(inv)
	}
	data <- x$get()
	inv <- solve(data)
	x$setInverse(inv)
	inv
}
