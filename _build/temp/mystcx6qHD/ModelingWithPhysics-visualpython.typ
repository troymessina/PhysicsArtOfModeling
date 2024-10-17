/* Written by MyST v1.3.12 */

#import "myst.typ": *

== Appendix B - An Introduction to Visual Python

=== Overview <app:visualpython>

This appendix gives a very brief introduction to calculus with a focus on the tools needed in physics.

#hintBlock(heading: [Learning Objectives])[
- Understand the #link("http://trinket.io")[trinket.io] platform
- Understand how to create and position objects in trinket.
- Understand how to create motion with objects in trinket.
]

=== Code in this textbook <code-in-this-textbook>

When referring to general ideas or something very brief, Visual Python code may be written in-line. For example, `this is a general code statement`. When giving explicit code to be implemented, Visual Python code will be written in "display mode". For example,

```python
print("This code is meant to be implemented into a trinket.")
```

The distinction should become clear as you work through this appendix. We hope to provide in this textbook all of the instruction necessary to create physics simulations using Visual Python in the trinket platform. In the event that more information is desired, a good reference is #link("https://www.glowscript.org/docs/VPythonDocs/index.html")[https://www.glowscript.org/docs/VPythonDocs/index.html].

=== The #link("http://trinket.io")[trinket.io] platform <the-trinket-io-platform>

#link("http://Trinket.io")[Trinket.io] is web-based programming platform with a few different programming languages available,e.g., Python, Visual Python, R, Java, and HTML5. In this textbook, we will use primarily Visual Python, which is a language built on Python that allows Python programming to manipulate simulated objects in three-dimensional space. The trinket @app:visualpython:earthmoonorbit is a Visual Python program that simulates a moon-like mass orbiting an Earth-like mass. Click the play button to see the simulation.

#show figure: set block(breakable: true)
#figure([
],
  caption: [
The moon orbiting the Earth.
],
  kind: "figure",
  supplement: [Figure],
) <app:visualpython:earthmoonorbit>

A few notes about the embedded trinkets in this book:

- The menu in the upper left corner allows full-screen viewing.
- The center bar between the code and the simulation can be adjusted to make the either consume more of the screen for easier viewing.
- The right mouse button allows rotation of the view.
- The mouse wheel allows zooming in and out of the view.
- If signed into trinket, readers should be able to click "Remix" in the upper right corner to save a trinket to their own account.

==== Trinket accounts <trinket-accounts>

The website #link("http://trinket.io")[trinket.io] offers a variety of accounts. You can learn more about these at #link("https://trinket.io/schools")[https://trinket.io/schools]. The three main account modes trinket might be implemented in your course are

- with free accounts for everyone where the instructor shares pre-written shells for students to complete
- with free accounts for students and a pay account for the instructor. This allows the instructor to build trinket courses with assignments.
- with pay accounts for everyone that offers the most options.

==== What is a trinket? <what-is-a-trinket>

A trinket is a Visual Python program written in the #link("http://trinket.io")[trinket.io] web platform. When starting a new program, a trinket will look like @app:visualpython:blanktrinket. The `Web Vpython` line indicates the language. This line should always be in a trinket that uses the Visual Python language. The version number may change as updates are made to the Visual Python language.

#show figure: set block(breakable: true)
#figure([
],
  caption: [
A blank trinket ready to begin programming.
],
  kind: "figure",
  supplement: [Figure],
) <app:visualpython:blanktrinket>

Trinkets in this book are interactive. Readers can enter code and run the code while reading the textbook. Give it a try. Enter the following code and click the play button.

```python
print("Hello World! This is my first trinket.")
```

If you wish, you can Remix the trinket to your own account. It will appear in your account as "BlankTrinket". You may rename your trinkets from the #link("http://trinket.io")[trinket.io] website.

=== Programming in Visual Python <programming-in-visual-python>

==== Create objects in a trinket <create-objects-in-a-trinket>

