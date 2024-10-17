/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 11 - Rotational energy and momentum

=== Overview <chapter:angularmomentumrolling>

In this chapter, we extend our description of rotational dynamics to include the rotational equivalents of kinetic energy and momentum. We also develop the framework for describing the motion of rolling objects. We will see that many of the relations that hold for linear quantities also hold for angular quantities.

#hintBlock(heading: [Learning Objectives])[
- Understand how to define the rotational kinetic energy of an object as well as its total kinetic energy.
- Understand how to model rolling motion, and what slipping means in the context of rolling motion.
- Understand how to define the angular momentum of an object and when it is conserved.

#noteBlock(heading: [Think About It])[
How can you model the motion of a downwards going yo-yo?

+ It is similar to that of an object falling with a force of drag.
+ It is similar to that of an object rolling down an incline.
+ It is similar to that of an object sliding down an incline.
+ It is similar to that of an object rotating about a fixed axis of rotation.

#noteBlock(heading: [Answer])[
+
]
]
]

=== Rotational kinetic energy of an object <rotational-kinetic-energy-of-an-object>

In this section, we show how to define the rotational kinetic energy of an object that is rotating about a stationary axis in an inertial frame of reference. Consider a solid object that is rotating about an axis with angular velocity, $arrow(omega)$, as depicted in @fig:angularmomentumrolling:rote.

