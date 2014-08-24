## makeCacheMatrix function is to create a special vector that contains
## following functions:set,get,setInverse,getInverse, when user input
## a matrix(an invertible matrix)

makeCacheMatrix <- function(m = matrix()) {
  
  ##initialised the variable i of NULL
  i <- NULL
   
  ##set function:to assign the argument t to m, and assign NULL to i
  set <- function(t){    
    m <<- t   
    i <<- NULL    
  }
  
  ##get function:to print out the value of m
  get <- function() m
  
  ##setInverse function:assign the argument inverse to i
  setInverse <- function(inverse){
    i <<- inverse
  }
  
  ##getInverse function:print out the value of i
  getInverse <- function() i
  
  ##to return a list including functions:get,set,setInverse,getInverse
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
  
}

## cacheSolve function is to calculates the inverse of the special vector
## created by makeCacheMatrix. It firstly check if the inverse has been 
## calculated,if so,it prints out the value of inverse,else,it calculates
## the inverse using the data of the special vector,and set the velue of 
## inverse to via the function setInverse of the special vector.

cacheSolve <- function(x, ...) {
  
  ##use the function getInverse to return a value and assign it to i
  i <- x$getInverse()
  
  ##if the variable i is not null,then print out a message and return i
  if(!is.null(i)){
    message("getting the cached data,the inverse has been calculated")   
    return(i)    
  }
  
  ##get the matrix of the special vector via the function get,and assign it 
  ##to m,then calculate the inverse and set it to the special vector througn
  ##the function setInverse.
  m <- x$get() 
  inverse <- solve(m)  
  x$setInverse(inverse)

  ## Return a matrix that is the inverse of 'x'
  inverse
  
}

