/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 6 - Applying Newton's Laws

=== Overview <chap:applyingnewtonslaws>

In this chapter, we take a closer look at how to use Newton's Laws to build models to describe motion. Whereas the previous chapter was focused on identifying the forces that are acting on an object, this chapter focuses on using those forces to describe the motion of the object.

Newton's Laws are meant to describe "point particles", that is, objects that can be thought of as a point and thus have no orientation. A block sliding down a hill, a person on a merry-go-round, a bird flying through the air can all be modelled as point particles, as long as we do not need to model their orientation. In all of these cases, we can model the forces on the object using a free-body diagram as the location of where the forces are applied on the object do not matter. In later chapters, we will introduce the tools required to apply Newton's Second Law to objects that can rotate, where we will see that the location of where a force is exerted matters.

#hintBlock(heading: [Learning Objectives])[
- Understand when an object's motion can be modelled as one dimensional (linear).
- Be able to develop models for objects undergoing linear motion.
- Be able to develop models for objects undergoing circular motion.
- Be able to develop models for objects undergoing arbitrary three dimensional motion.
- Understand the forces involved in circular motion, and understand that "centripetal" and "centrifugal" forces are not really forces.
]

#noteBlock(heading: [Think About It])[
If a person swings on a swing where the ropes are damaged, where are the ropes most likely to break?

+ at the bottom of the trajectory, when the speed is the greatest.
+ at the top of the trajectory, when the speed is zero.
+ at the point in the trajectory where the speed is one half of its maximal value.

#noteBlock(heading: [Answer])[
+
]
]

=== Statics <statics>

When using Newton's Laws to model an object, one can identify two broad categories of situations: static and dynamic. In static situations, the acceleration of the object is zero. By Newton's Second Law, this means that the vector sum of the forces (and torques, as we will see in a later chapter) exerted on an object must be zero. In dynamic situations, the acceleration of the object is non-zero.

For static problems, since the acceleration vector is zero, we can choose a coordinate system in a way that results in as many forces as possible being aligned with the axes (so that we minimize the number of forces that we need to break up into components).

#noteBlock(heading: [Example 6.1])[
You push horizontally with a force $arrow(F)$ on a box of mass $m$ that is resting against a vertical wall, as shown in @fig:applyingnewtonslaws:blockwall. The coefficient of static friction between the wall and the box is $mu_s$. What is the minimum magnitude of the force that you must exert for the box to remain stationary?