#show figure: set block(breakable: true)
#figure(
  image("files/rotE-3c26b1af2248a765fa579be7b104af95.png", width: 40%),
  caption: [
An object rotating about an axis that is perpendicular to the page.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:rote>

We can model the object as being composed of many point particles, each with a mass $m_i$, located at a position $arrow(r)_i$, with velocity $arrow(v)_i$ relative to the axis of rotation. We choose a coordinate system whose origin is on the axis of rotation and whose $z$ axis is co-linear with the axis of rotation, as depicted in @fig:angularmomentumrolling:rote.

Each particle of mass $m_i$ in the object has a kinetic energy, $K_i$:

$ K_i = frac(1, 2) m_i v_i^2 $
We can sum the kinetic energy of each particle together to get the total rotational kinetic energy, $K_(r o t)$, of the object:

$ K_(r o t) = sum_i frac(1, 2) m_i v_i^2 $
Although each particle will have a different velocity, $arrow(v)_i$, they will all have the same angular velocity, $arrow(omega)$. For any particle, located a distance $r_i$ from the axis of rotation, their velocity is related to the angular velocity of the object by:

$ arrow(v)_i & = arrow(omega) times arrow(r)_i \
v_i & = omega r_i $
where $arrow(omega)$ and $arrow(r)_i$ are always perpendicular to each other, since $arrow(omega)$ is out of the plane of the page. Furthermore, the velocity vector, $arrow(v)_i$, will always be perpendicular to $arrow(r)_i$, since all particles are moving in circles centred about the axis of rotation.  We can thus write the total rotational kinetic energy of the object using the angular speed:

$ K_(r o t) & = sum_i frac(1, 2) m_i v_i^2 = sum_i frac(1, 2) m_i r_i^2 omega^2 = frac(1, 2) omega^2 sum_i m_i r_i^2 \
& = frac(1, 2) I omega^2 $
where we factored $omega$ and the one half out of the sum, as these are the same for each particle $i$. We then recognized that the remaining sum is simply the definition of the object's moment of inertia about the axis:

$ I = sum_i m r_i^2 $
Thus, the rotational kinetic energy of an object rotating with angular speed $omega$ about an axis that is stationary in an inertial frame of reference is given by:

$ boxed K_(r o t) = frac(1, 2) I omega^2 $
where $I$ is the object's moment of inertia about that axis. The rotational kinetic energy is functionally very similar to the linear kinetic energy; instead of mass, we use the moment of inertia, and instead of speed squared, we use angular speed squared.

==== Work on a rotating object <work-on-a-rotating-object>

We can calculate the work done by a force exerted on an object rotating about a stationary axis in an inertial frame of reference. Let $arrow(F)$ be a force exerted at position, $arrow(r)$, relative to the axis of rotation at some instant in time, and let the force be exerted in the plane perpendicular to the axis of rotation, as illustrated in @fig:angularmomentumrolling:work. Because the object is rotating about the given axis, only the component of the force that is tangent to the circle about which the point where the force is exerted can do work (only the component of the force that is parallel to the displacement can do work).

The work done by the force as the object rotates by a certain angle is given by:

$ W = integral arrow(F) dot.op d arrow(l) = integral F_perp d l $
where $d arrow(l)$ is a small displacement along the (circular) path followed by the point where the force is exerted, as illustrated in @fig:angularmomentumrolling:work. $F_perp$ is the component of $arrow(F)$ that is perpendicular to the vector, $arrow(r)$, from the axis of rotation to the location where the force is exerted ($F_perp$ is the component of $arrow(F)$ that is tangent to the circle).

#show figure: set block(breakable: true)
#figure(
  image("files/work-84fbe3453bb9868e829beb7d99b979d9.png", width: 40%),
  caption: [
Calculating the work done by a force on a rotating object.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:work>

At some instant in time, when the force is exerted at position, $arrow(r)$, consider the scalar product between the torque from the force, $arrow(tau)$, and an infinitesimal angular displacement, $d arrow(theta)$, about the axis of rotation:

$ arrow(tau) dot.op d arrow(theta) =(arrow(r) times arrow(F)) dot.op(frac(1, r^2) arrow(r) times d arrow(l)) $
The vectors $arrow(tau)$ and $d arrow(theta)$ are parallel to the axis of rotation (because $arrow(F)$ and $d arrow(l)$ are in the plane perpendicular to the axis of rotation), so their scalar product will be equal to the product of their magnitudes. The vector $arrow(r) times arrow(F)$ has a magnitude of:

$ arrow(r) times arrow(F) = r F_perp $
where $F_perp$ is the component of the force tangent to the circle. The vector $arrow(r) times d arrow(l)$ has a magnitude:

$ arrow(r) times d arrow(l) = r d l $
since $arrow(r)$ and $d arrow(l)$ are always perpendicular. The scalar product $arrow(tau) dot.op d arrow(theta)$ is thus equal to:

$ arrow(tau) dot.op d arrow(theta) = r F_perp frac(1, r^2) r d l = F_perp d l $
The work done by a force when an object rotates about an axis can thus be written in terms of its torque about that axis and the corresponding angular displacement from $theta_1$ to $theta_2$:

$ W = integral_(theta_1)^(theta_2) arrow(tau) dot.op d arrow(theta) $
The net work done on an object through an angular displacement from $theta_1$ to $theta_2$ can thus be written using the net torque $arrow(tau)^(n e t)$ exerted on the object:

$ W^(n e t) = integral_(theta_1)^(theta_2) arrow(tau)^(n e t) dot.op d arrow(theta) $
We can re-arrange this using Newton's Second Law for rotational dynamics:

$ arrow(tau)^(n e t) & = I arrow(alpha) \
& = I frac(d arrow(omega), d t) = I frac(d omega, d theta) frac(d arrow(theta), d t) = I frac(d omega, d theta) arrow(omega) $
which allows us to write the integral over a change in angular velocity instead of angular displacement:

$ W^(n e t) & = integral_(theta_1)^(theta_2) arrow(tau)^(n e t) dot.op d arrow(theta) = integral_(theta_1)^(theta_2) I frac(d omega, d theta) arrow(omega) dot.op d arrow(theta) \
& = integral_(omega_1)^(omega_2) I omega d omega = frac(1, 2) I omega_2^2 -frac(1, 2) I omega_1^2 $
where we used the fact that $arrow(omega)$ are $d arrow(theta)$ are parallel. We thus find that the Work-Energy Theorem can also be applied to find the change in rotational kinetic energy resulting from the net work done by a torque:

$ boxed W^(n e t) = integral_(theta_1)^(theta_2) arrow(tau)^(n e t) dot.op d arrow(theta) = Delta K_(r o t) $
If a constant torque, $arrow(tau)$, is exerted on an object that is rotating at constant angular velocity, $arrow(omega)$, then the rate at which that work  is being done is given by:

$ P = frac(d W, d t) = frac(d, d t) arrow(tau) dot.op d arrow(theta) = arrow(tau) dot.op frac(d arrow(theta), d t) = arrow(tau) dot.op arrow(omega) $
This is very similar to the power, $P = arrow(F) dot.op arrow(v)$, with which a force does work on an object moving with constant velocity, except that instead of force we use torque, and instead of velocity, we use angular velocity.

==== Total kinetic energy of an object <total-kinetic-energy-of-an-object>

In the frame of reference of the centre of mass, an object rotating about an axis through its centre of mass with angular velocity, $arrow(omega)$, will have rotational kinetic energy, $K_(r o t)$, given by:

$ K_(r o t) = frac(1, 2) I_(C M) omega^2 $
where $I_(C M)$ is the moment of inertia of the object about the axis through its centre of mass.

We wish to determine the kinetic energy of the object in an inertial frame of reference where the object's centre of mass is moving with a velocity $arrow(v)_(c m)$; that is, in a frame where the axis of rotation is moving with the velocity of the centre of mass. We model the object as being composed of particles of mass, $m_i$, each located at position, $arrow(r)_i$, relative to the axis of rotation through the centre of mass. The velocity, $arrow(v)_i$, of a particle $i$, in this frame of reference, is given by:

$ arrow(v)_i = arrow(omega) times arrow(r)_i + arrow(v)_(C M) $
where $arrow(omega) times arrow(r)_i$ is the velocity of the particle as seen in the centre of mass (due to rotation). The kinetic energy of particle $i$, $K_i$, is given by:

$ K_i = frac(1, 2) m_i v_i^2 = frac(1, 2) m_i (arrow(v)_i dot.op arrow(v)_i) $
where we expressed the speed of the particle squared using a scalar product of the velocity of the particle with itself. The total kinetic energy of the object is found by summing the kinetic energies of all of the particles:

$ K_(t o t) & = sum frac(1, 2) m_i (arrow(v)_i dot.op arrow(v)_i) \
& = frac(1, 2) sum_i m_i (arrow(omega) times arrow(r)_i + arrow(v)_(C M)) dot.op(arrow(omega) times arrow(r)_i + arrow(v)_(C M)) \
& = frac(1, 2) sum_i m_i (arrow(omega) times arrow(r)_i) dot.op(arrow(omega) times arrow(r)_i) + frac(1, 2) sum_i m_i (arrow(v)_(C M)) dot.op(arrow(v)_(C M)) + sum_i m_i (arrow(omega) times arrow(r)_i) dot.op(arrow(v)_(C M)) \
& = frac(1, 2) sum_i m_i omega^2 r_i^2 + frac(1, 2) sum_i m_i v_(C M)^2 + sum_i m_i (arrow(omega) times arrow(r)_i) dot.op(arrow(v)_(C M)) \
& = frac(1, 2) I_(C M) omega^2 + frac(1, 2) M v_(C M)^2 + sum_i m_i (arrow(omega) times arrow(r)_i) dot.op(arrow(v)_(C M)) $
where the first term is the rotational kinetic energy that we found earlier. The second term, called the "translational kinetic energy", can be thought of as the kinetic energy of the whole system with mass $M = sum m_i$, due to the translational motion of the centre of mass. The last term is identically zero; we can re-order the scalar product and factor $arrow(v)_(C M)$ out of the sum:

$ sum_i m_i (arrow(omega) times arrow(r)_i) dot.op(arrow(v)_(C M)) & =(arrow(v)_(C M)) dot.op sum_i m_i (arrow(omega) times arrow(r)_i) \
& =(arrow(v)_(C M)) dot.op sum_i m_i arrow(v) '_i $
where $v '_i = arrow(omega) times arrow(r)_i$ is the velocity of particle $i$ in the center of mass frame of reference. But the sum:

$ sum_i m_i arrow(v) '_i $
is the numerator for the definition of the velocity of the centre of mass, which, in the centre of mass frame of reference is identically zero!

Thus, the total kinetic energy of an object of mass, $M$, that is rotating about an axis through its centre of mass with angular velocity, $omega$, and whose centre of mass is moving with velocity, $arrow(v)_(C M)$, is given by:

$ boxed K_(t o t) = K_(r o t) + K_(t r a n s) = frac(1, 2) I_(C M) omega^2 + frac(1, 2) M v_(C M)^2 $
The total kinetic energy can be thought of as the sum of the rotational and kinetic energies.

=== Rolling motion <rolling-motion>

In this section, we examine how to model the motion of an object that is rolling along a surface, such as the motion of a bicycle wheel. Consider the motion of a wheel of radius, $R$, rotating with angular velocity, $arrow(omega)$, about an axis perpendicular to the wheel and through its centre of mass, *as observed in the centre of mass frame*. This is illustrated in @fig:angularmomentumrolling:wheelcm.

#show figure: set block(breakable: true)
#figure(
  image("files/wheelcm-0e33844708b1777dab52fec6eb370889.png", width: 30%),
  caption: [
A wheel rotating with angular velocity $arrow(omega)$ about an axis through its centre of mass.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:wheelcm>

In the frame of reference of the centre of mass, each point on the edge of the wheel has a velocity, $arrow(v)_(r o t)$, due to rotation given by:

$ arrow(v)_(r o t) = arrow(omega) times arrow(r) $
where $arrow(r)$ is a vector (of magnitude $R$) from the centre of mass to the corresponding point on the edge of the wheel (shown in @fig:angularmomentumrolling:wheelcm for a point on the lower left of the wheel). The vector $arrow(r)$ is always perpendicular to $arrow(omega)$, so that the speed of all points on the edge, as measured in the frame of reference of the centre of mass, is the same:

$ v_(r o t) = omega R $ <eq:angularmomentumrolling:vrot>
as illustrated in @fig:angularmomentumrolling:wheelcm.

Now, suppose that the whole wheel is moving, as it rolls on the ground, such that the centre of mass of the wheel moves with a velocity, $arrow(v)_(C M)$, as illustrated in @fig:angularmomentumrolling:wheelground.

#show figure: set block(breakable: true)
#figure(
  image("files/wheelground-ea054c3bfbed539816b3e6d137584dbb.png", width: 95%),
  caption: [
A wheel rolling without slipping on the ground, with the centre of mass moving with velocity $arrow(v)_(C M)$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:wheelground>

The wheel is shown at different instants in time, as the point shown in red moves around the centre of mass.\}
In the frame of reference of the ground, each point on the edge of the wheel will have a velocity $arrow(v)$ given by:

$ arrow(v) = arrow(v)_(r o t) + arrow(v)_(C M) $
That is, in the frame reference of the ground, each point will have a velocity obtained by (vectorially) adding its velocity relative to the centre of mass, $arrow(v)_(r o t)$, and the velocity of the centre of mass relative to the ground, $arrow(v)_(C M)$. This is illustrated in @fig:angularmomentumrolling:wheelground for one specific point, shown in red. The red vector corresponds to the velocity of the red point as the wheel rotates, and is obtained by adding the velocity of the centre of mass, $arrow(v)_(C M)$, and the velocity, $arrow(v)_(r o t)$, relative to the centre of mass (shown as the dashed vector, tangent to the edge of the wheel).

Consider, specifically, the instant in time when the red point is at the bottom of the wheel, where the wheel makes contact with the ground. *If the wheel is not slipping with respect to the ground*, then the point is, at that instant, at rest relative to the ground. We call this type of motion "rolling without slipping"; the point on the rotating object that is in contact with the ground is instantaneously at rest relative to the ground. This is the scenario illustrated in @fig:angularmomentumrolling:wheelground.

For the point in contact with the ground, the vectors $arrow(v)_(r o t)$ and $arrow(v)_(C M)$ are anti-parallel, horizontal, and must sum to zero. Writing out the horizontal component of the velocity of that point (choosing the positive direction to be in the direction of the velocity of the centre of mass):

$ v & = -v_(r o t) + v_(C M) = 0 \
therefore v_(r o t) & = v_(C M) $
and we find that, for rolling without slipping, the speed due to rotation about the centre of mass has to be equal to the speed of the centre of mass. The speed due to rotation about the centre of mass can be expressed using the angular velocity of the wheel about the centre of mass (@eq:angularmomentumrolling:vrot). For rolling without slipping, we thus have the following relationship between angular velocity and the speed of the centre of mass:

$ boxed omega R = v_(C M) quad "(rolling without slipping)" $
It makes sense for the angular velocity to be related to the speed of the centre of mass. The faster the wheel rotates, the faster the centre of mass will move. If the wheel is slipping with respect to the ground, then the point of contact is no longer stationary relative to the ground, and there is no relation between the angular velocity and the speed of the centre of mass. For rolling with slipping, imagine the motion of your bicycle wheel as you try to ride your bike on a slick sheet of ice.

For rolling without slipping, the magnitude of the linear acceleration of the centre of mass, $a_(C M)$, is similarly related to the magnitude of the angular acceleration of the wheel, $alpha$, about the centre of mass:

$ a_(C M) & = frac(d v_(C M), d t) = frac(d, d t) omega R = R frac(d omega, d t) \
therefore a_(C M) & = R alpha $
#tipBlock(heading: [Checkpoint])[
For rolling without slipping (@fig:angularmomentumrolling:wheelground), the speed of the point on the wheel that is in contact with the ground is 0. What is the speed of the point at the top of the wheel?

+ 0
+ $v_(C M)$.
+ $2 v_(C M)$.
+ None of the above.

#tipBlock(heading: [Answer])[
+
]
]

#noteBlock(heading: [Example 11.1])[
#show figure: set block(breakable: true)
#figure(
  image("files/diskslope-7e1ab66d6b3e0fd4d814dc76ee898212.png", width: 50%),
  caption: [
A disk rolling without slipping down an incline.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:diskslope>

A disk of mass $M$ and radius $R$ is placed on an incline at a height $h$ above the ground. The incline makes an angle $theta$ with respect to the horizontal, as shown in @fig:angularmomentumrolling:diskslope. If the disk starts at rest and rolls without slipping down the incline, what speed will the centre of mass have when the disk reaches the bottom of the incline?

#noteBlock(heading: [Solution])[
We can use the conservation of mechanical energy to determine the speed of the centre of mass at the bottom of the incline, as there are no non-conservative forces doing work on the disk. If we choose to define gravitational potential energy such that it is zero at the bottom of the incline, we can write the total mechanical energy of the disk at the top of the incline as:

$ E = K + U =(0) + M g h $
where the kinetic energy is zero, since the disk starts at rest#footnote[Technically, the potential energy should be taken for the height of the centre of mass, which is a distance $h_(C M) = h + R cos theta$ from the ground at the top of the incline, and a height $h '_(C M) = R$ at the bottom of the incline. The net difference in height for the centre of mass is thus $h_(C M) -h '_(C M) = h + R(1 -cos theta)$. If we assume that $h$ is much bigger than $R$, then this is negligible, otherwise, that is what we should use instead of $h$ for the potential energy.]. At the bottom of the incline, the disk will have only kinetic energy, since the potential energy at the bottom is defined to be zero. The kinetic energy of the disk will have a component from the rotation of the disk about the centre of mass, with angular speed $omega$, and a component from the translation of the centre of mass with speed $v_(C M)$. The mechanical energy at the bottom of the incline is thus:

$ E ' = K ' + U = K '_(r o t) + K '_(t r a n s) +(0) = frac(1, 2) I_(C M) omega^2 + frac(1, 2) M v_(c m)^2 $
Since the disk is rolling without slipping, its angular speed is related to the speed of centre of mass:

$ omega = frac(v_(C M), R) $
The moment of inertia of the disk about its centre of mass is given by:

$ I_(C M) = frac(1, 2) M R^2 $
We can thus write the mechanical energy at the bottom of the incline as:

$ E ' & = frac(1, 2) I_(C M) omega^2 + frac(1, 2) M v_(c m)^2 \
& = frac(1, 2)(frac(1, 2) M R^2)(frac(v_(C M), R))^2 + frac(1, 2) M v_(c m)^2 \
& = frac(3, 4) M v_(c m)^2 $
Applying conservation of energy allows us to determine the speed of the centre of mass at the bottom of the incline:

$ E & = E ' \
M g h & = frac(3, 4) M v_(c m)^2 \
therefore v_(C M) & = sqrt(frac(4, 3) g h) $
*Discussion:* This example showed how we can use the conservation of energy to model the motion of an object that is rolling without slipping. The constraint of rolling without slipping allowed for the angular speed of the object to be related to the speed of its centre of mass.
]
]

