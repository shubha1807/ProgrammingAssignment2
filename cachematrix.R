## This is a set of functions that will be used to invert a user entered matrix
## and this is done by the use of the following two functions: makeCacheMatrix and
## cacheSolve.The makeCacheMatrix recieves the matrix from user through the setmatrix
## function and the getmatrix function displays it.ThecacheSolve checks for cache 
## values and returns if any or just inverts the matrix.

## Two functions have been created inside this function.A variable is set to the
## makeCacheMatrix and then the setmatrix inputs value from the user while the 
## getmatrix functions displays it.

makeCacheMatrix <- function(x = matrix()) {
mat<-NULL
  set<-function(y){
  x<<-y
  mat<<-NULL
}
get<-function() x
setmatrix<-function(solve) mat<<- solve
getmatrix<-function() mat
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)

}


## This function will check for any cache values of any previously entered matrix
## and displays a message if they exist.If not the solve function will invert the
## matrix and then display it.The caching saves time and memory in case the input
## matrix is very huge.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
mat<-x$getmatrix()
    if(!is.null(mat)){
      message("getting cached data")
      return(mat)
    }
    matrix<-x$get()
    mat<-solve(matrix, ...)
    x$setmatrix(mat)
    mat

}
