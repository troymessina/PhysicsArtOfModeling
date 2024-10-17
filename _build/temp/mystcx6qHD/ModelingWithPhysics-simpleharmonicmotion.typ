/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 12 - Simple harmonic motion

=== Overview <chapter:simpleharmonicmotion>

In this chapter, we look at oscillating systems that undergo "simple harmonic motion", such as the motion of a mass attached to a spring. Many systems in the physical world, such as an oscillating pendulum, can be described by the same mathematical formalism that describes the motion of a mass attached to a spring.

#hintBlock(heading: [Learning Objectives])[
- Understand how to model the position, velocity, and acceleration of a mass attached to a spring.
- Understand the conditions under which a system undergoes simple harmonic motion.
- Understand how to model the motion of a pendulum when it undergoes simple harmonic motion.
]

#noteBlock(heading: [Think About It])[
What do the motion of a mass attached to a spring, a cork bobbing in the water, and a pendulum have in common?
]

=== The motion of a spring-mass system <the-motion-of-a-spring-mass-system>

As an example of simple harmonic motion, we first consider the motion of a block of mass $m$ that can slide without friction along a horizontal surface. The mass is attached to a spring with spring constant $k$ which is attached to a wall on the other end. We introduce a one-dimensional coordinate system to describe the position of the mass, such that the $x$ axis is co-linear with the motion, the origin is located where the spring is at rest, and the positive direction corresponds to the spring being extended. This "spring-mass system" is illustrated in @fig:simpleharmonicmotion:spring.

#show figure: set block(breakable: true)
#figure(
  image("files/spring-e6d47243885eb7276547802f935f9caf.png", width: 60%),
  caption: [
A horizontal spring-mass system oscillating about the origin with an amplitude $A$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:spring>

We assume that the force exerted by the spring on the mass is given by Hooke's Law:

$ arrow(F) = -k x hat(x) $
where $x$ is the position of the mass. The only other forces exerted on the mass are its weight and the normal force from the horizontal surface, which are equal in magnitude and opposite in direction. Therefore, the net force on the mass is the force from the spring.

As we saw in Section #link("/potentialecons\#sec-potentialecons-ediagrams")[Section 8.5], if the spring is compressed  (or extended) by a distance $A$ relative to the rest position, and the mass is then released, the mass will oscillate back and forth between $x = plus.minus A$#footnote[As long as there is no friction to reduce the mechanical energy of the mass.], which is illustrated in @fig:simpleharmonicmotion:spring. We call $A$ the "amplitude of the motion". When the mass is at $x = plus.minus A$, its speed is zero, as these points correspond to the location where the mass "turns around".

==== Description using energy <description-using-energy>

We can describe the motion of the mass using energy, since the mechanical energy of the mass is conserved. At any position, $x$, the mechanical energy, $E$, of the mass will have a term from the potential energy, $U$, associated with the spring force, and kinetic energy, $K$:

$ E = U + K = frac(1, 2) k x^2 + frac(1, 2) m v^2 $
We can find the mechanical energy, $E$, by evaluating the energy at one of the turning points. At these points, the  kinetic energy of the mass is zero, so $E = U(x = A) = 1 \/ 2 k A^2$. We can then write the expression for mechanical energy as:

$ boxed frac(1, 2) k x^2 + frac(1, 2) m v^2 = frac(1, 2) k A^2 $
We can thus always know the speed, $v$, of the mass at any position, $x$, if we know the amplitude $A$:

$ v(x) = sqrt(frac(k(A^2 -x^2), m)) $
#tipBlock(heading: [Checkpoint])[
If you double the amplitude of the motion of a mass attached to a spring, its maximum speed will be:

+ double.
+ $sqrt(2)$ times greater.
+ the same.
+ halved.

#tipBlock(heading: [Answer])[
+
]
]

==== Kinematics of simple harmonic motion <kinematics-of-simple-harmonic-motion>

We can use Newton's Second Law to obtain the position, $x(t)$, velocity, $v(t)$, and acceleration, $a(t)$, of the mass as a function of time. The $x$ component of Newton's Second Law for the mass attached to the spring can be written:

$ sum F_x = -k x = m a $
We can write the acceleration in Newton's Second Law more explicitly as the second derivative of the position, $x(t)$, with respect to time. If we do this, we can see that Newton's Second Law for the mass attached to the spring is a differential equation for the function $x(t)$ (we call it an "equation of motion"):

$ m a & = -k x \
m frac(d^2 x, d t^2) & = -k x \
therefore frac(d^2 x, d t^2) & = -frac(k, m) x $ <eq:simpleharmonicmotion:shmspring>
We want to find the position function, $x(t)$. Equation \{\\ref\{eq:simpleharmonicmotion:shmspring\}\} tells us that the second derivative of $x(t)$ with respect to time must equal the negative of the $x(t)$ function multiplied by a constant, $k \/ m$. Without having taken a course on differential equations, it might not be obvious what the function $x(t)$ could be. Several, equivalent functions can satisfy this equation. One possible choice, which we present here as a guess, is\\footnote\{Other possible guesses that work are $A sin(omega t + phi.alt)$, and $x(t) = A cos(omega t) + B sin(omega t)$.\}:

$ boxed x(t) = A cos(omega t + phi.alt) $
where $A$, $omega$, and $phi.alt$ are constants that we need to determine. We can take the second order derivative with respect to time of the function above to verify that it indeed "solves" the differential equation:

