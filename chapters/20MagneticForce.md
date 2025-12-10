---
title: Chapter 20 - Magnetic force
numbering:
  headings:
  heading_1:
    start: 21
---
(chapter:magneticforce)=
# Overview
This chapter introduces the tools to model the magnetic force, which is something that we have all experienced with magnets. As we will see, the magnetic force acts on moving (electric) charges, and is thus fundamentally different from the electric force which acts on stationary and moving charges. In later chapters, we will develop the tools that allow us to make connections between the electric and magnetic fields.

:::{hint} Learning Objectives
* Understand the key characteristics of a magnetic field and what makes it different from an electric field.
* Understand how to model the magnetic force on a moving charge.
* Understand how to model the magnetic force on a wire carrying current.
* Understand how to model the torque exerted on a current-carrying loop by a magnetic field.
* Understand how to model the Hall Effect.
* Understand simple applications of the magnetic force.
:::

:::{note} Think About It
When you go through airport security, they sometimes sample your luggage with sticky tape and place that tape into a machine to detect trace amounts of explosives. How does that machine work?
1.  The machine detects trace amounts by "sniffing" the sample using similar chemical reactions as those in our olfactory system.
2.  The machine vaporizes the sample and accelerates the resulting charged vapour around a circle to determine its constituents. 
:::{note} Answer
:class: dropdown
2.
:::

# Magnetic fields
Just as we can model the electric force on a charge by using the electric field (e.g. from another charge), we can model the force on a magnet by using a magnetic field (e.g. from another magnet). In your experience, every magnet that you have seen always has a "North" pole and a "South" pole. Most likely, you have noticed that the North pole of a magnet is attracted to the South pole of another magnet, and that the two North (or South) poles of different magnets repel each other. Thus, the magnetic force is attractive between two opposite poles, and repulsive otherwise.

