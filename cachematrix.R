## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


###Example usage:
##invertible matrix
#mat <- matrix(c(4,7,2,6),nrow=2,ncol=2,byrow=TRUE) 
#test=makeCacheMatrix(mat)
#cacheSolve(test)

makeCacheMatrix <- function(x = matrix()) {
        
        #funtion takes as input a matrix and caches it
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setSolve <- function(zz) m <<- zz
        getSolve <- function() m
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #getting chached matrix
        m <- x$getSolve()
        print(m)
        if(!is.null(m)) {
                ##if matrix has been chached, loading it
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        ##calculates inverse and pushes it to cash
        m <- solve(data)
        x$setSolve(m)
        print(x)
        m
}
