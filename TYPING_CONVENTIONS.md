# Typing Conventions for Physics: Art of Modeling

This document describes the typographical conventions used throughout this textbook, with extensive examples drawn directly from the chapters.

## 1. Variables and Scalar Quantities

**Convention**: Variables are italicized in math mode.

**Examples from the book**:
- Time: $t$ (e.g., "the time that it takes for a tennis ball to drop")
- Height/distance: $h$ (e.g., "a tennis ball to drop a height, $h$")
- Mass: $m$ (e.g., "If an object has a mass, $m$")
- Position: $x$, $y$, $z$ (e.g., "the position of the train by specifying how far it is from the train station...using a single real number, say $x$")
- Velocity components: $v_x$, $v_y$, $v_z$
- Acceleration components: $a_x$, $a_y$, $a_z$
- Angles: $\theta$, $\phi$ (e.g., "the angle, $\phi$, and the radius, $\rho$")
- Angular frequency: $\omega$ (e.g., "We call $\omega$ the 'angular frequency'")
- Spring constant: $k$ (e.g., "a spring with spring constant, $k$")
- Radius: $r$, $\rho$ (e.g., "a distance, $r$, and an angle, $\theta$")
- Density: $\rho$ (cylindrical coordinates), $\mu$ (linear mass density)
- Distance/displacement magnitude: $d$ (e.g., "$d$ is the distance between the point and the $z$ axis")

**Key principle**: All physical quantities that are scalars (single values with no direction) are italicized when in math mode.

## 2. Vectors

**Convention**: Vectors use arrow notation `\vec`.

**Examples from the book**:
- Displacement: $\vec d$ (e.g., "The work done by a force, $\vec F$, on an object over a displacement, $\vec d$")
- Force: $\vec F$ (e.g., "$\vec F$ is the force exerted by the spring")
  - Weight: $\vec F_g$ (e.g., "the force of gravity on an object as $\vec F_g$")
  - Tension: $\vec T$ (e.g., "The rope exerts a force of tension $\vec T$ on the crate")
  - Normal force: $\vec N$
  - Friction: $\vec f_k$ (kinetic), $\vec f_s$ (static)
- Acceleration: $\vec a$ (e.g., "An object's acceleration...in the same direction as the net force exerted on the object")
- Velocity: $\vec v$ (e.g., "moving with constant velocity")
  - Center of mass velocity: $\vec v_{CM}$
- Position: $\vec r$ (e.g., "the position of an object in space relative to an origin")
- Electric field: $\vec E$ (e.g., "the electric field, $\vec E$")
- Magnetic field: $\vec B$
- Gravitational field: $\vec g$ (e.g., "where $\vec g$ is the Earth's 'gravitational field' vector")
- Momentum: $\vec p$
- Area vector: $\vec A$

**Key principle**: Any quantity with magnitude and direction uses the arrow notation. As stated in the book: "vectors are represented by arrows."

## 3. Unit Vectors

**Convention**: Unit vectors use hat notation `\hat`.

**Examples from the book**:
- Cartesian unit vectors: $\hat x$, $\hat y$, $\hat z$ (e.g., "Those vectors are denoted $\hat x$, $\hat y$, $\hat z$")
  - Alternative notation: $\hat i$, $\hat j$, $\hat k$ (mentioned as equivalent)
- Radial unit vector: $\hat r$ (e.g., "$\hat r$ is the radial direction")
- General unit vector: $\hat d$ (e.g., "the vector $\hat d$, is the vector of length 1 that points in the same direction as $\vec d$")

**Relation to vectors**: To get a unit vector from a vector: $\hat v = \frac{\vec v}{v}$ where $v = ||\vec v||$

**Examples in equations**:
- Spring force: $\vec F = -kx \hat x$ (Chapter 5)
- Vector components: $\vec d = d_x\hat x +d_y \hat y$ (Chapter 3)
- Weight: $\vec F_g = -mg \hat y$ (Chapter 7)

## 4. Units

**Convention**: Units are typeset in roman (upright) text using `{\rm }`.

