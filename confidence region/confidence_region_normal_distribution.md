We assume a normal distribution  ![](https://latex.codecogs.com/gif.latex?x%20%5Cin%20N%20%28%5Cmu%20%2C%5Csigma%29)  of the random variable.
Select *"disp"* column.

We compute parameters:
* 𝜇 with 𝜎 unknown,
* 𝜎 with 𝜇 unknown.

1. For 𝜇:
- determine mean, ![](https://latex.codecogs.com/gif.latex?%5Cbar%7Bx%7D%20%3D%20%5Cmu). 
- establish the sample size using Student's t-distribution:

![](https://latex.codecogs.com/gif.latex?%5Cfrac%7B%5Cbar%7Bx%7D-%5Cmu%7D%7Bs%7D%5Csqrt%7Br%7D%20%5Csim%20T%28r-1%29)

The value of the probability becomes:

![](https://latex.codecogs.com/gif.latex?1-%20%5Calpha%20%5Cin%20%280.95%3B0.98%3B0.99%29)

Pick 𝛼 = 0.05. To obtain the region of confidence we need 𝜀.

![](https://latex.codecogs.com/gif.latex?1-%20%5Calpha%20%3D%20P%28%5Cleft%20%7C%20%5Cbar%7Bx%7D%20-%20%5Cmu%20%5Cright%20%7C%20%3C%20%5Cepsilon%20%29%20%3DP%28%5Cfrac%7B%5Cbar%7Bx%7D%20-%20%5Cmu%7D%7BS%7D%5Csqrt%7Br%7D%20%3C%20%5Cfrac%7B%5Cepsilon%20%5Csqrt%7Br%7D%7D%7BS%7D%29%20%3D%202F_%7Bt%28n-1%29%7D%28%5Cfrac%7B%5Cepsilon%20%5Csqrt%7Br%7D%7D%7BS%7D%29-1)

![](https://latex.codecogs.com/gif.latex?F%28%5Cfrac%7B%5Cepsilon%20%5Csqrt%7Br%7D%7D%7BS%7D%29%3D%201%20-%20%5Calpha%20%2C%20%5Calpha%20%3D%200.05)

In conclusion, after performing the mathematical computations using *R* language, we can see that the confidence region for 𝜇 
is given by the interval:

![](https://latex.codecogs.com/gif.latex?I%20%3D%20%28%5Cbar%7Bx%7D%20-%20%5Cepsilon%20%2C%20%5Cbar%7Bx%7D%20&plus;%20%5Cepsilon%29)

![](https://latex.codecogs.com/gif.latex?%5Cbar%7Bx%7D%20%3D%20246.1033)

![](https://latex.codecogs.com/gif.latex?%5Cepsilon%20%3D%20378.8271)

*I = (246.1033-378.8271, 246.1033+378.8271)*

*I = (-132,7238,6249304)*
