/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Chapter 9 - Gravity

=== Overview <chapter:gravity>

In previous chapters, we have so far learned about Newton's Theory of Classical Mechanics, which allowed us to model the motion of an object based on the forces acting on the object. In this chapter, we present the theories that describe the force of gravity itself. We will see several theories of gravity and focus primarily on Newton's Universal Theory of Gravity.

#hintBlock(heading: [Learning Objectives])[
- Understand Kepler's Laws.
- Understand Newton's Universal Theory of Gravity.
- Understand Gauss's law and the gravitational field.
- Understand how to use energy to describe orbits.
- Understand how Einstein's General Theory of Relativity differs from Newton's theory of gravity.
]

#noteBlock(heading: [Think About It])[
A person stands on a scale at the top of Mount Logan, the tallest mountain in Canada. How will her measured weight compare to her weight at sea level?\}

+ It will be slightly less than her weight at sea level.
+ It will be equal to her weight at sea level.
+ It will be slightly more than her weight at sea level.

#noteBlock(heading: [Answer])[
+
]
]

=== Kepler's Laws <keplers-laws>

Although humans have long been fascinated by the motion of objects in the sky, it was Johannes Kepler, in the early seventeenth century, that was the first to write down quantitative rules that described the motion of planets around the Sun. His theory was based on the extensive and detailed observations recorded by Tycho Brahe in the late sixteenth century.

Kepler proposed three laws that describe all of the data that Tycho Brahe had collected about planetary motion:

+ The path of a planet around the Sun is described by an ellipse with the Sun at one of its foci.
+ All planets move in such a way that the area swept by a line connecting the planet and the Sun in a given period of time is constant.
+ The ratio between the orbital periods, $T$, of two planets squared is equal to the ratio of the semi-major axes, $s$, of their orbits cubed:

$ (frac(T_1, T_2))^2 =(frac(s_1, s_2))^3 $
We examine these three laws in more detail in the sections that follow. It should also be noted that, even though Kepler's Laws were derived for planets orbiting the Sun, they apply to any body that is orbiting any other body under the influence of gravity#footnote[In fact, they apply for any two bodies orbiting each other if the force between them is an "inverse-square" law, such as the gravitational and electric forces.].

==== Kepler's First Law <keplers-first-law>

Kepler noticed that the motion of all planets followed the path of an ellipse with the Sun located at one of its foci. @fig:gravity:ellipse shows a diagram of an ellipse, along with its two foci, its semi-major axis, $s$, its semi-minor axis, $b$, and its eccentricity, and the distance between a focus and the centre of the ellipse, $c$. We define the eccentricity, $e$ of the ellipse as the ratio $e = frac(c, s)$. The eccentricity is a measure of how far a focus is from the centre of the ellipse. A larger eccentricity thus corresponds to a "flatter" ellipse. Note that a circle is just a special case of an ellipse, with both foci located at the centre of the circle. The eccentriciy of a circle is thus 0.

#show figure: set block(breakable: true)
#figure(
  image("files/ellipse-b667a65c43d5aca4ae37d847a50bedd1.png", width: 50%),
  caption: [
A ellipse, showing its two foci, its semi-major axis, $s$, its semi-minor axis, $b$, and the distance between a focus and the centre of the ellipse, $c$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:ellipse>

The sun is located at one of the foci. The point of closest approach to the Sun is called the "perihelion" of the orbit (or "perigee" if the orbit is around the Earth), and the point furthest from the Sun is called the "aphelion" of the orbit (or "apogee" if the orbit is around the Earth), as shown in @fig:gravity:perigeeapogee.

#show figure: set block(breakable: true)
#figure(
  image("files/periapogee-c6a3c9e74d40c0700ad95bdce1e3e6d3.png", width: 70%),
  caption: [
The orbit of the Earth around the Sun, showing the perihelion and aphelion, and the orbit of the Moon around the Earth, showing the perigee and the apogee. (Not to scale.)
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:perigeeapogee>

#tipBlock(heading: [Checkpoint Order the ellipses from smallest eccentricity to largest eccentricity.])[
#show figure: set block(breakable: true)
#figure(
  image("files/eccellipses-23574212dfb6295ea0c1558daf1b860e.png", width: 70%),
  caption: [
Three ellipses, each with a different eccentricity.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:eccellipses>

#tipBlock(heading: [Answer])[
$A < C < B$
]
]

==== Kepler's Second Law <keplers-second-law>

Kepler's Second Law is really a statement about the speed of a planet in an elliptical orbit. It states that the area swept by a line connecting the planet and the Sun in a given period of time is fixed. This is illustrated in @fig:gravity:ellipse2, which shows the elliptical orbit of a planet around the Sun located at one of the foci, and the area swept out when the planet goes from $A$ to $B$ and from $C$ to $D$.

#show figure: set block(breakable: true)
#figure(
  image("files/ellipse2-0f794ab73ee184ae96b7cea9e0ddef9e.png", width: 45%),
  caption: [
Illustration of Kepler's Second Law, showing the area that is "swept" by a planet in a fixed period of time.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:ellipse2>

Kepler's Second Law states that the two areas that are shown by the greyed out sections in the figure are the same if the planet took the same amount of time to travel between points $A$ and $B$ as it did to travel between points $C$ and $D$. Because the points $C$ and $D$ are further away from the Sun than points $A$ and $B$, the distance between points $C$ and $D$ must be smaller than the distance between points $A$ and $B$ for the two areas to be the same. This, in turn, implies that the planet must be moving slower between $C$ and $D$ than between points $A$ and $B$. The speed of a planet is thus greatest at the perihelion and smallest at the aphelion. As we will see in a later chapter, Kepler's Second Law is equivalent to the statement that the angular momentum of the planet about the Sun is conserved.

#tipBlock(heading: [Checkpoint])[
Based on Kepler's second law, what can you say about the speed of a planet in a *circular* orbit?

#tipBlock(heading: [Answer])[
The speed of the planet is constant.
]
]

==== Kepler's Third Law <keplers-third-law>

Kepler's Third Law is quantitative and relates the orbital periods ($T$) and the semi-major axes ($s$) between any two planets in orbit around the Sun:

$ (frac(T_1, T_2))^2 =(frac(s_1, s_2))^3 $
We can re-arrange this relation so that all of the quantities related to one planet are on the same side of the equal sign:

$ frac(T_1^2, s_1^3) = frac(T_2^2, s_2^3) = "constant" $
In other words, the ratio between the orbital period squared and the semi-major axis cubed is a constant, independent of the particular planet. In @ex:gravity:keplerconstant, we will use Newton's Universal Theory of Gravity to evaluate the constant.

#tipBlock(heading: [Checkpoint])[
An object is in a circular orbit with radius $r$ and has an orbital speed $v$. If you double the radius of the circular orbit, what will be the value of the orbital speed?\}

+ $2 v$
+ $8 v$
+ $sqrt(8) v$.
+ $frac(1, sqrt(2)) v$

#tipBlock(heading: [Answer])[
+
]
]

=== Newton's Universal Theory of Gravity <newtons-universal-theory-of-gravity>

Newton supposedly gained insight into the gravitational force by observing an apple falling from a tree and concluding that if it is the same force that makes apples fall at sea level and at the top of a mountain, perhaps that force can be exerted all the way up to the moon. It is rather remarkable that Newton was able to make the connection between falling apples and the motion of the moon around the Earth to find a single theory to describe both situations.

We should be clear that the theory of gravity is a different theory than Newton's "Laws of Motion" (Newton's Three Laws). The Laws of Motion introduce the concepts of force and inertial mass, and prescribe how to use those concepts in order to model motion using kinematics. Newton's Universal Theory of Gravity is a theory that describes the force of gravity that two bodies with (gravitational) mass exert on each other.

Newton's Universal Theory of Gravity states that if two bodies, with masses $M_1$ and $M_2$, located at positions $arrow(r)_1$ and $arrow(r)_2$, respectively, are separated by a distance, $r$, then $M_2$ will exert an attractive force on $M_1$, $arrow(F)_(1 2)$, given by:

$ arrow(F)_(1 2) = -G frac(M_1 M_2, r^2) hat(r)_(2 1) $
where $hat(r)_(2 1)$ is the unit vector from $M_2$ to $M_1$:

$ arrow(r)_(2 1) & = arrow(r)_2 -arrow(r)_1 \
hat(r)_(2 1) & = frac(1, r) arrow(r)_(2 1) $
as shown in @fig:gravity:gvectors. $arrow(F)_(1 2)$ should be read as "the force on body 1 from body 2". $G = 6 . 6 7 times 1 0^(-1 1) upright N m^2 \/ k g^2$ is Newton's Universal Constant of Gravity. It should be noted that Newton's theory for the force of gravity written in this form only applies to either point masses (separated by a distance $r$) or spherical bodies whose centres are separated by a distance $r$ that is larger than the radius of either sphere.

