# Responses of RC Circuits

## Objective
Study the behavior of a simple RC circuit.

## Time Constant ($\tau$)
- Represents how fast the circuit responds.
- Charging: reaches $\approx 63.2\%$ of final voltage in $\tau$.
- Discharging: drops to $\approx 36.8\%$ in $\tau$.
- **Formula:**  
  $$\tau = RC$$

## RC Circuit Response

### Natural Response (Discharging)
- Occurs when the source is removed.
- Voltage decays exponentially.
- **Equation:**  
  $$V(t) = V_0 e^{-t/\tau}$$

### Forced Response (Charging)
- Occurs when a voltage source is applied.
- Voltage rises exponentially.
- **Equation:**  
  $$V(t) = V_s \left(1 - e^{-t/\tau}\right)$$

## Key Idea
- Total response = Natural response + Forced response
