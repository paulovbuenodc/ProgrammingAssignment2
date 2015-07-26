### ProgrammingAssignment2

### read the R script

### create a *square* matrix (because 'solve' only handles square matrices)
### create the matrix when you call 'makeCacheMatrix()'

 z <- makeCacheMatrix(matrix(c(4,1,3,5), 2, 2));

 summary(z);
###>           Length Class  Mode    
###>set_matrix 1      -none- function
###>get_matrix 1      -none- function
###>set_solve  1      -none- function
###>get_solve  1      -none- function

 z$get_matrix();
###>     [,1] [,2]
###>[1,]    4    3
###>[2,]    1    5

 cacheSolve(z);
###>            [,1]       [,2]
###>[1,]  0.29411765 -0.1764706
###>[2,] -0.05882353  0.2352941

### the next time you call the function, you'll get:

 cacheSolve(z);
###>getting cached matrix
###>            [,1]       [,2]
###>[1,]  0.29411765 -0.1764706
###>[2,] -0.05882353  0.2352941
