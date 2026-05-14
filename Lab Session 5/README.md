# Laboratory Session 05  
## Study of Different Types of Signals in MATLAB

## Objective
To study and analyze different types of signals using MATLAB, including elementary and singularity functions such as step, impulse, ramp, sinc, rect, signum, square, and sawtooth signals.

## Theory

### Singularity Functions
Singularity functions are discontinuous functions or functions whose derivatives are discontinuous. A singularity occurs at a point where a function is not differentiable. These functions are widely used in signal processing and system analysis.


### Elementary Signals
Elementary signals are the basic building blocks used for system analysis. These include:

1. Unit Step Function  
2. Unit Impulse (Dirac Delta)  
3. Ramp Function  
4. Exponential Function  
5. Sinusoidal Function  

## Some Important Signals

### 1. Dirac Delta Function
The Dirac delta function is zero everywhere except at the origin, where it is infinitely large, but its integral over all time is 1.

$$
\delta(x) =
\begin{cases}
+\infty, & x = 0 \\
0, & x \neq 0
\end{cases}
$$

$$
\int_{-\infty}^{\infty} \delta(x)\,dx = 1
$$

It is also known as the unit impulse function.


### 2. Unit Step Function
The unit step function is defined as:

$$
u(t) =
\begin{cases}
1, & t \geq 0 \\
0, & t < 0
\end{cases}
$$

It represents a signal that turns ON at \( t = 0 \).

### 3. Ramp Function
The ramp function increases linearly for positive time and is zero for negative time:

$$
r(t) =
\begin{cases}
t, & t \geq 0 \\
0, & t < 0
\end{cases}
$$

It is the integral of the unit step function.


### 4. Sinc Function
The sinc function is widely used in signal processing and Fourier analysis:

$$
\text{sinc}(x) =
\begin{cases}
1, & x = 0 \\
\frac{\sin x}{x}, & x \neq 0
\end{cases}
$$

It satisfies:

$$
\int_{-\infty}^{\infty} \text{sinc}(x)\,dx = \pi
$$


### 5. Rectangular Function
The rectangular function generates a pulse of width 1 centered at zero:

$$
\text{rect}(t) =
\begin{cases}
1, & |t| \leq \frac{1}{2} \\
0, & |t| > \frac{1}{2}
\end{cases}
$$

It is widely used in modulation and signal sampling.

### 6. Signum Function
The signum function extracts the sign of a real number:

$$
\text{sgn}(x) =
\begin{cases}
-1, & x < 0 \\
0, & x = 0 \\
1, & x > 0
\end{cases}
$$

It is related to absolute value:

$$
\text{sgn}(x) = \frac{d}{dx}|x|,\quad x \neq 0
$$


### 7. Square Wave
A square wave alternates between two values (+1 and −1) at a fixed frequency. It can be represented using the sign function:

$$
x(t) = \text{sgn}(\sin(2\pi f t))
$$

or

$$
v(t) = \text{sgn}(\cos(2\pi f t))
$$

### 8. Sawtooth Wave
The sawtooth wave is a periodic signal that increases linearly and then resets:

$$
S(x) = A \cdot \text{frac}\left(\frac{x}{T} + \phi\right)
$$

where:
- \(A\) = amplitude  
- \(T\) = period  
- \(\phi\) = phase shift  
- \(\text{frac}(x) = x - \lfloor x \rfloor\)

## Conclusion
This laboratory session helped in understanding and visualizing fundamental continuous and discrete-time signals using MATLAB. These signals form the foundation of signal processing and system analysis in electrical engineering.