#show figure: set block(breakable: true)
#figure(
  image("files/gvectors-91e8672d8ac9e04278a36af498a9363f.png", width: 40%),
  caption: [
Illustration of the vectors involved in Newton's Universal Theory of Gravity.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:gvectors>

Originally, Newton argued that the force of gravity would be proportional to the masses of the bodies, and inversely proportional to the square of the distance between them:

$ F_(1 2) prop frac(M_1 M_2, r^2) $
and $G$ is simply the constant of proportionality.

Because of Newton's Third Law, body 1 exerts a force on body 2 that is equal in magnitude but opposite in direction:

$ arrow(F)_(1 2) = -arrow(F)_(2 1) $
#noteBlock(heading: [Example 9.1])[
Calculate the magnitude of the force of gravity between yourself and a person standing $5 0 upright c m$ from you and compare that to your weight at the surface of the Earth (the force of gravity exerted by the Earth on you).\}

#noteBlock(heading: [Solution])[
If we assume that the two people have a mass of $5 0 upright k g$, the force of gravity exerted by one on the other, if they are separated by $5 0 upright c m$, is given by:

$ F & = G frac(M_1 M_2, r^2) \
& =(6 . 6 7 times 1 0^(-1 1) upright N m^2 \/ k g^2) frac((5 0 upright k g)(5 0 upright k g),(0 . 5 upright m)^2) \
& = 6 . 6 7 times 1 0^(-7) upright N $
This is a very small force, compared to their weight, $F_g$:

$ F_g & = M_1 g \
& =(5 0 upright k g)(9 . 8 upright N \/ k g) \
& = 4 9 0 upright N $
which is approximately 700 million times bigger.

*Discussion:* The force of gravity is a very weak force when compared to other forces in Nature, such as the electric force between two charges. Newton's Universal Constant of Gravity is very small, so the force of gravity between two objects is very small unless either of the masses involved are very large, or the distance between them is very small. In general, when modelling the motion of objects on the Earth, it is generally safe to ignore the forces of gravity between objects and only include their weight (the force of gravity from the Earth).
]
]

#tipBlock(heading: [Checkpoint])[
The radius of the Earth is 6371 \{\\rm km\}. What is the order of magnitude of the Earth's mass?\}

+ $1 0^(2 4) upright k g$
+ $1 0^(1 8) upright k g$
+ $1 0^(1 9) upright k g$
+ $1 0^(2 1) upright k g$
+ Not enough information.

#tipBlock(heading: [Answer])[
+
]
]

#noteBlock(heading: [Example 9.2])[
Determine the constant in Kepler's Third Law for planets orbiting the Sun, namely the value of the ratio:

$ frac(s^3, T^2) $
where $s$ is the semi-major axis and $T$ is the orbital period.

#noteBlock(heading: [Solution])[
Since Kepler's Third Law holds for any body orbiting the Sun, we can easily determine the ratio by considering a planet of mass $m$ in a circular orbit of radius $R$ centred about the Sun. The semi-major axis of the orbit is equal to the radius of the orbit for a circular orbit ($s = R$).

If the planet is in a circular orbit about the Sun, its speed, $v$, will be constant, by Kepler's Second Law, and it will thus be executing uniform circular motion. The only force exerted on the planet is the force of gravity exerted by the Sun. Thus the force of gravity must be equal to the mass of the planet times its radial (centripetal) acceleration, $a_R$, which is given by:

$ a_R = frac(v^2, R) $
Newton's Second Law for the planet can be written as:

$ sum F = F_g & = m a_R \
G frac(M m, R^2) & = m frac(v^2, R) \
G frac(M, R) & = v^2 $
where $M$ is the mass of the Sun. The speed of the planet is given by the circumference of the orbit divided by the orbital period $T$, since it is constant:

$ v = frac(2 pi R, T) $
Re-arranging the equation from Newton's Second Law:

$ G frac(M, R) & = v^2 \
G frac(M, R) & = frac(4 pi^2 R^2, T^2) \
therefore frac(R^3, T^2) & = G frac(M, 4 pi^2) $
Thus, we find that the ratio of the cube of the orbital radius to the period squared is a constant that depends only on the mass of the Sun, which will then be the same for all planets (as it does not depend on, say, the mass of the planet that we considered).

*Discussion*: The relation above can, for example, be used to determine the mass of the Sun, since we can use geometry to determine the semi-major axis for the orbit of a planet, as Kepler did with the data from Tycho Brahe.
]
]

#noteBlock(heading: [Example 9.3])[
The acceleration due to Earth's gravity depends on the force that the Earth exerts on an object. Using the Earth's mass and radius, determine the acceleration of falling objects due to Earth's gravity at the surface of the Earth. Also, determine the altitude where the acceleration due to Earth's gravity is half of that at the Earth's surface.

#noteBlock(heading: [Solution])[
We can find the acceleration due to Earth's gravity by determining the acceleration of a mass $m$ upon which gravity is the only acting force. In other words, we model an object that is in free-fall a distance $R$ away from the centre of the Earth. Newton's Second Law can be used in one dimension (corresponding to the direction that connects the falling mass to the centre of the Earth):

$ sum F & = G frac(M m, R^2) = m a \
therefore a & = G frac(M, R^2) $
where $M = 5 . 9 7 times 1 0^(2 4) upright k g$ is the mass of the Earth. At the surface of the Earth, $R = R_oplus = 6 . 3 7 1 times 1 0^6 upright m$:

$ a & = G frac(M, R_oplus^2) =(6 . 6 7 times 1 0^(-1 1) upright N m^2 \/ k g^2) frac((5 . 9 7 times 1 0^(2 4) upright k g),(6 . 3 7 1 times 1 0^6 upright m)^2) \
& = 9 . 8 1 upright m \/ s^2 $
which, of course, is the value of $g$ that we have been using so far for the acceleration due to gravity near the surface of the Earth. To find the altitude at which this is reduced by half, we first find the value of $R$ that corresponds to this acceleration:

$ frac(1, 2) G frac(M, R_oplus^2) & = G frac(M, R^2) \
therefore R & = sqrt(2) R_oplus = 9 . 0 times 1 0^6 upright m $
which corresponds to an altitude of $h = R -R_oplus = 2 6 4 0 upright k m$, well above the Earth's atmosphere.

*Discussion:* The acceleration of falling objects decreases as one moves further from the centre of the Earth. It is thus an approximation to assume that $g$ is a constant, although in most cases this is a very good approximation. In practice, the value of $g$ will depend both on the distance from the centre of the Earth and the composition (density) of the material in the Earth's crust below where $g$ is being measured. Precise measurements of $g$ have bee used to determine the composition of the Earth's crust and to search for mineral and oil deposits.
]
]

==== Weight and apparent weight <weight-and-apparent-weight>

You have probably seen images of astronauts floating around the International Space Station (ISS) or other orbiting vessels, and heard of the term "weightlessness"  to describe their motion. The ISS is in orbit at an altitude of approximately $4 0 0 upright k m$, where the force of Earth's gravity is far from negligible (in @ex:gravity:gofr we showed that one needs to go to an altitude of $2 6 4 0 upright k m$ for the force to be reduced by half of that at the surface of the Earth). The contradiction between being weightless and the fact that weight is not zero is resolved by understanding that the popular term "weightless" is imprecise from a physics perspective.

The correct term to use from a physics perspective is to say that the _apparent weight_ of the astronauts is zero when they are floating around. Weight is the magnitude of the force of gravity exerted by the Earth. Apparent weight is, for example, the force that one measures when standing on a spring scale, which is equal to the normal force exerted by the spring scale on the person. Apparent weight could also be determined by the tension in a string from which a person is suspended. The apparent weight is the sum of the forces exerted on a person minus the force of gravity. If gravity is the only force exerted on a person (or object), that person's apparent weight is zero, which is what is popularly called being weightless.

One way to feel weightless is when you are in free-fall (e.g. the first few seconds of a parachute jump from an airplane). One can think of being in orbit as continuously falling towards the centre of the Earth, but with an initial velocity in a direction such that you never actually collide with the Earth. The feeling of weightlessness will occur any time that the only force exerted on you is the force of gravity. If you are in a spacecraft in any orbit and the only force on the spacecraft is from gravity (i.e. no rockets or wings are exerting any forces), then everything in the spacecraft will have the same acceleration, since gravity is the only force acting on anything in the spacecraft, and it will appear that everything is just floating. To an outside observer, it would be clear that the spacecraft and its contents are all accelerating.

===== Effects of Earth's rotation <effects-of-earths-rotation>