The Earth itself can be modelled as a giant bar magnet, with North and South magnetic poles. The poles on a magnet are labelled North and South according to which geographic pole of the Earth they are attracted to (a magnetic compass needle has a magnetic North pole on the side that point to the Earth's North geographic pole).
:::{tip} Checkpoint
Is the magnetic North pole of the Earth located closer to the Earth's geographic North pole or closer to its geographic South Pole?
1.  Earth does not have a magnetic field.
2.  Earth's magnetic North pole is at Earth's geographic North pole.
3.  Earth's magnetic North pole is at Earth's geographic South pole. 
4.  Earth's magnetic North pole depends on the charge of the observer.
:::{tip} Answer
:class: dropdown
3.
:::

It may seem that the magnetic force can be described in the same way as the electric force, having two opposite sign "charges" (or poles for magnets), although this is not the case. As far as we can tell, there are no magnets that have only a North or a South pole. Every magnet must have a North *and* a South pole. This is fundamentally different from the electric force, where an object can have a net positive or negative charge. In the context of magnetism, we say that "monopoles do not exist" (an object that has only a North or a South pole would be called a monopole). This is illustrated in [](#fig:magneticforce:magnetcut), which shows what happens as one cuts a bar magnet into two pieces; rather than ending up with a North and a South piece (monopoles), we end up with two smaller bar magnets, each with their own North and South pole.

```{figure} figures/MagneticForce/magnetcut.png
:label: fig:magneticforce:magnetcut
:width: 40%
:align: center
:alt: When a bar magnet is cut through the middle, one obtains two magnets, each with a North and South pole, rather than a North and a South magnet.
When a bar magnet is cut through the middle, one obtains two magnets, each with a North and South pole, rather than a North and a South magnet.
```

We model the magnetic force using a magnetic field vector, usually labelled $\vec B$. The magnitude of the magnetic field has the S.I. units of Teslas (\si{T}). We draw magnetic field lines in much the same way that we draw electric field lines. The magnetic field lines are such that the magnetic field vector, $\vec B$, at some point in space is tangent to the field line at that point. The strength of the magnetic field is determined by the density of field lines at that position in space. The direction of the magnetic field, $\vec B$, indicates the direction of the force that is exerted on the North pole of a magnet. Magnetic field lines thus flow away from North poles and towards South poles. 

The magnetic field description is similar to that of the electric field, with North magnetic poles being similar to positive electric charges, and vice versa.  However, because magnetic monopoles do not exist, magnetic field lines do not end (or start) on the pole of a magnet. Rather, magnetic field lines must always form **closed loops**. [](#fig:magneticforce:barfield) shows the magnetic field lines for a bar magnet, highlighting that the field lines do not end at the poles, but rather continue through the magnet (and some of the lines only "close" outside of the figure). The magnetic field from a bar magnet is very similar to the electric field created by an electric dipole. For that reason, an object (such as a bar magnet) that forms magnetic field lines of this shape are often described as magnetic dipoles. 


```{figure} figures/MagneticForce/barfield.png
:label: fig:magneticforce:barfield
:width: 55%
:align: center
:alt: The magnetic field lines for a bar magnet always form closed loops as they do not end at the North or South pole of the magnet.
The magnetic field lines for a bar magnet always form closed loops as they do not end at the North or South pole of the magnet.
```

We will discuss how to model magnetic fields in the next chapter, but it is important to understand that magnetic fields are created by moving electric charges. The electrons in the material that forms a bar magnet are the moving charges that create the magnetic field. As we will see, the magnetic field from a charge moving around in a circle (or a circular loop of current), has exactly the same shape as that of a bar magnet, as illustrated in [](#fig:magneticforce:loopfield). We can thus think of charge moving in a circle as a small bar magnet, or more precisely, as a magnetic dipole.

```{figure} figures/MagneticForce/loopfield.png
:label: fig:magneticforce:loopfield
:width: 45%
:align: center
:alt: The magnetic field lines produced by a circular loop of current, $I$, are the same as those produced by a bar magnet.
The magnetic field lines produced by a circular loop of current, $I$, are the same as those produced by a bar magnet.
```

In a magnet, the electrons in the material are moving in such a way that the magnetic fields that they generate are all in the same direction. In other words, each atom is like a small magnetic dipole, and all of these are aligned. This allows us to understand why cutting a magnet does not result in two monopoles ([](#fig:magneticforce:magnetcut)): when we cut the bar magnet, we end up with less material, but each piece of material still contains magnetic dipoles that are aligned with each other, each having a North and South pole. Note that it is not the motion of electrons around their nuclei that results in the magnetic field, and that one  requires quantum mechanics and the notion of "spin" to describe this all in detail. 
 
Most materials will respond to magnetic fields, but the behaviour is most evident in "ferromagnetic" materials, such as iron (Fe). Ferromagnetic materials can be magnetized by an external magnetic field, effectively transforming them into magnets. One can think of a material as containing many little magnetic dipoles (from the motion of the electrons), which themselves are like bar magnets. If that material is ferromagnetic,  an external magnetic field can act on the little "bar magnets", orienting them all in the same way, so that the material as a whole becomes magnetic. For some ferromagnetic materials, that common orientation will remain when the external magnetic field is removed, creating a "permanent magnet". For other ferromagnetic materials, the common orientation disappears when the external field is removed; those materials are thus attracted to a magnet, but they cannot form a magnet. 
  
# The magnetic force on a moving charge
:::{caution} Review
Before proceeding, you may wish to review:
* [Section %s](#sec:Vectors:vectorproduct) on the vector product.
:::
When an electric charge, $q$, has a velocity, $\vec v$, relative to a magnetic field, $\vec B$, a magnetic force is exerted on the particle:
```{math}
\boxed{\vec F_B = q \vec v \times \vec B}
```
We can make a few remarks about the magnetic force:
* The magnetic force is always perpendicular to the velocity and to the magnetic field (since it is given by their cross-product).
* The direction of the magnetic force depends on the sign of the charge.
* The magnetic force can do no work, since it is always perpendicular to the velocity (and thus to displacement).
* There is no force if the particle's velocity is in the same direction as the magnetic field vector. 
* The force increases with charge, speed, and strength of the magnetic field.

:::{tip} Checkpoint
A proton moves East in Earth's magnetic field, which way is it deflected?
1.  Away from the Earth. 
2.  Towards the Earth. 
3.  North.
4.  South.
:::{tip} Answer
:class: dropdown
1.
:::
:::{tip} Checkpoint
An electron moves West in Earth's magnetic field, which way is it deflected?
1.  Away from the Earth. 
2.  Towards the Earth. 
3.  North.
4.  South.
:::{tip} Answer
:class: dropdown
1.
:::
:::{attention} Josh's Thoughts 
{}
It is very important to remember what each part of the right-hand rule for cross-products represents. To help remember what each finger represents, I say "velocity" as I extend my thumb, "field" as I extend my index finger, and "force" as I extend my middle finger. When using the right hand rule, it is also important to remember the $q$ in the equation $\vec F_B = q\vec v \times \vec B$. This $q$ could be negative, which would mean that the force acts in the opposite direction.
```{figure} figures/MagneticForce/rhr.png
:label: fig:magneticforce:rhr
:width: 40%
:align: center
:alt: The way that Josh remembers the right hand rule for magnetism.
The way that Josh remembers the right hand rule for magnetism.
```
If you find yourself forgetting the right-hand rule on a test or exam, just remember that you can still find the correct answer by setting up a three-dimensional coordinate system and evaluating the cross product.
:::
You should be somewhat bothered by the fact that the force depends on the velocity of the charge, since velocity depends on the frame of reference from which it is measured. The above equation has a strange implication: if we observe an electron moving in a magnetic field, we will see its motion be deflected by the magnetic field. If we move along with the electron, so that it has a velocity of zero in our frame of reference, we should not see the electron being deflected, since the magnetic force would be zero. Clearly, the motion of the electron cannot depend on the frame of reference from which we observe it. Thus, the only way that this equation can make sense is if the magnetic field also depends on our frame of reference. We will revisit this in a subsequent chapter, but for now, remember that this equation only makes sense if the velocity is measured in the same reference frame as that in which the magnetic field is defined.

Another bothersome issue with the magnetic force is that it appears to depend on the fact that most humans are right-handed. Indeed, the direction of the force requires one to use the right-hand rule, which appears arbitrary. This is a common occurrence in physics, as many quantities are defined using a cross-product. However, no physical quantity can ever depend on our choice of right or left hand for determining cross-products. It turns out that any physical quantity (such as the force on a particle, which will deflect the particle in a clearly identifiable direction that does not depends on a human's choice of right and left), always depends on two successive applications of the right-hand rule. In this case, the direction of the magnetic field is also given by a right-hand rule applied to the moving charges that create the field (as we will see in the next chapter). The successive uses of the right hand twice "cancel"; one finds that a charge is deflected in the same direction if one had used the left hand to define the magnetic field, and then again the left-hand for the cross-product! We will revisit this issue in the next chapter.

Consider the motion of a charged particle in a region where the magnetic field is uniform (constant in magnitude and direction). If the velocity vector of the particle is perpendicular to the magnetic field, the particle will undergo uniform circular motion, as illustrated in [](#fig:magneticforce:cyclotron). 
```{figure} figures/MagneticForce/cyclotron.png
:label: fig:magneticforce:cyclotron
:width: 35%
:align: center
:alt: The motion of a charged particle in a uniform magnetic field (out of the page) is uniform circular motion.
The motion of a charged particle in a uniform magnetic field (out of the page) is uniform circular motion.
```
Indeed, the force is always perpendicular to the velocity, and the force is constant in magnitude since both the speed and magnetic field remain constant. These are the only conditions required for uniform circular motion. We can easily determine the radius, $R$, of the circle, since the magnetic force is responsible for the centripetal acceleration:
```{math}
F_B &= m\frac{v^2}{R}\\
qvB &= m\frac{v^2}{R}\\
\therefore R &= \frac{mv}{qB}
```
The radius is called the "cyclotron radius". 

:::{tip} Checkpoint
Is the particle illustrated in [](#fig:magneticforce:cyclotron) positively or negatively charged?
1.  The particle is positively charged. 
2.  The particle is negatively charged.
3.  Not enough information to tell.
4.  The particle has no charge.
:::{tip} Answer
:class: dropdown
1.
:::

Referring to [](#fig:magneticforce:cyclotron), if the velocity of the particle is in the plane of the page (perpendicular to the magnetic field), as illustrated, the particle will undergo uniform circular motion. If the velocity of the particle has a component that is parallel to the magnetic field (for example a component coming out of the page, towards you), the particle will undergo "helical motion" (a spiral). The radius of the helix is determined by the component of the velocity, $\vec v_{\perp}$, that is perpendicular the magnetic field:
```{math}
\therefore R &= \frac{mv_{\perp}}{qB}
```
The charged particle would also have a component of velocity towards you that is constant, resulting in the spiral motion illustrated in [](#fig:magneticforce:helix). Note that the distance between two spirals (labelled $h$ in the figure) is called the "pitch", and is determined by the component of velocity that is parallel to the magnetic field, $\vec v_\parallel$, since that component is not affected by the magnetic force. 
```{figure} figures/MagneticForce/helix.png
:label: fig:magneticforce:helix
:width: 40%
:align: center
:alt: The helical motion of a charged particle with a component of velocity parallel to the magnetic field. The distance, $h$, between spirals is called the "pitch".
The helical motion of a charged particle with a component of velocity parallel to the magnetic field. The distance, $h$, between spirals is called the "pitch".
```
(ex:magneticforce:massspec)=
:::{note} Example 20.1
A particle of unknown charge and unknown mass is observed to undergo uniform circular motion with a period, $T$, when travelling perpendicular to a uniform magnetic field, $B$. What is the ratio of the particle's charge to its mass, $q/m$?
:::{note} Solution
:class: dropdown
We can use the period of the motion to determine the speed of the particle in terms of the radius of the circular path:
```{math}
v = \frac{2\pi R}{T}
```
and then use the equation for the cyclotron radius to relate this to the charge-to-mass ratio of the particle:
```{math}
R &= \frac{mv}{qB}\\
  &= \frac{2\pi R m}{qBT}\\
\therefore \frac{q}{m} &= \frac{2\pi}{BT} 
```
**Discussion:** When a charged particle undergoes uniform circular motion in a magnetic field, the radius of the motion depends on the particle's charge-to-mass ratio. This can often be used to measure the mass of, say, an ion, if the charge of the ion is known (usually one or two units of the electron charge). A mass spectrometer makes use of this principle in order to determine the composition of a sample. The sample is vaporized and ionized, the ions are then accelerated using an electric potential difference, before they undergo uniform circular motion. Ions of different masses (and same charge) will then undergo circular motion with different radii, which allows their masses to be determined, and thus the composition of the sample to be known.
:::

# The magnetic force on a current-carrying wire
:::{caution} Review
Before proceeding, you may wish to review:
* [Section %s](#sec:current:micromodel) on the microscopic model of current.
:::

In this section, we examine the force that is exerted by a magnetic field on a wire that carries electric current. Since a current is formed by moving charges, it is natural to expect that a wire that carries current will experience a force if immersed in a magnetic field. 

Consider a vertical wire with cross-sectional area, $A$, carrying current, $I$, upwards that is immersed in a uniform magnetic field, $\vec B$, into the page, as illustrated in [](#fig:magneticforce:microforce). Inside the wire, on average, electrons have a drift velocity, $\vec v_d$, in the downwards direction (since they move in the direction opposite to that of conventional current).
```{figure} figures/MagneticForce/microforce.png
:label: fig:magneticforce:microforce
:width: 30%
:align: center
:alt: A section of wire carries conventional current, $I$, upwards while being immersed in a uniform magnetic field, $\vec B$, into the page. We introduce a vector, $\vec l$, to represent a section of wire of length $l$ carrying current in the direction of $\vec l$.
A section of wire carries conventional current, $I$, upwards while being immersed in a uniform magnetic field, $\vec B$, into the page. We introduce a vector, $\vec l$, to represent a section of wire of length $l$ carrying current in the direction of $\vec l$.
```
A single electron (with charge $q=-e$) will experience a magnetic force, $\vec F_e$, given by:
```{math}
\vec F_e = -e \vec v_d \times \vec B
```
as illustrated in [](#fig:magneticforce:microforce). A section of wire of length, $l$, will contain $N=nAl$ drifting electrons, where $n$ is the density of free electrons for the wire (the number of electrons per unit volume that are available to produce a current). Thus, the magnetic force on that section of wire will be $N$ times the force on a single electron:
```{math}
\vec F = N\vec F_e = nAl (-e \vec v_d \times \vec B)=-nAle \vec v_d \times \vec B
```
Recall the microscopic model of current to relate the drift velocity to the conventional current in the wire:
```{math}
I &= -nAev_d
```
where the minus sign indicates that negative electrons flow in the opposite direction from the conventional current. We also introduce a vector, $\vec l$, with a magnitude equal to the length of the section of wire, and a direction that is parallel to the conventional current (thus anti-parallel to the electron drift velocity). The force on the section of the length, $l$, of the wire is thus given by:
```{math}
\vec F = -nAle \vec v_d \times \vec B
```
```{math}
\boxed{ \vec F= I \vec l \times \vec B}
```

:::{attention} Olivia's Thoughts 
If you forget this formula, you can obtain it rather easily from $\vec F=q\vec v\times \vec B$. For simplicity, we assume velocity is constant, so that velocity is the displacement, $\vec l$, per unit time. We can then rewrite the formula for the force as:
```{math}
\vec F&=q\vec v\times \vec B\\
&=q\frac{\vec l}{t}\times \vec B\\
&=\frac{q}{t}\vec l\times \vec B.
```
In the last line, I have rewritten the equation to highlight the charge per unit time $q/t$, which is just the (constant) current, $I$. Using the current, the equation becomes,
```{math}
\vec F=I\vec l\times \vec B,
```
as we found previously. This is a less rigorous derivation than what we did above, but it is helpful if you just need to remind yourself of the formula.

 :::

:::{tip} Checkpoint
```{figure} figures/MagneticForce/horseshoemagnet.png
:label: fig:magneticforce:horseshoemagnet
:width: 35%
:align: center
:alt: A current carrying wire moving through a magnetic field.
A current carrying wire moving through a magnetic field.
```
In which direction does the magnetic force point on the current-carrying wire that is placed in the magnetic field between the poles of the horseshoe magnet shown in [](#fig:magneticforce:horseshoemagnet)?
1.  Up. 
2.  Down.
3.  Into the page.
4.  Out of the page.
:::{tip} Answer
:class: dropdown
1.
:::

Note that if the wire is not straight, then we can model the wire as being made of many infinitesimally short sections ([](#fig:magneticforce:bentwire)), of length $dl$, and sum the forces on those sections to get the total force on a section of length $L$:
```{math}
\vec F = \int_0^L I d\vec l \times \vec B
```
```{figure} figures/MagneticForce/bentwire.png
:label: fig:magneticforce:bentwire
:width: 30%
:align: center
:alt: The magnetic force on a curved current-carrying wire is obtained by modelling the forces exerted on infinitesimal sections of wire, each with length $d\vec l$, and summing together those forces to get the total force on the wire.
The magnetic force on a curved current-carrying wire is obtained by modelling the forces exerted on infinitesimal sections of wire, each with length $d\vec l$, and summing together those forces to get the total force on the wire.
```

(ex:magneticforce:semicircle)=
:::{note} Example 20.2
A wire carrying current $I$ is bent so as to have a semi-circular section with radius $R$, as shown in [](#fig:magneticforce:semicircle). The wire is immersed in a uniform magnetic field, $\vec B$, that is perpendicular to the plane of the wire, as shown. Using the given coordinate system, what is the net force on the wire?
```{figure} figures/MagneticForce/semicircle.png
:label: fig:magneticforce:semicircle
:width: 40%
:align: center
:alt: A current-carrying wire with a semi-circular section is immersed in a uniform magnetic field.
A current-carrying wire with a semi-circular section is immersed in a uniform magnetic field.
```

:::{note} Solution
:class: dropdown
We can model the wire as being made of three sections: a straight section carrying current in the positive $y$ direction, a curved section, and another straight section carrying current in the negative $y$ direction.

Consider the first straight section, carrying current in the positive $y$ direction. The force on that section of wire, by the right hand rule, will be towards the left (negative $x$ direction):
```{math}
F_S &= I \vec l \times \vec B\\
&= I (l\hat y) \times (-B\hat z)\\
&= -IlB (\hat y \times \hat z)\\
&=-IlB\hat x
```
where $l$ is the (unknown) length of that section of wire. The force exerted on the other straight section of wire will have the same magnitude, but the opposite direction (since the current, and thus the vector $\vec l$, is in the opposite direction). Thus, the forces from the two straight sections of the wire cancel, as illustrated in [](#fig:magneticforce:semicircle_sol).
```{figure} figures/MagneticForce/semicircle_sol.png
:label: fig:magneticforce:semicircle_sol
:width: 40%
:align: center
:alt: The magnetic force on different sections of wire.
The magnetic force on different sections of wire.
```
In order to calculate the force exerted on the semi-circular section, we need to add together the forces exerted on the infinitesimal sections of the wire that make up that section. Consider the magnetic force on the two infinitesimal sections illustrated in [](#fig:magneticforce:semicircle_sol). The $x$ components of the forces will cancel, whereas the $y$ components will add. Thus, by symmetry, we anticipate that the net force on the semi-circular section will be in the positive $y$ direction.

Consider the small force on the section of wire located at an angle, $\theta$, as illustrated in [](#fig:magneticforce:semicircle_sol). We can write the vector $d\vec l$ as:
```{math}
d\vec l = dl(\sin\theta\hat x + \cos\theta \hat y)
```
Thus, the infinitesimal force on that section of wire is given by:
```{math}
d\vec F &= I d\vec l \times \vec B \\
&= I dl(\sin\theta\hat x + \cos\theta \hat y)\times (-B\hat z)\\
&=-IBdl (\sin\theta\hat x \times \hat z + \cos\theta \hat y \times \hat z)\\
&=-IBdl (-\sin\theta \hat y + \cos\theta\hat x) \\
&= IBdl\sin\theta \hat y - IBdL\cos\theta \hat x\\
& = dF_y\hat y + dF_x \hat x
``` 
where, in the last line, we explicitly wrote out the $x$ and $y$ components of the infinitesimal force vector. In order to sum together these infinitesimal forces, it is most convenient to use the angle $\theta$ to identify each segment. $d\theta$ is related to $dl$, since $dl$ is the length of the circle subtended by the infinitesimal angle $d\theta$:
```{math}
dl = Rd\theta
```
Summing together all of the $y$ components of the infinitesimal forces:
```{math}
F_y = \int dF_y = \int_0^\pi IBR\sin\theta d\theta=IBR \int_0^\pi\sin\theta d\theta=2IBR
```
Note that the $x$ components sum to zero, as we predicted from symmetry:
```{math}
F_x = \int dF_x = -\int_0^\pi IBR\cos\theta d\theta=-IBR \int_0^\pi\cos\theta d\theta=0
```
The net force on the wire is thus given by:
```{math}
\vec F = 2IBR\hat y
```
**Discussion:** In this example we found the magnetic force on a curved section of current-carrying wire. The calculation was simplified by symmetry arguments, as we could use the right hand rule to anticipate that the force would have no component in the $x$ direction. This is because there is as much current flowing in the positive $y$ direction as there is in the negative $y$ direction, so that the corresponding forces cancel. There is however a net flow of charges in the positive $x$ direction, leading to a net force in the positive $y$ direction. As a corollary, the net magnetic force on any closed loop of current must be zero.
:::
# The torque on a current-carrying loop
:::{caution} Review
Before proceeding, you may wish to review:
* [Section %s](#sec:rotationaldynamics:torque) on torque.
* [Section %s](#sec:chargesfields:electricdipole) on electric dipoles.
:::

As noted in [Example 20.2](#ex:magneticforce:semicircle), the net magnetic force on any closed loop immersed in a uniform magnetic field is zero. Consider, for example, the current-carrying rectangular loop of height $h$ and width $w$, immersed in a uniform magnetic field, $\vec B$, as illustrated in [](#fig:magneticforce:rectangleloop) (note that the field is not perpendicular to the plane of the loop, as it was in [Example 20.2](#ex:magneticforce:semicircle)).
```{figure} figures/MagneticForce/rectangleloop.png
:label: fig:magneticforce:rectangleloop
:width: 40%
:align: center
:alt: A rectangular loop carrying counter-clockwise current in a uniform magnetic field.
A rectangular loop carrying counter-clockwise current in a uniform magnetic field.
```
The magnetic force on the two horizontal sections of the wire are zero, since the current is co-linear with the magnetic field along those sections. In the left vertical section (with current flowing downwards), the magnetic force is out of the page (positive $z$ direction), and is given by:
```{math}
\vec F = IhB\hat z
```
Similarly, the force on the right vertical section (with current flowing upwards) will have the same magnitude but the opposite direction. The net force on the loop is thus zero. 

However, the net torque on the loop about its vertical axis of symmetry (shown by the vertical dashed line in the figure) is not zero. The total torque is found by summing the torques from the forces exerted on the two vertical sections of wire:
```{math}
\vec \tau &= \vec r\times \vec F + (-\vec r \times - \vec F)\\
&= 2 \vec r \times F = 2 \left(-\frac{w}{2}\hat x\right) \times IhB\hat z = IBwh (-\hat x\times \hat z)\\
\therefore \vec \tau&=IBwh (\hat y)
```
where $\vec r$ is the vector from the axis of rotation to the location where the force is exerted.

(sec:MagneticForce:dipolemoment)=
## Magnetic dipole moment
Describing the torque on a loop can be difficult in three dimensions, so we introduce the "magnetic dipole moment" to simplify the description.

If a closed loop carries a current, $I$, the magnetic dipole moment vector, $\vec \mu$, is defined such that it has a magnitude:
```{math}
\mu = IA
```
where $A$ is the area enclosed by the loop. The direction of the magnetic dipole moment vector is such that it is perpendicular to the surface defined by the loop. This leaves two possible directions, and the correct option is given by the right-hand rule for axial vectors; by curling the fingers in the direction of the current, the thumb will point in the direction of the magnetic dipole moment. This is illustrated in [](#fig:magneticforce:momenthand).
```{figure} figures/MagneticForce/momenthand.png
:label: fig:magneticforce:momenthand
:width: 40%
:align: center
:alt: The right hand rule for axial vectors is used to determine the direction of the magnetic dipole moment vector for a loop carrying current, $I$.
The right hand rule for axial vectors is used to determine the direction of the magnetic dipole moment vector for a loop carrying current, $I$.
```

In terms of the magnetic dipole moment, the torque on a loop with magnetic dipole moment, $\vec \mu$, immersed in a magnetic field, $\vec B$, is given by:
```{math}
\boxed{\vec \tau = \vec \mu \times \vec B}
```
The magnitude of the torque is given by:
```{math}
\tau =\mu B \sin\theta
```
where $\theta$ is the angle between the magnetic dipole moment and the magnetic field vectors.

We can verify that this formula gives the correct torque for the rectangular loop in [](#fig:magneticforce:rectangleloop) that we calculated above. The magnetic dipole moment of that loop is given by:
```{math}
\vec \mu = IA \hat z = Iwh\hat z
```
where the direction of the vector is given by the right hand rule for axial vectors (out of the page, since the current is in the counter-clockwise direction in [](#fig:magneticforce:rectangleloop)). The torque on the loop is thus:
```{math}
\vec \tau = \vec \mu \times \vec B = (Iwh\hat z) \times (B\hat x) = IBwh (\hat y)
```
as we found previously.

The magnetic dipole moment can be used to describe a current-carrying loop in a magnetic field. That is, instead of drawing a loop carrying current, we can equivalently simply draw the associated magnetic dipole moment vector. This is useful because the magnetic dipole moment vector behaves in the same way as a bar magnet (with the tip of the arrow acting like a North pole). Indeed, a magnetic field will always create a torque that will try to align the magnetic dipole moment with the magnetic field, just as the needle of a compass experiences a torque if it is not aligned with the magnetic field of the Earth. The torque from the magnetic field is then zero when the magnetic dipole moment is parallel to the magnetic field (as the cross-product between co-linear vectors is zero). 

[](#fig:magneticforce:looptorque) shows a way to visualize a current-carrying loop in a magnetic field using its magnetic dipole moment vector, $\vec \mu$.  
```{figure} figures/MagneticForce/looptorque.png
:label: fig:magneticforce:looptorque
:width: 40%
:align: center
:alt: Three loops of current with different orientations relative to a uniform magnetic field. The loops are seen from above, and the current is shown coming in and out of the page on each loop, along with the corresponding magnetic dipole moment vector. 
Three loops of current with different orientations relative to a uniform magnetic field. The loops are seen from above, and the current is shown coming in and out of the page on each loop, along with the corresponding magnetic dipole moment vector. 
```
Three loops are shown (as lines), seen from above, and the direction of the current in each loop is shown as going in or out of the page. Equivalently, one can simply draw the magnetic dipole moment vector for each loop (perpendicular to the plane of the loop). For the top loop, the magnetic dipole moment is parallel to the magnetic field, so the magnetic field exerts no torque. For the middle loop, the magnetic dipole moment makes an angle $\theta$ with the magnetic field vector, so that the torque on that loop has a magnitude given by $\tau=\mu B \sin\theta$, and points into the page (clockwise rotation). The bottom loop makes an angle of $-\pi/2$ with the magnetic field, which results in a torque in the counter-clockwise direction. In all cases, the torque is such that it always tries to align the magnetic dipole moment vector with the magnetic field, just as if the magnetic dipole moment were the needle of a compass. 

:::{note} Example 20.3
Determine the magnetic dipole moment of the electron orbiting a hydrogen atom, if you assume that the electron is in a circular orbit with a radius of $R=0.5 \overset{\circ}{\rm A}$.
:::{note} Solution
:class: dropdown
As the electron orbits around the circle, it results in a circular loop of current, $I$. The current is the rate at which charge passes through a point per unit time. If the electron orbit has a period, $T$, then the corresponding current, $I$, is given by:
```{math}
I=\frac{\Delta Q}{\Delta t} = \frac{e}{T}
```
The centripetal force on the electron is provided by the Coulomb force, $F_C$, exerted by the proton, which allows us to obtain the orbital speed, and thus the period of the orbit:
```{math}
F_C &= m\frac{v^2}{R}\\
k\frac{e^2}{R^2}&= m\frac{v^2}{R}\\
\therefore v &=\sqrt{\frac{ke^2}{mR}}\\
\therefore T &= \frac{2\pi R}{v}
```
The magnetic dipole moment is then given by:
```{math}
\mu &= IA\\
&= \frac{e}{T} \pi R^2\\
& = \frac{ev}{2\pi R} \pi R^2\\
&=\frac{1}{2} evR\\
&=\frac{1}{2} \sqrt{\frac{ke^4R}{m}}\\
&=\frac{1}{2} \sqrt{\frac{(9e9 {\rm N/C^{2}\cdot m^2})(1.6e-19 {\rm C})^4(0.5 \overset{\circ}{\rm A})}{(9.1e-31 {\rm kg})}}\\
&=9\times 10^{24} {\rm A\cdot m^2}
```
**Discussion:** In this example we calculated the orbital magnetic dipole moment of the electron in a hydrogen atom. This was a very simple model, since in reality, electrons do not orbit atoms in circular orbits, and one must use quantum mechanics to describe the motion precisely. 
:::


## Potential energy for a magnetic moment in a magnetic field
A magnetic dipole moment in a magnetic field behaves in the same way as an electric dipole in an electric field. By analogy, we can define a potential energy, $U$, for a magnetic dipole moment, $\vec \mu$, in a magnetic field, $\vec B$:
```{math}
\boxed{U =-\vec \mu \cdot \vec B =- \mu B \cos\theta}
```
where $\theta$ is the angle between the magnetic moment and the magnetic field. If a magnetic dipole is not aligned with a magnetic field and it is released, it will start to rotate (gain rotational kinetic energy) until it reaches a minimum in potential energy ($\theta = 0$). The magnetic moment would oscillate back and forth about $\theta =0$ if there are no losses. Note that the point where $\theta = \pi$, is an unstable equilibrium.
:::{tip} Checkpoint
When a magnetic dipole moment is parallel with a magnetic field and points in the same direction as the magnetic field, it will have...
1.  ... its maximum torque and maximum potential energy.
2.  ... its maximum torque and minimum potential energy.
3.  ... its minimum torque and maximum potential energy.
4.  ... its minimum torque and minimum potential energy. 
:::{tip} Answer
:class: dropdown
4.
:::

:::{tip} Checkpoint
When a magnetic dipole moment is placed such that the torque from the magnetic field is maximized, it will have...
1.  ... zero potential energy. 
2.  ... its minimum potential energy.
:::{tip} Answer
:class: dropdown
1.
:::

# The Hall Effect
[](#fig:magneticforce:hallV) shows a simple circuit to illustrate the Hall effect. A flat slab of metal, with width $w$, is connected to a battery, so that current flows through the slab. The slab is immersed in a uniform magnetic field, $\vec B$, that is perpendicular to the plane of the slab.
```{figure} figures/MagneticForce/hallV.png
:label: fig:magneticforce:hallV
:width: 40%
:align: center
:alt: Illustration of the Hall effect, as electrons flow through a slab that is immersed in a magnetic field, the magnetic force pushes them to one side, creating an electric potential difference, $\Delta V_{Hall}$, transverse to the motion of the current through the slab.
Illustration of the Hall effect, as electrons flow through a slab that is immersed in a magnetic field, the magnetic force pushes them to one side, creating an electric potential difference, $\Delta V_{Hall}$, transverse to the motion of the current through the slab.
```
As the electrons enter the right-hand side of the slab ([](#fig:magneticforce:hallV)) and drift towards the left, they will experience an upwards force from the magnetic field. As they move to the left through the slab, they also move upwards and "pile up" on that side of the slab. There will thus be an excess of negative charge on the top side of the slab, leading to an electric potential difference between the top and the bottom of the slab. This potential difference is called the "Hall potential", $\Delta V_{Hall}$. An equilibrium between the magnetic force and the electric force associated with the Hall potential is quickly reached, so that the Hall potential remains constant.

If we model the slab as two parallel plates, with a potential difference, $\Delta V_{Hall}$, between them, the electric field in the slab is constant and given by:
```{math}
E= \frac{\Delta V_{Hall}}{w}
```
The equilibrium condition (that the electric force on an electron is equal to the magnetic force) is given by:
```{math}
F_E &= F_B\\
eE &= ev_dB\\
\frac{\Delta V_{Hall}}{w} &= v_d B\\
\therefore \Delta V_{Hall}&= v_d wB
```
If the drift velocity of electrons is known, then the Hall effect can be used to measure the strength of the magnetic field by simply measuring the Hall voltage. This is the most common way to measure the strength of a magnetic field (and the device to do so is called a Hall probe). Conversely, if the magnetic field is known, the Hall effect can be used to characterize the drift velocity of electrons and other microscopic quantities for the material from which the Hall probe is made.

The Hall effect allows us to determine that it is negative charges that flow, and not positive charges. Indeed, consider [](#fig:magneticforce:hallV), but replace the electrons with positive charges flowing to the right, which is equivalent as far as analysing the circuit goes. In this case, those positive charges will be deflected upwards. Thus, if positive charges flow, the top side of the Hall probe becomes positive, whereas it becomes negative if it is negative charges that flow. By measuring the sign of the Hall potential, one can show that it is electrons that flow in an electric current.

# Applications
In this section, we briefly outline a few applications of the magnetic force.
## Velocity selector and mass spectrometer
In [Example 20.1](#ex:magneticforce:massspec), we described how charged particles with different charge-to-mass ratios will undergo uniform circular motion with different radii, if they all have the same speed. This principle is used in mass spectrometers, which are devices that are able to detect trace amounts of matter in a sample. For example, when your bag gets swiped with a sticky tape at a security check at the airport, that piece of sticky tape is then analysed by a mass spectrometer.

The tape is vaporized in a way to ionize the atoms on the tape. The ions are then accelerated through an electric potential difference and then pass through a region with a magnetic field. The ions typically execute half of a circular orbit before being detected, as illustrated in [](#fig:magneticforce:massspec). The charge-to-mass ratio of the ions is determined from the radius of their orbit. Usually, their charge is either one or two times the electron charge, allowing their mass to be determined. 
```{figure} figures/MagneticForce/massspec.png
:label: fig:magneticforce:massspec
:width: 40%
:align: center
:alt: Illustration of how a mass spectrometer can separate ions based on their charge-to-mass ratio. A detector is placed to measure the number of ions that appear at each radius, allowing the composition of a sample to be determined.
Illustration of how a mass spectrometer can separate ions based on their charge-to-mass ratio. A detector is placed to measure the number of ions that appear at each radius, allowing the composition of a sample to be determined.
```

In order for the mass spectrometer to function as designed, it is important that all of the charged particles enter the region of magnetic field with the same speed. A velocity selector is a device that combines perpendicular electric and magnetic fields in order to select only particles of a certain speed, regardless of their mass. The velocity selector is illustrated in [](#fig:magneticforce:vselector)
```{figure} figures/MagneticForce/vselector.png
:label: fig:magneticforce:vselector
:width: 40%
:align: center
:alt: Illustration of a velocity selector. Only charged particles with a specific speed can make it through without colliding with one of the plates.
Illustration of a velocity selector. Only charged particles with a specific speed can make it through without colliding with one of the plates.
```
In a velocity selector, both an electric and a magnetic force are exerted. [](#fig:magneticforce:vselector) shows a positive particle moving toward the right with speed $v$. The particle will experience an upwards electric force and a downwards magnetic force. If those two forces are equal, then the particle will move in a straight line. If, instead, one of the forces is larger than the other, the particle will be deflected and hit one of the charged plates. The condition for the two forces to be equal is given by:
```{math}
F_B &= F_E\\
qvB &= qE\\
\therefore v=\frac{E}{B}
```
Thus, the electric and magnetic fields can be tuned so that their ratio gives the desired speed. Note that the speed selector works regardless of the sign of the charge or its mass, which makes it ideal to filter the particles entering a mass spectrometer.
## Galvanometer
The galvanometer makes use of the magnetic force in order to measure electric current. In a galvanometer, a coil (composed of many loops) is placed in a known magnetic field. As current passes through the coil, the magnetic dipole moment of the coil increases, and the magnetic field exerts a torque on the coil. The torque from the magnetic force is balanced by the restoring torque of a torsional spring (a coil spring). A needle is attached to the coil, and the deflection of the needle, proportional to the current in the coil, is then a measure of the current through the coil. A galvanometer is illustrated in [](#fig:magneticforce:galvanometer).
```{figure} figures/MagneticForce/galvanometer.png
:label: fig:magneticforce:galvanometer
:width: 70%
:align: center
:alt: Illustration of a galvanometer. Current passes through the coil, and the coil rotates due to the torque from a magnetic field created by a permanent magnet. The torque from the magnetic force is balanced by a torsional spring.
Illustration of a galvanometer. Current passes through the coil, and the coil rotates due to the torque from a magnetic field created by a permanent magnet. The torque from the magnetic force is balanced by a torsional spring.
```
## Electric motor
In an electric motor, a current-carrying coil is immersed in a fixed and uniform magnetic field. As current passes through the coil, the coil experiences a torque and rotates. Once the coil has reached a position where its magnetic dipole moment vector is parallel to the magnetic field, the direction of the current is reversed, so that the coil continues to feel a torque for another half turn, until the direction of the current is reversed again. This is illustrated in [](#fig:magneticforce:dcmotor).

```{figure} figures/MagneticForce/dcmotor.png
:label: fig:magneticforce:dcmotor
:width: 65%
:align: center
:alt: Illustration of a DC electric motor. Current circulates in the coil resulting in a torque from the magnetic field. Once the coil is aligned with the magnetic field, the direction of the current in the coil is inverted, so that the coil continues to feel a torque. The current is inverted using mechanical brushes that reverse the leads on the coil every half turn.
Illustration of a DC electric motor. Current circulates in the coil resulting in a torque from the magnetic field. Once the coil is aligned with the magnetic field, the direction of the current in the coil is inverted, so that the coil continues to feel a torque. The current is inverted using mechanical brushes that reverse the leads on the coil every half turn.
```

## Cathode ray tube
The cathode ray tube is the main component of old televisions and monitors. In those devices, a beam of electrons is accelerated by an electric potential difference. The electrons then hit a phosphorescent screen that emits light when the electrons collide with the screen. A magnetic field is used to deflect the electron beam to different parts of the screen and create the desired image, in a rapid sweeping motion, fast enough that the human eye cannot detect the sweeping motion. An example of a cathode ray tube is shown in [](#fig:magneticforce:crt).

```{figure} figures/MagneticForce/crt.png
:label: fig:magneticforce:crt
:width: 60%
:align: center
:alt: Illustration of a cathode ray tube from a side view (top) and a top view (bottom). A magnetic field is used to deflect a beam of electrons onto a screen. The perpendicular magnetic fields are used to sweep the beam rapidly across the whole screen to create an image.
Illustration of a cathode ray tube from a side view (top) and a top view (bottom). A magnetic field is used to deflect a beam of electrons onto a screen. The perpendicular magnetic fields are used to sweep the beam rapidly across the whole screen to create an image.
```

## Loudspeaker
In a loudspeaker, a coil is immersed in a non-uniform magnetic field. The coil is attached to a membrane so that the membrane moves with the coil when a magnetic force is exerted on the coil. AC current circulates in the coil, with the same frequencies as the desired sound. The coil then moves at those frequencies and the membrane then displaces the air, creating the desired sound waves.
```{figure} figures/MagneticForce/speaker.png
:label: fig:magneticforce:speaker
:width: 60%
:align: center
:alt: Illustration of a loud speaker. As current moves through the coil, the coil is pushed back and forth by the magnetic force exerted by a permanent magnet. The motion is transferred to a membrane that move the air and creates the sound wave.
Illustration of a loud speaker. As current moves through the coil, the coil is pushed back and forth by the magnetic force exerted by a permanent magnet. The motion is transferred to a membrane that move the air and creates the sound wave.
```


# Summary
In order to describe the magnetic force, we introduced the magnetic field, $\vec B$. While there are some similarities with the electric field, the key difference in magnetism is that there are no "magnetic charges" (so-called monopoles), and magnets thus always have a North *and* a South pole. As a result, magnetic field lines never end and must always form closed loops. The magnetic field points in the direction of the force that would be exerted on the North pole of a magnet placed at that position.

Electric charges can feel a force from a magnetic field only if they are moving relative to the frame of reference in which the magnetic field is described. If a charge, $q$, has velocity, $\vec v$, in a magnetic field, $\vec B$, it will feel a magnetic force given by:
```{math}
\vec F_B =q \vec v \times \vec B
```
The magnetic force can do no work, since it always acts in a direction perpendicular to the velocity (and thus to the displacement). The magnetic field acts in opposite directions for charges of opposite signs.

In a uniform magnetic field, a charged particle with charge, $q$, mass $m$, and velocity vector, $\vec v$, perpendicular to a magnetic field, $\vec B$, will undergo uniform circular motion, with a cyclotron radius, $R$, given by:
```{math}
R &= \frac{mv}{qB}
```

A straight wire of length, $l$, carrying current, $I$, will experience a magnetic force in a magnetic field, $\vec B$:
```{math}
\vec F_B = I \vec l \times \vec B
```
where the vector $\vec l$ points in the same direction as the current.

If the wire is curved (or the magnetic field changes direction along the wire), then we can integrate the force, $d\vec F$, exerted on each infinitesimal section of wire with length, $d\vec l$. Again, the direction of $d\vec l$ is in the same direction as the current in the wire. The infinitesimal force on an infinitesimal section of wire, is given by:
```{math}
d\vec F = I d\vec l \times \vec B
```

A closed loop of wire carrying current will experience no net force in a uniform magnetic field. However, it will experience a torque, if the loop is not "aligned" with the magnetic field (the torque is zero if the magnetic field is perpendicular to the plane of the loop). We define the magnetic dipole moment, $\vec \mu$ of a loop of wire carrying current, $I$, to be a vector with magnitude:
```{math}
\mu = IA
```
where $A$ is the area enclosed by the loop. The magnetic dipole moment vector is perpendicular to the plane of the loop, and points in the direction given by the right-hand rule for axial vectors applied to the current (think of the current as rotating in the loop).

The torque from a magnetic field, $\vec B$, exerted on a loop with a magnetic dipole moment, $\vec \mu$, is given by:
```{math}
\vec \tau = \vec \mu \times \vec B
```
The torque is zero when the magnetic dipole moment vector is parallel to the magnetic field vector (corresponding to the loop being "aligned" with the magnetic field). One can think of the magnetic dipole moment as a small bar magnet, or the needle of a compass, that always experiences a torque to align it with a magnetic field.

We can define the potential energy of a magnetic dipole moment in a magnetic field as:
```{math}
U= -\vec \mu \cdot \vec B = \mu B \cos\theta
```

The Hall effect can be observed when current flows through a slab that is immersed in a magnetic field that is perpendicular to the slab. As the electrons move longitudinally through the slab, they will also be pushed to one side by the magnetic force, resulting in an excess of negative charge on that side. An electric potential difference (the "Hall potential") is then established between the two sides of the slab (in the direction perpendicular to the motion of the electrons). The Hall potential is given by:
```{math}
\Delta V_{Hall}&= v_d wB
```
where $w$ is the width of the slab in the perpendicular direction, $B$ is the strength of the magnetic field, and $v_d$ is the drift velocity of electrons. The most common use of the Hall effect is to build a Hall probe to measure magnetic fields. However, Hall probes can also measure the drift velocity of electrons and other microscopic properties. The sign of the Hall potential also indicates the sign of the charges moving in the slab.

There are many applications of the magnetic force in our daily lives, including electric motors, loudspeakers, cathode ray tubes, mass spectrometers, and galvanometers.


:::{important} Important Equations
**Magnetic force on a moving charge:**
```{math}
\vec F_B &= q\vec v\times \vec B
```

**Magnetic force on a current-carrying wire:**
```{math}
\vec F_B = I \vec l \times \vec B
```

**Cyclotron radius:**
```{math}
R &= \frac{mv}{qB}
```

**Magnetic dipole moment:**
```{math}
\mu = IA
```

**Torque on a magnetic dipole:**
```{math}
\vec \tau &= \vec \mu \times \vec B
```
:::

:::{important} Important Definitions
* **Magnetic field:** A field used to model the magnetic force. SI units: ${\rm \left[{T}\right]}$. Common variable(s): $\vec B$.
* **Magnetic dipole moment:** A property of an object which describes the torque it will experience in a magnetic field. SI units: ${\rm \left[{C\cdot m^2\cdot s^{-1}}\right]}$. Common variable(s): $\vec \mu$.
:::


# Thinking about the material

:::{seealso} Reflect and research
* When was magnetism first discovered?
* What is the origin of the word "magnetism"?
* What experiments support that magnetic monopoles do not exist?
* What did J.J. Thomson measure, and how?
* How do debit and credit cards use magnetism?
:::

:::{seealso} To try at home
* Attempt to construct a compass using household materials.
:::

:::{seealso} To try in the lab
* Propose an experiment to measure the magnitude of Earth's magnetic field.
* Propose an experiment to construct a galvanometer and test its accuracy.
:::


# Sample problems and solutions

## Problems
:::{note} Problem 20.1
:label: prob:magneticforce:crt 
A cathode ray tube in a television accelerates an electron from rest using a potential difference of $\Delta V=500 {\rm V}$. Once it exits the tube, the electron must be deflected upwards by a distance $h=3 {\rm cm}$ using a uniform magnetic field, $\vec B$, before striking the phosphorescent screen, which is a distance $d= 5 {\rm cm}$ away. What direction and magnitude must the magnetic field have in order to steer the electron towards its destination?
:::

:::{note} Problem20.2
:label: prob:magneticforce:galvanometer 
A galvanometer has a square coil with a side length of $a=2.5 {\rm cm}$ and $N=70 {\rm }$ loops between two magnets which generate a radial magnetic field of $B=8 {\rm mT}$. When a current runs through the coil, it generates a torque which is opposed by a spring with a torsional spring constant of $\kappa = 1.5\times 10^{-8} {\rm Nm~rad^{-1}}$. If the deflection of the galvanometer's needle is $0.7 {\rm rad}$, what is the current running through the coil?
:::

:::{note} Problem 20.3
:label: prob:magneticforce:torque 
Integrate the torque over a circular path, using the equation $d\vec F = Id\vec l \times \vec B$, to show that the torque exerted on a circular loop of radius, $R$, carrying current, $I$, immersed in a uniform magnetic field, $\vec B$, has a magnitude given by $\tau=\mu B$, where $\vec \mu$ is the magnetic dipole moment of the loop. You may simplify the problem by modelling the loop when its magnetic moment is perpendicular to the magnetic field.
:::

## Solutions
:::{note} Solution 20.1
:label: soln:magneticforce:crt
:class: dropdown
First, we determine the velocity of the electron that were accelerated over a potential difference of $\Delta V=500 {\rm V}$. Their kinetic energy is given by their charge times the potential difference::
```{math}
K &= e\Delta V \\
\frac{1}{2} mv^2 &= e\Delta V\\
\therefore v &= \sqrt{\frac{2e\Delta V}{m}}= \sqrt{\frac{2(1.602e-19 {\rm C})(500 {\rm V})}{(9.109e-31 {\rm kg})}}\\
 &= 1.326e7 {\rm ms^{-1}}
```
Now that we have the velocity, we must determine the direction of the magnetic field. We know that the electron is moving directly towards the phosphorescent screen (which we will define as $\vec x$) and the electron must be deflected directly upwards (which we will define as $\vec z$). Knowing this, we can use the right hand rule to quickly determine that the magnetic force will be acting in the $-\vec y$ direction. 

In the region with a magnetic field, the electron will undergo uniform circular motion with a radius give by the cyclotron radius, $R$:
```{math}
R=\frac{mv}{qB}
```

We thus need to determine the radius of that circle for the electron to arrive that desired location on the screen. A section of the circle about which the electron moves is illustrated in [](#fig:magneticforce:deflection).
```{figure} figures/MagneticForce/deflection.png
:label: fig:magneticforce:deflection
:width: 20%
:align: center
:alt: Deflection of an electron moving in a uniform magnetic field.
Deflection of an electron moving in a uniform magnetic field.
```
From geometry and Pythagoras' Theorem, we have:
```{math}
R^2 &= (R-h)^2+d^2\\
R^2 &= R^2-2Rh+h^2+d^2\\
\therefore R &= \frac{h^2+d^2}{2h}=\frac{(3 {\rm cm})^2+(5 {\rm cm})^2}{2(3 {\rm cm})}=5.67 {\rm cm}
```
The strength of the magnetic field is then given by:
```{math}
B&=\frac{mv}{qR}=\frac{(9.11e-31 {\rm kg})(1.326e7 {\rm ms^{-1}})}{(1.6e-19 {\rm C})(0.0567 {\rm m})}=0.00133 {\rm T}
```
:::


:::{note} Solution 20.2
:label: soln:magneticforce:galvanometer
:class: dropdown
First, we will determine the magnetic dipole moment of the square coil:
```{math}
\mu &= NIA\\
\mu &=NIa^2
```
Now that we have the magnetic dipole moment, we can calculate the torque on the square coil that is produced by the magnetic field. Note that, in a galvanometer, the magnetic field is configured such that it is radial and always perpendicular to the magnetic dipole moment of the coil:
```{math}
\tau_B &= \mu B sin(90 {\rm \degree})= NIa^2B\\
```
The deflection, $\theta$, for a given current will occur when the torque produced by the wire is equal to the torque produced by the spring. The torque produced by the spring is given by:
```{math}
\tau_s =\kappa \theta
``` 
where $\theta$ is measured in radians. The above equation is the rotational equivalent of Hooke's Law. Equating the torque from the spring and from the magnetic field, we can determine the current:
```{math}
\tau_B&=\tau_S\\
NIa^2B &= \kappa \theta\\
I &= \frac{\kappa \theta}{Na^2B} = \frac{(1.5e-8 {\rm Nm(rad)^{-1}}) (0.7 {\rm rad})}{70(0.025 {\rm m})^2(8e-3 {\rm T})}\\
&= 30 {\rm \mu A}
```
:::

:::{note} Solution 20.3
:label: soln:magneticforce:torque
:class: dropdown
[](#fig:magneticforce:proof1) illustrates a loop of radius, $R$, carrying current, $I$. The loop is in the $x-z$ plane, and there is a magnetic field, $\vec B$, in the negative $x$ direction. By setting the loop up this way, it is easier to visualize some of the three-dimensional aspects.
```{figure} figures/MagneticForce/proof1.png
:label: fig:magneticforce:proof1
:width: 50%
:align: center
:alt: A current-carrying loop in a magnetic field.
A current-carrying loop in a magnetic field.
```
Consider an infinitesimal section of the loop, with length, $dl$, located on the loop at a position labelled by the angle, $\theta$, as illustrated. The vector, $d\vec l$, is given by:
```{math}
d\vec l  = dl (-\sin\theta \hat x + \cos\theta \hat z)
```
The magnetic force on that element of the loop is given by:
```{math}
d\vec F &=Id\vec l \times \vec B\\
&=Idl(-\sin\theta \hat x + \cos\theta \hat z) \times (-B\hat x)\\
&=-IBdl\cos\theta (\hat z \times \hat x)\\
&=-IBdl\cos\theta\hat y
```
and the force on that element of wire is out of the page (negative $y$ direction), as illustrated. That infinitesimal force will create an infinitesimal torque:
```{math}
d\vec \tau = \vec r \times d\vec F
```
where $\vec r$ is the vector from the axis of rotation (through the centre of the loop, parallel to the $z$ axis) to the point where the force is exerted. The length of the vector, $\vec r$, is simply $r=R\cos\theta$, and the force is perpendicular to the vector $\vec r$. Thus, the torque on the infinitesimal element is given by:
```{math}
d\vec \tau &= \vec r \times d\vec F\\
&= (R\cos\theta \hat x)\times (-IBdl\cos\theta\hat y)\\
&=-IBR\cos^2\theta dl (\hat x \times \hat y)\\
&=-IBR\cos^2\theta dl \hat z
```
and the torque on that infinitesimal element is in the negative $z$ direction, as anticipated from the direction of the force. Note that had we considered the loop to be oriented such that the magnetic field is not in the plane of the loop, the vector $\vec r$ in the torque would have a component in the $y$ direction. 

We can sum the torques on each element of the loop, from $\theta = 0$ to $\theta=2\pi$. We can express the length, $dl$, using the infinitesimal angle, $d\theta$, that subtends the arc of length, $dl$, on the circle of radius, $R$:
```{math}
dl = Rd\theta
```

The net torque is then given by:
```{math}
\vec \tau &= \int d\vec \tau\\
&=\int -IBR\cos^2\theta dl \hat z\\
&= (-IBR^2\hat z)\int_0^{2\pi} \cos^2\theta d\theta\\
&=(-IBR^2\hat z)\pi
```
The magnetic moment of the loop is:
```{math}
\mu = IA = I\pi R^2
```
so that the torque is indeed given by $\tau = \mu B$. If we had rotated the loop so that the vector, $\vec r$, had a $y$ component, then we would have found the general formula with a cross-product.
:::




