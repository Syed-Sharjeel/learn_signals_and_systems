# Laboratory Session No. 10  
**Solving Ordinary Differential Equations (ODEs) using MATLAB**

# Objective

To understand and solve Ordinary Differential Equations (ODEs) using MATLAB and manual analytical methods.

# Theory

## What is an Ordinary Differential Equation (ODE)?

An **Ordinary Differential Equation (ODE)** is an equation that contains:

- an unknown function,
- one independent variable,
- and derivatives of the unknown function.

A general first-order ODE looks like:

$$
\frac{dy(t)}{dt} + y(t) = t
$$

where:

- $$y(t)$$ is the unknown function,
- $$t$$ is the independent variable,
- $$\frac{dy(t)}{dt}$$ is the derivative of $$y(t)$$ with respect to $$t$$.

# Types of Solutions of an ODE

The solution of a linear differential equation generally contains two parts:

$$
y(t)=y_h(t)+y_p(t)
$$

where:

- $$y_h(t)$$ = Homogeneous (Natural) Solution
- $$y_p(t)$$ = Particular (Forced) Solution

# 1. Homogeneous Solution

The homogeneous solution is obtained by assuming the input is zero.

For example, given:

$$
\frac{d^2y}{dt^2}+\frac{dy}{dt}=x(t)
$$

the homogeneous equation becomes:

$$
\frac{d^2y}{dt^2}+\frac{dy}{dt}=0
$$

This solution represents the **natural behavior** of the system.

# 2. Particular Solution

The particular solution is obtained due to the external input applied to the system.

If the input is:

$$
x(t)=2t
$$

then the particular solution corresponds to this forcing function.

This part represents the **steady-state behavior** of the system.

It depends only on the input signal.

# 3. Total Solution

The complete solution is:

$$
y(t)=y_h(t)+y_p(t)
$$

This means:

- one part comes from system dynamics,
- another part comes from external excitation.

# Initial Conditions

Differential equations require initial conditions to obtain a unique solution.

Examples:

$$
y(0)=0
$$

$$
\frac{dy(0)}{dt}=0
$$

These conditions specify the state of the system at $$t=0$$.

# Numerical Solution using ODE45

## What is ODE45?

`ode45` is one of MATLAB’s most commonly used numerical solvers for Ordinary Differential Equations.

It is based on the:

$$
\text{Runge-Kutta 4th and 5th Order Method}
$$

The name:

- `ode` → Ordinary Differential Equation
- `45` → Uses 4th-order and 5th-order Runge-Kutta approximations

# Why Use ODE45?

Analytical solutions are not always easy or possible for complex differential equations.

In such cases, MATLAB numerically computes approximate solutions using `ode45`.

It is useful for:

- nonlinear systems,
- higher-order equations,
- engineering simulations,
- systems without closed-form solutions.

# Activity 1

Solve the following second-order ODE using MATLAB:

$$
\frac{d^2y(t)}{dt^2}+\frac{dy(t)}{dt}=x(t)
$$

Given:

$$
x(t)=2t
$$

Initial conditions:

$$
y(0)=0
$$

$$
\frac{dy(0)}{dt}=0
$$

# Step-by-Step Analytical Solution

**1. Substitute Input**
Given:

$$
x(t)=2t
$$

Therefore:

$$
y''+y'=2t
$$

**2. Solve Homogeneous Equation**

Homogeneous equation:

$$
y''+y'=0
$$

Assume solution:

$$
y_h=e^{rt}
$$

Then:

$$
y_h'=re^{rt}
$$

$$
y_h''=r^2e^{rt}
$$

Substitute:

$$
r^2e^{rt}+re^{rt}=0
$$

Factor:

$$
e^{rt}(r^2+r)=0
$$

Since $$e^{rt}\neq0$$:

$$
r(r+1)=0
$$

Roots:

$$
r=0,\quad r=-1
$$

Thus:

$$
y_h=C_1+C_2e^{-t}
$$

**3. Find Particular Solution**

Since the input is polynomial $$2t$$, assume:

$$
y_p=At^2+Bt+C
$$

Differentiate:

$$
y_p'=2At+B
$$

$$
y_p''=2A
$$

Substitute into equation:

$$
2A+(2At+B)=2t
$$

Group terms:

$$
2At+(2A+B)=2t
$$

Compare coefficients:

**Coefficient of $$t$$**

$$
2A=2
$$

$$
A=1
$$

**Constant term**

$$
2A+B=0
$$

$$
2(1)+B=0
$$

$$
B=-2
$$

Thus:

$$
y_p=t^2-2t
$$

(Constant $$C$$ is omitted because it already exists in homogeneous solution.)

**4. Complete General Solution**

$$
y(t)=C_1+C_2e^{-t}+t^2-2t
$$

**5. Apply Initial Conditions**

$$
y(0)=0
$$

Substitute:

$$
C_1+C_2=0
$$

## Differentiate

$$
y'(t)=-C_2e^{-t}+2t-2
$$

Apply:

$$
y'(0)=0
$$

$$
-C_2-2=0
$$

$$
C_2=-2
$$

Now:

$$
C_1+(-2)=0
$$

$$
C_1=2
$$

**Final Solution**

$$
\boxed{
y(t)=2-2e^{-t}+t^2-2t
}
$$

# Explanation of MATLAB Commands

| Command | Purpose |
|---|---|
| `syms y(t)` | Defines symbolic function |
| `diff(y,t)` | First derivative |
| `diff(y,t,2)` | Second derivative |
| `dsolve()` | Solves symbolic differential equation |
| `ode45()` | Numerically solves differential equations |
| `plot()` | Plots graph |
| `pretty(sol)` | Displays formatted result |

# Important Note About MATLAB Versions

Different MATLAB versions support different programming features.

Older MATLAB versions may not allow function definitions inside script files. In such cases:

- the main program should be saved in one file,
- and the function should be saved in a separate `.m` file.

For example:

| File Name | Purpose |
|---|---|
| `ode_45.m` | Main program |
| `odefun.m` | Function definition |

# Expected MATLAB Output

$$
y(t)=2-2e^{-t}+t^2-2t
$$

The graph generated using `ode45` shows the variation of $$y(t)$$ with respect to time.