Earth's rotation affects the apparent weight of objects near the Earth's surface. Consider a person standing on a spring scale at the North pole (top free-body diagram in @fig:gravity:apparentweight). The only two forces exerted on the person are their weight, $arrow(F)_g$, and the normal force, $arrow(N)$, exerted by the spring scale. Since the person is not accelerating, the normal force and the weight have the same magnitude and opposite directions. The scale will thus read the actual weight of the person#footnote[The weight that is displayed on the scale is equal in magnitude to the normal force exerted by the scale on the person. It is the reaction force to that normal force.].

#show figure: set block(breakable: true)
#figure(
  image("files/apparentweight-1bb883d1a3842318caf1d98114381ea2.png", width: 40%),
  caption: [
The apparent weight, given by the normal force, is different at the Earth's equator because a person's acceleration is non-zero as they rotate with the Earth.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:apparentweight>

Consider, instead, a person standing on a spring scale at the equator (@fig:gravity:apparentweight). That person is accelerating because they are undergoing uniform circular motion as they rotate along with the Earth. Again, the only forces acting on the person are their weight and the normal force exerted by the scale. The sum of the forces must now be equal to the person's mass, $m$, times the radial acceleration, $a_r$, that is necessary for them to follow the surface of the Earth as the Earth rotates about its axis. Newton's Second Law allows us to find the magnitude of the normal force acting on the person:

$ sum F & = F_g -N = m a_r = m frac(v^2, R) \
therefore N & = F_g -m frac(v^2, R) \
& = G frac(M m, R^2) -m frac(v^2, R) \
& = m(G frac(M, R^2) -frac(v^2, R)) \
& = m(g -frac(v^2, R)) $
where $M$ is the mass of the Earth, $R$ is the radius of the Earth, and $v$ is the speed at the surface of the Earth due to the Earth's rotation.  In the last line, we used the result from @ex:gravity:gofr where we determined the value of $g$ in terms of the mass and radius of the Earth.

We see that the normal force is reduced compared to what it would be if the Earth were not rotating ($v = 0$) or if one is standing at one of the poles. Your apparent weight, which you can measure by standing on a spring scale, is thus smaller at the equator than it is at the poles. The quantity in parenthesis can be thought of as a modified or "effective" value of $g$ at the equator.

#tipBlock(heading: [Checkpoint])[
What is the effective value of $g$ at the equator?

+ $9 . 8 0 upright m \/ s^2$
+ $9 . 7 8 upright m \/ s^2$
+ $9 . 7 0 upright m \/ s^2$
+ $9 . 5 1 upright m \/ s^2$

#tipBlock(heading: [Answer])[
+
]
]

If you are circling the Earth a distance $R$ from the centre of the Earth at a constant speed $v$, it is possible for your apparent weight to be zero. Imagine standing on a scale in an aircraft that is circling the Earth and measuring your apparent weight with the spring scale. As the speed of the aircraft increases, your apparent weight, $N$, decreases according to the formula that we just found:

$ N = m(G frac(M, R^2) -frac(v^2, R)) $
At a certain speed, $v$, your apparent weight is zero and you feel weightless:

$ G frac(M, R^2) & = frac(v^2, R) \
therefore v & = sqrt(G frac(M, R)) $
This speed corresponds to a centripetal acceleration that is exactly equal to that due to gravity. This makes sense, since gravity is the only force that is acting on you (the normal force is now zero), which is exactly what we call being in orbit.

Earth's rotation has some interesting consequences for stationary objects. At any position on Earth that is not at the equator or the poles, the sum of the forces on any stationary object (meaning stationary relative to the Earth's surface) cannot be zero. This is because the object must rotate along with the Earth, so the net force on the object must point toward the centre of the circle about which that location on Earth is rotating.

Take, for example, a plumb line, which consists of a mass hanging from a string. The two forces acting on the mass are gravity and tension. The force of gravity must point towards the centre of the Earth. We would expect that the force of tension, and therefore the string, would point directly away from the centre of the Earth. However, we find that if the plumb line is located at some angle $theta$ from the equator (but not at the equator or poles), as in @fig:gravity:apparentweight2, then the string will point slightly away from the centre of the Earth.  In order for the mass to remain stationary relative to the ground, it must rotate along with the Earth (radius $R$) around a circle of radius $R cos theta$.   Thus, the tension from the string cannot point away from the centre of the Earth, because the net force must point towards the centre of the circle of radius $R cos theta$.

#show figure: set block(breakable: true)
#figure(
  image("files/apparentweight2-c000843b2433473a77dfad5122536b17.png", width: 80%),
  caption: [
Away from the equator and poles, a plumb line (right) does not point towards the centre of the Earth, because the net force on the mass must provide the acceleration towards the centre of the circle (of radius $R cos theta$) about which the plumb line rotates due to the Earth's rotation. Note that the deflection of the plumb line is highly exaggerated.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:apparentweight2>

#tipBlock(heading: [Checkpoint])[
You cut the string of the plumb line. Where does the mass land relative to its initial latitude (the angle $theta$ in @fig:gravity:apparentweight2)?

+ At the same latitude.
+ Closer to the nearest pole.
+ Closer to the equator.

#tipBlock(heading: [Answer])[
+
]
]

==== The gravitational field <the-gravitational-field>

The gravitational force exerted on a mass $m$ by a mass $M$ can be written as:

$ arrow(F)(arrow(r)) = -G frac(M m, r^2) hat(r) $
if we define a coordinate system with the origin located at the centre of mass $M$ so that $arrow(r)$ is the position of $m$ relative to $M$. We can define the "gravitational field", $arrow(g)(arrow(r))$, at position, $arrow(r)$, due to the presence of mass $M$ as the gravitational force per unit mass exerted by $M$:

$ boxed arrow(g)(arrow(r)) = frac(arrow(F)(arrow(r)), m) = -frac(G M, r^2) hat(r) $
The word "field" is just a mathematical term for a function that depends on position. Since $arrow(g)(arrow(r))$ is a vector, we would refer to it as a "vector field".

Defining the gravitational field makes it easy to calculate the force of gravity from $M$ on any mass $m$:

$ arrow(F)_g = m arrow(g)(arrow(r)) $
At the surface of the Earth, the magnitude of the gravitational field is given by:

$ g(R_oplus) = frac(G M, R_oplus^2) = 9 . 8 1 upright N \/ k g $
where $R_oplus$ is the radius of the Earth. Of course, this also corresponds to the acceleration of objects in free-fall near the surface of the Earth, which we can find from Newton's Second Law:

$ sum arrow(F) & = arrow(F)_g = m arrow(a) \
m arrow(g)(R_oplus) & = m arrow(a) \
therefore arrow(a) & = arrow(g)(R_oplus) $
but we see here why it more precise to refer to $g$ as the "magnitude of the gravitational field at the surface of the Earth" rather than "the acceleration due to Earth's gravity". It is also worth noting that the two are only equal if the gravitational mass (on the left of the equation in the second line) is the same as the inertial mass (on the right of the equation). The gravitational mass is the mass that appears in the gravitational force defined by Newton, whereas the inertial mass is the mass that appears with the acceleration in Newton's Second Law.

#tipBlock(heading: [Checkpoint])[
Two small objects with different masses, $m_1$ and $m_2$, are located a distance $r$ from a nearby star. What can you say about the magnitude of the gravitational field and the magnitude of the gravitational force on $m_1$ and $m_2$?\}

+ The field is different and the forces are different.
+ The field is different but the forces are the same.
+ The field is the same but the forces are different.
+ The field is the same and the forces are the same.

#tipBlock(heading: [Answer])[
+
]
]

Suppose that there are two large mass bodies, $M_1$ and $M_2$, and a smaller mass body, $m$. We can calculate the net gravitational force on $m$ by summing the gravitational force vectors from $M_1$ and $M_2$ separately. If the gravitational fields from $M_1$ and $M_2$ are given by $arrow(g)_1 (arrow(r))$ and $arrow(g)_2 (arrow(r))$, respectively, then the total gravitational force on $m$ is given by:

$ arrow(F) & = m arrow(g)_1 (arrow(r)) + m arrow(g)_2 (arrow(r)) = m(arrow(g)_1 (arrow(r)) + arrow(g)_2 (arrow(r))) \
& = m arrow(g)(arrow(r)) $
where we have introduced the total gravitational field:

$ arrow(g)(arrow(r)) = arrow(g)_1 (arrow(r)) + arrow(g)_2 (arrow(r)) $
In other words, if there are multiple bodies that result in a non-negligible force of gravity, we can calculate their gravitational fields independently and sum them together to define a net gravitational field, $arrow(g)(arrow(r))$, that models the net force of gravity from all of the bodies. The net gravitational force on a new body of mass $m '$ is then simply given by $m ' arrow(g)(arrow(r))$, and we do not need to add any more vectors together. For example, when calculating the motion of satellites that can be influenced by the force of gravity from both the Earth and the Moon, we simply need to calculate the net gravitational field from the Earth and Moon, and the motion of any satellite can then be modelled using that net gravitational field.

