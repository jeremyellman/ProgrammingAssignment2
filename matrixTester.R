mymat = matrix (c(1,2,3,4,0,1,2,1,0,0,-1,-5,1,0,0,6), nrow=4, ncol=4)
mymat
solve(mymat)
t(mymat)
mymatt = t(mymat)
solve(mymatt)
mc = makeCacheMatrix(mymatt)
mc
cacheSolve(mc)
