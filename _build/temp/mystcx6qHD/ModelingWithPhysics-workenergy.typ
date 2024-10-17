/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 7 - Work and energy

=== Overview <chap:workenergy>

In this chapter, we introduce a new way to build models derived from Newton's theory of classical physics. We will introduce the concepts of work and energy, which will allow us to model situations using scalar quantities, such as energy, instead of vector quantities, such as forces. It is important to remember that even when we are using energy and work, these tools are derived from Newton's Laws; that is, we may not be using Newton's Second Law explicitly, but the models that we develop are still based on the same theory of classical physics.

#hintBlock(heading: [Learning Objectives])[
- Understand the concept of work and how to calculate the work done by a force.
- Understand the concept of the net work done on an object and how that relates to a change in speed of the object.
- Understand the concept of kinetic energy and where it comes from.
- Understand the concept of power.
]

#noteBlock(heading: [Think About It])[
You are holding a heavy book with your arm extended horizontally. The book does not move as you struggle to keep it from falling to the ground. Does your arm do work on the book? If you start walking to class while holding the book, does your arm do work on the book?

#noteBlock(heading: [Answer])[
Your arms do no work on the book. There is no displacement (the book does not move up or down), so you do no work, even if its tiring! If you are walking, the displacement is perpendicular to the force applied by your arms, your arms do no work.
]
]

=== Work <work>

#cautionBlock(heading: [Review])[
- #link("/vectors\#sec-vectors-scalarproduct")[Section 3.4.3] on the scalar product.
- #link("/calculus\#sec-calculus-integrals")[Appendix 1.4] on integrals.
]

We introduce the concept of work as the starting point for building models using energy instead of forces. Work is a scalar quantity that is meant to represent how a force exerted on an object over a given distance results in a change in speed of that object. We will first introduce the concept of work done by a force on an object, and then look at how work can change the kinematics of the object. This is analogous to how we first defined the concept of force, and then looked at how force affects motion (by using Newton's Second Law, which connected the concept of force to the acceleration of the object).

The work done by a force, $arrow(F)$, on an object over a displacement, $arrow(d)$, is defined to be:

$ boxed W = arrow(F) dot.op arrow(d) = F d cos theta = F_x d_x + F_y d_y + F_z d_z $
where $theta$ is the angle between the vectors when they are placed tail to tail, as in @fig:workenergy:fddotproduct. The dimension of work, force times displacement, is also called "energy". The S.I. unit for energy is the Joule (abbreviated $"J"$) which is equivalent to $"Nm"$ or $upright k g m^2 \/ s^2$ in base units.

#show figure: set block(breakable: true)
#figure(
  image("files/fddotproduct-49904090da9ae6fe24ebcc94657f47b1.png", width: 30%),
  caption: [
When determining the scalar product $arrow(F) dot.op arrow(d) = F d cos theta$, $theta$ is the angle between the vectors when they are placed tail to tail.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:fddotproduct>

The work "done" by the force is the scalar product of the force vector and the displacement vector of the object. We say that the force "does work" if it is exerted while the object moves (has a displacement vector) and in such a way that the scalar product of the force and displacement vectors is non-zero. A force that is perpendicular to the displacement vector of an object does no work (since the scalar product of two perpendicular vectors is zero).  A force exerted in the same direction as the displacement will do positive work ($cos theta$ positive), and a force in the opposite direction of the displacement will do negative work ($cos theta$ negative). As we will see, positive work corresponds to increasing the speed of the object, whereas negative work corresponds to decreasing its speed. No work corresponds to no change in speed (but could corresponds to a change in velocity).

#tipBlock(heading: [Checkpoint])[
A pendulum of length $R$ consists of a mass connected to a string (@fig:workenergy:pendulumtension). The string exerts a force of tension $arrow(F)_T$ on the mass. What is the work done by tension when the pendulum swings through an angle $theta$?

#show figure: set block(breakable: true)
#figure(
  image("files/pendulumworktension-a90b632f802628285c5f3f9cc394dcae.png", width: 20%),
  caption: [
A pendulum swings through an angle $theta$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:pendulumtension>

+ $W = F_T R theta$
+ $W = F_T R(1 -cos theta)$
+ Tension does no work on the mass.

#tipBlock(heading: [Answer])[
+
]
]

You may be tempted to ask, "Why work? Why not something else? Why that scalar product in particular? How could we possibly have thought of that?". In general, it seems arbitrary that we introduce the quantity "work" and then find that it leads to a convenient way of building models. However, we did not just pull this quantity out of thin air! Many theorists, over many years, tried all sorts of quantities and ways to rephrase Newton's Theory that were not helpful. The quantities that make it into textbooks are the ones that turned out to be useful. You should also keep in mind that, just like force, work is a "made-up" mathematical tool that is helpful in describing the world around us. There is no such thing as work or energy; they are just useful mathematical tools.

==== Work in one dimension. <work-in-one-dimension>

Work involves vectors, so we can first examine the concept in one dimension, before extending this to two and three dimensions. We can choose $x$ as the coordinate in one dimension, so that all vectors only have an $x$ component. We can write a force vector as $arrow(F) = F hat(x)$, where $F$ is the $x$ component of the force (which could be positive or negative). A displacement vector can be written as $arrow(d) = d hat(x)$, where again, $d$ is the $x$ component of the displacement, and can be positive or negative. In one dimension, work is thus:

$ W = arrow(F) dot.op arrow(d) =(F hat(x)) dot.op(d hat(x)) = F d(hat(x) dot.op hat(x)) = F d $
where $hat(x) dot.op hat(x) = 1$. Consider, for example, the work done by a force, $arrow(F)$, on a box, as the box moves along the $x$ axis from position $x = x_0$ to position $x = x_1$, as shown in @fig:workenergy:work1d.

#show figure: set block(breakable: true)
#figure(
  image("files/work1d-0daf97b5d5589ef1f3195ed30fc5eb42.png", width: 40%),
  caption: [
A force, $arrow(F)$, exerted on an object as it moves from position $x = x_0$ to position $x = x_1$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:work1d>

We can write the length of the displacement vector as $| | arrow(d) | | = d = Delta x = x_1 -x_0$. The work done by the force is given by:

$ W = arrow(F) dot.op arrow(d) = F hat(x) dot.op Delta x hat(x) = F Delta x = F(x_1 -x_0) $
which is a positive quantity, since $x_1 > x_0$, with our choice of coordinate system.

#tipBlock(heading: [Checkpoint])[
A constant force in the positive $x$ direction, $arrow(F)$, acts on a box, as in @fig:workenergy:work1d. Consider the work done by $arrow(F)$ as the box moves from $x_1$ to $x_0$. How does it compare to the work done by $arrow(F)$ when moving from $x_0$ to $x_1$ (that we calculated above)?

+ $arrow(F)$ does no work on the box when it moves from $x_0$ to $x_1$.
+ The work has the same magnitude as before, but the work is now negative.
+ The work done by $arrow(F)$ is the same in both cases.

#tipBlock(heading: [Answer])[
+
]
]

==== Work in one dimension - varying force <work-in-one-dimension-varying-force>

Suppose that instead of a constant force, $arrow(F)$, we have a force that changes with position, $arrow(F)(x)$, and can take on three different values between $x = x_0$ and $x = x_3$:

$ arrow(F)(x) = $
as illustrated in @fig:workenergy:work1d, which shows the force on an object as it moves from position $x = x_0$ to position $x = x_3$, along three (equal) displacement vectors, $arrow(d)_1 = arrow(d)_2 = arrow(d)_3 = Delta x hat(x)$.