#tipBlock(heading: [Checkpoint])[
There are two planets with equal mass located a distance $d$ apart. Position $A$ is located midway between the two planets. Position $B$ is located a distance $d \/ 2$ from one of the planets, in the position shown in @fig:gravity:fieldab. How does the field at $A$ compare to the field at $B$

#show figure: set block(breakable: true)
#figure(
  image("files/fieldAB-8b5177e687c3f0a0914470d3ce9c2cde.png", width: 60%),
  caption: [
Two planets are a distance $d$ apart. We are considering the gravitational field at two positions, A and B, located near the planets.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:fieldab>

+ The magnitude of the field is the same at $A$ and $B$.
+ The magnitude of the field is greater at $A$ than at $B$.
+ The magnitude of the field is greater at $B$ than at $A$.

#tipBlock(heading: [Answer])[
+
]
]

==== Gauss's Law <sec:gravity:gauss>

Newton's Universal Theory of Gravity postulates that the force of gravity between two bodies decreases as the squared of the distance between those two bodies. Using the terminology of a field, we would say that the strength of the gravitational field from an object decreases as the inverse of the square of the distance to that object. This is an example of a what we generally call an "inverse-square law". The electric force between two charges is also given by an inverse-square law, and we now understand that these forces behave as if they were "transmitted" by waves or particles.

If a force is given by an inverse-square law, then Gauss's law gives a way to determine the strength of the field that is associated with that force. In the case of gravity, Gauss's law states that:

$ oint arrow(g)(arrow(r)) dot.op d arrow(A) = 4 pi G M^(e n c) $
where the integral on the left is an integral over a "closed surface" that completely surrounds the mass for which we want to determine the gravitational field. To evaluate the integral, imagine taking a closed surface, $S$, that surrounds the mass. The vector $d arrow(A)$ is defined as the vector that goes with a small element of that surface and points outwards from the closed surface. The magnitude of the vector is equal to the area of that small surface ($d A$), as illustrated in @fig:gravity:gauss. You can then take the scalar product of $d arrow(A)$ with the gravitational field, $arrow(g)(arrow(r))$, at that point on the surface. If you sum all of those scalar products, you get the value of the integral on the left. Gauss's law states that the value of that integral is equal $4 pi G$ times the total mass that is enclosed by the surface.

#attentionBlock(heading: [Olivia's Thoughts])[
If you want to know if a surface is closed, ask yourself if you could put water inside the surface and not be worried about it spilling out. For example, if you put water in a sphere or a cube , the water would not spill out even if you shook it around, so they are closed surfaces. A flat square is an open surface because there is no "inside" to even put the water in.  A bowl is an open surface because, though you can put water in it, the water could spill out.
]

We will go into more detail about Gauss's law when we cover electromagnetism, but it is worth seeing how to use it in a simple scenario. @fig:gravity:gauss shows a spherical body of mass $M$ and radius $R$ for which we would like to determine the value of the gravitational field at a distance $r$ from the centre of the body.

#show figure: set block(breakable: true)
#figure(
  image("files/gauss-532f5d1a8160ab32373485383e5e63f6.png", width: 30%),
  caption: [
Example of a spherical Gaussian surface, $S$, of radius $r$ centred about a body of mass $M$ and radius $R$. An element of the surface, $d arrow(A)$ is also shown along with the gravitational field, $arrow(g)(arrow(r))$, at that point.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:gauss>

To do so, we draw a "Gaussian surface", $S$, that is a sphere with a radius $r$, and centred about the body. At any point on the surface, the area element vector $d arrow(A)$ points away from the centre of the spherical surface. The gravitational field vector, $arrow(g)(arrow(r))$ will always point towards the centre of the spherical surface, as illustrated. Furthermore, by symmetry, the magnitude of $arrow(g)(arrow(r))$ is constant along the whole Gaussian surface. Thus, the scalar product $arrow(g)(arrow(r)) dot.op d arrow(A) = -g(r) d A$ everywhere along the surface (it is negative because the two vectors are anti-parallel). The integral is thus given by:

$ oint arrow(g)(arrow(r)) dot.op d arrow(A) = -g(r) oint d A $
where we factored $g(r)$ out of the integral, since the magnitude of $arrow(g)(arrow(r))$ is constant for all of the area elements $d A$ on the sphere. Remember that an integral is a sum. The integral $oint d A$ thus means "sum all of the area elements $d A$ over the entire surface $S$". Thus, the integral is the total area of the spherical surface $S$#footnote[The surface area of a sphere of radius $r$ is $4 pi r^2$.]:

$ oint arrow(g)(arrow(r)) dot.op d arrow(A) = -g(r) oint d A = -g(r)(4 pi r^2) $
Inserting this into Gauss's law, we find:

$ oint arrow(g)(arrow(r)) dot.op d arrow(A) & = 4 pi G M^(e n c) \
-g(r)(4 pi r^2) & = 4 pi G M^(e n c) \
therefore g(r) & = -frac(G M, r^2) $
where $M^(e n c) = M$ is the total mass enclosed by the Gaussian surface (in this case, the entire mass $M$ is enclosed). This is of course the result that we expected and obtained earlier from Newton's formulation. Note that Gauss's law is only easy to use if the system is highly symmetric (e.g. spherically symmetric), and that it does not give the direction of the field vector, which must be obtained from symmetry arguments.

#attentionBlock(heading: [Olivia's Thoughts])[
Here's an analogy to describe Gauss's law for gravity: A famous celebrity is doing an event, and they attract a certain number of fans who want to get as close to the celebrity as possible. You put up a barricade around the celebrity. The gravitational field is represented by how crowded it is somewhere along the barricade. If a second celebrity is at the event, they will attract their own fans, so there will be more people around the barricade. The number of celebrities is kind of like the enclosed mass $M^(e n c)$.

A photographer is coming to the event, and you told him to stand at some location that is a distance $r$ from the celebrities. The photographer wants to know how crowded it will be when he is standing behind the barricade at that location. Gauss's law gives us a way to figure this out. If you know which celebrities are at the event ($M^(e n c)$), you can determine how many people will be there (this is like finding $4 pi G M^(e n c)$). Then, if you can build a barricade such that the fans are evenly distributed around it, and you know how long that barricade is ($oint d A$), you can easily calculate how crowded it will be at some point along the barricade (you can just divide the number of people by the length of the barricade).

The barricade represents our Gaussian surface and, like a Gaussian surface, it can be whatever shape we want as long as it encloses the celebrities and passes through the point we are interested in. If we want to make sure the people are spread out evenly, the shape of the barricade is going to depend on the specific case. Let's take the example of our single spherical body. This is analagous to having one celebrity at the event.

@fig:gravity:barricadeanalogy shows two possible barricades we could build. Although we can technically build the barricade on the left, it doesn't help us because the areas closer to the celebrity will be more crowded. Instead, we want to build the barricade on the right, which is a circle of radius $r$, because the fans are evenly spread out. This is why we use a spherical Gaussian surface when we're considering the field due to a spherical body - at any point a distance $r$ from the body, the field will be the same. (Note: Remember that, unlike the barricade, the Gaussian surface isn't a physical thing, so it won't affect the gravitational field. It is just a mathematical tool that allows us to take advantage of what the field already looks like.)

#show figure: set block(breakable: true)
#figure(
  image("files/barricadeanalogy-98ef92293c7c725259688fc9eacd1a31.png", width: 70%),
  caption: [
A celebrity (black dot) attracts fans (grey dots). A photographer (dot labelled "P") stands behind the barricade a distance $r$ away. This shows two possible barricades we could build around the celebrity. The density of the fans is not uniform for the barricade on the left, so we would not choose that shape to evaluate the Gaussian integral.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:barricadeanalogy>
]

We can also use Gauss's law to determine the gravitational field *inside* of the body of mass $M$ and radius $R$. This is illustrated in @fig:gravity:gauss2, which shows a spherical Gaussian surface of radius $r$ that is *inside* of the body of mass $M$.

#show figure: set block(breakable: true)
#figure(
  image("files/gauss2-3bcc1d70b85158fced3e532072fa9bf9.png", width: 30%),
  caption: [
Example of a spherical Gaussian surface, $S$, of radius $r$ centred inside a body of mass $M$ and radius $R$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:gauss2>

The gravitational field inside of the body of mass $M$ is also symmetric
and  constant in magnitude across the whole surface, %?
so that the integral is the same as before:

$ oint arrow(g)(arrow(r)) dot.op d arrow(A) = -g(r)(4 pi r^2) $
However, in order to use Gauss's law, we need to determine the mass of the body that is enclosed within the spherical surface, which will be less than $M$. If we assume that the mass density, $rho$, of the object is constant (the body is made of a uniform material), then the density is simply the mass of the object over its volume:

$ rho = frac(M, frac(4, 3) pi R^3) $
The amount of mass enclosed by the spherical surface of radius $r$ is the density multiplied by the volume of a sphere of radius $r$:

$ M^(e n c) = rho frac(4, 3) pi r^3 = M frac(r^3, R^3) $
Applying Gauss's law, we can now find the magnitude of the gravitational field inside of the spherical body at a distance $r$ from the centre:

$ oint arrow(g)(arrow(r)) dot.op d arrow(A) & = 4 pi G M^(e n c) \
-g(r)(4 pi r^2) & = 4 pi G M frac(r^3, R^3) \
therefore g(r) & = -frac(G M, R^3) r $
And we find that, inside a uniform spherical body of mass $M$, the gravitational field increases linearly with radius as one moves out from the centre. At the centre of the body, the gravitational field is zero.

#tipBlock(heading: [Checkpoint])[
What can you say about the magnitude of the gravitational field inside a spherical *shell* of mass $M$?

+ It increases as you move out from the centre of the spherical shell.
+ It decreases as you move out from the centre of the spherical shell.
+ It is equal to zero.
+ It is nonzero and constant in magnitude.

#tipBlock(heading: [Answer])[
+
]
]

