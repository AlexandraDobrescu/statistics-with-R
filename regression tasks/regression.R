# Regression Analysis of Y on X.

# Load data from https://cran.r-project.org/.
data(mtcars)
mtcars

# Select "disp" column as X.
# Displacement measures the total amount of power the engine can generate.
x<-c(mtcars$disp)
x

# Select "hp" column as Y.
# Gross Horsepower measures the theoretical engine output. 
y<-c(mtcars$hp)

# Plot data.
plot(x, y, col="red")

# Build Linear Regression Model and print it.
# y = ax + b
linear_model<-lm(disp ~ hp, data = mtcars)
print(linear_model)

#> Call:
#> lm(formula = disp ~ hp, data = mtcars)

#> Coefficients:
#> (Intercept)           hp  
#>       20.99         1.43  

# Build Linear Regression Diagnostics for the linear model.
summary(linear_model)

#> Call:
#> lm(formula = disp ~ hp, data = mtcars)

#> Residuals:
#>     Min      1Q  Median      3Q     Max 
#> -198.97  -37.39  -18.27   57.55  157.91 

#> Coefficients:
#>             Estimate Std. Error t value Pr(>|t|)    
#> (Intercept)  20.9925    32.6066   0.644    0.525    
#> hp            1.4298     0.2019   7.080 7.14e-08 ***
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

#> Residual standard error: 77.09 on 30 degrees of freedom
#> Multiple R-squared:  0.6256,    Adjusted R-squared:  0.6131 
#> F-statistic: 50.13 on 1 and 30 DF,  p-value: 7.143e-08


plot(disp ~ hp, data = mtcars, xlab = "Displacement", ylab = "Gross horsepower")

# Polynomial Regression
# y = a_0 + a_1 * x + a_2 * x^2
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
# y = e^(a + b * x)
A<-matrix(c(r,sum(x),sum(x),sum(x^2)),2,2,byrow=TRUE)
A

B<-c(sum(log(y),sum(x*log(y))))
B
showEqn(A,B)
solve(A,B)
plot(x,y,col="black")
par(new=TRUE)
curve(exp(5.81226184-0.00245783*x),xmin,xmax,col="red")
