# makeCacheMatrix is a function that returns a list of functions
   # * setMatrix      set the value 
   # * getMatrix      get the value 
   # * cacheInverse   get the cahced value (inverse of matrix)
   # * getInverse     get the cahced value (inverse of matrix)
  
makeCacheMatrix <- function(x = matrix()) {
  
  cache <- NULL
         # store a matrix
         setMatrix <- function(newValue) {
               x <<- newValue
               # since the matrix is assigned a new value,remove the vache
                 cache <<- NULL
           }
        
         # returns the stored matrix
           getMatrix <- function() {
                 x
           }
          
        # cache the given argument 
           cacheInverse <- function(solve) {
               cache <<- solve
           }
            
        # get the cached value
               getInverse <- function() {
                   cache
           }
              
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
      }


## Inverse of a matrix 

cacheSolve <- function(x, ...) {
  # get the cached value
     inverse <- x$getInverse()
       # if a cached value exists return it
         if(!is.null(inverse)) {
               message("getting cached data")
               return(inverse)
           }
      # otherwise get the matrix, caclulate the inverse and store it in
         # the cache
         data <- x$getMatrix()
         inverse <- solve(data)
         x$cacheInverse(inverse)
         
         # return the inverse
         inverse    
  
  
    ## Return a matrix that is the inverse of 'x'
}