#show figure: set block(breakable: true)
#figure(
  image("files/work1dvarying-1dbde50e5bef34689b7c939f0392c213.png", width: 70%),
  caption: [
A varying force, $arrow(F)(x)$, exerted on an object as it moves from position $x = x_0$ to position $x = x_3$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:work1dvarying>

The total work done by the force over the three separate displacements is the sum of the work done over each displacement:

$ W^(t o t) & = W_1 + W_2 + W_3 \
& = arrow(F)_1 dot.op arrow(d)_1 + arrow(F)_2 dot.op arrow(d)_2 + arrow(F)_3 dot.op arrow(d)_3 \
& = F_1 Delta x + F_2 Delta x + F_3 Delta x $
If instead of 3 segments we had $N$ segments and the $x$ component of the force had the $N$ corresponding values $F_i$ in the $N$ segments, the total work done by the force would be:

$ W^(t o t) = sum_(i = 0)^N arrow(F)_i dot.op Delta arrow(x) $
where we introduced a vector $Delta arrow(x)$ to be the vector of length $Delta x$ pointing in the positive $x$ direction. In the limit where $arrow(F)(x)$ changes continuously as a function of position, we take the limit of an infinite number of infinitely small segments of length $d x$, and the sum becomes an integral:

$ boxed W^(t o t) = integral_(x_0)^(x_f) arrow(F)(x) dot.op d arrow(x) $
where the work was calculated in going from $x = x_0$ to $x = x_f$, and $d arrow(x) = d x hat(x)$ is an infinitely small displacement vector (of length $d x$) in the positive $x$ direction.

#noteBlock(heading: [Example 7.1])[
A block is pressed against the free end of a horizontal spring with spring constant, $k$, so as to compress the spring by a distance $D$ relative to its rest length, as shown in @fig:workenergy:spring. The other end of the spring is fixed to a wall. What is the work done by the spring force on the block in going from $x = -D$ to $x = 0$? What is the work done by the block on the spring over the same displacement?

#show figure: set block(breakable: true)
#figure(
  image("files/spring-fb0b7b45895ba1ffc941557cc6a32aee.png", width: 40%),
  caption: [
A block is pressed against a horizontal spring so as to compress the spring by a distance $D$ relative to its rest length.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:spring>

#noteBlock(heading: [Solution])[
The force exerted by the spring on the block changes continuously with position, according to Hooke's law:

$ arrow(F)(x) = -k x hat(x) $
and points in the positive $x$ direction when the end of the spring has a negative $x$ position (with our coordinate choice illustrated in @fig:workenergy:spring, where the origin is located at the rest length of the spring). To calculate the work done by the force, we sum the work done by the force over many infinitesimally small displacements $d arrow(x)$ (using an integral):

$ W & = integral_(-D)^0 arrow(F)(x) dot.op d arrow(x) \
& = integral_(-D)^0 (-k x hat(x)) dot.op(d x hat(x)) \
& = integral_(-D)^0 -k x d x(hat(x) dot.op hat(x)) \
& = -integral_(-D)^0 k x d x \
& = -[ frac(1, 2) k x^2 ]_(-D)^0 \
& = frac(1, 2) k D^2 $
In order to determine the work that was done by the block on the spring, we need to determine the force, $arrow(F) '(x)$, exerted by the block on the spring. By Newton's Third Law, this is equal in magnitude but opposite in direction to the force exerted by the spring on the block:

$ arrow(F) '(x) = -arrow(F)(x) = k x hat(x) $
The work done by the block on the spring over the same displacement is:

$ W ' & = integral_(-D)^0 arrow(F) '(x) dot.op d arrow(x) \
& = integral_(-D)^0 (k x hat(x)) dot.op(d x hat(x)) \
& = integral_(-D)^0 k x d x = -frac(1, 2) k D^2 \
 $
which is negative. This makes sense because the force exerted by the block on the spring is in the direction opposite to the direction of displacement, so the work should be negative.
]
]

==== Work in multiple dimensions <work-in-multiple-dimensions>

First, consider the work done by a force $arrow(F)$ in pulling a crate over a displacement $arrow(d)$, in the case where the force is directed at an angle $theta$ above the horizontal, as shown in @fig:workenergy:workangle, and the displacement is along the $x$ axis (or rather, we chose the $x$ axis to be parallel to the displacement).

#show figure: set block(breakable: true)
#figure(
  image("files/workangle-c0fee3c95b822c28de3d889be8fac4c3.png", width: 50%),
  caption: [
A force, $arrow(F)$, exerted on an object as it moves from position $x = x_0$ to position $x = x_1$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:workangle>

The work done by the force is given by:

$ W = arrow(F) dot.op arrow(d) & = F d cos theta \
& = F_parallel d \
& = F d_parallel \
 $
where we highlighted the fact that the scalar product "picks out" components of vectors that are parallel to each other. $F_parallel = F cos theta$ is the component of $arrow(F)$ that is parallel to $arrow(d)$, and $d_parallel = d cos theta$ is the component of $arrow(d)$ that is parallel to $arrow(F)$. These are also shown in @fig:workenergy:workangle.

#tipBlock(heading: [Checkpoint])[
Brent and Dean pull two crates by using ropes that make the same angle above the horizontal and with the same force. The magnitude of the crates' displacement is the same, but Dean's crate moves horizontally on the ground while Brent's crate moves up a frictionless ramp that is parallel to the rope used to pull the crate. Who did more work on the crate?

+ Dean because there is friction between his crate and the ground.
+ Brent.
+ They did the same amount of work.

#tipBlock(heading: [Answer])[
+
]
]

In general, if an object is moving along an arbitrary path, we cannot choose the $x$ axis to be parallel to the displacement or to the force. If the path can be sub-divided into straight segments over which the force is constant, as in @fig:workenergy:work2d, we can calculate the work done by the force over each segment and add the work done in each segment together to obtain the total work done by the force. Note that, in general, the work done by a force as an object moves from one position to another depends on the particular path that was taken between the two positions, since different paths will have difference lengths.

#show figure: set block(breakable: true)
#figure(
  image("files/work2d-99959f9f04f1f717440b6952780f6dab.png", width: 40%),
  caption: [
An arbitrary two dimensional path of an object from $A$ to $B$ broken into three straight segments.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:work2d>

#noteBlock(heading: [Example 7.2])[
Compare the work done by the force of kinetic friction in sliding a crate along a horizontal surface from position $A$ (coordinates $x_A, y_A$) to position $B$ (coordinates $x_B, y_B$) using the two different paths depicted in @fig:workenergy:workfriction. Assume that the mass of the crate is $m$ and that the coefficient of kinetic friction between the crate and the ground is $mu_k$.

#show figure: set block(breakable: true)
#figure(
  image("files/workfriction-1b84b5d4fa9b153b71a19e4b88afa5dc.png", width: 40%),
  caption: [
Two possible paths to slide a crate from position $A$ to position $B$, as seen from above.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:workfriction>

#noteBlock(heading: [Solution])[
The force of kinetic friction is always in the direction opposite to that of motion. Thus, regardless of the path taken, the force of friction will do negative work.

Let us first calculate the work done by the force of kinetic friction along the first path (the straight line). The force of kinetic friction will have a magnitude:

$ f_k = mu_k N = mu_k m g $
The normal force will have the same magnitude as the weight because the crate is not moving (accelerating) in the direction perpendicular to the $x y$ plane.  The displacement vector from $A$ to $B$ can be written as:

$ arrow(d) & =(x_B -x_A) hat(x) +(y_B -y_A) hat(y) \
therefore | | arrow(d) | | & = d = sqrt((x_B -x_A)^2 +(y_B -y_A)^2) $
The force of kinetic friction will be in the opposite direction of the displacement vector, so the angle between the two vectors is $1 8 0 upright degree$ ($cos theta = -1$). The work done by the force of kinetic friction is thus:

$ W = arrow(f)_k dot.op arrow(d) = f_k d cos theta = -mu_k m g sqrt((x_B -x_A)^2 +(y_B -y_A)^2) $
and is negative, as expected.

For path 2, we break up the motion into two segments, with displacements vectors $arrow(d)_1$ (along $y$) and $arrow(d)_2$ (along $x$). We can write the two displacement vectors as:

$ arrow(d)_1 & = 0 hat(x) +(y_B -y_A) hat(y) \
therefore | | arrow(d)_1 | | & = d_1 =(y_B -y_A) \
arrow(d)_2 & =(x_B -x_A) hat(x) + 0 hat(y) \
therefore | | arrow(d)_2 | | & = d_2 =(x_B -x_A) \
 $
Along each segment, the force of kinetic friction is anti-parallel to the displacement (note that the force of friction changes direction over the two segments), but the magnitude is $f_k = mu_k m g$. The work done along the first segment is thus:

$ W_1 = arrow(f)_k dot.op arrow(d)_1 = f_k d_1 cos theta = -mu_k m g(y_B -y_A) $
The work done along the second segment is:

$ W_2 = arrow(f)_k dot.op arrow(d)_2 = f_k d_2 cos theta = -mu_k m g(x_B -x_A) $
And the total work done by the force of kinetic friction over the second path is:

$ W^(t o t) = W_1 + W_2 = -mu_k m g((x_B -x_A) +(y_B -y_A)) $
which is more work than was done along path 1. This makes sense because for both paths, the force of friction has the same magnitude and is always in the opposite direction of motion; thus, the longer the path, the more work will be done by the force.
]
]

