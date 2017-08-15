cacheinverse <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached inverse")
        return(i)
    }
    data <- x$get()
    i <- !(data)
    x$setinverse(i)
    i
}

