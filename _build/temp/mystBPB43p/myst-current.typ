/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 18 - Electric current

=== Overview <chapter:current>

In this chapter, we introduce tools to model electric current, namely, the motion of charges inside a conductor. We will show how we can connect the microscopic motion of electrons to macroscopic quantities, such as current and voltage, that can be measured in the laboratory. We will also introduce the notion of resistance, as well as the resistor, a common component in electric circuits.

#hintBlock(heading: [Learning Objectives])[
- Understand the differences in modelling conductors when charges are stationary or moving.
- Understand how to define current and current density.
- Understand the differences between resistance, resistivity, and conductivity.
- Understand Ohm's Law.
- Understand how to model how power is dissipated in a resistor.
- Understand how to model alternating current.
- Understand some elements of electrical safety.
]

#noteBlock(heading: [Think About It])[
Why is it safe to touch the $3 0 0 0 0 0 upright V$ terminal of a Van de Graaf generator, and not the $1 2 upright V$ terminal of a car battery?\}

+ The Van de Graaf generator cannot sustain a large current.
+ The Van de Graaf generator produces alternating current.
+ The car battery produces $1 2 upright V$ of alternating voltage.

#noteBlock(heading: [Answer])[
+
]
]

=== Current <current>

In the preceding chapters, we examined "electrostatic" systems; those for which charges are not in motion. In electrostatic systems, the electric field inside of a conductor is zero (by definition, or charges would be moving, since they are free to move in a conductor). We argued that if charges are deposited onto a conductor, they would quickly arrange themselves into a static configuration (on the surface of the conductor).

To build a system that is not electrostatic, we could apply a fixed potential difference across the conductor. This would create an  electric field inside the conductor, causing the electrons to move. In general, this requires the formation of a circuit, whereby charges enter one end of the conductor and exit the other. The most simple circuit is constructed by connecting the two terminals of a battery to the ends of a conductor, as illustrated in @fig:current:simplecircuit.

