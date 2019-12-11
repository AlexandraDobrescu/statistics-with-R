# Regression Analysis of Y on X.

# Load data from https://cran.r-project.org/.
data(mtcars)
mtcars

# Select "disp" column as X.
x<-c(mtcars$disp)
x

# Select "hp" column as Y.
y<-c(mtcars$hp)

# Plot data
plot(x,y,col="red")

# Linear Regression
scatter.smooth(x,y,main="Disp ~ Hp")

# Polynomial Regression
r=30
A<-matrix(c(r,sum(x),sum(x^2),sum(x),sum(x^2),sum(x^3),sum(x^2),sum(x^3),sum(x^4)),3,3,byrow=TRUE)
A

B<-c(sum(y),sum(x*y),sum(x^2*y))
B
showEqn(A,B)
solve(A,B)
plot(x,y,col="green")
plot(x,y,col="red")
f<-3.524916401 + 0.878595773*x - 0.000871024*x^2
f
xmin<-min(x)
xmax<-max(x)
par(new=TRUE)
curve(-3.524916401 + 0.878595773*x - 0.000871024*x^2,xmin,xmax,col="blue")

# Exponential Regression
A<-matrix(c(r,sum(x),sum(x),sum(x^2)),2,2,byrow=TRUE)
A

B<-c(sum(log(y),sum(x*log(y))))
B
showEqn(A,B)
solve(A,B)
plot(x,y,col="black")
par(new=TRUE)
curve(exp(5.81226184-0.00245783*x),xmin,xmax,col="red")