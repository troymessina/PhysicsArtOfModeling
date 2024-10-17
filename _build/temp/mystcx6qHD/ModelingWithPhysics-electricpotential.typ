/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 17 - Electric potential

=== Overview <chapter:potential>

In this chapter, we develop the concept of electric potential energy and electric potential. This will allow us to describe the motion of charges using energy instead of forces. We will also introduce the capacitor, a common circuit component that is used to store charge.

#hintBlock(heading: [Learning Objectives])[
- Understand the difference between electrical potential energy and electric potential.
- Understand how to calculate stored electrostatic potential energy.
- Understand how to calculate the electric potential difference between two points near a point charge or a distribution of charges.
- Understand how to use electric potential to determine electrical potential energy.
- Understand how to determine electric potential from electric field.
- Understand how to determine electric field from electric potential.
- Understand how to model a capacitor.
]

#noteBlock(heading: [Think About It])[
A proton and an electron are both accelerated by the $1 1 0 upright V$ electric potential difference from your outlet. Which particle has the highest speed?

+ The proton.
+ The electron.
+ They will have the same speed, since they were accelerated by the same potential difference.

#noteBlock(heading: [Answer])[
+
]
]

=== Electric potential energy <sec:potential:potentialdefinition>

#cautionBlock(heading: [Review])[
- #link("/potentialecons\#sec-potentialecons-conservative")[Section 8.2] on conservative forces.
- #link("/gravity\#sec-gravity-potentialenergy")[Section 9.4] on the derivation of gravitational potential energy.
]

Mathematically, Coulomb's Law for the electric force is identical to Newton's Universal Theory of Gravity for the gravitational force. The electric force is thus conservative, and the work done by the electric force on a charge, $q$, when the charge moves from position $A$ in space to some other position $B$, cannot depend on the path taken. Since the work done by the electric force only depends on the location of the initial ($A$) and final ($B$) positions, we can define an electrical potential energy function, $U(arrow(r))$, that depends on position, $arrow(r)$. The work done by the electric force, $arrow(F)^E$,  on a charge in going from position $A$ (defined by position vector, $arrow(r)_A$), to position $B$ (defined by position vector, $arrow(r)_B$), can be written as:

$ W = integral_A^B arrow(F)^E dot.op d arrow(r) = -Delta U = -[ U(arrow(r)_B) -U(arrow(r)_A) ] $ <eqn:potential:potentialwork>
In order to determine the function, $U(arrow(r))$, we can choose a path over which the integral for work is easy to calculate. Consider a point charge, $+ Q$, that exerts an electric force on another charge, $+ q$, as in @fig:potential:potential. We will calculate work done by the electric force as it moves $+ q$ from a distance $r_A$ to a distance $r_B$ from the centre of $+ Q$.

#show figure: set block(breakable: true)
#figure(
  image("files/potential-891c4cc60bcc90cd78ce4c04667f85f1.png", width: 50%),
  caption: [
Calculating the work done on a charge $+ q$ by the electric force exerted by charge $+ Q$ when charge $+ q$ moves from a distance $r_A$ to a distance $r_B$ from the centre of charge $+ Q$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:potential>

Placing $+ Q$ at the origin of a coordinate system, the force exerted on $+ q$, when it is located at position $arrow(r)$, is given by:

$ arrow(F)^E = k frac(Q q, r^2) hat(r) $
The work done by the electric force when $+ q$ moves from $r_A$ to $r_B$ is given by:

$ W & = integral_A^B arrow(F)^E dot.op d arrow(r) = integral_(arrow(r_A))^(arrow(r_B))(k frac(Q q, r^2) hat(r)) dot.op d arrow(r) = k Q q integral_(r_A)^(r_B) frac(1, r^2) d r \
& = k Q q [ frac(-1, r) ]_(r_A)^(r_B) = -(frac(k Q q, r_B) -frac(k Q q, r_A)) $
where we noted that, since $arrow(F)^E$ and $d arrow(r)$ are parallel, their scalar product is simply the product of their magnitudes. By comparing with @eqn:potential:potentialwork, we can identify the potential energy, $U(arrow(r))$, of a charge, $+ q$, located at a relative position, $arrow(r)$, from a point charge, $+ Q$, as:

$ boxed U(arrow(r)) = frac(k Q q, r) + C $
where the potential energy is only defined up to some constant, $C$, which cancels when we take the difference in potential energy between two positions. Note that this is very similar to the function for the gravitational potential energy of a mass, $m$, a distance, $r$, from a mass, $M$ (see #link("/gravity\#sec-gravity-potentialenergy")[Section 9.4]).

The potential energy function that we derived above remains the same if one or both of the charges change sign. The only difference in the derivation would be that the direction of the force, $arrow(F)^E$, could change. For example, a positive charge, $+ q$, near a negative charge, $-Q$, would have negative electric potential energy with the choice $C = 0$, in exact analogy with gravity.

==== Electrostatic potential energy <electrostatic-potential-energy>

When we hold two positive charges together a distance, $r$, apart, we need to exert a force on the charges in order to keep the charges in place (as they repel each other). If we release the charges, they will move apart from each other until all of the stored electric potential energy is converted into kinetic energy. The energy that was originally stored in this "system" of two charges is called "electrostatic potential energy". In this section, we show how to model the energy stored in a collection of point charges.

Consider a single positive charge, $q_1$, located at the origin of empty space. Since there are no other charges present, it does not "cost" us any energy to place that charge there - we do not need to do any work. If we now bring in a second positive charge, $q_2$, and place it a distance, $r_(1 2)$, from $q_1$ (@fig:potential:electrostaticenergy), we will need to do work since $q_1$ exerts a force on $q_2$. We define zero potential energy to be at infinity, which means choosing $C = 0$ for electric potential energy. The work, $W_(q 2)$, that we must do on $q_2$ to bring it from infinity to a distance, $r_(1 2)$, from $q_1$ is given by the corresponding change in potential energy of $q_2$:

$ W_(q 2) = Delta U = U_(f i n a l) -U_(i n i t i a l) = k frac(q_1 q_2, r_(1 2)) -0 = k frac(q_1 q_2, r_(1 2)) $
Note that the work is done by us (not by the electric field), so it has the same sign as the change in potential energy (we must do positive work to increase potential energy). The work that we did corresponds to the same amount of electrostatic potential energy stored in this arrangement of two charges (the only source of that stored electrostatic potential energy is the work that we did on the charge $q_2$).

#show figure: set block(breakable: true)
#figure(
  image("files/electrostaticenergy-89ace4c8bca7c6e872fcfeae1c265bc3.png", width: 30%),
  caption: [
Three positive charges arranged together will store a certain amount of electrostatic potential energy.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:electrostaticenergy>

Now, we bring in a third positive charge, $q_3$, also from infinitely far away, as illustrated in @fig:potential:electrostaticenergy. In order to bring in $q_3$, we need to do work against the forces exerted by both $q_1$ and $q_2$. Suppose that we place $q_3$ a distance $r_(1 3)$ from $q_1$ and $r_(2 3)$ from $q_2$. Then, the amount of work done by us to bring in $q_3$ is given by:

$ W_(q 3) = k frac(q_1 q_3, r_(1 3)) + k frac(q_2 q_3, r_(2 3)) $
and the total electrostatic energy stored in the system of three charges is given by the sum of the work done to place $q_2$ and the work done to place $q_1$:

$ E = W_(q 1) + W_(q 2) + W_(q 3) = 0 + k frac(q_1 q_2, r_(1 2)) + k frac(q_1 q_3, r_(1 3)) + k frac(q_2 q_3, r_(2 3)) $
If we have any number of charges (positive and negative), we can always calculate the stored electrostatic energy by proceeding in a similar fashion.

#tipBlock(heading: [Checkpoint])[
Four charges of varying magnitude are fixed in position. If the electric potential energy stored in the system were to be calculated as above, how many terms would be in the sum?

+ Four.
+ Two.
+ One.
+ Six.

#tipBlock(heading: [Answer])[
+
]
]

=== Electric potential <electric-potential>

As you recall, we defined the *electric field*, $arrow(E)(arrow(r))$, to be the *electric force per unit charge*. By defining an electric field everywhere in space, we were able to easily determine the force on any test charge, $q$, whether the test charge is positive or negative (since the sign of $q$ will change the direction of the force vector, $q arrow(E)$):

$ arrow(E)(arrow(r)) & = frac(arrow(F)^E (arrow(r)), q) \
therefore arrow(F)^E (arrow(r)) & = q arrow(E)(arrow(r)) $
Similarly, we define the *electric potential*, $V(arrow(r))$, to be the *electric potential energy per unit charge*. This allows us to define electric potential, $V(arrow(r))$, everywhere in space, and then determine the potential energy of a specific charge, $q$, by simply multiplying $q$ with the electric potential at that position in space.

$ V(arrow(r)) & = frac(U(arrow(r)), q) \
therefore U(arrow(r)) & = q V(arrow(r)) $
The S.I. unit for electric potential is the "volt" (V). Electric potential, $V(arrow(r))$, is a scalar field whose value is "the electric potential" at that position in space. Say that the electric potential at a position in space is  $V = 1 0 upright V$. The above formula tells us that a positive charge $q = 1 upright C$, located at that position, will have a potential energy of $U = 1 0 upright J$. Similarly, a negative charge, $q = -1 upright C$, will have negative potential energy, $U = -1 0 upright J$, at the same location.

Since only _differences_ in potential energy are physically meaningful, *only changes in electrical potential are physically meaningful*. A difference in electric potential is commonly called a "voltage". One often makes a clear choice of where the electric potential is zero (typically the ground, or infinitely far away), so that the term voltage is used to describe potential, $V$, instead of difference in potential, $Delta V$; this should only be done when it is clear where the location of zero electric potential is defined.

We can describe a free-falling mass by stating that the mass moves from a region where it has high gravitational potential energy to a region of lower gravitational potential energy under the influence of gravity (the force associated with a potential energy always acts in the direction to decreases potential energy). The same is true for electrical potential energy: *charges will always experience a force in a direction to decrease their electrical potential energy*. However, positive charges will experience a force driving them from regions of high electric potential to regions of low electric potential, whereas negative charges will experience a force driving them from regions of low electric potential to regions of higher electric potential. This is because, for negative charges, the change in potential energy associated with moving through space, $Delta U$, will be the negative of the corresponding change in electric potential, $Delta U = q Delta V$, since the charge, $q$, is negative.

// TODO: kind of confusing

#tipBlock(heading: [Checkpoint])[
Electric potential increases along the $x$ axis. A proton and an electron are placed at rest at the origin; in which direction do the charges move when released?\}