The choice of Visual Python is so that readers can visualize the physics being discussed in the book. Therefore, almost every program will be focused on manipulating Visual Python objects. It is important for readers to become comfortable with creating these objects. In the following examples, we will demonstrate spheres and cylinders. All Visual Python objects have "attributes" such as position, color, and size. #link("\#tab:visualpython:objattrs") lists common objects and their attributes. Notice the attributes vary in definition such as vector, scalar, or some text-based variable. It is also possible to create new, user-defined attributes, which will be discussed below.

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
Object
],
[
Attributes
],
[
sphere
],
[
pos (vector) – Position of center. Default (0,0,0).
],
[
],
[
radius (scalar) – Default 1.
],
[
],
[
color (vector) – Default color.white
],
[
],
[
size (vector) – Dimensions of a box surrounding the sphere. Default (2,2,2).
],
[
],
[
axis (vector) – Default (1,0,0)
],
[
box
],
[
pos (vector) – Position of center. Default (0,0,0).
],
[
],
[
axis (vector) – Extends from left to right end. Default \< 1,0,0\> .
],
[
],
[
color (vector) – Default color.white.
],
[
],
[
length (scalar) – Length of box. Default 1.
],
[
],
[
height (scalar) – Height of box. Default 1.
],
[
],
[
width (scalar) – Width of box. Default 1.
],
[
],
[
size (vector) – Length, width, and height in one vector. An alternative to length, height, width.
],
[
arrow
],
[
pos (vector) – Position of tail. Default (0,0,0).
],
[
],
[
axis (vector) – Extends from tail to tip. Default (1,0,0).
],
[
],
[
color (vector) – Default is color.white
],
[
],
[
round (boolean) – Makes shaft and head round instead of square. Default is False.
],
[
],
[
shaftwidth (scalar) – Width of tail. Default 0.1\*(length of arrow)
],
[
],
[
headwidth (scalar) – Default 2\*shaftwidth
],
[
],
[
headlength (scalar) – Default 3\*shaftwidth
],
[
cylinder
],
[
pos (vector) – Position of left end. Default (0,0,0).
],
[
],
[
axis (vector) – Extends from pos to end. Default (1,0,0).
],
[
],
[
color (vector) – Default color.white.
],
[
],
[
radius – Radius of the cylinder. Default is 1.
],
[
],
[
length (scalar) – Length of axis. Setting length sets magnitude of axis. Default is 1.
],
[
],
[
size (vector) – Length, height, width of a box surrounding the cylinder. Default is (1,1,1).
],
),
  caption: [
A quick reference for a few commonly used objects and their attributes
],
  kind: "table",
  supplement: [Table],
) <app:visualpython:objsattrs>

===== Spheres <spheres>

To create a sphere at the origin of a cartesian coordinate system, enter the following code.

```python
ball = sphere(pos=vec(0,0,0), color=color.green, radius=0.1)
```

One can think of the spatial coordinate system being in meters so that all lengths are denoted in meters. Of course, this is arbitrary, and the scale could be considered any length desired, and the programming would need to match the chosen scale. Notice the color is defined with `color=color.green`. It is important to define colors this way, i.e., with the "color-dot" format. Readily available colors are red, green, blue, cyan, magenta, yellow, orange, purple, and white. The `radius` variable is often chosen based on the scale of motion that will be simultated. For example, if the sphere is going to be moved centimeters, the radius should be smaller than 1 cm, and if the sphere is going to move meters, the radius would be smaller than 1 meter.

#noteBlock(heading: [Example])[
Make a collection of spheres each a different color arranged on the corners of a 1x1x1 cube with the origin as the center of the cube.

#noteBlock(heading: [Solution])[
Notice in the code, we define the half-length of the cube edges `a` and the sphere radii `r`. Then, we displace each sphere the half-length along the various axes. This makes the program easily edited to change the size of the cube and size of the spheres.

#show figure: set block(breakable: true)
#figure([
],
  caption: [
Spheres on the corners of a 1x1x1 cube.
],
  kind: "figure",
  supplement: [Figure],
) <ex:visualpython:simplecube>
]
]

===== Cylinders <cylinders>

To create a magenta cylinder 5 meters long, radius 0.1 meter, named `cyl`, with one end at the origin and along the $x$-axis, enter the following code.

```python
cyl = cylinder(pos=vec(0,0,0), axis=vec(1,0,0), radius=0.1, length=5, size=2, color=color.magenta)
```

The axis can easily be changed to orient a cylinder along the cartesian axes. If it desired for the cylinder to be oriented at an angle, one would use the Pythagorean Theorem or trigonometry to determine the unit vector pointed in the desired direction. Then, this would become the axis vector. For example, a cylinder oriented at $4 5 degree$ in the $x y$-plane would be found by

$ x & = r cos 4 5 degree \
y & = r sin 4 5 degree \
z & = 0 $
Since we want a unit vector ($r = 1$), and $x = y = sqrt(1 \/ 2)$. In Python power are expressed using `**` rather than `^`. The command to orient a cylinder at $4 5 degree$ is

```python
cyl = cylinder(pos=vec(0,0,0), axis=vec(0.5**0.5,0.5**0.5,0), radius=0.1, length=5, size=2, color=color.magenta)
```

However, we may also use trigonometric functions.

```python
cyl = cylinder(pos=vec(0,0,0), axis=vec(cos(pi/4),sin(pi/4),0), radius=0.1, length=5, size=2, color=color.magenta)
```

