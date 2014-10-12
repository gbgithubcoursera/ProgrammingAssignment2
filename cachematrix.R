#!/usr/bin/Rscript

## Put comments here that give an overall description of what your
## functions do

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

# Make and Cache the Matrix at the same time
#cachedMat <- makeCacheMatrix(matrix(1:4,2,2))
#cachedMat

## Write a short comment describing this function
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
message("\nCached Matrix")
a$get()

a$setmatrix(a$get())
cacheSolve(a$getmatrix())