+ the proton moves towards negative $x$, while the electron moves towards positive $x$.
+ the proton moves towards positive $x$, while the electron moves towards negative $x$.
+ the proton and electron move towards negative $x$.
+ the proton and electron move towards positive $x$.

#tipBlock(heading: [Answer])[
+
]
]

If the only force exerted on a particle is the electric force, and the particle moves in space such that the electric potential changes by $Delta V$, we can use conservation of energy to determine the corresponding change in kinetic energy of the particle:

$ Delta E & = Delta U + Delta K = 0 \
Delta U & = q Delta V \
 $
$ boxed therefore Delta K = -q Delta V $
where $Delta E$ is the change in total mechanical energy of the particle, which is zero when energy is conserved. The kinetic energy of a positive particle increases if the particle moves from a region of high potential to a region of low potential (as $Delta V$ would be negative and $q$ is positive), and vice versa for a negative particle. This makes sense, since a positive and negative particle feel forces in opposite directions.

In order to describe the energies of particles such as electrons, it is convenient to use a different unit of energy than the Joule, so that the quantities involved are not orders of magnitude smaller than 1. A common choice is the "electron volt", eV\}. One electron volt corresponds to the energy acquired by a particle with a charge of $e$ (the charge of the electron) when it is accelerated by a potential difference of $1 upright V$:

$ Delta E & = q Delta V \
1 upright e V & =(e)(1 upright V) = 1 . 6 times 1 0^(-1 9) upright J $
An electron that has accelerated from rest across a region with a $1 5 0 upright V$ potential difference across it will have a kinetic of $1 5 0 upright e V = 2 . 4 times 1 0^(-1 7) upright J$. As you can see, it is easier to describe the energy of an electron in electron volts than Joules.

#tipBlock(heading: [Checkpoint])[
A particle moves from an electric potential of $-2 6 0 upright V$ to an electric potential of $-6 0 0 upright V$ and loses kinetic energy. What is the charge of this particle?

+ Neutral.
+ It could have a positive or a negative charge.
+ Positive.
+ Negative.

#tipBlock(heading: [Answer])[
+
]
]

#attentionBlock(heading: [Josh's Thoughts])[
It is often useful in physics to take previously learned concepts and compare them to new ones, in this case, gravitational potential energy and electric potential energy can be compared to help understand the physical meaning of electric potential.

Suppose that an object with a large mass, $M$, is sitting in space. Now place an object of a much smaller mass, $m$, at any distance, $r$, from the centre of $M$. The gravitational potential energy of the small mass is given by the following formula:

$ U_g & = frac(G M m, r) $
Which is very similar to the formula for electrical potential energy:

$ U(arrow(r)) & = frac(k Q q, r) $
Now, if we were to remove the mass $m$ from its position, we would no longer have an object with gravitational potential energy. However, we could still describe the gravitational potential for the point, $r$, which would result in gravitational potential energy when any mass $m$ is placed there. This is the gravitational equivalent to electric potential, and can be defined as:

$ V_g & = frac(U_g, m) $
which is also very similar to the formula for electric potential:

$ V_E & = frac(U_E, q) $
This comparison is illustrated in @fig:potential:gravvselec.

#show figure: set block(breakable: true)
#figure(
  image("files/gravvselec-a557143162401d4b8e45aadb66017e48.png", width: 60%),
  caption: [
Gravitational potential energy and gravitational potential (left) next to its electrical analogue (right).
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:gravvselec>
]

#noteBlock(heading: [Example 17.1])[
A proton and an electron move from a region of space where the electric potential is $2 0 upright V$ to a region of space where the electric potential is $1 0 upright V$. If the electric force is the only force exerted on the particles, what can you say about their change in speed?

#noteBlock(heading: [Solution])[
The two particles move from a region of space where the electric potential is $2 0 upright V$ to a region of space where the electric potential is $1 0 upright V$. The change in electric potential experienced by the particles is thus:

$ Delta V = V_(f i n a l) -V_(i n i t i a l) =(1 0 upright V) -(2 0 upright V) = -1 0 upright V $
and we take the opportunity to emphasize that one should be very careful with signs when using potential. The change in potential energy of the proton, with charge $q = + e$, is thus:

$ Delta U_p = q Delta V =(+ e)(-1 0 upright V) = -1 0 upright e V $
The potential energy of the proton thus decreases by $1 0 upright e V$ (which you can easily convert to Joules). Since we are told that no other force is exerted on the particle, the total mechanical energy of the particle (kinetic plus potential energies) must be constant. Thus, if the potential energy decreased, then the kinetic energy of the proton has increased by the same amount, and *the proton's speed increases*.

The change in potential energy of the electron, with charge $q = -e$, is thus:

$ Delta U_e = q Delta V =(-e)(-1 0 upright V) = 1 0 upright e V $
The potential energy of the electron thus increases by $1 0 upright e V$. Again, the mechanical energy of the electron is conserved, so that an increase in potential energy results in the same decrease in kinetic energy and *the electron's speed decreases*.

*Discussion:* By using the electric potential, $V$, we modelled the change in electric potential energy of a proton and an electron as they both moved from one region of space to another.

We found that when a *proton moves from a region of high electric potential to a region of lower electric potential, its potential energy decreases*. This is because the proton has a positive charge and a decrease in electric potential will also result in a decrease in potential energy. Since no other forces are exerted on the proton, the proton's kinetic energy must increase. Because the potential energy of the proton decreases, the proton is moving in the same direction as the electric force, and the electric force does positive work on the proton to increase its kinetic energy.

Conversely, we found that when an *electron moves from a region of high electric potential to a region of lower electric potential, its potential energy increases*. This is because it has a negative charge and a decrease in electrical potential thus results in an increase in potential energy. Since no other forces are exerted on the electron, the electron's kinetic energy must decrease, and the electron slows down. This makes sense, since the force that is exerted on an electron will be in the opposite direction from the force exerted on a proton.
]
]

==== Electric potential from electric field <electric-potential-from-electric-field>

At the beginning of @sec:potential:potentialdefinition, we determined the potential energy of a point charge, $q$, in the presence of another point charge, $Q$ (@fig:potential:potential). This was done by calculating the work done by the Coulomb (electric) force exerted by charge $Q$ on $q$. We can write the same integral for the work done by the electric force on $q$, but using the electric field, $arrow(E)$, to write the force:

$ W & = integral_A^B arrow(F)^E dot.op d arrow(r) = integral_A^B q arrow(E) dot.op d arrow(r) = q integral_A^B arrow(E) dot.op d arrow(r) $
where we recognized that the charge, $q$, is constant and can come out of the integral. The integral that is left is thus the work done by the electric field, $arrow(E)$, _per unit charge_. In other words, this is the negative change in electric potential:

