We assume a normal distribution  ![](https://latex.codecogs.com/gif.latex?x%20%5Cin%20N%20%28%5Cmu%20%2C%5Csigma%29)  of the random variable. 

We compute parameters:
* 𝜇 with 𝜎 unknown,
* 𝜎 with 𝜇 unknown.

**1. For 𝜇:**
- determine mean, ![](https://latex.codecogs.com/gif.latex?%5Cbar%7Bx%7D%20%3D%20%5Cmu). 
- establish the sample size using Student's t-distribution:

![](https://latex.codecogs.com/gif.latex?%5Cfrac%7B%5Cbar%7Bx%7D-%5Cmu%7D%7Bs%7D%5Csqrt%7Br%7D%20%5Csim%20T%28r-1%29)

The value of the probability becomes:

![](https://latex.codecogs.com/gif.latex?1-%20%5Calpha%20%5Cin%20%280.95%3B0.98%3B0.99%29)

Pick 𝛼 = 0.05. To obtain the region of confidence we need 𝜀.

![](https://latex.codecogs.com/gif.latex?1-%20%5Calpha%20%3D%20P%28%5Cleft%20%7C%20%5Cbar%7Bx%7D%20-%20%5Cmu%20%5Cright%20%7C%20%3C%20%5Cepsilon%20%29%20%3DP%28%5Cfrac%7B%5Cbar%7Bx%7D%20-%20%5Cmu%7D%7BS%7D%5Csqrt%7Br%7D%20%3C%20%5Cfrac%7B%5Cepsilon%20%5Csqrt%7Br%7D%7D%7BS%7D%29%20%3D%202F_%7Bt%28n-1%29%7D%28%5Cfrac%7B%5Cepsilon%20%5Csqrt%7Br%7D%7D%7BS%7D%29-1)

![](https://latex.codecogs.com/gif.latex?F%28%5Cfrac%7B%5Cepsilon%20%5Csqrt%7Br%7D%7D%7BS%7D%29%3D%201%20-%20%5Calpha%20%2C%20%5Calpha%20%3D%200.05)

```
> data(mtcars)
> mtcars

> x<-c(mtcars$disp)
> y<-c(mtcars$hp)
> r = 30

> xbar<-sum(x)/r
> xbar
[1] 246.1033

> m2<-sum(x^2)/2
> m2
[1] 1089814

> var<-m2-(xbar)^2
> var
[1] 1029247

> qt(0.975,r-1)
[1] 2.04523

> s<-r*var/n-1
> eps<-qt(0.975,r-1)*sqrt(s/r)
> eps
[1] 378.8271
```

To sum up, after performing the mathematical computations using *R* language, we can see that the confidence region for 𝜇 
is given by the interval:

![](https://latex.codecogs.com/gif.latex?I%20%3D%20%28%5Cbar%7Bx%7D%20-%20%5Cepsilon%20%2C%20%5Cbar%7Bx%7D%20&plus;%20%5Cepsilon%29)

![](https://latex.codecogs.com/gif.latex?%5Cbar%7Bx%7D%20%3D%20246.1033)

![](https://latex.codecogs.com/gif.latex?%5Cepsilon%20%3D%20378.8271)

*I = (246.1033 - 378.8271, 246.1033 +3 78.8271)*

*I = (-132,7238, 6249304)*

**2. For 𝜎:**

Given the equation, we can extract the confidence region for 𝜎:

![](https://latex.codecogs.com/gif.latex?%5Cfrac%7B%28n-1%29S%5E%7B2%7D%7D%7B%5Csigma%20%5E%7B2%7D%7D%20%5Csim%20%5Cchi%20%5E%7B%5E%7B2%7D%7D%28n-1%29)

```
> c2<-qchisq(0.975,r-1)
> c2
[1] 45.72229

> c1<-qchisq(0.025,r-1)
> c1
[1] 16.04707

> a<-sqrt((r-1)*s/c2)
> a
[1] 807.9688

> b<-sqrt((r-1)*s/c1)
> b
[1] 1363.831
```

Therefore, the confidence interval associated with parameter 𝜎:

![](https://latex.codecogs.com/gif.latex?1%20-%20%5Cfrac%7B%5Calpha%20%7D%7B2%7D%20%3D%20F_%7B%5Cchi%20%5E%7B2%7D%20%28n-1%29%7D%28c_%7B2%7D%29)

![](https://latex.codecogs.com/gif.latex?%5Cfrac%7B%5Calpha%20%7D%7B2%7D%20%3D%20F_%7B%5Cchi%20%5E%7B2%7D%20%28n-1%29%7D%28c_%7B1%7D%29)

![](https://latex.codecogs.com/gif.latex?c_%7B1%7D%20%5Cleqslant%20%5Cfrac%7B%28r-1%29S%5E%7B2%7D%7D%7B%5Csigma%20%5E%7B2%7D%7D%20%5Cleqslant%20c_%7B2%7D)

![](https://latex.codecogs.com/gif.latex?a%20%5Cleqslant%20%7B%5Csigma%20%5E%7B2%7D%7D%20%5Cleqslant%20b)

![](https://latex.codecogs.com/gif.latex?%5Cfrac%7B%28r-1%29S%5E%7B2%7D%7D%7Bc_%7B2%7D%7D%20%5Cleqslant%20%7B%5Csigma%20%5E%7B2%7D%7D%20%5Cleqslant%20%5Cfrac%7B%28r-1%29S%5E%7B2%7D%7D%7Bc_%7B1%7D%7D)

![](https://latex.codecogs.com/gif.latex?I%20%3D%20%28a%2C%20b%29)

![](https://latex.codecogs.com/gif.latex?I%20%3D%20%28%5Csqrt%7B%5Cfrac%7Br-1%7D%7Bc_%7B2%7D%7D%7DS%2C%20%5Csqrt%7B%5Cfrac%7Br-1%7D%7Bc_%7B1%7D%7D%7DS%29)

Where:
- 𝑐2 = 45.72229
- 𝑐1 = 16.04707
- 𝑎 = 807.9688
- 𝑏 = 1363.831