#noteBlock(heading: [Example 7.3])[
A box of mass $m$ is moved from the floor onto a table using two different paths, as shown in @fig:workenergy:workgravity. The table is a horizontal distance $L$ away from where the box starts and a height $H$ above the floor. Compare the work done by the weight of the box along the two possible paths.

#show figure: set block(breakable: true)
#figure(
  image("files/workgravity-875d9fb31a6236f7fd29d3cb33642cbf.png", width: 50%),
  caption: [
Two possible paths to move a box from the floor onto a table.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:workgravity>

#noteBlock(heading: [Solution])[
We can use a coordinate system such that the origin coincides with the initial position of the box. $x$ is horizontal and $y$ is vertical, as shown in @fig:workenergy:workgravity. The weight of the box can be written as:

$ arrow(F)_g = -m g hat(y) $
and points in the negative $y$ direction with a magnitude of $m g$. To calculate the work done by the weight along the first path, we first determine the corresponding displacement vector, $arrow(d)$:

$ arrow(d) = L hat(x) + H hat(y) $
and we can then determine the work:

$ W & = arrow(F)_g dot.op arrow(d) =(-m g hat(y)) dot.op(L hat(x) + H hat(y)) \
& = F_x d_x + F_y d_y =(0)(L) +(-m g)(H) \
& = -m g H $
Along path 1, the work done by the weight is negative, and does not depend on the horizontal distance $L$. Let us now calculate the work done along the second path, which we break up into two segments with displacement vectors $arrow(d)_1$ (vertical) and $arrow(d)_2$ (horizontal). The displacement vectors are:

$ arrow(d)_1 & = H hat(y) \
arrow(d)_2 & = L hat(x) $
The work done along the vertical segment is:

$ W_1 & = arrow(F)_g dot.op arrow(d)_1 =(-m g hat(y)) dot.op(H hat(y)) \
& = -m g H $
The work done along the horizontal segment is:

$ W_2 & = arrow(F)_g dot.op arrow(d)_2 =(-m g hat(y)) dot.op(L hat(x)) \
& = 0 $
which is zero, because the force of gravity is always vertical and thus perpendicular to the displacement vector of the horizontal segment. The total work done by the weight along the second path is:

$ W^(t o t) = W_1 + W_2 = -m g H $
which is the same as the work done along path 1. As we will see, when a force is constant in magnitude and direction, the work that it does on an object in going from one position to another is independent of the path taken. This was not the case in @ex:workenergy:workfriction, because the direction of the force of kinetic friction depends on the direction of the displacement.
]
]

#tipBlock(heading: [Checkpoint])[
Clare and Amelia go down two different slides, as shown in @fig:workenergy:slidecheckpoint. Clare and Amelia have the same mass and the slides have the same non-zero coefficients of friction.

#show figure: set block(breakable: true)
#figure(
  image("files/slidecheckpoint-00df72a2d5b8afc63acc302203ecce5c.png", width: 50%),
  caption: [
Clare ($C$) and Amelia ($A$) go down two different slides of the same height.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:slidecheckpoint>

For each of the following forces, decide whether the force: does more work on Clare, does more work on Amelia, or does the same amount of work on both.

+ The force of gravity...
+ The force of friction...
+ The normal force from the slide...

#tipBlock(heading: [Answer])[
Gravity does the same amount of work on both, friction does more work on Amelia, and the normal force does the same amount of work on both (the normal force does zero work, since it is always perpendicular to the displacement).
]
]

The most general case for which we can calculate the work done by a force is the case when the force changes continuously along a path where the displacement also changes direction continuously. This is illustrated in @fig:workenergy:workgeneral which shows an arbitrary path between two points $A$ and $B$, and a force, $arrow(F)(arrow(r))$, that depends on position ($arrow(r)$). In general, the work done by the force on an object that goes from $A$ to $B$ will depend on the actual path that was taken.