$ x(t) & = A cos(omega t + phi.alt) \
frac(d, d t) x(t) & = -A omega sin(omega t + phi.alt) \
frac(d^2, d t^2) x(t) & = frac(d, d t)(-A omega sin(omega t + phi.alt)) = -A omega^2 cos(omega t + phi.alt) \
therefore frac(d^2, d t^2) x(t) & = -omega^2 x(t) $
The last equation has exactly the same form as @eq:simpleharmonicmotion:shmspring, which we obtained from Newton's Second Law, if we define $omega$ as:

$ boxed omega = sqrt(frac(k, m)) $
We call $omega$ the "angular frequency" of the spring-mass system. We have found that our guess for $x(t)$ satisfies the differential equation.

#tipBlock(heading: [Checkpoint])[
What is the SI unit for angular frequency?

+ $upright H z$
+ $upright r a d \/ s$
+ $upright N^(1 \/ 2) upright m^(-1 \/ 2) upright k g^(-1 \/ 2)$
+ All of the above

#tipBlock(heading: [Answer])[
+
]
]

#attentionBlock(heading: [Olivia's Thoughts])[
In #link("/newmomentumandcm\#chap-momentumandcm")[Chapter 4.1], we found, $x(t)$, from a function, $a(t$), by using simple integration. You may be wondering why we can't do the same thing in order to find $x(t)$ for the mass-spring system. The difference is that, before, the acceleration was a function of time. Here, the acceleration is a function of $x$. This means that we have to use a different method to solve for $x(t)$, which is why we are making these "guesses" to solve a differential equation.
]

We still need to identify what the constants $A$ and $phi.alt$ have to do with the motion of the mass. The constant $A$ is the maximal value that $x(t)$ can take (when the cosine is equal to 1). This corresponds to the amplitude of the motion of the mass, which we already had labelled, $A$. The constant, $phi.alt$, is called the "phase" and depends on when we choose $t = 0$ to be. Suppose that we define time $t = 0$ to be when the mass is at $x = A$; in that case:

$ x(t = 0) & = A \
A cos(omega t + phi.alt) & = A \
A cos(omega(0) + phi.alt) & = A \
cos(phi.alt) & = 1 \
therefore phi.alt = 0 $
If we define $t = 0$ to be when the mass is at $x = A$, then the phase, $phi.alt$, is zero. In general, the value of $phi.alt$ can take any value between $-pi$ and $+ pi$#footnote[The argument to the cosine function is in radians, since the angular frequency is usually defined in radians per second. The value of $phi.alt$ is constrained to be within that range, since the cosine function is periodic with a period $2 pi$.] and, physically, corresponds to our choice of when $t = 0$ (i.e. the position of the mass when we choose $t = 0$).

Since we have determined the position as a function of time for the mass, its velocity and acceleration as a function of time are easily found by taking the corresponding time derivatives:

$ x(t) & = A cos(omega t + phi.alt) \
v(t) & = frac(d, d t) x(t) = -A omega sin(omega t + phi.alt) \
a(t) & = frac(d, d t) v(t) = -A omega^2 cos(omega t + phi.alt) $
#tipBlock(heading: [Checkpoint])[
What is the value of $phi.alt$ if we choose $t = 0$ to be when the mass is at $x = 0$ and moving in the positive $x$ direction?

+ $pi$
+ $-pi$
+ $pi \/ 2$
+ $-pi \/ 2$

#tipBlock(heading: [Answer])[
+
]
]

The position of the mass is described by a sinusoidal function of time; we call this type of motion "simple harmonic motion". The position and velocity as a function of time for a spring-mass system with $m = 1 upright k g$, $k = 4 upright N \/ m$, $A = 1 0 upright m$ are shown in @fig:simpleharmonicmotion:xvtshm for two different choices of the phase, $phi.alt = 0$ and $phi.alt = pi \/ 2$.

#show figure: set block(breakable: true)
#figure(
  image("files/xvtshm-68dd176ca6546f9b402443d7bc7befb2.png", width: 90%),
  caption: [
Position and velocity as a function of time for a mass-spring system for two different values of the phase, $phi.alt$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:xvtshm>

We can make a few observations about the position and velocity illustrated in @fig:simpleharmonicmotion:xvtshm:

- Changing the phase, $phi.alt$, results in an horizontal shift of the functions. A positive phase results in a shift of the functions to the left.
- The highest speed corresponds to a position of $x = 0$ and the largest position, $x = plus.minus A$, corresponds to a speed of zero.
- $phi.alt = 0$ corresponds to the "initial condition" at $t = 0$, where the position of the mass is $x = A$ and its speed is $v = 0$.
- $phi.alt = pi \/ 2$ corresponds to the "initial condition" at $t = 0$,  where the position of the mass is $x = 0$ and its velocity is in the negative direction, and with maximal amplitude.
- The position is always between $x = plus.minus A$, and the velocity is always between $v = plus.minus A omega$.

The motion of the spring is clearly periodic. If the period of the motion is $T$, then the position of the mass at time $t$ will be the same as its position at $t + T$. The period of the motion, $T$, is easily found:

$ boxed T = frac(2 pi, omega) = 2 pi sqrt(frac(m, k)) $
And the corresponding frequency is given by:

$ boxed f = frac(1, T) = frac(omega, 2 pi) = frac(1, 2 pi) sqrt(frac(k, m)) $
It should now be clear why $omega$ is called the angular frequency, since it is related to the frequency of the motion.

#tipBlock(heading: [Checkpoint])[
In order to double the oscillation period of a spring-mass system, you can

+ double the ratio of the mass over the spring constant.
+ quadruple the mass.
+ halve the spring constant.
+ All of the above.

#tipBlock(heading: [Answer])[
+
]
]

