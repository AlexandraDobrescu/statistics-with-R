We want to verify the null hypothesis: if the aleatory variable that follows the model of a certain classical law, has a given error 𝛼 ∈ {0.01, 0.05}.
For this, we compute Chi-Square distribution and assume a standard deviation for a random variable from a normal distribution.

Choose 𝛼 = 0.05.

![](https://latex.codecogs.com/gif.latex?x%5Cin%20N%28%5Cmu%2C%20%5Csigma%20%29), where 𝜇 = 230.7219 and 𝜎 = 14880.77.

The Normal Law distribution:

![](https://latex.codecogs.com/gif.latex?1%20-%20%5Calpha%20%3D%20P%28%5Cchi%20%5E%7B2%7D_%7Bobs%7D%20%3C%20%5Cchi%20%5E%7B2%7D_%7B%28n-1%29%7D%28c%29%29)

![](https://latex.codecogs.com/gif.latex?%5Cchi%20%5E%7B2%7D_%7Bobs%7D%20%3D%20%5Csum%20%5Cfrac%7B%28n_%7Bj%7D%20-%20np_%7Bj%7D%29%5E%7B2%7D%7D%7Bnp_%7Bj%7D%7D)

![](https://latex.codecogs.com/gif.latex?p_%7Bj%7D%20%3D%20f%28x_%7Bj%7D%29%20%3D%20%5Cfrac%7B1%7D%7B%5Csigma%20%5Csqrt%7B2%5Cprod%20%7D%7D%20e%5E%7B%5Cfrac%7B-%28x_%7Bj%7D-%5Cmu%20%29%5E%7B2%7D%7D%7B2%5Csigma%20%5E%7B2%7D%7D%7D)

```
>  x<-c(mtcars$disp)
> x
 [1] 160.0 160.0 108.0 258.0 360.0 225.0 360.0 146.7 140.8 167.6 167.6 275.8 275.8 275.8
[15] 472.0 460.0 440.0  78.7  75.7  71.1 120.1 318.0 304.0 350.0 400.0  79.0 120.3  95.1
[29] 351.0 145.0 301.0 121.0

> n<-length(x)
> n
[1] 32

> w<-rep(1,n)
> w
 [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
 
> xbar<-sum(x*w)/n
> xbar
[1] 230.7219

> m2<-sum((x^2*w)/n)
> m2
[1] 68113.36

> var<-m2-(xbar^2)
> var
[1] 14880.77

> pther<-dnorm(x,xbar,sqrt(var))
> pther
 [1] 0.0027644697 0.0027644697 0.0019716286 0.0031896211 0.0018651587 0.0032667774
 [7] 0.0018651587 0.0025797594 0.0024923178 0.0028605891 0.0028605891 0.0030545332
[13] 0.0030545332 0.0030545332 0.0004624819 0.0005591054 0.0007507340 0.0015043741
[19] 0.0014585263 0.0013892925 0.0021678356 0.0025318594 0.0027304885 0.0020276187
[25] 0.0012486735 0.0015089872 0.0021710582 0.0017627622 0.0020113635 0.0025548672
[31] 0.0027702877 0.0021823287

> chiobs<-sum(w-n*ptheor)
> chiobs
[1] 29.77802

> c<-qchisq(1-0.05,n-1)
> c
[1] 44.98534
```

Given:
𝑋𝑜𝑏𝑠2 = 29.77802
C = 44.98534
it is clear that 𝑋𝑜𝑏𝑠2 (chiobs in *R*) < c (qchisq in *R*).

Finally, we accept the null hypothesis, the model is a random variable that follows a normal law distribution.