#show figure: set block(breakable: true)
#figure(
  image("files/workgeneral-84453b5d1021cea1e90c769f48cf81a0.png", width: 50%),
  caption: [
An arbitrary path between two points $A$ and $B$ with a force that depends on position, $arrow(F)(arrow(r))$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:workgeneral>

The strategy for calculating the work in the general case is the same: we break up the path into small straight segments with displacement vectors $d arrow(l)$ (@fig:workenergy:dldiagram) where we assume that the force is constant over the segment. The total work is the sum of the work over each segment:

$ boxed W = integral_A^B arrow(F)(arrow(r)) dot.op d arrow(l) $
As usual, we use the integral symbol to indicate that you need to take an infinite number of infinitely small segments $d arrow(l)$ in order to calculate the sum.

#show figure: set block(breakable: true)
#figure(
  image("files/elementoflengthdl-6ada5f90333a0876a91e3ab41ee39190.png", width: 30%),
  caption: [
We divide the path into infinitesimally small segments with displacement vectors $d arrow(l)$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:dldiagram>

You should note that this is not an integral like any other that we have seen so far: the integral is not over a single integration variable (usually we use $x$), but it is the integral (the sum!) over the specific path that we have chosen in going from $A$ to $B$. This is called a "path integral", and is generally difficult to evaluate.

#noteBlock(heading: [Example 7.4])[
#show figure: set block(breakable: true)
#figure(
  image("files/workparabola-d0ed2175e176574cb5fbc15b4d5a2c74.png", width: 40%),
  caption: [
A parabolic path between $A$ and $B$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:workparabola>

A force, $arrow(F)(arrow(r)) = arrow(F)(x, y) = F_x hat(x) + F_y hat(y)$,  is exerted on an object. The object starts at position $A$ and ends at position $B$, along a parabolic path, $y(x) = a + b x^2$, as depicted in @fig:workenergy:workparabola. What is the work done by the force, $arrow(F)$, along this trajectory?

#noteBlock(heading: [Solution])[
In this case, the force can change with position (if $F_x$ and $F_y$ are not constant), and the direction of the path changes continuously. When we break up the path into small segments $d arrow(l)$, we need to incorporate the equation of the parabola to include the fact that $d arrow(l)$ must always be tangent to the parabola. Consider one small segment along the trajectory and the infinitesimal displacement vector $d arrow(l)$ at that point, as in @fig:workenergy:workparabola_dr.

#show figure: set block(breakable: true)
#figure(
  image("files/workparabola_dr-759577de91b461f1c08d0dda81a7adc9.png", width: 30%),
  caption: [
The infinitesimal displacement vector, $d arrow(l)$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:workparabola_dr>

We can write the $x$ and $y$ components of the vector as infinitesimal distances, $d x$ and $d y$, along the $x$ and $y$ axes, respectively. The vector $d arrow(l)$ can thus be written:

$ d arrow(l) = d x hat(x) + d y hat(y) $
The total work done by the force is then:

$ W & = integral_A^B arrow(F)(arrow(r)) dot.op d arrow(l) \
& = integral_A^B (F_x hat(x) + F_y hat(y)) dot.op(d x hat(x) + d y hat(y)) \
& = integral_A^B (F_x d x + F_y d y) \
therefore W & = integral_A^B F_x d x + integral_A^B F_y d y $
where in the last line, we simply used the property that the integral of a sum is the sum of the corresponding integrals. At this point, we have two integrals over integration variables ($x$ and $y$) that are meaningful. However, we have not yet used the fact that our path is a parabola, and in general, we expect that the shape of the path is important. By saying that we are integrating (or calculating the work) over a specific path, we are really saying that $x$ and $y$ are not independent; that is, if we know the value of $x$ at some point on the path, we know the corresponding value of $y$ ($y = a + b x^2$).

Since $x$ and $y$ are not independent, we can use a "substitution of variables" in order to express $y$ in terms of $x$, and $d y$ in terms of $d x$:

$ y(x) & = a + b x^2 \
frac(d y, d x) & = 2 b x \
therefore d y & = 2 b x d x $
This allows us to convert the integral over $y$ to an integral over $x$, which also allows us to be explicit for the limits of the integral (in our example, the integral goes from $x = 0$ to $x = x_1$):

$ W & = integral_A^B F_x d x + integral_A^B F_y d y \
& = integral_0^(x_1) F_x d x + integral_0^(x_1) F_y (2 b x d x) \
& = integral_0^(x_1)(F_x + 2 b x F_y) d x $
where we would need to know how $F_x$ and $F_y$ depends on $x$ and $y$ in order to actually evaluate the integral.

For example, if the force were constant ($F_x$ and $F_y$ constant), then the work done along the parabolic path would be:

$ W & = integral_0^(x_1)(F_x + 2 b x F_y) d x \
& = [ F_x x + b F_y x^2 ]_0^(x_1) \
& = F_x x_1 + b F_y x_1^2 $
As we mentioned earlier, *if the force is constant in magnitude and direction*, then the work done is independent of path. We can easily check this, using the displacement vector $arrow(d) = x_1 hat(x) + b x_1^2 hat(y)$:

$ W & = arrow(F) dot.op arrow(d) =(F_x hat(x) + F_y hat(y)) dot.op(x_1 hat(x) + b x_1^2 hat(y)) \
& = F_x x_1 + b F_y x_1^2 $
as we found above.
]
]

==== Net work done <net-work-done>

So far, we have considered the work done on an object by a single force. If more than one force is exerted on an object, then each force can do work on the object, and we can calculate the "net work" done on the object by adding together the work done by each force. We will show that this is equivalent to first calculating the net force on the object, $F^(n e t)$ (i.e. the vector sum of the forces on the object), and then calculating the work done by the net force.

Suppose that three forces, $arrow(F)_1$, $arrow(F)_2$, and $arrow(F)_3$ are exerted on an object as it moves such that its displacement vector is $arrow(d)$. The net work done on the object is easily shown to be equivalent to the work done by the net force::

$ W^(n e t) & = W_1 + W_2 + W_3 \
& = arrow(F)_1 dot.op arrow(d) + arrow(F)_2 dot.op arrow(d) + arrow(F)_3 dot.op arrow(d) \
& =(F_(1 x) d_x + F_(1 y) d_y + F_(1 z) d_z) +(F_(2 x) d_x + F_(2 y) d_y + F_(2 z) d_z) +(F_(3 x) d_x + F_(3 y) d_y + F_(3 z) d_z) \
& =(F_(1 x) + F_(2 x) + F_(3 x)) d_x +(F_(1 y) + F_(2 y) + F_(3 y)) d_y +(F_(1 z) + F_(2 z) + F_(3 z)) d_z \
& = arrow(F)^(n e t) dot.op arrow(d) $
where $arrow(F)^(n e t) = arrow(F)_1 + arrow(F)_2 + arrow(F)_3$ is the net force. The result is easily generalized to any number of forces, including if those forces change as a function of position:

$ W^(n e t) = integral_A^B F^(n e t)(arrow(r)) dot.op d arrow(l) $
#noteBlock(heading: [Example 7.5])[
You push with an unknown horizontal force, $arrow(F)$, against a crate of mass $m$ that is located on an inclined plane that makes an angle $theta$ with respect to the horizontal, as shown in @fig:workenergy:workincline. The coefficient of kinetic friction between the crate and the incline is $mu_k$. You push in such a way that that crates moves at a constant speed up the incline. What is the net work done on the crate if it moves up the incline by a distance $d$?

#show figure: set block(breakable: true)
#figure(
  image("files/workincline-b98602f6e15a41e5f840950101a04e5d.png", width: 30%),
  caption: [
A crate being pushed up an incline.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:workincline>

#noteBlock(heading: [Solution])[
Although the answer may be obvious, let's go the long way about it and calculate the work done by each force, and then sum them together to get the total work done. We start by identifying the forces exerted on the crate:

+ $arrow(F)$, the applied force, of unknown magnitude, $arrow(F)$.
+ $arrow(F)_g$, the weight of the crate, with magnitude $m g$.
+ $arrow(N)$, a normal force exerted by the incline.
+ $arrow(f)_k$, a force of kinetic friction, with magnitude $mu_k N$, that points in the direction opposite of $arrow(d)$.

These are shown in the free-body diagram in @fig:workenergy:workincline_fbd, along with our choice of coordinate system, and the displacement vector.

#show figure: set block(breakable: true)
#figure(
  image("files/workincline_fbd-7b9ff640523ee3e98aa1d1557bc2919d.png", width: 30%),
  caption: [
Free-body diagram for the crate on the incline.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:workincline_fbd>

With our choice of coordinate system, the displacement vector is given by:

$ arrow(d) = d(cos theta hat(x) + sin theta hat(y)) $
Before calculating the work done by each force, we need to determine the magnitude of the normal force (and thus of the force of kinetic friction). Since the crate is moving at a constant velocity, its *acceleration is zero*, so the sum of the forces must be zero. Writing out the $y$ component of Newton's Second Law allows us to find the magnitude of the normal force:

$ sum F_y & = N cos theta -F_g -f_k sin theta = 0 \
therefore m g & = N cos theta -mu_k N sin theta = N(cos theta -mu_k sin theta) \
therefore N & = frac(m g, cos theta -mu_k sin theta) $
Writing out the $x$ component of Newton's Second Law allows us to find the magnitude of the unknown force $F$:

$ sum F_x & = F -N sin theta -f_k cos theta = 0 \
therefore F & = N sin theta + mu_k N cos theta = N(sin theta + mu_k cos theta) \
& = m g frac(sin theta + mu_k cos theta, cos theta -mu_k sin theta) $
We now proceed to calculate the work done by each force. The work done by the normal force is identically zero, since it is perpendicular to the displacement vector. The work done by the applied force, $arrow(F) = F hat(x)$, is:

$ W_F & = arrow(F) dot.op arrow(d) =(F hat(x)) dot.op(d(cos theta hat(x) + sin theta hat(y))) \
& = F d cos theta = m g frac(sin theta + mu_k cos theta, cos theta -mu_k sin theta) d cos theta $
The work done by the force of gravity, $arrow(F)_g = -m g hat(y)$, is:

$ W_g & = arrow(F)_g dot.op arrow(d) =(-m g hat(y)) dot.op(d(cos theta hat(x) + sin theta hat(y))) \
& = -m g d sin theta $
The work done by the force of friction, $arrow(f)_k$, noting that $arrow(f)_k$ and $arrow(d)$ are antiparallel:

$ W_f & = arrow(f)_k dot.op arrow(d) = -f_k d = -mu_k N d \
& = -mu_k frac(m g, cos theta -mu_k sin theta) d $
The net work done on the crate is thus:

$ W^(n e t) & = W_F + W_g + W_f \
& = m g frac(sin theta + mu_k cos theta, cos theta -mu_k sin theta) d cos theta -m g d sin theta -mu_k frac(m g, cos theta -mu_k sin theta) d \
& = m g d(frac(sin theta + mu_k cos theta, cos theta -mu_k sin theta) cos theta -sin theta -mu_k frac(1, cos theta -mu_k sin theta)) \
& = m g d(frac((sin theta + mu_k cos theta) cos theta -sin theta(cos theta -mu_k sin theta) -mu_k, cos theta -mu_k sin theta)) \
& = m g d(frac(sin theta cos theta + mu_k cos^2 theta -sin theta cos theta + mu_k sin^2 theta -mu_k, cos theta -mu_k sin theta)) \
& = m g d(frac(mu_k (cos^2 theta + sin^2 theta) -mu_k, cos theta -mu_k sin theta)) \
& = 0 $
where we used the fact that $cos^2 theta + sin^2 theta = 1$. Thus we find that the net work done on the crate is zero!

*Discussion:* Of course, this makes sense, because the net force on the crate is zero, since it is not accelerating, so the net work done is also zero. As a consequence, or rather, by construction, we have the condition that if the net work done on an object is zero, then that object does not accelerate. We thus have a scalar quantity (work) that can tell us something about whether an object is changing speed. In the next section, we introduce a new quantity, "kinetic energy", to describe how an object's speed changes when the net work done is not zero.
]
]

#attentionBlock(heading: [Olivia's Thoughts])[
Pay close attention to the words "on" and "by." There are a few things about this that can be tricky:

+ In @ex:workenergy:networkramp, we were asked to find the *net work* done *on* the crate. Sometimes, the question won't specify that it wants you to find the net work, and will just say "What is the work done *on* the crate?" When you are just asked for the work done "on" an object, the question is implicitly asking for the _net_ work done on the object.
+ Just because the net work done *on* an object is zero doesn't mean that the work done *by* each of the forces is zero. This may seem obvious, but it's easy to get tripped up on a test or exam. If you are reading a question about work and it says that the object is moving at a constant speed, it's tempting to just jump ahead and say that the work must be equal to zero. However, you can only say this if it's asking you for the net work done on the object. For instance, in @ex:workenergy:networkramp, we concluded that since the crate was moving at a constant speed, the net work was equal to zero. But if the question asked you to find the work done on the crate *by gravity*, that would mean something different. The work done *by gravity* in this case is not equal to zero (it's actually negative).
+ The work done "on" an object is not the same as the net work done "by" that object. For example, say you are in a tug-of-war and you pull the other team towards you, but you yourself do not move. The net work done *on* you is zero, but the work done *by* you is not zero. So, when you are talking about work, you should always state explicitly whether the work is being done "on" the object or "by" the object.

*Note*: The wording won't always be like this - sometimes it will say "How much work do you do on the box?" instead of "How much work is done *by* you on the box," so always be careful. Still, looking for key words like "by" and "on" is a good place to start.
]

#tipBlock(heading: [Checkpoint])[
A $2 upright k g$ box sits on a horizontal surface. A constant horizontal force of $6 upright N$ is applied to the box. The box moves with a constant acceleration of $2 upright m \/ s^2$. Which of the following has the greatest magnitude?

+ The work done by the applied force.
+ The work done by friction.
+ The net work done on the box.

#tipBlock(heading: [Answer])[
+
]
]