#tipBlock(heading: [Checkpoint])[
A hoop, a disk, and a sphere roll without slipping down an incline. If they are all released at the same time, in what order will they arrive at the bottom?\}

+ Hoop, disk, sphere.
+ Sphere, disk, hoop.
+ Disk, sphere, hoop.
+ Disk, hoop, sphere.

#tipBlock(heading: [Answer])[
+
]
]

==== The instantaneous axis of rotation <the-instantaneous-axis-of-rotation>

When an object is rolling without slipping, we can model its motion as the superposition of rotation about the centre of mass and translational motion of the centre of mass, as in the previous section. However, because the point of contact between the rolling object and the ground is stationary, we can also model the motion as if the object were instantaneously rotating with angular velocity, $arrow(omega)$, about a stationary axis through the point of contact. That is, we can model the motion as rotation only, with no translation, if we choose an axis of rotation through the point of contact between the ground and the wheel.

We call the axis through the point of contact the "instantaneous axis of rotation", since, instantaneously, it appears as if the whole wheel is rotating about that point. This is illustrated in @fig:angularmomentumrolling:wheelinstant, which shows, in red, the velocity vector for each point on the edge of the wheel, relative to the instantaneous axis of rotation. Because the axis of rotation is fixed to the ground, the velocity of each point about that axis of rotation corresponds to the same velocity relative to the ground that is depicted in @fig:angularmomentumrolling:wheelground.

