#!/usr/bin/Rscript

# The makeCacheMatrix sets and returns the matrix that is cached for later use.
makeCacheMatrix <- function(x = matrix()) {
        mat <- NULL
        set <- function(y){
                x <<- y
                mat <<- NULL
        }

        get<-function() x 
        setmatrix<-function(inverse) mat <<- inverse
        getmatrix<-function() mat

        list(set=set, get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}

## Retrieves the cached matrix and calculates it inverse.
cacheSolve <- function(x=matrix(), ...) {
        mat <- x["getmatrix"]

        if(!is.null(mat)){
                message("\ngetting cached data")
                message("Inverting the fetched Matrix")
                inverted <- solve(a$getmatrix())
                return(inverted)
        }
        else {
                a <- makeCacheMatrix()

                a$set(userMatrix)
                a$get()

                a$setmatrix(a$get())
                z <- a$getmatrix()
                solve(a$getmatrix())
        }
}

userMatrix <- matrix(1:4,2,2)

a <- makeCacheMatrix()
a$set(userMatrix)
message("\nPrint the Cached Matrix")
a$get()

a$setmatrix(a$get())
cacheSolve(a$getmatrix())
message()