=== Kinetic energy and the work energy theorem <sec:workenergy:kinetic>

At this point, you should be comfortable calculating the net work done on an object upon which several forces are exerted. As we saw in the previous section, the net work done on an object is connected to the object's acceleration; if the net force on the object is zero, then the net work done and acceleration are also zero. In this section, we derive a new quantity, kinetic energy, which allows us to connect the work done on an object with its change in speed. This will allow us to describe motion using only scalar quantities. Like the definition of work, the following derivation appears to "come out of thin air". Remember, though, that theorists have tried all sorts of mathematical tricks to reformulate Newton's Theory, and this is the one that worked.

Consider the most general case of an object of mass $m$ acted upon by a net force, $arrow(F)^(n e t)(arrow(r))$, which can vary in magnitude and direction. We wish to calculate the  net work done on the object as it moves along an arbitrary path between two points, $A$ and $B$, in space, as shown in @fig:workenergy:kepath. The instantaneous acceleration of the object, $arrow(a)$, is shown along with an "element of the path", $d arrow(l)$.

#show figure: set block(breakable: true)
#figure(
  image("files/kepath-c0a19725a0d065d2bda035ac72018b9c.png", width: 40%),
  caption: [
An object moving along an arbitrary path between points $A$ and $B$ that is acted upon by a net force $arrow(F)^(n e t)$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:kepath>

The net work done on the object can be written:

$ W^(n e t) = integral_A^B F^(n e t)(arrow(r)) dot.op d arrow(l) $
and is in general a difficult integral to evaluate for an arbitrary path. Our goal is to find a way to evaluate this integral by finding a function, $K$, with the property that:

$ integral_A^B F^(n e t)(arrow(r)) dot.op d arrow(l) = K_B -K_A $
That is, we will only have to evaluate $K$ at the end points of the path in order to determine the value of the integral. In this way, the function $K$ is akin to an anti-derivative.

In order to determine the form for the function $K$, we start by noting that, by using Newton's Second Law, we can write the integral for work in terms of the acceleration of the object:

$ sum arrow(F) & = arrow(F)^(n e t) = m arrow(a) \
therefore integral_A^B F^(n e t)(arrow(r)) dot.op d arrow(l) & = integral_A^B m arrow(a) dot.op d arrow(l) = m integral_A^B arrow(a) dot.op d arrow(l) $
where we assumed that the mass of the object does not change along the path and can thus be factored out of the integral. Consider the scalar product of the acceleration, $arrow(a)$, and the path element, $d arrow(l) = d x hat(x) + d y hat(y) + d z hat(z)$, written in terms of the velocity vector:

$ arrow(a) & = frac(d arrow(v), d t) \
therefore arrow(a) dot.op d arrow(l) & = frac(d arrow(v), d t) dot.op d arrow(l) \
& =(frac(d v_x, d t) hat(x) + frac(d v_y, d t) hat(y) + frac(d v_z, d t) hat(z)) dot.op(d x hat(x) + d y hat(y) + d z hat(z)) \
& = frac(d v_x, d t) d x + frac(d v_y, d t) d y + frac(d v_z, d t) d z $
Any of the terms in the sum can be re-arranged so that the time derivative acts on the element of path ($d x$, $d y$, or $d z$) instead of the velocity, for example:

$ frac(d v_x, d t) d x = frac(d x, d t) d v_x $
where we recognize that $frac(d x, d t) = v_x$. We can thus write the scalar product between the acceleration vector and the path element as:

$ arrow(a) dot.op d arrow(l) & = frac(d v_x, d t) d x + frac(d v_y, d t) d y + frac(d v_z, d t) d z \
& = frac(d x, d t) d v_x + frac(d y, d t) d v_y + frac(d z, d t) d v_z \
& = v_x d v_x + v_y d v_y + v_z d v_z $
The integral for the net work done can be written as:

$ W^(n e t) & = integral_A^B F^(n e t)(arrow(r)) dot.op d arrow(l) = m integral_A^B (v_x d v_x + v_y d v_y + v_z d v_z) \
& = m integral_A^B v_x d v_x + m integral_A^B v_y d v_y + m integral_A^B v_z d v_z $
which corresponds to the sum of three integrals over the three independent components of the velocity vector. The components of the velocity vector are functions that change over the path and have fixed values at either end of the path. Let the velocity vector of the object at point $A$ be $arrow(v)_A =(v_(A x), v_(A y), v_(A z))$ and the velocity vector at point $B$ be $arrow(v)_B =(v_(B x), v_(B y), v_(B z))$. The integral over, say, the $x$ component of velocity is then:

$ m integral_A^B v_x d v_x & = m integral_(v_(A x))^(v_(B x)) v_x d v_x = m [ frac(1, 2) v_x^2 ]_(v_(A x))^(v_(B x)) \
& = frac(1, 2) m(v_(B x)^2 -v_(A x)^2) $
We can thus write the net work integral as:

$ W^(n e t) & = m integral_A^B v_x d v_x + m integral_A^B v_y d v_y + m integral_A^B v_z d v_z \
& = frac(1, 2) m(v_(B x)^2 -v_(A x)^2) + frac(1, 2) m(v_(B y)^2 -v_(A y)^2) + frac(1, 2) m(v_(B z)^2 -v_(A z)^2) \
& = frac(1, 2) m(v_(B x)^2 + v_(B y)^2 + v_(B z)^2) -frac(1, 2) m(v_(A x)^2 + v_(A y)^2 + v_(A z)^2) \
& = frac(1, 2) m v_B^2 -frac(1, 2) m v_A^2 $
where we recognized that the magnitude (squared) of the velocity is given by $v_A^2 = v_(A x)^2 + v_(A y)^2 + v_(A z)^2$. We have thus arrived at our desired result; namely, we have found a function of speed, $K(v)$, that when evaluated at the endpoints of the path allows us to calculate the net work done on the object over that path:

$ boxed K(v) = frac(1, 2) m v^2 $
That is, if you know the speed at the start of the path, $v_A$, and the speed at the end of the path, $v_B$, then the net work done on the object along the path between $A$ and $B$ is given by:

$ boxed W^(n e t) = Delta K = K(v_B) -K(v_a) $
We call $K(v)$ the "kinetic energy" of the object. We can say that the net work done on an object in going from $A$ to $B$ is equal to its change in kinetic energy (final kinetic energy minus initial kinetic energy). It is important to note that we defined kinetic energy in a way that it is equal to the net work done. You may have already seen kinetic energy from past introductions to physics as a quantity that is just given; here, we instead derived a function that has the desired property of being equal to the net work done and called it "kinetic energy".

The relation between the net work done and the change in kinetic energy is called the "Work-Energy Theorem" (or Work-Energy Principle). It is the connection that we were looking for between the dynamics (the forces from which we calculate work) and the kinematics (the change in kinetic energy). Unlike Newton's Second Law, which relates two vector quantities (the vector sum of the forces and the acceleration vector), the Work-Energy Theorem relates two scalar quantities to each other (work and kinetic energy). Although we introduced the kinetic energy as a way to calculate the integral for the net work, if you know the value of the net work done on an object, then the Work-Energy Theorem can be used to calculate the change in speed of the object.

Most importantly, the Work-Energy theorem introduces the concept of "energy". As we will see in later chapters, there are other forms of energy in addition to work and kinetic energy. The Work-Energy Theorem is the starting point for the idea that you can convert one form of energy into another. The Work-Energy Theorem tells us how a force, by doing work, can provide kinetic energy to an object or remove kinetic energy from an object.

#noteBlock(heading: [Example 7.6])[
A net work of $W$ was done on an object of mass $m$ that started at rest. What is the speed of the object after the work has been done on the object?

#noteBlock(heading: [Solution])[
Using the Work-Energy Theorem:

$ W = frac(1, 2) m v_f^2 -frac(1, 2) m v_i^2 $
where $v_i$ is the initial speed of the object and $v_f$ is its final speed. Since the initial speed is zero, we can easily find the final speed:

$ v_f = sqrt(frac(2 W, m)) $
]
]

