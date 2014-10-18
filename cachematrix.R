
## We construct objects named CacheMatrix that are simply a list of 4 functions. 
## Each object contains in its scope a matrix A and its inverse A^-1.
## The 4 functions allow us to set and get the value of A, and to set and get the value of the inverse of A.
## The function CacheSolve takes as input one of these objects, and computes the inverse of the matrix contained in the object.
## If the inverse already exists, it returns the cached value, otherwise it computes the inverse explicitly. 


## makeCacheMatrix returns a list of 4 functions: set, get, setinv, getinv, that are used to set and get the value of the matrix x,
## and to set and get the values of the inverse of the matrix x
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL;
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
        
}



## cacheSolve(x) returns the inverse of the matrix contained in x. If such inverse already exists, then it returns the cached value.
## Otherwise, it computes it explicitly using the solve() function. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(A, ...)
        x$setinv(inv)
        inv
        

        
        
        
        
        
}