=== Gravitational potential energy <sec:gravity:potentialenergy>

Consider a large spherical body of mass $M$ with a coordinate system whose origin coincides with the centre of the spherical body (for example, the large body could be the Earth). The force, $arrow(F)(arrow(r))$ on a body of mass $m$ (for example, a satellite), located at a position $arrow(r)$ is then given by:

$ arrow(F)(arrow(r)) = -G frac(M m, r^2) hat(r) = -G frac(M m, r^3) arrow(r) $
where in the second equality, we use the fact that the unit vector in the direction of $arrow(r)$ is simply the vector $arrow(r)$ divided by its magnitude. We can write the force out in Cartesian coordinates:

$ arrow(r) & = x hat(x) + y hat(y) + z hat(z) \
r & = sqrt(x^2 + y^2 + z^2) =(x^2 + y^2 + z^2)^(frac(1, 2)) \
therefore arrow(F)(x, y, z) & = -G frac(M m,(x^2 + y^2 + z^2)^(frac(3, 2)))(x hat(x) + y hat(y) + z hat(z)) $
Mathematically, this is equivalent to the force that we considered in #link("/potentialecons\#ex-potentialecons-gravitycons")[Example 8.2] of #link("/potentialecons\#chapter-potentialecons")[Chapter 8.1], which we showed was a conservative force. The force of gravity in Newton's theory is thus a conservative force, for which we can determine a potential energy function.

In order to determine the gravitational potential energy function for the mass $m$ in the presence of a mass $M$, we calculate the work done by the force of gravity on the mass $m$ over a path where the integral for work will be "easy" to evaluate, namely a straight line. @fig:gravity:potential shows such a path in the radial direction, $r$, over which it will be easy to calculate the work done by the force of gravity from mass $M$ when mass $m$ moves from being a distance $r_A$ to a distance $r_B$ from the centre of mass $M$.

#show figure: set block(breakable: true)
#figure(
  image("files/potential-6cf2648356a2e39b57f407020da40b77.png", width: 50%),
  caption: [
Calculating the work done on a mass $m$ by the force of gravity exerted by mass $M$ when mass $m$ moves from a distance $r_A$ to a distance $r_B$ from the centre of mass $M$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:potential>

The work done by the force of gravity on $m$ in going from $r_A$ to $r_B$ is given by:

$ W & = integral_(r_A)^(r_B) arrow(F)(r) dot.op d arrow(r) = integral_(r_A)^(r_B)(-G frac(M m, r^2) hat(r)) dot.op d arrow(r) = integral_(r_A)^(r_B) -G frac(M m, r^2) d r \
& = [ G frac(M m, r) ]_(r_A)^(r_B) = G frac(M m, r_B) -G frac(M m, r_A) $
The difference in potential energy in going from position $A$ to position $B$ is given by the negative of the work done by the force:

$ Delta U = U(r_B) -U(r_A) = -W = G frac(M m, r_A) -G frac(M m, r_B) $
By inspection, we can identify the potential energy function for gravity:

$ boxed U(r) = -G frac(M m, r) + C $
which is determined only up to a constant, $C$.

A particularly useful choice of constant is $C = 0$. This corresponds to choosing the potential energy to be zero only when $r$ goes to infinity. That is, the potential energy of mass $m$ is zero only when it is infinitely far away from mass $M$. The choice of constant $C$ corresponds to the (arbitrary) value of the potential energy when mass $m$ is infinitely far from mass $M$. When mass $m$ is not infinitely far away, it has *negative* potential energy (if $C = 0$). This is not a problem! Remember, the only thing that is meaningful is a difference in potential energy, so the specific value of the potential energy has no meaning. The kinetic energy of an object, on the other hand, has to be positive.

Recall that if there are no other forces acting on an object, that object will move in such a way to reduce its potential energy. If the object of mass $m$ is located at some distance $r$ from the object of mass $M$, the force of gravity will attract $m$ so that $r$ decreases. As $r$ decreases in magnitude, the potential energy becomes more negative (larger in magnitude, but further away from zero), and the potential energy of $m$ will indeed decrease as it accelerates due to the force of gravity.

==== Mechanical energy with gravity <mechanical-energy-with-gravity>

Unless noted otherwise, we will continue our discussion of gravitational potential energy with the particular choice of constant $C = 0$:

$ boxed U(r) = -G frac(M m, r) $
Furthermore, we will assume that $M$ is a large body, such as the Earth, which we can consider as fixed, and focus our discussion on describing the motion of mass $m$ (e.g. a satellite). If $M$ is much bigger than $m$, they will both experience a force of gravity from each other of the same magnitude (Newton's Third Law), but because $M$ is so much larger, its acceleration will be much smaller (Newton's Second Law). Thus, it is a good approximation to assume that $M$ is stationary and that only $m$ moves when $M > > m$.

We can define the total mechanical energy of mass $m$ when it has a speed $v$ (relative to $M$) and is located at a distance $r$ from the centre of mass $M$:

$ E = U + K = -G frac(M m, r) + frac(1, 2) m v^2 $
where the kinetic energy term is always positive. If gravity is the only force exerted on mass $m$, then the mechanical energy, $E$, as defined above, will be a constant. The mechanical energy of an object can give us insight into the possible motion of the object.

Imagine launching a rocket straight upwards from the surface of the Earth; once all of the fuel has burnt up, the rocket's mechanical energy becomes constant as the rocket engine stops doing work on the rocket. As soon as the engine stops providing thrust, the rocket will start to slow down as the force of gravity attracts the rocket back to Earth. If the rocket is going fast enough, it will be able to completely escape the Earth's gravitational pull and travel to infinity (we assume that there are no other planets or the Sun, just the Earth exists!). If, on the other hand, the rocket's speed is too low, it will eventually stop and fall back to Earth. This is the same thing that happens to you when you try to jump vertically. If you could jump hard enough, you would be able to escape the Earth's gravitational pull!

In terms of mechanical energy, we can ask ourselves if the mechanical energy of the rocket is large enough to escape the Earth's gravitational pull. Specifically, we can ask ourselves what the value of the rocket's kinetic energy would be when it reaches infinity. The kinetic energy of the rocket is given by:

$ K = E -U $
If the rocket is infinitely far from the Earth, then its potential energy is zero, and the kinetic energy is equal to $E$.

If the mechanical energy, $E$, is negative, it is not possible for the rocket to ever make it to infinity because its kinetic energy would have to be negative. In other words, if the mechanical energy is negative, then the object of mass $m$ can never escape the gravitational pull of object $M$. We say that $m$ is "gravitationally bound" to $M$.

If the mechanical energy, $E$, is exactly zero, then the object's kinetic energy will become zero just as it reaches infinity. In other words, it will just barely be able to escape the gravitational pull from mass $M$. The condition for this to happen is:

$ E & = 0 \
K & = -U \
frac(1, 2) m v^2 & = G frac(M m, r) \
therefore v_(e s c) & = sqrt(frac(2 G M, r)) $
which we can interpret as a condition for the speed of the rocket. If at some distance $r$ from $M$, the rocket has the speed given by the condition above, then it will have enough kinetic energy to escape the gravitational pull of $M$. We call this speed the "escape velocity".

Finally, if the mechanical energy is greater than zero, then the rocket will have enough energy to escape the gravitational pull of $M$ and have a non-zero speed when it reaches infinity.

#tipBlock(heading: [Checkpoint])[
What is the escape velocity from the surface of the Earth?

+ $4 . 2 9 times 1 0^6 upright k m \/ s$
+ $1 . 2 5 times 1 0^5 upright k m \/ s$
+ $1 1 . 2 upright k m \/ s$
+ $9 . 8 1 upright k m \/ s$

#tipBlock(heading: [Answer])[
+
]
]