#noteBlock(heading: [Example 7.7])[
A block is pressed against the free end of a horizontal spring with spring constant, $k$, so as to compress the spring by a distance $D$ relative to its rest length, as shown in @fig:workenergy:spring2. The other end of the spring is fixed to a wall.

#show figure: set block(breakable: true)
#figure(
  image("files/spring-fb0b7b45895ba1ffc941557cc6a32aee.png", width: 40%),
  caption: [
A block is pressed against a horizontal spring so as to compress the spring by a distance $D$ relative to its rest length.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:spring2>

If the block is released from rest and there is no friction between the block and the horizontal surface, what is the speed of the block when it leaves the spring?

#noteBlock(heading: [Solution])[
This is the same problem that we presented in #link("/applyingnewtonslaws\#sec-applyingnewtonslaws-modellingwhereforcechanges")[Section 6.3.1] in #link("/applyingnewtonslaws\#ex-applyingnewtonslaws-blockspring")[Example 6.3], where we solved a differential equation to find the speed.

Our first step is to calculate the net work done on the object in going from $x = -D$ to $x = 0$ (which corresponds to when the object leaves the spring, as discussed in #link("/applyingnewtonslaws\#ex-applyingnewtonslaws-blockspring")[Example 6.3]). The forces on the object are:

+ $arrow(F)_g$, its weight, with magnitude $m g$.
+ $arrow(N)$, the normal force exerted by the ground.
+ $arrow(F)(x)$, the force from the spring, with magnitude $k x$.

Both the normal force and weight are perpendicular to the displacement, so they will do no work. The net work done is thus the work done by the spring, which we calculated in @ex:workenergy:spring to be:

$ W^(n e t) = W_F = frac(1, 2) k D^2 $
By the Work-Energy Theorem, this is equal to the change in kinetic energy. Noting that the object started at rest ($v_i = 0$), the final speed $v_f$ is found to be:

$ W^(n e t) & = frac(1, 2) m v_f^2 -frac(1, 2) m v_i^2 = frac(1, 2) m v_f^2 -0 \
frac(1, 2) k D^2 & = frac(1, 2) m v_f^2 \
therefore v_f & = sqrt(frac(k D^2, m)) $
]
]

#noteBlock(heading: [Example 7.8])[
A block is pressed against the free end of a horizontal spring with spring constant, $k$, so as to compress the spring by a distance $D$ relative to its rest length, as shown in @fig:workenergy:spring3. The other end of the spring is fixed to a wall.

#show figure: set block(breakable: true)
#figure(
  image("files/spring-fb0b7b45895ba1ffc941557cc6a32aee.png", width: 40%),
  caption: [
A block is pressed against a horizontal spring so as to compress the spring by a distance $D$ relative to its rest length.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:spring3>

If the block is released from rest and the coefficient of kinetic friction between the block and the horizontal surface is $mu_k$, what is the speed of the block when it leaves the spring?

#noteBlock(heading: [Solution])[
This is the same example as the previous one, but with kinetic friction. The forces on the block are:

+ $arrow(F)_g$, its weight, with magnitude $m g$.
+ $arrow(N)$, the normal force exerted by the ground on the block.
+ $arrow(F)(x)$, the force from the spring, with magnitude $k x$.
+ $arrow(f)_k$, the force of kinetic friction, with magnitude $mu_k N$.

Both the normal force and weight are perpendicular to the displacement, so they will do no work. Furthermore, since the acceleration in the vertical direction is zero, the normal force will have the same magnitude as the weight ($N = m g$). The magnitude of the force of kinetic friction is thus $f_k = mu_k m g$. The net work done will be the sum of the work done by the spring, $W_F$, and the work done by friction, $W_f$:

$ W^(n e t) = W_F + W_f $
We have already determined the work done by the spring:

$ W_F = frac(1, 2) k D^2 $
The work done by the force of kinetic friction will be negative (since it is in the direction opposite of the motion) and is given by:

$ W_f = arrow(f)_k dot.op arrow(d) = -f_k D = -mu_k m g D $
Applying the work energy theorem, and noting that the block started at rest ($v_i = 0$), the final speed $v_f$ is found to be:

$ W^(n e t) = W_F + W_f & = frac(1, 2) m v_f^2 -frac(1, 2) m v_i^2 \
frac(1, 2) k D^2 -mu_k m g D & = frac(1, 2) m v_f^2 \
therefore v_f & = sqrt(frac(k D^2, m) -2 mu_k g D) $
*Discussion:* We can think of this in terms of the concept of energy. The spring does positive work on the block, and so it increases its kinetic energy. Friction does negative work on the block, decreasing its kinetic energy. Only the spring is "introducing" energy into the block, as friction is removing that energy by doing negative work. Another way to think about it is that the spring is inputting energy; some of that energy goes into increasing the kinetic energy of the block, and some of it is lost by friction.

The energy that is lost to friction can be thought of as "thermal energy" (heat) that goes up into heating the block and the surface. Indeed, if you rub your hand against the table, you will notice that it gets warmer; you are losing some of the energy introduced to your hand by the work done by your arm into heating up the table and your hand! This shows that we can think about modelling friction using thermal energy rather than a force.
]
]

=== Power <power>

We finish the chapter by introducing the concept of "power", which is the rate at which work is done on an object, or more generally, the rate at which energy is being converted from one form to another. If an amount of work, $Delta W$, was done in a period of time $Delta t$, then the work was done at a rate of:

$ boxed P = frac(Delta W, Delta t) $
where $P$ is called the power. The SI unit for power is the "Watt", abbreviated $"W"$, which corresponds to $upright J \/ s = upright k g m^2 \/ s^3$ in base SI units. If the rate at which work is being done changes with time, then the instantaneous power is defined as:

$ boxed P = frac(d W, d t) $
You have probably already encountered power in your everyday life. For example, your $1 0 0 0 upright W$ hair dryer consumes "electrical energy" at a rate of $1 0 0 0 upright J$ per second and converts it into the kinetic energy of the fan as well as the thermal energy to heat up the air. Horsepower ($"hp"$) is an imperial unit of power that is often used for vehicles, the conversion being $1 upright h p = 7 4 6 upright W$. A $1 0 0 upright h p$ car thus has an engine that consumes the chemical energy released by burning gasoline at a rate of $7 . 4 6 e 4 upright J$ per second and converts it into work done on the car as well as into heat.

#tipBlock(heading: [Checkpoint])[
Two cranes lift two identical boxes off of the ground. One crane is twice as powerful as the other. Both cranes do the same amount of work on the boxes and operate at full power. Which of the following statements is true of the boxes, once the cranes have done work on them?

+ One box has been lifted twice as high as the other.
+ The boxes are lifted to the same height in the same amount of time.
+ The boxes are lifted to the same height, but it takes one of the boxes twice as long to get there.
+ One box is lifted twice as high as the other, but it takes the same amount of time to get there.

#tipBlock(heading: [Answer])[
+
]
]

#noteBlock(heading: [Example 7.9])[
If a car engine can do work on the car with a power of $P$, what will be the speed of the car at some time $t$ if the car was at rest at time $t = 0$?

