## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(M = matrix()) {
	##initiate the inverse of the matrix and set the value of the matrix
	I<-NULL  
    set <- function(Y=matrix()) {
       ##set the values in parent environnement
   	    M <<- Y
        I <<- NULL
    }
    get <- function() M
	##set the inverse in parent environnement
    setInverse <- function(inverse) I <<- inverse
    getInverse <- function() I
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(l, ...) {
    ## Return a matrix that is the inverse of 'x'
	## getting the inverse stored in the list
	I <- l$getInverse()
	##check if the inverse is not null and return it, otherwise make the calculation
    if(!is.null(I)) {
        message("getting cached data")
        return(I)
    }
    M <- l$get()
    I <- solve(M)
    l$setInverse(I)
    I	
		
}
