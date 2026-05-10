## RC Circuit Component Calculation

**Circuit Details:**
- AC Voltage Source: \( f = f \text{ Hz} \), Amplitude = 100V
- Resistor: \( R = ? \, \Omega \) (to be determined)
- Capacitor: \( C = 1 \times 10^{-6} \, \text{F} \)

---

### Step 1: Formula for Cutoff Frequency
For an RC low-pass or high-pass filter, the cutoff frequency \( f_c \) is given by:

\[
f_c = \frac{1}{2 \pi R C}
\]

Where:
- \( f_c \) is the cutoff frequency in Hz  
- \( R \) is the resistance in ohms (\(\Omega\))  
- \( C \) is the capacitance in farads (F)

---

### Step 2: Solve for \( R \)
Rearranging the formula to find \( R \):

\[
R = \frac{1}{2 \pi f_c C}
\]

---

### Step 3: Substitute Values
Given:
- \( f_c = f \, \text{Hz} \)  
- \( C = 1 \times 10^{-6} \, \text{F} \)  

\[
R = \frac{1}{2 \pi (f) (1 \times 10^{-6})}
\]

---

### Step 4: Example Calculation
If the desired cutoff frequency is \( f = 1000 \, \text{Hz} \):

\[
R = \frac{1}{2 \pi (1000)(1 \times 10^{-6})}
\]

Step-by-step calculation:

1. Multiply \( f \) and \( C \):  
\[
1000 \times 1 \times 10^{-6} = 0.001
\]

2. Multiply by \( 2\pi \):  
\[
2 \pi \times 0.001 \approx 0.0062832
\]

3. Take reciprocal to find \( R \):  
\[
R = \frac{1}{0.0062832} \approx 159.15 \, \Omega
\]

---

### ✅ Result
\[
\boxed{R \approx 159 \, \Omega}
\]

This is the resistance required to achieve a cutoff frequency of 1000 Hz with a 1 µF capacitor.