#show figure: set block(breakable: true)
#figure(
  image("files/wheelinstant-2a6ca6fe77408916b27c34e10ac10053.png", width: 40%),
  caption: [
A wheel that is rolling without slipping, as viewed if rotating about the instantaneous axis of rotation that passes through the point of contact with the ground.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:wheelinstant>

In particular, the angular velocity, $arrow(omega)$, about the instantaneous axis of rotation is the same as when we model the motion as translation plus rotation about the centre of mass ,as in the previous section. Indeed, relative to the instantaneous axis of rotation, the centre of mass must still have a velocity $arrow(v)_(C M)$, which is given by:

$ arrow(v)_(C M) & = arrow(omega) times arrow(r)_(C M) \
therefore v_(C M) & = omega R $
where $arrow(r)_(C M)$ is the vector from the axis of rotation to the centre of mass. This is the same condition for rolling without slipping that we found before. Similarly, the velocity of any point on the wheel, relative to the ground, is given by:

$ arrow(v) = arrow(omega) times arrow(r) $
where $arrow(r)$ is the vector from the axis of rotation to the point of interest (shown in @fig:angularmomentumrolling:wheelinstant for the point on the right side of the wheel). In particular, the velocity vector (in red) for any point is always perpendicular to the vector $arrow(r)$ for that point, which was not necessarily obvious when modelling the motion as rotation plus translation, as in @fig:angularmomentumrolling:wheelground.

#noteBlock(heading: [Example 11.2])[
#show figure: set block(breakable: true)
#figure(
  image("files/diskslope-7e1ab66d6b3e0fd4d814dc76ee898212.png", width: 50%),
  caption: [
A disk rolling without slipping down an incline.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:diskslope2>

A disk of mass $M$ and radius $R$ is placed on an incline at a height $h$ above the ground. The incline makes an angle $theta$ with respect to the horizontal, as shown in @fig:angularmomentumrolling:diskslope2. What is the angular acceleration of the disk, about an axis through its centre of mass, as it rolls without slipping down the slope?

#noteBlock(heading: [Solution])[
In order to determine the angular acceleration of the disk about the centre of mass, we need to model the forces that are exerted on the disk. The forces exerted on the disk are:

+ $arrow(F)_g$, the weight of the disk, exerted downwards at the centre of mass, with magnitude $M g$.
+ $arrow(N)$, a normal force perpendicular to the incline, exerted by the incline at the point of contact with the disk.
+ $arrow(f)_s$, a force of static friction parallel to the incline, exerted by the incline at the point of contact with the disk. Without this force, the disk would simply slide down the incline without rotating.

These forces are illustrated in @fig:angularmomentumrolling:diskslope_fbd, along with the acceleration of the centre of mass, and our choice of coordinate system (we choose the $x$ axis parallel to the acceleration of the centre of mass, to facilitate applying Newton's Second Law).

#show figure: set block(breakable: true)
#figure(
  image("files/diskslope_fbd-6c0bbf5637c869c1dcecbcc6a840deaf.png", width: 40%),
  caption: [
The forces on the disk rolling without slipping down an incline.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:diskslope_fbd>

The angular acceleration of the disk about the centre of mass, $arrow(alpha)$ is given by Newton's Second Law for rotational dynamics:

$ arrow(tau)^(e x t) = I_(C M) arrow(alpha) $
where $arrow(tau)^(e x t)$ is the net external torque on the disk about the centre of mass (which will be in the negative $z$ direction).

The only force that can exert a torque about the centre of mass is the force of static friction. Gravity has a lever arm of zero and the normal force is anti-parallel to the vector that goes from the centre of mass to the point where the force is exerted. The net torque about the centre of mass is thus:

$ arrow(tau)^(e x t) = arrow(tau)_(f_s) = arrow(r)_(f_s) times arrow(f)_s = -R f_s hat(z) $
The angular acceleration will thus be in the negative $z$ direction, and the magnitude is given by:

$ alpha = frac(tau^(e x t), I_(C M)) = frac(R f_s, frac(1, 2) M R^2) = frac(2 f_s, M R) $
However, we do not know the magnitude of the force of static friction. We can use the $x$ and $y$ components of Newton's Second Law to determine it (with acceleration of the centre of mass in the $x$ direction):

$ sum F_x & = F_g sin theta -f_s = M a_(C M) \
sum F_y & = N -F_g cos theta = 0 $
Because the disk is rolling without slipping, the acceleration of the centre of mass is related to the angular acceleration of the disk:

$ a_(c m) = alpha R $
The $x$ component of Newton's Second Law can thus be used to determine the magnitude of the force of static friction in terms of the angular acceleration:

$ M g sin theta -f_s & = M alpha R \
therefore f_s & = M g sin theta -M alpha R $
We can then substitute out the force of friction from our previous formula for the angular acceleration:

$ alpha & = frac(2 f_s, M R) \
& = frac(2 M g sin theta -2 M alpha R, M R) = frac(2 g sin theta, R) -2 alpha \
therefore alpha & = frac(2 g sin theta, 3 R) $
Instead of modelling the motion of the disk  as rotation about the centre of mass and translation of the center of mass, we can also model it about the instantaneous axis of rotation.

The angular acceleration about the instantaneous axis of rotation will be the same as the angular acceleration about the centre of mass. About the instantaneous axis of rotation, only the force of gravity can exert a torque, since the normal force and the force of friction both have a lever arm of zero. The torque from the force of gravity, about the instantaneous axis of rotation is:

$ arrow(tau)_g = -F_g R sin theta hat(z) = -M g R sin theta hat(z) $
The torque from the force of gravity is equal to the moment of inertia of the disk about the instantaneous axis of rotation, $I$, multiplied by its angular acceleration:

$ tau^(e x t) = tau_g & = I alpha \
therefore alpha & = frac(tau_g, I) = frac(M g R sin theta, I) $
The moment of inertia about the instantaneous axis of rotation is easily found using the parallel axis theorem:

$ I = I_(C M) + M R^2 = frac(1, 2) M R^2 + M R^2 = frac(3, 2) M R^2 $
This allows us to find the angular acceleration of the disk:

$ alpha & = frac(M g R sin theta, I) = frac(M g R sin theta, frac(3, 2) M R^2) \
& = frac(2 g sin theta, 3 R) $
as we found previously, but in this case, we did not need to use Newton's Second Law to determine the force of friction.

*Discussion:* We saw that we can model the dynamics of the rolling body using either an axis through the centre of mass, or an axis through the instantaneous axis of rotation. The latter was easier in this case, because it did not require using Newton's Second Law.

By using an axis through the centre of mass to model the motion of the disk, it was clear that the force of static friction is required in order for the disk to rotate. Without the force of static friction, the disk would slide along the surface of the incline. The disk could still rotate if there is a force of kinetic friction that causes a torque that rotates the disk. If the surface were completely frictionless, the disk would simply slide down the incline, and we could model it as a sliding block. If the incline is too steep the force of static friction is no longer sufficient to provide the necessary torque required for the angular acceleration to be that which corresponds to rolling without slipping, and the disk would slip.
]
]

=== Angular momentum <angular-momentum>

In this section, we show that we can define a quantity called "angular momentum" as the rotational equivalent of the linear momentum.

==== Angular momentum of a particle <angular-momentum-of-a-particle>

The angular momentum relative to a point of rotation, $arrow(L)$, of a particle with linear momentum, $arrow(p)$, is defined as:

$ boxed arrow(L) = arrow(r) times arrow(p) $
where $arrow(r)$ is the vector from the point of rotation to the particle, and the linear momentum, $arrow(p)$, is defined relative to an inertial frame of reference in which the point of rotation is at rest.

Consider the time-derivative of angular momentum (where we have to use the product rule for derivatives):

$ frac(d arrow(L), d t) & = frac(d, d t)(arrow(r) times arrow(p)) \
& = frac(d arrow(r), d t) times arrow(p) + arrow(r) times frac(d arrow(p), d t) \
& = arrow(v) times arrow(p) + arrow(r) times frac(d arrow(p), d t) \
 $
The first term is zero, since $arrow(v)$ is parallel to $arrow(p)$ by definition. Recall Newton's Second Law written using linear momentum:

$ frac(d arrow(p), d t) = arrow(F)^(n e t) $
where $arrow(F)^(n e t)$ is the net force on the particle relative to the point of rotation. The rate of change of angular momentum is thus given by:

$ frac(d arrow(L), d t) & = arrow(r) times frac(d arrow(p), d t) \
& = arrow(r) times arrow(F)^(n e t) $
where the term on the right is the net torque on the particle. Thus, the rate of change of angular momentum is given by:

$ boxed frac(d arrow(L), d t) = arrow(tau)^(n e t) $
which is analogous to the linear case, but we used angular momentum instead of linear momentum and net torque instead of net force. The net torque on a particle is thus equal to the rate of change of its angular momentum. In particular, the angular momentum of a particle will remain constant (not change with time) if the net torque on the particle is zero.

We can also define the angular momentum of a particle using only angular quantities:

$ arrow(L) = arrow(r) times arrow(p) = m arrow(r) times arrow(v) = m r^2 arrow(omega) $
where we factored the mass $m$ out of the momentum and used the definition $arrow(omega) = 1 \/ r^2 (arrow(r) times arrow(v))$. We can think of $m r^2$ as the moment of inertia, $I$, of the particle and write:

$ boxed arrow(L) = m r^2 arrow(omega) = I arrow(omega) $ <eq:angularmomentumrolling:liw>
which is a close analogue to the definition of linear momentum, but we use moment of inertia instead of mass and angular velocity instead of velocity.

The angular momentum is thus parallel to the angular velocity of the particle about the point of rotation. If no net torque is exerted on the particle about that point, then the particle's angular momentum about that point will remain constant. We can also consider the torque and angular momentum about an axis instead of a point; in that case, we would simply take the components of torque and angular momentum that are parallel to that axis.

#noteBlock(heading: [Example 11.3])[
#show figure: set block(breakable: true)
#figure(
  image("files/circle-d31ab27f0e6119d03652d0284fcc0b14.png", width: 25%),
  caption: [
A small block attached to a mass-less string moving in a horizontal circle on a table.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:circle>

A small block of mass $m$ attached to a mass-less string is moving along a circle of radius $R$ on a horizontal table, as depicted from above in @fig:angularmomentumrolling:circle. If the table is frictionless: are the block's linear and/or angular momentum with respect to the axis of rotation conserved? If there is friction between the table and the block, are the block's linear and/or angular momentum with respect to the axis of rotation conserved? What can you say about the kinetic energy of the block in the two cases?

#noteBlock(heading: [Solution])[
If there is no friction between the block and the table, then the forces exerted on the block are:

+ $arrow(F)_g$, the block's weight, exerted downwards, with magnitude $m g$.
+ $arrow(N)$, a normal force, exerted upwards, with magnitude $m g$.
+ $arrow(T)$, a force of tension, exerted towards the centre of the circle.

All of these forces are perpendicular to the (tangential) displacement of the block along the circle. Thus, there can be no work done on the block and its speed, $v$, must remain constant. The kinetic energy of the block must thus remain constant.

The sum of the forces on the block must be towards the centre of the circle, since the block is in uniform circular motion. The linear momentum of the block cannot be conserved if there is a net force on the block (and clearly, the block's velocity vector changes direction as it goes around the circle).

The forces of weight and the normal force are both outside of the plane of motion, and thus cannot exert a torque along the axis of rotation. They are also equal and opposite in magnitude so the net torque from those two forces is always zero (since the net force from those forces is zero). The force of tension is always anti-parallel to the vector $arrow(r)$, from the axis of rotation to the particle, and cannot result in a torque about the rotation axis. Thus, the net torque on the block is zero and its angular momentum must be conserved.

If there is kinetic friction exerted by the table on the block, then there is an additional force, $arrow(f)_s$, exerted on the block in the direction opposite of motion (tangent to the circle, in the opposite direction from the block's velocity).

The force of friction will do negative work on the block, slowing it down and reducing its kinetic energy, which is no longer conserved. The net force on the block is non-zero, so its linear momentum is still not conserved. Finally, the force of friction, which is always perpendicular to $arrow(r)$, will result in a torque that reduces the angular velocity of the block. The block's angular momentum is thus no longer conserved when there is friction between the table and the block.

*Discussion:* In this example, we saw that kinetic energy, linear momentum, and angular momentum are all conserved under different conditions. Kinetic energy is conserved if no net work is done on the block. Linear momentum is conserved if the net force on the block is zero. Angular momentum is conserved if the net torque on the block is zero. By introducing angular momentum, we are able to use a new conserved quantity to help us model rotational dynamics.
]
]

#noteBlock(heading: [Example 11.4])[
#show figure: set block(breakable: true)
#figure(
  image("files/line-7dfe9b02759d368dff3d32815c69cde0.png", width: 30%),
  caption: [
A particle moving in a straight line.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:line>

A particle is moving with constant velocity $arrow(v)$ (in a straight line) relative to a coordinate system in an inertial frame of reference, as shown in @fig:angularmomentumrolling:line. Show that its angular momentum about the origin is conserved.

#noteBlock(heading: [Solution])[
In this case, the particle is moving in a straight line, but we can still define its angular momentum relative to the origin. If $arrow(r)$ is the position vector of the particle relative to the origin, its angular momentum is:

$ arrow(L) = arrow(r) times arrow(p) $
We can take the time derivative of the angular momentum to see if it changes with time:

$ frac(d arrow(L), d t) = & = frac(d, d t)(arrow(r) times arrow(p)) \
& = frac(d arrow(r), d t) times arrow(p) + arrow(r) times frac(d arrow(p), d t) \
& = arrow(v) times arrow(p) + arrow(r) times frac(d arrow(p), d t) \
 $
The first term is zero because $arrow(v)$ and $arrow(p)$ are parallel (so their cross-product must be zero). The second term is zero because the particle's momentum is constant in time (since its velocity is constant). Thus, the particle's angular momentum does not change with time, and it is conserved.

*Discussion:* Of course, we expected this result since no net torque is exerted on the particle. It is however worth highlighting that a particle does not need to be rotating for its angular momentum about a given axis to be defined or conserved; all that matters is that there is no net torque on the particle relative to that axis.
]
]

==== Angular momentum of an object or system <angular-momentum-of-an-object-or-system>

Consider a system made of many particles of mass, $m_i$, each with a position, $arrow(r)_i$, and velocity, $arrow(v)_i$, relative to a point of rotation that is fixed in an inertial frame of reference.

We can write Newton's Second Law using the angular momentum, $arrow(L)_i$, for particle $i$:

$ frac(d arrow(L)_i, d t) = arrow(tau)_i^(n e t) $
where $arrow(tau)_i^(n e t)$ is the net torque exerted on particle $i$. We can sum each side of this equation for all of the particles in the system:

$ frac(d arrow(L)_1, d t) + frac(d arrow(L)_2, d t) + frac(d arrow(L)_3, d t) + dots.h & = arrow(tau)_1^(n e t) + arrow(tau)_2^(n e t) + arrow(tau)_3^(n e t) + dots.h \
therefore frac(d, d t) sum_i arrow(L)_i & = sum_i arrow(tau)_i^(n e t) $
The sum of all of the torques on all of the particles will include a sum over torques that are internal to the system and torques that are external to the system. The sum over internal torques is zero:

$ sum_i arrow(tau)_i^(n e t) = sum_i arrow(tau)_i^(i n t) + sum_i arrow(tau)_i^(e x t) = sum_i arrow(tau)_i^(e x t) = arrow(tau)^(e x t) $
where we defined, $arrow(tau)^(e x t)$, to be the net external torque exerted on the system. We also introduce the total angular momentum of the system, $arrow(L)$, as the sum of the angular momenta of the individual particles:

$ arrow(L) = sum_i arrow(L)_i $
The rate of change of the total angular momentum of the system is then given by:

$ boxed frac(d arrow(L), d t) = arrow(tau)^(e x t) $
Up to this point, we did not require that the system be a solid object, so the particles in the system can move relative to each other. For example, the particles could be the Sun, planets, and everything else that is in our Solar System. The total angular momentum of all of the bodies in the Solar System (say, relative to the Sun) is conserved if there is no net torque on the solar system relative to the Sun (i.e. if there is no torque about the Sun exerted on any of the bodies in the system that is not exerted by one of the other bodies in the system).

Now, consider a solid object that is modelled as a system of many particles of mass, $m_i$, at position, $arrow(r)_i$, with velocity, $arrow(v)_i$, relative to a fixed axis of rotation. We can define the angular momentum of a single particle as equation @eq:angularmomentumrolling:liw:

$ arrow(L)_i = m_i r_i^2 arrow(omega)_i $
The total momentum of the system is the sum of the angular momenta of the individual particles:

$ arrow(L) & = sum_i arrow(L)_i = sum_i m_i r_i^2 arrow(omega)_i $
Because all of the particles are part of the same object, they must all move in unison and have the same angular velocity, $arrow(omega)$, relative to the axis of rotation. We can thus define the angular momentum about the rotation axis for a solid object with angular velocity, $arrow(omega)$, as:

$ boxed arrow(L) =(sum_i m_i r_i^2) arrow(omega) = I arrow(omega) $
where we recognized that the sum in parentheses is simply the moment of inertia of the object relative to the axis of rotation. Again, it should be emphasized that this is the total angular momentum of the object about an axis of rotation, and not about a point.

Visualizing the torque and angular momentum of a system can be challenging because it almost always requires visualizing something in three dimensions. Consider a wheel (e.g. a bicycle wheel) that is spinning about horizontal axle which you hold with your hands, as illustrated in the left panel of @fig:angularmomentumrolling:deltal (without the hands). Imagine that you are holding onto the axle so that the wheel is front of you, your right hand is to the right of the wheel and your left hand is to the left of the wheel.

#show figure: set block(breakable: true)
#figure(
  image("files/deltal-b83960f835c131f13adeb1c0c670abe8.png", width: 40%),
  caption: [
A wheel rotating on an axle, with a horizontal angular velocity (left). If you try to tilt the axle as shown in the right panel, changing the angular momentum of the wheel, you will also need to exert a torque in the vertical direction (shown at the bottom right).
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:deltal>

We define a coordinate system as shown so that the wheel is spinning as shown in the left panel, with angular velocity (and angular momentum) in the positive $x$ direction (the top of the wheel is coming towards you).

You then try to lift your right hand while lowering your left hand in order to tilt the rotation axis, as shown in the right panel. In doing so, you change the direction of the angular momentum (and angular velocity) of the wheel such that the angular momentum, $arrow(L) '$, now has a vertical component, $Delta arrow(L)$, as shown. The torque that is required in order to change the angular momentum is given by:

$ arrow(tau) = frac(d arrow(L), d t) tilde frac(Delta arrow(L), Delta t) $
where $Delta t$ is the time that it takes to change the axis of rotation. The torque required in order to change the axis of rotation is directed in the same direction as $Delta arrow(L)$ (the positive $y$ direction). That is, you will not be able to simply tilt the axle as shown; if you want to tilt the axle, you will also need to push forward with you right hand and pull backwards with your left hand to exert the required torque (shown in the bottom right of the figure)! If you simply try to tilt the rotation axis, your right hand will be pushed towards you and your left hand away from you, as a reaction to the torque that would otherwise be required to tilt the axis!

==== Conservation of angular momentum <conservation-of-angular-momentum>

In the previous section, we saw that the net external torque that is exerted on an object (or system) is equal to the rate of change of its angular momentum:

$ frac(d arrow(L), d t) = arrow(tau)^(e x t) $
where the angular momentum and torque are measured about the same axis or point of rotation, fixed in an inertial frame of reference.

The total angular momentum of a system about a point of rotation is conserved (i.e. does not change with time) if there is no net external torque exerted on the system about that point. If one makes the system large enough, then all of the torques can be taken to be internal, and the angular momentum of the system is conserved. The angular momentum of the Universe about a fixed point is thus conserved.

Conservation of angular momentum is another conservation law that we derived from Newton's Second Law. In the modern formulation of physics, we understand that the conservation of angular momentum is associated with rotational symmetry of Newton's Second Law; it does not matter from which "angle" we model a system, we can always use Newton's Second Law. Similarly, conservation of linear momentum is associated with translational symmetry and conservation of energy is associated with the fact that Newton's Second Law does not change with time. Angular momentum is fundamentally different than linear momentum and energy, and is conserved under different conditions. The angular momentum of a system about a given axis/point is conserved if there is no net torque on the system about that axis/point.

#noteBlock(heading: [Example 11.5])[
During a spin, a figure skater brings his arms close to his body and increases his angular velocity from $omega_1$ to $omega_2$. By what fraction did his moment of inertia decrease in doing so?

#noteBlock(heading: [Solution])[
We can consider the rotation axis to be vertical through the centre of the skater. When the figure skater is spinning, there is no net external torque on him. Thus, his angular momentum is conserved as he bring his arms in. As he bring his arms in, his moment of inertia decreases, since he is bringing the mass of his arms closer to the axis of rotation. If $I_1$ and $I_2$ are the moments of inertia of the skater before and after brining his arms in, respectively, we can write the angular momentum about his axis of rotation as:

$ L_1 & = I_1 omega_1 \
L_2 & = I_2 omega_2 $
Since there is no external torque on the skater, the angular momentum is the same before and after he changes his moment of inertia:

$ L_1 & = L_2 \
I_1 omega_1 & = I_2 omega_2 \
therefore frac(I_1, I_2) & = frac(omega_2, omega_1) $
*Discussion:* A spinning figure skater is a good example of the conservation of angular momentum. By changing their shape, they can change their moment of inertia and thus their angular velocity.
]
]

#noteBlock(heading: [Example 11.6])[
Show that Kepler's Second Law is equivalent to a statement about conservation of the angular momentum of a planet orbiting the Sun.

#noteBlock(heading: [Solution])[
Kepler's Second Law states that in a period of time $Delta t$, the area, $Delta A$, that is swept out by a planet is constant, regardless of where it is along its orbit. In other words:

$ frac(Delta A, Delta t) = "constant" $
@fig:angularmomentumrolling:kepler shows a planet in an elliptical orbit around the sun.

#show figure: set block(breakable: true)
#figure(
  image("files/kepler-4f0dc3c3a6aa1990dece4a276ade8e92.png", width: 50%),
  caption: [
The area swept out by a planet in a period of time $d t$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:kepler>

At some point in time, the planet has a velocity vector $arrow(v)$ and position vector $arrow(r)$ relative to the Sun. In a small period of time $d t$, the planet will move along a short distance $v d t$, which we can take as a straight line if $d t$ is small enough. Let $phi.alt$ be the angle between the velocity and position vectors when these are tail to tail, as illustrated.

The small amount of area, $d A$, swept out by the planet in a period of time $d t$, is given by the area of the right angle triangle with height $r$ and base $v d t sin phi.alt$#footnote[This is only exact in the limit of $d t arrow.r 0$, when the small area from the extra piece outside of the ellipse vanishes.]:

$ d A = frac(1, 2) r v d t sin phi.alt $
The rate at which the area is swept out is thus:

$ frac(d A, d t) = frac(1, 2) r v sin phi.alt $
Consider now the magnitude of the planet's angular momentum about the Sun:

$ L = r p sin phi.alt = r m v sin phi.alt $
where the mass of the planet is $m$. The rate at which the planet sweeps out the area can be written in terms of the angular momentum of the planet:

$ frac(d A, d t) & = frac(1, 2) r v sin phi.alt = frac(L, 2 m) $
The only force exerted on the planet is the gravitational force from the Sun. That force is always anti-parallel to the vector $arrow(r)$ from the Sun to the planet, and cannot result in a torque on the planet about the Sun. Thus, the angular momentum of the planet about the Sun must be conserved, and $L$ is constant. In turn, this means that the rate at which area is swept out by the planet, which is proportional to $L$, is also constant. Thus, Kepler's Second Law is equivalent to saying that the angular momentum of a planet relative to the Sun is constant.
]
]