#noteBlock(heading: [Example])[
Make a collection of twelve cylinders arranged to evenly divide a circle into sections like the hours on the face of a clock. Adjust the length and radius to suit your desired look.

#noteBlock(heading: [Solution])[
Notice in the code, we define the radius and length, `R` and `L`. This makes the program easily edited to change the size of the model.

#show figure: set block(breakable: true)
#figure([
],
  caption: [
Spheres on the corners of a 1x1x1 cube.
],
  kind: "figure",
  supplement: [Figure],
) <ex:visualpython:cylinderclock>
]
]

===== `for` loops <for-loops>

It is possible to simplify the code using a `for` loop. This loop will increment through the desired angles to create the clock face with a single cylinder object command. The advantage is streamlined code. The disadvantage is that the cylinder objects cannot be manipulated unless we complicate the program by tracking the object names. This kind of programming is beyond the scope of this textbook. @fig:visualpython:forloopcylinder shows the code using a `for` loop. In this program, we define the number of cylinders we want `numcyl`. This number is used to divide $2 pi$ into that many angle segments. The `for` loop uses the Python `range()` function, which is an "inclusive-exclusive" list. That is, `for i in range(N):` would increment `i` from 0 to N-1. Notice the tabbing after the line beginning the loop indicates which commands are inside the loop.

#show figure: set block(breakable: true)
#figure([
],
  caption: [
For loop to place cylinders every $3 0 degree$.
],
  kind: "figure",
  supplement: [Figure],
) <fig:visualpython:forloopcylinder>

===== User-defined attributes <user-defined-attributes>

Object attributes are accessed using the "dot" notation. For example, the position of a sphere named `ball` can be accessed with `ball.pos`. It is possible to add user-defined attributes to an object. Assigning attributes is a simple way to keep track of variables and constants associated with objects. These attributes do not affect the visualization of the object. Some examples of assigning attributes to a sphere named `ball` are shown in @tab:visualpython:userattributes. Users are free to choose the names of the attributes they assign. Rembember that computer code is unit agnostic. The units are whatever the programmer decides, and it is up to the programmer to keep track of units. In this book, we will primarily use SI (or mks) units.

#show figure: set block(breakable: true)
#figure(
  tablex(columns: 2, header-rows: 1, repeat-header: true, ..tableStyle,
[
*Attribute*
],
[
*Visual Python*
],
[
mass
],
[
`ball.m = 5`
],
[
velocity
],
[
`ball.vel = vec(1,1,1)`
],
[
acceleration
],
[
`ball.acc = vec(0,0,-9.8)`
],
[
momentum
],
[
`ball.p = ball.m * ball.vel`
],
),
  caption: [
Some examples of user-defined object attributes.
],
  kind: "table",
  supplement: [Table],
) <tab:visualpython:userattributes>

=== Move objects using code and physics <move-objects-using-code-and-physics>

Once we have objects, we can apply physical principles to make them move. One way to make the ball move is to repeatedly update the position using kinematic descriptions of motion. If we define an object's position as $arrow(r)$, the object will change position over time as

$ arrow(r)(t + Delta t) = arrow(r)(t) + arrow(v) Delta t + frac(1, 2) arrow(a) Delta t^2 $
Suppose we want to model a situation where there is not acceleration. We could write lines of code that take the current position $arrow(r)(t)$ and update it with some amount $arrow(v) Delta t$. Since we are in a 3D world, we must do this with vectors. For simplicity, let's assume the velocity is only the $x$-direction that is a speed of $v = 0 . 5 upright m \/ s$, i.e., `ball.vel=vec(0.5,0,0)`. Suppose we want to update every second, i.e., `t = 0, 1, 2, 3,...` or $Delta t = 1$. To update the position of our object we could write code to position the ball each second that passes.

```python
ball = sphere(pos=vec(0,0,0), radius=0.1, color=color.red)
ball.vel=vec(0.5, 0, 0)
dt = 1
ball.pos = ball.pos + ball.vel * dt #move ball after 1s
ball.pos = ball.pos + ball.vel * dt #move ball after 2s
ball.pos = ball.pos + ball.vel * dt #move ball after 3s
ball.pos = ball.pos + ball.vel * dt # move ball after 4s
ball.pos = ball.pos + ball.vel * dt # move ball after 5s
```

The statements at the end of the lines after `#` are comments that are ignored by the computer. Copy the code above run these lines in the trinket below.

#show figure: set block(breakable: true)
#figure([
],
  caption: [
A blank trinket ready to begin programming.
],
  kind: "figure",
  supplement: [Figure],
) <app:visualpython:blanktrinket>

