/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 19 - Electric circuits

=== Overview <chapter:circuits>

In this chapter, we develop the tools to model electric circuits. This will allow us to determine the current and voltages across different components, such as resistors and capacitors, within a circuit. We will also discuss how a battery can provide a current at a fixed potential difference, and how one can construct devices to measure current and voltages.

#hintBlock(heading: [Learning Objectives])[
- Understand how a battery works.
- Understand Kirchhoff's rules and how to apply them.
- Understand how to model a circuit with resistors and/or capacitors.
- Understand how an ammeter and voltmeter function, and how to model them.
]

#noteBlock(heading: [Think About It])[
If two outlets in your house are connected to the same circuit, are the outlets connected in series or in parallel?

+ series
+ parallel

#noteBlock(heading: [Answer])[
+
]
]

=== Batteries and simple circuits <batteries-and-simple-circuits>

:label: sec:circuits:batteries
A battery is an electric component that provides a constant electric potential difference (a fixed voltage) across its terminals. Luigi Galvani was the first to realize that certain combinations of metals placed into contact with each other can lead to an electric potential difference (or rather, he realized that they can make the legs of a dead frog twitch, which we now understand to be from the potential difference due to the metals). Effectively, Galvani created the first "electrochemical cell". Alessandro Volta then combined several of these cells together to form the "voltaic pile", which is what we would now call a battery (a battery is technically a combination of several cells, or a "battery of cells", although one often uses the term battery even if only a single electric cell is involved).

==== The electrochemical cell <the-electrochemical-cell>

An electric cell can be constructed from metals that have different affinities to be dissolved in acid. A simple cell, similar to that originally made by Volta, is comprised of two metal electrodes placed in a liquid called electrolyte, as illustrated in @fig:circuits:electriccell. Common materials used are carbon (Volta used silver) and zinc for the electrodes, and sulfuric acid for the electrolyte. Before the cell is constructed, the electrodes and the electrolyte are all electrically neutral.