$ K_(r o t) = frac(1, 2) I omega^2 $
where $I$ is the moment of inertia of that object about the axis of rotation.

The net work done by the net torque exerted on an object about a fixed axis or rotation in an inertial frame of reference is equal to object's change in rotational kinetic energy:

$ W = integral_(theta_1)^(theta_2) arrow(tau)^(n e t) dot.op d arrow(theta) = frac(1, 2) I omega_2^2 -frac(1, 2) I omega_1^2 $
If a torque, $arrow(tau)$, about a stationary axis is exerted on an object that is rotating with a constant angular velocity, $arrow(omega)$, about that axis, then the torque does work at a rate:

$ P = arrow(tau) dot.op arrow(omega) $
If an object of mass, $M$, is rotating about an axis through its centre of mass, and the centre of mass of is moving with speed, $v_(C M)$, relative to an inertial frame of reference, then the total kinetic energy of the object is given by:

$ K_(t o t) = K_(r o t) + K_(t r a n s) = frac(1, 2) I_(C M) omega^2 + frac(1, 2) M v_(C M)^2 $
where, $omega$, is the angular speed of the object about the centre of mass, and, $I_(C M)$, is the moment of inertia of the object about the centre of mass. The two terms in the kinetic energy come from the rotation about the centre of mass ($K_(r o t)$), and the translational motion of the centre of mass ($K_(t r a n s)$).