#noteBlock(heading: [Solution])[
First, we need to calculate how much total work was done on the car:

$ W = P t $
Then, using the Work-Energy Theorem, we can find the speed of the car at some time $t$:

$ W & = frac(1, 2) m v_f^2 -frac(1, 2) m v_i^2 \
P t & = frac(1, 2) m v_f^2 \
therefore v_f & = sqrt(frac(2 P t, m)) $
*Discussion:* The model for the final speed of the car makes sense because:

- The dimension of the expression for $v_f$ is speed (you should check this!).
- The speed is greater if either the time or power are greater (so the speed is larger if more work is done on the car).
- The speed is smaller if the mass of the car is greater (the acceleration of the car will be less if the mass of the car is larger).
]
]

#noteBlock(heading: [Example 7.10])[
You are pushing a crate along a horizontal surface at constant speed, $v$. You find that you need to exert a force of $arrow(F)$ on the crate in order to overcome the friction between the crate and the ground. How much power are you expending by pushing on the crate?

#noteBlock(heading: [Solution])[
We need to calculate the rate at which the force, $arrow(F)$, that you exert on the crate does work. If the crate is moving at constant speed, $v$, then in a time $Delta t$, it will cover a distance, $d = v Delta t$. Since you exert a force in the same direction as the motion of the crate, the work done over that distance $d$ is:

$ Delta W = arrow(F) dot.op arrow(d) = F d cos(0) = F v Delta t $
The power corresponding to the work done in that period of time is thus:

$ P = frac(Delta W, Delta t) = F v $
This is quite a general result for the rate at which a force does work when it is exerted on an object moving at constant speed.
]
]

#attentionBlock(heading: [Olivia's Thoughts])[
@ex:workenergy:powerconstantv ties into what I brought up earlier. If you think to yourself: "The velocity is constant, so the work must be zero", the formula,

$ P = frac(Delta W, Delta t) = F v $
wouldn't make any sense. Since $v$ is a constant velocity, the power would always be equal to zero, which of course isn't right. Again, remember that when the velocity is constant, it is only the *net work* that is equal to zero. In @ex:workenergy:powerconstantv, it's asking for the power that *you* are expending by pushing on the crate (which is the same as asking for the rate of the work done *by* you *on* the crate). So, the formula does indeed make sense.
]

$ W = arrow(F) dot.op arrow(d) & = F d cos theta \
& = F_x d_x + F_y d_y + F_z d_z $
If the force changes with position and/or the object moves along an arbitrary path in space, the work done by that force over the path is given by:

$ W = integral_A^B arrow(F)(arrow(r)) dot.op d arrow(l) $
// Work allows us to quantify how a force acting on an object changes the speed of that object.

If multiple forces are exerted on an object, then one can calculate the net force on the object (the vector sum of the forces), and the net work done on the object will be equal to the work done by the net force:

$ W^(n e t) = integral_A^B arrow(F)^(n e t)(arrow(r)) dot.op d arrow(l) $
If the net work done on an object is zero, that object does not accelerate.

We can define the kinetic energy, $K(v)$ of an object of mass $m$ that has speed $v$ as:

$ K(v) = frac(1, 2) m v^2 $
The Work-Energy Theorem states that the net work done on an object in going from position $A$ to position $B$ is equal to the object's change in kinetic energy:

$ W^(n e t) = Delta K = frac(1, 2) m v_B^2 -frac(1, 2) m v_A^2 $
where $v_A$ and $v_B$ are the speed of the object at positions $A$ and $B$, respectively.

The rate at which work is being done is called power and is defined as:

$ P = frac(d W, d t) $
If a constant force $arrow(F)$ is exerted on an object that has a constant velocity $arrow(v)$, then the power that corresponds to the work being done by that force is:

$ P & = frac(d, d t) W = frac(d, d t)(arrow(F) dot.op arrow(d)) \
& = arrow(F) dot.op frac(d, d t) arrow(d) = arrow(F) dot.op arrow(v) $
#importantBlock(heading: [Important Equations])[
*Work:*

$ W & = arrow(F) dot.op arrow(d) = F d cos theta \
W & = F_x d_x + F_y d_y + F_z d_z \
W & = integral_A^B arrow(F)(arrow(r)) dot.op d arrow(l) \
W^(n e t) & = integral_A^B arrow(F)^(n e t)(arrow(r)) dot.op d arrow(l) $
*Kinetic Energy:*

$ K(v) = frac(1, 2) m v^2 $
*Work-Energy Theorem:*

$ W^(n e t) = Delta K = frac(1, 2) m v_B^2 -frac(1, 2) m v_A^2 $
*Power:*

$ P & = frac(d W, d t) \
P & = arrow(F) dot.op arrow(v) $
]

#importantBlock(heading: [Important Definitions])[
- *Kinetic energy:* A form of energy that an object with a mass has by virtue of having a non-zero speed. SI units: \[\\text\{J\}\]. Common variable(s): $K$.
- *Power:* The rate at which energy is converted with respect to time. SI units: $upright [ W ]$. Common variable(s): $P$.
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- When was the concept of work first introduced?
- To construct the pyramids, the ancient Egyptians used simple machines, like levers, to accomplish tasks that would not be possible otherwise. Apply what we know about work to find out how levers help people lift incredibly heavy objects.
- After an accident, investigators use skid marks to figure out how fast the cars were going before the crash. Use your knowledge of work, figure out how they do this.
- The Tesla Model S can accelerate from 0-100 \\si\{km/h\} in as little as 2.7 seconds. Calculate the power of the car in horsepower. Why is it unusual for a 7 seat sedan, like the Model S, to have such a short acceleration time? Investigate how it's possible for the Tesla to accelerate so quickly.
]

#seealsoBlock(heading: [To try at home])[
- Measure the power that you can output with your legs, and describe how you made the measurement.
]

#seealsoBlock(heading: [To try in the lab])[
- Propose an experiment to measure the thermal energy associated with a force of kinetic friction.
- Propose an experiment to test the Work-Energy Theorem.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 7.1])[
A ski jump can is modelled as a ramp of height $h = 5 upright m$, as shown in @fig:workenergy:skijumpprob. The landing area is at the same height as the bottom of the ramp. A skier of mass $m = 8 0 upright k g$ is moving at a speed $v_i = 1 5 upright m \/ s$ when they reach the bottom of the ramp. When the skier lands the jump, their speed is measured to be $v_f = 1 2 upright m \/ s$. Ignore air resistance.

#show figure: set block(breakable: true)
#figure(
  image("files/skijumpprob-7a4485948f1dc2b2671e28671fec477f.png", width: 70%),
  caption: [
A person of mass $m$ goes off a ski jump of height $h$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:skijumpprob>

- a. What is the speed of the skier the instant they leave the ski jump, at the top of the ramp?
- b. Use the answer from part (a) to find the work done by the force of friction between the ramp and the skier.
]

#noteBlock(heading: [Problem 7.2])[
A child of mass $m$ sits on a swing of length $L$, as in @fig:workenergy:swingprob. You push the child with a horizontal force $arrow(F)$. You apply the force in such a way that the child moves at a constant speed (note that $arrow(F)$ will not have a constant magnitude).\}

- a. How much work do you do to move the child from $theta = 0$ to $theta = theta_1$?
- b.  Use a detailed diagram to show that the work done by $arrow(F)$ is equal to $m g h$, where $h$ is the change in height of the child.

#show figure: set block(breakable: true)
#figure(
  image("files/swingprob-d71c20d72bf5df16dc390c24266b1394.png", width: 40%),
  caption: [
A child on a swing is pushed from $theta = 0$ to $theta = theta_1$ at constant speed with a horizontal force, $arrow(F)$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:swingprob>
]

==== Solutions <solutions>

#noteBlock(heading: [Solution])[
- a. We start by defining a coordinate system. We choose the $x$ axis to be horizontal and positive in the direction of motion, and we choose the $y$ axis to be vertical and the positive direction upwards.

We will determine the speed at the top of the ramp, $v_t$, using the Work-Energy Theorem:

$ W^(n e t) = frac(1, 2) m v_f^2 -frac(1, 2) m v_t^2 $
where $W^(n e t)$ is the net work done on the skier as they "fly" through the air. While the skier is in the air, the only force acting on them is gravity, $arrow(F) = -m g hat(y)$. The path of the skier is a parabola, so that the displacement vector changes direction continuously. The work done by gravity is given by:

