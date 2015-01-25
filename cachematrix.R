## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Initializes a variable 'mtrx' 
  mtrx <- NULL
  ## get raw matrix
  get <- function() x
  ## compute and set inverse Matrix
  setInverseMatrix <- function(InverseMatrix) mtrx <<- InverseMatrix
  ## get cached inverse matrix
  getInverseMatrix <- function() mtrx
  # return a list of functions as an R object
  list(get=get, setInverseMatrix=setInverseMatrix, getInverseMatrix=getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return the inverse of input x
  mtrx <- x$getInverseMatrix()
  if(!is.null(mtrx)){
    mtrx
  }
  else {
    readMatrix <- x$get()
    mtrx <- solve(readMatrix) # compute inverse matrix
    x$setInverseMatrix(mtrx)  # assigns resulting inverse matrix to object x
    message("Operation Done!")
    mtrx
  }
}