$ W = q integral_A^B arrow(E) dot.op d arrow(r) = -q Delta V = -q [ V(arrow(r)_B) -V(arrow(r)_A) ] $
$ boxed therefore Delta V = V(arrow(r_B)) -V(arrow(r_A)) = -integral_A^B arrow(E) dot.op d arrow(r) $
which allows us to easily determine the change in electric potential associated with an electric field. Note that this result is general and does not require the electric field to be that of a point charge, and can be used to determine the electric potential associated with any electric field. We can also specify a function for the potential, up to an arbitrary constant, $C$, (think definite versus indefinite integrals):

$ V(arrow(r)) = -integral arrow(E) dot.op d arrow(r) + C $
The relation between electric potential and electric field is analogous to the relation between electric potential energy and electric force:

$ Delta V & = V(arrow(r)_B) -V(arrow(r)_A) = -integral_A^B arrow(E) dot.op d arrow(r) \
Delta U & = U(arrow(r)_B) -U(arrow(r)_A) = -integral_A^B arrow(F)^E dot.op d arrow(r) $
as the bottom equation is just $q$ times the first equation. We can think of electric potential being to potential energy what electric field is to electric force. Electric potential and electric field are electric potential energy and electric force, _per unit charge_, respectively.

For a point charge, $Q$, located at the origin, the electric field at some position, $arrow(r)$, is given by Coulomb's Law:

$ arrow(E) = frac(k Q, r^2) hat(r) $
The potential difference between location $A$ (at position $arrow(r)_A$) and location $B$ (at position $arrow(r)_B$), as in @fig:potential:potential, is given by:

$ Delta V & = -integral_A^B arrow(E) dot.op d arrow(r) = -integral_(arrow(r_A))^(arrow(r_B)) frac(k Q, r^2) hat(r) dot.op d arrow(r) = -(frac(k Q, r_B) -frac(k Q, r_A)) $
and we note that we can write a function for the electric potential, $V(arrow(r))$, at a distance $r$ from a point charge, $Q$, as:

$ V(arrow(r)) = frac(k Q, r) + C $
where $C$ is an arbitrary constant. This, of course, is identical to the result that we obtained earlier, for the potential energy of a charge, $q$, a distance, $r$, from $Q$:

$ U(arrow(r)) = q V(arrow(r)) = frac(k Q q, r) + C ' $
where the constant, $C ' = q C$, does not have any physical impact. Often, as is the case for gravity, one chooses the constant $C = 0$. This choice corresponds to defining potential energy to be zero at infinity. Equivalently, this corresponds to choosing infinity to be at an electric potential of $0 upright V$.

#tipBlock(heading: [Checkpoint])[
What causes a positively charged particle to gain speed when it is accelerated through a potential difference?

+ The particle accelerates because it loses potential energy as it moves from high to low potential.
+ The particle accelerates because it loses potential energy as it moves from low to high potential
+ The particle accelerates because it gains potential energy.
+ The particle accelerates because it moves towards negative charges.

#tipBlock(heading: [Answer])[
+
]
]

#attentionBlock(heading: [Olivia's Thoughts])[
Below, I've included a grid you can use to remember how the electric field ($arrow(E)$), electric force ($arrow(F)$), electric potential ($V$), and electric potential energy ($U$) relate to one another.

#show figure: set block(breakable: true)
#figure(
  image("files/eqn_gridcrop-f3d5ae82cbd9e8f530e5625fd7d75deb.png", width: 40%),
  caption: [
A visual guide showing how to get one formula from another.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:eqn_grid>

For example, let's say you are given the electric field and want to find the electric potential energy for a charge $q$. You would start at $arrow(E)$ and follow the operations on the arrows to get to $U$, i.e. you would perform the line integral and then multiply by $q$, or vice versa.

Of course, when you reverse directions (e.g. to go from $U$ to $arrow(E)$), you have to reverse the operations of the arrows. We will see what the reverse operation of the line integral is in @sec:potential:fieldfrompotential. @fig:potential:eqn_grid_point shows how this grid would be filled out if you were dealing with two point charges, $Q$ and $q$, as we have seen so far in this chapter.

#show figure: set block(breakable: true)
#figure(
  image("files/eqn_grid_pointcrop-94d3448ac4141a3f995476c79cd2bb7c.png", width: 40%),
  caption: [
How you would use the guide in the case of a point charge, $Q$, exerting a force on another point charge, $q$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:eqn_grid_point>
]

#noteBlock(heading: [Example 17.2])[
What is the electric potential at the edge of a hydrogen atom (a distance of $1 overset(upright A, circ)$ from the proton), if one sets $0 upright V$ at infinity? If an electron is located at a distance of $1 overset(upright A, circ)$ from the proton, how much energy is required to remove the electron; that is, how much energy is required to ionize the hydrogen atom?

#noteBlock(heading: [Solution])[
We can easily calculate the electric potential, a distance of $1 overset(upright A, circ)$ from a proton, since this corresponds to the potential from a point charge (with $C = 0$):

$ V(arrow(r)) & = frac(k Q, r) \
& = frac((9 times 1 0^9 upright N dot.op m^2 \/ C^(2))(1 . 6 times 1 0^(-1 9) upright C),(1 times 1 0^(-1 0) upright m)) \
& = 1 4 . 4 upright V $
We can calculate the potential energy of the electron (relative to infinity, where the potential is $0 upright V$, since we chose $C = 0$):

$ U & =(-e) V \
& =(-1 . 6 times 1 0^(-1 9) upright C)(1 4 . 4 upright V) = -1 4 . 4 upright e V \
& = -2 . 3 times 1 0^(-1 8) upright J $
where we also expressed the potential energy in electron volts. In order to remove the electron from the hydrogen atom, we must exert a force (do work) until the electron is infinitely far from the proton. At infinity, the potential energy of the electron will be zero (by our choice of $C = 0$). When moving the electron from the hydrogen atom to an infinite distance away, we must do positive work to counter the attractive force from the proton. The work that we must do is exactly equal to the change in potential energy of the electron (and equal to the negative of the work done by the force exerted by the proton):

$ W & = Delta U \
& =(U_(f i n a l) -U_(i n i t i a l)) \
& =(0 upright J --2 . 3 times 1 0^(-1 8) upright J) \
& = 2 . 3 times 1 0^(-1 8) upright J $
The positive work that we must do, exerting a force that is opposite to the electric force, is positive and equal to $2 . 3 times 1 0^(-1 8) upright J$, or $1 4 . 4 upright e V$. If you look up the ionization energy of hydrogen, you will find that it is $1 3 . 6 upright e V$, so that this very simplistic model is quite accurate (we could improve the model by adjusting the proton-electron distance so that the potential is $1 3 . 6 upright V$).

*Discussion:* In this example, we determined the electrical potential energy of an electron in a hydrogen atom, and found that it is negative, when potential energy is defined to be zero at infinity. In order to remove the electron from the atom, we must do positive work in order to increase the potential energy of the electron from a negative value to zero (the potential energy at infinity). This is analogous to the work that must be done on a satellite in a gravitationally bound orbit for it to reach escape velocity.
]
]

#noteBlock(heading: [Example 17.3])[
Two large parallel plates are separated by a distance, $L$. The plates are oppositely charged and carry the same magnitude of charge per unit area, $sigma$. What is the potential difference between the two plates? Write an expression for the electric potential in the region between the two plates. Assume that the plates are large enough that you can treat them as infinite (that is, neglect what happens near the edges).

#noteBlock(heading: [Solution])[
@fig:potential:parallelplates shows a diagram of the two parallel plates with surface charge on them.