$ W = integral arrow(F)_g dot.op d arrow(l) $
where $d arrow(l)$ is an infinitesimal displacement along the trajectory, as shown in @fig:workenergy:skiprobdisplacement.

#show figure: set block(breakable: true)
#figure(
  image("files/skiprobdisplacement-89a036a287b9d6e9cdb4ce44a58e8c29.png", width: 70%),
  caption: [
Infinitesimal displacement along the trajectory of the jump.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:skiprobdisplacement>

The displacement vector will have $x$ and $y$ components:

$ d arrow(l) = d x hat(x) + d y hat(y) $
The scalar product with the force of gravity is thus:

$ arrow(F)_g dot.op d arrow(l) & =(-m g hat(y)) dot.op(d x hat(x) + d y hat(y)) = -m g d y $
The work done by gravity can thus be converted into an integral over $y$ (for which we know the start and end values), and is given by:

$ W = integral arrow(F)_g dot.op d arrow(l) = integral_h^0 -m g d y = [ -m g y ]_h^0 = m g h $
The work done by gravity is positive, which makes sense, since the force of gravity is generally in the same direction as the net displacement (downwards). We did not need to take into account the specific shape of the trajectory, because the force was constant in magnitude and direction (see @ex:workenergy:workparabola).

We can now find the speed of the skier when they leave the jump using the Work-Energy theorem:

$ W^(n e t) & = frac(1, 2) m v_f^2 -frac(1, 2) m v_t^2 \
m g h & = frac(1, 2) m v_f^2 -frac(1, 2) m v_t^2 \
therefore v_t & = sqrt(v_f^2 -2 g h) = sqrt((1 2 upright m \/ s)^2 -2(9 . 8 upright m \/ s^2)(5 upright m)) = 6 . 8 upright m \/ s $
- b. We can again use the Work-Energy Theorem to determine the work done by friction as the skier slides up the ramp. We know that the speed of the skier at the bottom of the ramp is $v_i$, and we just found that the speed of the skier at the top of the ramp is $v_t = sqrt(v_f^2 -2 g h)$. The net work done on the skier going up the ramp is equal to:

$ W^(n e t) & = frac(1, 2) m v_t^2 -frac(1, 2) m v_i^2 \
& = frac(1, 2) m(v_t^2 -v_i^2) = frac(1, 2) m(v_f^2 -2 g h -v_i^2) \
& = frac(1, 2) m(v_f^2 -v_i^2) -m g h $
The net work done is also the sum of the work done by each of the forces acting on the skier as they slide up the ramp. The forces on the skier are the force of gravity, the force of friction, and the normal force. The normal force does no work, since it is always perpendicular to the displacement. The net work is thus the sum of the work done by the force gravity, $W_g$, and the work done by the force of friction, $W_f$, over the displacement corresponding to the length of the ramp:

$ W^(n e t) = W_g + W_f $
The work done by gravity is:

$ W_g = arrow(F)_g dot.op arrow(d) =(-m g hat(y)) dot.op(d_x hat(x) + h hat(y)) = -m g h $
where $arrow(d)$ is the displacement vector up the ramp (unknown horizontal distance, $d_x$, and vertical distance, $h$). We can now determine the work done by the force of friction:

$ W^(n e t) & = W_g + W_f \
frac(1, 2) m(v_f^2 -v_i^2) -m g h & = -m g h + W_f \
therefore W_f & = frac(1, 2) m(v_f^2 -v_i^2) = frac(1, 2)(8 0 upright k g)((1 2 upright m \/ s)^2 -(1 5 upright m \/ s)^2) = -3 2 4 0 upright J $
And we find that the force of friction did negative work (it reduced the kinetic energy of the skier).

*Discussion:* Over the course of the jump, the skier started at the bottom of the ramp with a given kinetic energy, then lost some of that energy going up the ramp (in the form of loss to friction and negative work done by gravity). During the airborne phase, gravity did positive work and the skier gained back some of the kinetic energy that they had lost going up the ramp. Thus the net work done by the force of friction is the difference in kinetic energies between the final landing point and the beginning of the ramp, because friction is the only force that did a net amount of (negative) work over the whole trajectory (gravity did no net work over the whole trajectory). This example shows how we can start to think about energy as something that is "conserved", which we will explore in more detail in the next chapter.
]

#noteBlock(heading: [Solution])[
- a. We want to find the work done by the applied force $arrow(F)$. We first need to find an expression for the magnitude of $arrow(F)$, based on the fact that the child is not accelerating. The forces on the child are:
- $arrow(F)_g$, their weight, with magnitude $m g$.
- $arrow(F)_T$, the tension in the rope, which changes with the angle, $theta$.
- $arrow(F)$, the applied force, which change in magnitude as the angle, $theta$, changes.

The forces are illustrated in @fig:workenergy:swingprobfbd.

#show figure: set block(breakable: true)
#figure(
  image("files/swingprobfbd-ba84c7450092567037aea8b370051104.png", width: 30%),
  caption: [
A free-body diagram of the forces exerted on the child.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:swingprobfbd>

The child is moving at a constant speed, so the net force is equal to zero. The sum of the $x$ and $y$ components of the forces are equal to zero (Newton's Second Law):

$ sum F_x & = F -F_T sin theta = 0 \
sum F_y & = F_T cos theta -m g = 0 $
Rearranging these equations gives:

$ F & = F_T sin theta \
m g & = F_T cos theta $
We want an expression for $F$ that does not depend on $F_T$ (since $F_T$ is unknown), so we can divide one equation by the other:

$ frac(F, m g) & = frac(F_T sin theta, F_T cos theta) = tan theta \
therefore F(theta) & = m g tan theta $
where we indicated that the force $arrow(F)(theta)$ depends on the angle $theta$. The work done by the force, $arrow(F)$, is given by:

$ W_F = integral_A^B arrow(F)(theta) dot.op d arrow(l) $
$d arrow(l)$ is the "path element" along part of the arc of circle over which the child moves, as illustrated in @fig:workenergy:swingprobdl. We have an expression for how $arrow(F)$ changes in magnitude as a function of the angle $theta$, and it would thus be convenient to perform the integral over the angle $theta$.

#show figure: set block(breakable: true)
#figure(
  image("files/swingprobdl-adf6f6b05a5bd3d9b8b20443ef022b01.png", width: 20%),
  caption: [
A path element along the circular trajectory of the swing.
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:swingprobdl>

We can use polar coordinate, $(r, theta)$, instead of cartesian coordinates to describe the displacement vector, $d arrow(l)$. If the vector subtends an arc on the circle that makes an infinitesimal angle, $d theta$, as illustrated, then the length of the vector $d arrow(l)$ is given by:

$ d l = L d theta $
where $L$ is the radius of the circle. The vector $d arrow(l)$ makes an angle $theta$ with the horizontal, and thus with the vector, $arrow(F)$. The dot product between $arrow(F)$ and $d arrow(l)$ can thus be written as:

$ arrow(F)(theta) dot.op d arrow(l) = F d l cos theta =(m g tan theta)(L d theta) cos theta = m g L sin theta d theta $
We can now write the integral for the work using limit that are based on the angle $theta$, from $theta = 0$ to $theta = theta_1$:

$ W & = integral_0^(theta_1) m g L sin theta d theta \
& = m g L [ -cos theta ]_0^(theta_1) = m g L(1 -cos theta_1) $
- b. We know that the work done by $arrow(F)$ is $W = m g L(1 -cos theta_1)$. So, we want to prove that $L(1 -cos theta_1)$ is equal to $h$. Expanding $L(1 -cos theta_1)$ gives:

$ L(1 -cos theta_1) & = L -L cos theta_1 $
This can be illustrated on a diagram, as in @fig:workenergy:swingprobgeometry, which shows that $h$ is equal to $L -L cos theta$.

#show figure: set block(breakable: true)
#figure(
  image("files/swingprobgeometry-0ebc2108f22acceabc86359d39684055.png", width: 40%),
  caption: [
A diagram showing the geometry of the problem
],
  kind: "figure",
  supplement: [Figure],
) <fig:workenergy:swingprobgeometry>

*Discussion:* The net force acting on the mass is equal to zero, so the net work must be equal to zero. The two forces that do work on the mass are the applied force $arrow(F)$, and gravity. The work done by the applied force if $m g h$, so the work done by gravity must be $-m g h$.
]