==== Analogy with uniform circular motion <analogy-with-uniform-circular-motion>

We can make an analogy between the mathematical description of the motion of a spring-mass system and that of uniform circular motion. Consider a particle that is moving along a circle of radius $A$, with constant angular speed $omega$, as illustrated in @fig:simpleharmonicmotion:circleshm.

#show figure: set block(breakable: true)
#figure(
  image("files/circleshm-4fbc6d730682c8b2591f53fdde89cb8a.png", width: 40%),
  caption: [
Uniform circular motion of a particle along a circle of radius $A$ with constant angular speed $omega$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:circleshm>

The angular position, $theta(t)$, of the particle is given by:

$ theta(t) = theta_0 + omega t $
if the particle was located at an angular position $theta_0$ at $t = 0$ ($theta_0 = 0$ in @fig:simpleharmonicmotion:circleshm). The $x$ coordinate of the particle is given by:

$ x(t) = A cos(theta(t)) = A cos(theta_0 + omega t) $
We can see that the $x$ coordinate of the particle has the same functional form as the position for simple harmonic motion. The same is true for the particle's velocity. The magnitude of the particle's velocity is given by:

$ v = omega r = omega A $
where $r = A$ is the radius of the circle. The $x$ component of the particle's velocity is easily found from the figure and is given by:

$ v_x (t) = -v sin(theta(t)) = -omega A sin(theta_0 + omega t) $
We can visualize simple harmonic motion as if it were the projection onto the $x$ axis of uniform circular motion with angular speed $omega$ about a circle with radius $A$. The phase $phi.alt$ corresponds to the angular position of the particle around the circle, $theta_0$, at time $t = 0$. When the particle crosses the $y$ axis ($x = 0$), its velocity is in the $x$ direction, so the $x$ component of the velocity is maximal. When the particle crosses the $x$ axis ($x = plus.minus A$), the $x$ component of the velocity is zero.

#attentionBlock(heading: [Olivia's Thoughts])[
Here's a visualization of uniform circular motion projected onto the $x$ axis:

#show figure: set block(breakable: true)
#figure(
  image("files/circularmotionprojec-955ca62bb4a2c11eeccce046ef38be60.png", width: 40%),
  caption: [
Projecting the motion of a ball around a circle onto the $x$ axis.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:projection>

@fig:simpleharmonicmotion:projection shows a ball moving at a constant speed around a circle of radius $A$. In this diagram, I have taken snapshots of the ball's motion at regular time intervals as the ball moves from Position 1 to Position 5. Since the speed is constant, the balls are evenly spaced out around the circle. At the bottom of the figure, you can see what it would look like if we only considered the motion in the $x$ direction (this is the projection of the motion onto the $x$ axis). You could also think of this as what the motion would look like if you looked up at the circle from below. As you can see, this projection looks a lot like the motion of a mass on a spring. The motion of the ball is constrained between $-A$ and $+ A$ (the turning points), and the velocity of the ball, in the $x$ direction, will be highest when $x = 0$. There are tons of videos online that show animations of this concept, just look up "SHM as a projection of circular motion" and you will get lots of different ways to visualize this.
]

=== Vertical spring-mass system <vertical-spring-mass-system>

Consider the vertical spring-mass system illustrated in @fig:simpleharmonicmotion:vertspring.

#show figure: set block(breakable: true)
#figure(
  image("files/vertspring-8534fbbc591565ea1db9f09dbdd7d36b.png", width: 50%),
  caption: [
A vertical spring-mass system.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:vertspring>

When no mass is attached to the spring, the spring is at rest (we assume that the spring has no mass). We choose the origin of a one-dimensional vertical coordinate system ($y$ axis) to be located at the rest length of the spring (left panel of @fig:simpleharmonicmotion:vertspring). When a mass $m$ is attached to the spring, the spring will extend  and the end of the spring will move to a new equilibrium position, $y_0$, given by the condition that the net force on the mass $m$ is zero. The only forces exerted on the mass are the force from the spring and its weight. The condition for the equilibrium is thus:

$ sum F_y = F_g -F(y_0) & = 0 \
m g -k y_0 & = 0 \
therefore m g & = k y_0 $
Now, consider the forces on the mass at some position $y$ when the spring is extended downwards relative to the equilibrium position (right panel of @fig:simpleharmonicmotion:vertspring). Newton's Second Law at that position can be written as:

$ sum F_y = m g -k y & = m a \
therefore m frac(d^2 y, d t^2) & = m g -k y $
Note that the net force on the mass will always be in the direction so as to "restore" the position of the mass back to the equilibrium position, $y_0$. If the mass had been moved upwards relative to $y_0$, the net force would be downwards.

We can substitute the equilibrium condition, $m g = k y_0$, into the equation that we obtained from Newton's Second Law:

$ m frac(d^2 y, d t^2) & = m g -k y \
m frac(d^2 y, d t^2) & = k y_0 -k y \
m frac(d^2 y, d t^2) & = -k(y -y_0) \
therefore frac(d^2 y, d t^2) & = -frac(k, m)(y -y_0) $
Consider a new variable, $y ' = y -y_0$. This is the same as defining a new $y '$ axis that is shifted downwards by $y_0$; in other words, this the same as defining a new $y '$ axis whose origin is at $y_0$ (the equilibrium position) rather than at the position where the spring is at rest. Noting that the second time derivative of $y '(t)$ is the same as that for $y(t)$:

$ frac(d^2 y, d t^2) & = frac(d^2, d t^2) (y ' + y_0) = frac(d^2 y ', d t^2) \
 $
we can write the equation of motion for the mass, but using $y '(t)$ to describe its position:

$ frac(d^2 y ', d t^2) & = -frac(k, m) y ' $
This is the same equation as that for the simple harmonic motion of a horizontal spring-mass system @eq:simpleharmonicmotion:shmspring, but with the *origin located at the equilibrium position* instead of at the rest length of the spring. In other words, a vertical spring-mass system will undergo simple harmonic motion in the vertical direction about the equilibrium position. In general, a spring-mass system will undergo simple harmonic motion if a constant force that is co-linear with the spring force is exerted on the mass (in this case, gravity). That motion will be centred about a point of equilibrium where the net force on the mass is zero rather than where the spring is at its rest position.

#tipBlock(heading: [Checkpoint])[
How does the period of motion of a vertical spring-mass system compare to the period of a horizontal system (assuming the mass and spring constant are the same)?

+ The period of the vertical system will be larger.
+ The period of the vertical system will be smaller.
+ The period will be the same.

#tipBlock(heading: [Answer])[
+
]
]

==== Two-spring-mass system <two-spring-mass-system>

Consider a horizontal spring-mass system composed of a single mass, $m$, attached to two different springs with spring constants $k_1$ and $k_2$, as shown in @fig:simpleharmonicmotion:2springs.

#show figure: set block(breakable: true)
#figure(
  image("files/2springs-036a2db7121c1ee98e916eb5709b95e1.png", width: 70%),
  caption: [
A mass attached to two different springs.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:2springs>

We introduce a horizontal coordinate system, such that the end of the spring with spring constant $k_1$ is at position $x_1$ when it is at rest, and the end of the $k_2$ spring is at $x_2$ when it is as rest, as shown in the top panel. A mass $m$ is then attached to the two springs, and $x_0$ corresponds to the equilibrium position of the mass when the net force from the two springs is zero. We will assume that the length of the mass is negligible, so that the ends of both springs are also at position $x_0$ at equilibrium. You can see in the middle panel of @fig:simpleharmonicmotion:2springs that both springs are in extension when in the equilibrium position. It is possible to have an equilibrium where both springs are in compression, if both springs are long enough to extend past $x_0$ when they are at rest.

If we assume that both springs are in extension at equilibrium, as shown in the figure, then the condition for equilibrium is given by requiring that the sum of the forces on the mass is zero when the mass is located at $x_0$. The extension of the spring on the left is $x_0 -x_1$, and the extension of the spring on the right is $x_2 -x_0$:

$ sum F_x = -k_1 (x_0 -x_1) + k_2 (x_2 -x_0) & = 0 \
-k_1 x_0 + k_1 x_1 + k_2 x_2 -k_2 x_0 & = 0 \
-(k_1 + k_2) x_0 + k_1 x_1 + k_2 x_2 & = 0 \
therefore k_1 x_1 + k_2 x_2 & =(k_1 + k_2) x_0 $
Note that if the mass is displaced from $x_0$ in any direction, the net force on the mass will be in the direction of the equilibrium position, and will act to "restore" the position of the mass back to $x_0$.

When the mass is at some position $x$, as shown in the bottom panel (for the $k_1$ spring in compression and the $k_2$ spring in extension), Newton's Second Law for the mass is:

$ -k_1 (x -x_1) + k_2 (x_2 -x) & = m a \
-k_1 x + k_1 x_1 + k_2 x_2 -k_2 x & = m frac(d^2 x, d t^2) \
-(k_1 + k_2) x + k_1 x_1 + k_2 x_2 & = m frac(d^2 x, d t^2) $
Note that, mathematically, this equation is of the form $-k x + C = m a$, which is the same form of the equation that we had for the vertical spring-mass system (with $C = m g$), so we expect that this will also lead to simple harmonic motion. We can use the equilibrium condition ($k_1 x_1 + k_2 x_2 =(k_1 + k_2) x_0$) to re-write this equation:

$ -(k_1 + k_2) x + k_1 x_1 + k_2 x_2 & = m frac(d^2 x, d t^2) \
-(k_1 + k_2) x +(k_1 + k_2) x_0 & = m frac(d^2 x, d t^2) \
therefore -(k_1 + k_2)(x -x_0) & = m frac(d^2 x, d t^2) $
Let us define $k = k_1 + k_2$ as the "effective" spring constant from the two springs combined. We can also define a new coordinate, $x ' = x -x_0$, which simply corresponds to a new $x$ axis whose origin is located at the equilibrium position (in a way that is exactly analogous to what we did in the vertical spring-mass system). We can thus write Newton's Second Law as:

$ -(k_1 + k_2)(x -x_0) & = m frac(d^2 x, d t^2) \
-k x ' & = m frac(d^2 x ', d t^2) \
therefore frac(d^2 x ', d t^2) & = -frac(k, m) x ' $
and we find that the motion of the mass attached to two springs is described by the same equation of motion for simple harmonic motion as that of a mass attached to a single spring. In this case, the mass will oscillate about the equilibrium position, $x_0$, with a an effective spring constant $k = k_1 + k_2$. Combining the two springs in this way is thus equivalent to having a single spring, but with spring constant $k = k_1 + k_2$. The angular frequency of the oscillations is given by:

$ omega = sqrt(frac(k, m)) = sqrt(frac(k_1 + k_2, m)) $
=== Simple harmonic motion <simple-harmonic-motion>

In the previous sections, we modelled the motion of a mass attached to a spring and found that its position, $x(t)$, was described by the following differential equation:

$ boxed frac(d^2 x, d t) = -omega^2 x $ <eq:simpleharmonicmotion:shm>
A possible solution to that equation was given by:

$ boxed x(t) = A cos(omega t + phi.alt) $ <eq:simpleharmonicmotion:shmsol>
We then saw that the motion of a vertical spring-mass system, as well as that of a mass attached to two springs, could also be described by @eq:simpleharmonicmotion:shm. Any physical system that can described by @eq:simpleharmonicmotion:shm is said to undergo "simple harmonic motion", or to be a "simple harmonic oscillator". If we find that the physical model of a system leads to @eq:simpleharmonicmotion:shm, then we immediately know that the position of system can be described by @eq:simpleharmonicmotion:shmsol.

The key physical characteristic of a simple harmonic oscillator is that there is a "restoring force" whose magnitude is proportional to the displacement from the equilibrium position. A restoring force is a force that acts to place the system back in equilibrium, and is thus always in the direction that is opposite of the displacement relative to an equilibrium position. In the three systems that we considered so far, the net force on the mass was always such that it would restore the mass back to the equilibrium position, where the net force on the mass is zero.

Many systems in nature are well modelled as simple harmonic oscillators. Some examples are: the motion of a pendulum as it oscillates, the motion of a buoy bobbing up and down in the sea, the motion of electrons in a shorted capacitor, and the vibrations of atoms in a molecule.

=== The motion of a pendulum <the-motion-of-a-pendulum>

In this section, we show how and when the motion of a pendulum can be described as simple harmonic motion. Consider the simple pendulum that is constructed from a mass-less string of length, $L$, attached to a fixed point on one end and to a point mass $m$ on the other, as illustrated in @fig:simpleharmonicmotion:simplep.

#show figure: set block(breakable: true)
#figure(
  image("files/simplep-b3f8d339f98d4ddd93972dc7996f4e89.png", width: 30%),
  caption: [
A simple pendulum which oscillates in a vertical plane.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:simplep>

The pendulum can swing in the vertical plane, and we have shown our choice of coordinate system (the $z$ axis, not shown, is out of the page). The only two forces on the mass are the tension from the string and its weight. We can describe the position of the mass by the angle, $theta(t)$, that the string makes with the vertical. We can model the dynamics of the simple pendulum by considering the net torque and angular acceleration about the axis of rotation that is perpendicular to the plane of the page and that goes through the point on the string that is fixed.

The force of tension cannot create a torque on the mass about the axis of rotation, as it is anti-parallel to the vector from the point of rotation to the mass. The net torque is thus the torque from the force of gravity:

$ arrow(tau)^(n e t) & = arrow(tau)_g \
& = arrow(r) times arrow(F)_g =(L sin theta hat(x) -L cos theta hat(y)) times(-m g hat(y)) \
& = -m g L sin theta hat(z) $
where $L$ is the magnitude of the vector, $arrow(r)$, from the axis of rotation to where the force of gravity is exerted. The net torque is equal to the angular acceleration, $alpha$, multiplied by the moment of inertia, $I$, of the mass:

$ arrow(tau)^(n e t) & = I arrow(alpha) \
-m g L sin theta hat(z) & = m L^2 arrow(alpha) \
-g sin theta hat(z) & = L arrow(alpha) $
where $I = M L^2$ is the moment of inertia for a point mass a distance $L$ away from the axis of rotation. For the position illustrated in @fig:simpleharmonicmotion:simplep, the angular acceleration of the pendulum is in the negative $z$ direction (into the page) and corresponds to a clockwise motion for the pendulum, as we would expect. The angular acceleration is the second time derivative of the angle, $theta$:

$ alpha = frac(d^2 theta, d t^2) $
We can thus re-write the equation that we obtained from the rotational dynamics version of Newton's Second Law as:

$ -g sin theta hat(z) & = L arrow(alpha) \
frac(d^2 theta, d t^2) & = -frac(g, L) sin theta $
where we only used the magnitudes in the second equation, since all of the angular quantities are in the $z$ direction. This equation of motion for $theta(t)$ almost looks like the equation for simple harmonic oscillation for the angle $theta$ (except that we have $sin theta$ instead of $theta$). However, consider the "the small angle approximation"\\footnote\{Look up the Maclaurin/Taylor series for the sine function!\} for the sine function:

$ sin theta approx theta $
If the oscillations of the pendulum are "small", such that the small angle approximation is valid, then the equation of motion for the pendulum is:

$ frac(d^2 theta, d t^2) & = -frac(g, L) sin theta approx -frac(g, L) theta \
therefore frac(d^2 theta, d t^2) & = -frac(g, L) theta quad("for small"theta) $
and the angle that the pendulum makes with the vertical is described by the equation for simple harmonic oscillation with angular frequency:

$ omega = sqrt(frac(g, L)) $
The angle, $theta$, as a function of time is thus described by the function:

$ theta(t) = theta_(m a x) cos(omega t + phi.alt) $
where $theta_(m a x)$ is the maximal amplitude of the oscillations and $phi.alt$ is a phase that depends on when we choose to define $t = 0$.

#tipBlock(heading: [Checkpoint])[
Kaiden built a grandfather clock using a simple pendulum, but he found that the period was twice as large as as he wanted it to be. In order to halve the period of the pendulum, he can

+ change the mass.
+ halve the length of the string.
+ quarter the length of the string.
+ double the length of the string.
+ quadruple the length of the string.

#tipBlock(heading: [Answer])[
+
]
]

==== The physical pendulum <the-physical-pendulum>

A physical pendulum is defined as any object that is allowed to rotate in the vertical plane about some axis that goes through the object, as illustrated in @fig:simpleharmonicmotion:physicalp.

#show figure: set block(breakable: true)
#figure(
  image("files/physicalp-bd5a3302cad14b4ec3a2bf76983fb9cb.png", width: 20%),
  caption: [
A physical pendulum which oscillates in a vertical plane about an axis through the object.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:physicalp>

The only forces exerted on the pendulum are its weight (exerted at its centre of mass) and a contact force exerted at the axis of rotation. The physical pendulum can be modelled in exactly the same way as the simple pendulum, except that we use the moment of inertia of the object about the axis of rotation. Only the weight results in a torque about the rotation axis, since the contact force is exerted at the rotation axis:

$ tau^(n e t) = tau_g & = I alpha \
-m g h sin theta & = I alpha = I frac(d^2 theta, d t^2) $
where $h$ is the distance from the axis of rotation to the centre of mass. In the small angle approximation, this becomes:

$ frac(d^2 theta, d t^2) & = -frac(m g h, I) theta quad("for small"theta) $
and we find that the physical pendulum oscillates with an angular frequency:

$ omega = sqrt(frac(m g h, I)) $
$ frac(d^2 x, d t^2) = -frac(k, m) x = -omega^2 x $
and has a solution:

$ x(t) = A cos(omega t + phi.alt) $
where $A$ is the amplitude of the motion, $phi.alt$ is the phase, which depends on our choice of initial conditions (when we choose time $t = 0$), and $omega$:

$ omega = sqrt(frac(k, m)) $
is the angular frequency of the motion. The mass will oscillate about an equilibrium position with a period, $T$, and frequency, $f$, given by:

$ T & = frac(2 pi, omega) = 2 pi sqrt(frac(m, k)) \
f & = frac(1, T) = frac(omega, 2 pi) = frac(1, 2 pi) sqrt(frac(k, m)) $
The velocity and acceleration of the mass are found by taking the time derivatives of the position $x(t)$:

$ x(t) & = A cos(omega t + phi.alt) \
v(t) & = frac(d, d t) x(t) = -A omega sin(omega t + phi.alt) \
a(t) & = frac(d^2, d t^2) x(t) = frac(d, d t)(-A omega sin(omega t + phi.alt)) = -A omega^2 cos(omega t + phi.alt) $
The total mechanical energy of the mass, at some position $x$, is given by:

$ E = U + K = frac(1, 2) k x^2 + frac(1, 2) m v^2 = frac(1, 2) k A^2 $
and is conserved.

Any system that can be described by the equation of motion:

$ frac(d^2 x, d t^2) = -omega^2 x $
is said to be a simple harmonic oscillator, and its position will be described by:

$ x(t) = A cos(omega t + phi.alt) $
A simple harmonic oscillator will always oscillate about an equilibrium position, where the net force on the oscillator is zero. The net force on a simple harmonic oscillator is always directed towards the equilibrium position, and has a magnitude proportional to the distance of the oscillator from its equilibrium position. The force is called a restoring force. A vertical spring-mass system, and a mass attached to two springs will both undergo simple harmonic motion about their respective equilibrium position.

A simple pendulum will undergo simple harmonic oscillations, if the amplitude of the oscillations is small. The angular frequency for the oscillations of a simple pendulum only depends on the length of the pendulum:

$ omega = sqrt(frac(g, L)) $
This is valid in the small angle approximation, where:

$ sin theta approx theta $
A physical pendulum of mass $m$ which oscillates about an axis through the object will also undergo simple harmonic oscillation in the small angle approximation. The angular frequency of the oscillations for a physical pendulum is given by:

$ omega = sqrt(frac(m g h, I)) $
where $h$ is the distance between the centre of mass and the axis of rotation, and $I$ is the moment of inertia of the object about the rotation axis.

#importantBlock(heading: [Important Equations])[
*Position, velocity, and \\acceleration for SHM:*

$ x(t) & = A cos(omega t + phi.alt) \
v(t) & = frac(d, d t) x(t) = -A omega sin(omega t + phi.alt) \
a(t) & = frac(d^2, d t^2) x(t) = -A omega^2 cos(omega t + phi.alt) $
*Period and frequency:*

$ omega & = sqrt(frac(k, m)) \
T & = frac(2 pi, omega) = 2 pi sqrt(frac(m, k)) \
f & = frac(1, T) = frac(omega, 2 pi) = frac(1, 2 pi) sqrt(frac(k, m)) $
*Mechanical energy:*

$ E = U + K = frac(1, 2) k x^2 + frac(1, 2) m v^2 = frac(1, 2) k A^2 $
*Simple pendulum (small angles):*

$ omega = sqrt(frac(g, L)) $
*Physical pendulum (small angles):*

$ omega = sqrt(frac(m g h, I)) $
]

#importantBlock(heading: [Important Definitions])[
- *Angular frequency:* is related to a usual frequency by a factor of $2 pi$. For an object rotating around a circle at constant speed, the angular frequency of the rotation is the same as the angular speed (the rate of change of a position angle). SI units: \[$upright r a d \/ s$\]. Common variable(s): $omega$.
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- What is an example of a system that is a simple harmonic oscillator (not covered in this this chapter)? What is the restoring force for that system?
- What happens to the motion of a mass-spring system in the presence of friction? Sketch out the position as a function of time.
- What is a "damped" harmonic oscillator?
- What is a coupled oscillator? Find a video of a coupled oscillator online and describe the motion.
- How do the shock absorbers on a car relate to simple harmonic motion?
]

