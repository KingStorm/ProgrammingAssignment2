## Put comments here that give an overall description

## of what your functions do



## Write a short comment describing this function



makeCacheMatrix <- function(m = matrix()) {
  
  i <- NULL
  
  
  
  set <- function(t){
    
    m <<- t
    
    i <<- NULL
    
  }
  
  
  
  get <- function() {m}
  
  
  
  setInverse <- function(inverse){
    
    i <<- inverse
    
  }
  
  
  
  getInverse <- function() {i
                            
  }
  
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}





## Write a short comment describing this function



cacheSolve <- function(x, ...) {
  
  i <- x$getInverse()
  
  
  
  if(!is.null(i)){
    
    message("getting the cached data")
    
    return(i)
    
  }
  
  
  
  m <- x$get()
  
  inverse <- solve(m)
  
  x$setInverse(inverse)
  
  
  
  inverse
  
  ## Return a matrix that is the inverse of 'x'
  
}