#noteBlock(heading: [Example 9.4])[
Show that an object of mass $m$ in a circular orbit of radius $r$ around a body of mass $M$ has half of the kinetic energy required to escape the gravitational pull of $M$.

#noteBlock(heading: [Solution])[
The only force acting on the object is gravity, so it has a mechanical energy given by:

$ E & = U + K \
E & = -G frac(M m, r) + frac(1, 2) m v^2 $
In order for the object to just escape the gravitational pull of $M$, it's mechanical energy must be equal to zero:

$ E & = 0 \
therefore K_(e s c) & = -U $
Since the object is in a circular orbit, we can use Newton's Second Law to find an expression for $v^2$:

$ F_(n e t) & = frac(m v^2, r) \
frac(G M m, r^2) & = frac(m v^2, r) \
frac(G M, r) & = v^2 $
where in the second line we used the fact that $F_(n e t)$ is equal to the force of gravity exerted by $M$ on the object. The kinetic energy of the object is thus:

$ K & = frac(1, 2) m v^2 \
K & = frac(1, 2) frac(G M m, r) $
You will notice that this is very similar to our expression for $U$. In fact, we have:

$ K & = -frac(1, 2) U \
therefore K & = frac(1, 2) K_(e s c) $
*Note:* We can also see that the velocity of an object in a circular orbit is equal to $sqrt(G M \/ r)$, which is half the escape velocity, $v_(e s c) = sqrt(2 G M \/ r)$
]
]

===== Types of orbits <types-of-orbits>

The mechanical energy of a body of mass $m$ determines whether it is gravitationally bound to (i.e. cannot escape) the body of mass $M$. The path (orbit) that $m$ will take depends on its velocity with respect to $M$. Clearly, if the velocity of $m$ is directed at the centre of $M$, then $m$ will just collide with $M$. In all other cases, the orbit that $m$ will take depends on the mechanical energy of $m$ as well as the speed of $m$ at the point of closest approach to $M$ (see @fig:gravity:conical). The velocity of $m$ at the point of closest approach will always be perpendicular to the line joining the centres of $m$ and $M$. The different possible orbits are:

+ A *circular orbit* of radius $R$ (where $R$ is the distance of closest approach) if the *mechanical energy is negative* (i.e. it is bound) and the speed is exactly equal to the value necessary for the gravitational force to provide the required centripetal acceleration for uniform circular motion:

$ sum F = G frac(M m, R^2) & = m frac(v^2, R) \
therefore v_(c i r c) = sqrt(frac(G M, R)) $
+ An *elliptical orbit* if the *mechanical energy is negative* and the speed at the point of closest approach is different than that required for a circular orbit.
+ A *parabolic orbit* if the *mechanical energy is exactly zero*.
+ A *hyperbolic orbit* if the *mechanical energy is bigger than zero*.

The possible orbits are illustrated in @fig:gravity:conical, and are curves in the family of "conic sections", as they can be found by the intersection of a plane and a cone. All conic sections have at least one "focus" point (ellipses have two) that corresponds to the location of $M$.

