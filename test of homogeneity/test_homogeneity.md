Consider two groups of statistical data from the same distribution. In this case, select *"disp"* column from *mtcars* package, and divide it in two.

| x<sub>j</sub> | x<sub>1</sub> | x<sub>2</sub> | ... | x<sub>k</sub> |
| ------------- | ------------- |  -------------| --- | ------------- |
|               | n<sub>1</sub> | n<sub>2</sub> | ... | n<sub>k</sub> | 

∑ n<sub>j</sub> = N<sub>1</sub>, where N<sub>1</sub> = 16.

| y<sub>j</sub> | y<sub>1</sub> | y<sub>2</sub> | ... | y<sub>k</sub> |
| ------------- | ------------- |  -------------| --- | ------------- |
|               | n<sub>1</sub> | n<sub>2</sub> | ... | n<sub>k</sub> | 

∑ n<sub>j</sub> = N<sub>2</sub>, where N<sub>2</sub> = 16.

Define 𝛼 = 0.05.

We assume a normal distribution of the previously studied random variable and start the homogeneity test:
* 𝑥 ∈ N(𝜇<sub>𝑥</sub>, σ)
* 𝑦 ∈ N(𝜇<sub>y</sub>, σ)


We want to test the null hypothesis H<sub>0</sub> : 𝜇<sub>𝑥</sub> = 𝜇<sub>y</sub> against the alternative hypothesis H<sub>1</sub> : 𝜇<sub>𝑥</sub> ≠ 𝜇<sub>y</sub>.

In other words, 𝛼 = P ( accept H<sub>1</sub> | if H<sub>0</sub> is **true** ).

![](https://latex.codecogs.com/gif.latex?%5Cfrac%7B%5Cbar%7Bx%7D%20-%20%5Cbar%7By%7D%7D%7B%5Csqrt%7B%28N_%7B1%7D-1%29S_%7Bx%7D%5E%7B2%7D%7D%20-%20%5Csqrt%7B%28N_%7B2%7D-1%29S_%7By%7D%5E%7B2%7D%7D%7D%20%5Csqrt%7B%5Cfrac%7BN_%7B1%7DN_%7B2%7D%28N_%7B1%7D&plus;N_%7B2%7D-1%29%7D%7BN_%7B1%7D&plus;N_%7B2%7D%7D%7D%20%5Csim%20T%28N_%7B1%7D&plus;N_%7B2%7D-2%29)

1 - 𝛼 = P ( T<sub>obs</sub> | F<sub>T(N<sub>1</sub> + N<sub>2</sub> - 2)</sub> (c) ).

𝛼 = P ( accept σ<sub>𝑥</sub> ≠ σ<sub>y</sub> | if σ<sub>𝑥</sub> = σ<sub>y</sub> ).

```
> x<-mtcars$disp[1:16]
> x
 [1] 160.0 160.0 108.0 258.0 360.0 225.0 360.0 146.7 140.8 167.6 167.6 275.8 275.8 275.8
[15] 472.0 460.0

> y<-mtcars$disp[17:32]
> y
 [1] 440.0  78.7  75.7  71.1 120.1 318.0 304.0 350.0 400.0  79.0 120.3  95.1 351.0 145.0
[15] 301.0 121.0

> n1<-length(x)
> n1
[1] 16

> n2<-length(y)
> n2
[1] 16

> w1<-rep(1,n1)
> w1
 [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
```