You will see that your program runs all of the lines instantly, and you do not see the motion. Slow the computation down by adding the command `rate(1)` between each line updating the ball's position. This will delay each line by 1 second. For example,

```python
ball.pos = ball.pos + ball.vel * dt
rate(1)
ball.pos = ball.pos + ball.vel * dt
rate(1)
```

It might also be helpful to keep track of the time and position. To do this, create a variable for time, `t`, and add print statements between each move. Notice below that we can access the $x$ position with `ball.pos.x`.

```python
ball = sphere(pos=vec(0,0,0), radius=0.1, color=color.red)
ball.vel=vec(0.5, 0, 0)
t = 0
dt = 1
print(t, ball.pos.x)
rate(1)
ball.pos = ball.pos + ball.vel * dt #move ball after 1s
t = t + dt #increase the total time
print(t, ball.pos.x)
rate(1)
ball.pos = ball.pos + ball.vel * dt #move ball after 2s
t = t + dt #increase the total time
print(t, ball.pos.x)
rate(1)
ball.pos = ball.pos + ball.vel * dt #move ball after 3s
t = t + dt #increase the total time
print(t, ball.pos.x)
rate(1)
ball.pos = ball.pos + ball.vel * dt # move ball after 4s
t = t + dt #increase the total time
print(t, ball.pos.x)
rate(1)
ball.pos = ball.pos + ball.vel * dt # move ball after 5s
t = t + dt #increase the total time
print(t, ball.pos.x)
```

Finally, let's make the ball's motion obvious by adding a trail to it. In the definition of the ball add `make_trail = True`.

```python
ball = sphere(pos=vec(0,0,0), radius=0.1, color=color.red, make_trail=True)
```

==== `while` loops <while-loops>

Hopefully it is clear to you this is an inefficient way to write a program, especially if we want to run many iterations of changing the ball's position. To make the process more streamlined, we use loops. In this case, we will use a `while` loop. The while loop runs "while" a condition is met. For example, we can run the ball simulation while the time is less than 5 seconds. Because the loop streamlines the computation, we can get higher time resolution and update the position every 0.1 second. A `while` loop looks similar to a `for` loop.

```python
while t < 5:
```

Since we are using the total time as the condition for the `while` loop, it is important to keep track of the total time as we did in the previous section. To implement a `while` loop, we first initialize variables and objects. Then, every command inside the `while` loop will repeat until the condition is met.

```python
#Initialization of objects and variables
ball = sphere(pos=vec(0,0,0), radius=0.1, color=color.red, make_trail=True)
ball.vel=vec(0.5, 0, 0)
t = 0
dt = 0.1

while t < 5:
	rate(1)
	ball.pos = ball.pos + ball.vel * dt #move ball after dt
	t = t + dt #increase the total time
	print(t, ball.pos.x) #print time and position
```

Copy and paste this code to replace the code from the previous section. It will appear to run very slowly. Increase the rate until the motion looks continuous.

#noteBlock(heading: [Example])[
Change the code for the ball example above so that the ball is thrown upward along the $y$-axis with an initial speed of $1 0 upright m \/ s$, i.e., `ball.vel=vec(0, 10, 0)`. Add the acceleration due to gravity using the kinematic equation HINT: Acceleration will change both the position and the velocity over time.

$ arrow(r)(t + Delta t) = arrow(r)(t) + arrow(v) Delta t + frac(1, 2) arrow(a) Delta t^2 $
#noteBlock(heading: [Solution])[
The velocity will now initially be `ball.vel = vec(0,10,0)`. There is an acceleration `ball.acc = vec(0,-9.8,0)`. The position and velocity update will follow the kinematic equations

$ arrow(r)(t + Delta t) & = arrow(r)(t) + arrow(v) Delta t + frac(1, 2) arrow(a) Delta t^2 \
arrow(v)(t + Delta t) & = arrow(v)(t) + arrow(a) Delta t $
and in Visual Python, the code is

```python
ball.pos = ball.pos + ball.vel * dt + 0.5 * ball.acc * dt**2 #move ball after dt
ball.vel = ball.vel + ball.acc * dt #update the ball's velocity after dt
```

The entire program will be

```python
#Initialization of objects and variables
ball = sphere(pos=vec(0,0,0), radius=0.1, color=color.red, make_trail=True)
ball.vel=vec(0, 10, 0)
ball.acc=vec(0,-9.8,0)
t = 0
dt = 0.1

while t < 5:
	rate(10)
	ball.pos = ball.pos + ball.vel * dt + 0.5 * ball.acc * dt**2 #move ball after dt
	ball.vel = ball.vel + ball.acc * dt #update the ball's velocity after dt
	t = t + dt #increase the total time
	print(t, ball.pos.y) #print time and position
```
]
]