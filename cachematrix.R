## This small project's goal is to write two functions for matrix inversion
## Because in R we can use very big data sets, we need to cache the data
## so in case we would use it again, we don't need to load it, just get the cached data

## Creats the cache for the matrix
## This function creats a list of functions
## which are setters and getters for the inversion and chached matrix
makeCacheMatrix <- function(x = matrix()) {

}


## Calculates the of a given matrix
## In case the inversion has been calculated, it returns the cached matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