#show figure: set block(breakable: true)
#figure(
  image("files/conical-4e29b968e370c802d0ed276493194a28.png", width: 70%),
  caption: [
The different possible orbits of $m$ due to the gravitational force of $M$ depend on the mechanical energy, $E$, of $m$. The orbits are drawn in a frame of reference where $M$ is at rest.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:conical>

=== Einstein's Theory of General Relativity <einsteins-theory-of-general-relativity>

Newton's Universal Theory of Gravity was extremely successful at describing the motion of planets in the solar system, and allowed for high precision astronomy. For example, precision measurements of  Uranus's orbit showed that it appeared to be inconsistent with Newton's theory, unless the gravitational influence of another planet was included in the model. This led to the discovery of the planet Neptune.

However, some issues with Newton's theory were uncovered. The orbit of Mercury was shown to be different than what Newton's theory could describe, but searches for another planet (Vulcan) were unsuccessful. In addition, Albert Einstein's theory of Special Relativity, published in 1905, was found to be incompatible with Newton's theory of gravity. One of the consequences of Special Relativity is that nothing can propagate faster than the speed of light. Newton's Universal Theory of Gravity implies that the gravitational force is transmitted instantaneously. In Newton's theory, if the Sun suddenly disappeared, Earth would immediately "fall out" of its orbit, and we would immediately know that the Sun has disappeared. This would violate Special Relativity because there cannot be a mechanism that would allow us to know that the Sun has disappeared faster than it would take light to propagate from the Sun. In other words, for the $8 upright m i n$ that are required for light to travel from the Sun to the Earth, we cannot know that the Sun has disappeared: only when we literally see the Sun disappear would the Earth be "allowed" to fall out of its orbit.

Einstein's Theory of General Relativity is a theory developed by Einstein in order to describe gravity in a way that is consistent with Special Relativity and the propagation of light. Einstein was famous for his "thought experiments," which allow us to think about some of the implications of a theory, even if the experiments would be very difficult to carry out in practice. One such thought experiment is to consider what someone would observe in an accelerating frame of reference.

Consider an observer in an elevator, as illustrated in @fig:gravity:elevator. If the elevator is stationary at the surface of the Earth (left panel), and the observer is standing on a scale, they could measure their weight, $m g$, on the scale. The two forces on the observer are their weight and the normal force, which would be equal in magnitude since the observer is not accelerating. The normal force, read out by the scale, would thus correspond to their weight. To be more precise, the normal force would be equal to $m_G g$, where $m_G$ is the gravitational mass of the observer (that mass which is related to the force of gravity experienced by a mass).

If the elevator was instead placed in empty space, and the elevator was accelerating upwards with an acceleration of $g$ (right panel), the observer would still be able to measure their weight by stepping on the scale. The only force on the observer is the normal force from the scale, which must be equal to its mass times their acceleration $N = m_I a = m_I g$, since the observer is accelerating with the elevator. In this case, it is the inertial mass of the observer, $m_I$, that comes into play, so the normal force read on the scale is $m_I g$.

#show figure: set block(breakable: true)
#figure(
  image("files/elevator-cb051ec5733dec3aa2b4fdbfb11190a9.png", width: 80%),
  caption: [
Left: A person standing on a scale in an elevator at rest at the surface of the Earth. Right: A person in an elevator that is accelerating in empty space with the same acceleration as that due to gravity at the Earth's surface. The curvature of the light beam is exaggerated.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:elevator>

Einstein postulated that it would be impossible for the observer to distinguish whether they are at rest on the surface of the Earth, or in empty space accelerating with an acceleration of $g$. In other words, he postulated that the inertial and gravitational masses are exactly equivalent. This is what is called the "Equivalence Principle".

This simple statement has dramatic implications. Special Relativity requires that light will travel in a straight line in empty space. If a beam of light enters and then exits the elevator, the observer on Earth and the one accelerating in empty space must observe the same thing, since they cannot distinguish between being on Earth or accelerating in space. The observer in space, who is accelerating, will observe that the beam of light bends as it crosses the elevator (the beam travels in a straight line as observed in an inertial reference frame, so the person in the accelerating elevator would see it follow a parabolic path). The observer on Earth must thus observe the same thing, namely that light will follow a curved path in the presence of a gravitational field.

But...light must travel in a straight line in empty space. That means that if the path of a beam of light is curved near Earth, it must be because space itself is curved in the presence of a gravitational field! In other words, Einstein's Theory of General Relativity describes how the presence of mass (or energy) results in a curvature of space (and time).

Imagine a ladybug on the side of a basketball. If the ladybug starts moving in what it believes to be a straight line, it will actually move in a curved path along the surface of the ball, as in @fig:gravity:ladybug. This is like the curved path of light that we observe. If we didn't know the ball was there, we would just think that the bug was moving along a curved path. In the same way, if an observer is not aware of the curvature of spacetime, it appears that light follows a curved path.

#show figure: set block(breakable: true)
#figure(
  image("files/ladybuganalogy-ceee73126e2939c41982b3bdb610b1d2.png", width: 80%),
  caption: [
Left: A ladybug perceives itself to be moving in a straight line. Center: The basketball is curved, so the ladybugs follow curved paths. Right: What an observer would see if they didn't know the basketball was there.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:ladybug>

Now imagine there's a second ladybug. Both bugs start at the middle of the ball and start moving towards the top of the ball in what they think is a straight line (as shown in the center panel of @fig:gravity:ladybug). When the bugs start moving, they are parallel to each other, so if the ball was not curved, the ladybugs would never meet. However, because it is curved, the ladybugs will eventually cross paths. If you were not aware that the ball was there, you would have to conclude that there was some force attracting the bugs to each other, just like if you were unaware that spacetime was curved, you would conclude that massive bodies moving towards each other are attracted by a gravitational force.

Objects that are moving in a gravitational field are actually following Newton's First Law (they are moving at constant velocity in a straight line and no force is exerted on them). It is strange and unexpected, but high precision measurements confirm that this correctly describes everything that we have measured!

Einstein's theory was able to describe the orbit of Mercury, and the prediction that gravity leads to light following a curved path was confirmed by Eddington within five years of Einstein's theory being published. Another implication of the theory is that time goes by slower in the presence of a gravitational field. Clocks on Earth run slower than clocks in orbit (where the gravitational field is weaker). This effect is taken into account when using GPS to determine your position on Earth, since this is based on comparing the time that it takes signals to arrive to your position on Earth from different satellites. This is also somewhat reasonably well described in the movie "Interstallar", where time is seen to pass much slower for a set of astronauts in the vicinity of a black hole, where the gravitational field is strong.

+ The path of a planet around the Sun is described by an ellipse with the Sun at once of its foci.
+ Planets move in such a way that the area swept by a line connecting the planet and the Sun in a given period of time is constant, independent of the location of the planet.
+ The ratio between the orbital periods, $T$, squared of two planets is equal to the ratio of the semi-major axes, $s$, of their orbits cubed:

$ (frac(T_1, T_2))^2 =(frac(s_1, s_2))^3 $
Newton described the attractive force of gravity exerted between two bodies of mass $M_1$ and $M_2$ (which must be point masses) as:

$ arrow(F)_(1 2) = -G frac(M_1 M_2, r^2) hat(r)_(2 1) $
where $arrow(F)_(1 2)$ is the force on body 1 from body 2, $r$ is the distance between the two bodies, and $arrow(r)_(2 1)$ is the vector from body 2 to body 1. The motion of a body under the influence of only this force will satisfy all of Kepler's Laws, if the body is gravitationally bound.

The gravitational field, $arrow(g)(arrow(r))$, from a body of mass $M$, is defined as the gravitational force that another body would experience per unit mass:

$ arrow(g)(arrow(r)) = frac(arrow(F)(arrow(r)), m) = -G frac(M, r^2) hat(r) $
The field can be used to determine the corresponding gravitational force, $arrow(F)_g$, that a body of mass $m$ would experience if located at a position $arrow(r)$ relative to the body of mass $M$:

$ F_g = m arrow(g)(arrow(r)) $
When describing the motion of objects near the surface of the Earth, it is thus more precise to refer to $g = 9 . 8 upright N \/ k g$ as the magnitude of the Earth's gravitational field at the surface of the Earth, then to refer to $g = 9 . 8 upright m \/ s^2$ as the acceleration due to Earth's gravity. The two are only equal if gravitational mass (the $m$ in the above equation) and inertial mass (the $m$ in Newton's Second Law) are the same.

Gauss's law, which applies to all inverse-square force laws, can be used to determine the magnitude of the gravitational field from a body of mass $M$, even if it is not a point mass:

$ oint arrow(g)(arrow(r)) dot.op d arrow(A) = 4 pi G M^(e n c) $
Since the force described by Newton's theory is conservative, we can define a potential energy function. The gravitational potential energy of a mass $m$ located a distance $r$ away from a mass $M$ is:

$ U(r) = -G frac(M m, r) + C $
A convenient choice of the constant is $C = 0$, as this corresponds to the gravitational potential energy being equal to zero when $m$ is infinitely far away from $M$.

The mechanical energy, $E$, of an object of mass $m$ that is located at a distance $r$ from an object of mass $M$, if gravity is the only conservative force exerted on $m$, is given by:

$ E = K + U = frac(1, 2) m v^2 -G frac(M m, r) $
where we have explicitly chosen $C = 0$, and $v$ is the speed of $m$ relative $M$ (considered to be at rest). Furthermore, if no non-conservative forces do work on the body of mass $m$, the mechanical energy, $E$, is constant.

If the mechanical energy of $m$ is negative, it is gravitationally bound to $M$. Depending on the mechanical energy of $m$ and its velocity at the point of closest approach to $M$, the orbit of $m$ will be described by one of four conic sections (circle, ellipse, parabola, hyperbola).

Einstein's Theory of General Relativity describes gravitation as the bending of space and time caused by the presence of mass and energy. In Einstein's theory, objects follow straight (inertial) paths and do not feel a force of gravity. The curvature of space is what results in their apparent motion not being a straight line. Einstein's theory is based on the Equivalence Principle (inertial and gravitational mass are exactly equal) and the properties of how light propagates according to the Theory of Special Relativity.
\\end\{chapterSummary\}

#importantBlock(heading: [Important Equations])[
*Kepler's Third Law:*

$ (frac(T_1, T_2))^2 =(frac(s_1, s_2))^3 $
*Gravitational force and\\ gravitational field:*

$ arrow(F)_(1 2) & = -G frac(M_1 M_2, r^2) hat(r)_(2 1) \
arrow(g)(arrow(r)) & = -G frac(M, r^2) hat(r) \
F_g & = m arrow(g)(arrow(r)) $
*Gauss's Law:*

$ oint arrow(g)(arrow(r)) dot.op d arrow(A) = 4 pi G M^(e n c) $
*Gravitational potential energy\\ and mechanical energy:*

$ U(r) = -G frac(M m, r) + C \
E = K + U = frac(1, 2) m v^2 -G frac(M m, r) $
]

=== Thinking about the material <thinking-about-the-material>

#seealsoBlock(heading: [Reflect and research])[
- When you look at the night sky, how can you tell the difference between a planet and a star?
- What was the relationship between Tycho Brahe and Johannes Kepler?
- How did Tycho Brahe collect all the data that Kepler used?
- How much time elapsed between Kepler publishing his laws and Newton publishing his Universal Theory of Gravity?
- What was Kepler's original intention when he synthesized Tycho Brahe's observations? What was he hoping to show?
- What was Ptolemy's theory of gravity based upon?
- Who was the first to suggest that planets revolved around the Sun instead of the Earth?
- Explain how the force of gravity from the moon results in tides on both sides of the Earth.
- Explain what an L1 Lagrange point is, and how it does not violate Kepler's Third Law.
- How did Eddington confirm that light follows a curved path in a gravitational field?
]

#seealsoBlock(heading: [To try in the lab])[
- Theory project: Prove, based on Newton's Universal Theory of Gravity, that the motion of orbiting bodies is given by a conic section.
- Write a computer simulation to plot the orbit of two bodies, and explore how the total mechanical energy of one object affects its motion. If the two bodies have the same mass, and both move, where is the focus of the conical section describing their respective paths?
- Propose an experiment to model and map the position of a planet in the night sky.
]

=== Sample problems and solutions <sample-problems-and-solutions>

==== Problems <problems>

#noteBlock(heading: [Problem 9.1])[
Geosynchronous satellites are satellites that are placed in a circular orbit around the Earth in such a way that their orbital period is synchronized with the $2 4 upright h$ rotation period of the Earth. The advantage of geosynchronous satellites is that they are always above the same point on Earth, which makes them useful for establishing communication networks. At what altitude must geosynchronous satellites be placed?
]

#noteBlock(heading: [Problem 9.2])[
How much energy must be expended in order to place a satellite of mass $m = 1 0 0 0 upright k g$ in a geosynchronous circular orbit around the Earth, if the satellite is launched from the North Pole of the Earth? How much energy is this per kilogram of satellite placed in orbit?
]

#noteBlock(heading: [Problem 9.3])[
Find an expression for the gravitational field due to a thin uniform rod of mass $M$ at point $P$, which is a distance $h$ above the midsection of the rod (@fig:gravity:rodfield).

#show figure: set block(breakable: true)
#figure(
  image("files/rodfield-ac4b93fd8281a0c6f73aee0611dff3e2.png", width: 50%),
  caption: [
A thin rod of mass $M$ and length $L$ produces a gravitational field at a point $P$ located above the midsection of the rod.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:rodfield>
]

==== Solutions <solutions>

#noteBlock(heading: [Solution 9.1])[
When a satellite orbits the Earth, the only force on the satellite is the force of gravity from the Earth. Since the satellite is in a circular orbit, that force of gravity must point towards the centre of the Earth in such a way that the satellite has the correct radial acceleration, $a_R$, to stay in uniform circular motion:

$ a_r = frac(v^2, R) $
where $v$ is the speed of the satellite, and $R$ is the distance between the satellite and the centre of the Earth (i.e. the centre of the circular orbit). The magnitude of the force of gravity on the satellite of mass $m$ is given by:

$ F = G frac(M m, R^2) $
where $M$ is the mass of the Earth. Newton's Second Law applied to the satellite is:

$ sum F_r = F & = m a_r \
therefore G frac(M m, R^2) & = m frac(v^2, R) $
The speed of the satellite can be found from the fact that it must travel a distance of $2 pi R$ (the circumference of the orbit) in a period $T = 2 4 upright h$:

$ v = frac(2 pi R, T) $
which we can substitute into the equation from Newton's Second Law to find the distance $R$ (i.e. the radius of the circular orbit):