**Examples from the book**:
- Length: ${\rm m}$ (meters), ${\rm cm}$, ${\rm km}$
- Time: ${\rm s}$ (seconds)
- Mass: ${\rm kg}$ (kilograms)
- Force: ${\rm N}$ (Newtons) - e.g., "The SI unit for the magnitude of a force is the 'Newton', abbreviated, ${\rm N}$"
- Energy: ${\rm J}$ (Joules), ${\rm eV}$ (electron volts) - e.g., "The S.I. unit for energy is the Joule (abbreviated $\text{J}$)"
- Electric potential: ${\rm V}$ (Volts) - e.g., "The S.I. unit for electric potential is the 'volt' (V)"
- Frequency: ${\rm Hz}$ (Hertz)
- Current: ${\rm A}$ (Amperes)
- Angle: ${\rm rad}$ (radians), ${\rm \degree}$ (degrees)
- Speed: ${\rm m/s}$
- Acceleration: ${\rm m/s^2}$
- Derived units: ${\rm N/kg}$ (e.g., "$g=9.8 {\rm N/kg}$"), ${\rm kg m^2/s^2}$

**In text**: e.g., "The time to fall a distance $h_1=1 {\rm m}$" or "the magnitude of the gravitational field is approximately $g=9.8 {\rm N/kg}$"

**Key principle**: Units are NEVER italicized. They are always in roman (upright) type to distinguish them from variables.

## 5. Constants

**Convention**: Physical constants are italicized in math mode.

**Examples from the book**:
- Gravitational constant: $G$ (e.g., "$G=6.67e-11 {\rm }$")
- Spring constant: $k$ (e.g., "spring constant, $k$")
- Coulomb's constant: $k$ (in electrostatics context)
- Gravitational field strength: $g$ (e.g., "$g=9.8 {\rm N/kg}$")
- Speed of light: $c$
- Elementary charge: $e$ (e.g., "the charge of the electron")
- Coefficient of friction: $\mu_k$ (kinetic), $\mu_s$ (static)
- Planck's constant: $h$

**Note**: Constants follow the same italicization as variables.

## 6. Vector Magnitudes

**Convention**: Two notations are used for the magnitude of a vector.

**Double-bar notation**: $||\vec d||$ (e.g., "the notation that placing two vertical bars around a vector ($||\vec d||$) is used to indicated its magnitude")

**Examples**:
- $||\vec d|| = \sqrt{d_x^2+d_y^2}$
- $||\vec v|| = v$

**Plain letter notation**: $d$, $F$, $v$ (the vector name without the arrow)

**Examples from the book**:
- "the length of the vector, which we label $d$ (the name of the vector without the arrow on top)"
- "the magnitude of the gravitational field is approximately $g=9.8 {\rm N/kg}$"
- "the magnitude of the normal force, $N$"
- "the kinetic friction...has a magnitude given by $f_{k1}=\mu_{k1}N_1$"

**In practice**: Both $||\vec F||$ and $F$ refer to the magnitude of force $\vec F$.

## 7. Functions

**Convention**: Function names are in roman type, arguments are italicized.

**Examples from the book**:
- Trigonometric functions: $\cos\theta$, $\sin\theta$, $\tan\theta$
  - e.g., "$t \propto \sqrt{h}$" and "$\cos(\theta)$"
- Exponential: $\exp(x)$, $e^{x}$
- Logarithm: $\ln(x)$, $\log(x)$
- Square root: $\sqrt{h}$ (e.g., "the time, $t$...is proportional to the square root of the height: $t \propto \sqrt{h}$")

**In equations**: "$W = Fd\cos\theta$" where $\cos$ is roman but $\theta$ is italic.

## 8. Subscripts and Superscripts

**Convention**: Subscripts/superscripts follow specific rules based on their meaning.

### Descriptive subscripts (roman)
When a subscript describes or labels what something is, use roman (upright) text.

**Examples from the book**:
- $\vec F_g$ - gravitational force ("g" for gravity)
- $\vec F_T$ - tension force ("T" for tension)
- $f_k$ - kinetic friction ("k" for kinetic)
- $f_s$ - static friction ("s" for static)
- $\mu_k$, $\mu_s$ - coefficients of kinetic/static friction
- $T_{max}$ - maximum tension
- $v_{max}$ - maximum velocity
- $x_{\parallel}$ - parallel component
- $\vec v_{CM}$ - center of mass velocity ("CM" for center of mass)
- $\vec F_{from\; wall}$ - force from wall (descriptive text with spacing)

### Variable subscripts (italic)
When a subscript is itself a variable or coordinate, use italic.