#show figure: set block(breakable: true)
#figure(
  image("files/parallelplates-a34555efaf5a4a7e277f17eaeca8f996.png", width: 30%),
  caption: [
Two parallel plates with equal and opposite surface charge densities. In the region between the plates, the electric field is uniform.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:parallelplates>

We know from the previous chapters that the electric field from the positive plate does not depend on distance from the plate and is given by:

$ arrow(E)_(+) = -frac(sigma, 2 epsilon_0) hat(x) $
if we approximate the plate as being infinitely large. This is a reasonable approximation for most points except those near the edges of the plate, which we ignore. The electric field from the negative plate will have the same magnitude and direction, so that the total electric field, $arrow(E)$, everywhere between the two parallel plates (as long as we are not near the edges) is given by:

$ arrow(E) = -frac(sigma, epsilon_0) hat(x) $
Note that the electric field outside the region between the two plates is zero everywhere, as the field from the positive and negative plates point in opposite directions outside the plates and thus cancel (except near the edges of the plates). For example, below the negative plate, the field from the negative plate points in the positive $x$ direction (towards the negative plate), whereas the field from the positive plate points in the negative $x$ direction (away from the positive plate).

We can now determine the potential difference between the two plates, since we know the electric field in that region. Using the coordinate system that is shown, we calculate the potential difference between the positive plate located at $x = L$ and the negative plate located at $x = 0$:

$ Delta V & = V(L) -V(0) \
& = -integral_0^L arrow(E) dot.op d arrow(x) \
& = -integral_0^L frac(-sigma, epsilon_0) hat(x) dot.op d arrow(x) \
& = frac(sigma, epsilon_0) integral_0^L d x \
& = frac(sigma, epsilon_0) L $
where we recognized that $hat(x)$ and $d arrow(x)$ are parallel. It is very easy to get the wrong sign when calculating potential differences, so be careful!

Since the potential difference, $Delta V = V(L) -V(0)$, is positive, the plate at $x = L$ is at a higher electric potential than the plate at $x = 0$. This makes sense, as a positive charge at rest would move from the positive plate to the negative plate, thus decreasing its potential energy, which corresponds to moving from a region of high electric potential to a region of low electric potential. Conversely, a negative charge at rest would move from the negative plate to the positive plate, decreasing its potential energy, but moving from a region of low electric potential to a region of high electric potential.

In general, if the electric field is constant, the change in potential between two points separated by a distance, $L$, along an axis that is anti-parallel with the field (in this example, the field points in the negative $x$ direction) is given by:

$ Delta V & = -integral_0^L arrow(E) dot.op d arrow(x) \
& = E integral_0^L d x \
& = E L $
Note that we can only calculate the difference in electric potential between plates, not the actual value of the potential, $V$. If we want to define a specific value of electric potential, we need to choose a location where we define $0 upright V$ to be. By convention, when possible, one chooses the negative plate to be the location of $0 upright V$. In order to determine the electric potential anywhere between the two plates, we can calculate the potential difference between the plate at $x = 0$ (the one at $0 upright V$) and some position between the plates along the $x$ axis ($x < L$):

$ Delta V & = V(x) -V(0) \
& = -integral_0^x E hat(x) dot.op d arrow(x) \
& = E x \
& = frac(sigma, epsilon_0) x \
therefore V(x) & = V(0) + E x \
& = E x \
& = frac(sigma, epsilon_0) x $
where we find that the electric potential increases *linearly* between its value at the negative plate ($0 upright V$) and its value at the positive plate ($E L$). Of course, we could have chosen any value of the electric potential for the negative plate, which is equivalent to choosing the value of the arbitrary constant, $C$.

In general, we can write the electric potential in a region of constant electric field, $arrow(E) = -E hat(x)$, as:

$ V(x) = E x + C $
This scenario is very similar to the gravitational force near the surface of the Earth, where the gravitational field is (almost) constant. If you choose to define zero gravitational potential energy at the surface of the Earth then, as you move up a distance $h$ from the ground, your gravitational potential energy increases linearly with $h$ ($U(h) = m g h$). In our case, we defined zero electrical potential energy to correspond to the location of the negative plate (the negative plate is thus like the surface of the Earth, with a constant electric field pointing towards it). As a positive charge moves a distance $h$ away from the negative plate, it gains electric potential energy, $U(h) = q V(h) = q E h$, linearly with distance from the plate. If we release that positive charge, it will "fall" back onto the negative plate. The main difference with gravity, is that we can also have negative charges, which under gravity, would be similar to "negative masses" (it's not a thing), which would "fall upwards" (towards the positive plate).

*Discussion:* In this example, we examined the electric field between two parallel plates with opposite charges on them, and saw that the field is constant and uniform between the plates and zero outside (except for a small region near the edge of the plates where the assumption of infinitely large plates breaks down). We found that the electric potential decreases linearly as a function of distance from one of the plates. Because the electric field is constant between the two plates, the electric force on a charge can be treated in a similar way as the gravitational force on a mass near the surface of the Earth. The resulting electric potential is linear in the distance from the negative plate, just as $m g h$ is linear in $h$, the distance to the surface of the Earth. Parallel plates are often used to accelerate charges, so they are useful to understand.
]
]

#tipBlock(heading: [Checkpoint])[
If we defined a gravitional potential, V(h), for particles a small distance, $h$, from the surface of the Earth, it would have the form:

+ $V(h) = m g h + C$.
+ $V(h) = g h + C$.
+ $V(h) = m g + C$.
+ $V(h) = -m g h + C$.

#tipBlock(heading: [Answer])[
+
]
]

==== Electric field from electric potential <sec:potential:fieldfrompotential>

#cautionBlock(heading: [Review])[
- #link("/potentialecons\#sec-potentialecons-forcefromu")[Section 8.3.1] on determining force from potential energy.
- #link("/calculus\#sec-calculus-gradients")[Section 1.3.2] on gradients.
]

In the previous section, we found that we could determine the electric potential (a scalar) from the electric field vector. In this section, we show how to do the reverse, and determine the electric field vector from the electric potential. Consider, first, a one-dimensional case, where the electric field, $arrow(E)(x) = E(x) hat(x)$, point in the $x$ direction and depends on position, $x$. In this one-dimensional case, the electric potential is obtained from the negative anti-derivative of the electric field:

$ V(x) = -integral arrow(E)(x) dot.op d arrow(x) = -integral E(x) d x $
The electric field must then be given by the negative of the derivative of the electric potential function:

$ arrow(E)(x) = -frac(d V(x), d x) hat(x) $
Note that we can tell from the above that the electric field must have dimensions of electric potential over distance. The most common S.I. unit used to describe the electric field is $upright V \/ m$ (Volts per meter).

This result is very similar to that obtained in #link("/potentialecons\#sec-potentialecons-forcefromu")[Section 8.3.1], where we examined how one could use the scalar potential energy, $U(x, y, z)$, to determine the vector for the force associated with that potential energy. The same holds for the electric force, where we can determine the electric force vector, $arrow(F)$, from the electric potential energy, and similarly the electric field from the electric potential. In three dimensions, if we know the electric potential energy as a function of position, $U(arrow(r)) = U(x, y, z)$, then the electric force vector is given by:

$ arrow(F)(x, y, z) = -nabla U = -frac(diff U, diff x) hat(x) -frac(diff U, diff y) hat(y) -frac(diff U, diff z) hat(z) $
Similarly, but using force per unit charge (i.e. electric field) and potential energy per unit charge (i.e. electric potential), we find:

$ arrow(E)(x, y, z) = -nabla V = -frac(diff V, diff x) hat(x) -frac(diff V, diff y) hat(y) -frac(diff V, diff z) hat(z) $
where, as you recall, $nabla V$, is called the gradient of the scalar field, $V(x, y, z)$. The gradient is a vector that points in the direction of maximal increase of the value of $V(x, y, z)$. For a positive charge, this corresponds to the direction of maximal increase in potential energy. A positive charge will experience a force in the opposite direction (in the direction where the potential energy decreases the fastest), and the electric field is thus in the opposite direction from the gradient of the electric potential.

==== Equipotential surfaces <equipotential-surfaces>

We can visualize electric potential in several ways, since it is a scalar field (it has a single value that can differ everywhere in space). @fig:potential:1pos shows the electric potential near a positive charge, $+ Q$, where we have chosen $0 upright V$ to be located at infinity. The right panel shows the electric potential as a "surface plot", where the vertical direction is the value of the electric potential. The left panel shows a "heat map" of the electric potential, where the colour corresponds to the value of the electric potential.

