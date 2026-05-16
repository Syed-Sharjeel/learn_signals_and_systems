# Laboratory Session No. 9 — Continuous Time Convolution

## Objective

To perform and understand the Convolution Integral (C.I) of two continuous-time signals using MATLAB and compare it with the convolution calculated analytically.

# Theory

## What is Convolution?

Convolution is a mathematical operation used extensively in:

- Signal Processing
- Control Systems
- Communication Systems
- Image Processing
- Linear Time-Invariant (LTI) Systems

It describes how one signal modifies or interacts with another signal.

For a continuous-time system:

$$
y(t) = x(t) * h(t)
$$

Where:

- $$x(t)$$ = input signal
- $$h(t)$$ = impulse response of the system
- $$y(t)$$ = output signal
- $$*$$ = convolution operation

The convolution integral is defined as:

$$
x(t) * h(t) = \int_{-\infty}^{\infty} x(\tau) h(t-\tau)\, d\tau
$$

# Physical Meaning of Convolution

Convolution measures the overlap between:

- one signal $$x(\tau)$$
- and a shifted & flipped version of another signal $$h(t-\tau)$$

The process involves:

1. Flipping one signal
2. Shifting it by $$t$$
3. Multiplying the overlapping portions
4. Integrating the result

This produces the output signal.

# Given Signals

## Input Signal

$$
x(t)=
\begin{cases}
0.5, & 2 < t < 4 \\
0, & \text{otherwise}
\end{cases}
$$

This is a rectangular pulse of amplitude $$0.5$$.

## Impulse Response

$$
h(t)=e^{-3t}u(t)
$$

Where:

$$
u(t)=
\begin{cases}
1, & t \ge 0 \\
0, & t<0
\end{cases}
$$

This is a causal exponentially decaying signal.

# Mathematical Analysis of Convolution

We need to compute:

$$
y(t)=x(t)*h(t)
$$

Using the convolution formula:

$$
y(t)=\int_{-\infty}^{\infty}x(\tau)h(t-\tau)d\tau
$$

Substituting the given signals:

$$
y(t)=\int_{-\infty}^{\infty}x(\tau)e^{-3(t-\tau)}u(t-\tau)d\tau
$$

Since $$x(\tau)=0.5$$ only for $$2<\tau<4$$,

$$
y(t)=\int_{2}^{4}0.5\,e^{-3(t-\tau)}u(t-\tau)d\tau
$$

Now evaluate for different intervals of $$t$$.

# Activity 2 — Analytical Convolution Solution

## Case 1: $$t < 2$$

For $$t<2$$,

$$
u(t-\tau)=0
$$

for all $$\tau$$ in $$\(2,4\)$$.

Therefore,

$$
y(t)=0
$$

## Case 2: $$2 \le t < 4$$

The overlap exists from:

$$
2 \le \tau \le t
$$

Thus,

$$
y(t)=\int_{2}^{t}0.5\,e^{-3(t-\tau)}d\tau
$$

Take constants outside:

$$
y(t)=0.5e^{-3t}\int_{2}^{t}e^{3\tau}d\tau
$$

Integrating:

$$
\int e^{3\tau}d\tau=\frac{e^{3\tau}}{3}
$$

Therefore,

$$
y(t)=0.5e^{-3t}
\left[
\frac{e^{3\tau}}{3}
\right]_{2}^{t}
$$

$$
y(t)=\frac{0.5}{3}e^{-3t}(e^{3t}-e^6)
$$

Simplifying:

$$
y(t)=\frac{1}{6}(1-e^{-3(t-2)})
$$

for:

$$
2 \le t < 4
$$

## Case 3: $$t \ge 4$$

Now full overlap exists:

$$
y(t)=\int_{2}^{4}0.5\,e^{-3(t-\tau)}d\tau
$$

$$
y(t)=0.5e^{-3t}\int_{2}^{4}e^{3\tau}d\tau
$$

$$
y(t)=0.5e^{-3t}
\left[
\frac{e^{3\tau}}{3}
\right]_2^4
$$

$$
y(t)=\frac{1}{6}e^{-3t}(e^{12}-e^6)
$$

Simplifying:

$$
y(t)=\frac{1}{6}(e^{-3(t-4)}-e^{-3(t-2)})
$$

for:

$$
t \ge 4
$$

# Final Piecewise Convolution Result

$$
y(t)=
\begin{cases}
0, & t<2 \\
\frac{1}{6}(1-e^{-3(t-2)}), & 2\le t<4 \\
\frac{1}{6}(e^{-3(t-4)}-e^{-3(t-2)}), & t\ge4
\end{cases}
$$

# Interpretation of the Result

## Region 1: $$t<2$$

No overlap occurs between the signals.

Output is zero.

## Region 2: $$2\le t<4$$

Partial overlap occurs.

The output rises exponentially.

## Region 3: $$t\ge4$$

Full overlap has occurred and starts decreasing exponentially.

# Graphical Explanation

## Input Signal $$x(t)$$

- Rectangular pulse
- Starts at $$t=2$$
- Ends at $$t=4$$
- Amplitude = $$0.5$$

## Impulse Response $$h(t)$$

- Exponentially decaying signal
- Starts at $$t=0$$
- Decays toward zero

## Convolution Output $$y(t)$$

- Zero before $$t=2$$
- Increases between $$2$$ and $$4$$
- Decays after $$t=4$$

# Comparison Between MATLAB and Analytical Solution

| Feature | Analytical Solution | MATLAB Result |
|---|---|---|
| Accuracy | Exact mathematical form | Numerical approximation |
| Complexity | Requires derivation | Computed automatically |
| Visualization | Manual plotting | Automatic plotting |
| Understanding | Better conceptual clarity | Better simulation capability |

Both methods produce nearly identical graphs, validating the correctness of the convolution operation.
