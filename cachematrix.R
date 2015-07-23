## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Function is needed for the assignment

# The first function, makeCache Matrix creates a special "Cache Matrix", 
#which is really a list containing a function to
#1. set the value of the Cache Matrix
#2. get the value of the Cache Matrix
#3. set the value of the Matrix Inverse
#4. get the value of the Matrix Inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setInv <- function(MInverse) inv <<- MInverse
    getInv <- function() inv
    list(set = set, get = get,
         setInverse = setInv,
         getInverse = getInv)
}


## Write a short comment describing this function
## Use this to comment the call to solve to get the matrix inverse.
## should only need to see this message once for any cache matrix

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setInverse(m)
    m
}

# Example data for testing
# mymat = matrix (c(1,2,3,4,0,1,2,1,0,0,-1,-5,1,0,0,6), nrow=4, ncol=4)
# solve(mymat)
# mymatt = t(mymat)
# solve(mymatt)
# mc = makeCacheMatrix(mymatt)
# cacheSolve(mc)