#seealsoBlock(heading: [To try at home])[
- Compare values of $theta$ and $sin theta$ to see when the small angle approximation holds. Does it matter if $theta$ is expressed in radians?
- Build a simple pendulum and describe the motion. Is it simple harmonic motion? Is it damped simple harmonic motion? Does the frequency depend on the length of the pendulum as expected?
]

#seealsoBlock(heading: [To try in the lab])[
- Theory lab: what is the function $x(t)$ if there is a frictional force, proportional to velocity, $-b v$, exerted on the spring mass system?
- Propose an experiment to test whether the period of the motion of pendulum depends on the amplitude of the motion.
- Propose an experiment to test whether a physical pendulum is well-described by simple harmonic motion.
-
- Propose an experiment which measures the gravitational constant ($G$) using a torsion pendulum.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 12.1])[
Ty ($m = 3 0 upright k g$) is trying out a new piece of equipment at his local playground. The equipment consists of a platform that is connected to two springs. The top spring ($k_1 = 2 4 0 0 upright N \/ m$) connects the platform to the playground structure and the bottom spring ($k_2 = 3 4 8 0 upright N \/ m$) (@fig:simpleharmonicmotion:playground) connects it to the ground. When no one is standing on the platform the platform is $5 0 upright c m$ off the ground. When Ty is standing on the platform, he oscillates up and down, and the lowest point that the platform reaches is $3 5 upright c m$ off the ground. Show that this is simple harmonic motion and determine what Ty's maximum speed will be.

#show figure: set block(breakable: true)
#figure(
  image("files/playground1-99f6e4f872192288a95a159682b17661.png", width: 30%),
  caption: [
Playground equipment made of a platform connected to two vertical springs.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:playground>
]

#noteBlock(heading: [Problem 12.2])[
A torsional pendulum consists of a horizontal rod suspended from a vertical wire. When the rod is rotated so that it is displaced an angle $theta$ from equilibrium, the wire (which is now twisted) provides a restoring torque about the axis of the wire given by:

$ tau = -kappa theta $
where $kappa$ is the torsion coefficient, which depends on the stiffness of the wire. You may notice that this formula closely resembles Hooke's law.

- a.  You construct a torsional pendulum by attaching two small spherical masses (you can assume they are point masses, each of mass $m$) to the ends of a thin (mass-less) rod of length $L$ and attaching a wire to the centre of the rod (@fig:simpleharmonicmotion:torsional1). When you displace one of the masses by an angle $theta$ and release it, you find that it oscillates with a period $T$. Find an expression for the torsion coefficient, $kappa$, in term of $T$, $m$, and $L$.

#show figure: set block(breakable: true)
#figure(
  image("files/torsionalpendulum1-1a91cb49135990459b6e33c6b4b493fc.png", width: 80%),
  caption: [
A torsional pendulum. The right side shows a top view.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:torsional1>

- b. You place two very large spheres, each of mass $M$, near each of the small spheres (as shown in @fig:simpleharmonicmotion:torsional2). Each of the small spheres will be acted on by a force of gravity from the *nearest* large sphere. The pendulum is at equilibrium when it is deflected an angle $beta$ from its original equilibrium position. At the new equilibrium, the displacement vectors connecting the centres of large and small spheres have a magnitude $d$ and are essentially perpendicular to the rod. Find an expression for the universal gravitational constant $G$, in terms of the masses, the length of the rod, and the period measured in part a).

Fun fact! This set-up resembles an experiment performed by Henry Cavendish that was first used to determine the value for $G$ and to test Newton's Universal Theory of Gravity.

#show figure: set block(breakable: true)
#figure(
  image("files/torsionalpendulum2-ff2f313312974ebee0e8d1ecd462646c.png", width: 40%),
  caption: [
Two very large spheres are placed near each of the small masses on the torsional pendulum (top view). At the new equilibrium, each small mass is a distance $d$ from the nearest large mass.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:torsional2>
]

==== Solutions <solutions>

#noteBlock(heading: [Solution 12.1])[
First, we need to solve for the new equilibrium position of the platform, $x_0$, when Ty is standing on the platform. We define the $x$ axis so that the origin is $5 0 upright c m$ above the ground (the equilibrium position when no one is standing on the platform) and choose the positive direction to be downwards (@fig:simpleharmonicmotion:playground2).

#show figure: set block(breakable: true)
#figure(
  image("files/playground2-736b77ec8dd366bba14b67d50562b83e.png", width: 35%),
  caption: [
The platform when no one is standing on it.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:playground2>

Even though we do not know the mass of the platform, or the actual resting lengths of the spring, we do not need to know these, since we can model the platform with nobody on it as a single spring with spring constant $k = k_1 + k_2$ and rest position $x = 0$.

When Ty is standing on the platform, the sum of the forces is given by his weight and the force from the "effective spring":

$ sum F = m g -(k_1 + k_2) x $
where we noted that, when the platform moves down, both the top and bottom spring will exert a force upwards (@fig:simpleharmonicmotion:playgroundfbd).

At equilibrium, the sum of the forces is equal to zero. We can use this to solve for the displacement at $x_0$:

$ 0 & = m g -(k_1 + k_2) x_0 \
therefore x_0 & = frac(m g, k_1 + k_2) = frac((3 0 upright k g)(9 . 8 upright m \/ s^2),(2 4 0 0 upright N m) +(3 4 8 0 upright N m)) = 0 . 0 5 upright m $
We will confirm that this is a simple harmonic oscillator by showing that the system's motion can be described by the equation:

$ frac(d^2 x, d t^2) & = -omega^2 x $
For some position $x$ below equilibrium, we can rewrite Newton's second law as:

$ m a & = m g -(k_1 + k_2) x \
m frac(d^2 x, d t^2) & = m g -(k_1 + k_2) x $
In order to show that this is simple harmonic motion, we need to combine the right hand side of the equation into one term. We found earlier that $m g =(k_1 + k_2) x_0$, which we can use here:

$ m frac(d^2 x, d t^2) & =(k_1 + k_2) x_0 -(k_1 + k_2) x \
frac(d^2 x, d t^2) & = frac((k_1 + k_2), m)(x_0 -x) \
frac(d^2 x, d t^2) & = -frac((k_1 + k_2), m)(x -x_0) \
 $
We now define an $x '$ axis such that $x ' = x -x_0$. This means that the origin of the $x '$ axis is at the new equilibrium position:

#show figure: set block(breakable: true)
#figure(
  image("files/playgroundfbd-7e3f532fe4d4cba994b3fd3729e258ee.png", width: 70%),
  caption: [
The forces acting on the platform and our new coordinate system.
],
  kind: "figure",
  supplement: [Figure],
) <fig:simpleharmonicmotion:playgroundfbd>

We can now rewrite our expression using the $x '$ axis:

$ frac(d^2 x, d t^2) & = -frac((k_1 + k_2), m) x ' $
This equation tells us that this is simple harmonic motion about the new equilibrium position, where $omega = sqrt((k_1 + k_2) \/ m)$. We know that the lowest point that the platform reaches is $3 5 upright c m$ above the ground, which, on our $x '$ axis, corresponds to $x ' = 1 0 upright c m$ (@fig:simpleharmonicmotion:playgroundfbd). Thus, the amplitude of the oscillation is $A = 0 . 1 upright m$. Because this is simple harmonic motion, we know that the position of the platform can be described by the following function:

$ x '(t) & = A cos(omega t + phi.alt) $
We set $t = 0$ to be when the platform is at its lowest point ($x ' = A$). The value of $phi.alt$ is thus:

$ x '(0) & = A cos(omega(0) + phi.alt) \
A & = A cos(phi.alt) \
1 & = cos(phi.alt) \
therefore phi.alt & = 0 $
The velocity is given by:

$ v(t) = frac(d, d t) x(t) & = -A omega sin(omega t + phi.alt) \
& = -A omega sin(omega t) $
The speed will be maximized when $sin(omega t) = 1 quad upright(o r) -1$ . So, the maximum speed will be:

$ | v | & = A omega \
| v | & = A sqrt(frac((k_1 + k_2), m)) \
| v | & =(0 . 1 upright m) sqrt(frac((2 4 0 0 upright N m + 3 4 8 0 upright N m), 3 0 upright k g)) \
| v | & = 1 . 4 upright m \/ s $
]

#noteBlock(heading: [Solution 12.2])[
- a. The only force that creates a torque on the masses is the restoring force from the twisting of the wire. The rotational dynamics version of Newton's Second Law relates this torque to the angular acceleration, $alpha$ of the rod:

$ I alpha = -kappa theta $
where $I$ is the moment of inertia of the rod. Rewriting $alpha$ more explicitly as the second time derivative of the angle, we get:

$ I frac(d^2 theta, d t^2) & = -kappa theta \
frac(d^2 theta, d t^2) & = -frac(kappa, I) theta \
 $
By inspection, we can see that the torsional pendulum is a simple harmonic oscillator, where $omega = sqrt(kappa \/ I)$. The period of the motion is therefore:

$ T & = frac(2 pi, omega) \
T & = 2 pi sqrt(frac(I, kappa)) $
We can rearrange this expression to get $kappa$:

$ T^2 & = frac(4 pi^2 I, kappa) \
kappa & = frac(4 pi^2 I, T^2) $
The moment of inertia for one of the masses is $m(L \/ 2)^2$, where $L \/ 2$ is the distance from the mass to the axis of rotation. The moment of inertia for the two masses attached to the mass-less rod is:

$ I & = 2 m(frac(L, 2))^2 = frac(m L^2, 2) \
 $
Putting this into our expression for $kappa$:

$ kappa = frac(2 pi^2 m L^2, T^2) $
- b. The two forces that provide torques for the small spheres are gravity and the force exerted by the twisting wire. Each of the small spheres will experience a force due to gravity from the nearest large sphere. At equilibrium, the force due to gravity on one of the small spheres is therefore:

$ F_g = frac(G M m, d^2) $
Assuming that, at equilibrium, the force vector is perpendicular to the rod, the torque from one of the large spheres is just the force multiplied by the distance to the axis of rotation. Since there are two large spheres, each of which creates a torque on the pendulum, the total torque due to gravity is:

$ tau_g & = 2 F_g frac(L, 2) \
& = F_g L \
& = frac(G M m, d^2) L $
(Note that $tau g$ is the torque due to gravity *at equilibrium only*). We can use Newton's second law for the pendulum to find an expression for $G$. At equilibrium, the net torque is equal to zero, and the angle of deflection is $beta$:

$ tau_(n e t) & = tau_(w i r e) -tau_g \
0 & = tau_(w i r e) -tau_g \
tau_g & = tau_(w i r e) \
frac(G M m, d^2) L & = kappa beta \
therefore G & = frac(kappa beta d^2, L M m) $
Using our expression for $kappa$ found in part a), this becomes:

$ G = frac(2 pi^2 L beta d^2, M T^2) $
]