#show figure: set block(breakable: true)
#figure(
  image("files/simplecircuit-c553cfef088a33e4ea40ba088bf27fb7.png", width: 40%),
  caption: [
A simple circuit is created by connecting the terminals of a battery to a conducting material such as a copper wire. Note that while electrons flow from the negative to the positive terminal of the battery, conventional current is defined as if it were positive charges moving in the opposite direction.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:simplecircuit>

A battery (as we will see in more detail in #link("/circuits\#chapter-circuits")[Section 19.1] is a device that provides a source of charges and a fixed potential difference. For example, a $9 upright V$ battery has two terminals with a constant voltage of $9 upright V$ between them.

"Electric current" is defined to be the rate at which charges cross a given plane (usually a plane perpendicular to some conductor through which we want to define the current). We define current, $I$, as the total amount of charge, $Delta Q$, that flows through any cross-section of the conductor during an amount of time, $Delta t$:

$ boxed I = frac(Delta Q, Delta t) = frac(d Q, d t) $
where we must take a derivative if the rate of flow is not constant in time. The S.I. unit of current is the Amp\`ere (\\si\{A\}). In almost all cases, it is negative electrons that flow through a material. However, the current is defined to be in the direction of the flow of positive charges, as illustrated in @fig:current:simplecircuit. To distinguish that the current is in the direction opposite to that of the flowing electrons, one sometimes uses the term "conventional current" to indicate that the current is referring to a flow of positive charges.

Note that the definition of electric current is very similar to the "flow rate", $Q$, that we defined as the volume flow of a liquid across a given cross-section (#link("/fluidmechanics\#sec-fluidmechanics-continuity")[Section 14.4.1]). As we continue to develop our description of current, you will notice that there are many similarities between describing the flow of an incompressible fluid and describing the flow of charges in a conductor.

We think of current as a macroscopic quantity, something that we can easily measure in the lab. Current is a measure of the average rate at which charges are moving through the conductor, and not a measure of what is going on at a microscopic level. In order to model the motion of charges at the microscopic level, we introduce the "current density", $arrow(j)$:

$ boxed arrow(j) = frac(I, A) hat(E) $
where $I$ is the current that flows through a surface with cross-sectional area $A$ and $hat(E)$ is a unit vector in the direction of the electric field at our point of interest. As its name would suggest, the current density is the electric current per unit area. It follows that, given the current density, $arrow(j)$, one can always determine the current through a surface with area $A$ and normal vector $hat(n)$:

$ I = A(arrow(j) dot.op hat(n)) $
If the current density changes over the surface, one must take an integral instead:

$ I = integral arrow(j) dot.op d arrow(A) $
where $d arrow(A)$ is a surface element with area $A$ and direction given by the normal to the surface at that point. The overall sign of the current will be determined by the direction of the flow of positive charges.

#noteBlock(heading: [Example 18.1])[
Electric current flows through a conductor with a narrowing cross section, as illustrated in @fig:current:taper. If the cross-sectional area the conductor is $A_1$ at one end, and $A_2$, at the other end, what is the ratio of the current densities, $j_1 \/ j_2$, at the two ends of the conductor?

#noteBlock(heading: [Solution])[
#show figure: set block(breakable: true)
#figure(
  image("files/taper-2f6f00dbd2c0235cd9164665ecccfaae.png", width: 50%),
  caption: [
Current flows through a conductor with a cross-section that decreases from $A_1$ to $A_2$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:taper>

This situation is very similar to the flow of an incompressible fluid. In this case, the number of charges entering the conductor must be equal to the number of charges exiting the conductor during a given amount of time. That is, the total current, $I$, must be the same at both ends, since there is no place in the conductor for charges to accumulate. Since the current must be the same on both ends, we can relate the current densities at each end:

$ j & = frac(I, A) \
therefore I & = j_1 A_1 = j_2 A_2 \
therefore frac(j_2, j_1) & = frac(A_1, A_2) $
and we find that the current density at the exit of the conductor must be higher than at the entrance. This is similar to the continuity equation in the Fluid Mechanics chapter (#link("/fluidmechanics\#sec-fluidmechanics-continuity")[Section 14.4.1]), where the current density plays a role analogous to the velocity in the fluids case.
]
]

=== Microscopic model of current <sec:current:micromodel>

Consider a cylindrical conductor of cross-sectional area $A$ and length $L$, as shown in @fig:current:collisions. A potential difference, $Delta V$, is applied across the length of the conductor, so that there is an electric field, $arrow(E)$, everywhere within the conductor. If the conductor were made of empty space, electrons would enter one end of the conductor, accelerate through the potential difference, and arrive at the other end with a high speed, having gained $e Delta V$ of kinetic energy. In reality, the conductor is made of matter, and electrons do not accelerate continuously through the whole length of the conductor. Instead, they can only accelerate over a short distance before colliding with an atom in the material (rather, a tightly bound electron in the material), and losing their kinetic energy to the material, before accelerating again. The motion of electrons flowing in a conductor is illustrated in @fig:current:collisions and shows electrons moving with a wide range of velocities following the collisions, and only an average motion in the direction anti-parallel to the electric field.

#show figure: set block(breakable: true)
#figure(
  image("files/collisions-bb5c391e996427814e4a857ff6bd18f5.png", width: 40%),
  caption: [
Electrons moving inside a conductor only "drift" on average in the direction anti-parallel to the electric field. In reality, they constantly collide with atoms in the material, transferring their kinetic energy into thermal energy of the conductor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:collisions>

Thus, when the electrons arrive at the positive side of the conductor, they have not gained any kinetic energy. Instead, they have lost that kinetic energy to atoms of the conducting material through collisions; those atoms then vibrate which we can measure as an increase in temperature of the material. When current flows through a conductor, that conductor will heat up; this is how the heating elements in your toaster work!

We model the motion of electrons as charges "drifting" through the conductor with a velocity $arrow(v)_d$, the "drift velocity", as illustrated in @fig:current:microcurrent. In reality, of course, the electrons are only moving on average with the drift velocity, and their instantaneous speed is generally much larger than the drift velocity and can be in any direction, as illustrated in @fig:current:collisions.

#show figure: set block(breakable: true)
#figure(
  image("files/microcurrent-f26d3b3d3edf9ea7da4f38af7b2acf72.png", width: 40%),
  caption: [
A section of electrons of length $l$ drifting through a conductor of cross-sectional area, $A$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:microcurrent>

In a conducting material, each atom will generally have one "free" electron that is loosely bound and able to easily move through the material. The number of free electrons available for conduction per unit volume, $n$, will depend on properties of the material (its density, how many electrons per atom are available, etc). Consider the motion of the conduction electrons present in a section of length $l$ of a conductor, as illustrated in @fig:current:microcurrent. The amount of charge, $Delta Q$, contained in a section of the conductor with length $l$ is given by:

$ Delta Q = -e n A l $
where $A l$ is the volume of that section of the conductor, and $e$ is the magnitude of the charge of the electron. The negative sign is to indicate that the charges are negative (they are electrons). That charge will take an amount of time, $Delta t$, to flow through a given plane of the conductor, so that we can relate the length of the section, $l$, to the drift speed and $Delta t$:

$ l & = v_d Delta t $
Thus, the current that flows through a cross-section of the conductor is given by:

$ I = frac(Delta Q, Delta t) = frac(-e n A l, Delta t) = -e n A v_d $
$ therefore thick boxed I = -e n A v_d, $
which allows us to connect a macroscopic quantity, current, to the microscopic description of moving charges. Note that the negative sign reflects the fact that the current (of positive charges) is in the opposite direction from the drift velocity of the (negative) electrons. The current density is directly related to the microscopic quantities, since it does not depend on the (macroscopic) cross-sectional area, $A$, of the conductor:

$ arrow(j) & = frac(I, A) hat(E) = -e n arrow(v)_d $
$ therefore thick boxed arrow(j) = -e n arrow(v_d) $
where, again, the negative sign indicates that the current density is in the opposite direction from the actual drift velocity of the electrons, which itself is anti-parallel to the electric field.

#noteBlock(heading: [Example 18.2])[
A current of $1 upright A$ is measured in a copper wire with a diameter of $1 upright m m$. What is the drift velocity of the electrons? Assume that each atom of copper provides one "free electron" for conduction.

#noteBlock(heading: [Solution])[
In order to determine the drift velocity of electrons, we need to know the density of free electrons in copper. To do this, we need to determine how many copper atoms there are per unit volume. The density of copper is $rho = 8 . 9 2 e 3 upright k g \/ m^3$ and the atomic mass unit of copper is $6 3 . 5 upright a m u$ ($1 upright m o l e$ of copper weighs $6 3 . 5 upright g$). The number of copper atoms per unit volume is thus:

$ n = frac((6 . 0 2 2 e 2 3 upright m o l e^(-1))(8 . 9 2 e 3 upright k g \/ m^3),(6 3 . 5 e -3 upright k g \/ m o l e)) = 8 . 4 6 e 2 8 upright m^(-3) $
Since each copper atom contributes one free electron, this is the same as the density of free electrons. From this, we easily obtain the drift velocity from the current:

$ v_d & = frac(j, e n) = frac(I, A e n) = frac((1 upright A), pi(0 . 0 0 0 5 upright m)^2 (1 . 6 e -1 9 upright C)(8 . 4 6 e 2 8 upright m^(-3))) \
& = 9 . 4 e -5 upright m \/ s tilde 0 . 1 upright m m \/ s $
The drift velocity is thus very slow, less than one millimetre per second. Note that a $1 upright m m$ diameter copper wire would not actually be able to sustain such a high current density without damage.
]
]

#attentionBlock(heading: [Josh's Thoughts])[
There are a few types of velocities which can be easily confused when discussing current: Fermi velocity, drift velocity, and the velocity at which a circuit is "completed".

Understanding the Fermi velocity requires quantum mechanics and is beyond the scope of this textbook. However, the Fermi velocity is representative of the actual velocity of electrons in a conducting material, mostly due to their thermal energy. In a good conductor, these speed are roughly 1/200 the speed of light.

While electrons do move at their Fermi velocity in a conductor, they do not move in a uniform path through the conductor towards the end of the circuit. Most of an electron's movement in a wire is chaotic, but in a DC circuit, the electrons have a drift velocity through the conductor. This drift velocity is defined as the net velocity of electrons in a conductor, and is caused by the applied electric field which has a small amount of influence on the direction of the quickly moving electron's motion. The drift velocity of electrons is very slow, often having a magnitude as small as tens of microns per second.

When comparing drift velocity to Fermi speed, imagine yourself standing inside of a large horizontal cylinder, which will represent the conductor in this analogy. The interior of this cylinder is lined with cannons that shoot rubber balls in all directions, which will be the electrons moving at their Fermi velocity. Now, imagine that you are attempting to move these high-speed rubber balls from one end of the cylinder to the other by blowing a hair dryer in that direction, which is the electric field inducing a drift velocity.

Now that we understand the quantum chaos that occurs in a conductor, you may be thinking to yourself, "why does the light bulb turn on so quickly after I flick the light switch?". This is a reasonable thought, because we have only covered the motion of single particles in a conductor. When an electron moves very slightly (at its drift velocity), it will push other electrons in the conductor forward, causing a chain reaction of electrons pushing one another forward. This movement causes electrons to flow through the circuit, much like how water flows through a pipe. The velocity at which a light bulb turns on after the flicking of a switch is theoretically the speed of light, but short delays caused by irregularities in the way electrons bump into one another causes the velocity to be roughly 50 to 99 percent of the speed of light.
]

=== Ohm's Law <ohms-law>

In the previous section, we developed a microscopic model of charges moving in a conductor, but did not describe how this motion is affected by the electric field in the conductor (or equivalently, the potential difference across the conductor). "Ohm's Law" states that the current density, $arrow(j)$, at some position in the conductor is proportional to the electric field, $arrow(E)$, at that same position in the conductor:

$ arrow(j) prop arrow(E) $
$ boxed arrow(j) = sigma arrow(E) $
where we have introduced the "conductivity", $sigma$, as the constant of proportionality. Conductivity is a property of the material from which the conductor is made, and is a measure of how large a current density (and by extension, current) there will be in material given a certain electric field. Materials with a high conductivity are said to be good conductors, as a large current will result from a small electric field. Gold and copper are examples of materials with a high conductivity.

#tipBlock(heading: [Checkpoint])[
What is the conductivity of an ideal insulator?

+ 0
+ Roughly 1
+ Infinite

#tipBlock(heading: [Answer])[
+
]
]

==== Resistivity <resistivity>

For convenience, one often describes how well a material conducts charges using the "resistivity", $rho$, which is simply defined as the inverse of conductivity:

$ rho = frac(1, sigma) $
Materials with a high resistivity are poor conductors; they tend to "resist" the formation of a current when an electric field is applied. Insulators have high resistivity.

The resistivity of most (but not all) materials has been observed to increase linearly with the temperature of the material. One can picture that, as atoms in the material vibrate more, it is more difficult for electrons to conduct through the material as they will interact with more atoms. The resistivity, $rho$, at a certain temperature, $T$, is usually modelled as follows:

$ rho(T) = rho_0 [ 1 + alpha(T -T_0) ] $
where $rho_0$ is a "reference resistivity" measured at a "reference temperature", $T_0$ (usually $2 0 upright degree C$). The constant $alpha$ is the "temperature coefficient" of the material. The temperature dependence of the resistivity is illustrated in @fig:current:resistivity.

#show figure: set block(breakable: true)
#figure(
  image("files/resistivity-c7aafb366a6b3b1ed6353f119b1917bd.png", width: 40%),
  caption: [
A linear model of resistivity can be used for most conductors over a large range of temperatures.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:resistivity>

This "linear model" (since resistivity increases linearly with temperature) is empirically found to be valid for many materials over a large range of temperatures, although it is not expected to hold at extreme temperatures (either very low or very high). Furthermore, for semi-conducting materials (such as silicon and germanium), resistivity is found to decrease as a function of temperature.

#tipBlock(heading: [Checkpoint])[
What is the slope of the resistivity vs temperature as shown in @fig:current:resistivity?

+ $alpha$.
+ $rho_0 alpha T$.
+ $rho_0 T$.
+ $rho_0 alpha$.

#tipBlock(heading: [Answer])[
+
]
]

@tab:current:materials shows a list of common materials and their conductivity, resistivity, and temperature coefficients (defined at a reference temperature $T_0 = 2 0 upright degree C$).

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 4, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Material*
],
[
*Resistivity* $upright [ Omega dot.op m ]$
],
[
*Temperature coefficient* $upright [ degree C^(-1) ]$
],
[
*Free electron density*$upright [ m^(-3) ]$
],
[
Silver
],
[
$1 . 5 9 times 1 0^(-8)$
],
[
0.0038
],
[
$5 . 8 6 times 1 0^(2 8)$
],
[
Copper
],
[
$1 . 6 8 times 1 0^(-8)$
],
[
0.0040
],
[
$8 . 4 6 times 1 0^(2 8)$
],
[
Gold
],
[
$2 . 4 4 times 1 0^(-8)$
],
[
0.0034
],
[
$5 . 9 0 times 1 0^(2 8)$
],
[
Aluminum
],
[
$2 . 7 4 times 1 0^(-8)$
],
[
0.0039
],
[
$1 8 . 1 times 1 0^(2 8)$
],
[
Iron
],
[
$9 . 7 0 times 1 0^(-8)$
],
[
0.0050
],
[
$1 7 . 0 times 1 0^(2 8)$
],
[
Silicon
],
[
$0 . 1 -1 0 0 0$
],
[
-0.0750
],
[
0
],
[
Rubber
],
[
$(1 -1 0 0) times 1 0^(1 3)$
],
[
0
],
[
0
],
[
Quartz
],
[
$7 . 5 times 1 0^(1 7)$
],
[
0
],
[
0
],
),
  caption: [
Resistivity, free electron density and temperature coefficients of common materials. All properties are listed for a reference temperature of $2 0 upright degree C$.
],
  kind: "table",
  supplement: [Table],
) <tab:current:materials>

=== Resistors <resistors>

A conductor with current going through it (or current that could go through it) is generally called a "resistor" to emphasize that charges will experience resistance as they travel through the conductor (as they collide with atoms). In this section, we describe resistors, how to combine them, and how to model the heat that is generated when charges collide with the atoms in the resistor.

==== Resistance <resistance>

Consider a resistor with length $L$ and cross-sectional area $A$, made out of a material with resistivity $rho$, as illustrated in @fig:current:resistor.

#show figure: set block(breakable: true)
#figure(
  image("files/resistor-19789ed5da193d469511eec922645ce0.png", width: 30%),
  caption: [
A simple resistor of length, $L$, cross-sectional area, $A$, made from a materials with resistivity, $rho$. A potential difference, $Delta V$, is applied across the resistor, leading to an electric field and current in the resistor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:resistor>

A potential difference, $Delta V$, is applied across the length of the resistor, resulting in an electric field, $arrow(E)$, within its volume. To good approximation, one can model the two ends of the conductor as parallel plates, so that the magnitude of the electric field throughout the conductor is constant in magnitude and direction and has strength given by:

$ E = frac(Delta V, L) $
Combining this with Ohm's Law, we have:

$ j & = sigma E \
therefore j & = sigma frac(Delta V, L) \
 $
Since the current density is a microscopic quantity, we can replace it with the current, $I$, a macroscopic quantity, for the conductor of cross-sectional area $A$, to find:

$ j & = frac(I, A) \
therefore I & = j A = sigma frac(Delta V, L) A $
This last equation is often written by isolating the potential difference:

$ boxed Delta V = rho frac(L, A) I $
where we replaced the inverse of the conductivity with the resistivity. This last equation is the equivalent of Ohm's Law, but written for a (macroscopic) resistor of length $L$, cross-sectional area $A$, and made of a material with resistivity, $rho$. Written in this way, Ohm's Law is a statement that the *current through a resistor is proportional to the voltage applied across it*. The constant of proportionality, $R$, is called the "resistance":

$ boxed Delta V = R I $
This last equation is often called "Ohm's Law", even if, technically, Ohm's Law is the relation between current density and electric field. A resistor is a macroscopic object whose "resistance" can be characterized by a single value, $R$, its resistance. The resistance of a resistor can be determined from its macroscopic properties (length and cross-sectional area) and from the material from which it is made (with a given resistivity):

$ boxed R = rho frac(L, A) $
The (derived) S.I. unit of resistance is the "Ohm", ($upright Omega$).

#attentionBlock(heading: [Olivia's Thoughts])[
Resistivity versus Resistance: Both resistance and resistivity tell us how strongly a material or conductor opposes the flow of current. The difference is that the resistivity is a fundamental property of a material (and is microscopic), whereas resistance depends on the size and shape of the conductor, _as well as_ the resistivity (and is macroscopic). It is tempting to think about resistivity as the "resistance density", because it is similar to the concepts of mass density and charge density. However, we have to be careful because resistivity is not resistance per unit volume ($rho eq.not R \/(A dot.op L)$), and is instead related to resistance by $rho = R dot.op(A \/ L)$.
]

#tipBlock(heading: [Checkpoint])[
What are the SI units of conductivity?

+ $upright frac(Omega, C)$.
+ $upright frac(1, Omega m)$.
+ $upright frac(N^2 Omega, C)$.
+ $upright frac(C, s)$.

#tipBlock(heading: [Answer])[
+
]
]

The model to describe the resistance of a conductor to the flow of electric current under a fixed potential difference, $Delta V$, is identical to the model that we derived in #link("/fluidmechanics\#sec-fluidmechanics-poiseuille")[Section 14.4.4] to describe the Poiseuille flow, $Q$, of an viscous incompressible fluid in a pipe with resistance, $R$, under a pressure difference, $Delta P$:

$ Delta P = R Q $
Thus, one can think of electric current by analogy to the incompressible flow of a viscous fluid through a pipe. If the pipe is longer, it opposes more resistance to the flow of liquid, just as a longer resistor has a larger resistance to current. A pipe with a larger cross-sectional area has less resistance to the flow of liquid, just as a resistor with a larger cross sectional area, $A$, has a lower resistance.

==== Combining resistors <combining-resistors>

Resistors are the most common component in circuits, and we show below how to model the equivalent resistance of two resistors that are combined in "parallel" or in "series".

@fig:current:series shows two resistors, $R_1$ and $R_2$, connected in "series", to form an an effective resistor with resistance $R_(e f f)$. A potential difference, $Delta V$, is applied across the combination of resistors.

#show figure: set block(breakable: true)
#figure(
  image("files/series-89b8fcc9f34dfbdec77541ffdf727f64.png", width: 45%),
  caption: [
When two resistors are connected in series, the same current flows through each resistor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:series>

By analogy with fluid mechanics, the charges that enter the first resistor, $R_1$, must exit the resistor at the same rate, and then cross the second resistor, $R_2$. In other words, what comes into $R_1$ must come back out of $R_2$, since there is no place for the charges to go. This is the electrical equivalent of "continuity" in fluid mechanics. #strong[When resistors are combined in series, both resistors will have the same current, $I$, through them].

Ohm's Law (the macroscopic version), must also be true for each resistor:

$ Delta V_1 & = R_1 I \
Delta V_2 & = R_2 I $
where $Delta V_1$ and $Delta V_2$ are the potential differences across each resistor. $Delta V_1$ and $Delta V_2$ must sum to $Delta V$:

$ Delta V_1 + Delta V_2 = Delta V $
since the potential energy (per unit charge) that is lost in each resistor must equal to the total potential energy (per unit charge) that is made available by the battery. Combining this last equation with Ohm's Law for each resistor, we can model the series combination of resistors as having an "effective resistance", $R_(e f f)$, given by:

$ Delta V = Delta V_1 + Delta V_2 = R_1 I + R_2 I =(R_1 + R_2) I = R_(e f f) I $
$ boxed R_(e f f) = R_1 + R_2 quad "(Series resistors)" $
It makes sense that the equivalent resistance is found by summing the two resistors when they are in series. If the two resistors are made of the same material and have the same cross-sectional area, combining them in series is equivalent to fabricating a longer resistor with the two lengths added together. The result is easily extended to any number of resistors:

$ R_(e f f) & = R_1 + R_2 + R_2 + dots.h $
#attentionBlock(heading: [Olivia's Thoughts])[
The comparison to fluid mechanics can very useful. In the left panel of @fig:current:waterseries, I've shown what the series circuit from @fig:current:series would look like in the fluid mechanics analogy. Here, I have replaced the current with the fluid flow, $Q$, and the voltage with the pressure differential, $Delta P$. The resistors are now narrow portions of the pipe, with resistances $R_1$ and $R_2$. There are a couple things we can see from this:

+ The flow is the same at every point along the circuit, because there is only one path the water can take, and there is no build up of water at any point.
+ The effective resistance is the sum of $R_1$ and $R_2$, because the resistance from the two narrow sections is equivalent to the resistance of one long narrow section, as displayed in the right panel of @fig:current:waterseries.

#show figure: set block(breakable: true)
#figure(
  image("files/waterseries-7eef2efa94ac989eef10ef8de3522596.png", width: 70%),
  caption: [
Left panel: What a series circuit would look like in the context of fluid mechanics. Right panel: The two resistors can be thought of as a single resistor with effective resistance $R_(e f f) = R_1 + R_2$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:waterseries>
]

@fig:current:parallel shows two resistors, with resistances $R_1$ and $R_2$, combined in parallel to form an effective resistor with resistance, $R_(e f f)$. A potential difference, $Delta V$, is applied across the combination of resistors. *When resistors are combined in parallel, both resistors have the same potential difference across them*.

#show figure: set block(breakable: true)
#figure(
  image("files/parallel-d0205dcfa0a04a47e822005ba14cdb89.png", width: 40%),
  caption: [
When two resistors are connected in parallel, the same voltage is applied across each resistor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:parallel>

Applying Ohm's Law to each resistor, we find that they each have difference currents going through them:

$ I_1 & = frac(Delta V, R_1) \
I_2 & = frac(Delta V, R_2) $
The total current, $I$, that enters the combination of resistors, must also exit the combination of resistors (continuity), so that the total current, $I$, is the sum of the current through each resistor:

$ I = I_1 + I_2 $
Combining this with Ohm's Law, we find:

$ I & = I_1 + I_2 = frac(Delta V, R_1) + frac(Delta V, R_2) =(frac(1, R_1) + frac(1, R_2)) Delta V \
therefore Delta V & = frac(1, frac(1, R_1) + frac(1, R_2)) I $
Thus, the effective resistance, $R_(e f f)$, of two resistors connected in parallel is given by:

$ boxed R_(e f f) = frac(1, frac(1, R_1) + frac(1, R_2)) = frac(R_1 R_2, R_1 + R_2) quad "(Parallel resistors)" $
where the two forms that are given are equivalent. The effective resistance of two resistors in parallel is smaller than the resistance of either resistor. This makes sense, because combining resistors in parallel is analogous to fabricating a single resistance with a larger cross-sectional area, allowing for "more space" for the charges to flow. Again, this result is easily extended for more than two resistors:

$ R_(e f f) = frac(1, frac(1, R_1) + frac(1, R_2) + frac(1, R_3) + dots.h) $
#attentionBlock(heading: [Olivia's Thoughts])[
Once again, we can use the comparison to fluid mechanics. The left panel of @fig:current:waterparallel shows what the parallel circuit in @fig:current:parallel would look like in the fluid mechanics analogy. There are a couple things we can take from this:

+ Now, there are two paths that the water can take, so the flow through $R_1$ will not necessarily be the same as that though $R_2$. However, since there are only two paths to take, the total flow must be equal to the sum of the flow through each resistor (i.e. $Q = Q_1 + Q_2$).
+ The effective resistance is lower than the individual resistances $R_1$ and $R_2$. The two narrow resistors are equivalent to one wider resistor, as in @fig:current:waterparallel.

#show figure: set block(breakable: true)
#figure(
  image("files/waterparallel-185622bb6a9f5dca18b789894c44d66f.png", width: 70%),
  caption: [
Left panel: What a parallel circuit would look like in the context of fluid mechanics. Right panel: The two resistors can be thought of as a single, wide resistor with effective resistance $R_(e f f) =(1 \/ R_1) +(1 \/ R_2)$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:waterparallel>
]

#noteBlock(heading: [Example 18.3])[
A $R_2 = 2 upright Omega$ resistor is placed in parallel with a $R_3 = 3 upright Omega$ resistor and the combination is placed in series with a $R_1 = 1 upright Omega$ resistor, as shown in @fig:current:3resistors. What is the effective resistance of this combination?

#noteBlock(heading: [Solution])[
#show figure: set block(breakable: true)
#figure(
  image("files/3resistors-5f2efd2bb3dd619606b3f808340d707b.png", width: 40%),
  caption: [
A combination of three resistors.
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:3resistors>

In order to determine the effective resistance of the combination, we can first combine the parallel resistors $R_2$ and $R_3$ into an effective resistor, $R '$, which we can then combine in series with the resistor $R_1$, to obtain the effective resistance of the three resistors. First, combining the parallel resistors, $R_2$ and $R_3$, we find:

$ R ' = frac(R_2 R_3, R_2 + R_3) = frac(6, 5) upright Omega $
We can then combine this in series with $R_1$, to obtain the total effective resistance of the combination of three resistors:

$ R_(e f f) = R_1 + R ' = frac(1 1, 5) upright Omega $
\*\*Discussion: \*\*In this example, we showed how to determine the effective resistance of a combination of series and parallel resistors. We can determine the effective resistance of complex combinations of resistors in the same manner, by first combining subsets of resistors and then including those with other resistors.
]
]

==== Electrical power dissipated in resistors <electrical-power-dissipated-in-resistors>

As we discussed in @sec:current:micromodel, charges that move through a resistor do not gain kinetic energy. Instead, the electric potential energy available from the voltage applied across the resistor is converted into heat, as a result of charges colliding with atoms in the material. The net potential energy, $Delta U$, available to a single charge, $q$, is given by:

$ Delta U = q Delta V $
If there are many charges going through the resistor, the rate, $P$, at which they will dissipate energy in the resistor is given by:

$ P & = frac(d, d t) Delta U = frac(d, d t) q Delta V = I Delta V \
therefore P & = I Delta V $
where we recognized that $d q \/ d t = I$ is the definition of current. $P$ corresponds to the rate at which energy is dissipated in the resistor, and has dimensions of power. Combining this with Ohm's Law, the power that is dissipated in a resistor can be written in different ways:

$ boxed P = I Delta V = frac((Delta V)^2, R) = I^2 R $
#noteBlock(heading: [Example 18.4])[
A hair-dryer is rated as consuming $1 5 0 0 upright W$ when connected to an outlet with a $1 2 0 upright V$ potential difference. What is the resistance of the hair-dryer, and how much current goes through it when it is running?

#noteBlock(heading: [Solution])[
Since the power of the hair-dryer and the potential difference across it are known, we can easily determine its resistance:

$ P & = frac((Delta V)^2, R) \
therefore R & = frac((Delta V)^2, P) = frac((1 2 0 upright V)^2,(1 5 0 0 upright W)) = 9 . 6 upright Omega $
Similarly, we can determine the current through the hair dryer:

$ P & = I Delta V \
therefore I & = frac(P, Delta V) = frac((1 5 0 0 upright W),(1 2 0 upright V)) = 1 2 . 5 upright A $
\*\*Discussion: \*\*Most household appliances are rated by the electrical power that they consume. This rating assumes that the appliance will be connected to a fixed potential difference ($1 2 0 upright V$ in North America), so it is  straightforward to determine the current that they will draw. This is important because the current that is drawn by the appliance has to go through the wiring in the house, and if the current is too large, the wiring (which has resistance) will heat up ($P = I^2 R$) which could result in an electrical fire. Circuits in a house have safety devices (fuses or breakers) that are designed to interrupt the circuit if the current is too large.
]
]

One can rate a power supply, such as a battery, by the amount of power that it can deliver. Power supplies are usually designed to supply a fixed potential difference; for example, a $9 upright V$ battery supplies a constant voltage of $9 upright V$. If a small resistor is connected across the terminals of the battery, a large current, $I$, will flow through the resistor. In principle, the current through the resistor will be given by Ohm's Law, $I = Delta V \/ R$. However, by reducing the resistance, the current will increase, and the power dissipated by the resistor, $P = I Delta V$, would increase indefinitely. Obviously, this is not possible, as it requires the battery to supply energy at the same, ever increasing rate. In practice, as the resistance is decreased, the current through the resistor will only increase until $I Delta V$ is equal to the maximal power that can be dissipated by the battery. As the resistance across the battery is further decreased, the voltage across the battery will start to decrease as well, so that the power dissipated in the resistor, $I Delta V$, does not exceed the power that the battery could possibly supply.

==== Superconductors <superconductors>

Superconductors are materials that, under certain conditions, have zero resistivity. A resistor made from a superconducting material will thus have zero resistance. It is beyond the scope of this textbook to describe how superconductivity arises in materials, however, it is worth knowing that these exist. Typically, superconductivity arises in materials when they are cooled to temperatures close to absolute zero, although some materials exhibit superconductivity at much higher temperatures ($tilde 1 4 0 upright K$ or $tilde -1 3 0 upright degree C$). Superconducting materials are often used when one needs a large electric current, such as in a powerful electro-magnet. By having no resistance, a large current can be sustained without dissipating any power.

=== Alternating voltages and currents <alternating-voltages-and-currents>

So far, we have modelled how current propagates through a resistor under a constant potential difference, $Delta V$. This is called "direct current" (DC) as the charges move in a constant direction through the resistor. Batteries supply fixed voltages, and circuits with batteries will almost always have DC current. The voltage that is supplied between two of the sockets in a household electrical outlet is "alternating", and leads to "alternating current" (AC), where charges move back and forth, with no net displacement.

The potential difference across a household outlet varies sinusoidally:

$ Delta V(t) = Delta V_0 sin(omega t) $
where $Delta V_0$ is the maximal amplitude of the voltage ($1 2 0 upright V$ in North America, $2 2 0 upright V$ in Europe), and $omega = 2 pi f$ is the angular frequency of the voltage ($f = 6 0 upright H z$ in North America, $f = 5 0 upright H z$ in Europe). When a resistor with resistance $R$ is connected to an AC voltage, the resulting current, given by Ohm's Law, is also alternating:

$ I(t) = frac(Delta V(t), R) = frac(Delta V_0, R) sin(omega t) = I_0 sin(omega t) $
On average, the alternating current through a resistor is zero. However, this does not mean that zero  energy is dissipated, since the electrons in the resistor will still collide with atoms as they oscillate back and forth. We can define the average power, $bar P$, that is dissipated in the resistor as the  power that is dissipated over one oscillation cycle (with period, $T$). To obtain the latter, we calculate the total energy, $E$, dissipated in the resistor over one cycle so that the power is simply given by $E \/ T$. We divide the interval of time, $T$, into infinitesimally small intervals, $d t$, so that the infinitesimal energy, $d E$, dissipated in an infinitesimal time, $d t$, is given by:

$ d E = P(t) d t $
The total energy dissipated in one period is then given by:

$ E = integral d E = integral_0^T P(t) d t $
so that the power dissipated in one cycle is given by:

$ bar P = frac(E, T) = frac(1, T) integral_0^T P(t) d t $
The instantaneous power, $P(t)$, can be described in terms of the instantaneous current, $P(t) = I^2 (t) R$, so that the average power can be written as:

$ bar P = frac(1, T) integral_0^T P(t) d t = frac(1, T) integral_0^T I(t)^2 R d t = R I_0^2 frac(1, T) integral_0^T sin^2 (omega t) d t = frac(1, 2) R I_0^2 $
where we used the fact that $T = frac(2 pi, omega)$ to evaluate the integral. In order to make the formula similar to the DC equivalent (without the additional factor of $1 \/ 2$), we can define the "root mean square" current, $I_(r m s)$, as an average current, from which we can calculate the average power that is dissipated in a resistor:

$ I_(r m s) & = frac(I_0, sqrt(2)) \
therefore bar P & = I_(r m s)^2 R $
Similarly, one can define the "root mean square" voltage, $Delta V_(r m s)$, so that the average power dissipated with an alternating current can be written in the same form as for the DC case:

$ V_(r m s) & = frac(Delta V_0, sqrt(2)) \
therefore bar P & = I_(r m s)^2 R = frac(Delta V_(r m s)^2, R) = I_(r m s) Delta V_(r m s) $
=== Electrical safety <electrical-safety>

The models that we have developed to describe current can inform us on ways to avoid being injured by electricity in our common lives. The two main hazards associated with electricity are fire and electrocution. Typically, an electrical fire is the result of a large current going through a resistor, as the power dissipated in a resistor is proportional the square of the current through that resistor. If you connect an appliance that draws a large current to your outlets, the wires in your house (i.e. resistors) could heat up enough to cause a fire (e.g. by heating up insulation that is close by). This danger is primarily mitigated by using "fuses" or "circuit breakers" that will interrupt the circuit if the current is too large. A fuse is a simple device with a thin wire (high resistance) that will melt and break if too much current goes through it (which is designed to happen long before the wires in your house start to overheat). A circuit breaker is a resettable switch that opens under a large current. Modern houses do not use fuses any more, since they have to be replaced every time they are "blown".

Electrocution is a form of injury that is the result of a current crossing the body; we can think of the body as a resistor connected between the terminals of a battery. Injuries can be caused simply by burns (tissue destroyed), or by muscles contracting involuntarily due to the current. For example, one's muscles may contract in such a way that the person cannot let go of the source of current. If a current of more than about $8 0 upright m A$ passes through the mid section of a person, enough current could go through the heart so that it starts to beat very irregularly ("ventricular fibrillation") which can lead to death since blood stops flowing normally. A very large current can cause the heart to simply stop beating, which could sometimes be less dangerous than ventricular fibrillation (if for a short period of time, and of course, the burns will be more severe from a larger current). A "defibrillator" is designed to provide such a high current that the heart stops briefly, with the hope that when it starts back, the beats will be regular. This can be used in cases of ventricular fibrillation (caused by electrocution or other). One often hears that "it's current that kills", which is a statement that being electrocuted by a certain voltage is not a good measure of the resulting injury, since the current will depend on the resistance of the person's body.

The amount of current that will go through a person will depend on the resistance of the person's body. Internal tissues and organs are typically quite conductive and have low resistance. The outer layer of the skin, on the other hand, has a high resistance when dry and helps to limit the current that can go through the body. The resistance of dry skin is usually considerably above $1 e 4 upright Omega$, while it can be much less than $1 e 3 upright Omega$ when wet. With wet skin, a potential difference of $1 2 0 upright V$ (as in a North American outlet) can easily lead to a current above $1 0 0 upright m A$, which could easily be fatal. Note that being barefoot and in contact with the ground is usually a low resistance connection, since there is often a thin layer of sweat on your feet.

In North America, electrical outlets have a minimum of two sockets: a "live" socket (with an oscillating voltage, usually a black wire#footnote[Never trust the colouring of wires, always test them!]), and a "neutral" socket which is connected to the ground and relative to which the oscillating voltage has an amplitude of $1 2 0 upright V$ (usually a white wire). One can obviously be electrocuted by simultaneously touching the wires in both sockets, and usually simply by touching the wire in the live socket, since one's feet are usually connected to ground. Electrocution by directly touching the socket is fairly uncommon, since most people know not to do that (right?!). Usually, one is electrocuted by an appliance with faulty wiring; perhaps the insulation on the live wire is worn out and you touch the wire by mistake, or the wiring in the appliance is faulty, causing the casing of the appliance to be live. In order to mitigate the risk of electrocution from an appliance with faulty wiring, most outlets will have a third socket, the "dedicated ground". The dedicated ground wire is connected to the ground inside the socket, and to the casing of the appliance, as illustrated in @fig:current:toaster. Thus, if the live wire were to be in contact with the casing of the appliance, the dedicated ground provides a low resistance path for current to take that is in parallel with your body (so that most current will go through the low resistance path).

#show figure: set block(breakable: true)
#figure(
  image("files/toaster-1f623c53aaf6f4b9b0a91566c6ecca0d.png", width: 100%),
  caption: [
When an appliance has three prongs on its electrical cable, the middle prong grounds the case to the dedicated ground as a safety measure. Note that the live wire is not necessarily the right-hand side socket on an outlet!
],
  kind: "figure",
  supplement: [Figure],
) <fig:current:toaster>

$ I = frac(Delta Q, Delta t) = frac(d Q, d t) $
where a derivative is taken if the rate at which charges are moving is not constant with time.

Electric current is a macroscopic quantity that can be measured. Conventional current is defined to be positive in the direction in which positive charges flow. In most situations, it is electrons that move inside a conductor, so the current is defined to be positive in the _opposite direction_ of the actual motion of the (negative) electrons.

The current density, $arrow(j)$, is defined to be the current per unit area at some point in a conductor, and is a vector in the direction of the electric field, $hat(E)$, at that point:

$ arrow(j) = frac(I, A) hat(E) $
The current density can be related to the microscopic motion of charges within the conductor. If the current density, $arrow(j)$, is known, the corresponding current, $I$, that crosses a surface with area, $A$, and normal vector, $hat(n)$, is given by:

$ I = A arrow(j) dot.op hat(n) = integral arrow(j) dot.op d arrow(A) $
where the integral must be taken if the current density is not constant over the surface.

A conducting material through which current is flowing is called a resistor. When a potential difference is applied across a resistor, the resulting electric field will drive the flow of electrons through the resistor. The electrons will flow with an average "drift velocity", $arrow(v)_d$, which is much lower than the actual (Fermi) speed of the electrons in the material. Inside the resistor, electrons are constantly accelerated before they collide with atoms in the material losing their kinetic energy, and then accelerating again. Thus, the potential energy that is available to the electrons is "used" to heat the resistor, and the electrons, on average, drift quite slowly through the resistor.

The current density in a resistor can be related to the drift velocity of the electrons and the "density of free electrons" in the material, $n$:

$ arrow(j) = -e n arrow(v)_d $
where, $e$,  is the magnitude of the charge of the electrons and the minus sign indicates that the current density is in the opposite direction of the velocity of the (negative) electrons.

Ohm's Law states that the current density, $arrow(j)$, at some point in the conductor is proportional to the electric field, $arrow(E)$, at that point:

$ arrow(j) = sigma arrow(E) = frac(1, rho) arrow(E) $
where the constant of proportionality, $sigma$, is called the "conductivity" of the material (and is a property of the material through which current is flowing). The resistivity, $rho$, is a material property that is simply the inverse of the conductivity. Both of these properties are a measure of how large a current (or current density) will exist in a material given a certain electric field. For example, the conductivity of an insulating material is close to zero (and its resistivity close to infinity).

For most materials, resistivity usually increases linearly with temperature:

$ rho(T) = rho_0 [ 1 + alpha(T -T_0) ] $
where $rho_0$ is the resistivity as measured at some reference temperature, $T_0$ (usually $2 0 upright degree C$), and $alpha$, is the "temperature coefficient" for that material. Note that this model of resistivity does not hold for extreme temperatures (very cold or very hot), and for some materials, resistivity decreases with temperature ($alpha$ is negative).

If we apply Ohm's Law to a resistor of length, $L$, cross-sectional area, $A$, made of a material with resistivity, $rho$, we find that the potential difference applied across the resistor, $Delta V$, is proportional to the current flowing through the resistor:

$ Delta V = rho frac(L, A) I $
The constant of proportionality depends on the material with which the resistor is made (through the resistivity) and on the dimensions of the resistor (through the length and cross-sectional area). The constant of proportionality is called the "resistance" of the resistor, $R$:

$ R = rho frac(L, A) $
Ohm's Law is often written for a resistor as the relationship between the current through the resistor, $I$, and the potential difference across the resistor, $Delta V$:

$ Delta V = R I $
although, technically, Ohm's Law is the relation between current density and electric field.

Resistors can be combined in series, in which case, the effective resistance of the combination is found by adding the resistances of the individual resistors:

$ R_(e f f) = R_1 + R_2 + R_2 + dots.h quad "(Series resistors)" $
When combined in parallel, the inverse of the effective resistance is given by the inverse of the sum of the inverse of the resistances of the individual resistors:

$ R_(e f f) = frac(1, frac(1, R_1) + frac(1, R_2) + frac(1, R_3) + dots.h) quad "(Parallel resistors)" $
As charges move through a resistor of resistance, $R$, under a potential difference, $Delta V$, and current, $I$, they transfer their kinetic energy into heating up the resistor. The rate at which they transfer the energy, also called the "power dissipated in the resistor", is given by:

$ P = I Delta V = frac((Delta V)^2, R) = I^2 R $
where the various combinations can be obtained by applying the macroscopic version of Ohm's Law.

The electrical outlets in our daily lives provide an "alternating" voltage, $Delta V(t)$, which oscillates sinusoidally:

$ Delta V(t) = Delta V_0 sin(omega t) $
with a maximum amplitude, $Delta V_0$, and an angular frequency, $omega = 2 pi f$. When this potential difference is applied across a resistor, an alternating current is formed, in which the electrons move back and forth, with no net displacement:

$ I(t) = frac(Delta V_0, R) = I_0 sin(omega t) $
Even though there is not net displacement, the electrons will still transfer energy into the resistor in the form of heat. The average rate at which power is dissipated in the resistor is given by:

$ bar P = frac(1, 2) R I_0^2 $
We introduce the "root mean square" current (voltage), $I_(r m s)$ ($Delta V_(r m s)$), as an average effective current (voltage):

$ I_(r m s) & = frac(1, sqrt(2)) I_0 \
Delta V_(r m s) & = frac(1, sqrt(2)) Delta V_0 $
such that the power can be expressed using a similar formula as in the direct current case, using the root mean square values:

$ bar P = I_(r m s)^2 R = I_(r m s) Delta V_(r m s) = frac((Delta V_(R m s))^2, R) $
There are two main types of hazards associated with the use of electricity: fire and electrocution. Electrical fires can arise when a large current goes through a wire, since this will dissipate a large amount of heat into the wire (which could set fire to its insulation or other nearby flammable items). Electrocution occurs when a current traverses the human body. If a current above $tilde 8 0 upright m A$ crosses the upper body, this can result in ventricular fibrillation, whereby the heart beats very irregularly. Of course, one can also be burned by a large current. The amount of current through the body is what will ultimately determine the severity of injuries, and is why one often hears that "it's current that kills". A large voltage may not lead to a large current if the resistance of the person is large or if the power supply cannot provide a large current at that large voltage.

#importantBlock(heading: [Important Equations])[
*Current:*

$ I = frac(Delta Q, Delta t) = frac(d Q, d t) $
*Current density:*

$ arrow(j) = frac(I, a) hat(E) \
I = integral arrow(j) dot.op d arrow(A) $
*Microscopic model of current:*

$ arrow(j) = -e n arrow(v)_d $
*Ohm's Law:*

$ arrow(j) = sigma arrow(E) $
*Resistivity:*

$ rho = frac(1, sigma) \
rho(T) = rho_0 [ 1 + alpha(T -T_0) ] $
*Resistance:*

$ R = rho frac(L, A) $
*Ohm's Law (macroscopic):*

$ Delta V = R I $
*Combining resistors:*

$ R_(e f f) & = R_1 + R_2 + R_2 + dots.h quad "(Series)"\
R_(e f f) & = frac(1, frac(1, R_1) + frac(1, R_2) + frac(1, R_3) + dots.h) quad "(Parallel)" $
*Power dissipated in a resistor:*

$ P = I Delta V = frac((Delta V)^2, R) = I^2 R $
*RMS voltage and current:*

$ I_(r m s) & = frac(1, sqrt(2)) I_0 \
Delta V_(r m s) & = frac(1, sqrt(2)) Delta V_0 $
]

#importantBlock(heading: [Important Definitions])[
- *Current:* The rate at which charges flow across a given surface. SI units: $upright [ A ]$. Common variable(s): $I$.
- *Current density:* A measure of current per unit area, in the direction of the local electric field. SI units: $upright [ A m^(-1) ]$. Common variable(s): $arrow(j)$.
- *Resistance:* A measure of a specific object's opposition to the flow of charge. SI units: $upright [ Omega ]$. Common variable(s): $R$.
- *Resistivity:* A measure of a material's opposition to the flow of charge. SI units: $upright [ Omega m ]$. Common variable(s): $rho$.
- *Conductivity:* The inverse of resistivity. SI units: $upright [ Omega^(-1) m^(-1) ]$. Common variable(s): $sigma$.
- *Drift velocity:* The average velocity of an electron drifting in a conductor under the influence of an electric field. SI units: $upright [ m s^(-1) ]$. Common variable(s): $arrow(v)_d$.
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- Describe how superconductivity arises in certain materials (hint: research "Cooper pairs").
- What are some example of superconducting materials, and at what temperature do they become superconducting?
- Is there a limit to how much current a conductor can carry?
- Does an AC current have a drift velocity? Why or why not?
]

#seealsoBlock(heading: [To try at home])[
- Use Ohm's law and the electrical information on an appliance to determine the current produced drawn by your appliance (e.g. a hair dryer).
- What is the current produced by your phone's battery? What is the total power stored in your phone's battery? Check the technical information of your phone.
]

#seealsoBlock(heading: [To try in the lab])[
- Propose an experiment to create an AC circuit and measure its current.
- Propose an experiment to measure the temperature coefficient ($alpha$) and resistivity of a wire.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 18.1])[
A cylindrical wire of radius $R$ has a current density that increases with radius as $arrow(j)(r) = a r arrow(z)$, where $r$ is the radial distance from the centre of the wire, $a$ is a constant, and $arrow(z)$ is normal to the face of the cylinder. What is the total current in the wire?
]

#noteBlock(heading: [Problem 18.2])[
A resistor is measured to have a resistance of $R_1 = 1 0 3 . 4 upright Omega$ at a temperature of $T_1 = 3 0 upright degree C$, and a resistance of $R_2 = 1 0 6 . 8 upright Omega$ at a temperature of $T_2 = 4 0 upright degree C$. Using the values in @tab:current:materials, determine the material from which the resistor is made.
]

==== Solutions <solutions>

#noteBlock(heading: [Solution 18.1])[
To determine the current through the entire cross section of the wire, we first divide the cross-section of the wire into infinitesimally small concentric rings of radius, $r$, and width, $d r$. The cross-sectional area of one ring is given by:

$ d arrow(A) = 2 pi r d r arrow(z) $
so that the current through one ring is given by:

$ d I = j(r) d A = 2 pi a r^2 d r $
The current through the whole wire is then found by summing the currents through each ring:

$ I = integral d I = integral_0^R 2 pi a r^2 d r = frac(2, 3) pi a R^3 $
]

#noteBlock(heading: [Solution 18.2])[
To determine the material of the resistor, we can find the temperature coefficient, $alpha$, since we are given measurements of resistance, $R_1$ and $R_2$, at two different temperatures, $T_1$, and $T_2$, respectively. The reference temperature is set to be $T_0 = 2 0 upright degree C$, so that we can compare with @tab:current:materials.

We know that the resistance will vary with temperature, since the resistivity is temperature-dependent. The temperature dependence of resistivity is given by:

$ rho(T) = rho_0 [ 1 + alpha(T -T_0) ] $
If the resistor has length, $L$, and cross-sectional area, $A$, it will have resistance, $R$, given by:

$ R(T) = rho(T) frac(L, A) = frac(rho_0 L, A) [ 1 + alpha(T -T_0) ] = R_0 [ 1 + alpha(T -T_0) ] $
where $R_0$ is the resistance at the reference temperature, $T_0$. Since we are given the resistance at two different temperatures, we can determine both $alpha$ and $R_0$, for a choice of $T_0 = 2 0 upright degree C$:

$ R_1 & = R_0 [ 1 + alpha(T_1 -T_0) ] \
R_2 & = R_0 [ 1 + alpha(T_2 -T_0) ] \
therefore frac(R_1, R_2) & = frac(1 + alpha(T_1 -T_0), 1 + alpha(T_2 -T_0)) \
R_1 [ 1 + alpha(T_2 -T_0) ] & = R_2 [ 1 + alpha(T_1 -T_0) ] \
alpha(R_1 (T_2 -T_0) -R_2 (T_2 -T_0)) & = R_2 -R_1 \
therefore alpha & = frac(R_2 -R_1, R_1 (T_2 -T_0) -R_2 (T_1 -T_0)) \
& = frac((1 0 6 . 8 upright Omega) -(1 0 3 . 4 upright Omega),(1 0 3 . 4 upright Omega)((4 0 upright degree C) -(2 0 upright degree C)) -(1 0 6 . 8 upright Omega)((3 0 upright degree C) -(2 0 upright degree C))) \
& = 0 . 0 0 3 4 $
Referring to @tab:current:materials, the material could likely be gold.
]

/*
%%You have your washing machine, television, and dish washer connected to the same circuit. You would like to use the vacuum, but aren't sure if it will draw too much power... (rest of power dissipation question...) %could be a QL question?
%%
*/