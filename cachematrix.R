## This function creates a list using a given name
## the list will have matrix data

makeCacheMatrix <- function(x = matrix()) {
    #Initializing variables
    m - NULL
    set - function(y) {
        x - y
        m - NULL
    }
    #defining functions get, setInverse and getInverse
    get - function() x
    setInverse - function(solve) m - solve
    getInverse - function() m
    
    # a list is created for matrix and inverse data
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## This function verifies if exists calculation of Inverse matrix
## about a previous matrix in cache memory
## If it does, there is no calculation and the result is shown
## If it does not, Inverse Matrix is calculated

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    #Try to get Inverse Matrix if it exists
    m - x$getInverse()
    if(!is.null(m)) {
        #Inverse Matrix exists, so it is not necessary to calculate
        message(getting cached data)
        return(m)
    }
    #Inverse Matrix does not exist, so it is necessary to calculate
    data - x$get()
    m - solve(data, ...)
    x$setInverse(m)
    m

}