#show figure: set block(breakable: true)
#figure(
  image("files/1pos-10664d2fe2193f689c1cd55a58c46974.png", width: 100%),
  caption: [
Electric potential heat map (left) and surface plot (right) near a single positive charge.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:1pos>

The most common way to visualize the electric potential is to draw "contour lines", similar to how one draws contour lines on a geographical map. On a geographical map, contours correspond to lines of constant altitude, which are also lines of constant gravitational potential energy. Similarly, we can draw lines of constant electric potential. Lines of constant potential are called "equipotential lines". In three dimensions, regions of constant electric potential can be surfaces or volumes, called "equipotential surfaces/volumes".

The *electric field vector is always perpendicular to equipotential lines/surfaces*. At any point in space, the electric field vector points opposite to the gradient of the electric potential, since $arrow(E) = -nabla V$. This means that the electric field points in the direction where the potential decreases the fastest, which must be perpendicular to the direction where the potential stays the same (i.e. the equipotential lines). Another way to think about this is to consider a charge moving along an equipotential. By definition, the electric potential energy of the charge does not change if its moves along an equipotential. As a result, the electric force/field cannot do any work on the charge, and so must be perpendicular to the path of the charge.

In order to draw equipotential lines, you can start by drawing electric field lines, and then draw (closed) contour lines that are everywhere perpendicular to the electric field lines. This is illustrated in @fig:potential:2pos1neg.

#show figure: set block(breakable: true)
#figure(
  image("files/2pos1neg-e8dd5cf26924b9dc21d27caecd4af793.png", width: 100%),
  caption: [
The electric field and equipotential lines caused by two $+ 2 q$ charges and one $-3 q$ charge (left) and its corresponding electric potential heatmap (right).
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:2pos1neg>

In general, it is preferable to draw equipotential lines at equal increments of potential (e.g. every $1 0 upright V$). For example, the equipotential lines for a point charge located at the origin consist of concentric circles centred at the origin (in three dimensions, this results in concentric spherical equipotential surfaces). If we define $0 upright V$ to be at infinity, the electric potential is given by:

$ V(r) = frac(k Q, r) $
In order to draw equipotential lines every $1 0 upright V$, the radii of the corresponding equipotential circles, for $V = 1 0 upright V$, $V = 2 0 upright V$, $V = 3 0 upright V$, etc., are given by:

$ r & = frac(k Q, V) \
r_(1 0 V) & = frac(k Q,(1 0 upright V)) quad r_(2 0 V) = frac(k Q,(2 0 upright V)) quad r_(3 0 V) = frac(k Q,(3 0 upright V)) quad dots.h $
=== Calculating electric potential from charge distributions <calculating-electric-potential-from-charge-distributions>

In this section, we give two examples of determining the electric potential for different charge distributions. We have two methods that we can use to calculate the electric potential from a distribution of charges:

+ Model the charge distribution as the sum of infinitesimal point charges, $d q$, and add together the electric potentials, $d V$, from all charges, $d q$. This requires that one choose $0 upright V$ to be located at infinity, so that the $d V$ are all relative to the same point.
+ Calculate the electric field (either as a integral or from Gauss' Law), and use:

$ Delta V & = V(arrow(r)_B) -V(arrow(r)_A) = -integral_A^B arrow(E) dot.op d arrow(r) $
The first method is similar to how we calculated the electric field for distributed charges in #link("/chargesfields\#chapter-chargesfields")[Chapter  15.1], but with the simplification that we only need to sum scalars instead of vectors. The second method was already introduced in this chapter.

#noteBlock(heading: [Example 17.4])[
A ring of radius $R$ carries a total charge $+ Q$. Determine the electric potential a distance $a$ from the centre of the ring, along the axis of symmetry of the ring. Assume that zero electric potential is defined at infinity.

#noteBlock(heading: [Solution])[
@fig:potential:ring shows a diagram of the ring, and our choice of infinitesimal charge, $d q$.

#show figure: set block(breakable: true)
#figure(
  image("files/ring-0d66df454bf3b2c8ce93155a3488ea0e.png", width: 30%),
  caption: [
Determining the electric potential on the axis of a ring of radius $R$ carrying charge $Q$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:ring>

In order to calculate the electric potential at point, $P$, with $0 upright V$ defined to be at infinity, we first calculate the infinitesimal potential at $P$ from the infinitesimal point charge, $d q$:

$ d V = k frac(d q, r) $
The total electric potential is then the sum (integral) of these potentials:

$ V = integral d V = integral k frac(d q, r) = frac(k, r) integral d q = k frac(Q, r) = k frac(Q, sqrt(a^2 + R^2)) $
where we recognized that $k$ and $r$ are the same for each $d q$, so that they could factor out of the integral. $integral d q = Q$ is then just the sum of the infinitesimal charges, which must add to the charge of the ring.

*Discussion:* In this example, we determined the electric potential, relative to infinity, a distance $a$ from the centre of a charge ring, along its axis of symmetry. We modelled the ring as being made of many infinitesimal point charges, and summed together the infinitesimal electric potentials from those charges relative to infinity. This was much simpler than determining the electric field, since electric potential is a scalar and we do not need to consider how the components from different $d q$ along the ring will cancel.
]
]

#noteBlock(heading: [Example 17.5])[
A long, thin, straight wire carries uniform charge per unit length, $lambda$. The electric potential difference between points located at distances $r_B = 2 upright c m$ and $r_A = 1 upright c m$ from the wire is found to be $V(r_B) -V(r_A) = -1 0 0 upright V$. What is the linear charge density on wire, $lambda$?

#show figure: set block(breakable: true)
#figure(
  image("files/infinitewire-99f6a9acd349bbbe385425382255e9eb.png", width: 20%),
  caption: [
A long thin wire with measurements of electric potential at varying points.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:infinitewire>

#noteBlock(heading: [Solution])[
In this case, we can use Gauss' Law to determine the electric field at a certain distance from the wire. From that, we can calculate the electric potential difference between any two points near the wire, and thus the charge density on the wire.

By using a cylindrical surface of length, $L$, and radius, $r$, we can use Gauss' Law to determine the field at a distance, $r$, from the wire:

$ oint arrow(E) dot.op d arrow(A) & = frac(Q^(e n c), epsilon_0) \
2 pi r L E & = frac(lambda L, epsilon_0) \
therefore arrow(E)(r) & = frac(lambda, 2 pi epsilon_0 r) hat(r) $
Using the electric field, we can calculate the potential difference between two points that are at distances, $r_A$ and $r_B$, from the wire:

$ Delta V & = V(r_B) -V(r_A) \
& = -integral_(r_A)^(r_B) arrow(E) dot.op d arrow(r) \
& = -integral_(r_A)^(r_B)(frac(lambda, 2 pi epsilon_0 r) hat(r)) dot.op d arrow(r) \
& = -frac(lambda, 2 pi epsilon_0) integral_(r_A)^(r_B) frac(1, r) hat(r) dot.op d arrow(r) \
& = -frac(lambda, 2 pi epsilon_0) integral_(r_A)^(r_B) frac(1, r) d r \
& = -frac(lambda, 2 pi epsilon_0) [ | ln(r) | ]_(r_A)^(r_B) \
& = -frac(lambda, 2 pi epsilon_0) ln(frac(r_B, r_A)) \
therefore Delta V & = frac(lambda, 2 pi epsilon_0) ln(frac(r_A, r_B)) $
where, in the second last line, we removed the absolute value from the logarithm, since $r_A < r_B$, and in the last line, we removed the minus sign by inverting the argument of the logarithm. Since we know the potential difference, $Delta V$, for two points located at distances $r_B = 2 upright c m$ and $r_A = 1 upright c m$, we can determine the charge density on the wire:

$ Delta V & = V(r_B) -V(r_A) = -1 0 0 upright V \
Delta V & = frac(lambda, 2 pi epsilon_0) ln(frac(r_A, r_B)) \
therefore lambda & = frac(2 pi epsilon_0 Delta V, ln(frac(r_A, r_B))) \
& = frac(2 pi(8 . 8 5 times 1 0^(-1 2) upright C^2 dot.op N^(-1) dot.op m^(-2))(-1 0 0 upright V), ln(frac(1, 2))) \
& = 8 . 0 2 times 1 0^(-9) upright C \/ m $
where, again, one needs to be very careful with the signs! Note that it also makes sense that the potential difference, $Delta V = V(r_B) -V(r_A)$, is negative, since $r_A$ is closer to the positively charged wire. A positive charge at rest would move away from the positively charged wire, from $r_A$ to $r_B$, from high potential to low potential.

*Discussion:* In this example, we showed how to determine the electric potential near an infinitely long charged wire by using the electric field that we determined from Gauss' Law. By knowing the potential difference between two points near the wire, we were then able to infer the charge density on the wire.
]
]

=== Electric field and potential at the surface of a conductor <electric-field-and-potential-at-the-surface-of-a-conductor>

Conducting materials are always equipotential surfaces (or volumes) if charges are not moving inside the conductor. This is because the electric field inside a conductor is always zero and thus, a charge moving through a conductor experiences no electric force and its electrical potential energy will be constant. Similarly, because the electric field must always be perpendicular to an equipotential, electric field lines are always perpendicular to the surface of a conductor (in electrostatics).

If we consider a conducting sphere of radius $R$ and charge $+ Q$, the electric field at the surface of the sphere is given by:

$ E = k frac(Q, R^2) $
as we found in #link("/gauss\#chapter-gauss")[Chapter 16.1]. If we define electric potential to be zero at infinity, then the electric potential at the surface of the sphere is given by:

$ V = k frac(Q, R) $
In particular, the electric field at the surface of the sphere is related to the electric potential at its surface by:

$ E = frac(V, R) $
Thus, if two spheres are at the same electric potential, the one with the smaller radius will have a stronger electric field at its surface.

Because a conducting sphere is symmetric, the charges will distribute themselves symmetrically around the whole outer surface of the sphere. The charge per unit area, $sigma$, at the surface of the sphere is thus given by:

$ sigma & = frac(Q, 4 pi R^2) $
The charge density can be related to the electric field at the surface of the sphere:

$ E & = k frac(Q, R^2) = k frac(4 pi R^2 sigma, R^2) = 4 pi sigma k = frac(sigma, epsilon_0) $
where in the last equality, we used $k$ with $epsilon_0$ and confirmed the general result from #link("/gauss\#sec-gauss-conductors")[Section 16.4], where we determined the electric field near a conductor with surface charge $sigma$.

Consider a sphere of radius $R_1$ that carries total charge, $+ Q$. A neutral second, smaller, conducting sphere, of radius $R_2$, is then connected to the first sphere, using a conducting wire, as in @fig:potential:twospheres.

#show figure: set block(breakable: true)
#figure(
  image("files/twospheres-db4e08e96dc924ae5b6fd51098023f44.png", width: 50%),
  caption: [
Two conducting spheres are connected by a conducting wire. The charge $Q$ that was originally on the larger sphere distributes itself onto the two spheres.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:twospheres>

Because the charges on the large sphere can move around freely, some of them will move to the smaller sphere. Very quickly, the charges will stop moving and the spheres of radius $R_1$ and $R_2$ will end up carrying charges $Q_1$ and $Q_2$, respectively (we assume that the wire is small enough that negligible amounts of charge are distributed on the wire). Since the two conducting spheres are connected by a conductor, they form an equipotential, and are thus at the same voltage, $V$, relative to infinity. Since the two spheres are at the same electric potential, the electric field at the surface of each sphere are related:

$ E_1 & = frac(V, R_1) \
E_2 & = frac(V, R_2) \
therefore frac(E_2, E_1) & = frac(R_1, R_2) \
therefore E_2 & = E_1 frac(R_1, R_2) $
and the electric field at the surface of the smaller sphere, $E_2$, is stronger since $R_2 < R_1$. We can also compare the surface charge densities on the two spheres:

$ E_1 & = frac(sigma_1, epsilon_0) \
E_2 & = frac(sigma_2, epsilon_0) \
therefore frac(sigma_2, sigma_1) & = frac(E_2, E_1) = frac(R_1, R_2) \
therefore sigma_2 & = sigma_1 frac(R_1, R_2) $
and we find that the charge density is higher on the smaller sphere. Thus, there are more charges per unit area on the smaller sphere than the bigger sphere.

We can generalize this model to describe charges on any charged conducting object. If charges are deposited on a conducting object that is not a sphere, as in @fig:potential:chargeblob, they will not distribute themselves uniformly. Instead, there will be a higher charge density (charges per unit area), near parts of the object that have a small radius of curvature, just as the charge density was higher on the smaller sphere described above. As a consequence of the higher concentration of charges near the "pointier" parts of the object, the electric field at the surface will be the strongest in those regions.

#show figure: set block(breakable: true)
#figure(
  image("files/chargeblob-18e4c296aa731c7a6315c4332e948ff6.png", width: 65%),
  caption: [
On an uneven conductor, charges will accumulate on the sharper points, where the radius of curvature is the smallest.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:chargeblob>

In air, if the electric field exceeds a magnitude of approximately $3 times 1 0^6 upright V \/ m$, the air is said to "electrically break down". The strong electric field can remove electrons from atoms in the air, ionizing the air in a chain reaction and making it conductive. Thus, if the electric field at a point on the surface of a conductor is very strong, the air near that point will break down, and charges will leave the conductor, through the air, to find a location with lower electric potential energy (usually the ground). Electric breakdown is what we experience as a spark (or lightning, on a larger scale), and is usually a discrete (and potentially dramatic) event. Corona discharge is another mechanism whereby the strong electric field can make the air conductive, but in this case, charges leak into the air more gradually, unlike in the case of electrical break down. Charges leaking into air through Corona discharge will emit a faint blueish light (the "Corona") as well as an audible hissing sound.

Objects that are designed to hold a high electric potential (for example the electrodes on high voltage lines) are usually made very carefully so that they have a very smooth surface and no sharp edges. This reduces the risk of breakdown or Corona discharge at the surface which would result in a loss of charge.

Contrary to popular belief, lightning rods are not designed to attract lightening. Instead, lightning rods are designed to be conductors with a very sharp point, so that Corona discharge can occur at their tip. This allows charges to slowly leak off from the Earth into the cloud through Corona discharge, thereby reducing the potential difference between the cloud and Earth so that a lightning strike (electrical breakdown) does not occur. When a lightning strike does occur, it will hit the lightning rod, since the electric field at the top of the rod is high and that is the most likely point for the air to break down; but, that is not the goal of the lightning rod!

=== Capacitors <sec:potential:capacitors>

Capacitors are common electronic devices that are used to store electric charge for a variety of applications. A capacitor is usually constructed with two conducting plates (called "terminals" or "electrodes") separated by either air or an insulating material.

#show figure: set block(breakable: true)
#figure(
  image("files/capacitors-c81e377aa34e65c60dc580ecd7789fe2.png", width: 50%),
  caption: [
Two examples of capacitors. The left panel shows a "parallel plate" capacitor, and the right panel shows a cylindrically shaped capacitor obtained by "rolling up" a parallel plate capacitor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:capacitors>

@fig:potential:capacitors shows two examples of capacitors. The left panel shows a "parallel plate" capacitor, consisting of two conducting plates separated by air or an insulator. The plates are conducting in order for one to be able to easily add and remove charge to the plates. The plates always hold equal and opposite charges. The right panel shows a more practical implementation of a capacitor that could be used in a circuit, which is simply made by "rolling up" a parallel plate capacitor (with an insulator instead of air separating the plates so that they do not touch).

==== Capacitance <capacitance>

As long as the quantities of charge involved are not too large, it has been observed that the amount of charge, $Q$, that can be stored on a capacitor#footnote[This is the amount of charge on one of the plates. As a whole, the capacitor is neutral.], is linearly proportional to the potential difference, $Delta V$, between the two plates:

$ Q prop Delta V $
$ boxed Q = C Delta V $
The constant of proportionality, $C$, between charge and potential difference across the capacitor (usually called voltage across the capacitor) is called "capacitance", and has S.I. units of "Farads" ($upright F$). The capacitance of a particular capacitor is a measure of how much charge it can hold at given voltage and depends on the geometry of the capacitor as well as the material between the terminals. If too much charge is placed on a capacitor, the material between the two plates will break down, and a spark will usually damage the capacitor as well as discharge it.

We can easily calculate the capacitance of a parallel plate capacitor. We model the capacitor as being made of two conducting plates, each with area, $A$, separated by a distance, $L$, and holding charge with magnitude, $Q$. The surface charge density on one of the plates, $sigma$, is just given by:

$ sigma = frac(Q, A) $
In @ex:potential:parallelplates, we found an expression for the potential difference between two parallel plates:

$ Delta V & = frac(sigma, epsilon_0) L =(frac(L, A epsilon_0)) Q $
Comparing with, $Q = C Delta V$, the capacitance of the parallel plate capacitor is found to be:

$ C = epsilon_0 frac(A, L) $
It makes sense that the capacitance, the amount of charge that can be stored at a given voltage, increases if the plates have a larger area (more space for charges), and decreases if the plates are further apart . %todo: ask (smaller electric field).

Capacitors are used in many touch screens. For example, these might be made of glass (an insulator), with a thin metal coating that one touches to interact with the screen (one of the plates). As you touch the metal plate, you effectively change the capacitance of the screen, which can be sensed and modelled to determine the location of your finger(s). Modern touch screens have many capacitors built directly into the screen, and function based on this principle.

#tipBlock(heading: [Checkpoint])[
A capacitor holds $0 . 2 upright C$ of charge when it has a potential difference of $5 0 0 upright V$ between its plates. If the same capacitor holds $0 . 1 5 upright C$ of charge,  what is the potential difference between its plates?

+ $3 7 5 upright V$.
+ $5 0 0 upright V$.
+ $7 5 upright V$.
+ $1 5 0 upright V$.

#tipBlock(heading: [Answer])[
+
]
]

==== Dielectric materials <dielectric-materials>

In practice, capacitors always have an insulating material between the two plates. The material is chosen to have a higher breakdown voltage than air, so that more charges can be stored before a breakdown occurs. It has also been experimentally observed that the capacitance increases with certain materials, so called "dielectric materials". A dielectric material has a "dielectric constant", $K$, defined to be the amount by which the capacitance increases:

$ C = K C_0 $
where $C$ is the capacitance with the material in place, and $C_0$ is the capacitance when there is a vacuum between the plates (the dielectric constant of air is very close to 1). Often, rather than the dielectric constant, one uses the "permittivity", $epsilon$, of a material:

$ epsilon = K epsilon_0 $
based on the permittivity of free space, $epsilon_0$. The capacitance of a parallel plate capacitor, with a material that has permittivity, $epsilon$, is thus given by:

$ C = K epsilon_0 frac(A, L) = epsilon frac(A, L) $
Dielectric materials are made of molecules that can be polarized (such as water), namely molecules that have a non-zero electric dipole moment. When the dielectric material is placed between the plates, the dipoles inside the material align themselves with the electric field from the plates. This leads to a second electric field, from the dipoles, in the opposite direction of the field from the plates, thus reducing the total electric field between the plates. This, in turn, allows more charges to be held on the plate for a given voltage. This is illustrated in @fig:potential:polarizeddipoles

#show figure: set block(breakable: true)
#figure(
  image("files/polarizeddipoles-e5ce4de56894724c087e06f93a23086e.png", width: 80%),
  caption: [
A dielectric material is placed between the two plates of a capacitor. The electric dipoles in the dielectric have random orientations when the plates are neutral (left panel). When the plates are charged (right panel), the dipoles align themselves with the field from the plates, allowing more charge to be on the plates at a given potential difference.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:polarizeddipoles>

Note that, in a dielectric material with permittivity $epsilon$, Gauss's Law is modified to read:

$ oint arrow(E) dot.op d arrow(A) = frac(Q^(e n c), epsilon) $
where the permittivity of free space, $epsilon_0$, is simply replaced with the permittivity of the material, $epsilon$.

==== Energy stored in a capacitor <energy-stored-in-a-capacitor>

The charges stored on a capacitor have electric potential energy: if one were to place a conductor between the plates, charges would immediately conduct from one plate to the other and gain kinetic energy. We can model the amount of energy stored on the capacitor by considering how much work it takes to place the charges on the capacitor.

Imagine that both plates on the capacitor start with a charge of magnitude $q$. We then remove an infinitesimal negative charge, with magnitude $d q$, from the positive plate and place it on the negative plate. This required work, since we had to pull this negative charge away from the positive plate. If the potential difference across the plates is $Delta V$, then we had to do an amount of work given by:

$ d W = Delta V d q $
since the charge $d q$ has now gained potential energy, $Delta V d q$. The potential difference is dependent on the (constant) capacitance of the capacitor, and the amount of charge, $q$, already stored on the plates:

$ q & = C Delta V \
therefore Delta V & = frac(q, C) $
In order to determine the work required to transfer a total amount of charge, $Q$, we sum the work in transferring each infinitesimal charge, $d q$:

$ W = integral d W = integral_0^Q Delta V d q = integral_0^Q frac(q, C) d q = frac(1, 2) frac(Q^2, C) $
Thus, the total potential energy that is stored on a capacitor is given by:

$ U = frac(1, 2) frac(Q^2, C) = frac(1, 2) C(Delta V)^2 = frac(1, 2) Q Delta V $
where we made use of $Q = C Delta V$ to show the formula with different choices of variables. In either case, the amount of energy that is stored increases with the amount of charge, the capacitance, and the voltage across the capacitor. Capacitors are useful because this energy can be released quickly, as in the bright flash of light required for flash photography.

$ U(arrow(r)) = frac(k Q, r) q + C $
where $C$ is an arbitrary constant, since only differences in potential energy are physically meaningful (as they correspond to work). Note that the sign of the electrical potential energy will depend on the relative sign of $q$ and $Q$. If a collection of charges are held together, the total electrical potential energy that is stored is called "electrostatic potential energy".

Similarly to how the electric field, $arrow(E)(arrow(r))$, corresponds to electric force per unit charge, "electric potential", $V(arrow(r))$, corresponds to electric potential energy per unit charge. The electric potential at a position, $arrow(r)$, relative to a point charge, $Q$, is given by:

$ V(arrow(r)) = frac(U(arrow(r)), q) = frac(k Q, r) + C ' $
and also depends on an arbitrary constant, $C '$, since only differences in electric potential will lead to differences in potential energy. The value of the electric potential, $V$, at some position in space, $arrow(r)$, allows us to determine the electric potential energy, $U$, at that position for any charge, $q$:

$ U = q V $
This is analogous to determining the force on a charge, $q$, when we know the electric field at some point in space:

$ arrow(F) = q arrow(E) $
Differences in electric potential are called "voltages", and the S.I. unit of potential is called the "volt" (V). In S.I. units, the electric field is often expressed in units of volts per metre (V/m).

When a particle with charge $q$ changes position such that the corresponding change in electric potential is $Delta V$, the particle's potential energy will change by:

$ Delta U = q Delta V $
In particular, a negative charge will experience a decrease in potential energy when the electric potential increases, whereas a positive charge will experience an increase in potential energy when the electric potential increases. This reflects the fact that the electric force associated with the electric potential will act in opposite directions on a positive and a negative charge.

In order to describe the energies of particles interacting with electric forces, it is more convenient to use the "electron volt" instead of the Joule. An electron volt is defined as the energy that is gained by a charge with a magnitude $e$ (the magnitude of the charge of the electron) when accelerated through a potential difference of $Delta V = 1 upright V$:

$ 1 upright e V & =(e)(1 upright V) = 1 . 6 times 1 0^(-1 9) upright J $
The electric potential function can be determined in two different ways:

+ By modelling the charge distribution as the sum of infinitesimal point charges, $d q$, and adding together the electric potentials, $d V$, from all charges, $d q$. This requires that one choose $0 upright V$ to be located at infinity, so that the $d V$ are all relative to the same point.
+ By calculating the electric field (either as a integral or from Gauss' Law), and using:

$ Delta V & = V(arrow(r)_B) -V(arrow(r)_A) = -integral_A^B arrow(E) dot.op d arrow(r) $
It is worth noting that one needs to be very careful with the signs when using the above integral. In particular note that one takes the negative of the integral, from $A$ to $B$, to determine the potential at $B$ minus the potential at $A$.

Similarly, one can determine the value of the electric field, $arrow(E)(arrow(r)) = arrow(E)(x, y, z)$, from the electric potential, $V(arrow(r)) = V(x, y, z)$:

$ arrow(E)(x, y, z) = -nabla V = -frac(diff V, diff x) hat(x) -frac(diff V, diff y) hat(y) -frac(diff V, diff z) hat(z) $
where, $nabla V$, is the gradient of the electric potential.

The electric potential can be visualized in a number of ways. The most common is to draw contours of constant electric potential, akin to the contours on geographical maps that are used to show regions of constant altitude (i.e. constant gravitational potential energy).

Regions of constant electric potential are called "equipotentials", and can be lines, surfaces or volumes. Equipotentials are always perpendicular to the electric field. In electrostatics (when charges are not moving), the electric field in a conductor must be zero, so that a conductor always forms an equipotential, and the electric field at the surface of a conductor is always perpendicular to the surface.

When charges are placed on a conductor, they will spread out along the outer surface of the conductor. The surface density of charges will be the highest where the conductor has the smallest radius of curvature (e.g. at a sharp point). Consequently, the electric field at the surface of a charged conductor is highest near sharp points.

Capacitors are devices that are used to store charge. They are usually made using two conducting plates ("terminals" or "electrodes") that hold equal and opposite charge, $Q$, at a fixed potential difference, $Delta V$ , between the electrodes. The amount of charge that is stored on the capacitor is observed to be proportional to the potential difference between the electrodes:

$ Q = C Delta V $
where the constant of proportionality, $C$, is called the "capacitance" of the capacitor. The S.I. unit of capacitance is the "Farad" (F). The capacitance of a capacitor depends on its geometry (e.g. its size) and the materials that it is placed between the electrodes.

Usually, one places a dielectric material between the two electrodes in order to increase the capacitance, and to reduce the risk of breakdown. If that material has a "dielectric constant", $K$, then the capacitance is given by:

$ C = K C_0 $
where, $C_0$, corresponds to the capacitance if there were vacuum between the electrodes. The dielectric constant of air is very close to 1, so that a capacitor in air is very similar to a capacitor in vacuum. A dielectric material is one that is made of molecules that can be polarized under the presence of an electric field; that is, the molecules have an electric dipole moment. When the molecules in a material are polarized, this reduces the total electric field in the material, which increases the capacitance of the capacitor. Inside a dielectric material, we can define the "permittivity", $epsilon$, as:

$ epsilon = K epsilon_0 $
where $epsilon_0$ is the permittivity of free space. Within a dielectric material, Gauss' Law is modified to:

$ oint arrow(E) dot.op d arrow(A) = frac(Q^(e n c), epsilon) $
Since charges are held at a fixed potential difference on a capacitor, capacitors are a way of storing electric potential energy. The amount of electric potential energy stored in a capacitor with capacitance, $C$, when the capacitor has a potential difference, $Delta V$, across its electrodes, is given by:

$ U = frac(1, 2) frac(Q^2, C) = frac(1, 2) C(Delta V)^2 = frac(1, 2) Q Delta V $
#importantBlock(heading: [Important Equations])[
*Electric potential energy from a point charge*

$ U(r) = frac(k Q q, r) + C $
*Electric potential*

$ V = frac(U, q) $
*Electric potential:*

$ Delta V = V(arrow(r)_B) -V(arrow(r)_A) \
Delta V = -integral_A^B arrow(E) dot.op d arrow(r) $
*Electric field:*

$ arrow(E) = -nabla V = -frac(diff V, diff x) hat(x) -frac(diff V, diff y) hat(y) -frac(diff V, diff z) hat(z) $
*Electric potential from a point charge*

$ V(r) = frac(k Q, r) + C $
*Electric potential between two parallel plates*

$ Delta V = E L $
*Charge stored in a capacitor:*

$ Q = C Delta V $
*Energy stored in a capacitor*

$ U = frac(1, 2) frac(Q^2, C) = frac(1, 2) C(Delta V)^2 = frac(1, 2) Q Delta V $
]

#importantBlock(heading: [Important Definitions])[
- *Capacitance:* How much charge a capacitor can hold given the potential difference between the terminals of the capacitor. SI units: $upright [ F ]$. Common variable(s): $C$.
- *Dielectric constant:* A constant which is defined as the (dimensionless) ratio of the dielectric permittivity of a substance and the dielectric permittivity of a vacuum. Common variable(s): $K$.
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- Explain how the capacitance can increase when a dielectric material is used.
- Explain how a corona ring works.
- Which shapes of electrodes are most common? Why?
]

#seealsoBlock(heading: [To try at home])[
- Try to release a static discharge from your finger to some metal object. Measure the distance between your finger and the metal object at the time of the discharge. Knowing the breakdown voltage of air, what was the potential difference between your finger and the metal object just before the discharge?
]

#seealsoBlock(heading: [To try in the lab])[
- Propose an experiment to measure the point at which various substances experience electric breakdown.
- Propose an experiment to measure the vacuum permittivity constant ($epsilon_0$).)
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 17.1])[
A long cylinder of radius $R$ carries a uniform charge per unit volume density, $rho$. The electric potential at the surface of the cylinder is $V_S = 1 0 0 upright V$, where we have chosen $V = 0$ at infinity. What is the electric potential inside and outside of the cylinder as a function of $r$, the distance from the centre of the cylinder?
]

