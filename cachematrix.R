## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##create a matrix object X and some associated sub-functions/methods
##define the cache m
m <- NULL
set <- function(y)
{
x <<- y ## assing the input matrix y to the variable x in the parent environment
m <<- NULL ## re-initialize m in the parent environment to null
}
get <- function() x ##return matrix x 
setinverse <- function(inverse) m <<- inverse ## set the cache m equal to the in## verse of the matrix x
getinverse <- function() m ## return cached inverse of x
list(set=set,get=get,
setinverse=setinverse,
getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

m <- x$getinverse()
if(!is.null(m))
{
messgae("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
}
