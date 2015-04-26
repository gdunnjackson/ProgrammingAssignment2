## The two functions below will cache the inverse of a special "matrix" object
## (makeCacheMatrix), and solve for the inverse of the matrix (cacheSolve)
##

## makeCacheMatrix is a function that creates a special "matrix" object
## that can cache its inverse.
## makeCacheMatrix takes a vector as input in the form of c(n,n,n,n,) or c(n:n)
## to create a square vector of 2 columns by 2 rows.  
## for example:  makeCacheMatrix(c(6:9))


makeCacheMatrix <- function(x=numeric()) {
        a <- c(x)                             ## create vector from input x
        print(a)                              ## print vector(a) 
        matr1 <- matrix(a,2,2)                ## create 2 by 2 matrix from vector(a)
        print(matr1)                          ## print matrix (matr1)
        invrmatr1 <<- solve(matr1)            ## create inverse of matrix (matr1)
        print(invrmatr1)                      ## print inverse matrix (invrmatr1)

}

## cacheSolve is a function that computes the inverse of the special "matrix" returned 
## by makeCacheMatrix. If the inverse has already been calculated(and the matrix has
## not changed), then the cachesolve should retrieve the inverse from the cache.

## cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
##        i <- x$getinverse
##}