#noteBlock(heading: [Problem 17.2])[
A capacitor is constructed by placing a concentric conducting cylindrical shell of negligible thickness and inner radius, $R_B$, around a solid conducting cylinder of radius, $R_A$, as illustrated in @fig:potential:nestedcylinders. What is the capacitance of this capacitor, where the solid cylinder and the cylindrical shell form the two electrodes?

#show figure: set block(breakable: true)
#figure(
  image("files/nestedcylinders-72db3afa04c1cef3c4b24e2223231d7f.png", width: 70%),
  caption: [
A capacitor constructed from concentric cylinders.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:nestedcylinders>
]

==== Solutions <solutions>

#noteBlock(heading: [Solution 17.1])[
To determine the electric potential inside and outside of the cylinder, we can use the electric field, which we must first determine. We will do this using Gauss' Law. We will use a Gaussian surface that is a cylinder of radius, $r$, and length, $L$. In both regions, the flux of the electric field will be given by:

$ integral E dot.op d A = E 2 pi r L $
since the electric field points in the radial direction, away from the centre of the cylinder. Outside of the cylinder ($r > R$), the total charge enclosed is the total charge on a length, $L$, of the cylinder, which has a volume, $pi R^2 L$:

$ Q^(e n c) = rho pi R^2 L $
Thus, applying Gauss' Law outside the cylinder, gives the electric field for $r > R$:

$ integral E dot.op d A & = frac(Q_(e n c), epsilon_0) \
E 2 pi r L & = frac(rho pi R^2 L, epsilon_0) \
therefore E(r) & = frac(rho R^2, 2 epsilon_0 r) quad(r gt.eq R) $
Inside the cylinder, the enclosed charge is that enclosed by a cylinder of radius, $r$, and length, $L$:

$ Q^(e n c) = rho pi r^2 L $
Applying Gauss' Law, the electric field inside the cylinder is given by:

$ integral E dot.op d A & = frac(Q_(e n c), epsilon_0) \
E 2 pi r L & = frac(rho pi r^2 L, epsilon_0) \
therefore E(r) & = frac(rho r, 2 epsilon_0) quad(r < R) $
Now that we have found the electric field, we can determine the electric potential. What we really want to find is the change in potential when moving a positive point charge from infinity (our 0 \{\\rm V\} point) to the point of interest. We know that the potential at the surface (meaning the potential difference between infinity and the surface) is $V_S = 1 0 0 upright V$. To find the potential at any point, all we have to do is calculate the potential difference between the surface and the point of interest, and add that to $V_S$.

We will start with the potential inside the cylinder, $r < R$:

$ Delta V_(r < R) & = V(r) -V_S = -integral_R^r arrow(E) dot.op d arrow(r) \
& = -integral_R^r frac(rho r, 2 epsilon_0) hat(r) dot.op d arrow(r) \
& = -integral_R^r frac(rho r, 2 epsilon_0) d r \
& = -frac(rho(r^2 -R^2), 4 epsilon_0) \
& = frac(rho(R^2 -r^2), 4 epsilon_0) \
therefore V(r) & = V_S + frac(rho(R^2 -r^2), 4 epsilon_0) \
& = 1 0 0 upright V + frac(rho(R^2 -r^2), 4 epsilon_0) $
Thus, everywhere inside the cylinder, the electric potential is larger than $1 0 0 upright V$, since $R^2 -r^2 > 0$.