**Examples from the book**:
- $x_i$ - position of the i-th particle (i is a variable index)
- $F_i$ - the i-th force
- $\vec v_1$, $\vec v_2$ - velocities of particle 1 and 2 (numbered items)
- $m_1$, $m_2$ - masses (numerical indices)
- $r_A$, $r_B$ - radius at positions A and B (position labels)

### Coordinate subscripts (italic)
Components along coordinate axes use italic subscripts.

**Examples from the book**:
- $F_x$, $F_y$, $F_z$ - components of force (e.g., "$\sum F_x = ma_x$")
- $v_x$, $v_y$, $v_z$ - velocity components
- $a_x$, $a_y$, $a_z$ - acceleration components
- $d_x$, $d_y$ - displacement components (e.g., "$\vec d = d_x\hat x +d_y \hat y$")
- $(\hat d)_x$, $(\hat d)_y$ - components of unit vector

### Mixed descriptive-coordinate subscripts
**Examples from the book**:
- $v_{x,0}$ - initial x-component of velocity (0 is descriptive "initial", x is coordinate)

## 9. Change/Difference Notation

**Convention**: Use capital delta $\Delta$ for finite changes, lowercase for infinitesimals.

**Finite changes** (capital delta, roman):
- $\Delta x$ - change in position (e.g., "$\Delta x = x_1-x_0$")
- $\Delta t$ - time interval (e.g., "$a=\Delta v/\Delta t$")
- $\Delta V$ - potential difference/voltage (e.g., "A potential difference of $\Delta V=500 {\rm V}$")
- $\Delta U$ - change in potential energy (e.g., "$\Delta U = q\Delta V$")
- $\Delta K$ - change in kinetic energy (e.g., "$\Delta K = -q \Delta V$")
- $\Delta E$ - change in total energy
- $\Delta \vec x$ - displacement vector

**Examples from text**:
- "The work was calculated in going from $x=x_0$ to $x=x_f$, and $d\vec x=dx\hat x$ is an infinitely small displacement vector"
- "the change in electric potential experienced by the particles is thus: $\Delta V = V_{final}-V_{initial}$"

**Infinitesimal changes** (lowercase, italic):
- $dx$ - infinitesimal change in x
- $dt$ - infinitesimal time
- $d\vec x$, $d\vec r$ - infinitesimal displacement vectors (e.g., "$\int_{x_0}^{x_f}\vec F(x) \cdot d\vec x$")

## 10. Derivatives

**Convention**: Use `\frac{d}{dt}` for ordinary derivatives, `\frac{\partial}{\partial t}` for partial derivatives.

**Ordinary derivatives**:
- Velocity: $v = \frac{dx}{dt}$ (e.g., "the first derivative of position")
- Acceleration: $a = \frac{dv}{dt} = \frac{d^2x}{dt^2}$ (e.g., "Newton's Second Law...as the second derivative of the position")
- Time derivative: $\frac{d}{dt}x(t)$

**Examples from the book**:
```math
m\frac{d^2x}{dt^2} = -kx
```
"We can write the acceleration in Newton's Second Law more explicitly as the second derivative of the position, $x(t)$, with respect to time"

**Partial derivatives** (for fields/waves):
- Wave equation: $\frac{\partial^2D}{\partial x^2}=\frac{1}{v^2}\frac{\partial^2D}{\partial t^2}$
- Gradient: $\frac{\partial D}{\partial x}$

## 11. Integrals

**Convention**: Standard integral notation with limits and differential.

**Examples from the book**:
- Work: $W = \int_A^B \vec F \cdot d\vec r$ (e.g., "The work done by the electric force")
- Varying force: $W^{tot} = \int_{x_0}^{x_f}\vec F(x) \cdot d\vec x$
- Electric potential: $V(\vec r)=-\int \vec E\cdot d\vec r + C$
- Summation to integral: $\sum_{i=0}^N\vec F_i \cdot \Delta \vec x \rightarrow \int_{x_0}^{x_f}\vec F(x) \cdot d\vec x$

**Key features**:
- Limits below and above integral sign
- Dot product between force/field and displacement element
- Differential (like $d\vec r$, $dx$) at the end

## 12. Special Mathematical Symbols

### Proportionality
- $\propto$ (e.g., "the time, $t$...is proportional to the square root of the height: $t \propto \sqrt{h}$")
- Converting to equation: $t \propto \sqrt{h} \rightarrow t=k\sqrt{h}$

