                                                                                                                  
# Function is needed for the assignment

# The first function, makeCache Matrix creates a special "Cache Matrix",
#which is really a list containing a function to
#1. set the value of the Cache Matrix
#2. get the value of the Cache Matrix
#3. set the value of the Matrix Inverse
#4. get the value of the Matrix Inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
#save value into environment
        set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    #save Inverse
    setInv <- function(MInverse) inv <<- MInverse
    #get inverse
    getInv <- function() inv
    # return object as list of functions and data
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
    if(!is.null(m)) {   # cache hit
        message("getting cached data")
        return(m) # return cached matrix inverse
    }
    data <- x$get() # get the matrix data from x, then solve the matrix
    m <- solve(data, ...)
    x$setInverse(m) #store the matrix inverse and return that
    m
}

# Example data for testing
# mymat = matrix (c(1,2,3,4,0,1,2,1,0,0,-1,-5,1,0,0,6), nrow=4, ncol=4)
# solve(mymat) # actual inverse
# mymatt = t(mymat) # not needed but matrix transpose
# solve(mymatt)
# m
# cacheSolve(mc) #call to cache solve. call again should not print out message
