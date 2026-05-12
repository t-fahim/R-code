
a <- c(1,3,5,7,9)
b <- c(2,4,6,8,10)

matrix1 <- cbind(a,b) # column binding
matrix1

matrix2 <- rbind(a,b) # row binding
matrix2

matrix3 <- matrix(1:40,nrow = 5, ncol = 8)
matrix3

matrix4 <- matrix(1:40,nrow = 6, ncol = 10)
matrix4

matrix5 <- matrix(c(2,3,4,10,11,12),nrow = 2, ncol = 3)
matrix5

c <- c(10,20,30,40,50)
d <- c(20,40,60,80,100)

matrix6 <- cbind(c,d)
matrix6

# summary of matrix
summary(matrix6)

matrix6[3,1]

matrix6[3:1]

# simple calculation
matrix1 + matrix6
matrix1 - matrix6
matrix1 / matrix6
matrix1 * matrix6
matrix1 ^ matrix6

# logical operator
matrix1 < matrix6
matrix1 <= matrix6
matrix1 > matrix6
matrix1 >= matrix6
matrix1 == matrix6
matrix1 != matrix6

# build-in functions
sum(matrix6)
mean(matrix6)
colSums(matrix6)
rowSums(matrix6)
colMeans(matrix6)
rowMeans(matrix6)

# renaming column
colnames(matrix6) <- c("pen","book")
matrix6

# renaming row
rownames(matrix6) <- c("store1","store2",'store3',"store4","store5")
matrix6