An object is said to be rolling without slipping on a surface if the point on the object that is in contact with the surface is instantaneously at rest relative to the surface. We can model an object that is rolling without slipping by superimposing rotational motion about the centre of mass with translational motion of the centre of mass. The angular speed, $omega$, and the angular acceleration, $alpha$, of the object about an axis through its centre of mass are related to the speed, $v_(C M)$, and linear acceleration, $a_(C M)$, of the centre of mass, respectively:

$ v_(C M) & = omega R \
a_(C M) & = alpha R $
These conditions are equivalent to stating that the object is rolling without slipping.

When an object is rolling without slipping, we can also model its motion as if it were instantaneously rotating about an axis that goes through the point of contact between the object and the ground (the instantaneous axis of rotation). The angular speed (and acceleration) about the instantaneous axis of rotation are the same as they are when the object is modelled as rotating about its (moving) centre of mass.

An object can only be rolling without slipping if there is a force of static friction exerted by the surface on the object. Without this force, the object would slip along the surface.

We can define the angular momentum of a particle, $arrow(L)$, about a point in an inertial frame of reference as:

$ arrow(L) = arrow(r) times arrow(p) $
where, $arrow(r)$, is the vector from the point to the particle, and, $arrow(p)$, is the linear momentum of the particle. If the particle has an angular velocity, $arrow(omega)$, relative to an axis of rotation its angular momentum about that axis can be written as:

$ arrow(L) = m r^2 arrow(omega) = I arrow(omega) $
where, $r$, is the distance between the particle and the axis of rotation, and $I = m r^2$, can be thought of as the moment of inertia of the particle about that axis.

We can write the equivalent of Newton's Second Law for the rotational dynamics of a particle using angular momentum:

$ frac(d arrow(L), d t) = arrow(tau)^(n e t) $
where, $arrow(tau)^(n e t)$, is the net torque on the particle about the same point used to define angular momentum. That point must be in an inertial frame of reference.

The rate of change of the total angular momentum for a system of particles, $arrow(L) = arrow(L)_1 + arrow(L)_2 + dots.h$, about a given point is given by:

$ frac(d arrow(L), d t) = arrow(tau)^(e x t) $
where, $arrow(tau)^(e x t)$, is the net external torque on the system about the point of rotation. If the net external torque of the system is zero, then the total angular momentum of the system is constant (conserved). Again, the point of rotation must be in an inertial frame of reference#footnote[Technically, if the point is the centre of mass, then this is valid even in an accelerating frame of reference.].

For a solid object, in which all of the particles must move in unison, we can define the angular momentum of the object about a stationary axis to be:

$ arrow(L) = I arrow(omega) $
where, $arrow(omega)$, is the angular velocity of the object about that axis, and, $I$, is the object's corresponding moment of inertia about that axis.

Many of the relations that exist between linear quantities have an analogue relation between the corresponding angular quantities, as summarized in the table below:

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 4, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Name*
],
[
*Linear*
],
[
*Angular*
],
[
*Correspondence*
],
[
Displacement
],
[
$s$
],
[
$arrow(theta)$
],
[
$d arrow(theta) = frac(1, r^2) arrow(r) times d arrow(s)$
],
[
Velocity
],
[
$arrow(v)$
],
[
$arrow(omega)$
],
[
$arrow(omega) = frac(1, r^2) arrow(r) times arrow(v)$, $v_s = arrow(omega) times arrow(r)$#footnote[This corresponds to the component of velocity perpendicular to $arrow(r)$.]
],
[
Acceleration
],
[
$arrow(a)$
],
[
$arrow(alpha)$
],
[
$arrow(alpha) = frac(1, r^2) arrow(r) times arrow(a)$, $a_s = arrow(alpha) times arrow(r)$#footnote[This corresponds to the component of acceleration perpendicular to $arrow(r)$.\}]
],
[
Inertia
],
[
$m$
],
[
$I$
],
[
$I = sum_i m_i r_i^2$
],
[
Momentum
],
[
$arrow(p) = m arrow(v)$
],
[
$arrow(L) = I arrow(omega)$
],
[
$arrow(L) = arrow(r) times arrow(p)$
],
[
Newton's Second Law
],
[
$arrow(F)^(e x t) = m arrow(a)_(C M)$
],
[
$arrow(tau)^(e x t) = I arrow(alpha)$
],
[
$arrow(F) arrow.r arrow(tau)$, $m arrow.r I$, $arrow(a) arrow.r arrow(alpha)$
],
[
Newton's Second Law
],
[
$frac(d arrow(p), d t) = arrow(F)^(e x t)$
],
[
$frac(d arrow(L), d t) = arrow(tau)^(e x t)$
],
[
$arrow(F) arrow.r arrow(tau)$, $arrow(p) arrow.r arrow(L)$
],
[
Kinetic energy
],
[
$frac(1, 2) m v^2$
],
[
$frac(1, 2) I omega^2$
],
[
$m arrow.r I$, $v arrow.r omega$
],
[
Power
],
[
$arrow(F) dot.op arrow(v)$
],
[
$arrow(tau) dot.op arrow(omega)$
],
[
$arrow(F) arrow.r arrow(tau)$, $arrow(v) arrow.r arrow(omega)$
],
),
  kind: "table",
  supplement: [Table],
)

#importantBlock(heading: [Important Equations])[
*Rotational kinetic energy of a rotating object:*

$ K_(r o t) = frac(1, 2) I omega^2 $
*Total kinetic energy:*

$ K_(t o t) = K_(r o t) + K_(t r a n s) = frac(1, 2) I_(C M) omega^2 + frac(1, 2) M v_(C M)^2 $
*Work:*

$ W = integral_(theta_1)^(theta_2) arrow(tau)^(n e t) dot.op d arrow(theta) = frac(1, 2) I omega_2^2 -frac(1, 2) I omega_1^2 $
*Power:*

$ P = arrow(tau) dot.op arrow(omega) $
*Angular momentum:*

$ arrow(L) = arrow(r) times arrow(p) \
arrow(L) = m r^2 arrow(omega) = I arrow(omega) \
frac(d arrow(L), d t) = arrow(tau)^(n e t) \
frac(d arrow(L), d t) = arrow(tau)^(e x t) \
arrow(L) = I arrow(omega) \
 $
]

#importantBlock(heading: [Important Definitions])[
- *Angular momentum:* The rotational equivalent of linear momentum. Angular momentum must be defined relative to an axis of rotation. SI units: $upright [ k g dot.op m^2 dot.op s^(-1) ]$. Common variable(s): $arrow(L)$.
- *Rotational kinetic energy:* The rotational equivalent of translation kinetic energy. Generally, an object can have both rotational and translational kinetic energy.  SI units: $upright [ J ]$. Common variables: $K_(r o t)$.
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- How can a bicycle move forward? Draw the external forces on the bicycle that are required for the wheels to turn.
- Does conservation of angular momentum play a role in being able to remain upright on a bicyle? If yes, how?
- How does an anti-lock braking system (ABS) provide better breaking for your car? What is the physics behind this?
]

#seealsoBlock(heading: [To try at home])[
- Describe how you can qualitatively confirm conservation of angular momentum.
]

