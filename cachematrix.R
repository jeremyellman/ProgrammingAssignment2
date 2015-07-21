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
         setmean = setInv,
         getmean = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
}