We proceed in the same way to determine the potential at position $r$ outside the cylinder, $r > R$:

$ Delta V_(r > R) & = V(r) -V_S = -integral_R^r arrow(E) dot.op d arrow(r) \
& = -integral_R^r frac(rho R^2, 2 epsilon_0 r) hat(r) dot.op d arrow(r) \
& = -frac(rho R^2, 2 epsilon_0) integral_R^r frac(1, r) d r \
& = -frac(rho R^2, 2 epsilon_0) (ln r -ln R) \
& = -frac(rho R^2, 2 epsilon_0) ln(frac(r, R)) \
therefore V(r) & = V_S -frac(rho R^2, 2 epsilon_0) ln(frac(r, R)) \
& = 1 0 0 upright V -frac(rho R^2, 2 epsilon_0) ln(frac(r, R)) $
Since $r > R$, $ln(r \/ R)$ is positive, so the electric potential decreases from as you move away from the cylinder, as expected.
]

#noteBlock(heading: [Solution 17.2])[
We will determine the capacitance by relating the potential difference between the electrodes to the charge stored on the electrodes. Using Gauss's Law, we can determine the electric field between the electrodes based on the charge on those electrodes, and from there, we can determine the potential difference. We will ignore the fact that the cylinder has a finite length and that Gauss's Law will not hold near the edges of the cylinder, where the electric field is no longer exactly in the radial direction.

We assume that each electrode carries an equal and opposite charge per unit length, $lambda$. In order to determine the electric field in the region $R_A < r < R_B$, we consider a cylindrical Gaussian surface of radius $r$ and length $L$, as illustrated in @fig:potential:nestedcylinderssolution. The surface encloses a charge $Q^(e n c) = lambda L$ from the inner cylinder.

#show figure: set block(breakable: true)
#figure(
  image("files/nestedcylinderssolut-c2c6a5ac14cf1e31b82c47ac5cea4d1f.png", width: 70%),
  caption: [
Solving for $E$ between two cylinders using Gauss' law.
],
  kind: "figure",
  supplement: [Figure],
) <fig:potential:nestedcylinderssolution>

Applying Gauss' Law:

$ integral E dot.op d A & = frac(Q_(e n c), epsilon_0) \
E 2 pi r L & = frac(lambda L, epsilon_0) \
therefore E(r) & = frac(lambda, 2 pi epsilon_0 r) $
and the electric field points in the radial direction (outwards if the inner electrode is positive). We can find the potential difference between the two electrodes using the electric field:

$ Delta V & = V(R_B) -V(R_A) = -integral_(R_A)^(R_B) arrow(E) dot.op d arrow(r) \
& = -integral_(R_A)^(R_B) frac(lambda, 2 pi epsilon_0 r) d r \
& = -frac(lambda, 2 pi epsilon_0) ln(frac(R_B, R_A)) $
where we should note that the minus sign is ambiguous, as the actual sign of the potential difference will depend on the sign of $lambda$, the charge on the inner cylinder. If the charge on the inner cylinder is positive, the potential difference is negative, indicating that the outer cylinder is at a lower potential than the inner one (which makes sense, as the electric field would point outwards between the two cylinders).

We can determine the capacitance between the electrodes, by taking the absolute value of the potential difference above, and using the fact that the charge, $Q$, on a length, $L$, of one electrode is given by $Q = lambda L$:

$ Q & = C Delta V \
lambda L & = C frac(lambda, 2 pi epsilon_0) ln(frac(R_B, R_A)) \
therefore C & = frac(2 pi epsilon_0, L ln(frac(R_B, R_A))) $
We note that the capacitance does not depend on the (arbitrary) charge per unit length, $lambda$ that we placed on the inner cylinder in order to model the capacitor. The capacitance only depends on the geometry of the capacitor, and the material that is used between the plates.
]