#show figure: set block(breakable: true)
#figure(
  image("files/electriccell-b624e62206c62803c9f633d00bae9bb0.png", width: 70%),
  caption: [
A simple electric cell, where zinc ions dissolve in sulfuric acid leaving electrons on the metal.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:electriccell>

// TODO Is it incorrect to show the electrons entering the solution?

Once the zinc is immersed in the electrolyte, the zinc atoms tend to dissolve into the electrolyte in the form of zinc ions (doubly charged, Zn#super[2+]). This leaves an excess of electrons on the zinc electrode, resulting in a net negative electric charge. Similarly, the positively charged zinc ions attract electrons from the carbon electrode into the solution, leaving the carbon electrode positively charged. Very quickly, an equilibrium is reached, since at some point, the negative charge of the zinc electrode will electrically attract positive zinc ions, preventing any more zinc ions from dissolving into the solution. Similarly, as the carbon electrode builds a positive charge, that charge will eventually prevent electrons from "jumping" into the solution. At this point, there will be a fixed electric potential difference between the two electrodes (terminals) of the battery.

If the two electrodes are connected together through a resistor, the electrons will leave the zinc electrode, cross the resistor, and end up on the positive carbon electrode. This will leave space for more electrons on the zinc electrode, so more zinc ions will dissolve into the solution. Thus, a circuit is formed, where electron travel up the zinc electrode, through the resistor and back down the carbon electrode. At the same time, more and more zinc ions dissolve into the electrolyte, until the zinc electrode is completely dissolved. In practice, the zinc ions travel through the solution and plate onto the carbon electrode (the electrons do not quite "jump" into the electrolyte, rather, it is the zinc ions that move in the electrolyte). Since the charge on the electrodes is continuously replenished, the potential difference between the electrodes remains constant even as current is flowing.

The electric cell will stop working once the zinc electrode has completely dissolved (this is what happens when your battery is dead). Note that there is also a maximum current that the cell can supply, which depends on the rate at which the zinc can dissolve into the electrolyte and plate onto the carbon electrode. If the electrodes of the cell are connected with a very low resistance resistor, the resulting current will be too large for the potential difference to be maintained. Most electric cells work in similar ways, although the chemical reactions can be much more complex. Sometimes, the chemical reaction is reversible; one could use a different battery to apply a negative voltage to the carbon electrode to reverse the reaction and plate the zinc back onto the zinc electrode, thus "recharging the battery" (and converting electric energy back into stored chemical potential energy).

==== The ideal battery in a circuit <the-ideal-battery-in-a-circuit>

As we proceed, we will use the term "battery" loosely to refer to a device (such as an electric cell or collection of cells) that can provide a fixed potential difference between two terminals (or electrodes). @fig:circuits:batterysymbol shows the circuit diagram for a battery, consisting of two (or four) vertical bars, with the larger bar indicating the positive terminal of the battery.

#show figure: set block(breakable: true)
#figure(
  image("files/batterysymbol-274afa3da108a9466ac4272b2cd962c5.png", width: 60%),
  caption: [
Circuit diagram symbols that can be used for a battery.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:batterysymbol>

@fig:circuits:resistorsymbol shows the circuit diagram symbols that are used for a resistor (different symbols are used in North American and in Europe).

#show figure: set block(breakable: true)
#figure(
  image("files/resistorsymbol-cdfd7783ebc9bea4d3ca2eec6411d202.png", width: 60%),
  caption: [
Circuit diagram symbols for a resistor, using the North American convention (left), and the European convention (right).
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:resistorsymbol>

@fig:circuits:batteryresistor shows a circuit diagram for a very simple circuit consisting of a single $9 upright V$ battery connected to a $2 upright Omega$ resistor. When drawing a circuit diagram (or making a real circuit), one connects the various components together (e.g. batteries and resistors) with *segments of wire that have zero resistance*, even if, in practice, wires always have some resistance. However, since the wires are connected in series with resistors (or other components that have a resistance), one can always include the resistance of the wires by adding it to the resistance of the other components. For example, in @fig:circuits:batteryresistor, if the wires have a total resistance of $1 upright Omega$, we could simply model the circuit as if the resistor had a resistance of $3 upright Omega$ instead of $2 upright Omega$. In practice, this is usually accounted for when a circuit diagram is made (i.e. any resistors include the resistance of the wires connected to it).

#show figure: set block(breakable: true)
#figure(
  image("files/batteryresistor-2b2416149cc3b585879ef82a83e4ac22.png", width: 35%),
  caption: [
A simple circuit, showing a $9 upright V$ battery and a $2 upright Omega$ resistor. For ease in analyzing circuits, we suggest drawing a \`\`battery arrow" above batteries that goes from the negative to the positive terminal.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:batteryresistor>

The circuit in @fig:circuits:batteryresistor is simple to analyze. In this case, whichever charges exit one terminal of the battery must pass through the resistor and then enter the other terminal of the battery. We *always use conventional current* to analyze a circuit. Thus, we model the circuit as if positive charges exit the positive terminal of the battery, go through the resistor, and then enter the negative terminal of the battery.

We recommend that you always draw a "battery arrow" for each battery in a circuit diagram to indicate the direction in which the electric potential increases and in which direction the conventional current would exit the battery if a simple resistor were connected across the battery. We also indicate the current that is flowing in any wire of the circuit by drawing an arrow in the direction of current on that wire (labelled $I$ in @fig:circuits:batteryresistor).

// In complex circuits, the current may not necessarily flow in the same direction as the battery arrow, and the battery arrow makes it easier to analyze those circuits.

It is helpful to think about the value of the electric potential along different parts of a circuit. Below (@fig:circuits:batteryresistor_colour), we have taken the circuit from @fig:circuits:batteryresistor and highlighted regions where the electric potential is constant.

#show figure: set block(breakable: true)
#figure(
  image("files/batteryresistor_colo-947aa7e3376cf4c2c40889a8b3e04443.png", width: 40%),
  caption: [
The same circuit as in @fig:circuits:batteryresistor showing the two regions over which the electric potential is constant.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:batteryresistor_colour>

Since the wires have no resistance, the electric potential is constant along a wire. In other words, because the wire has no resistance, the charges/current cannot dissipate any power in the wire ($P = I^2 R$), and the charges do not "lose" any potential energy (and so the potential cannot change). The only place where the charges can dissipate energy is inside the resistor. Once the charges have crossed the resistor, the electric potential in the wire is again constant until they reach the other terminal of the battery. Thus, in this simple circuit, the electric potential difference across the resistor is the same as the potential difference across the terminals of the battery.  This is shown by the coloured areas in @fig:circuits:batteryresistor_colour. If we choose $0 upright V$ to be defined at the negative terminal of the battery, then the potential is $9 upright V$ everywhere in the red area (to the right of the resistor), and $0 upright V$ everywhere in the grey area (to the left of the resistor).

We can apply Ohm's Law (the macroscopic version) to the resistor and determine the current in the circuit, since we know the potential difference across the resistor:

$ Delta V & = R I \
therefore I & = frac(Delta V, R) = frac((9 upright V),(2 upright Omega)) = 4 . 5 upright A $
It is helpful to think of circuits in terms of energy. Charges move along the circuit and their potential energy changes as they go through components, while it remains constant as they move through a wire. If a positive charge enters the negative terminal of a battery and exits the positive terminal, its potential energy will have increased. If that charge then enters a resistor, its potential energy will decrease as it moves through the resistor, since the charge will "use" its potential energy to heat up the resistor. Batteries provide the energy to "push" the charges through the resistors in the circuit by converting chemical potential energy into the electrical potential energy of the charges.

It is also useful to make the analogy with fluid dynamics; one can think of the battery as a pump that is continuously pushing a viscous incompressible fluid through a pipe with a narrow section, as illustrated in @fig:circuits:watercircuit. The wide section of the pipe is akin to the wires with no resistance, and the narrow section is akin to the resistor. The pressure difference generated by the pump is analogous to the voltage produced by the battery, and the flow rate of the liquid is analogous to the electric current. The pressure in the pipe does not drop in the wide section, if there is no resistance. The entire pressure drop of the fluid is across the narrow section, just as the voltage only drops across the resistor.

#show figure: set block(breakable: true)
#figure(
  image("files/watercircuit-c2d85239697efc723170b761c8b1073a.png", width: 50%),
  caption: [
A fluid dynamics analogue of the circuit in @fig:circuits:batteryresistor, where a pump plays the role of the battery, and a narrow pipe that of a resistor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:watercircuit>

#noteBlock(heading: [Example 19.1])[
Two resistors, of $2 upright Omega$ and $4 upright Omega$, respectively, are connected in series to a $1 2 upright V$ battery. What is the current through each of the resistors, and what is the voltage across each resistor?

#noteBlock(heading: [Solution])[
We start by making a circuit diagram, as in @fig:circuits:tworesistors, showing the resistors, the current, $I$, the battery and the battery arrow. Note that since this is a closed circuit with only one path, the current through the battery, $I$, is the same as the current through the two resistors.

#show figure: set block(breakable: true)
#figure(
  image("files/tworesistors-e49d8c6bd8a4e07e755b86fd2da0ea23.png", width: 42%),
  caption: [
Two resistors connected in series with a battery.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:tworesistors>

If we choose the potential on the negative side of the battery to be $0 upright V$, then points $upright a$ and $upright e$ on the diagram are at a potential of $0 upright V$, since potential cannot change in a wire with no resistance. Similarly, the points at $upright b$ and $upright c$ are at a potential of $1 2 upright V$ (relative to points $upright a$ and $upright e$). At point $upright d$, between the two resistors, the potential will be between $0 upright V$ and $1 2 upright V$, since the potential will "drop" as the current goes through the $2 upright Omega$ resistor.

The easiest way to determine the current through this simple circuit is to combine the two resistors into a single effective resistor with resistance:

$ R_(e f f) =(2 upright Omega) +(4 upright Omega) = 6 upright Omega $
so that the circuit can be simplified to that shown in @fig:circuits:batteryresistor2:

#show figure: set block(breakable: true)
#figure(
  image("files/batteryresistor2-ec040ff635391cdcdeeaef863ed15370.png", width: 42%),
  caption: [
The resistors from the circuit in @fig:circuits:tworesistors have been combined in series to simplify the circuit.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:batteryresistor2>

The potential difference across the effective resistor is the same as that across the battery (between points $upright e$ and $upright c$), so that Ohm's Law can be applied to the effective resistor to determine the current that traverses it:

$ Delta V & = R_(e f f) I \
therefore I & = frac(Delta V, R_(e f f)) = frac((1 2 upright V),(6 upright Omega)) = 2 upright A $
This current is the same that traverses each individual resistor, since it is the same as the current that goes through the battery. Referring back to the full circuit (@fig:circuits:tworesistors), we can now use Ohm's Law to calculate the voltage drop across each resistor, since we know the current through each resistor. The voltage across the $2 upright Omega$ resistor is given by:

$ Delta V_(2 Omega) = R I =(2 upright Omega)(2 upright A) = 4 upright V $
and the voltage across the $4 upright Omega$ resistor is given by:

$ Delta V_(4 Omega) = R I =(4 upright Omega)(2 upright A) = 8 upright V $
Note that the sum of these two voltages is equal to the voltage increase across the battery, by conservation of energy. Consider the electric potential at different points in @fig:circuits:tworesistors as you move clockwise around the loop starting at point $upright a$. If the electric potential is defined to be $0 upright V$ at the negative end of the battery (points $upright a$ and $upright e$), the potential at point $upright d$ (between the resistors) is the potential at point $upright e$ plus the potential difference across the $4 upright Omega$ resistor:

$ V_d = V_e + Delta V_(4 Omega) =(0 upright V) +(Delta V_(4 Omega)) = 8 upright V $
If we then add the potential difference across the $2 upright Omega$ resistor to the potential at point $upright d$, we find  that the potential at point $upright c$ is $V_c = V_d + Delta V_(2 Omega) = 1 2 upright V$, as expected, since this corresponds to the potential at the positive terminal of the battery.

*Discussion:* In this example, we showed how one can model a circuit by combining resistors together into effective resistors to simplify the circuit. We also showed how the potential differences across different components in a circuit must add up to zero (the voltage drops across the resistors must sum to the voltage increase across the battery).
]
]

#tipBlock(heading: [Checkpoint])[
What is the voltage across the combination of a $3 upright V$ battery connected in series with a $6 upright V$ battery, where the negative terminal of the $6 upright V$ battery faces the positive terminal of the $3 upright V$ battery?

+ $9 upright V$.
+ $6 upright V$.
+ $3 upright V$.
+ $0 upright V$.

#tipBlock(heading: [Answer])[
+
]
]

==== The real battery in a circuit <the-real-battery-in-a-circuit>

So far, we have modelled batteries as "ideal" devices that provide a fixed potential difference. In reality, this neglects the fact that the materials that make the battery will themselves have a resistance. For example, if electrons want to leave the zinc rod in the electric cell illustrated in @fig:circuits:electriccell, they will lose some energy as they pass through the zinc. Thus, when modelling a real battery in a circuit, it is important to include its "internal resistance", as a resistor in series with the potential difference. This is illustrated in @fig:circuits:realbattery, which shows the two terminals of a real battery, an ideal battery (with a fixed potential difference, $Delta V_(i d e a l)$), and its internal resistance, $r$ (which can be drawn on either side of the battery).

#show figure: set block(breakable: true)
#figure(
  image("files/realbattery-25df902f5102763e8da286f2d44bddb1.png", width: 80%),
  caption: [
Model of a real battery, showing an ideal battery in series with a resistor to model the internal resistance of the battery.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:realbattery>

It is important to note that the potential difference across the terminals of the real battery is only equal to the potential difference across the ideal battery *if there is no current flowing through the battery*. If there is a current, $I$, flowing through the internal resistance, the electric potential will decrease by an amount $I r$ across the internal resistance, and the voltage across the real terminals will be $Delta V_(i d e a l) -I r$.

#noteBlock(heading: [Example 19.2])[
When no resistance is connected across a real battery, the potential difference across its terminals is measured to be $6 upright V$. When an $R = 2 upright Omega$ resistor is connected across the battery, a current of $2 upright A$ is measured through the resistor. What is the internal resistance, $r$, of the battery, and what is the voltage across its terminals when the $R = 2 upright Omega$ resistor is connected?

#noteBlock(heading: [Solution])[
The real battery can be modelled as an ideal battery with potential difference, $Delta V_(i d e a l)$, in series with an internal resistance, $r$. While we do not know the value of the internal resistance, we are told that the potential difference across the terminals of the real battery is $6 upright V$ *when no current flows through it*. Since no current flows through the internal resistance, the voltage does not drop across the internal resistance, and the voltage across the terminals of the real battery (e.g. @fig:circuits:realbattery) must thus be equal to the voltage across the terminals of the ideal battery, so that $Delta V_(i d e a l) = 6 upright V$.

With this information, we can make a circuit diagram for the case when the $2 upright Omega$ resistor is connected across the terminals of the real battery, as in @fig:circuits:realbatterycircuit.

#show figure: set block(breakable: true)
#figure(
  image("files/realbatterycircuit-c0da95c1617d5d17aee894d81382d86a.png", width: 42%),
  caption: [
A circuit showing a real battery (with internal resistance $r$) in series with a resistor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:realbatterycircuit>

The terminals of the real battery are located at points $upright a$ and $upright c$ of the diagram, whereas the terminals of the ideal battery correspond to points $upright a$ and $upright b$. When no current flows through the internal resistor, $r$, there is no voltage drop across that resistor and the potential at $upright b$ will be equal to the potential at $upright c$, as we argued above.

The circuit in @fig:circuits:realbatterycircuit is now identical to that analyzed in @ex:circuits:tworesistors, and can be treated the same way. We can combine the $2 upright Omega$ resistor with the internal resistance, $r$, in series to obtain an effective resistor, $R_(e f f) = r + R$. The voltage drop across the effective resistor will be the same as the potential difference across the ideal battery, and we can make use of Ohm's Law to find the internal resistance, $r$:

$ Delta V_(i d e a l) & = R_(e f f) I =(r + R) I \
therefore r & = frac(Delta V_(i d e a l), I) -R = frac((6 upright V),(2 upright A)) -(2 upright Omega) = 1 upright Omega $
Now that we know the internal resistance, we can determine the voltage drop across the internal resistor, using Ohm's Law:

$ Delta V_r = r I =(1 upright Omega)(2 upright A) = 2 upright V $
The voltage drop across the real terminals of the battery (between points $upright a$ and $upright c$), is thus given by:

$ Delta V_(r e a l) = Delta V_(i d e a l) -Delta V_r =(6 upright V) -(2 upright V) = 4 upright V $
Again, you can verify that the voltage drops across the two resistors will sum to the total voltage drop across the terminals of the ideal battery.

*Discussion:* Modelling real batteries is not so different from modelling ideal batteries, since one only needs to include an internal resistance into the circuit. The key difference with a real battery is that the voltage across its real terminals depends on what is connected to the battery. In the example above, the battery has a voltage of $6 upright V$ across its (real) terminals when nothing is connected, but the voltage drops to $4 upright V$ when a $2 upright Omega$ resistor is connected.
]
]

#tipBlock(heading: [Checkpoint])[
Suppose that you would like to measure the ideal voltage of a real battery by connecting a measurement device (a voltmeter) across its terminals. In order to get the most accurate reading, should you choose a voltmeter with a high resistance, or a voltmeter with a low resistance?

+ High resistance.
+ Low resistance.
+ It doesn't matter if the voltmeter has a high or low resistance.

#tipBlock(heading: [Answer])[
+
]
]

=== Kirchhoff's rules <kirchhoffs-rules>

Kirchhoff's rules correspond to concepts that we have already covered, but allow us to easily model more complex circuits, for instance, those where there is more than one path for the current to take. Kirchhoff's rules refer to "junctions" and "loops". Junctions and loops depend only on the shape of the circuit, and not on the components in the circuit. @fig:circuits:3loopempty shows a circuit with no components in order to illustrate what is meant by a junction and a loop.

#show figure: set block(breakable: true)
#figure(
  image("files/3loopempty-0e9cf961ed755afb96b62a98e97680bd.png", width: 40%),
  caption: [
A circuit that has 3 loops and 2 junctions.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:3loopempty>

The locations at points $upright d$ and $upright c$ are considered "junctions", because there are more than 2 segments of wire connected to that point. The points at locations $upright a$, $upright b$, $upright e$ and $upright f$ only have two segments of wire connected to them. The circuit in @fig:circuits:3loopempty thus has 2 junctions.

A loop is a closed path that one can trace around the circuit without passing over the same segment of wire twice. The circuit in @fig:circuits:3loopempty has 3 such loops, which we can identify using the letters at the various nodes of the circuit:

+ $upright a b c d a$
+ $upright a b c e f d a$
+ $upright d c e f d$

Note that it does not matter where one starts on the loop, only that one can identify how many different loops are present in the circuit.

/*
%%The loops are shown more explicitly in [](#fig:circuits:looplabel).%%%
%%```{figure} figures/Circuits/circuitspng/looplabel.png
%%:label: fig:circuits:looplabel
%%:width: 40%
%%:align: center
%%:alt: The three loops in the circuit.
%%The three loops in the circuit.
%%```
*/

#tipBlock(heading: [Checkpoint])[
#show figure: set block(breakable: true)
#figure(
  image("files/7loop-7d21110540d72f12bf874c92522b5941.png", width: 50%),
  caption: [
Circuit layout
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:7loop>

How many loops and junctions does the circuit in @fig:circuits:7loop have?

+ The circuit has five loops and four junctions
+ The circuit has three loops and eight junctions
+ The circuit has seven loops and four junctions.
+ The circuit has four loops and four junctions.

#tipBlock(heading: [Answer])[
+
]
]

==== Junction rule <junction-rule>

The junction rule states that: *The current entering a junction must be equal to the current exiting a junction.*

This is in fact a simple statement about conservation of charge. If charges are flowing into a junction (from one or more segments of wire in that junction), then the same amount of charges must flow back out of the junction (through one or more different segments of wire).

Consider the junction illustrated in @fig:circuits:junction, comprised of 5 segments of wire, each carrying a different current. As shown, currents $I_1$, $I_3$, and $I_4$ flow into the junction, whereas currents $I_2$ and $I_5$ flow out of the junction.

#show figure: set block(breakable: true)
#figure(
  image("files/junction-4828061de9aa07ebe924a9a7d3495dbf.png", width: 40%),
  caption: [
A junction with 5 segments and 5 currents.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:junction>

The junction rule states that the current entering the junction must equal the current coming out of the junction. This allows us to relate the currents to each other in an equation:

$ "incoming currents"& = "outgoing currents"\
I_1 + I_3 + I_4 & = I_2 + I_5 $
==== Loop rule <loop-rule>

The loop rule states that: *The net voltage drop across a loop must be zero.*

This is a statement about conservation of energy, that we already noted in @ex:circuits:tworesistors. Once you have identified a specific loop, if you trace a closed path around the loop, the electric potential must be the same at the end of the path as at the beginning of the path (since it is literally the same point in space). This means that if there is a voltage drop along the path (e.g. due to one or more resistors), then there must be equivalent voltage increases somewhere else on the path (e.g. due to one or more batteries). If this were not the case, it would be possible to have a path where charges could gain a net amount of energy by going around that path, which they could keep doing indefinitely and create an infinite amount of energy; instead, if charges gain potential energy in a battery, they must then lose exactly the same amount of energy inside one or more resistors along the path.

@fig:circuits:loop shows a loop (which could be part of a larger circuit) to which we can apply the loop rule. The loop contains two batteries, facing in opposite directions (which would not normally be a good use of batteries), as illustrated by the battery arrows.

#show figure: set block(breakable: true)
#figure(
  image("files/loop-ad77847ada097ce589459094edc79d1b.png", width: 55%),
  caption: [
A loop with 2 batteries and 3 resistors.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:loop>

The procedure for applying the loop rule is as follows:

+ Identify the loop, including starting position and direction.
+ Start at the beginning of the loop, and trace around the loop.
+ Each time a battery is encountered, *add the battery voltage if you are tracing the loop in the same direction as the corresponding battery arrow*, subtract the voltage otherwise.
+ Each time a resistor is encountered, #strong[subtract the voltage across that resistor ($R I$, from Ohm's Law) if tracing the loop in the same direction as the current], add the the voltage otherwise.
+ Once you have traced back to the starting point, the resulting sum must be zero.

To illustrate the procedure, we trace out the loop $upright a b c e d f g a$ in @fig:circuits:loop. We thus start at point $upright a$ and trace the loop in the counter-clockwise direction.

- Between points $upright a$ and $upright b$ we encounter a battery, and we are tracing in the *opposite direction of that battery's arrow*, so we subtract the voltage from that battery: $-Delta V_1$.
- Between points $upright b$ and $upright c$, we encounter a battery, and we are tracing in the *same direction as that battery's arrow*, so we add the voltage from that battery: $+ Delta V_2$.
- Nothing happens to the potential along the wire from $upright c$ to $upright d$.
- Between points $upright d$ and $upright e$, we encounter a resistor, and we are tracing in the *same direction as the current through that resistor*, so subtract the voltage across that resistor: $-R_1 I$).
- Similarly, we subtract the voltages across resistors $R_2$ and $R_3$, as we are tracing in the *same direction as the current through those resistors*: $-I R_2 -I R_3$.
- We are back at the beginning of the loop, so the terms must sum to zero.

We can now use the loop rule, which states that the sum of the above voltages must be zero:

$ -Delta V_1 + Delta V_2 -R_1 I -R_2 I -R_3 I = 0 quad "(loop abcdefga)" $
This equation then gives us a relation between the various quantities (current, resistors, battery voltages) in the circuit which can be used to model the circuit.

#tipBlock(heading: [Checkpoint])[
Suppose that the equation describing loop $upright a b c d e f g a$ (@fig:circuits:loop) was obtained from a different starting position and the loop was traced in the opposite direction. Would this produce a different equation?

+ Yes, the equation would be incorrect if the loop is traced in the direction opposite to the flow of current.
+ Yes, the equation must start from the point $upright a$ because the creator of the circuit assumes the person calculating current and voltage will begin at point $upright a$.
+ Yes, there is no incorrect starting point, but choosing to trace the circuit in the direction opposite to the flow of current would produce an incorrect equation.
+ No, there is no incorrect direction or starting point.

#tipBlock(heading: [Answer])[
+
]
]

#attentionBlock(heading: [Olivia's Thoughts])[
One way to conceptualize Kirchhoff's loop rule is to draw an analogy to gravity. Imagine that the circuit in @fig:circuits:loop operates like a roller coaster, as shown in @fig:circuits:rollercoaster. Each battery is like the mechanical lift that brings the cart to the top of the hill. The battery arrow points in the uphill direction.

#show figure: set block(breakable: true)
#figure(
  image("files/rollercoaster-30ac3b258fc22d96ce9b0086f3ceaa74.png", width: 50%),
  caption: [
The circuit from @fig:circuits:loop using the roller coaster analogy.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:rollercoaster>

This time, we'll start at point $upright b$ and go counter clockwise. In this analogy, Kirchhoff's loop rule says that when the roller coaster cart comes back around to $upright b$, it needs to have the same gravitational potential it started with (since it will be at the same elevation). Let's follow its journey around the loop. It starts at $upright b$, then goes through a battery and gets lifted uphill. The cart moves along the track (in the direction of the current) and loses potential energy whenever it goes down a hill (meaning through a resistor). When the cart comes around the left side of the circuit, it encounters another battery. This time, the cart is moving _opposite_ to the battery arrow, so the cart goes downhill instead of getting lifted uphill. When it gets back to $upright b$, it has the same potential it started with. Note that, if we are moving in the direction opposite to the current, this is like going backwards through the roller coaster. Instead of going downhill through each resistor, you would have to go uphill, and thus gain potential energy.
]

=== Applying Kirchhoff's rules to model circuits <applying-kirchhoffs-rules-to-model-circuits>

In this section, we show how to model a circuit using Kirchhoff's rules. In general, one can consider a circuit to be fully modelled if one can determine the current in each segment of the circuit. We will show how one can apply the same procedure to model any circuit that contains batteries and resistors. The procedure is as follows:

+ Make a good diagram of the circuit.
+ Simplify any resistors that can easily be combined into effective resistors (in series or in parallel).
+ Make a new diagram with the effective resistors, showing battery arrows, and labelling all of the nodes so that loops can easily be described.
+ Make a *guess* for the directions of the current in each segment.
+ Write the junction rule equations.
+ Write the loop equations.
+ This will lead to $N$ independent equations that one can solve for the $N$ different currents in the circuit.
+ Once you have determined all of the currents, if some of them are negative numbers, switch the direction of those currents in the diagram (they will be negative if you guessed the direction incorrectly).

We will illustrate the procedure on the circuit shown in @fig:circuits:bigcircuit, for which we would like to know the current through each resistor and each battery. The circuit contains 5 resistors ($R_1$-$R_5$), 2 real batteries (with ideal voltages $Delta V_1$ and $Delta V_2$), and 2 additional resistors to model the internal resistances of the real batteries ($r_1$, $r_2$)

#show figure: set block(breakable: true)
#figure(
  image("files/bigcircuit-d85731ab6ffaa6e5a59fc67d56856ba0.png", width: 42%),
  caption: [
A circuit that can be simplified and then solved with Kirchhoff's rules.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:bigcircuit>

#tipBlock(heading: [Checkpoint])[
How many different currents are in the circuit shown in @fig:circuits:bigcircuit?

+ 3
+ 4
+ 5
+ 6

#tipBlock(heading: [Answer])[
+
]
]

*Simplifying the resistors (step 2):* In this circuit, resistors $r_2$, $R_1$ and $R_2$ are in series, so that they can be combined into an effective resistor, $R_6$:

$ R_6 = r_2 + R_1 + R_2 $
With this simplification, we obtain the circuit illustrated in @fig:circuits:bigcircuit_simp1

#show figure: set block(breakable: true)
#figure(
  image("files/bigcircuit_simp1-c3aa371fb88c44134be8c89020416c77.png", width: 42%),
  caption: [
The resistors $r_2$, $R_1$ and $R_2$ in series from the circuit in @fig:circuits:bigcircuit have been combined into the effective resistor, $R_6$, to simplify the circuit.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:bigcircuit_simp1>

Next, we note that resistors $R_4$ and $R_5$ are in parallel and can be easily combined into a resistor, $R_7$:

$ R_7 = frac(R_4 R_5, R_4 + R_5) $
which leads to the circuit illustrated in @fig:circuits:bigcircuit_simp2.

#show figure: set block(breakable: true)
#figure(
  image("files/bigcircuit_simp2-99756f76f2fb3356a4713b80fb3fb893.png", width: 42%),
  caption: [
The resistors $R_4$ and $R_5$ in parallel from the circuit in @fig:circuits:bigcircuit_simp1 have been combined into the effective resistor, $R_7$, to simplify the circuit.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:bigcircuit_simp2>

Finally, we note that $r_1$ and $R_7$ are in series and can be combined into an effective resistor, $R_8$:

$ R_8 = r_1 + R_7 = r_1 + frac(R_4 R_5, R_4 + R_5) $
leading to the simplified circuit illustrated in @fig:circuits:bigcircuit_simp3, which we have labelled with nodes and battery labels.

#show figure: set block(breakable: true)
#figure(
  image("files/bigcircuit_simp3-52981a5029c13508d012c4743b946805.png", width: 45%),
  caption: [
The resistors $r_1$ and $R_7$ from the circuit in @fig:circuits:bigcircuit_simp2 have been combined into an effective resistor, $R_8$, to simplify the circuit.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:bigcircuit_simp3>

*Guessing the directions of the currents (step 4):* Before we can write the equations from Kirchhoff's rules, we need to label the currents in the circuit diagram. In general, it is not always obvious in which way the currents will go, so we make a guess that we can fix later if we guessed wrong.

In order to guess the current directions, choose one point on the circuit and move along a segment. Label the current in that segment and continue moving through the circuit, splitting up the current when a junction is encountered. Make sure to only have one current per segment. We guess the currents as follows, referring to @fig:circuits:bigcircuit_simp:

- We start at point $upright a$ and move upwards to point $upright f$. We will call the current in that segment, $I_1$.
- Since there is no junction, the current $I_1$ continues through the resistor $R_8$ to point $upright e$.
- There is a junction at point $upright e$, so we split the current $I_1$ into currents $I_2$ (towards point $upright d$), and $I_3$ (downwards to point $upright b$).
- We follow current $I_2$ first; $I_2$ flows from $upright e$ to $upright d$, then down to $upright c$, through the battery $Delta V_2$, and to point $upright b$, where there is again junction.
- We follow current $I_3$, which just flows down to the junction at point $upright b$, where it "meets up" with current $I_2$.
- Currents $I_2$ and $I_3$ both flow into the junction at point $upright b$, and the current flowing out of the junction, through the battery $Delta V_1$, and towards point $upright a$ is, again, $I_1$, since this current then flows up to point $upright f$.
- All segments of wire have a labelled current, so we are done guessing currents.

You can proceed in an analogous way for any circuit. The final circuit, with currents labelled, is shown in @fig:circuits:bigcircuit_simp:

#show figure: set block(breakable: true)
#figure(
  image("files/bigcircuit_simp-74458b91bfc85d701204ec05fac2eb8a.png", width: 45%),
  caption: [
Final and labelled circuit diagram that is simplified from the one in @fig:circuits:bigcircuit.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:bigcircuit_simp>

We can now proceed using Kirchhoff's rules to solve for the values of the currents in the circuit. It is useful to note that there are 3 unknown currents in this circuit; we thus hope that Kirchhoff's rules will give us 3 independent equations.

*Applying the junction rule (step 5):* In the circuit from @fig:circuits:bigcircuit_simp, there are two junctions (at points $upright b$ and $upright e$), so we will get two equations from the junction rule. To apply the junction rule, the sum of the currents coming into the junction must be equal to the currents going out of the junction:

$ "incoming currents"& = "outgoing currents"& \
I_2 + I_3 & = I_1 quad & "(junction b)"\
I_1 & = I_2 + I_3 quad & "(junction e)"\
 $
Note that the two equations are not independent (in fact, they are the same). It is generally the case that if there $N$ junctions, one will obtain less than $N$ independent equations (usually, $N -1$ equations will be independent). In this case, the two junctions only gave us one equation.

*Applying the loop rule (step 6):* This circuit contains 3 different loops: $upright a b c d e f a$, $upright a b e f a$, and $upright b c d e b$, which will lead to 3 equations from the loop rule. We expect that these equations will not be independent, since this would lead to 4 equations and 3 unknowns when combined with the junction rule equation. Let us start with the loop $upright a b c d e f a$:

- From $upright a$ to $upright b$, we trace through the battery in the *opposite direction from the battery arrow*: $-Delta V_1$.
- From $upright b$ to $upright c$, we trace through the battery in the *same direction as the battery arrow*: $+ Delta V_2$.
- From $upright c$ through $upright d$ and through to $upright e$ we go through the resistor $R_6$ in the *opposite direction from the current*, $I_2$, in that resistor: $+ I_2 R_6$.
- From $upright e$ to $upright f$, we go through the go through the resistor $R_8$ in the *opposite direction from the current*, $I_1$, in that resistor: $+ I_1 R_8$.
- And we are back at the starting point, so the sum of the above terms is equal to zero.

which gives the equation:

$ -Delta V_1 + Delta V_2 + I_2 R_6 + I_1 R_8 = 0 quad "(loop abcdefa)" $
Similarly, for the loop $upright a b e f a$, we obtain:

$ -Delta V_1 + I_3 R_3 + I_1 R_8 = 0 quad "(loop abefa)" $
and for loop $upright b c d e b$:

$ Delta V_2 + I_2 R_6 -I_3 R_3 = 0 quad "(loop bcdeb)" $
Although it appears that we have obtained 3 additional equations, only two of these are independent. For example, if you sum the second and third equations (loops $upright a b e f a$, and $upright b c d e b$), you simply obtain the first equation (loop $upright a b c d e f a$). In general, if there are $N$ different loops, one will obtain less than $N$ independent equations (usually $N -1$ independent equations, as we did here).

At this point, after choosing one of the junction equations, and two of the loop equations, we have 3 independent equations that we can solve for the 3 unknown currents\\footnote\{The 3 unknowns do not necessarily have to be the currents, and could be any combination of the currents, battery voltage and resistors. As long as there at most 3 unknown quantities, this circuit can be solved.\}:

$ I_1 & = I_2 + I_3 quad & "(junction e)"\
-Delta V_1 + Delta V_2 + I_2 R_6 + I_1 R_8 & = 0 quad & "(loop abcdefa)"\
-Delta V_1 + I_3 R_3 + I_1 R_8 & = 0 quad & "(loop abefa)" $
It is only a matter of some simple math to solve for the 3 unknowns from these 3 equations (which we carry out in the example below).

#noteBlock(heading: [Example 19.3])[
Referring to the circuit in @fig:circuits:bigcircuit_vals, what is the voltage across the real terminal of the battery with ideal voltage $Delta V_1$ (the voltage between points $upright a$ and $upright b$)? What is the current through resistor $R_5$?

#noteBlock(heading: [Solution])[
#show figure: set block(breakable: true)
#figure(
  image("files/bigcircuit_vals-5027390ef3ef30e202afcf35ff92a3fc.png", width: 60%),
  caption: [
The same circuit as in @fig:circuits:bigcircuit, with values filled in.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:bigcircuit_vals>

Since this circuit is the same that we just analyzed, we know that it can be simplified into the circuit shown in @fig:circuits:bigcircuit_vals_simp, with resistors:

$ R_6 & = r_2 + R_1 + R_2 =(1 upright Omega) +(3 upright Omega) +(4 upright Omega) = 8 upright Omega \
R_8 & = r_1 + frac(R_4 R_5, R_4 + R_5) =(1 upright Omega) + frac((2 upright Omega)(2 upright Omega),(2 upright Omega) +(2 upright Omega)) = 2 upright Omega $
#show figure: set block(breakable: true)
#figure(
  image("files/bigcircuit_vals_simp-425edb9cdde8849007b8f6c25e9b96b5.png", width: 45%),
  caption: [
Simplified version of the circuit in @fig:circuits:bigcircuit_vals.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:bigcircuit_vals_simp>

From above, we know that this leads to the following three equations:

$ I_1 & = I_2 + I_3 quad & "(junction e)"\
-Delta V_1 + Delta V_2 + I_2 R_6 + I_1 R_8 & = 0 quad & "(loop abcdefa)"\
-Delta V_1 + I_3 R_3 + I_1 R_8 & = 0 quad & "(loop abefa)" $
In order to solve these types of equations, it is usually convenient to place the battery voltages on the right hand side, and the resistor voltages on the left hand side. Although it is generally bad practice to fill numbers into the equations before solving them, it is almost always a good idea when solving the $N$ equations for the $N$ currents. Furthermore, in order to make the equations legible, it is also useful to not write in the units (which is very bad practice in general!). Thus, filling in the values for the resistors and the battery voltages, moving the voltages to the right hand side, we obtain the following system of equations:

$ I_1 -I_2 -I_3 & = 0 quad & "(junction e)"\
2 I_1 + 8 I_2 & = 8 quad & "(loop abcdefa)"\
2 I_1 + 4 I_3 & = 1 2 quad & "(loop abefa)" $
Subtracting the second equation from the third equation (to eliminate $I_1$):

$ 4 I_3 -8 I_2 & = 4 \
therefore I_3 & = 1 + 2 I_2 $
Substituting this into the junction equation:

$ I_1 -I_2 -I_3 & = 0 \
I_1 -I_2 -1 -2 I_2 & = 0 \
therefore I_2 = frac(1, 3)(I_1 -1) $
Finally, substituting this into the equation from loop $upright a b c d e f a$, allows us to determine $I_1$ and the other two currents:

$ 2 I_1 + 8 I_2 & = 8 \
2 I_1 + 8(frac(1, 3)(I_1 -1)) & = 8 \
therefore I_1 & = frac(1 6, 7) = 2 . 2 9 upright A \
therefore I_2 & = frac(1, 3)(I_1 -1) = 0 . 4 3 upright A \
therefore I_3 & = 1 + 2 I_2 = 1 . 8 6 upright A \
 $
In this case, the currents are all positive, so the diagram in @fig:circuits:bigcircuit_vals_simp is correct and we do not need to reverse the direction of any of the currents.

We can now determine the potential difference across the real terminals of the battery $Delta V_1$. The current through the battery is $I_1 = 2 . 2 9 upright A$, which cause a voltage drop, $Delta V_(r 1)$, across its internal resistance, $r_1$ of:

$ Delta V_(r 1) = I_1 r_1 =(2 . 2 9 upright A)(1 upright Omega) = 2 . 2 9 upright V $
The voltage across the real terminals of the battery is then:

$ Delta V_(r e a l) = Delta V_1 -Delta V_(r 1) =(1 2 upright V) -(2 . 2 9 upright V) = 9 . 7 upright V $
The current through the resistor $R_5$ (@fig:circuits:bigcircuit_vals) requires a little more thought, since we calculated the current, $I_1$ through the effective resistor $R_8$, which we must now "break apart". @fig:circuits:bigcircuit_vals_r8 shows the components of $R_8$.

#show figure: set block(breakable: true)
#figure(
  image("files/bigcircuit_vals_r8-95d96b76bef1e0d43ff22f54d3083840.png", width: 50%),
  caption: [
The components of the effective $R_8$ resistor from @fig:circuits:bigcircuit_vals_simp. The current, $I_1$, coming from the battery goes through $r_1$ and then splits up.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:bigcircuit_vals_r8>

The current $I_1$, that goes through the $Delta V_1$ battery also goes through the $r_1$ internal resistance of the battery. That current then splits up into currents, $I_4$ and $I_5$, to go through the resistors $R_4$ and $R_5$. Although it should be obvious that half of $I_1$ will go through each resistor (since these are equal), we can determine this from applying Kirchhoff's rules to the combination of resistors in @fig:circuits:bigcircuit_vals_r8:

$ I_1 & = I_4 + I_5 quad & "(junction)"\
I_5 R_5 -I_4 R_4 & = 0 quad & "(clockwise loop)" $
From the loop equation, we have:

$ I_5 = frac(R_4, R_5) I_4 = I_4 $
since $R_4 = R_5 = 2 upright Omega$. Since $I_4 = I_5$, the junction equation gives:

$ I_5 = frac(1, 2) I_1 = 1 . 1 5 upright A $
By solving for $I_4$ and $I_5$, we have now determined all of the currents through all of the segments of the original circuit in @fig:circuits:bigcircuit_vals.

*Discussion:* In this example, we showed how one can use a simplified circuit to solve the current through the effective resistors in the simplified circuit. Once those currents are known, we showed that it is straightforward to determine the currents through individual resistors that have been combined into effective resistors.
]
]

#attentionBlock(heading: [Josh's Thoughts])[
Solving a circuit can be daunting, especially if the diagram is drawn in an unfamiliar  way. While the circuits in this chapter are designed to be as easy to read as possible, many circuits are much more strange. For example, here is a circuit which you may come across:

#show figure: set block(breakable: true)
#figure(
  image("files/circuit1Josh-7520d0c8826bca1fc6e734a164b2bfb1.png", width: 40%),
  caption: [
A weird looking circuit.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:circuit1josh>

The circuit in @fig:circuits:circuit1josh May look like it is a difficult circuit to solve, but the diagram can be re-drawn to reveal the simplicity of the circuit:

#show figure: set block(breakable: true)
#figure(
  image("files/circuit2Josh-4cb1604ed35f8db5448b4c644cbb8f91.png", width: 40%),
  caption: [
A much less weird looking circuit.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:circuit2josh>

What used to be a strange kite shape is now just a parallel circuit, which can be further simplified by calculating the effective resistance:

$ R_(e f f) & =(R_1^(-1) + R_2^(-1) +(R_3 + R_4)^(-1))^(-1) $
Which gives a series circuit with only one resistor:

#show figure: set block(breakable: true)
#figure(
  image("files/circuit3Josh-a39cdccc8edb6d8a92b6f2e1d82a2f3a.png", width: 40%),
  caption: [
A simple circuit.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:circuit3josh>

Circuits can be drawn in many unique or potentially confusing ways, but knowing how to read the circuit and re-draw it can help make the diagram more legible and the circuit easier to solve.
]

=== Measuring current and voltage <measuring-current-and-voltage>

In this section, we describe how one can build devices to measure current and voltage. A device that measures current is called an "ammeter" and a device that measured voltage is called a "voltmeter". Nowadays, these are usually found within the same physical device (a "multimeter"), which can also measure resistance (by measuring voltage and current, resistance can easily determined). We will limit our description to the design of simple analogue ammeters and voltmeters.

As we will see in Chapter \\ref\{chapter:magneticforce\}, it is straightforward to build a device that can measure very small amounts of current, by running the current through a coil in a magnetic field so that the coil can deflect a needle that indicates the amount of current. Such a device is called a "galvanometer" and is usually limited to measuring very small current (of order \\si\{mA\}). In this section, we describe how one can use a galvanometer in order to build both ammeters to measure large currents and voltmeters.

==== The ammeter <the-ammeter>

An ammeter is built by placing a galvanometer in parallel with a "shunt" resistor, $R_s$. The shunt resistor is a small resistor that "shunts" (deflects) the current away from the galvanometer, so that most of the current goes through the shunt resistor. This is illustrated in @fig:circuits:ammeter, which shows the galvanometer (circle with the $upright G$ inside), the internal resistance of the galvanometer, $R_G$, and the shunt resistor, $R_S$. The actual ammeter would be contained in a box and have two connectors (shown as $upright A$ and $upright B$ in the figure).

#show figure: set block(breakable: true)
#figure(
  image("files/ammeter-db19cc75fe976fb35097957e7bff97e2.png", width: 55%),
  caption: [
Constructing an ammeter from a galvanometer by placing a "shunt" resistor in parallel with the galvanometer.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:ammeter>

By modelling the ammeter, we can determine the total current, $I$, that we would like to measure using the known values of the resistors and the current, $I_G$, measured by the galvanometer. Considering any of the two junctions, and a clockwise loop, we have:

$ I & = I_G + I_S quad & "(junction)"\
I_G R_G -I_S R_S & = 0 quad & "(clockwise loop)"\
therefore I_S & = frac(R_G, R_S) I_G \
therefore I & = I_G + I_S =(1 + frac(R_G, R_S)) I_G $
which allows us to determine the current $I$ from the current $I_G$, measured by the galvanometer. We also see that most of the current goes through the shunt (since $R_S$ is chosen to be smaller than $R_G$). The ammeter will have a total resistance, $R_A$, given by:

$ R_A = frac(R_G R_S, R_G + R_S) $
In order to measure the current through a specific segment of a circuit, an ammeter must be placed in series with that segment (so that the current that we want to measure will pass through the ammeter). @fig:circuits:ammeterr shows how to connect an ammeter (circle with the letter $upright A$) in order to measure the current through a resistor, $R$.

#show figure: set block(breakable: true)
#figure(
  image("files/ammeterR-6b1f56c0a866644a94700534fcf4da05.png", width: 40%),
  caption: [
An ammeter is placed in series with a resistor to measure the current through the resistor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:ammeterr>

==== The voltmeter <the-voltmeter>

A voltmeter is constructed by placing a large resistor, $R_V$, in series with a galvanomenter (that has internal resistance $R_G$), as illustrated in @fig:circuits:voltmeter. The voltmeter is designed to measure the potential difference between the terminals of the voltmeter (labelled $upright A$ and $upright B$ in the Figure).

#show figure: set block(breakable: true)
#figure(
  image("files/voltmeter-49ef0913942c401600576df4ae715547.png", width: 50%),
  caption: [
Constructing an voltmeter from a galvanometer by placing a resistor in series with the galvanometer.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:voltmeter>

Given the values of the resistors, and the current measured by the galvanometer, one can easily determine the potential difference between points $upright A$ and $upright B$, since the current measured by the galvanometer goes directly through each resistor:

$ Delta V = V_B -V_A = -I_G (R_V + R_G) $
In order to measure a potential difference across a component, the voltmeter must be placed in parallel with the component. @fig:circuits:voltmeterr shows how to connect a voltmeter (circle with the letter $upright V$) in order to measure the voltage across a resistor, $R$.

#show figure: set block(breakable: true)
#figure(
  image("files/voltmeterR-64b16d12078075d9e8cbf6f8dd3935e8.png", width: 30%),
  caption: [
A voltmeter is placed in parallel with a resistor to measure the voltage across the resistor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:voltmeterr>

When using an ammeter or a voltmeter, you will notice that these usually have buttons or dials to choose the range of currents or voltages to be measured. All the dial does is change the value of the shunt or series resistor in order to maintain a given maximum current through the galvanometer. An ohmmeter, to measure resistance, is simply an ammeter with a built-in fixed potential difference (so that by measuring current across a known potential difference, the resistance of the component can be determined).

#noteBlock(heading: [Example 19.4])[
Two resistors with a resistance of $1 upright k Omega$ are placed in series with a $1 2 upright V$ battery. A voltmeter with a total resistance of $R_V = 1 0 upright k Omega$ is used to measure the voltage across one of the resistors. What reading does the voltmeter show?

#noteBlock(heading: [Solution])[
Since the two resistors have the same resistance, and are in series with the battery, when no voltmeter is connected, the voltage across either resistor is easily shown to be $6 upright V$. However, by connecting the voltmeter across one of the resistors, we modify the circuit, and we should expect the voltage that is read to be different than $6 upright V$ (can you tell if it will be larger or smaller?). The circuit, with the voltmeter connected, is shown in @fig:circuits:voltmeter2r.

#show figure: set block(breakable: true)
#figure(
  image("files/voltmeter2R-b7592cd3b8ef50a3b49d46c3cf69f11e.png", width: 35%),
  caption: [
When using a voltmeter, the circuit is modified.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:voltmeter2r>

We can model this circuit quite easily by combining the voltmeter (modelled as a resistor) in parallel with one of the resistors:

$ R_(e f f) & = frac(R_V R, R_V + R) \
& = frac((1 0 upright k Omega)(1 upright k Omega),(1 0 upright k Omega) +(1 upright k Omega)) \
& = frac(1 0, 1 1) upright k Omega = 0 . 9 1 upright k Omega $
The sum of the voltage drops across the effective resistor and the other resistor must equal the potential difference across the battery (Kirchhoff's loop rule):

$ R_(e f f) I + R I & = Delta V \
therefore I & = frac(Delta V, R_(e f f) + R) = frac((1 2 upright V),(0 . 9 1 upright k Omega) +(1 upright k Omega)) = 6 . 2 9 e -3 upright A $
The voltage drop across the effective resistor is the same as the reading on the voltmeter:

$ Delta V_(v o l t m e t e r) = I R_(e f f) =(6 . 2 9 e -3 upright A)(0 . 9 1 upright k Omega) = 5 . 7 upright V $
and the voltmeter reads a smaller voltage than there would be without the voltmeter.

*Discussion:* In this example, we saw that by using a voltmeter to measure a voltage in a circuit, we actually disturb the circuit. By placing the voltmeter in parallel with one resistor, we created an effective resistor with a resistance that is lower than the resistance of either the voltmeter or the resistor. This lowered the total resistance of the circuit, which increased the current. A larger current through the second resistor (without the voltmeter) leads to a larger voltage drop than $6 upright V$ across that resistor. Thus, the voltage drop across the resistor with the voltmeter will be less than $6 upright V$, as we found, since the two voltage drops need to add to $1 2 upright V$. In general, when using a voltmeter, one needs a voltmeter with a very high resistance in order to minimize the disturbance to the circuit (if the voltmeter has a high resistance, only a small amount of current will be shunted from the resistor). In practice, voltmeters have resistance that are typically of the order of $1 upright M Omega$.
]
]

=== Modelling circuits with capacitors <modelling-circuits-with-capacitors>

\\begin\{review\}
\* Section \\ref\{sec:potential:capacitors\} on capacitors.

\\end\{review\}
So far, we have modelled circuits where the current does not change with time. When a capacitor is included in a circuit, the current will change with time, as the capacitor charges or discharges. The circuit shown in @fig:circuits:rccircuit shows an ideal battery\\footnote\{The model still holds for a real battery, since the internal resistance of the battery can just be included into the resistance of the resistor, $R$.\} ($Delta V$), in series with a resistor ($R$), a capacitor ($C$, two vertical bars) and a switch ($upright S$) that is open.

#show figure: set block(breakable: true)
#figure(
  image("files/RCcircuit-ed0f38181d5ef64b678a6171d86d88e5.png", width: 40%),
  caption: [
A simple circuit with a resistor, battery, and capacitor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:rccircuit>

When the switch is open, current cannot flow through the circuit. If we assume that the capacitor has no charge on it, once we close the switch, current will start to flow and charges will accumulate on the capacitor. Electrons will leave the negative terminal of the battery, flow through the resistor and accumulate on the left side of the capacitor, which acquires a negative charge. This pushes electrons off of the right hand side of the capacitor, which then becomes positively charged. The electrons from the positive side of the capacitor then flow into the positive side of the battery, completing the circuit.

Eventually, the charges on the capacitor will build up to a point were they prevent any further flow of current. Once the left side of the capacitor is at the same potential as the left side of the battery, current will cease to flow. That is, eventually, the potential difference across the capacitor will be equal to that across the battery, and we can think of this as a circuit used to charge a capacitor. The current is high when the switch is first opened, but eventually goes down to zero as the capacitor charges. The current is thus time-dependent.

We can model this simple circuit (with the switch closed) using Kirchhoff's loop rule. The sum of the voltages across each component must sum to zero:

$ Delta V -I R -frac(Q, C) = 0 $
where we used the fact that the charge, $Q$, on a capacitor is related to the potential difference, $Delta V_C$, across the capacitor by $Q = C Delta V_C$. The current, $I$, is the rate at which charges flow through the circuit, and is thus equal to rate at which charges accumulate on the capacitor:

$ I = frac(d Q, d t) $
Substituting this into the loop equation, we obtain a separable differential equation for the charge on the capacitor as a function of time, $Q(t)$:

$ Delta V -I R -frac(Q, C) & = 0 \
Delta V -frac(d Q, d t) R -frac(Q, C) & = 0 \
Delta V -frac(Q, C) & = frac(d Q, d t) R \
C Delta V -Q & = R C frac(d Q, d t) \
therefore frac(d t, R C) & = frac(d Q, C Delta V -Q) $
This is similar to differential equations that we have solved previously (in fact, it is the same equation as in #link("/applyingnewtonslaws\#ex-applyingnewtonslaws-drag")[Example 6.4] where we looked at the effect of velocity-dependent drag). The solution to the equation, assuming that the switch is closed at $t = 0$, is given by an exponential:

$ Q(t) = C Delta V(1 -e^(-frac(t, R C))) $
Thus, the charge on the capacitor starts at zero when the switch is closed, and grows asymptotically until it reaches a value of $Q = C Delta V$, which corresponds to the capacitor having the same potential difference across it as the battery. The value $tau = R C$ is called the "time constant" of the RC circuit, and corresponds to the time at which the capacitor will reach about $(1 -e^(-1)) = 6 3 %$ of its maximal charge. The current as a function of time is given by:

$ I(t) = frac(d Q, d t) = frac(Delta V, R) e^(-frac(t, R C)) $
and we can see that at time $t = 0$ the current is the same as if there were no capacitor present, and the current then decreases exponentially until it reaches zero.

+ Identify the loop, including starting position and direction.
+ Start at the beginning of the loop, and trace around the loop.
+ Each time a battery is encountered, *add the battery voltage if you are tracing the loop in the same direction as the corresponding battery arrow*, subtract the voltage otherwise.
+ Each time a resistor is encountered, #strong[subtract the voltage across that resistor ($R I$, from Ohm's Law) if tracing the loop in the same direction as the current], add the the voltage otherwise.
+ Once you have traced back to the starting point, the resulting sum must be zero.

In general, we suggest the following procedure in order to use Kirchhoff's rules to model any circuit:

+ Make a good diagram of the circuit.
+ Simplify any resistors that can easily be combined into effective resistors (in series or in parallel).
+ Make a new diagram with the effective resistors, showing battery arrows, and labelling all of the nodes so that loops can easily be described.
+ Make a *guess* for the directions of the current in each segment.
+ Write the junction rule equations. Usually, you will get $M -1$ independent equations for $M$ loops.
+ Write the loop equations. Usually, you will get $M -1$ independent equations for $M$ loops.
+ This will lead to $N$ independent equations that one can solve for the $N$ different currents in the circuit.
+ Once you have determined all of the currents, if some of them are negative numbers, switch the direction of those currents in the diagram (they will be negative if you guessed the direction incorrectly).

Current and voltage measuring devices (ammeters and voltmeters, respectively) can be constructed from a galvanometer, which measures small currents. An ammeter is constructed by placing a small shunt resistor in parallel with the galvanometer so that most of the current passes through the shunt resistor. The resulting ammeter must be placed in series with a component in order to measure the current through that component.

A voltmeter is constructed by placing a resistor in series with the galvanometer in order to reduce the current through the galvanometer. The resulting voltmeter must be placed in parallel with a component in a circuit in order to measure the voltage across that component. Note that because voltmeters and ammeters have a non-zero resistance, they will affect the circuit once they are connected.

When a capacitor is placed in a circuit, the current in the circuit will no longer be constant in time. If an uncharged capacitor with capacitance, $C$, is placed in a series circuit with a battery and a resistor of resistance, $R$, the capacitor will charge until the voltage across the capacitor is equal to that across the battery. Once the capacitor is charged, current ceases to flow in the circuit. The charges on a capacitor accumulate with a rate that decays exponentially; it will take an infinite amount of time for the capacitor to become fully charged. It will be charged to about 63% of maximum charge after a period of time, $tau = R C$, called the time constant of the capacitor.

#importantBlock(heading: [Important Equations])[
*Ohm's Law:*

$ Delta V & = I R $
*Junction Rule:*

$ sum I_(i n) & = sum I_(o u t) $
*Loop Rule:*

$ sum_(l o o p) Delta V = 0 $
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- When did Galvani and Volta experiment with electric cells?
- What is the largest voltage that Volta obtained with his voltaic pile?
- How does one charge a rechargeable battery? What would the circuit look like?
]

#seealsoBlock(heading: [To try at home])[
- Research circuit diagrams of appliances you have at home.
]

#seealsoBlock(heading: [To try in the lab])[
- Propose an experiment to measure the change in current of an RC circuit as a capacitor builds up and releases charge.
- Propose an experiment to determine the RC constant for a capacitor charging circuit.
- Propose an experiment to measure the resistance of a voltmeter and compare your results with the manufacturer's.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 19.1])[
A simple RC circuit as shown in @fig:circuits:rccircuit contains a charged capacitor of unknown capacitance, $C$, in series with a resistor, $R = 2 upright Omega$. When charged, the potential difference across the terminals of the capacitor is $9 upright V$.

At time $t = 0 upright s$, the switch, $upright S$, is closed, allowing the capacitor to discharge through the resistor. The current is then measured to be $I = 0 . 0 5 upright A$ at $t = 5 upright s$ after opening the switch.

- a. What is the capacitance of the capacitor?
- b. What charge did the capacitor hold at $t = 2 upright s$?

#show figure: set block(breakable: true)
#figure(
  image("files/RCcircuitCharge-10b05782ac2f5b4511023f1c0ed42294.png", width: 30%),
  caption: [
A simple circuit with a resistor and a capacitor.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:rccircuitcharge>
]

#noteBlock(heading: [Problem 19.2])[
A voltmeter with a resistance of $R_V = 2 0 upright k Omega$ is attached to a circuit with a battery of unknown voltage and two resistors with a resistance of $R = 2 . 5 upright k Omega$ as shown in @fig:circuits:question2circuit. The voltmeter reads that the voltage drop over one of the resistors is $Delta V_(v m) = 5 . 6 4 7 upright V$. What is the voltage drop, $V_R$, over each resistor when the voltmeter is removed from the circuit?

#show figure: set block(breakable: true)
#figure(
  image("files/question2circuit-ed8c1860995b2657c9e658d308b1eb62.png", width: 45%),
  caption: [
A circuit with a battery of unknown voltage.
],
  kind: "figure",
  supplement: [Figure],
) <fig:circuits:question2circuit>
]

==== Solutions <solutions>

#noteBlock(heading: [Solution 19.1])[
- a. In this case, the capacitor is discharging as a function of time. At time $t = 0$, the voltage across the capacitor is $Delta V = 9 upright V$. We can model this discharging circuit in a similar way as we modelled the charging circuit.

We start with Kirchhoff's loop rule, which leads to a differential equation for the charge stored on the capacitor as function of time, $Q(t)$:

$ Delta V -I R & = 0 \
frac(Q, C) -I R & = 0 \
frac(Q, C) -frac(d Q, d t) R & = 0 \
therefore frac(d Q, d t) = -frac(1, R C) Q $
This differential equation is straightforward to solve, since it says that the derivative of $Q(t)$ is equal to a constant multiplied by $Q(t)$. Thus, $Q(t)$ must be an exponential function:

$ Q(t) = Q_0 e^(-frac(t, R C)) $
where $Q_0$ is the (unknown) charge on the capacitor at $t = 0$. You can easily verify that taking the derivative of this equation will result in the differential equation being satisfied.

Now that we have an equation for the charge as a function of time, it is straightforward to find the current, since it is just the time derivative of the charge. The current as a function of time, $I(t)$, is given by:

$ I & = frac(d Q, d t) = -frac(1, R C) Q = frac(Q_0, R C) e^(-frac(t, R C)) = I_0 e^(-frac(t, R C)) $
where $I_0 = frac(Q_0, R C)$ is the current at $t = 0$.\\

We also know that the current through the resistor at $t = 0$ is given by Ohm's Law, since, at that time, the voltage, $frac(Q_0, C) = 9 upright V$:

$ I_0 = frac(Q_0, R C) = frac((9 upright V),(2 upright Omega)) = 4 . 5 upright A $
We then know that the current, at time $t = 5 upright s$, is equal to $I(5) = 0 . 0 5 upright A$, allowing us to determine the capacitance:

$ I(5) & = I_0 e^(-frac(t, R C)) \
ln(frac(I(5), I_0)) & = -frac(t, R C) \
therefore C & = frac(t, R ln(frac(I_0, I(5)))) = frac((5 upright s),(2 upright Omega) ln(frac((4 . 5 upright A),(0 . 0 5 upright A)))) = 0 . 5 6 upright F $
- b. To find the charge stored in the capacitor at $t = 2 upright s$, we can use the function $Q(t)$ that we determined before:

$ Q(t = 2 upright s) = Q_0 e^(-frac(t, R C)) $
where we can determine $Q_0$, now that we know the capacitance. $Q_0$ is the charge on the capacitor at time $t = 0$, when the voltage across the capacitor is $9 upright V$:

$ Q_0 = C Delta V =(0 . 5 6 upright F)(9 upright V) = 5 . 0 upright C $
At $t = 2 upright s$, the charge on the capacitor is thus:

$ Q(t = 2 upright s) =(5 . 0 upright C) e^(-frac((2 upright s),(2 upright Omega)(0 . 5 6 upright F))) = 0 . 8 4 upright C $
]

#noteBlock(heading: [Solution 19.2])[
In order to know the voltage across one of the resistors, we need to determine the voltage that is across the battery. Once we have determined the voltage across the battery, the voltage across one of the resistors will just be half of that across the battery, since the two resistors have the same resistance.

We can model the circuit with the voltmeter in place, since we know the voltage across the parallel combination of the voltmeter and resistor (that voltage which is readout by the voltmeter). We can combine the voltmeter and one of the resistors into a an equivalent resistor, $R_(e f f)$:

$ R_(e f f) & = frac(1, R_V^(-1) + R^(-1)) \
R_(e f f) & = frac(1,(2 0 upright k Omega)^(-1) +(2 . 5 upright k Omega)^(-1)) \
R_(e f f) & = 2 . 2 2 upright k Omega \
 $
Now that we have the effective resistance as well as the voltage drop across that effective resistor, we can solve for current through the circuit:

$ I & = frac(Delta V_(v m), R_(e f f)) \
I & = frac(5 . 6 4 7 upright V, 2 . 2 2 upright k Omega) \
I & = 2 . 5 4 1 upright m A \
 $
Now that we have the current, we can combine the known resistances and determine the voltage drop across the battery.

$ Delta V_(b a t t e r y) & = I(R_(e f f) + R) \
Delta V_(b a t t e r y) & =(2 . 5 4 1 upright m A)(2 . 2 2 2 upright k Omega + 2 . 5 upright k Omega) \
Delta V_(b a t t e r y) & = 1 2 upright V \
 $
Thus, with no voltmeter present, the voltage across each resistor is $6 upright V$.
]