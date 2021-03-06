## The two functions below will cache the inverse of a special "matrix" object
## (makeCacheMatrix), and solve for the inverse of the matrix (cacheSolve)
##

## makeCacheMatrix is a function that creates a special "matrix" object
## that can cache its inverse.
## makeCacheMatrix takes a vector as input in the form of c(n,n,n,n,) or c(n:n)
## to create a square vector of 2 columns by 2 rows.  
## for example:  makeCacheMatrix(c(6:9))


makeCacheMatrix <- function(x=numeric()) {
        invrmatr1 <<- NULL                    ## initialize inverse matrix as NULL
        a <<- c(x)                            ## create vector from input x
        print(a)                              ## print vector 
        matr1 <<- matrix(a,2,2)               ## create and cache 2 by 2 matrix from vector
        print(matr1)                          ## print matrix (matr1)
        invrmatr1 <<- solve(matr1)            ## create and cache inverse of matrix 
        print(invrmatr1)                      ## print inverse matrix 

}

## cacheSolve is a function that computes the inverse of the special "matrix" returned 
## by makeCacheMatrix. If the inverse has already been calculated(and the matrix has
## not changed), then the cachesolve will retrieve the inverse from the cache.
## cacheSolve takes a vector as input in the form of c(n,n,n,n,) or c(n:n)
## to create a square vector of 2 columns by 2 rows.

cacheSolve <- function(x=numeric()) {
        b <- c(x)                                      ##create vector from input
        print(b)                                       ##print vector
        matr2 <- matrix(b,2,2)                         ##create matrix from vector
        ifelse ((matr1 == matr2 && !is.null(invrmatr1)), ## if matrix is same as cache and not null
        return(invrmatr1),invrmatr1 <- solve(matr2))   ## return inverse matrix from cache
        return(invrmatr1)                              ## else calculate & return the inverse
}