#seealsoBlock(heading: [To try in the lab])[
- Propose an experiment to measure the critical angle of an incline, above which a given object cannot roll without slipping, and compare this to a model prediction.
- Propose an experiment to test the conservation of angular momentum of a rotating object.
- Propose an experiment to test whether an object with constant velocity can impart angular momentum to another object.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem])[
A yo-yo can be modelled as two uniform disks, of radius $R_2$, attached to either side of a smaller uniform disk of radius $R_1$, as in @fig:angularmomentumrolling:yoyo. We can assume that all three disks have a mass $m$. A mass-less string is wrapped around the smaller disk and then the yo-yo is released. What is the acceleration of the centre of mass of the yo-yo as it falls and the string unwinds?

#show figure: set block(breakable: true)
#figure(
  image("files/yoyo-8fcc3b35b0626567c8d6c678f4922917.png", width: 50%),
  caption: [
Left: Side view of the yo-yo. Right: Front view of the yo-yo, modelled as two disks of radius of $R_2$ attached to either side of a disk of radius $R_1$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:yoyo>
]

#noteBlock(heading: [Problem])[
#show figure: set block(breakable: true)
#figure(
  image("files/balldisk-68702f5e17e23a584057698b0fa628f4.png", width: 30%),
  caption: [
A projectile of mass $m$ is about to collide with a disk that can spin about its axis of symmetry. View from above.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:balldisk>

A projectile of mass $m$ is fired towards a stationary disk of radius $R$ and mass $M$ that lies on a horizontal table, as depicted from above in @fig:angularmomentumrolling:balldisk. The disk is in the horizontal plane and can rotate about a vertical axis through its centre. The axle about which the disk rotates is attached to the table and cannot move. The projectile's velocity, $arrow(v)$, is horizontal and such that the projectile embeds itself at the edge of the disk.  What is the angular velocity of the disk, about its centre, after the projectile has embedded itself into the disk? Was the collision elastic? Was linear momentum conserved during the collision?
]

==== Solutions <solutions>

#noteBlock(heading: [Solution])[
The forces acting on the yo-yo are:

- $arrow(F)_g$, its weight, with magnitude $3 m g$.
- $arrow(T)$, a force of tension from the string.

The forces, where they are exerted, and our choice of coordinate system are shown in @fig:angularmomentumrolling:yoyo_fbd.

#show figure: set block(breakable: true)
#figure(
  image("files/yoyo_fbd-ecc661c3724d09f92dbaf7fbbadd684d.png", width: 30%),
  caption: [
Free body diagram for the yo-yo.
],
  kind: "figure",
  supplement: [Figure],
) <fig:angularmomentumrolling:yoyo_fbd>

The yo-yo can be modelled as rolling without slipping, as if it were rolling along the string that unwinds. The torque about the centre of mass is provided by the tension in the string. The angular acceleration of the yo-yo, $alpha$, will be related to the linear acceleration of the centre of mass, $arrow(a)_(C M)$, since this is rolling without slipping:

$ a_(C M) = alpha R_1 $
where $R_1$ is the radius that is analogous to rolling motion. Since the torque from the force of gravity is zero, we can write Newton's Second Law for rotational quantities as:

$ arrow(tau)^(e x t) & = I arrow(alpha) \
T R_1 & = I alpha $
where $T R_1$ is the magnitude of the torque from the force of tension, since the tension is perpendicular to the vector $arrow(r)$ between the centre of mass and the point where the tension is exerted. The moment of inertia of the yo-yo about its centre of mass is the sum of the moments of inertia of the three disks about their axis of symmetry:

$ I = frac(1, 2) M R_2^2 + frac(1, 2) M R_2^2 + frac(1, 2) M R_1^2 = frac(1, 2) M(2 R_2^2 + R_1^2) $
We can also write Newton's Second Law in the vertical direction for the yo-yo (of mass $3 M$):

$ sum F_y = -F_g + T & = -3 M a_(C M) \
-3 M g + T = -3 M a_(C M) $
where we $a_(C M)$ is the magnitude of the acceleration of the centre of mass (since we included the sign in the first equation).

We can eliminate the unknown force of tension from the equations by substitution. Using the equation from Newton's Second Law:

$ T = 3 M(g -a_(C M)) $
and substituting this into the rotational equation:

$ T R_1 & = I alpha \
3 M(g -a_(C M)) R_1 & = I alpha $
We can solve for $a_(C M)$ by using the condition for rolling without slipping ($alpha R_1 = a_(C M)$):

$ 3 M(g -a_(C M)) R_1 & = I frac(a_(C M), R_1) \
frac(I, R_1) a_(C M) + 3 M R_1 a_(C M) & = 3 M g R_1 \
a_(C M)(frac(I, R_1) + 3 M R_1) & = 3 M g R_1 \
a_(C M) & = frac(3 M g R_1, frac(I, R_1) + 3 M R_1) \
& = frac(3 M g R_1, frac(frac(1, 2) M(2 R_2^2 + R_1^2), R_1) + 3 M R_1) \
& =(frac(3 R_1^2, frac(1, 2)(2 R_2^2 + R_1^2) + 3 R_1^2)) g \
therefore a_(C M) & =(frac(3 R_1^2, R_2^2 + frac(7, 2) R_1^2)) g $
]

#noteBlock(heading: [Solution])[
We consider the projectile and disk as a system, and a rotation axis that passes through the centre of disk. There are no external torques exerted on the system about the rotation axis, so the angular momentum of the system must be conserved through the collision. Before the collision, only the projectile has angular momentum about the axis of rotation, so the magnitude of the angular momentum before the collision is:

$ L = r p sin phi.alt $
where $phi.alt$ is the angle between the particle's momentum, $arrow(p) = m arrow(v)$, and a vector, $arrow(r)$, from the axis of rotation to the particle. We can calculate the particle's angular momentum just before the collision, so that $arrow(r)$ is the vector from the centre of the circle to the point where the particle collides (with magnitude $R$, and perpendicular to $arrow(v)$). The initial angular momentum of the system is thus:

$ L = r p = R m v $
After the collision, the projectile is embedded in the disk. The resulting object has a moment of inertia given by:

$ I = I_(d i s k) + I_(p a r t i c l e) = frac(1, 2) M R^2 + m R^2 $
After the collision, the angular momentum of the disk with the embedded projectile is given by:

$ L ' = I omega =(frac(1, 2) M + m) R^2 omega $
Using conservation of angular momentum, the angular velocity of the disk after the collision is:

$ L & = L ' \
R m v & =(frac(1, 2) M + m) R^2 omega \
therefore omega & = frac(m v,(frac(1, 2) M + m) R) $
We do not expect that mechanical energy is conserved during the collision, since the projectile embeds itself, which must cost energy. The mechanical energy before the collision is given by the kinetic energy of the projectile:

$ E = frac(1, 2) m v^2 $
After the collision, the kinetic energy is the rotational kinetic energy of the disk with embedded projectile about the axis of rotation:

$ E ' & = frac(1, 2) I omega^2 = frac(1, 2)(frac(1, 2) M + m) R^2 (frac(m v,(frac(1, 2) M + m) R))^2 \
& = frac(1, 2) frac(m^2,(frac(1, 2) M + m)) v^2 $
We can see that $E '$ is less than $E$, by taking their ratio:

$ frac(E ', E) & = frac(frac(1, 2) frac(m^2,(frac(1, 2) M + m)) v^2, frac(1, 2) m v^2) \
& = frac(m,(frac(1, 2) M + m)) < 1 $
and we confirm that mechanical energy is not conserved in the collision (and that energy was lost since one had to deform the projectile and disk).

Linear momentum is clearly not conserved since the final linear momentum is zero, whereas before the collision, it is $arrow(p) = m arrow(v)$. The centre of mass of the disk+projectile system moves before the collision and not after. There must thus be a net external force that is exerted on the system. That force is exerted by the table onto the axle of disk, as the disk would otherwise recoil when hit with the projectile.

*Discussion:* In this example, we used conservation of angular momentum to model a collision. The collision is inelastic, because the projectile embeds itself into the disk. The linear momentum is not conserved through the collision because the axle about which the disk rotates must exert a force on the disk to prevent it from recoiling.
]