#show figure: set block(breakable: true)
#figure(
  image("files/blockwall-4c9d39aeb582ba18ba06ff1f9b6bb5dc.png", width: 20%),
  caption: [
A horizontal force exerted on box that is resting against a wall.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:blockwall>

#noteBlock(heading: [Solution])[
Since the acceleration of the box is zero, the vector sum of the forces exerted on the box is zero. We start by identifying the forces exerted on the box; these are:

+ $arrow(F)$, the horizontal force that you exert on the box.
+ $arrow(F)_g$, the weight of the box, with magnitude $m g$.
+ $arrow(N)$, a normal force exerted by the wall on the box. The force is in the horizontal direction, in the opposite direction to $arrow(F)$.
+ $arrow(f)_s$, a vertical force of static friction between the wall and the box. The force points upwards as the "impeding motion" of the block is downwards. The force will have at most a magnitude of $f_s lt.eq mu_s N$, since the force of static friction depends on the other forces exerted on the object.

The forces are shown in the free-body diagram in @fig:applyingnewtonslaws:blockwall_fbd, along with our choice of coordinate system which was chosen so that all forces are either in the $x$ or $y$ direction.

#show figure: set block(breakable: true)
#figure(
  image("files/blockwall_fbd-d828b9d9bae419f4ebd6743c00c86c4f.png", width: 25%),
  caption: [
Free-body diagram of the forces exerted on the box.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:blockwall_fbd>

The $x$ component of Newton's Second Law is:

$ sum F_x = F -N & = 0 \
therefore N = F $
which tells us that the normal force exerted by the wall has the same magnitude as the applied force, $arrow(F)$. The $y$ component of Newton's Second Law is:

$ sum F_y = f_s -F_g & = 0 \
therefore f_s -m g & = 0 \
therefore f_s = m g \
 $
which tells us that the force of friction must have the same magnitude as the weight. This makes sense, since they are the only forces with components in the $y$ direction, and thus, they must cancel each other out.

The force of friction will be less than or equal to $mu_s N$, and thus less than or equal to $mu_s F$, since $arrow(F)$ and $arrow(N)$ have the same magnitude (from the $x$ component of Newton's Second Law). Furthermore, since $f_s = m g$, we can write:

$ f_s & lt.eq mu_s F \
therefore m g & lt.eq mu_s F \
therefore frac(m g, mu_s) & lt.eq F $
which gives us the condition that $F gt.eq m g \/ mu_s$, and thus the minimum magnitude of $F$ in order to keep the box from sliding down.

Although we used the lesser than or equal to sign in the above equations, we could have used an equal sign if we were confident that the force of friction has its maximal magnitude, $f_s = mu_s N$. The maximal magnitude of the force of friction is proportional to the force that we exert (since $N = F$); if we want to exert the least amount of force $F$, then we need the force of friction to be equal to its maximal magnitude which needs to be equal to the weight of the box.

*Discussion:* This model for the minimal required force makes sense because:

- The dimension of $m g \/ mu_s$ is force.
- If the mass of the box is increased, then one needs to push harder against the box to keep it up.
- If the coefficient of static friction, $mu_s$, is increased, one does not need to push as hard.
]
]

=== Linear motion <linear-motion>

We can describe the motion of an object whose _velocity vector does not continuously change direction_ as "linear" motion. For example, an object that moves along a straight line in a particular direction, then abruptly changes direction and continues to move in a straight line can be modelled as undergoing linear motion over two different segments (which we would model individually). An object moving around a circle, with its velocity vector continuously changing direction, would not be considered to be undergoing linear motion. For example, paths of objects undergoing linear and non-linear motion are illustrated in @fig:applyingnewtonslaws:linearmotion.

#show figure: set block(breakable: true)
#figure(
  image("files/linearmotion-3c36fb7975de9f562924e0686e09b329.png", width: 30%),
  caption: [
(Left:) Displacement vectors for an object undergoing three segments that can each be modelled as linear motion. (Right:) Path of an object whose velocity vector changes continuously and cannot be considered as linear motion.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:linearmotion>

When an object undergoes linear motion, we always model the motion of the object over straight segments separately. Over one such segment, the acceleration vector will be co-linear with the displacement vector of the object (parallel or anti-parallel - note that the acceleration can change direction as it would from a spring force, but will always be co-linear with the displacement).

#noteBlock(heading: [Example 6.2])[
A block of mass $m$ is placed at rest on an incline that makes an angle $theta$ with respect to the horizontal, as shown in @fig:applyingnewtonslaws:blocki. The block is nudged slightly so that the force of static friction is overcome and the block starts to accelerate down the incline. At the bottom of the incline, the block slides on a horizontal surface.

The coefficient of kinetic friction between the block and the incline is $mu_(k 1)$, and the coefficient of kinetic friction between the block and horizontal surface is $mu_(k 2)$. If one assumes that the block started at rest a distance $L$ from the bottom of the incline, how far along the horizontal surface will the block slide before stopping?

#show figure: set block(breakable: true)
#figure(
  image("files/blockI-196266707a8dcc96b8022966b7a2e44b.png", width: 50%),
  caption: [
A block slides down an incline before sliding on a flat surface and stopping.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:blocki>

#noteBlock(heading: [Solution])[
We can identify that this is linear motion that we can break up into two segments: (1) the motion down the incline, and (2), the motion along the horizontal surface. We will thus identify the forces, draw the free-body diagram for the block, and use Newton's Second Law twice, once for each segment.

It is often useful to describe the motion in words to help us identify the steps required in building a model for the block. In this case we could say that:

+ The block slides down the incline and accelerates in the direction of motion. By identifying the forces and applying Newton's Second Law, we can determine its acceleration which will be parallel to the incline.
+ The block will reach a certain speed at the bottom of the incline, which we can determine from kinematics by knowing that the block travelled a distance $L$, with a known acceleration and that it started at rest.
+ The block will decelerate along the horizontal surface. Again, by identifying the forces and using Newton's Second Law, we will be able to determine the acceleration of the block.
+ The block will stop after having travelled an unknown distance, which we can find by using kinematics and knowing the acceleration of the block as well as its initial velocity at the bottom of the incline.

Our first step is thus to identify the forces on the block while it is on the incline. These are:

+ $arrow(F)_g$, its weight.
+ $arrow(N)_1$, a normal force exerted by the incline.
+ $arrow(f)_(k 1)$, a force of kinetic friction exerted by the incline. The force is opposite of the direction of motion, and has a magnitude given by $f_(k 1) = mu_(k 1) N_1$.

These are shown on the free-body diagram in @fig:applyingnewtonslaws:blocki_fbd1. As usual, we drew the acceleration, $arrow(a)_1$, on the free-body diagram, and chose the direction of the $x$ axis to be parallel to the acceleration.

#show figure: set block(breakable: true)
#figure(
  image("files/blockI_fbd1-ef908fa1c7223f0c653ddd2f630b7890.png", width: 25%),
  caption: [
Free-body diagram for the block when it is on the incline.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:blocki_fbd1>

Writing out the $x$ component of Newton's Second Law, and using the fact that the acceleration is in the $x$ direction ($arrow(a) = a_1 hat(x)$):

$ sum F_x = F_g sin theta -f_(k 1) & = m a_1 \
therefore m g sin theta -mu_(k 1) N_1 & = m a_1 $
where we expressed the magnitude of the kinetic force of friction in terms of the normal force exerted by the plane, and the weight in terms of the mass and gravitational field, $g$. The $y$ component of Newton's Second Law can be written:

$ sum F_y = N_1 -F_g cos theta & = 0 \
therefore N_1 = m g cos theta $
which we used to express the normal force in terms of the weight. We can use this expression for the normal force by substituting it into the equation we obtained from the $x$ component to find the acceleration along the incline:

$ m g sin theta -mu_(k 1) N_1 & = m a_1 \
m g sin theta -mu_(k 1) m g cos theta & = m a_1 \
therefore a_1 & = g(sin theta -mu_(k 1) cos theta) $
Now that we know the acceleration down the incline, we can easily find the velocity at the bottom of the incline using kinematics. We choose the origin of the $x$ axis to be zero where the block started ($x_0 = 0$), so that the block is at position $x = L$ at the bottom of the incline. Using kinematics, we can find the speed, $v$, given that the initial speed, $v_0 = 0$:

$ v^2 -v_0^2 & = 2 a_1 (x -x_0) \
v^2 & = 2 a_1 L \
therefore v & = sqrt(2 a_1 L) \
& = sqrt(2 L g(sin theta -mu_(k 1) cos theta)) $
We can now proceed to build a model for the second segment. We first identify the forces on the block when it is on the horizontal surface; these are:

+ $arrow(F)_(g 1)$, its weight.
+ $arrow(N)_2$, a normal force exerted by the horizontal surface. This is in general different than the normal force exerted when the block was on the inclined plane.
+ $arrow(f)_(k 2)$, a force of kinetic friction exerted by the horizontal surface. The force is opposite of the direction of motion, and has a magnitude given by $f_(k 2) = mu_(k 2) N_2$.

The forces are illustrated by the free-body diagram in @fig:applyingnewtonslaws:blocki_fbd2, where we showed the acceleration vector, $arrow(a)_2$, which we determined to be to the left since the block is decelerating. We also chose an $x y$ coordinate system such that the $x$ axis is anti-parallel to the acceleration, so that the motion is in the positive $x$ direction (and the acceleration in the negative $x$ direction).

#show figure: set block(breakable: true)
#figure(
  image("files/blockI_fbd2-4e6e287ceddbf63637b8634847bdfa7f.png", width: 20%),
  caption: [
Free-body diagram for the block when it is sliding along the horizontal surface. We (arbitrarily) chose the positive $x$ direction to be in the direction of motion and anti-parallel to the acceleration. We could easily have chosen the opposite direction.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:blocki_fbd2>

Writing out the $x$ component of Newton's Second Law:

$ sum F_x = -f_(k 2) & = -m a_2 \
therefore mu_(k 2) N_2 & = m a_2 $
where we expressed the force of kinetic friction using the normal force. We  have to be careful here with the sign of the acceleration; the equation that we wrote implies that $a_2$ is a positive number, since $mu_(k 2)$ is positive and $N_2$ is also positive (it is the magnitude of the normal force). $a_2$ is the magnitude of the acceleration, and we included the fact that the acceleration points in the negative $x$ direction when we put a negative sign in the first line. The $x$ component of the acceleration is $-a_2$, and the vector is given by $arrow(a)_2 = -a_2 hat(x)$.

The $y$ component of Newton's Second Law will allow us to find the normal force:

$ sum F_y = N_2 -F_g & = 0 \
therefore N_2 = m g $
which we can substitute back into the $x$ equation to find the magnitude of the acceleration along the horizontal surface:

$ m a_2 & = mu_(k 2) N_2 \
therefore a_2 & = mu_(k 2) g $
Now that we have found the acceleration along the horizontal surface, we can use kinematics to find the distance that the block travelled before stopping. We choose the origin of the $x$ axis to be the bottom of the incline ($x_0 = 0$), the acceleration is negative $a_x = -a_2 = -m u_(k 2) g$, the final speed is zero, $v = 0$, and the initial speed, $v_0$ is given by our model for the first segment. Using one of the kinematic equations:

$ v^2 -v_0^2 & = 2(-a_2)(x -x_0) \
v_0^2 & = 2 a_2 x \
therefore x & = frac(1, 2 a_2) v_0^2 \
& = frac(1, 2 mu_(k 2) g) 2 L g(sin theta -mu_(k 1) cos theta) \
therefore x & = frac((sin theta -mu_(k 1) cos theta), mu_(k 2)) L $
*Discussion:* The model for the distance $x$ that it takes the block to stop makes sense because:

- All of the terms in the fraction are dimensionless, so the value of $x$ will have the same dimension as $L$.
- If we make $L$ bigger, then $x$ will be bigger (if we release the block from higher up on the incline, it will have more time to accelerate and will slide further before stopping).
- If we make $mu_(k 1)$ bigger, then $x$ will be smaller: if we increase friction on the incline, the block will have a smaller acceleration and smaller speed at the bottom.
- If we increase the friction with the horizontal plane (increase $mu_(k 2)$), then $x$ will be reduced (it won't slide as far if there is more friction on the horizontal plane).
- If we increase $theta$, the numerator will be larger, so $x$ will increase (the block will accelerate more down a steeper incline and end up further).
]
]

#tipBlock(heading: [Checkpoint])[
A present is placed at rest on a plane that is inclined, at a distance $L$ from the bottom of the incline, much like the box in @ex:applyingnewtonslaws:block above. At the bottom of the incline, the box is determined to have a speed $v$. If the box is instead released from a distance of $4 L$ from the bottom of the incline, what will its speed at the bottom of the incline be?

+ $v$
+ $2 v$
+ $4 v$
+ it depends on the coefficient of friction between the present and the plane.

#tipBlock(heading: [Answer])[
+
]
]

==== Modelling situations where forces change magnitude <sec:applyingnewtonslaws:modellingwhereforcechanges>

So far, the models that we have considered involved forces that remained constant in magnitude. In many cases, the forces exerted on an object can change magnitude and direction. For example, the force exerted by a spring changes as the spring changes length or the force of drag changes as the object changes speed. In these case, even if the object undergoes linear motion, we need to break up the motion into many small segments over which we can assume that the forces are constant. If the forces change continuously, we will need to break up the motion into an infinite number of segments and use calculus.

Consider the block of mass $m$ that is shown in @fig:applyingnewtonslaws:blockvaryingforce, which is sliding along a frictionless horizontal surface and has a  horizontal force $arrow(F)(x)$ exerted on it. The force has a different magnitude in the three segments of length $Delta x$ that are shown. If the block starts at position $x = x_0$ axis with speed $v_0$, we can find, for example, its speed at position $x_3 = 3 Delta x$, after the block travelled through the three segments.

#show figure: set block(breakable: true)
#figure(
  image("files/blockvaryingforce-fcc0ef639c44cd3ed5e47cd858ad5a33.png", width: 70%),
  caption: [
A block being pushed along a frictionless horizontal surface with a force that changes.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:blockvaryingforce>

The horizontal force, $arrow(F)$, exerted on the block can be written as:

$ arrow(F)(x) = $
as it depends on the location of the block. To find the speed of the block at the end of the third segment, we can model each segment separately. The forces exerted on the block are the same in each segment:

+ $arrow(F)_g$, its weight, with magnitude $m g$.
+ $arrow(N)$, a normal force exerted by the ground.
+ $arrow(F)(x)$, an applied force that changes magnitude with position and is different in the three different segments.

The forces are illustrated in the free-body diagram show in @fig:applyingnewtonslaws:blockvaryingforce_fbd.

#show figure: set block(breakable: true)
#figure(
  image("files/blockvaryingforce_fb-f8568f60b83e0828429fe2eaf2c81104.png", width: 20%),
  caption: [
Free-body diagram for the block shown in @fig:applyingnewtonslaws:blockvaryingforce.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:blockvaryingforce_fbd>

Newton's Second Law can be used to determine the acceleration of the block for each of the three segments, since the forces are constant within one segment. For all three segments, the $y$ component of Newton's Second Law just tells us that the normal force exerted by the ground is equal in magnitude to the weight of the block. The $x$ component of Newton's Second Law gives the acceleration:

$ sum F_x = F_i = m a_i $
where we have used the index $i$ to indicate which segment the block is in ($i$ can be 1, 2 or 3). The acceleration of the block in segment $i$ is given by:

$ a_i = frac(F_i, m) $
If the speed of the block is $v_0$ at the beginning of segment 1 ($x = x_0$), we can find its speed at the end of segment 1 ($x = x_1$), $v_1$, using kinematics and the fact that the acceleration in segment 1 is $a_1$:

$ v_1^2 -v_0^2 & = 2 a_1 (x_1 -x_0) \
v_1^2 & = v_0^2 + 2 a_1 Delta x \
therefore v_1^2 & = v_0^2 + 2 frac(F_1, m) Delta x $
We can now easily find the speed at the end of segment 2 ($x = x_2$), $v_2$, since we know the speed at the beginning of segment 2 ($x_1$,$v_1$) and the acceleration $a_2$:

$ v_2^2 -v_1^2 & = 2 a_2 (x_2 -x_1) \
therefore v_2^2 & = v_1^2 + 2 a_2 Delta x \
& = v_0^2 + 2 frac(F_1, m) Delta x + 2 frac(F_2, m) Delta x $
It is easy to show that the speed at the end of the third segment is:

$ v_3^2 = v_0^2 + 2 frac(F_1, m) Delta x + 2 frac(F_2, m) Delta x + 2 frac(F_3, m) Delta x $
If there were $N$ segments, with the force being different in each segment, we could use the summation notation to write:

$ v_N^2 & = v_0^2 + 2 sum_(i = 1)^(i = N) frac(F_i, m) Delta x $
Finally, if the magnitude of the force varied continuously as a function of $x$, $arrow(F)(x)$, we would model this by taking segments whose length, $Delta x$, tends to zero (and we would need an infinite number of such segments). For example, if we wanted to know the speed of the object at position $x = X$ along the $x$ axis, with a force that was given by $arrow(F)(x) = F(x) hat(x)$, if the object started at position $x_0$ with speed $v_0$, we would take the following limit:

$ v^2 = v_0^2 + lim_(Delta x arrow.r 0) 2 sum_(i = 1)^(i = N) frac(F(x), m) Delta x $
where $Delta x = frac(X, N)$ so that as $Delta x arrow.r 0$, $N arrow.r infinity$. Of course, integrals are the exact tool that allow us to evaluate the sum in this limit:

$ lim_(Delta x arrow.r 0) 2 sum_(i = 1)^(i = N) frac(F_i, m) Delta x = 2 integral_(x_0)^X frac(F(x), m) d x $
and the speed at position $x = X$ is given by:

$ v^2 = v_0^2 + 2 integral_(x_0)^X frac(F(x), m) d x $
Naturally, we can find the above result starting directly from calculus. If the component of the (net) force in the $x$ direction is given by $F(x)$, then the  acceleration is given by $a(x) = frac(F(x), m)$. The velocity is related to the acceleration:

$ a(x) & = frac(d v, d t) \
therefore d v & = a(x) d t \
 $
We cannot simply integrate the last equation to find that $v = integral a(x) d t$ because the acceleration is given as a function of position, $a(x)$, and not a function of time, $t$. Thus, we cannot simply take the integral over $t$ and must instead "change variables" to take the integral over $x$. $x$ and $t$ are related through velocity:

$ v & = frac(d x, d t) \
therefore d t & = frac(1, v) d x $
We can thus write:

$ d v & = a(x) d t = a(x) frac(1, v) d x \
 $
The equation above is called a "separable differential equation", which can also be written:

$ frac(d v, d x) = frac(1, v) a(x) $
This is called a differential equation because it relates the derivative of a function (the derivative of $v$ with respect to $x$, on the left) to the function itself ($v$ appears on the right as well). The differential equation is "separable", because we can separate out all of the quantities that depend on $v$ and on $x$ on different sides of the equation:

$ v d v = a(x) d x $
This last equation says that $v d v$ is equal to $a(x) d x$. Remember that $d x$ is the length of a very small segment in $x$, and that $d v$ is the change in velocity over that very small segment. Since the terms on the left and right are equal, if we sum (integrate) the quantity $v d v$ over many segments, that sum must be equal to the sum (integral) of the quantity $a(x) d x$ over the same segments. Let us choose those segment such that for the beginning of the first interval the position and speed are $x_0$ and $v_0$, respectively, and the position and speed at the end of the last segment are $X$ and $V$, respectively. We then must have that:

$ integral_(v_0)^V v d v & = integral_(x_0)^X a(x) d x \
frac(1, 2) V^2 -frac(1, 2) v_0^2 & = integral_(x_0)^X a(x) d x \
therefore V^2 & = v_0^2 + 2 integral_(x_0)^X a(x) d x \
 $
which is the same as we found earlier. If the acceleration is constant, we recover our formula from kinematics:

$ V^2 & = v_0^2 + 2 integral_(x_0)^X a d x \
& = v_0^2 + 2 a(X -x_0) \
therefore V^2 -v_0^2 & = 2 a(X -x_0) $
#noteBlock(heading: [Example 6.3])[
#show figure: set block(breakable: true)
#figure(
  image("files/blockspring-fdb4d8979bbf11d976ccd124d9539f46.png", width: 40%),
  caption: [
A block is launched along a frictionless surface by compressing a spring by a distance $D$. The top panel shows the spring when at rest, and the bottom panel shows the spring compressed by a distance $D$ just before releasing the block.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:blockspring>

A block of mass $m$ can slide freely along a frictionless surface. A horizontal spring, with spring constant, $k$, is attached to a wall on one end, while the other end can move freely, as shown in @fig:applyingnewtonslaws:blockspring. A coordinate system is defined such that the $x$ axis is horizontal and the free end of the spring is at $x = 0$ when the spring is at rest. The block is pushed against the spring so that the spring is compressed by a distance $D$. The block is then released. What speed will the block have when it leaves the spring?

#noteBlock(heading: [Solution])[
As you recall, the force exerted by a spring depends on the compression or extension of the spring and is given by Hooke's Law:

$ arrow(F)(x) = -k x hat(x) $
where $x$ is the position of the free end of the spring and $x = 0$ corresponds to the spring being at rest. In our case, when the edge of the block is located at $x_0 = -D$ (the spring is compressed), the force is thus in the positive $x$ direction (since $x_0$ is a negative number).

The forces on the block are:

+ $arrow(F)_g$, its weight, with magnitude $m g$.
+ $arrow(N)$, a normal force exerted by the ground.
+ $arrow(F)(x)$, the spring force.

Since the block is not moving vertically, the magnitude of the normal force must equal the weight $N = m g$, since these are the only forces with components in the vertical direction. The $x$ component of Newton's Second Law gives us the acceleration of the block (which depends on $x$):

$ sum F_x = -k x & = m a(x) \
therefore a(x) & = -frac(k, m) x $
Again, recall that if $x$ is negative, then the acceleration will be in the positive direction. Since this scenario is exactly the same that we described above in the text, namely a force that varies continuously with position, we can apply the formula that we found earlier for determining the velocity after a varying force has been applied from position $x = x_0$ to position $x = X$:

$ V^2 & = v_0^2 + 2 integral_(x_0)^X a(x) d x $
$V$ is the final speed that we would like to find, $v_0 = 0$ because the block starts at rest, and $x_0 = -D$ is the starting position of the block. $X$ is the position along the $x$ axis where the block leaves the spring.

We have to think a little about what the value of $X$ should be: when the spring is compressed and the block accelerating, the spring is pushing the block in the positive $x$ direction. Once the block reaches $x = 0$ the spring would want to pull the block backwards, but since it is not attached to the block, it stops exerting a force on the block at that point. The block thus leaves the spring at $x = 0$, so that the final position is $X = 0$. The speed of the block when it leaves the spring is thus:

$ V^2 & = v_0^2 + 2 integral_(x_0)^X a(x) d x \
& = 0 + 2 integral_(-D)^0 a(x) d x \
& = 2 integral_(-D)^0 -frac(k, m) x d x \
& = 2 [ -frac(k, m) frac(1, 2) x^2 ]_(-D)^0 \
& = frac(k, m) D^2 \
therefore V & = sqrt(frac(k, m)) D $
*Discussion:* This model for the speed of the block when it leaves the spring makes sense because:

- The dimension for the expression for $V$ is correct (you should check this!).
- If the spring is compressed more (bigger value of $D$), then the speed will be higher.
- If the mass is bigger (more inertia), then the final speed will be lower.
- If the spring is stiffer (bigger value of $k$), then the final speed will be higher.

If you have studied physics before, you may have realized that the speed is easily found by conservation of energy:

$ frac(1, 2) m V^2 = frac(1, 2) k D^2 $
which gives the same value for $V$. As we will see in a later chapter, kinetic and potential energy are defined as they are, precisely because it makes using conservation of energy equivalent to using forces as we just did.
]
]

#noteBlock(heading: [Example 6.4])[
An object of mass $m$ is released from rest out of a helicopter. The drag (air-resistance) on the object can be modelled as having a magnitude given by $b v$, where $v$ is the speed of the object and $b$ is a constant of proportionality. How does the velocity of the object depend on time?

#noteBlock(heading: [Solution])[
As the object falls through the air, the forces exerted on the object are:

+ $F_g$, its weight, with magnitude $m g$, exerted downwards.
+ $F_d$, the force of drag, with magnitude $b v$, exerted upwards.

Since the object will fall in a straight line, this is a one-dimensional problem, and we can choose the $x$ axis to be vertical, with positive $x$ pointing downwards, and the origin located where the object was released. The object will thus have a positive acceleration and move in the positive $x$ direction with this choice of coordinate system. This is illustrated in the free-body diagram in @fig:applyingnewtonslaws:drag_fbd.

#show figure: set block(breakable: true)
#figure(
  image("files/drag_fbd-26e723b9982f949036c077b5eb8d1210.png", width: 20%),
  caption: [
Free-body diagram for a block free-falling with drag.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:drag_fbd>

Newton's Second Law for the object gives:

$ sum F_x = F_g -F_d & = m a \
m g -b v & = m a \
therefore a & = g -frac(b, m) v $
In this case, the acceleration depends explicitly on velocity rather than position, as we had before. However, we can use the same methodology to find how the velocity changes with time. First, we can note that the acceleration is zero if:

$ g -frac(b, m) v & = 0 \
therefore v = frac(m g, b) $
That is, once the object reaches a speed of $v_(t e r m) = m g \/ b$, it will stop accelerating, i.e. it will reach "terminal velocity". Note that this is the same condition as requiring that the drag force ($b v$) have the same magnitude as the weight ($m g$).

Writing the acceleration as $a = frac(d v, d t)$, we can write:

$ frac(d v, d t) & =(g -frac(b, m) v) $
which again, is a separable differential equation, in which we can write the terms that depend on $v$ and those that depend on $t$ on separate sides of the equal sign:

$ frac(d v, g -frac(b, m) v) & = d t \
frac(d v, v -frac(m g, b)) & = -frac(b, m) d t \
 $
where we re-arranged the equation in the second line so that it would be easier to integrate in the next step. We can find the velocity, $v(t)$, at some time, $t$, by stating that $v = 0$ at $t = 0$ and taking the integrals (sum) on both sides. Again, we are modelling the motion as being made up of a large number of very small segments where the quantities on both sides of the equation are the same. Thus, if we sum (integrate) those quantities over all of the same segments, the left and right hand side of the equations will still be equal to each other:

$ integral_0^(v(t)) frac(d v, v -frac(m g, b)) & = -integral_0^t frac(b, m) d t \
[ ln(v -frac(m g, b)) ]_0^(v(t)) & = -frac(b, m) t \
ln(v(t) -frac(m g, b)) -ln(-frac(m g, b)) & = -frac(b, m) t \
ln(frac(v(t) -frac(m g, b), -frac(m g, b))) & = -frac(b, m) t \
 $
where, in the last line, we used the property that $ln(a) -ln(b) = ln(a \/ b)$. By taking the exponential on either side of the equation ($e^(ln(x)) = x$), we can find an expression for the velocity as a function of time:

$ frac(v(t) -frac(m g, b), -frac(m g, b)) & = e^(-frac(b, m) t) \
v(t) -frac(m g, b) & = -frac(m g, b) e^(-frac(b, m) t) \
therefore v(t) & = frac(m g, b) -frac(m g, b) e^(-frac(b, m) t) \
& = frac(m g, b)(1 -e^(-frac(b, m) t)) $
*Discussion:* This equation tells us that the velocity increases as a function of time, but the rate of increase decreases exponentially with time. At time $t = 0$, the velocity is zero, as expected. As $t$ approaches infinity, $v$ approaches, $frac(m g, b)$, which is the terminal velocity. The time dependence of the velocity is illustrated in @fig:applyingnewtonslaws:drag_vt.

#show figure: set block(breakable: true)
#figure(
  image("files/drag_vt-801a0464afdbabb69c22a18071c30d9b.png", width: 70%),
  caption: [
Velocity as a function of time for an object of mass $m = upright 1 0 k g$ which is free-falling from rest with a drag coefficient $b = upright 0 . 5 N s \/ m$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:drag_vt>
]
]

=== Uniform circular motion <uniform-circular-motion>

As we saw in #link("/newmomentumandcm\#chap-momentumandcm")[Chapter 4.1], "uniform circular motion" is defined to be motion along a circle with constant speed. This may be a good time to review #link("/newmomentumandcm\#sec-momentumandcm-circularmotion")[Section 4.5] for the kinematics of motion along a circle. In particular, for the uniform circular motion of an object around a circle of radius $R$, you should recall that:

- The velocity vector, $arrow(v)$, is always tangent to the circle.
- The acceleration vector, $arrow(a)$, is always perpendicular to the velocity vector, because the magnitude of the velocity vector does not change.
- The acceleration vector, $arrow(a)$, always points towards the centre of the circle.
- The acceleration vector has magnitude $a = v^2 \/ R$.
- The angular velocity, $omega$, is related to the magnitude of the velocity vector by $v = omega R$ and is constant.
- The angular acceleration, $alpha$, is zero for uniform circular motion, since the angular velocity does not change.

In particular, you should recall that even if the speed is constant, the acceleration vector is always non-zero in uniform circular motion because the *velocity changes direction*. According to Newton's Second Law, this implies that there *must be a net force on the object that is directed towards the centre of the circle*#footnote[The sum of the forces is often called the "net force" on an object, and in the specific case of uniform circular motion, that net force is sometimes called the "centripetal force" - however, it is not a force in and of itself and it is always the sum of the forces that points towards the centre of the circle.] (parallel to the acceleration):

$ sum arrow(F) = m arrow(a) $
where the acceleration has a magnitude $a = v^2 \/ R$. Because the acceleration is directed towards the centre of the circle, we sometimes call it a "radial" acceleration (parallel to the radius), $a_R$, or a "centripetal" acceleration (directed towards the centre), $a_c$.

Consider an object in uniform circular motion in a horizontal plane on a frictionless surface, as depicted in @fig:applyingnewtonslaws:circleh.

#show figure: set block(breakable: true)
#figure(
  image("files/circleH-14562d22cc39e77912bf057585173f4f.png", width: 30%),
  caption: [
An object undergoing uniform circular motion on a frictionless surface, as seen from above.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:circleh>

The only way for the object to undergo uniform circular motion as depicted is if the net force on the object is directed towards the centre of the circle. One way to have a force that is directed towards the centre of the circle is to attach a string between the center of the circle and the object, as shown in @fig:applyingnewtonslaws:circleh. If the string is under tension, the force of tension will always be towards the centre of the circle. The forces on the object are thus:

+ $arrow(F)_g$, its weight with magnitude $m g$.
+ $arrow(N)$, a normal forced exerted by the surface.
+ $arrow(T)$, a force of tension exerted by the string.

The forces are depicted in the free-body diagram shown in @fig:applyingnewtonslaws:circleh_fbd (as viewed from the side), where we also drew the acceleration vector. Note that this free-body diagram is only "valid" at a particular instant in time since the acceleration vector continuously changes direction and would not always be lined up with the $x$ axis.

#show figure: set block(breakable: false)
#subpar.grid(figure(
image("files/circleH_fbd-9405d67831ff6d672f095e85893f0fec.png", width: 25%)
), <fig:applyingnewtonslaws:circleh_fbd-a>,
figure(
````undergoing
Writing out the $x$ and $y$ components of Newton's Second Law:
```{math}
\sum F_x &= T = ma_R\\
\sum F_y &= N - F_g =0
````
), <fig:applyingnewtonslaws:circleh_fbd-b>,
columns: (1fr,1fr),
label: <fig:applyingnewtonslaws:circleh_fbd>,
  caption: [
Free-body diagram (side view) for the object from @fig:applyingnewtonslaws:circleh_fbd
],
  kind: "figure",
  supplement: [Figure],
)

The $y$ component just tells us that the normal force must have the same magnitude as the weight because the object is not accelerating in the vertical direction. The $x$ component tells us the relation between the magnitudes of the tension in the string and the radial acceleration. Using the speed of the object, we can also write the relation between the tension and the speed:

$ T & = m a_R = m frac(v^2, R) \
 $
Thus, we find that the tension in the string increases with the square of the speed, and decreases with the radius of the circle.

#tipBlock(heading: [Checkpoint])[
#show figure: set block(breakable: true)
#figure(
  image("files/trajectoryABCD-e53c5dce049569c31882a56f048ff7c1.png", width: 90%),
  caption: [
Possible trajectories (in red) that the block will follow if the string breaks.\`\`\`
An object is undergoing uniform circular motion in the horizontal plane, when the string connecting the object to the centre of rotation suddenly breaks. What path will the block take after the string broke?

+ A
+ B
+ C
+ D

#tipBlock(heading: [Answer])[
+
]
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:trajectoryabcd>
]

#noteBlock(heading: [Example 6.5])[
#show figure: set block(breakable: true)
#figure(
  image("files/car-bf4ad6e87eff6afa0747d345878e1215.png", width: 25%),
  caption: [
A car going around a curve that can be approximated as the arc of a circle of radius $R$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:car>

A car goes around a curve which can be approximated as the arc of a circle of radius $R$, as shown in @fig:applyingnewtonslaws:car. The coefficient of static friction between the tires of the car and the road is $mu_s$. What is the maximum speed with which the car can go around the curve without skidding?

#noteBlock(heading: [Solution])[
If the car is going at constant speed around a circle, then the sum of the forces on the car must be directed towards the centre of the circle. The only force on the car that could be directed towards the centre of the circle is the force of friction between the tires and the road. If the road were perfectly slick (think driving in icy conditions), it would not be possible to drive around a curve since there could be no force of friction. The forces on the car are:

+ $arrow(F)_g$, its weight with magnitude $m g$.
+ $arrow(N)$, a normal force exerted upwards by the road.
+ $arrow(f)_s$, a force of static friction between the tires and the road. This is static friction, because the surface of the tire does not move relative to the surface of the road if the car is not skidding. The force of static friction has a magnitude that is at most $f_s lt.eq mu_s N$.

The forces on the car are shown in the free-body diagram in @fig:applyingnewtonslaws:car_fbd.

#show figure: set block(breakable: true)
#figure(
  image("files/car_fbd-13c36c93d0db1221ca48d0f4b097b1d4.png", width: 25%),
  caption: [
Free-body diagram for the car as seen looking at the car from the back (the centre of the curve is towards the left).
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:car_fbd>

The $y$ component of Newton's Second Law tells us that the normal force exerted by the road must equal the weight of the car:

$ sum F_y = N -F_g & = 0 \
therefore N & = m g $
The $x$ component relates the force of friction to the radial acceleration (and thus to the speed):

$ sum F_x = f_s = m a_R & = m frac(v^2, R) \
therefore f_s & = m frac(v^2, R) $
The force of friction must be less than or equal to $f_s lt.eq mu_s N = mu_s m g$ (since $N = m g$ from the $y$ component of Newton's Second Law), which gives us a condition on the speed:

$ f_s = m frac(v^2, R) & lt.eq mu_s m g \
v^2 & lt.eq mu_s g R \
therefore v & lt.eq sqrt(mu_s g R) $
Thus, if the speed is less than $sqrt(mu_s g R)$, the car will not skid and the magnitude of the force of static friction, which results in an acceleration towards the centre of the circle, will be smaller or equal to its maximal possible value.

*Discussion:* The model for the maximum speed that the car can travel around the curve makes sense because:

- The dimension of $sqrt(mu_s g R)$ is speed.
- The speed is larger if the radius of the curve is larger (one can go faster around a wider curve without skidding).
- The speed is larger if the coefficient of friction is large (if the force of friction is larger, a larger radial acceleration can be sustained).
]
]

#noteBlock(heading: [Example 6.6])[
#show figure: set block(breakable: true)
#figure(
  image("files/circleV-e337f1c803dda6f492d5f1f0b409191b.png", width: 27%),
  caption: [
A ball attached to a string undergoing circular motion in a vertical plane.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:circlev>

A ball is attached to a mass-less string and executing circular motion along a circle of radius $R$ that is in the vertical plane, as depicted in @fig:applyingnewtonslaws:circlev. Can the speed of the ball be constant? What is the minimum speed of the ball at the top of the circle if it is able to make it around the circle?

#noteBlock(heading: [Solution])[
The forces that are acting on the ball are:

+ $arrow(F)_g$, its weight with magnitude $m g$.
+ $arrow(T)$, a force of tension exerted by the string.

@fig:applyingnewtonslaws:circlev_fbd shows the free-body diagram for the forces on the ball at three different locations along the path of the circle.

#show figure: set block(breakable: true)
#figure(
  image("files/circleV_fbd-ffbc3de10018feef97a6cd6d4f6adba4.png", width: 40%),
  caption: [
A ball attached to a string undergoing circular motion in a vertical plane.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:circlev_fbd>

In order for the ball to go around in a circle, there must be at least a component of the net force on the ball that is directed towards the centre of the circle at all times. In the bottom half of the circle (positions 1 and 2), only the tension can have a component directed towards the centre of the circle.

Consider in particular the position labelled 2, when the string is horizontal and the tension is equal to $arrow(T)_2$. The free-body diagram in @fig:applyingnewtonslaws:circlev_fbd also shows the vector sum of the weight and tension at position 2 (the red arrow labelled $sum arrow(F)$), which points downwards and to the left. It is thus clearly impossible for the acceleration vector to point towards the centre of the circle, and the acceleration will have components that are both tangential ($a_T$) to the circle and radial ($a_R$), as shown by the vector $arrow(a)_2$ in @fig:applyingnewtonslaws:circlev_fbd.

The radial component of the acceleration will change the direction of the velocity vector so that the ball remains on the circle, and the tangential component will reduce the magnitude of the velocity vector. According to our model, it is thus impossible for the ball to go around the circle at constant speed, and the speed must decrease as it goes from position 2 to position 3, no matter how one pulls on the string (you can convince yourself of this by drawing the free-body diagram at any point between points 2 and 3).

The minimum speed for the ball at the top of the circle is given by the condition that the tension in the string is zero just at the top of the trajectory (position 3). The ball can still go around the circle because, at position 3, gravity is towards the centre of the circle and can thus give an acceleration that is radial, even with no tension. The $y$ component of Newton's Second Law, at position 3 gives:

$ sum F_y = -F_g & = m a_y \
therefore a_y & = -g $
The magnitude of the acceleration is the radial acceleration, and is thus related to the speed at the top of the trajectory:

$ a_R & = -a_y = g = frac(v^2, R) \
therefore v_(m i n) & = sqrt(g R) $
which is the minimum speed at the top of the trajectory for the ball to be able to continue along the circle. The tension in the string would change as the ball moves around the circle, and will be highest at the bottom of the trajectory, since the tension has to be bigger than gravity so that the net force at the bottom of the trajectory is upwards (towards the centre of the circle).

*Discussion:* The model for the minimum speed of the ball at the top of the circle makes sense because:

- $sqrt(g R)$ has the dimension of speed.
- The minimum velocity is larger if the circle has a larger radius (try this with a mass attached at the end of a string).
- The minimum velocity is larger if the mass is bigger (again, try this at home!).
]
]

#tipBlock(heading: [Checkpoint])[
Consider a ball attached to a string, being spun in a vertical circle (such as the one depicted in @fig:applyingnewtonslaws:circlev). If you shortened the string, how would the minimum angular velocity (measured at the top of the trajectory) required for the ball to make it around the circle change?

+ It would decrease
+ It would stay the same
+ It would increase

#tipBlock(heading: [Answer])[
+
]
]

==== Banked curves <banked-curves>

As we saw in @ex:applyingnewtonslaws:car, there is a maximum speed with which a car can go around a curve before it starts to skid. You may have noticed that roads, highways especially, are banked where there are curves. Racetracks for cars that go around an oval (the boring kind of car races) also have banked curves. As we will see, this allows the speed of vehicles to be higher when going around the curve; or rather, it makes the curves safer as the speed at which vehicles _would_ skid is higher. In @ex:applyingnewtonslaws:car, we saw that it was the force of static friction between the tires of the car and the road that provided the only force with a component towards the centre of the circle. The idea of using a banked curve is to change the direction of the normal force between the road and the car tires so that it, too, has a component in the direction towards the centre of the circle.

Consider the car depicted in @fig:applyingnewtonslaws:carbank which is seen from behind making a left turn around a curve that is banked by an angle $theta$ with respect to the horizontal and can be modelled as an arc from a circle of radius $R$.

#show figure: set block(breakable: true)
#figure(
  image("files/carbank-1f87f47046a3d7845d4293aeb68f4429.png", width: 70%),
  caption: [
A car moving into the page and going around a banked curved so that it is turning towards the left (the centre of the circle is to the left).
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:carbank>

The forces exerted on the car are the same as in @ex:applyingnewtonslaws:car, except that they point in different directions. The forces are:

+ $arrow(F)_g$, its weight with magnitude $m g$.
+ $arrow(N)$, a normal force exerted by the road, perpendicular to the surface of the road.
+ $arrow(f)_s$, a force of static friction between the tires and the road. This is static friction, because the surface of the tire does not move relative to the surface of the road if the car is not skidding. The force of static friction has a magnitude that is at most $f_s lt.eq mu_s N$ and is perpendicular to the normal force. The force could be either upwards or downwards, _depending on the other forces on the car_.

A free-body diagram for the forces on the car is shown in @fig:applyingnewtonslaws:carbank_fbd, along with the acceleration (which is in the radial direction, towards the centre of the circle), and our choice of coordinate system (choosing $x$ parallel to the acceleration). The direction of the force of static friction is not known _a priori_ and depends on the speed of the car:

- If the speed of the car is zero, the force of static friction is upwards. With a speed of zero, the radial acceleration is zero, and the sum of the forces must thus be zero. The impeding motion of the car would be to slide down the banked curve (just like a block on an incline).
- If the speed of the car is very large, the force of static friction is downwards, as the impeding motion of the car would be to slide up the bank. The natural motion of the car is to go in a straight line (Newton's First Law). If the components of the normal force and of the force of static friction directed towards the centre of the circle are too small to allow the car to turn, then the car would slide up the bank (so the impeding motion is up the bank and the force of static friction is downwards).

#show figure: set block(breakable: true)
#figure(
  image("files/carbank_fbd-abf6ccb44dd218cc25f1a2b082e9acd0.png", width: 30%),
  caption: [
Free-body diagram for the forces on the car. The direction of the force of static friction cannot be determined, as it depends on the acceleration of the car, so it is shown twice (with dotted lines).
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:carbank_fbd>

There is thus an "ideal speed" at which the force of static friction is precisely zero, and the $x$ component of the normal force is responsible for the radial acceleration. At higher speeds, the force of static friction is downwards and increases in magnitude to keep the car's acceleration towards the centre of the circle. At some maximal  speed, the force of friction will reach its maximal value, and no longer be able to keep the car's acceleration pointing towards the centre of the circle. At speeds lower than the ideal speed, the force of friction is directed upwards to prevent the car from sliding down the bank. If the coefficient of static friction is too low, it is possible that at low speeds, the car would start to slide down the bank (so there would be a minimum speed below which the car would start to slide down).

Let us model the situation where the force of static friction is identically zero so that we can determine the ideal speed for the banked curve. The only two forces on the car are thus its weight and the normal force. The $x$ and $y$ component of Newton's Second Law give:

$ sum F_x & = N sin theta = m a_R = m frac(v^2, R) \
therefore N sin theta & = m frac(v^2, R) $ <eq:applyingnewtonslaws:carbank_x>
$ sum F_y & = N cos theta -F_g = 0 \
therefore N cos theta & = m g $ <eq:applyingnewtonslaws:carbank_y>
We can divide Equation @eq:applyingnewtonslaws:carbank_x by Equation @eq:applyingnewtonslaws:carbank_y, noting that $tan theta = sin theta \/ cos theta$, to obtain:

$ tan theta & = frac(v^2, g R) \
therefore v_(i d e a l) & = sqrt(g R tan theta) $
At this speed, the force of static friction is zero. In practice, one would use this equation to determine which bank angle to use when designing a road, so that the ideal speed is around the speed limit or the average speed of traffic. We leave it as an exercise to determine the maximal speed that the car can go around the curve before sliding out.

==== Inertial forces in circular motion <inertial-forces-in-circular-motion>

As you sit in a car that is going around a curve, you will feel pushed outwards, away from the centre of the circle that the car is going around. This is because of your inertia (Newton's First Law), and your body would go in a straight line if the car were not exerting a net force on you towards the centre of the circle. You are not so much feeling a force that is pushing you outwards as you are feeling the effects of the car seat pushing you inwards; if you were leaning against the side of the car that is on the outside of the curve, you would feel the side of the car pushing you inwards towards the centre of the curve, even if it "feels" like you are pushing outwards against the side of the car.

If we model your motion looking at you from the ground, we would include a force of friction between the car seat (or the side of the car, or both) and you that is pointing towards the centre of the circle, so that the sum of the forces exerted on you is towards the centre of the circle. We can also model your motion from the non-inertial frame of the car. As you recall, because this is a non-inertial frame of reference, we need to include an additional inertial force, $arrow(F)_I$, that points opposite of the acceleration of the car, with magnitude $F_I = m a_R$ (if the net acceleration of the car is $a_R$). Inside the non-inertial frame of reference of the car, your acceleration (relative to the reference frame, i.e. the car) is zero. This is illustrated by the diagrams in @fig:applyingnewtonslaws:carinertial.

#show figure: set block(breakable: true)
#figure(
  image("files/carinertial-f8a601732d9a4618a143e7df196a197c.png", width: 60%),
  caption: [
(Left:) A person sitting on a car seat in a car turning towards the left. (Centre:) Free-body diagram for the person as modelled in the inertial reference frame of the ground. (Right:) Free-body diagram for the person as modelled in the non-inertial frame of reference of the car, including an additional inertial force.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:carinertial>

The $y$ component of Newton's Second Law in both frames of reference is the same:

$ sum F_y & = N -F_g = 0 \
therefore N & = m g $
and simply tells us that the normal force is equal to the weight. In the reference frame of the ground, the $x$ component of Newton's Second Law gives:

$ sum F_x & = f_s = m a_R \
therefore f_s & = m frac(v^2, R) $
In the frame of reference of the car, where your acceleration is zero and an inertial force of magnitude $F_I = m v^2 \/ R$ is exerted on you, the $x$ component of Newton's Second Law gives:

$ sum F_x & = f_s -F_I = 0 \
therefore f_s -m frac(v^2, R) & = 0 $
which of course, mathematically, is exactly equivalent. The inertial force is not a real force in the sense that it is not exerted by anything. It only comes into play because we are trying to use Newton's Laws in a non-inertial frame of reference. However, it does provide a good model for describing the sensation that we have of being pushed outwards when the car goes around a curve. Sometimes, people will refer to this force as a "centrifugal" force, which means "a force that points away from the centre". You should however remember that this is not a real force exerted on the object, but is the result of modelling motion in a non-inertial frame of reference.

#tipBlock(heading: [Checkpoint])[
Jamie is driving his tricycle around a circular pond. Jamie feels a centrifugal force with magnitude $F_I$. If Jamie pedals twice as fast, what will be the magnitude of the centrifugal force that he experiences?

+ $sqrt(2) F_I$
+ $frac(1, 2) F_I$
+ $2 F_I$
+ $4 F_I$

#tipBlock(heading: [Answer])[
+
]
]

=== Non-uniform circular motion <non-uniform-circular-motion>

In non-uniform circular motion, an object's motion is along a circle, but the object's speed is not constant. In particular, the following will be true

- The object's velocity vector is always tangent to the circle.
- The speed and angular speed of the object are not constant.
- The angular acceleration of the object is not zero.
- The acceleration vector will not point towards the centre of the circle.

Since the acceleration vector does not point towards the centre of the circle, it is usually convenient to break up the acceleration vector into two components: $a_R$, a component that is radial (towards the centre of the circle), and $a_T$, a component that is tangent to the circle (and perpendicular to to the radial component). The *radial component is "responsible" for the change in direction of the velocity* such that the object goes in a circle. the magnitude of the radial acceleration is the same as it is for uniform circular motion:

$ a_R = frac(v^2, r) $
where the speed is no longer constant in time. The tangential component of the acceleration is responsible for changing the magnitude of the velocity of the object:

$ a_T = frac(d v, d t) $
#noteBlock(heading: [Example 6.7])[
#show figure: set block(breakable: true)
#figure(
  image("files/ant-84c9202e5ee7cd9f6a0b3c1225f898dd.png", width: 25%),
  caption: [
An ant on a horizontal turntable that is starting to spin, as seen from above.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:ant>

A small ant is sleeping on a turntable just as the turntable starts to spin from rest, with an angular acceleration $alpha = 1 upright r a d \/ s^2$ that is small enough so that, initially, the ant remains on the turntable. The ant is a distance $R = 0 . 1 upright m$ from the centre of the turntable, as shown in @fig:applyingnewtonslaws:ant  and the coefficient of static friction between the ant's "feet" and the turntable is $mu_s = 0 . 5$. After how much time will the ant slide off from the turntable?

#noteBlock(heading: [Solution])[
As the turntable accelerates, the force of static friction between the turntable and the ant will keep the ant moving with the turntable. Once the turntable is going fast enough, the force of friction will no longer be large enough to provide the total acceleration that is required to keep the ant moving with the turntable (with a constant tangential component of the acceleration and an increasing radial component of the acceleration).

The forces on the ant are:

+ $arrow(F)_g$, its weight, with magnitude $m g$.
+ $arrow(N)$, a normal force exerted by the turntable on the ant.
+ $arrow(f)_s$, a force of static friction exerted by the turntable on the ant. The force of friction will be such that it has both radial and tangential components.

A free-body diagram for the forces on the ant is shown in @fig:applyingnewtonslaws:ant_fbd, as seen from above and from the side, for some point in time. We have chosen the point in time to be just when the ant is about to slide off of the turntable, when the force of static friction makes an unknown angle $theta$ with the $x$ axis. We have placed the origin of the coordinate system at the centre of the turntable and chosen the $x$ axis such that the ant is located on the positive $x$ axis with its velocity in the positive $y$ direction. We used a three dimensional coordinate system where the weight and normal force are exerted in the $z$ (vertical) direction since the acceleration vector of the ant will have both radial ($x$) and tangential ($y$) components.

#show figure: set block(breakable: true)
#figure(
  image("files/ant_fbd-57dca3079c2f89aaf00fa3c11af1f13f.png", width: 50%),
  caption: [
(Left:) Forces on the ant as seen from above. The normal force is out of the page ($odot$), whereas the weight is into the page ($times$). (Right:) Forces on the ant as seen from the side. Note that the acceleration vector and force of static friction also have components in the $y$ direction, which is why their magnitude is shown as being smaller than in the top view.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:ant_fbd>

Newton's Second Law has to be written out in three components. The $z$ component relates the weight and normal force:

$ sum F_z & = N -F_g = 0 \
therefore N & = m g $
The $x$ component of Newton's Second Law is such that the $x$ component of the acceleration is its radial component:

$ sum F_x & = -f_s cos theta = -m a_R = -m frac(v^2, R) \
therefore f_s cos theta & = m frac(v^2, R) $
The $y$ component of Newton's Second Law relates the tangential component of the force of static friction to the tangential component of the acceleration:

$ sum F_y & = f_s sin theta = m a_T \
therefore f_s sin theta & = m alpha R $
where we used the fact that the (linear) tangential acceleration, $a_T$, is related to the angular acceleration, $alpha$, by:

$ a_T = alpha R $
Summarizing the three equations that we obtained from the three components of Newton's Second Law:

$ f_s cos theta & = m frac(v^2, R) \
f_s sin theta & = m alpha R \
N & = m g $
Also, note that the speed, $v(t)$ at some time $t$ is given by simple kinematics:

$ v(t) = v_0 + a_T t =(0) + alpha R t $
The ant will start to slip when the force of friction reaches its maximal amplitude, $f_s = mu_s N = mu_S m g$. The $x$ of Newton's Second Law can be used to find an expression for the time at which force of friction reaches its maximal value (in terms of the unknown angle $theta$):

$ f_s cos theta & = m frac(v^2, R) \
mu_s g cos theta & = R alpha^2 t^2 \
therefore t & = sqrt(frac(mu_s g cos theta, R alpha^2)) $
We can use the $y$ component to determine the angle $theta$:

$ f_s sin theta & = m alpha R \
mu_s g sin theta & = alpha R \
therefore sin theta & = frac(alpha R, mu_s g) \
therefore theta & = sin^(-1)(frac(alpha R, mu_s g)) = sin^(-1)(frac((1 upright r a d \/ s^2)(0 . 1 upright m),(0 . 5)(9 . 8 upright N \/ k g))) \
& = 1 . 1 7 upright degree $
The angle is very small, and we see that the force of friction is mostly directed towards the centre of the circle. The radial acceleration is thus much larger than the tangential acceleration. We can then use the angle to find the time using the expression we derived above:

$ t & = sqrt(frac(mu_s g cos theta, R alpha^2)) = sqrt(frac((0 . 5)(9 . 8 upright N \/ k g) cos(1 . 1 7 upright degree),(0 . 1 upright m)(1 upright r a d \/ s^2)^2)) \
& = 7 . 0 upright s $
]
]

$ sum arrow(F) = m a_R = m frac(v^2, R) $
If an object's speed is changing as it moves around a circle the acceleration vector will have a component that is towards the centre of the circle (the radial component) and a component that is tangential to the circle. The tangential component is responsible for the change in speed, whereas the radial component is responsible for the change in direction of the velocity.

In a reference frame that is rotating about a circle, an inertial force, sometimes called the centrifugal force, appears to push all objects co-moving with the reference frame towards the outside of the circle.

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- Is there a maximum speed with which an object can spin? (Something about the thing eventually flying apart if it rotates too fast, as the atoms can not be held together at some point - maybe there is a cool video to look up?)
]

#seealsoBlock(heading: [To try at home])[
- Spin a mass on a string in a vertical circle, what is the tension in the string when the mass is at the top for it to barely make it around?
- Spin a mass on a string in a vertical circle, how does the minimum speed at the top of the circle to barely make it around  depend on the radius of the circle or the mass?
- Spin a mass on a string in a vertical circle, describe the motion if the mass does not have the minimum speed to make it around the circle. If it makes it to the top, does it automatically make it all the way around the circle?
]

#seealsoBlock(heading: [To try in the lab])[
- Build a conical pendulum and determine whether the opening angle of the cone is related to the speed of the bob, in the way that you expect it to be.
- Propose an experiment to determine the effects of the drag force on projectile motion.
- Propose an experiment which investigates an object's motion when placed on a spinning turntable.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 6.1])[
Consider a conical pendulum with a mass $m$, attached to a string of length $L$. The mass executes uniform circular motion in the horizontal plane, about a circle of radius $R$, as shown in @fig:applyingnewtonslaws:conicalpendulum. One can think of the horizontal circle and the point where the string is attached to as forming a cone. The circular motion is such that the (constant) angle between the string and the vertical is $theta$.

- a. Derive an expression for the tension in the string.
- b.  Derive an expression for the speed of the mass.
- c. Derive an expression for the period of the motion.

#show figure: set block(breakable: true)
#figure(
  image("files/conicalpendulum-909c2cb489ad7ac70f1f338395013c5c.png", width: 30%),
  caption: [
The conical pendulum.
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:conicalpendulum>
]

#noteBlock(heading: [Problem 6.2])[
Barb and Kenny are going to the amusement park. Barb insists on riding the giant roller coaster, but Kenny is scared that they will fall out of the roller coaster at the top of the loop. Barb reassures Kenny by asking the roller coaster technician for more information. The technician says that they will be travelling at $1 5 upright m \/ s$ when upside down, and that the roller coaster loop has a radius of $2 2 upright m$. Kenny is still sceptical. Is he correct in being sceptical?

#show figure: set block(breakable: true)
#figure(
  image("files/rollercoaster-fcc6a55ec109e24ec90fcc064e2b34a0.png", width: 60%),
  caption: [
The roller coaster
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:rollercoaster>
]

==== Solutions <solutions>

#noteBlock(heading: [Solution 6.1])[
- a. We start by identifying the forces that are acting on the mass. These are:
- $arrow(F)_g$, its weight, with a magnitude $m g$.
- $arrow(F)_T$, a force of tension exerted by the string.

The forces are illustrated in @fig:applyingnewtonslaws:conicalpendulumfbd, along with our choice of coordinate system and the direction of the acceleration of the mass (towards the centre of the circle).

#show figure: set block(breakable: true)
#figure(
  image("files/conicalpendulumfbd-260518c853b0cc2419d64f256277bb48.png", width: 20%),
  caption: [
Forces acting on the conical pendulum
],
  kind: "figure",
  supplement: [Figure],
) <fig:applyingnewtonslaws:conicalpendulumfbd>

The $y$ component of Newton's Second law gives the relation between the tension in the string, the weight, and the angle $theta$

$ sum F_y & = 0 \
F_T cos theta -F_g & = 0 \
F_T cos theta & = m g \
therefore F_T & = frac(m g, cos theta) \
 $
- b. In order for the mass to move in a circle, the net force must be directed towards the centre of the circle at all times. The $x$ component of Newton's Second Law, combined with our expression for the magnitude of the tension, $F_T$, allows us to determine the speed of the mass:

$ sum F_x & = m a_r \
F_T sin theta & = m frac(v^2, R) \
(frac(m g, cos theta)) sin theta & = m frac(v^2, R) \
g tan theta & = frac(v^2, R) \
therefore v & = sqrt(g R tan theta) $
- c. Now that we know the speed, we can easily find the period, $T$, of the motion:

$ T & = frac(2 pi R, v) \
& = frac(2 pi R, sqrt(g R tan theta)) = 2 pi sqrt(frac(R, g tan theta)) $
]

#noteBlock(heading: [Solution 6.2])[
We need to determine if the speed of Barb and Kenny is large enough for them to go around the circle. The minimum speed that they must have at the top of the loop is such that their weight (the only force acting on them) provides the centripetal (net) force required to go around the loop.

Writing Newton's Second Law in the vertical direction, for the case where only the weight acts on Barb or Kenny (mass $m$), when they are going at speed $v$

$ m g & = m a_R = m frac(v^2, R) \
therefore v & = sqrt(g R) = sqrt((9 . 8 upright m \/ s^2)(2 2 upright m)) = 1 4 . 6 8 upright m \/ s $
This corresponds to the minimum speed that they must have at the top of the loop to make it around. If they go faster, the normal force from their seat (downwards, since they are upside-down), would result in a larger net force towards the centre of the circle. This situation corresponds to the normal force from their seat just barely reaching 0 at the top of the loop. Since the roller coaster is quoted as having a speed of $1 5 upright m \/ s$ at the top of the loop, they will just barely make it. However, this is way too close to the minimal speed to not fall out of the roller coaster, so Kenny is correct in being sceptical! The engineers designing the roller coaster should include a much bigger safety margin!
]