### Therefore/Implies
- $\therefore$ for "therefore" (e.g., "$\therefore t_2 = \sqrt{2} t_1$")
- $\rightarrow$ for "becomes" or "implies"

### Summation
- $\sum \vec F$ - sum of forces (e.g., "$\sum \vec F = m\vec a$")
- $\sum_{i=1}^N$ - sum over index (e.g., "$\sum_{i=0}^N\vec F_i \cdot \Delta \vec x$")

### Inequalities
- $\leq$, $\geq$ (e.g., "$f_s\leq\mu_sN$" for static friction)
- $<$, $>$

### Approximately equal
- $\approx$ (e.g., "$\sqrt{2}\sim 1.41$" or "$\sin\theta\approx \tan\theta$")
- $\sim$ (sometimes used interchangeably)

## 13. Equations and Alignment

**Convention**: Use `align*` environment for multi-line derivations.

**Example from Chapter 3**:
```math
\begin{align*}
\vec c &= \vec a + \vec b = \begin{pmatrix}
           a_x \\
           a_y \\
         \end{pmatrix} + \begin{pmatrix}
           b_x \\
           b_y \\
         \end{pmatrix}\\
        \therefore \begin{pmatrix}
           c_x \\
           c_y \\
         \end{pmatrix} &=\begin{pmatrix}
           a_x+b_x \\
           a_y+b_y \\
         \end{pmatrix}
\end{align*}
```

**Example from Chapter 5**:
```math
\begin{align*}
\sum F_x &= ma_x \\
\sum F_y &= ma_y \\
\sum F_z &= ma_z
\end{align*}
```

**Key features**:
- `&=` for alignment on equals signs
- `\\` for line breaks
- `\therefore` for conclusions

## 14. Vector Notation Formats

**Row vector**: $\vec d = (d_x,d_y)$

**Column vector**:
```math
\vec d = \begin{pmatrix}
           d_x \\
           d_y \\
         \end{pmatrix}
```

**Component form**: $\vec d = d_x\hat x +d_y \hat y$ or $\vec d = d_x\hat i +d_y \hat j$

**All three are equivalent** as stated in Chapter 3.

## 15. Scalar Products (Dot Product)

**Convention**: Use $\cdot$ for dot products.

**Examples from the book**:
- Work: $W = \vec F \cdot \vec d$ (e.g., "The work 'done' by the force is the scalar product")
- Components: $W = \vec F \cdot \vec d = F_xd_x+F_yd_y+F_zd_z$
- With angle: $W = Fd\cos\theta$ where $\theta$ is angle between vectors
- Unit vectors: $\hat x \cdot \hat x = 1$, $\hat x \cdot \hat y = 0$

**Key point**: "When determining the scalar product $\vec F\cdot \vec d = Fd\cos\theta$, $\theta$ is the angle between the vectors when they are placed tail to tail."

## 16. Scientific Notation and Large/Small Numbers

**Convention**: Use `e` notation or `\times 10^{n}`.

**Examples from the book**:
- Gravitational constant: $G=6.67e-11$ (in some contexts) or $G=6.67\times 10^{-11} {\rm N\cdot m^2/kg^2}$
- Elementary charge: $e=1.6\times 10^{-19} {\rm C}$
- Planck's constant: $h=6.62607015e-34 {\rm kg\cdot m^2\cdot s^{-1}}$
- Electron mass: $m=9.109e-31 {\rm kg}$

## 17. Special Cases and Edge Cases

### Numbered quantities
When referring to specific instances, use subscript numbers (italic for the numbers themselves):
- "Let $t_1$ be the time to fall a distance $h_1=1 {\rm m}$"
- "The two particles move from a region...to a region"
- $\vec F_1$, $\vec F_2$, $\vec F_3$ for multiple forces

### Compound subscripts with spacing
Use `\;` for spacing in descriptive subscripts:
- $\vec F_{from\; wall}$ - force from the wall
- $\vec F_{from\; rope}$ - force from the rope

### Position vectors
- $\vec r_A$, $\vec r_B$ - position vectors at locations A and B
- $r_A$, $r_B$ - distances/radii at locations A and B

