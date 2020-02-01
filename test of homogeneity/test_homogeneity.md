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
 
> w2<-rep(1,n2)
> w2
 [1] 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
 
> xbar<-sum(x*w1)/n1
> xbar
[1] 250.8187

> ybar<-sum(y*w2)/n2
> ybar
[1] 210.625

> mx2<-sum((x^2)*w1)/n1
> mx2
[1] 74959.94

> varx<-mx2-(xbar^2)
> varx
[1] 12049.89

> sx<-(n1*varx)/(n1-1)
> sx
[1] 12853.22

> my2<-sum((y^2)*w2)/n2
> my2
[1] 61266.78

> vary<-my2-(ybar^2)
> vary
[1] 16903.89

> sy<-(n2*vary)/(n2-1)
> sy
[1] 18030.82

> fobs<-sx/sy
> fobs
[1] 0.7128472

> c<-qf(1-0.05,n1-1,n2-1)
> c
[1] 2.403447

> tobs<-(xbar-ybar)/sqrt((n1-1)*sx+(n2-1)*sy)*sqrt((n1*n2*(n1+n2-2)/(n1+n2)))
> tobs
[1] 0.9148534

> c<-qt(1-0.05,n1+n2-2)
> c
[1] 1.697261
```

- If F<sub>obs</sub> = 0.7128472 and F(c) = 1.697261, then F<sub>obs</sub> < F(c).
- σ<sub>𝑥</sub> ≠ σ<sub>y</sub>, where σ<sub>𝑥</sub> = sx = 12853.22 and σ<sub>y</sub> = sy = 18030.82.
- 𝜇<sub>𝑥</sub> ≠ 𝜇<sub>y</sub>, where 𝜇<sub>𝑥</sub> = mx2 = 74959.94 and 𝜇<sub>y</sub> = my2 = 61266.78.

In conclusion, we accept the alternative hypothesis, since the parameters 𝜇<sub>𝑥</sub> and 𝜇<sub>y</sub> differ significantly as proved above in *R*.
