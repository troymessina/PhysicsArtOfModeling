// Created with jtex v.1.0.18
#import "lapreprint.typ": *
#show: template.with(
  title: "Chapter 4 NEW - Linear momentum and the centre of mass",
  abstract: (
    (
      title: "Abstract",
      content: [

      ]
    ), (
      title: "Plain Language Summary",
      content: [
The momentum vector, $arrow(p)$, of a point particle of mass, $m$, with velocity, $arrow(v)$, is defined as:
      ]
    ),
  ),
  date: datetime(
    year: 2024,
    month: 10,
    day: 17,
  ),
  keywords: ("Introductory Physics",),
  authors: (
  ),
  affiliations: (
  ),
  margin: (
  ),
)

#import "myst.typ": *

/* Written by MyST v1.3.12 */

= Overview <chap:momentumandcm>

In this chapter, we introduce the concepts of linear momentum and of centre of mass. Momentum is a quantity that, like energy, can be defined from Newton's Second Law, to facilitate building models. Since momentum is often a conserved quantity within a system, it can make calculations much easier than using forces. The concepts of momentum and of centre of mass will also allow us to apply Newton's Second Law to systems comprised of multiple particles including solid objects.

#hintBlock(heading: [LearningObjectives])[
- Understand how to calculate linear momentum.
- Understand how to calculate impulse and that it corresponds to a change in momentum.
- Understand when and how to apply conservation of linear momentum to model situations.
- Understand the difference between elastic and inelastic collisions, and when mechanical energy is conserved.
- Understand how to calculate the centre of mass of an object.
]

#noteBlock(heading: [Think About It])[
You hit a pool ball square on with the cue ball. If both balls have the same mass, and you can neglect any "english" on the cue ball, what happens to the cue ball?

+ It stops.
+ It continues, with half of its original speed.
+ It continues, with its original speed.
+ It rebounds, with its original speed.

#noteBlock(heading: [Answer])[
+
]
]

= Momentum and Newton's First Law <momentum-and-newtons-first-law>

Momentum is a quantity that describes an object's motion. Imagine an object that has a mass of 1 kg and a velocity of 1 m/s. Now, imagine doubling the mass. How would you say the object's motion has changed. It may help to think of the quantity of motion as "oomph". Does a more massive object have more or less oomph than a less massive object when they both move at the same speed? What if the 1 kg object doubles its speed? Does it have more oomph?

In 1687, Sir Isaac Newton published his Philosophiae Naturalis Principia Mathematica, where, among other things, he detailed his three laws of motion. The first law is summarized as

#blockquote[
An object will remain in its state of motion, be it at rest or moving with constant velocity, unless a net external force is exerted on the object.
]

In perhaps simpler terms, this says that an object's oomph or *momentum* will remain a constant quantity if nothing pushes or pulls on it.

== Momentum of a point particle <momentum-of-a-point-particle>

We can define the momentum, $arrow(p)$, of a particle of mass $m$ and velocity $arrow(v)$ as the vector quantity:

$ boxed arrow(p) = m arrow(v) $
Since this is a vector equation, it corresponds to three equations, one for each component of the momentum vector. It should be noted that the numerical value for the momentum of a particle is arbitrary, as it depends in which frame of reference the velocity of the particle is defined. For example, your velocity with respect to the surface of the Earth is zero, so your momentum relative to the surface of the Earth is zero. However, relative to the surface of the Sun, your velocity, and momentum, are not zero. As we will see, forces are related to a _changes_ in momentum, just as they are related to a change in velocity (acceleration).

Consider a point particle moving at constant velocity such as a rock sliding across a frozen pond. If we capture an image of the rock at the same time we start a stopwatch ($t_o = 0 upright s$), it might be located at a position 0.5 meters from the shore as shown in @fig:momentumandcm:constvelmotiona. We will designate the direction the rock slides as being along the $x$-axis.

#show figure: set block(breakable: false)
#subpar.grid(figure(
image("files/ConstVelDotsa-bb1e54c58a33c4382d81aa1e636f3fb7.png", width: 90%)
), <fig:momentumandcm:constvelmotiona>,
figure(
image("files/ConstVelDotsa-bb1e54c58a33c4382d81aa1e636f3fb7.png", width: 90%)
), <fig:momentumandcm:constvelmotionb>,
columns: (1fr,1fr),
label: <fig:momentumandcm:constvelmotion>,
  caption: [
The motion diagram of a rock sliding across a frozen pond.
],
  kind: "figure",
  supplement: [Figure],
)

As time progresses, the rock will be at greater and greater distances from the shore. As shown in @fig:momentumandcm:constvelmotionb, the rock slides 0.5 meters every second. Suppose we recorded its $x$-position every second in a table and obtained the values in @tab:momentumandcm:1dmotion (we will ignore measurement uncertainties discussed in #link("/modelandexperiment\#sec-modelandexperiment-uncertainties")[Section 2.4.1] and pretend that the values are exact).

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
Time $t$ (s)
],
[
$x$-position (m)
],
[
0.0
],
[
0.5
],
[
1.0
],
[
1.0
],
[
2.0
],
[
1.5
],
[
3.0
],
[
2.0
],
[
4.0
],
[
2.5
],
[
5.0
],
[
3.0
],
[
6.0
],
[
3.5
],
[
7.0
],
[
4.0
],
[
8.0
],
[
4.5
],
[
9.0
],
[
5.0
],
),
  caption: [
Time and $x$-position of a rock sliding across a frozen pond recorded every second.
],
  kind: "table",
  supplement: [Table],
) <tab:momentumandcm:1dmotion>

The easiest way to visualize the values in the table is to plot them on a graph, as in @fig:momentumandcm:1dxvst. Plotting position as a function of time is one of the most common graphs to make in physics, since it is often a complete description of the motion of an object.

#show figure: set block(breakable: true)
#figure(
  image("files/1dxvst-d6543db2884dccdda7dabba7850de246.png", width: 70%),
  caption: [
Plot of position as a function of time using the values from @tab:momentumandcm:1dmotion.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:1dxvst>

The data plotted in @fig:momentumandcm:1dxvst show that the $x$ position of the ball increases linearly with time (i.e. it is a straight line and the position increases at a constant rate). This means that in equal time increments, the rock will cover equal distances. Note that we also had the liberty to choose when we define $t = 0$; in this case, we chose that time is zero when the rock is at $x = 0 . 5 upright m$.

#tipBlock(heading: [Checkpoint])[
Using the data from @tab:momentumandcm:1dmotion, at what position along the $x$-axis will the ball be when time is $t = 9 . 5 upright s$, if it continues its motion undisturbed?

+ $5 . 0 upright m$
+ $5 . 2 5 upright m$
+ $5 . 7 5 upright m$
+ $6 . 0 upright m$

#tipBlock(heading: [Answer])[
+
]
]

Since the position as a function of time for the ball plotted in @fig:momentumandcm:1dxvst is linear, we can summarize our description of the motion using a function, $x(t)$, instead of having to tabulate the values as we did in Table @tab:momentumandcm:1dmotion. The function will have the functional form:

$ boxed x(t) = x_0 + v_x t $ <eqn:momentumandcm:1dxvst_noa>
The constant $x_0$ is the \`\`offset'' of the function; the value that the function has at $t = 0 upright s$. We call $x_0$ the "initial position" of the object (its position at $t = 0$). The constant $v_x$ is the "slope" of the function and gives the rate of change of the position as a function of time. We call $v_x$ the "velocity" of the object.

The initial position is simply the value of the position at $t = 0$, and is given from the table as:

$ x_0 = 0 . 5 upright m $
The velocity, $v_x$, is simply the difference in position, $Delta x$, between any two points divided by the amount of time, $Delta t$, that it took the object to move between those two points ("rise over run" for the graph of $x(t)$):

$ arrow(v) & = frac(Delta x, Delta t) hat(x) arrow.r frac(d x, d t) hat(x) \
arrow(v) & = frac(0 . 5 upright m, 1 upright s) hat(x) \
arrow(v) & =(0 . 5, 0, 0) upright m \/ s $ <eq:momentumandcm:constveleq>
Therefore, the rock has a velocity of 0.5 m/s along the $x$-direction. In the first line of equation @eq:momentumandcm:constveleq, the derivative after the arrow corresponds to when $Delta x$ and $Delta t$ become infinitesimal changes. Rearranging the first line of equation @eq:momentumandcm:constveleq we see that the rock moves a small increment $Delta x$ each increment of time $Delta t$

$ Delta x = v Delta t $
Therefore, we can think of the position equation @eqn:momentumandcm:1dxvst_noa as

$ x(t) = x_0 + Delta x = x_0 + v t $
As long as the velocity is constant, we can use equation @eqn:momentumandcm:1dxvst_noa to determine the position of an object between any two points in time.

=== Simulating the rock <simulating-the-rock>

#cautionBlock(heading: [Review])[
Before proceeding, you may wish to review:

- #link("/visualpython\#app-visualpython")[Appendix 2.1] for an introduction to programming with Visual Python using #link("http://trinket.io")[trinket.io].
]

Under constant velocity motion we can describe a future position of an object using the current position, the velocity, and an increment of time to progress into the future. With equation @eqn:momentumandcm:1dxvst_noa, we can model this motion on computer. We will use the Python language in this textbook, and in particular, we will use Visual Python so that we can apply physics to objects that visualize physical motion in 3D. To get started, we first need to define an object that will move through space. We will make a sphere call it `rock`. The `rock` object can beplaced at a position using a vector `pos=vec(x,y,z)`.

```python
rock = sphere(pos=vec(0,0,0), color=color.green, radius=0.1)
```

We can define the velocity to be a vector along the x-direction also using the built-in vector function `velocity=vec(vx, vy, vz)`. To set the velocity to the appropriate vector, it would be coded

```python
velocity = vec(0.5, 0, 0)
```

Alternatively, it is possible to make the velocity one of the attributes of the rock object. We should be careful to only use this method when the attribute is a property of the object, e.g.,

```python
rock.vel = vec(0.5, 0, 0)
```

We can visualize the velocity with a vector arrow that remains attached to the rock's position and has a length that is the magnitude of the velocity. To do this we write the following code.

```python
arrow(pos=rock.pos, axis=rock.vel, color=color.white)
```

Try, putting these three lines of code in the trinket below and see what happens when you run the program.

#show figure: set block(breakable: true)
#figure([
],
  caption: [
A blank trinket to simulate a rock sliding on a frozen pond.
],
  kind: "figure",
  supplement: [Figure],
) <chap:momentumandcm:blanktrinket>

== Non-constant Momentum <non-constant-momentum>

If the particle has a constant mass, then the time derivative of its momentum is given by:

$ frac(d, d t) arrow(p) = frac(d, d t) m arrow(v) = m frac(d, d t) arrow(v) = m arrow(a) $
and we can write this as Newton's Second Law, since $m arrow(a)$ must be equal to the vector sum of the forces on the particle of mass $m$:

$ boxed frac(d, d t) arrow(p) = sum arrow(F) = arrow(F^) n e t $
The equation above is the original form in which Newton first developed his theory. It says that the net force on an object is equal to the rate of change of its momentum. *If the net force on the object is zero, then its momentum is constant* (as is its velocity). In terms of components, Newton's Second Law written for the rate of change of momentum is given by:

$ frac(d p_x, d t) = & sum F_x \
frac(d p_y, d t) = & sum F_y \
frac(d p_z, d t) = & sum F_z $
#noteBlock(heading: [Example 4.1])[
A particle of mass $m$ is released from rest and allowed to fall freely under the influence of gravity near the Earth's surface (assume that drag is negligible). Is the mechanical energy of the particle conserved? Is the momentum of the particle conserved? If momentum is not conserved, how does momentum change with time? Do your answers change if the force of drag cannot be ignored?\}

#noteBlock(heading: [Solution])[
First, we model the falling particle assuming that there is no force of drag. The only force exerted on the particle is thus its weight.

The mechanical energy of the particle will be conserved only if there are no non-conservative forces doing work on the particle. Since the force of gravity is the only force acting on the particle, its mechanical energy is conserved.

The total momentum of the particle is not conserved, because the sum of the forces on the particle is not zero. Choosing the $z$ axis to be vertical and positive upwards, Newton's Second Law in the $z$ direction is given by:

$ sum F_z = -m g = frac(d p_z, d t) $
Note that the $x$ and $y$ components of momentum are conserved, since there are no forces with components in that direction. We can find how the $z$ component of the momentum changes with time by taking the anti-derivative of the force with respect to time (from $t = 0$ to $t = T$):

$ frac(d p_z, d t) & = -m g \
integral d p_z & = integral_0^T (-m g) d t \
p_z (T) -p_z (0) & = -m g T \
therefore p_z (T) & = p_z (0) -m g T $
where the $z$ component of momentum, $p_z (T)$ at some time $T$, is given by its value at time $t = 0$ plus $-m g T$. If the object started at rest ($arrow(v) = 0$), then the magnitude of the momentum, as a function of time, is given by:

$ p(t) = p_z (t) = -m g t $
and indeed changes with time.

If the force of drag were not negligible, there would be a non-conservative force acting on the particle, so its mechanical energy would no longer be conserved. The particle will accelerate until it reaches terminal velocity. During that phase of acceleration, the net force on the particle is not zero (it is accelerating), so its momentum is not conserved. Once the particle reaches terminal velocity, the net force on the particle is zero, and its momentum is conserved from then on.

*Discussion:* This simple example highlights the fact that mechanical energy and momentum are conserved under different conditions. Just because one is conserved does not mean that the other is conserved. It also shows that Newton's Second Law is a statement about change in momentum, not momentum itself (just like it is a statement about acceleration, change in velocity, not velocity).
]
]

== Impulse <impulse>

When we introduced the concept of energy, we started by calculating the "work", $W$, done by a force exerted on an object over a specific path between two points:

$ W = integral_A^B arrow(F) dot.op d arrow(l) $
We then introduced kinetic energy, $K$, to be that quantity whose change is equal to the net work done on the particle

$ W^(n e t) = integral_A^B arrow(F)^(n e t) dot.op d arrow(l) = Delta K $
where the net force, $arrow(F)^(n e t)$, is the vector sum of the forces on the particle.

We can do the same thing, but instead of integrating the force over distance, we can integrate it over time. We thus introduce the concept of "impulse", $arrow(J)$, of a force, as that force integrated from an initial time, $t_A$, to a final time, $t_B$:

$ arrow(J) = integral_(t_A)^(t_B) arrow(F) d t $
where it should be clear that impulse is a vector quantity (and the above vector equation thus corresponds to one integral per component). Impulse is, in general, defined as an integral because the force, $arrow(F)$, could change with time. If the force is constant in time (magnitude and direction), then we can define the impulse without using an integral:

$ arrow(J) = arrow(F) Delta t $
where $Delta t$ is the amount of time over which the force was exerted. Although the force might never be constant, we can sometimes use the above formula to calculate impulse using an average value of the force.

#tipBlock(heading: [Checkpoint])[
What is the SI unit for impulse?

+ $upright k g dot.op m \/ s^2$
+ $upright k g dot.op s^2$
+ $upright k g dot.op m \/ s$
+ $upright k g dot.op m \/ s^3$

#tipBlock(heading: [Answer])[
+
]
]

#noteBlock(heading: [Example 4.2])[
Estimate the impulse that is given to someone's hand when they swat a fly on the surface of a table.

#noteBlock(heading: [Solution])[
When we swat a fly with our hand, our hand exerts a force on the table surface during the period of time, $Delta t$, over which our hand is in contact with the table surface. During that period of time, the force on the hand goes from being 0, to some unpleasantly high value, and then back to zero, so the force cannot be considered constant.

Let us estimate the average magnitude of the swatting force by considering the deceleration of our swatting hand and modelling the motion as one-dimensional. Let us assume that our swatting hand has a mass $m = 1 upright k g$ and that it is has a speed of $2 upright m \/ s$ just before it makes contact. Furthermore, let us assume that it is in contact with the table for a period of time $Delta t$. This allows us to find the average acceleration of our hand and thus the average force exerted by the table on our hand to stop it:

$ a & = frac(Delta v, Delta t) \
therefore F & = m a = m frac(Delta v, Delta t) $
By Newton's Third Law, the force decelerating our hand has the same magnitude as the force that our hand exerts on the table, allowing us to calculate the impulse given to the person's hand:

$ J & = F Delta t =(m frac(Delta v, Delta t)) Delta t = m Delta v \
& =(1 upright k g)(2 upright m \/ s) = 2 upright k g dot.op m \/ s $
*Discussion:* Note that the impulse given to the table corresponds exactly to the change in momentum of the hand ($Delta p = m Delta v$).
]
]

So far, we calculated the impulse that is given by a single force. We can also consider the net impulse given to an object by the net force exerted on the object:

$ arrow(J)^(n e t) = integral_(t_A)^(t_B) arrow(F)^(n e t) d t $
Compare this to Newton's Second Law written out using momentum:

$ frac(d, d t) arrow(p) & = arrow(F)^(n e t) \
integral_(arrow(p_A))^(arrow(p_B)) d arrow(p) & = integral_(t_A)^(t_B) arrow(F)^(n e t) d t \
arrow(p)_B -arrow(p)_A & = integral_(t_A)^(t_B) arrow(F)^(n e t) d t \
therefore Delta arrow(p) & = integral_(t_A)^(t_B) arrow(F)^(n e t) d t $
and we find that the net impulse received by a particle is precisely equal to its change in momentum:

$ boxed Delta arrow(p) = arrow(J^) n e t $
This is similar to the statement that the net work done on an object corresponds to its change in kinetic energy, although one should keep in mind that momentum is a vector quantity, unlike kinetic energy.

#noteBlock(heading: [Example 4.3])[
A car moving with a speed of $1 0 0 upright k m \/ h$ collides with a building and comes to a complete stop. The driver and passenger each have a mass of $8 0 upright k g$. The driver wore a seat belt that extended during the collision, so that the force exerted by the seatbelt on the driver acted for about $2 . 5 upright s$. The passenger did not wear a seat belt and instead was slowed down by the force exerted by the dashboard, over a much smaller amount of time, $0 . 2 upright s$. Compare the average decelerating force experienced by the driver and the passenger.

#noteBlock(heading: [Solution])[
We can calculate the change in momentum of both people, which will be equal to the impulse they received as they collided with the seatbelt or with the dashboard. Since we know the duration in time that the forces were exerted, we can calculate the average force involved in order to give the required impulse. We can assume that this all happens in one dimension, so we use scalar quantities instead of vectors.

The change in momentum along the direction of motion for either the driver or passenger is given by:

$ Delta p = p_B -p_A =(0) -p_A = -m v_A $
where $v_A$ is the initial speed of the car, and the final momentum of either person is zero.

The change in momentum is equal to the impulse received by either person during a period of time $Delta t$, which is related to the force that was exerted on them:

$ J = F Delta t & = Delta p = -m v_A \
F & = -m frac(v_A, Delta t) $
For the driver, this corresponds:

$ F =(8 0 upright k g) frac((2 7 . 8 upright m \/ s),(2 . 5 upright s)) = 8 9 0 upright N $
and for the passenger:

$ F =(8 0 upright k g) frac((2 7 . 8 upright m \/ s),(0 . 2 upright s)) = 1 1 1 2 0 upright N $
The force on the driver is thus comparable to their weight, whereas the passenger experiences an average force that is more than 10 times their weight.

*Discussion:* Any mechanism that results in a longer collision time will help to reduce the forces that are involved. This is why cars are designed to crumple in head-on collisions. We can understand this in terms of the crumpling of the car absorbing some of the kinetic energy of the car, as well as lengthening the time of the collision so that the forces involved are smaller. You may also hear people that look at modern cars that are all crumpled up after a crash and say something along the lines of "They sure don't make cars the way they used to". But of course, that is by design; it is safer if the car crumples up (and cars are designed to crumple up in specific areas, not the passenger cabin).

Note that we did not need to use impulse to calculate the average force, since we could have just used kinematics to determine the acceleration and Newton's Second Law to calculate the corresponding force. Using impulse is equivalent by construction, but sometimes, it is easier mathematically.
]
]

== Systems of particles: internal and external forces <systems-of-particles-internal-and-external-forces>

So far, we have only used Newton's Second Law to describe the motion of a single point mass particle or to describe the motion of an object whose orientation we did not need to describe (e.g. a block sliding down a hill). In this section, we consider what happens when there are multiple point particles that form a "system".

In physics, we loosely define a system as the ensemble of objects/particles that we wish to describe. So far, we have only described systems made of one particle, so describing the motion of the system was equivalent to describing the motion of that single particle. A  system of two particles could be, for example, two billiard balls on a pool table. To describe that system, we would need to provide functions that describe the positions, velocities, and forces exerted on both balls. We can also define functions/quantities that describe the system as a whole, rather than the details. For example, we can define the total kinetic energy of the system, $K$, corresponding to the sum of kinetic energies of the two balls. We can also define the total momentum of the system, $arrow(P)$, given by the vector sum of the momenta of the two balls.

When considering a system of multiple particles, we distinguish between *internal* and *external* forces. Internal forces are those forces that the particles in the system exert on each other. For example, if the two billiard balls in the system collide with each other, they will each exert a force on the other during the collision; those forces are internal. External forces are all other forces exerted on the particles of the system. For example, the force of gravity and the normal force from the pool table are both external forces exerted on the balls in the system (exerted by the Earth, or by the pool table, neither of which we considered to be part of the system). The force exerted by a person hitting one of the balls with a pool queue is similarly an external force. What we consider to be a system is arbitrary; we could consider the pool table and the Earth to be part of the system along with the two balls; in that case, the normal force and the weight of the balls would become internal forces. The classification of whether a force is internal or external to a system of course depends on what is considered part of the system.

#tipBlock(heading: [Checkpoint])[
Two pool balls crash against each other. Is this force of gravity exerted by one ball on the other an internal or external force?

+ Internal.
+ External.

#tipBlock(heading: [Answer])[
+
]
]

The key property of internal forces is that *the vector sum of the internal forces in a system is zero*. Indeed, Newton's Third Law states that for every force exerted by object A on object B, there is a force that is equal in magnitude and opposite in direction exerted by object B on object A. If we consider both objects to be in the same system, then the sum of the internal forces between objects A and B must sum to zero. It is important to note that this is quite different than what we have discussed so far about summing forces. The forces that sum to zero are exerted on _different_ objects. Thus far, we had only ever considered summing forces that are exerted on the same object in order to apply Newton's Second Law. We have never encountered a situation where "action" and "reaction" forces are summed together, because they act on different objects.

#attentionBlock(heading: [Emma's Thoughts])[
*Internal vs. External forces - what is the "system" and what forces should we consider?*

As discussed above, internal and external forces can only be considered in the context of a specific system. So, how do we define this "system"? How far do we go when defining the system?

For example, let's say that you kick a soccer ball, and it hits a nearby lawn chair, knocking it down. You want to determine what will happen to the soccer ball after it hits the lawn chair. What is defined to be the system here, and how should the forces be classified? Is the force exerted by the soccer ball on the lawn chair an external force? Should we consider the friction between the first foot particle that touches the first soccer ball particle?

The best way to approach "defining the system" is to pin down exactly what you're trying to model. Here, specifically, you are trying to determine the velocity of the ball after it hits the lawn chair. In this situation, thinking about the friction between individual foot and soccer ball particles wouldn't help us to figure out the final velocity of the soccer ball. Rather, thinking of the soccer ball and lawn chair as two giant, continuous particles, colliding and exchanging energy would be helpful. In this situation, it would be useful to consider the "system" to be the soccer ball and lawn chair only.

The force exerted by the soccer ball on the lawn chair would be an internal force, as this gives us information as to the final velocity of the soccer ball and is a force exchanged between the particles within the system. The force that gravity exerts on the lawn chair, normal force on the person's foot and the force exerted by the foot on the soccer ball are all forces that we would consider "external".

Remember - "internal" and "external" are not magical properties of a specific type of force. These definitions are made by us in the quest of building useful models.
]

== Conservation of momentum <conservation-of-momentum>

Consider a system of two particles with momenta $arrow(p)_1$ and $arrow(p)_2$.  Newton's Second Law must hold for each particle:

$ frac(d arrow(p)_1, d t) & = sum_k arrow(F)_(1 k) \
frac(d arrow(p)_2, d t) & = sum_k arrow(F)_(2 k) $
where $F_(i k)$ is the $k$-th force that is acting on particle $i$.  We can sum these two equations together:

$ frac(d arrow(p)_1, d t) + frac(d arrow(p)_2, d t) & = sum_k arrow(F)_(1 k) + sum_k arrow(F)_(2 k) $
The quantity on the right is the sum of the forces exerted on particle 1 plus the sum of the forces exerted on particle 2. In other words, it is the sum of all of the forces exerted on all of the particles in the system, which we can write as a single sum. On the left hand side, we have the sum of the two time derivatives of the momenta, which is equal to the time-derivative of the sum of the momenta. We can thus re-write the equation as:

$ frac(d, d t)(arrow(p)_1 + arrow(p)_2) = sum arrow(F) $
where, again, the sum on the right is the sum over all of the forces exerted on the system. Some of those forces are external (e.g. gravity exerted by Earth on the particles), whereas some of the forces are internal (e.g. a contact force between the two particles). We can separate the sum into a sum over all external forces ($arrow(F)^(e x t)$) and a sum over internal forces ($arrow(F)^(i n t)$):

$ sum arrow(F) = sum arrow(F)^(e x t) + sum arrow(F)^(i n t) $
The sum of the internal forces is zero:

$ sum arrow(F)^(i n t) = 0 $
because for every force that particle 1 exerts on particle 2, there will be an equal and opposite force exerted by particle 2 on particle 1. We thus have:

$ frac(d, d t)(arrow(p)_1 + arrow(p)_2) = sum arrow(F)^(e x t) $
Furthermore, if we introduce the "total momentum of the system", $arrow(P) = arrow(p)_1 + arrow(p)_2$, as the sum of the momenta of the individual particles, we find:

$ frac(d arrow(P), d t) & = sum arrow(F)^(e x t) $
which is the equivalent of Newton's Second Law for a system where, $arrow(P)$, is the total momentum of the system, and the sum of the forces is only over external forces to the system.

Note that the derivation above easily extends to any number, $N$, of particles, even though we only did it with $N = 2$. In general, for the "ith particle", with momentum $arrow(p)_i$, we can write Newton's Second Law:

$ frac(d arrow(p)_i, d t) = sum_k arrow(F)_(i k) $
where the sum is over only those forces exerted on particle $i$. Summing the above equation for all $N$ particles in the system:

$ frac(d, d t) sum_i arrow(p)_i = sum arrow(F)^(e x t) + sum arrow(F)^(i n t) $
where the sum over internal forces will vanish for the same reason as above. Introducing the total momentum of the system, $arrow(P)$:

$ arrow(P) = sum_i arrow(p)_i \
 $
We can write an equation for the time-derivative of the total momentum of the system:

$ boxed frac(d arrow(P), d t) = sum arrow(F^) e x t $
where the sum of the forces is the sum over all forces external to the system. Thus, *if there are no external forces on a system, then the total momentum of that system is conserved* (if the time-derivative of a quantity is zero then that quantity is constant).

We already argued in the previous section that we can make all forces internal if we choose our system to be large enough. If we make the system be the Universe, then there are no forces external to the Universe, and the total momentum of the Universe must be constant:

$ frac(d arrow(P)^(U n i v e r s e), d t) & = sum_(U n i v e r s e) arrow(F)^(e x t) = 0 \
therefore arrow(P)^(U n i v e r s e) & = "constant" $
In summary, we saw that:

- If no forces are exerted on a single particle, then the momentum of that particle is constant (conserved).
- In a system of particles, the total momentum of the system is conserved if there are no external forces on the system.
- If there are no non-conservative forces exerted on a particle, then that particle's mechanical energy is constant (conserved).
- In a system of multiple particles, the total mechanical energy of the system will be conserved if there are no non-conservative forces exerted on the system.

When we refer to a force being "exerted on a system", we mean exerted on one or more of the particles in the system. In particular, the sum of the work done by internal forces is not necessarily zero, so *energy and momentum are thus conserved under different conditions*.

#noteBlock(heading: [Example 4.4])[
#show figure: set block(breakable: true)
#figure(
  image("files/train-d2c8c3f4754121be98bc464317511478.png", width: 80%),
  caption: [
A train with $N$ cars of mass $m$ about to collide with a car of mass $m$ that is at rest on the track.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:train>

Consider a train made of $N$ cars of equal mass $m$ that is travelling at constant speed $v$ along a straight piece of track where friction and drag are negligible, as depicted in @fig:momentumandcm:train. An empty car of mass $m$ was left at rest on the track in front of the train. The train collides with the empty car which stays attached to the front of the train. What is the speed of the train after the collision? Is the total mechanical energy of the system conserved?

#noteBlock(heading: [Solution])[
When the train collides with the car, it will exert a "collision" force on the car, and the car will exert an opposite force on the train. If we consider both of the train and the car as being part of the same system, then those collision forces will be internal, and the momentum of the system (train + car) will be conserved. The train and car both experience external forces from Earth's gravity and the normal force from the train tracks. However, those two sets of forces cancel each other out, since neither the train nor the car have any acceleration in the vertical direction (the sum of the forces on each object has no net vertical component). Thus, there are no net external forces on the car+train system, and the total momentum of the system is conserved through the collision.

We can model this system in one dimension (along the track), defining our $x$ axis. We choose the ground as a frame of reference, the positive direction parallel to the initial velocity of the train, and the origin to be located where the car initially starts. Before the collision, the $x$ component of the momenta of the train (mass $N m$) and car (mass $m$) are:

$ p_(t r a i n) & = N m v \
p_(c a r) & = 0 $
After the collision, the car is attached to the train (and thus has the same speed, $v '$), so the momenta of the train and car after the collision are:

$ p '_(t r a i n) & = N m v ' \
p '_(c a r) & = m v ' $
where the primes $'$ denote quantities after the collision. Applying conservation of momentum to the system, the total momentum before and after the collision must be equal:

$ p_(t r a i n) + p_(c a r) & = p '_(t r a i n) + p '_(c a r) \
therefore N m v & = N m v ' + m v ' \
therefore v ' & = frac(N, N + 1) v $
and the speed of the train with the additional car attached is reduced by a factor $N \/(N + 1)$ compared to what it was before the collision.

We can check to see if the mechanical energy of the system is conserved, since we know the speeds of the train and car before and after the collision. Since all of the motion is horizontal, gravity and the normal force do no work on either the train or car, so their mechanical energy can be taken as their kinetic energy (their gravitational potential energy does not change after the collision). The total mechanical energy of the system, $E$, before the collision is the kinetic energy of the train:

$ E = frac(1, 2) N m v^2 $
The total mechanical energy of the system, $E '$, after the collision is:

$ E ' & = frac(1, 2) N m v '^2 + frac(1, 2) m v '^2 = frac(1, 2)(N + 1) m v '^2 \
& = frac(1, 2)(N + 1) m(frac(N, N + 1) v)^2 \
& = frac(1, 2) m frac(N^2, N + 1) v^2 $
and we see that $E ' < E$, and thus that the total mechanical energy of the system is not conserved (it is reduced after the collision).

\*\*Discussion: \*\*We could have solved this problem by carefully modelling the force exerted by the car on the train during the collision, which would have allowed us to find the speed of the train after the collision using its acceleration. This would have required a detailed model for that force, which we do not have. However, by realizing that the train and car could be considered as a system with no net external forces exert on it, we were able to easily find the speed of the train after the collision using conservation of momentum.

We also found that mechanical energy was not conserved. This makes physical sense because, for the car to remain attached to the train, there presumably had to be some significant forces in play that "crushed" the car into the train. Some of the initial kinetic energy of the train was used to deform the train and the car during the collision. We can also think of deforming a material as giving it energy. Sometimes that energy is recoverable (e.g. compressing a spring), sometimes, it is not (e.g. crushing a car).

If the car and train were equipped with large springs to absorb the energy of the impact, the collision could have conserved mechanical energy, as the springs compress and then expand back. The speed of the car and train would then be different after the collision in this case (see @ex:momentumandcm:1delastic). It is a feature of collisions where the two bodies remain attached to each other that mechanical energy is not conserved.
]
]

= Collisions <collisions>

In this section we go through a few examples of applying conservation of momentum to model collisions. Collisions can loosely be defined as events where the momenta of individual particles in a system are different before and after the event.

We distinguish between two types of collisions: *elastic* and *inelastic* collisions. Elastic collisions are those for which the total mechanical energy of the system is conserved during the collision (i.e. it is the same before and after the collision). Inelastic collisions are those for which the total mechanical energy of the system is not conserved. In either case, to model the system, one chooses to define the system such that there are no external forces on the system so that total momentum is conserved.

== Inelastic collisions <inelastic-collisions>

In this section, we give a few examples of modelling inelastic collisions. Inelastic collisions are usually easier to handle mathematically, because one only needs to consider conservation of momentum and does not use conservation of energy (which usually involves equations that are quadratic in the speeds because of the kinetic energy term).

#noteBlock(heading: [Example 4.5])[
#show figure: set block(breakable: true)
#figure(
  image("files/skaters-3e4f05ca0612b57a349cdcab710b732c.png", width: 40%),
  caption: [
One skater pushing another on a frictionless horizontal surface.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:skaters>

You (mass $m_s$) and your friend (mass $m_f$) face each other on ice skates on an ice surface that is slippery enough that friction can be considered negligible, as shown in @fig:momentumandcm:skaters. You shove your friend away from you so that he moves with velocity $arrow(v)_f$ away from you (the velocity is measured relative to the ice). Is the collision elastic? What is your speed relative to the ice after you shoved your friend?

#noteBlock(heading: [Solution])[
We can consider the system as being comprised of you and your friend. There are no net external forces on the system (gravity and normal forces cancel each other), so the momentum of the system will be conserved.

The mechanical energy will not be conserved. You had to use chemical potential energy stored in your muscles to shove your friend. Thus, external energy (i.e. not mechanical energy from you or your friend) was injected into the system, and we should expect the total mechanical energy to be larger after the collision.

Before the collision, both you and your friend have zero speed, and thus zero kinetic energy and zero momentum. After the collision, your friend has a velocity $arrow(v)_f$. We can use conservation of total momentum, $arrow(P)$, to determine your velocity, $arrow(v)_s$, after the collision.

$ arrow(P) & = arrow(P) ' \
0 & = m_s arrow(v)_s + m_f arrow(v)_f \
therefore arrow(v)_s & = -frac(m_f, m_s) arrow(v)_f $
where primes ($'$) denote a quantity after the collision. We find that your velocity is in the opposite direction from that of your friend. Before the collision, the mechanical energy, $E$, of the system is zero (we can ignore gravitational potential energy, since everything is in the horizontal plane). After the collision, the mechanical energy, $E '$, is:

$ E ' = frac(1, 2) m_s v_s^2 + frac(1, 2) m_f v_f^2 $
which is clearly bigger than the mechanical energy before the collision (i.e. 0), as we suspected it would be.

*Discussion:* We find that you recoil in the opposite direction, which makes sense. If you push your friend in one direction, Newton's Third Law says that your friend pushes you in the opposite direction. Your speed furthermore depends on the ratio of your friend's mass to yours. This also makes sense, because if you both feel the same force, the person with the smallest mass will have the highest speed; if your mass is higher than your friend's, then your speed after the collision will be smaller than your friend's.

We also saw that mechanical energy was not conserved. In terms of energy, we can explain this by saying that you burned up chemical potential energy stored in your muscles in order to shove your friend. Because we included both you and your friend in the system, the shove was an internal force and momentum is conserved. Of course, if we had considered only you as the system, then your momentum would not have been conserved during the collision.

The type of collision that we described here is also sometimes called an "explosion". You can imagine all of the parts that make up a bomb as small particles. When the bomb explodes, chemical potential energy is converted into the kinetic energy of the bomb fragments. If you consider all of the particles/fragments of the bomb as a system, then the total momentum of all of the bomb fragments is conserved (and equal to zero if the bomb was initially at rest). Again, mechanical energy would not be conserved (and would increase) as the chemical potential energy is converted into mechanical energy.
]
]

#noteBlock(heading: [Example 4.6])[
A proton of mass $m_p$ and initial velocity $arrow(v)_p$ collides inelastically with a nucleus of mass $m_N$ at rest, as shown in @fig:momentumandcm:protonnucleus. A coordinate system is set up as shown, such that the initial velocity of the proton is in the $x$ direction. After the collision, the proton's speed is measured to be $v '_p$ and its velocity vector is found to make an angle $theta$ with the $x$ axis as shown. What is the velocity vector of the nucleus after the collision? Assume that the collision takes place in vacuum.

#show figure: set block(breakable: true)
#figure(
  image("files/protonnucleus-ae0194616d7519d54c8de46b5351c92c.png", width: 70%),
  caption: [
A proton of mass $m_p$ colliding inelastically with a nucleus of mass $m_N$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:protonnucleus>

#noteBlock(heading: [Solution])[
As a system, we consider the proton and the nucleus together, so that the total momentum of the system is conserved during the collision, as no other external forces are exerted on the two particles (since they are in vacuum). Because momentum is a vector, each component of the total momentum, $arrow(P)$, is conserved during the collision:

$ arrow(P) & = arrow(P) ' \
therefore P_x & = P '_x \
therefore P_y & = P '_y $
where, as usual, primes ($'$) denote quantities after the collision. After the collision, both particles will have velocity vectors that have $x$ and $y$ components. Let the velocity vector of the nucleus after the collision be $arrow(v) '_N$ and let $phi.alt$ be the angle that it makes with the $x$ axis, as shown in @fig:momentumandcm:protonnucleus.

We can start by considering the conservation of the $x$ component of the total momentum. The initial and final momenta in the $x$ direction are given by:

$ P_x & = m_p v_p \
P '_x & = m_p v '_p cos theta + m_N v '_N cos phi.alt \
therefore m_p v_p & = m_p v '_p cos theta + m_N v '_N cos phi.alt $
which gives us a first equation to determine the final velocity of the nucleus.

The $y$ component of the total momentum before the collision is zero since we chose the coordinate system such that the initial velocity of the proton is in the $x$ direction. The initial and final momenta in the $y$ direction are given by:

$ P_y & = 0 \
P '_y & = m_p v '_p sin theta -m_N v '_N sin phi.alt \
therefore m_p v '_p sin theta & = m_N v '_N sin phi.alt $
which gives us a second equation to solve for the velocity of the nucleus. With the two equations from momentum conservation, we can solve for the magnitude and direction of the velocity of the nucleus. From the $y$ component of momentum conservation, we can find an expression for the speed of the nucleus:

$ m_p v '_p sin theta & = m_N v '_N sin phi.alt \
therefore v '_N & = frac(m_p, m_N) v '_p sin theta frac(1, sin phi.alt) $
which we can substitute into the $x$ equation for momentum conservation to solve for the angle $phi.alt$:

$ m_p v_p & = m_p v '_p cos theta + m_N v '_N cos phi.alt \
m_p v_p & = m_p v '_p cos theta + m_N frac(m_p, m_N) v '_p sin theta frac(cos phi.alt, sin phi.alt) \
v_p & = v '_p cos theta + v '_p sin theta frac(1, tan phi.alt) \
therefore tan phi.alt & = frac(v '_p sin theta, v_p -v '_p cos theta) $
If we were given numbers for the initial and final speed of the proton, as well as the angle $theta$, we would be able to find a value for the angle $phi.alt$, which we could then use to determine the final speed of the nucleus:

$ v '_N & = frac(m_p, m_N) v '_p sin theta frac(1, sin phi.alt) $
*Discussion:* By using the conservation of momentum equation and writing out the $x$ and $y$ components, we were able to find two equations to determine the magnitude and direction of the nucleus' velocity after the collision. In the limit where $m_N > > m_p$, the final speed of the nucleus would be very small (close to zero).
]
]

== Elastic collisions <elastic-collisions>

In this section, we give a few examples of modelling elastic collisions. Even though it is mechanical energy that is conserved in an elastic collision, one can almost always simplify this to only kinetic energy being conserved. If a collision takes place in a well localized position in space (i.e. before and after the collision are the same point in space), then the potential energies of the objects involved will not change, thus any change in their mechanical energy is due to a change in kinetic energy.

#noteBlock(heading: [Example 4.7])[
#show figure: set block(breakable: true)
#figure(
  image("files/1delastic-53943ca2dce994dcc3828939b01f3217.png", width: 60%),
  caption: [
Two blocks about to collide elastically.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:1delastic>

A block of mass $M$ moves with velocity $arrow(v)_M$ in the $x$ direction, as shown in @fig:momentumandcm:1delastic. A block of mass $m$ is moving with velocity $arrow(v)_m$ also in the $x$ direction and collides elastically with block $M$. Both blocks slide with no friction on the horizontal surface. What are the velocities of the two blocks after the collision?

#noteBlock(heading: [Solution])[
Because this is an elastic collision, both the total momentum and total mechanical energy are conserved. Equating the total momentum before and after the collision, and considering only the $x$ component gives the following equation:

$ arrow(P) & = arrow(P) ' \
M v_M + m v_m & = M v '_M + m v '_m $
where the primes ($'$) correspond to the quantities after the collision. Note that, in principle, the $x$ components of the velocities ($v_M$, $v '_M$, $v_m$, $v '_m$) could be negative numbers if the corresponding block is moving in the negative $x$ direction.

For the mechanical energy of the two blocks, we only need to consider their kinetic energy since their gravitational potential energies are the same before and after the collision on the horizontal surface. The total mechanical energy of the system, before and after the collision is given by:

$ E & = E ' \
frac(1, 2) M v_M^2 + frac(1, 2) m v_m^2 & = frac(1, 2) M v '^2_M + frac(1, 2) m v '^2_m \
therefore M v_M^2 + m v_m^2 & = M v '^2_M + m v '^2_m $
where we cancelled the factor of one half in the last line. This gives two equations (conservation of energy and momentum) and two unknowns (the two speeds after the collision). This is not a linear system of equations, because the equation from conservation of energy is quadratic in the speeds.

The following method allows many models for elastic collisions between two particles to be solved easily by converting the quadratic equation from energy conservation into an equation that is linear in the speeds. First, write both equations so that the quantities related to each particle are on opposite sides of the equation. For momentum, this gives:

$ M v_M + m v_m & = M v '_M + m v '_m \
therefore M(v_M -v '_M) & = m(v ' m -v_m) $ <eq:momentumandcm:exptemp>
For conservation of energy, this gives:

$ M v_M^2 + m v_m^2 & = M v '^2_M + m v '^2_m \
therefore M(v_M^2 -v '^2_M) & = M(v '^2_m -v^2_m) $ <eq:momentumandcm:exptemp2>
which we can re-write as:

$ M(v_M^2 -v '^2_M) & = M(v '^2_m -v^2_m) \
M(v_M -v '_M)(v_M + v '_M) & = M(v '_m -v_m)(v '_m + v_m) $
We can then divide Equation @eq:momentumandcm:exptemp2 by Equation @eq:momentumandcm:exptemp:

$ frac(M(v_M -v '_M)(v_M + v '_M), M(v_M -v '_M)) & = frac(M(v '_m -v_m)(v '_m + v_m), m(v ' m -v_m)) \
therefore v_M + v '_M & = v '_m + v_m $
which gives us an equation that is much easier to work with, since it is linear in the speeds. If we re-arrange this last equation back so that quantities before and after the collision are on different sides of the equality:

$ boxed v_M -v_m = -(v '_M -v '_m) $
we can see that the relative speed between $M$ and $m$ is the same before and after the collision. That is, if block $M$ "saw" block $m$ approaching with a speed of $3 upright m \/ s$ before the collision, it would "see" block $m$ moving _away_ with speed $3 upright m \/ s$ after the collision, regardless of the actual directions and velocities of the block, if the collision was elastic.

By using this equation with the original conservation of momentum equation, we now have two equations and two unknowns that are easy to solve:

$ v_M -v_m & = -(v '_M -v '_m) \
M v_M + m v_m & = M v '_M + m v '_m $
Solving for $v '_m$ in both equations gives:

$ v_M -v_m & = -(v '_M -v '_m) \
therefore v '_m & = v_M + v '_M -v_m \
M v_M + m v_m & = M v '_M + m v '_m \
therefore v '_m & = frac(1, m)(M v_M + m v_m -M v '_M) $
Equating the two expressions for $v '_m$ allows us to solve for $v '_M$:

$ frac(1, m)(M v_M + m v_m -M v '_M) & = v_M + v '_M -v_m \
M v_M + m v_m -M v '_M & = m v_M + m v '_M -m v_m \
(M -m) v_M + 2 m v_m & =(M + m) v '_M \
therefore v '_M & = frac(M -m, M + m) v_M + frac(2 m, M + m) v_m $
One can easily solve for the other speed, $v '_m$:

$ therefore v '_m & = frac(m -M, M + m) v_m + frac(2 M, M + m) v_M $
And writing these together:

$ v '_M & = frac(M -m, M + m) v_M + frac(2 m, M + m) v_m \
v '_m & = frac(m -M, M + m) v_m + frac(2 M, M + m) v_M $
*Discussion:* The formulas that we obtained above are valid for any one dimensional elastic collision.
]
]

#tipBlock(heading: [Checkpoint])[
Two trains of equal masses collide elastically on a track. If train A had a speed $v$ and train B was at rest, what are the speeds of the trains after the collision?

+ Both trains A and B travel away from each other with speeds $frac(1, 2) v$.
+ Train A will be at rest and train B will move away with a speed $v$.
+ Both trains A and B will stick together and move at a speed of $v$.
+ Train B will be at rest and train A will move away at a speed of $v$.

#tipBlock(heading: [Answer])[
+
]
]

#noteBlock(heading: [Example 4.8])[
#show figure: set block(breakable: true)
#figure(
  image("files/protonproton-99e03bb3c8bd038f99f69d8e1d9c380b.png", width: 70%),
  caption: [
A proton elastically collides with a proton at rest.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:protonproton>

A proton of mass $m$ and initial velocity $arrow(v)_1$ collides elastically with a second proton that is at rest. After the collision, the two protons have velocities $arrow(v) '_1$ and $arrow(v) '_2$, as shown in @fig:momentumandcm:protonproton. Show that the velocity vectors of the two protons are perpendicular after the collision.

#noteBlock(heading: [Solution])[
This example highlights a particular feature of elastic collisions when the two objects have the same mass and one of the objects is initially at rest. The conservation of momentum for the system comprised of the two protons can be written as:

$ m arrow(v)_1 & = m arrow(v) '_1 + m arrow(v) '_2 \
arrow(v)_1 & = arrow(v) '_1 + arrow(v) '_2 $
where the left hand side corresponds to the initial total momentum and the right hand side to the total momentum after the collision. In the second line, we cancelled out the mass, and obtained a vector relation between the velocity vectors. We can graphically illustrate the vector relation as in @fig:momentumandcm:vsum which shows the triangle that is formed by adding the two outgoing velocity vectors to obtain the initial velocity vector.

#show figure: set block(breakable: true)
#figure(
  image("files/vsum-cc029478b75de1cb8eee0040eb74c0c5.png", width: 40%),
  caption: [
Graphical illustration of the relation between the initial and final velocity vectors as a vector sum.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:vsum>

Conservation of kinetic energy for the collision can be written as:

$ frac(1, 2) m v_1^2 & = frac(1, 2) m v '^2_1 + frac(1, 2) m v '^2_2 \
v_1^2 & = v '^2_1 + v '^2_2 $
where the left hand side corresponds to the initial kinetic energy and the right hand side to the final kinetic energy. We cancelled the mass and factor of one half in the second line. This last equation gives a relation between the magnitudes of the velocity vectors. By comparing the equation above to Pythagoras' theorem, and by inspecting the triangle in @fig:momentumandcm:vsum, it is clear that the triangle must be a right angle triangle, and thus that $arrow(v) '_1$ and $arrow(v) '_2$ must be perpendicular.
]
]

== Frames of reference <frames-of-reference>

#cautionBlock(heading: [Review])[
Before proceeding, you may wish to review Sections #link("\#sec:describingmotionin1D:relativemotion") and  #link("\#sec:desribingmotioninnd:relativemotion") on expressing velocities in different frames of reference.
]

Because the momentum of a particle is defined using the velocity of the particle, its value depends on the reference frame in which we chose to measure that velocity. In some cases, it is useful to apply momentum conservation in a frame of reference where the total momentum of the system is zero. For example, consider two particles of mass $m_1$ and $m_2$, moving towards each other with velocities $arrow(v)_1$ and $arrow(v)_2$, respectively, as measured in a frame of reference $S$, as illustrated in @fig:momentumandcm:2particles.

#show figure: set block(breakable: true)
#figure(
  image("files/2particles-60b4d45d714329dfe64e722015685ec8.png", width: 30%),
  caption: [
Two particles moving towards each other.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:2particles>

In the frame of reference $S$, the total momentum, $arrow(P)$, of the two particles can be written:

$ arrow(P) = m_1 arrow(v)_1 + m_2 arrow(v)_2 $
Consider a frame of reference, $S '$, that is moving with velocity, $arrow(v)_(C M)$, relative to the frame of reference $S$. In that frame of reference, the velocities of the two particles are different and given by:

$ arrow(v) '_1 & = arrow(v)_1 -arrow(v)_(C M) \
arrow(v) '_2 & = arrow(v)_2 -arrow(v)_(C M) $
The total momentum, $arrow(P) '$, in the frame of reference $S '$ is then given by#footnote[Note that we are using primes ($'$) to denote quantities in a different reference frame, not after a collision.]:

$ arrow(P) ' & = m_1 arrow(v) '_1 + m_2 arrow(v) '_2 \
& = m_1 (arrow(v)_1 -arrow(v)_(C M)) + m_2 (arrow(v)_2 -arrow(v)_(C M)) \
& = m_1 arrow(v)_1 + m_2 arrow(v)_2 -(m_1 + m_2) arrow(v)_(C M) $
We can choose the velocity of the frame $S '$, $arrow(v)_(C M)$, such that the total momentum in that frame of reference is zero:

$ arrow(P) ' & = 0 \
m_1 arrow(v)_1 + m_2 arrow(v)_2 -(m_1 + m_2) arrow(v)_(C M) & = 0 \
therefore arrow(v)_(C M) & = frac(m_1 arrow(v)_1 + m_2 arrow(v)_2, m_1 + m_2) $
This "special" frame of reference, in which the total momentum of the system is zero, is called the "centre of mass frame of reference". The velocity of centre of mass frame of reference can easily be obtained if there are $N$ particles involved instead of two:

$ boxed therefore arrow(v_) C M = frac(m_1 arrow(v)_1 + m_2 arrow(v)_2 + m_3 arrow(v)_3 + dots.h, m_1 + m_2 + m_3 + dots.h) = frac(sum m_i arrow(v)_i, sum m_i) $
Again, you should note that because the above equation is a vector equation, it represents one equation per component of the vectors. For example, the $x$ component of the velocity of the centre of mass frame of reference is given by:

$ therefore v_(C M x) = frac(m_1 v_(1 x) + m_2 v_(2 x) + m_3 v_(3 x) + dots.h, m_1 + m_2 + m_3 + dots.h) = frac(sum m_i v_(i x), sum m_i) $
#noteBlock(heading: [Example 4.9])[
#show figure: set block(breakable: true)
#figure(
  image("files/labframe-25598d4a463ebbbaba2d721c6fc7d0bd.png", width: 40%),
  caption: [
One block approaching another identical block at rest, as seen in the lab frame of reference.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:labframe>

In the frame of reference of a lab, a block of mass $m$ has a velocity $arrow(v)_1$ directed along the positive $x$ axis and is approaching a second block of mass $m$ that is at rest ($arrow(v)_2 = 0$), as shown in @fig:momentumandcm:labframe. What is the velocity of the centre of mass frame? What is the velocity of each block in the centre of mass frame? Verify that the total momentum is zero in the centre of mass frame.

#noteBlock(heading: [Solution])[
Since this is a one dimensional situation, we only need to evaluate the $x$ component of the velocity of the centre of mass:

$ arrow(v)_(C M) & = frac(m_1 arrow(v)_1 + m_2 arrow(v)_2, m_1 + m_2) \
therefore v_(C M x) & = frac(m_1 v_(1 x) + m_2 v_(2 x), m_1 + m_2) \
& = frac(m v_1 + m(0), m + m) \
& = frac(1, 2) v_1 $
The centre of mass frame of reference is thus also moving along the positive direction of the $x$ axis, but with a speed that is half of that of the moving block. In the centre of mass frame of reference, it appears that the block on the left is slower than in the lab frame and that the block on the right is moving in the negative $x$ direction. The velocities of the two blocks in the centre of mass frame of reference are given by:

$ v '_1 & = v_1 -v_(C M x) = frac(1, 2) v_1 \
v '_2 & =(0) -v_(C M x) = -frac(1, 2) v_1 $
Thus, in the reference frame of the centre of mass, the two block are approaching each other with the same speed ($v_1 \/ 2$), which is only the case because the two blocks have the same mass. The blocks, as viewed in the centre of mass frame of reference, are shown in @fig:momentumandcm:cmframe.

#show figure: set block(breakable: true)
#figure(
  image("files/cmframe-e97482a4cf5f187af2d422a8562db512.png", width: 40%),
  caption: [
In the centre of mass frame of reference, the block approach each other with the same speed, because they have the same mass.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:cmframe>

Clearly, the total momentum is zero in the centre of mass frame of reference:

$ arrow(P) ' = m arrow(v) '_1 + m arrow(v) '_2 = m(frac(1, 2) arrow(v)_1 -frac(1, 2) arrow(v)_1) = 0 $
*Discussion:* As we have seen, in the centre of mass frame of reference the total momentum is zero. If there are only two particles, and they have the same mass, then, in the centre of mass frame of reference, they both have the same speed and move either towards or away from each other.
]
]

= The centre of mass <the-centre-of-mass>

In this section, we show how to generalize Newton's Second Law so that it may describe the motion of an object that is not a point particle. Any object can be described as being made up of point particles; for example, those particles could be the atoms that make up regular matter. We can thus use the same terminology as in the previous sections to describe a complicated object as a "system" comprised of many point particles, themselves described by Newton's Second Law. A system could be a rigid object where the point particles cannot move relative to each other, such as atoms in a solid#footnote[In reality, even atoms in a solid can move relative to each other, but they do not move by large amounts compared to the object.]. Or, the system could be a gas, made of many atoms moving around, or it could be a combination of many solid objects moving around.

In the previous section, we saw how the total momentum and the total mechanical energy of the system could be used to describe the system as a whole. In this section, we will define the centre of mass which will allow us to describe the position of the system as a whole.

Consider a system comprised of $N$ point particles. Each point particle $i$, of mass $m_i$, can be described by a position vector, $arrow(r)_i$, a velocity vector, $arrow(v)_i$, and an acceleration vector, $arrow(a)_i$, relative to some coordinate system in an inertial frame of reference. Newton's Second Law can be applied to any one of the particles in the system:

$ sum_k arrow(F)_(i k) = m_i arrow(a)_i $
where $arrow(F)_(i k)$ is the k-th force exerted on particle $i$. We can write Newton's Second Law once for each of the $N$ particles, and we can sum those $N$ equations together:

$ sum_k arrow(F)_(1 k) + sum_k arrow(F)_(2 k) + sum_k arrow(F)_(3 k) + dots.h & = m_1 arrow(a)_1 + m_2 arrow(a)_2 + m_3 arrow(a)_3 + dots.h \
sum arrow(F) = sum_i m_i arrow(a)_i $
where the sum on the left is the sum of all of the forces exerted on all of the particles in the system#footnote[Again, we are summing together forces that are acting on *different* particles.] and the sum over $i$ on the right is over all of the $N$ particles in the system. As we have already seen, the sum of all of the forces exerted on the system can be divided into separate sums over external and internal forces:

$ sum arrow(F) = sum arrow(F)^(e x t) + sum arrow(F)^(i n t) $
and the sum over the internal forces is zero#footnote[Recall, the internal forces are those forces that particles in the system are exerting on one another. Because of Newton's Third Law, these will sum to zero.]. We can thus write that the sum of the external forces exerted on the system is given by:

$ sum arrow(F)^(e x t) & = sum_i m_i arrow(a)_i $ <eqn:momentumandcm:cmtemp1>
We would like this equation to resemble Newton's Second Law, but for the system as a whole. Suppose that the system has a total mass, $M$:

$ M = m_1 + m_2 + m_3 + dots.h = sum_i m_i $
we would like to have an equation of the form:

$ sum arrow(F)^(e x t) & = M arrow(a)_(C M) $ <eqn:momentumandcm:cmtemp2>
to describe the system as a whole. However, it is not (yet) clear what is accelerating with acceleration, $arrow(a)_(C M)$, since the particles in the system could all be moving in different directions. Suppose that there is a point in the system, whose position is given by the vector, $arrow(r)_(C M)$, in such a way that the acceleration above is the second time-derivative of that position vector:

$ arrow(a)_(C M) = frac(d^2, d t^2) arrow(r)_(C M) $
We can compare Equations @eqn:momentumandcm:cmtemp1 and @eqn:momentumandcm:cmtemp2 to determine what the position vector $arrow(r)_(C M)$ corresponds to:

$ sum arrow(F)^(e x t) & = sum_i m_i arrow(a)_i = sum_i m_i frac(d^2, d t^2) arrow(r)_i \
sum arrow(F)^(e x t) & = M arrow(a)_(C M) = M frac(d^2, d t^2) arrow(r)_(C M) \
therefore M frac(d^2, d t^2) arrow(r)_(C M) & = sum_i m_i frac(d^2, d t^2) arrow(r)_i $
Re-arranging, and noting that the masses are constant in time, and so they can be factored into the derivatives:

$ frac(d^2, d t^2) arrow(r)_(C M) & = frac(1, M) sum_i m_i frac(d^2, d t^2) arrow(r)_i \
frac(d^2, d t^2) arrow(r)_(C M) & = frac(d^2, d t^2) (frac(1, M) sum_i m_i arrow(r)_i) \
therefore arrow(r)_(C M) & = frac(1, M) sum_i m_i arrow(r)_i $
where in the last line we set the quantities that have the same time derivative equal to each other#footnote[Technically, the terms in the derivatives are only equal to within two constants of integration, $arrow(r)_(C M) = frac(1, M) sum_i m_i arrow(r)_i + a t + b$, which we can set to zero.]. $arrow(r)_(C M)$ is the vector that describes the position of the "centre of mass" (CM). The position of the centre of mass is described by Newton's Second Law applied to the system as a whole:

$ boxed sum arrow(F^) e x t = M arrow(a_) C M $
where $M$ is the total mass of the system, and the sum of the forces is the sum over only external forces on the system.

Although we have formally derived Newton's Second Law for a system of particles, we really have been using this result throughout the text. For example, when we modelled a block sliding down an incline, we never worried that the block was made of many atoms all interacting with each other and the surroundings. Instead, we only considered the external forces on the block, namely, the normal force from the incline, any frictional forces, and the total weight of the object (the force exerted by gravity). Technically, the force of gravity is not exerted on the block as a whole, but on each of the atoms. However, when we sum the force of gravity exerted on each atom:

$ m_1 arrow(g) + m_2 arrow(g) + m_3 arrow(g) + dots.h =(m_1 + m_2 + m_3 + dots.h) arrow(g) = M arrow(g) $
we find that it can be modelled by considering the block as a single particle of mass $M$ upon which gravity is exerted. The centre of mass is sometimes described as the "centre of gravity", because it #strong[corresponds to the location where we can model the total force of gravity, $M arrow(g)$, as being exerted]. When we applied Newton's Second Law to the block, we then described the motion of the block as a whole (and not the motion of the individual atoms). Specifically, we modelled the motion of the centre of mass of the block.

The position of the centre of mass is a vector equation that is true for each coordinate:

$ arrow(r)_(C M) & = frac(1, M) sum_i m_i arrow(r)_i \
therefore x_(C M) & = frac(1, M) sum_i m_i x_i \
therefore y_(C M) & = frac(1, M) sum_i m_i y_i \
therefore z_(C M) & = frac(1, M) sum_i m_i z_i $
The centre of mass is that *position in a system that is described by Newton's Second Law when it is applied to the system as a whole*. The centre of mass can be thought of as an average position for the system (it is the average of the positions of the particles in the system, weighted by their mass). By describing the position of the centre of mass, we are not worried about the detailed positions of the all of the particles in the system, but rather only the average position of the system as a whole. In other words, this is equivalent to viewing the whole system as a single particle of mass $M$ located at the position of the centre of mass.

Consider, for example, a person throwing a dumbbell that is made from two spherical masses connected by a rod, as illustrated in @fig:momentumandcm:cmparabola. The dumbbell will rotate in a complex manner as it moves through the air. However, the centre of mass of the dumbbell will travel along a parabolic trajectory (projectile motion), because the only external force exerted on the dumbbell during its trajectory is gravity.

#show figure: set block(breakable: true)
#figure(
  image("files/cmparabola-51543e3284ba3fe18b173b830063c9ef.png", width: 60%),
  caption: [
The motion of the centre of mass of a dumbbell is described by Newton's Second Law, even if the motion of the rotating dumbbell is more complex.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:cmparabola>

If we take the derivative with respect to time of the centre of mass position, we obtain the velocity of the centre of mass, and its components, which allow us to describe how the system is moving as a whole:

$ arrow(v)_(C M) & = frac(d, d t) arrow(r)_(C M) = frac(1, M) sum_i m_i frac(d, d t) arrow(r)_i = frac(1, M) sum_i m_i arrow(v)_i \
therefore v_(C M x) & = frac(1, M) sum_i m_i v_(i x) \
therefore v_(C M y) & = frac(1, M) sum_i m_i v_(i y) \
therefore v_(C M z) & = frac(1, M) sum_i m_i v_(i z) $
Note that this is the same velocity that we found earlier for the velocity of the centre of mass frame of reference. In the centre of mass frame of reference, the total momentum of the system is zero. This makes sense, because the centre of mass represents the average position of the system; if we move "with the system", then the system appears to have zero momentum.

We can also define the total momentum of the system, $arrow(P)$, in terms of the total mass, $M$, of the system and the velocity of the centre of mass:

$ arrow(P) & = sum m_i arrow(v)_i = frac(M, M) sum m_i arrow(v)_i \
& = M arrow(v)_(C M) $
which we can also use in Newton's Second Law:

$ frac(d, d t) arrow(P) = sum arrow(F)^(e x t) $
and again, we see that the total momentum of the system is conserved if the net external force on the system is zero. In other words, the centre of mass of the system will move with constant velocity when momentum is conserved.

Finally, we can also define the acceleration of the centre of mass by taking the time derivative of the velocity:

$ arrow(a)_(C M) & = frac(d, d t) arrow(v)_(C M) = frac(1, M) sum_i m_i frac(d, d t) arrow(v)_i = frac(1, M) sum_i m_i arrow(a)_i \
therefore a_(C M x) & = frac(1, M) sum_i m_i a_(i x) \
therefore a_(C M y) & = frac(1, M) sum_i m_i a_(i y) \
therefore a_(C M z) & = frac(1, M) sum_i m_i a_(i z) $
#noteBlock(heading: [Example 4.10])[
#show figure: set block(breakable: true)
#figure(
  image("files/sunearthmars-db16062d454b433685e974e808bf801b.png", width: 70%),
  caption: [
A syzygy between the Sun, Earth, and Mars.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:sunearthmars>

In astronomy, a syzygy is defined as the event in which three bodies are all lined up along a straight line. For example, a syzygy occurs when the Sun (mass $M_S = 2 . 0 0 e 3 0 upright k g$), Earth (mass $M_E = 5 . 9 7 e 2 4 upright k g$), and Mars (mass $M_M = 6 . 3 9 e 2 3 upright k g$) are all lined up, as in @fig:momentumandcm:sunearthmars. How far from the centre of the Sun is the centre of mass of the Sun, Earth, Mars system during a syzygy?

#noteBlock(heading: [Solution])[
Since this is a one-dimensional problem, we can define an $x$ axis that is co-linear with the three bodies, and find only the $x$ coordinate of the position of the centre of mass. We are free to choose the origin of the coordinate system, so we choose the origin to be located at the centre of the Sun. This way, the position of the centre of mass along the $x$ axis will directly correspond to its distance from the centre of the Sun.

The Sun, Earth, and Mars are not point particles. However, because they are spherically symmetric, their centres of mass correspond to their geometric centres. We can thus model them as point particles with the mass of the body located at the corresponding geometric centre. If $r_E = 1 . 5 0 e 1 1 upright m$ ($r_M = 2 . 2 8 e 1 1 upright m$) is the distance from the centre of the Earth (Mars) to the centre of the Sun, then the position of the centre of mass is given by:

$ x_(C M) & = frac(1, M) sum_i m_i x_i \
& = frac(M_S (0) + M_E r_E + M_M r_M, M_S + M_E + M_M) \
& = frac((2 . 0 0 e 3 0 upright k g)(0) +(5 . 9 7 e 2 4 upright k g)(1 . 5 0 e 1 1 upright m) +(6 . 3 9 e 2 3 upright k g)(2 . 2 8 e 1 1 upright m),(2 . 0 0 e 3 0 upright k g) +(5 . 9 7 e 2 4 upright k g) +(6 . 3 9 e 2 3 upright k g)) \
& = 5 . 2 1 e 5 upright m $
The centre of mass of the Sun-Earth-Mars system during a syzygy is located approximately $5 0 0 upright k m$ from the centre of the Sun.

*Discussion:* The radius of the Sun is approximately $7 0 0 0 0 0 upright k m$, so the centre of mass of the system is well inside of the Sun. The Sun is so much more massive than either of the Earth or Mars, that the two planets hardly contribute to shifting the centre of mass away from the centre of the Sun. We would generally consider the masses of the two planets to be negligible if one wanted to model how the solar system itself moves around the Milky Way galaxy.
]
]

#noteBlock(heading: [Example 4.11])[
#show figure: set block(breakable: true)
#figure(
  image("files/cmraft-2ce0a582e824c4cb4f6807c04093e5f7.png", width: 70%),
  caption: [
Three people on rafts on a lake.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:cmraft>

Alice (mass $m_A$), Brice (mass $m_B$), and Chloe (mass $m_C$) are stranded on individual rafts of negligible mass on a lake, off of the coast of Nyon. The rafts are located at the corners of a right-angle triangle, as illustrated in @fig:momentumandcm:cmraft, and are connected by ropes. The distance between Alice and Brice is $r_(A B)$ and the distance between Alice and Chloe is $r_(A C)$, as illustrated. Alice decides to pull on the rope that connects her to Chloe, while Brice decide to pull on the rope that connects him to Alice. Where will the three rafts meet?

#noteBlock(heading: [Solution])[
We consider the system comprised of the three people and their rafts and model each person and their raft as a point particle with the mass concentrated at the centre of the raft. The forces exerted by pulling on the ropes are internal forces (one particle on the other), and will thus have no impact on the motion of the centre of mass of the system. There are no net external forces exerted on the system (the forces of gravity are balanced out by the forces of buoyancy from the rafts). The centre of mass of the system does not move when the people are pulling on the ropes, so they must ultimately meet at the centre of mass.

We can define a coordinate system such that the origin is located where Alice is initially located, the $x$ axis is in the direction from Alice to Brice, and the $y$ axis is in the direction from Alice to Chloe. The initial positions of Alice, Brice, and Chloe are thus:

$ arrow(r)_A & = 0 hat(x) + 0 hat(y) \
arrow(r)_B & = r_(A B) hat(x) + 0 hat(y) \
arrow(r)_C & = 0 hat(x) + r_(A C) hat(y) $
respectively. The $x$ and $y$ coordinates of the centre of mass are thus:

$ x_(C M) & = frac(1, M) sum_i m_i x_i = frac(m_A (0) + m_B r_(A B) + m_C (0), m_A + m_B + m_C) =(frac(m_B, m_A + m_B + m_C)) r_(A B) \
y_(C M) & = frac(1, M) sum_i m_i y_i = frac(m_A (0) + m_B (0) + m_C r_(A C), m_A + m_B + m_C) =(frac(m_C, m_A + m_B + m_C)) r_(A C) \
 $
which corresponds to the position where the three rafts will meet, relative to the initial position of Alice.

*Discussion:* By using the centre of mass, we easily found where the three rafts would meet. If we had used Newton's Second Law on the three rafts individually, the model would have been complicated by the fact that the forces exerted by Alice and Brice on the ropes change direction as the rafts begin to move, which would have required the use of integrals to determine the motion of each person.
]
]

== The centre of mass for a continuous object <the-centre-of-mass-for-a-continuous-object>

So far, we have considered the centre of mass for a system made of point particles. In this section, we show how one can determine the centre of mass for a "continuous object"#footnote[In reality, there are of course no continuous objects since, at the atomic level, everything is made of particles.]. We previously argued that if an object is uniform and symmetric, its centre of mass will be located at the centre of the object. Let us show this explicitly for a uniform rod of total mass $M$ and length $L$, as depicted in @fig:momentumandcm:rod.

#show figure: set block(breakable: true)
#figure(
  image("files/rod-c7b5d09b2e1a12f0968930c303a464e6.png", width: 50%),
  caption: [
A rod of length $L$ and mass $M$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:rod>

In order to determine the centre of mass of the rod, we first model the rod as being made of $N$ small "mass elements" each of equal mass, $Delta m$, and of length $Delta x$, as shown in @fig:momentumandcm:rod. If we choose those mass elements to be small enough, we can model them as point particles, and use the same formulas as above to determine the centre of mass of the rod.

We define the $x$ axis to be co-linear with the rod, such that the origin is located at one end of the rod. We can define the "linear mass density" of the rod, $lambda$, as the mass per unit length of the rod:

$ lambda = frac(M, L) . $
A small mass element of length $Delta x$, will thus have a mass, $Delta m$, given by:

$ Delta m = lambda Delta x $
If there are $N$ mass elements that make up the rod, the $x$ position of the centre of mass of the rod is given by:

$ x_(C M) & = frac(1, M) sum_i^N m_i x_i = frac(1, M) sum_i^N Delta m x_i \
& = frac(1, M) sum_i^N lambda Delta x x_i \
 $
where $x_i$ is the $x$ coordinate of the $i$-th mass element. Of course, we can take the limit over which the length, $Delta x$, of each mass element goes to zero to obtain an integral:

$ x_(C M) = lim_(Delta x arrow.r 0) frac(1, M) sum_i^N lambda Delta x x_i = frac(1, M) integral_0^L lambda x d x $
where the discrete variable $x_i$ became the continuous variable $x$, and $Delta x$ was replaced by $d x$ (which is the same, but indicates that we are taking the limit of $Delta x arrow.r 0$). The integral is easily found:

$ x_(C M) & = frac(1, M) integral_0^L lambda x d x = frac(1, M) lambda [ frac(1, 2) x^2 ]_0^L \
& = frac(1, M) lambda frac(1, 2) L^2 = frac(1, M)(frac(M, L)) frac(1, 2) L^2 \
& = frac(1, 2) L $
where we substituted the definition of $lambda$ back in to find, as expected, that the centre of mass of the rod is half its length away from one of the ends.

Suppose that the rod was instead not uniform and that its linear density depended on the position $x$ along the rod:

$ lambda(x) = 2 a + 3 b x $
We can still find the centre of mass by considering an infinitesimally small mass element of mass $d m$, and length $d x$. In terms of the linear mass density and length of the mass element, $d x$, the mass $d m$ is given by:

$ d m = lambda(x) d x $
The $x$ position of the centre of mass is thus found the same way as before, except that the linear mass density is now a function of $x$:

$ x_(C M) & = frac(1, M) integral_0^L lambda(x) x d x = frac(1, M) integral_0^L (2 a + 3 b x) x d x = frac(1, M) integral_0^L (2 a x + 3 b x^2) d x \
& = frac(1, M) [ a x^2 + b x^3 ]_0^L \
& = frac(1, M)(a L^2 + b L^3) $
In general, for a continuous object, the position of the centre of mass is given by:

$ arrow(r)_(C M) & = frac(1, M) integral arrow(r) d m \
therefore x_(C M) & = frac(1, M) integral x d m \
therefore y_(C M) & = frac(1, M) integral y d m \
therefore z_(C M) & = frac(1, M) integral z d m \
 $
where in general, one will need to write $d m$ in terms of something that depends on position (or a constant) so that the integrals can be evaluated over the spatial coordinates ($x$,$y$,$z$) over the range that describe the object. In the above, we wrote $d m = lambda d x$ to express the mass element in terms of spatial coordinates.

#noteBlock(heading: [Example 4.12])[
#show figure: set block(breakable: true)
#figure(
  image("files/cmbowl-1d1b369d890b85728f882628aa960aeb.png", width: 50%),
  caption: [
A symmetric bowl with parabolic sides is completely filled with water. The bowl has a height $h$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:cmbowl>

A bowl of height $h$ has parabolic sides and a circular cross-section, as illustrated in @fig:momentumandcm:cmbowl. The bowl is filled with water. The bowl itself has a negligible mass and thickness, so that the mass of the full bowl is dominated by the mass of the water. Where is the centre of mass of the full bowl?

#noteBlock(heading: [Solution])[
We can define a coordinate system such that the origin is located at the bottom of the bowl and the $z$ axis corresponds to the axis of symmetry of the bowl. Because the bowl is full of water, and the bowl itself has negligible mass, we can model the full bowl as a uniform body of water with the same shape as the bowl and (volume) mass density $rho$ equal to the density of water. Furthermore, by symmetry, the centre of mass of the bowl will be on the $z$ axis.

Because the bowl has a circular cross-section, we can divide it up into disk-shaped mass elements, $d m$, that have an infinitesimally small height $d z$, and a radius $r(z)$, that depends on their $z$ coordinate (@fig:momentumandcm:cmbowl).

#show figure: set block(breakable: true)
#figure(
  image("files/cmbowlsoln-46d95246606d9afbfcb46d896208050a.png", width: 50%),
  caption: [
The parabolic bowl divided up into disk-shaped mass elements, $d m$, that have an infinitesimally small height $d z$, and a radius $r(z)$, that depends on their $z$ coordinate.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:cmbowlsoln>

The centre of mass of each disk-shaped mass element will be located where the corresponding disk intersects the $z$ axis. The mass of one disk element is given by:

$ d m = rho d V = rho pi r^2 (z) d z $
where $d V = pi r(z)^2 d z$ is the volume of the disk with radius $r(z)$ and thickness $d z$. The radius of the infinitesimal disk depends on its $z$ position, since the radii of the different disks must describe a parabola:

$ z(r) & = frac(1, a^2) r^2 \
r(z) & = a sqrt(z) \
therefore d m & = rho pi r^2 (z) d z = rho pi a^2 z d z $
where we introduced the constant $a$ so that the dimensions are correct. The constant $a$ determines how "steep" the parabolic sides are. The $z$ coordinate of the centre of mass is thus given by:

$ z_(C M) & = frac(1, M) integral z d m = frac(1, M) integral_0^h z(rho pi a^2 z d z) = frac(rho pi a^2, M) integral_0^h z^2 d z \
& = frac(rho pi a^2, M) [ frac(1, 3) z^3 ]_0^h \
& = frac(rho pi a^2, 3 M) h^3 $
However, we are not quite done, since we do not know the total mass, $M$, of the water. To find the total mass of water, $M$, we proceed in an analogous way, and determine the value of the sum (integral) of all of the mass elements:

$ M = integral d m = integral_0^h rho pi a^2 z d z = rho pi a^2 [ frac(1, 2) z^2 ]_0^h = frac(1, 2) rho pi a^2 h^2 $
Substituting this value for $M$, we can determine the $z$ coordinate of the centre of mass of the full bowl:

$ z_(C M) & = frac(rho pi a^2, 3 M) h^3 = frac(2 rho pi a^2, 3 rho pi a^2 h^2) h^3 = frac(2, 3) h $
Regardless of the actual shape of the parabola (the parameter $a$), the centre of mass will always be two thirds of the way up from the bottom of the bowl.

*Discussion:* In determining the centre of mass of a three dimensional object, we used symmetry to argue that the $x$ and $y$ coordinates would be zero. We then found the $z$ position of the centre of mass by dividing up the bowl into infinitesimally small mass elements (disks) along the direction in which we needed to find the centre of mass coordinate.
]
]

#tipBlock(heading: [Checkpoint])[
True or False: The centre of mass of a continuous object is always located within the object.

+ True
+ False

#tipBlock(heading: [Answer])[
+
]
]

= Circular Motion <sec:momentumandcm:circularmotion>

$ arrow(p) = m arrow(v) $
We can write Newton's Second Law for a point particle in term of its momentum:

$ frac(d, d t) arrow(p) = sum arrow(F) = arrow(F)^(n e t) $
where the net force on the particle determines the rate of change of its momentum. In particular, if there is no net force on a particle, its momentum will not change.

The net impulse vector, $arrow(J)^(n e t)$, is defined as the net force exerted on a particle integrated from a time $t_A$ to a time $t_B$:

$ arrow(J)^(n e t) = integral_(t_A)^(t B) arrow(F)^(n e t) d t $
The net impulse vector is also equal to the change in momentum of the particle in that same period of time:

$ arrow(J)^(n e t) = Delta arrow(p) = arrow(p)_B -arrow(p)_A $
When we define a system of particles, we can distinguish between internal and external forces. Internal forces are those forces exerted by the particles in the system on each other. External forces are those forces on the particles in the system that are not exerted by the particles on each other. The sum over all of the forces on all of the particles in the system will be equal to the sum over the external forces, because the sum over all internal forces on a system is always zero (Newton's Third Law).

The total momentum of a system, $arrow(P)$, is the sum of the momenta, $arrow(p)_i$, of all of the particles in the system:

$ arrow(P) = sum arrow(p)_i $
The rate of change of the momentum of a system is equal to the sum of the external forces exerted on the system:

$ frac(d, d t) arrow(P) = sum arrow(F)^(e x t) $
which can be thought of as an equivalent description as Newton's Second Law, but for the system as a whole. If the net (external) force on a system is zero, then the total momentum of the system is conserved.

Collisions are those events when the particles in a system interact (e.g. by colliding) and change their momenta. When modelling collisions, it is usually beneficial to first define a system for which the total momentum is conserved before and after the collision.

Collisions can be elastic or inelastic. Elastic collisions are those where, in addition to the total momentum, the total mechanical energy of the system is conserved. The total mechanical energy can usually be taken as the sum of the kinetic energies of the particles in the system.

Inelastic collisions are those in which the total mechanical energy of the system is not conserved. One can usually identify if mechanical energy was introduced or removed from the system and determine if the collision is elastic. It is important to identify when momentum and mechanical energy are conserved. Momentum is conserved if no net force is exerted on the system, whereas mechanical energy is conserved if no net work was done on the system by non-conservative forces (internal or external) or by external conservative forces.

We can always choose in which frame of reference to model a collision. In some cases, it is convenient to use the frame of reference of the centre of mass of the system, because in that frame of reference, the total momentum of the system is zero.

If a system has a total mass $M$, then one can use Newton's Second Law to describe its motion:

$ sum arrow(F)^(e x t) & = M arrow(a)_(C M) \
sum arrow(F)^(e x t) & = frac(d, d t) arrow(P) $
where the sum of the forces is over all of the external forces on the system. The acceleration vector, $arrow(a)_(C M)$, describes the motion of the "centre of mass" of the system. $arrow(P) = M arrow(v)_(C M)$ is the total momentum of the system.

The centre of mass of a system is a mass-weighted average of the positions of all of the particles of mass $m_i$ and position $arrow(r)_i$ that comprise the system:

$ arrow(r)_(C M) & = frac(1, M) sum_i m_i arrow(r)_i $
The vector equation can be broken into components to find the $x$, $y$, and $z$ component of the position of the centre of mass. Similarly, one can also define the velocity of the centre of mass of the system, in terms of the individual velocities, $arrow(v)_i$, of the particles in the system:

$ arrow(v)_(C M) & = frac(1, M) sum_i m_i arrow(v)_i $
Finally, one can define the acceleration of the centre of mass of the system, in terms of the individual accelerations, $arrow(a)_i$, of the particles in the system:

$ arrow(a)_(C M) & = frac(1, M) sum_i m_i arrow(a)_i $
If the system is a continuous object, we can find its centre of mass using a sum (integral) of infinitesimally small mass elements, $d m$, weighted by their position:

$ arrow(r)_(C M) & = frac(1, M) integral arrow(r) d m \
therefore x_(C M) & = frac(1, M) integral x d m \
therefore y_(C M) & = frac(1, M) integral y d m \
therefore z_(C M) & = frac(1, M) integral z d m $
The strategy to set up the integrals above is usually to express the mass element, $d m$, in terms of the position and density of the material of which the object is made. One can then integrate over position in the range defined by the dimensions of the object.

#importantBlock(heading: [Important Equations])[
*Momentum of a point particle:*

$ arrow(p) = m arrow(v) \
frac(d, d t) arrow(p) = sum arrow(F) = arrow(F)^(n e t) $
*Impulse:*

$ arrow(J)^(n e t) = integral_(t_A)^(t B) arrow(F)^(n e t) d t \
arrow(J)^(n e t) = Delta arrow(p) = arrow(p)_B -arrow(p)_A $
*Momentum of a system:*

$ arrow(P) = sum arrow(p)_i \
frac(d, d t) arrow(P) = sum arrow(F)^(e x t) $
*Newton's Second Law for a \\ system:*

$ sum arrow(F)^(e x t) & = M arrow(a)_(C M) \
sum arrow(F)^(e x t) & = frac(d, d t) arrow(P) $
*Position of the Centre of Mass \\ of a system:*

$ arrow(r)_(C M) & = frac(1, M) sum_i m_i arrow(r)_i $
*Velocity of the Centre of Mass \\ of a system:*

$ arrow(v)_(C M) & = frac(1, M) sum_i m_i arrow(v)_i \
 $
*Acceleration of the Centre of Mass \\ of a system:*

$ arrow(a)_(C M) & = frac(1, M) sum_i m_i arrow(a)_i \
 $
*Position of the Centre of Mass for a \\ continuous object:*

$ arrow(r)_(C M) & = frac(1, M) integral arrow(r) d m \
therefore x_(C M) & = frac(1, M) integral x d m \
therefore y_(C M) & = frac(1, M) integral y d m \
therefore z_(C M) & = frac(1, M) integral z d m $
]

#importantBlock(heading: [Important Definitions])[
- *Momentum:* The product of velocity and mass. SI units: \[$upright k g m s^(-1)$\]. Common variable(s): $arrow(p)$.
- *Impulse:* A property of matter which describes an object's resistance to rotational motion. SI units: \[$upright N s$\]. Common variable(s): $arrow(J)$.
]

= Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- Explain how Newton's Cradle illustrates the conservation of momentum. Are the collisions in Newton's Cradle elastic? Explain!
- Gymnasts have specially engineered "crash mats" for landing after doing spins and flips in the air. Why do these crash mats have to be specially engineered, and why can't the gymnast just use a big pile of blankets?
- Give 2 examples where the centre of mass of an object is not located inside of the object.
- The Volvo XC60 is supposedly the safest car in the world that money can buy. Why is this?
- In the boxing world, boxers try to "ride the punch". Research and explain how this method helps boxers to reduce injuries.
]

#seealsoBlock(heading: [To try at home])[
- Grab two or three of your friends and ask them to hold a bed sheet. Throw an egg at full speed onto the bed sheet. What happens to the egg, and why?
- Verify that in a 1 one-dimensional elastic collision between two objects of the same mass, if one object starts at rest, the other object will end at rest after the collision (look up Newton's Cradle to get an idea).
]

#seealsoBlock(heading: [To try in the lab])[
- Propose an experiment to test whether a collision is elastic.
- Propose an experiment to test whether momentum is conserved in a two dimensional collision.
- Design a technique which measures the centre of mass of an arbitrary 3D object.
]

= Sample problems and solutions <sample-problems-and-solutions>

== Problems <problems>

#noteBlock(heading: [Problem 4.1])[
#show figure: set block(breakable: true)
#figure(
  image("files/ballistic-469d6db369fd5a1d3f5f71a368e7d9d4.png", width: 70%),
  caption: [
A bullet of mass $m$ strikes and embeds itself into a ballistic pendulum of mass $M$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:ballistic>

A ballistic pendulum is a device that can be built to measure the speed of a projectile. The pendulum is constructed such that the projectile is fired at the bob of the pendulum (typically a block of wood) which then swings as illustrated in @fig:momentumandcm:ballistic, with the projectile embedded within. By measuring the height that is reached by the pendulum's bob, one can determine the speed of the projectile before it collided with the pendulum. If a ballistic pendulum with a mass $M$ suspended at the end of strings of length $L$ is observed to rise by a height $h$ after being struck by a bullet of mass $m$, how fast was the bullet moving?
]

#noteBlock(heading: [Problem 4.2])[
#show figure: set block(breakable: true)
#figure(
  image("files/springcollision-e92881ea9bc239e7be1906e3102e5e0c.png", width: 60%),
  caption: [
One block attached to a spring about to collide with another block.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:springcollision>

A block of mass $M$ with a spring of spring constant $k$ attached to it is sliding on a frictionless surface with velocity $arrow(v)_M$ in the $x$ direction. A second block of mass $m$ has velocity $arrow(v)_m$ also in the $x$ direction (shown above in the negative $x$ direction, but let us assume that we do not necessarily know the direction, only  that the two blocks will collide). During the collision between the blocks, what is the maximum amount by which the spring is compressed?
]

#noteBlock(heading: [Problem 4.3])[
A uniform wire is bent into a semi-circle of radius $R$. Where is the centre of mass of the wire?
]

== Solutions <solutions>

#noteBlock(heading: [Solution 4.1])[
We can model this situation by dividing it into three phases:

+ Before the bullet collides with the pendulum, only the bullet has momentum in the $x$ direction.
+ Immediately after the *inelastic* collision, the bullet and pendulum form a combined object of mass $M + m$ that has the same momentum as the bullet, in the $x$ direction, before the pendulum starts to swing upwards.
+ The pendulum with the embedded bullet swings upwards until its kinetic energy is zero.

The collision between the bullet and pendulum is inelastic, because some of the kinetic energy of the bullet is used to deform the bullet and the pendulum. In general, any collision where two objects end up "stuck together" is inelastic.

In order to model the pendulum's motion we first apply conservation of momentum to determine the speed, $v '$, of the pendulum and embedded bullet just after the collision. Applying conservation of momentum in the $x$ direction to the system formed by the pendulum and the bullet, just before and after the collision, we have:

$ P & = m v \
P ' & =(M + m) v ' \
therefore m v & =(M + m) v ' \
therefore v ' & = frac(m, m + M) v $
where $P$ and $P '$ are the initial and final momenta of the system, respectively. The pendulum with the bullet embedded in it will thus have a speed of $v '$ at the bottom of the pendulum's motion, before it swings upwards.

We can now use conservation of energy to model the swinging motion since, at that point, only tension and gravity act on the pendulum, and there are no non-conservative forces. If we choose the origin to be the location of the pendulum at the bottom of its trajectory, its initial gravitational potential energy is zero and its initial mechanical energy, $E$, is given by:

$ E = frac(1, 2)(m + M) v '^2 $
At the top of the trajectory, the pendulum with the embedded bullet will stop and have no kinetic energy. The mechanical energy at the top of the trajectory, $E '$, is thus equal to the gravitational potential energy of the pendulum at a height $h$ above the origin:

$ E ' =(m + M) g h $
Applying conservation of mechanical energy allows us to find the initial speed of the bullet:

$ E & = E ' \
frac(1, 2)(m + M) v '^2 & =(m + M) g h \
v '^2 & = 2 g h \
(frac(m, m + M) v)^2 & = 2 g h \
therefore v & = frac(m + M, m) sqrt(2 g h) $
where is the second last line we used the expression for $v '$ that we obtained from conservation of momentum.

\*\*Discussion: \*\*This example showed a situation in which momentum and energy were both conserved, but not at the same time. This example also highlighted how, by using conservation laws, one can derive models that are much easier to solve mathematically than if one had to model all of the forces involved.
]

#noteBlock(heading: [Solution 4.2])[
The collision is elastic because the energy used to compress the spring is "given back" when the spring extends again, since the spring force is conservative.

They key to modelling the compression of the spring is to identify the condition under which the spring is maximally compressed. This will occur at the point during the collision where the two masses will have exactly the same velocity, momentarily moving in unison as the spring is maximally compressed. Because, instantaneously, the masses have the same velocity, there is a frame of reference in which the two masses are at rest, and the momentum is zero. Of course, that frame of reference is the centre of mass frame of reference.

Because the collision is one-dimensional, we can calculate the velocity of the centre of mass as:

$ v_(C M) = frac(M v_M + m v_m, m + M) $
where we note that $v_m$ is a negative number, since the block of mass $m$ is moving in the negative $x$ direction. The total momentum, $arrow(P)^(C M)$, in the centre of mass frame of reference must be zero. Writing this out for the $x$ component and transforming the velocities of the two blocks into the centre of mass frame of reference:

$ P^(C M)_x = M(v_M -v_(C M)) + m(v_m -v_(C M)) & = 0 \
therefore(v_m -v_(C M)) & = -frac(M, m)(v_M -v_(C M)) $
Also note that we can write the velocity difference $v_M -v_(C M)$ without using the centre of mass velocity:

$ v_M -v_(C M) & = v_M -frac(M v_M + m v_m, m + M) = frac(1, m + M)(v_M (m + M) -M v_M -m v_m) \
& = frac(m, m + M)(v_M -v_m) $
We can then use conservation of energy in the centre of mass frame to determine the maximal compression of the spring. Before the collision, the total mechanical energy in the system, $E$, is the sum of the kinetic energies of the two blocks (as the spring is not compressed):

$ E & = frac(1, 2) m(v_m -v_(C M))^2 + frac(1, 2) M(v_M -v_(C M))^2 \
& = frac(1, 2) frac(M^2, m)(v_M -v_(C M))^2 + frac(1, 2) M(v_M -v_(C M))^2 \
& = frac(1, 2) M(1 + frac(M, m))(v_M -v_(C M))^2 \
& = frac(1, 2) M(frac(m + M, m))(v_M -v_(C M))^2 \
& = frac(1, 2) M(frac(m + M, m))(frac(m, m + M)(v_M -v_m))^2 \
& = frac(1, 2)(frac(m M, m + M))(v_M -v_m)^2 $
where we used our expressions above to simplify the expression. When the spring is maximally compressed, the two blocks are at rest and the mechanical energy of the system, $E '$, is all "stored" as spring potential energy:

$ E ' & = frac(1, 2) k x^2 $
where $x$ is the distance by which the spring is compressed. Equating the two allows us to determine the maximal compression of the spring:

$ E & = E ' \
frac(1, 2)(frac(m M, m + M))(v_M -v_m)^2 & = frac(1, 2) k x^2 \
therefore x & = sqrt(frac(1, k)(frac(m M, m + M)))(v_M -v_m) $
*Discussion:* By modelling the collision in the centre of mass frame of reference, we were easily able to determine the maximal compression of the spring. This would have been more difficult in the lab frame of reference, because the two blocks would still be moving when the spring is maximally compressed, so we would have needed to determine their speeds to determine the total mechanical energy when the spring is compressed.

When we calculated the initial kinetic energy, we found that it was given by:

$ E = frac(1, 2)(frac(m M, m + M))(v_M -v_m)^2 & = frac(1, 2) M_(r e d)(v_M -v_m)^2 $
The combination of masses in parentheses is called the "reduced mass" of the system, and is a sort of effective mass that can be used to model the system as a whole.
]

#noteBlock(heading: [Solution 4.3])[
The curved wire is illustrated in @fig:momentumandcm:curvedwire, along with a small mass element, $d m$, on the wire, and our choice of coordinate system (centred at the centre of the semi-circle). By symmetry, the position of the centre of mass will be located at $x = 0$, so we only need to determine the $y$ position.

#show figure: set block(breakable: true)
#figure(
  image("files/curvedwire-99d938f2b3157166a4be5707dd9ea5b3.png", width: 40%),
  caption: [
A uniform wire bent into a semi circle of radius $R$, and a small mass element, $d m$, on the wire.
],
  kind: "figure",
  supplement: [Figure],
) <fig:momentumandcm:curvedwire>

The $y$ position of the centre of mass is given by:

$ y_(C M) = frac(1, M) integral y d m $
where $M$ is the total mass of the wire. We can define the mass per unit length, $lambda$, for the wire as:

$ lambda = frac(M, pi R) $
We will choose to integrate the equation for the $y$ position of the centre of mass over $theta$ (from 0 to $pi$), instead of over $y$, as it will make the integral easier (it is easier to express $d m$ in terms of $d theta$ than $d y$ because the wire is curved). $theta$ is the angle at which the mass element is located. The mass element forms an arc on the wire of length $d s$ that subtends an angle $d theta$. The two are related by:

$ d s = R d theta $
The mass element, $d m$, can then be expressed in terms of the mass per unit length of the wire and the length, $R d theta$, of the mass element:

$ d m = lambda d s = lambda R d theta $
We also need to express the $y$ position of the mass element using $theta$:

$ y = R sin theta $
Now that we have expressed $d m$ and $y$ in terms of $theta$, we can determine the $y$ position of the centre of mass:

$ y_(C M) & = frac(1, M) integral y d m = frac(1, M) integral_0^pi R sin theta lambda R d theta \
& = frac(R^2 lambda, M) integral_0^pi sin theta d theta = frac(R^2 lambda, M) bigl [ -cos theta bigr ]_0^pi \
& = frac(2 R^2 lambda, M) = frac(2 R, pi) $
where in the last equality, we used the expression for the mass per unit length, $lambda$, obtained above.
]