### Special subscripts
- $r_{12}$ - distance between particles 1 and 2 (both italic as they're indices)
- $r_{13}$, $r_{23}$ - similar pattern

### Initial/final conditions
- $x_0$ - initial position (0 is descriptive "initial")
- $x_f$ - final position (f is descriptive "final")
- $t=0$ - initial time
- $\theta_0$ - initial angle

## 18. Boxed Equations

**Convention**: Important equations are boxed using `\boxed{}`.

**Examples from the book**:
```math
\boxed{W = \vec F \cdot \vec d = Fd\cos\theta = F_xd_x+F_yd_y+F_zd_z}
```

```math
\boxed{\omega = \sqrt{\frac{k}{m}}}
```

```math
\boxed{\Delta K = -q \Delta V}
```

These are key equations that students should remember and use.

## 19. Text Within Math Mode

**Convention**: Use `\text{}` for words within equations.

**Examples**:
- Piecewise functions:
```math
\vec F (x)=
  \begin{cases}
    F_1\hat x & x<\Delta x \\
    F_2\hat x & \Delta x \leq x< 2\Delta x \\
    F_3\hat x & 2\Delta x \leq x
  \end{cases}
```
- Labels: `\text{row vector}`, `\text{column vector}`

## 20. Common Patterns Summary

### Force equations
- Newton's 2nd Law: $\sum \vec F = m\vec a$ or componentwise $\sum F_x = ma_x$
- Weight: $\vec F_g = m\vec g$ or $F_g = mg$
- Spring: $\vec F = -kx \hat x$
- Friction: $f_k=\mu_kN$ (magnitude), $\vec f_k$ (vector)

### Energy equations
- Kinetic: $K = \frac{1}{2}mv^2$
- Potential (spring): $U = \frac{1}{2}kx^2$
- Potential (gravity): $U = mgh$ (near surface), $U = -\frac{GMm}{r}$ (general)
- Work-energy: $W = \Delta K$

### Kinematics
- Position: $x(t)$, velocity: $v(t) = \frac{dx}{dt}$, acceleration: $a(t) = \frac{dv}{dt}$
- Simple harmonic motion: $x(t) = A \cos(\omega t + \phi)$

### Vectors
- Magnitude: $||\vec v|| = \sqrt{v_x^2+v_y^2+v_z^2}$
- Unit vector: $\hat v = \frac{\vec v}{v}$
- Dot product: $\vec a \cdot \vec b = a_xb_x + a_yb_y + a_zb_z = ab\cos\theta$

## 21. Comparison with Common Mistakes

### ❌ Incorrect → ✅ Correct

| Incorrect | Correct | Reason |
|-----------|---------|--------|
| $m$ (for meters) | ${\rm m}$ | Units must be roman |
| $F$ (without arrow, when meaning force vector) | $\vec F$ | Vectors need arrows |
| $\vec{F_x}$ | $F_x$ | Components are scalars |
| $cos(θ)$ | $\cos\theta$ | Function names roman, arguments italic |
| $F_{x}$ (roman x) | $F_x$ | Coordinate subscripts italic |
| $F_{T}$ (italic T) | $\vec F_T$ | Descriptive subscripts roman, and force is a vector |
| $\Delta x$ (italic delta) | $\Delta x$ | Delta is roman (though capital) |
| $μ_k$ (mu in wrong font) | $\mu_k$ | Use Greek letters from LaTeX |
| $dx/dt$ (in text mode) | $\frac{dx}{dt}$ | Use proper fraction formatting |

## Summary

The key principles to remember:

1. **Variables are italic**: $m$, $t$, $x$, $\theta$, $k$
2. **Vectors have arrows**: $\vec F$, $\vec v$, $\vec a$, $\vec d$
3. **Unit vectors have hats**: $\hat x$, $\hat y$, $\hat z$, $\hat r$
4. **Units are roman**: ${\rm m}$, ${\rm kg}$, ${\rm N}$, ${\rm s}$
5. **Functions are roman**: $\cos$, $\sin$, $\ln$, $\exp$
6. **Descriptive subscripts are roman**: $\vec F_g$, $f_k$, $\mu_s$
7. **Variable/coordinate subscripts are italic**: $F_x$, $m_1$, $x_i$
8. **Changes use Delta**: $\Delta x$ (finite), $dx$ (infinitesimal)

When in doubt, look at how similar quantities are formatted in the existing chapters!