$ G frac(M m, R^2) & = m frac(v^2, R) \
G frac(M, R^2) & = frac((2 pi R)^2, T^2 R) \
G frac(M, R^2) & = frac(4 pi^2 R, T^2) \
therefore R & = root(3, G frac(M T^2, 4 pi^2)) \
& = root(3,(6 . 6 7 times 1 0^(-1 1) upright N m^2 \/ k g^2) frac((5 . 9 7 times 1 0^(2 4) upright k g)(8 6 4 0 0 upright s)^2, 4 pi^2)) \
& = 4 2 . 2 times 1 0^6 upright m $
which corresponds to the distance between the satellite and the centre of the Earth. To obtain the "altitude", $h$, namely the distance from the surface of the Earth to the satellite, we must subtract the radius of the Earth, $R_oplus = 6 . 3 7 1 times 1 0^6 upright m$ from this distance:

$ h = R -R_oplus = 3 5 . 9 times 1 0^6 upright m $
Thus, geosynchronous satellites are located at an altitude of approximately $3 6 0 0 0 upright k m$.

*Discussion*: Note that we could have also easily used Kepler's Third Law to determine the radius of the orbit, since we already know the period ($2 4 upright h$), and we know the value of the constant for Kepler's Third Law from @ex:gravity:keplerconstant.
]

#noteBlock(heading: [Solution 9.2])[
We need to calculate how much work must be done for the satellite to go from being at rest at the surface of the Earth to being in a geosynchronous orbit. That work will be done by a non-conservative force (a rocket engine). The work done by the non-conservative force, $W$, is equal to the satellite's change in mechanical energy:

$ W = Delta E = E_B -E_A $
The initial mechanical energy of the satellite, $E_A$, is given by its gravitational potential energy (it has no kinetic energy at the surface of the Earth when at the North Pole - on the equator, it would have kinetic energy due to the Earth's rotation):

$ E_A = K + U = 0 -G frac(M m, R_oplus) $
where $M = 5 . 9 7 times 1 0^(2 4) upright k g$ is the mass of the Earth, and $R_oplus = 6 . 7 3 1 times 1 0^6 upright m$ is the radius of the Earth.

In orbit, the energy of the rocket, $E_B$, is given by:

$ E_B = K + U = frac(1, 2) m v^2 -G frac(M m, R) $
where $R = 4 2 . 2 times 1 0^6 upright m$ is the radius of the geosynchronous orbit (@prob:gravity:geosyncorbit) and $v$ is the speed of the satellite in orbit. The speed is given by:

$ v = frac(2 pi R, T) $
where $T = 2 4 upright h$ is the orbital period. The net work that must be done to place the satellite in orbit is thus given by:

$ W & = E_B -E_A = frac(1, 2) m v^2 -G frac(M m, R) -(-G frac(M m, R_oplus)) \
& = frac(1, 2) m frac(4 pi^2 R^2, T^2) + G M m(frac(1, R_oplus) -frac(1, R)) \
& = frac(1, 2)(1 0 0 0 upright k g) frac(4 pi^2 (4 2 . 2 times 1 0^6 upright m)^2,(8 6 4 0 0 upright s)^2) \
& +(6 . 6 7 times 1 0^(-1 1) upright N m^2 \/ k g^2)(5 . 9 7 times 1 0^(2 4) upright k g)(1 0 0 0 upright k g)(frac(1,(6 . 7 3 1 times 1 0^6 upright m)) -frac(1,(4 2 . 2 times 1 0^6 upright m))) \
& = 5 . 7 8 times 1 0^(1 0) upright J $
This corresponds to the energy that must be imparted to a $1 0 0 0 upright k g$ satellite for it to end up in a geosynchronous orbit. This corresponds to $5 . 7 8 times 1 0^7 upright J \/ k g$ as the energy required per kilogram of payload placed in geosynchronous orbit. Although we calculated work as if it were work done by a force, we can think of this work coming from stored chemical potential energy in the fuel of the rocket carrying the satellite.

*Discussion:* The energy that we found above is the minimum energy that one must provide to the satellite. In practice, in order to place a satellite in orbit, one will also need to provide enough energy to accelerate the rocket that carries the satellite up into orbit, which is typically much heavier than the satellite. If the satellite were instead launched from the equator of the Earth, the satellite would already have some initial kinetic energy due to the rotation of the Earth, and one would need to provide less energy to place it in orbit. This is the reason that most rockets are launched from near the equator (think French Guyana, Florida, Kazakhstan) in a direction that is roughly parallel with the Earth's rotation.
]

#noteBlock(heading: [Solution 9.3])[
We cannot use Gauss's law to determine the magnitude of the field because the gravitational field lacks symmetry (i.e. the field will be different at the ends of the rod than along the length of the rod). The gravitational field due to a body of mass $M$ is given by:

$ arrow(g)(arrow(r)) = -frac(G M, r^2) hat(r) $
Our strategy will be to break the rod into very small segments of length $d x$. Each segment, of mass $d M$, will make a small contribution, $d arrow(g)$, to the gravitational field, as shown in @fig:gravity:rodfieldsoln. We will then take the sum of all these contributions to find the net field.

#show figure: set block(breakable: true)
#figure(
  image("files/rodfieldsoln-414a994c752a5af9ba19615e5119f9df.png", width: 50%),
  caption: [
A thin rod of mass $M$ and length $L$ produces a gravitational field at a point $P$ located above the midsection of the rod. Each segment of the rod $d x$ will contribute to the gravitational field.
],
  kind: "figure",
  supplement: [Figure],
) <fig:gravity:rodfieldsoln>

The gravitational field due to each segment is given by:

$ d arrow(g) = -frac(G d M, r^2) hat(r) $
The element of the field, $d arrow(g)$, will point in a different direction for each segment $d x$. You can conclude from @fig:gravity:rodfieldsoln that, due to symmetry, the $x$ components of the field from each segment will cancel out (for the segment $d x$ shown in the diagram, there will be an identical segment on the other side of the rod). The net field will point in the $-hat(y)$ direction, so we are only interested in the vertical component of $d arrow(g)$. Using our diagram, this means that we want to find the magnitude of $d g cos theta$:

$ d g cos theta = frac(G d M, r^2) cos theta $
The magnitude of the gravitational field at point $P$ is thus given by:

$ g = integral d g cos theta = integral frac(G d M, r^2) cos theta $
The integral is written over $d M$, where both $r$, and $theta$ are different for each different mass element, $d M$. We need to express any variable that changes for different mass elements in terms of a single variable of integration. We will choose $theta$ as the variable of integration, and thus need to express $r$ and $d M$ in terms of $theta$, $d theta$, and other constants.

The distance, $r$, between $P$ and a mass element $d M$ located at angle $theta$ is easily found to be:

$ r & = frac(h, cos theta) \
therefore frac(1, r^2) & = frac(cos^2 theta, h^2) $
$d M$ can easily be expressed in term of $d x$ (the length of the mass element in the $x$ direction) and $lambda$, the mass per unit length of the rod:

$ d M = lambda d x = frac(M, L) d x $
We now need to express $d x$ in terms of $d theta$. This can be found as follows, by first expressing $x$ in terms of $theta$, and then taking the derivative of $x$ with respect to $theta$

$ x & = h tan theta \
therefore frac(d x, d theta) & = frac(h, cos^2 theta) \
therefore d x & = frac(h, cos^2 theta) d theta $
Now that we have found the small change in $x$ that results from a small change in $theta$, we can write the mass element, $d M$, in terms of the $d theta$:

$ d M = frac(M, L) d x = frac(M, L) frac(h, cos^2 theta) d theta $
We can now write the integral in terms of $theta$:

$ g = integral frac(G d M, r^2) cos theta & = G integral frac(1, r^2) cos theta d M \
& = G integral(frac(cos^2 theta, h^2)) cos theta(frac(M, L) frac(h, cos^2 theta)) \
& = frac(G M, L h) integral cos theta d theta $
Now that we have the integral over $theta$, we need to set the limits to correspond to the values of $theta$ at each end of the rod. The angle will have the same magnitude for each end of the rod, $theta_0$, given by:

$ sin theta_0 = frac(L, 2 sqrt(h^2 + frac(L^2, 4))) $
The magnitude of the field is thus given by:

$ g & = frac(G M, L h) integral_(-theta_0)^(theta_0) cos theta d theta \
& = frac(G M, L h) upright [ n theta ]_(-theta_0)^(theta_0) \
& = frac(2 G M, L h) sin theta_0 \
& = frac(2 G M, L h) frac(L, 2 sqrt(h^2 + frac(L^2, 4))) $
The gravitational field at point $P$ is thus given by:

$ arrow(g) = -frac(2 G M, L h) frac(L, 2 sqrt(h^2 + frac(L^2, 4))) hat(y) $
]