---
title: Appendix B - An Introduction to Visual Python
numbering:
  headings:
  heading_1:
    start: 3
---
(app:visualpython)=
# Overview

This appendix gives a very brief introduction to calculus with a focus on the tools needed in physics. 
 
:::{hint} Learning Objectives
* Understand the trinket.io platform
* Understand how to create and position objects in trinket.
* Understand how to create motion with objects in trinket.
:::

# Code in this textbook
When referring to general ideas or something very brief, Visual Python code may be written in-line. For example, ```this is a general code statement```. When giving explicit code to be implemented, Visual Python code will be written in "display mode". For example,
```python
print("This code is meant to be implemented into a trinket.")
```
The distinction should become clear as you work through this appendix. We hope to provide in this textbook all of the instruction necessary to create physics simulations using Visual Python in the trinket platform. In the event that more information is desired, a good reference is https://www.glowscript.org/docs/VPythonDocs/index.html.

# The trinket.io platform

Trinket.io is web-based programming platform with a few different programming languages available,e.g., Python, Visual Python, R, Java, and HTML5. In this textbook, we will use primarily Visual Python, which is a language built on Python that allows Python programming to manipulate simulated objects in three-dimensional space. The trinket [](#app:visualpython:earthmoonorbit) is a Visual Python program that simulates a moon-like mass orbiting an Earth-like mass. Click the play button to see the simulation.
:::{iframe} https://trinket.io/embed/glowscript/7a039bd28b
:label: app:visualpython:earthmoonorbit
:width: 100%
:align: center
The moon orbiting the Earth.
:::
A few notes about the embedded trinkets in this book:
* The menu in the upper left corner allows full-screen viewing.
* The center bar between the code and the simulation can be adjusted to make the either consume more of the screen for easier viewing.
* The right mouse button allows rotation of the view.
* The mouse wheel allows zooming in and out of the view.
* If signed into trinket, readers should be able to click "Remix" in the upper right corner to save a trinket to their own account.

## Trinket accounts
The website trinket.io offers a variety of accounts. You can learn more about these at https://trinket.io/schools. The three main account modes trinket might be implemented in your course are
* with free accounts for everyone where the instructor shares pre-written shells for students to complete
* with free accounts for students and a pay account for the instructor. This allows the instructor to build trinket courses with assignments.
* with pay accounts for everyone that offers the most options.

## What is a trinket?
A trinket is a Visual Python program written in the trinket.io web platform. When starting a new program, a trinket will look like [](#app:visualpython:blanktrinket). The ```Web Vpython``` line indicates the language. This line should always be in a trinket that uses the Visual Python language. The version number may change as updates are made to the Visual Python language.
:::{iframe} https://trinket.io/embed/glowscript/8f1815879d
:label: app:visualpython:blanktrinket
:width: 100%
:align: center
A blank trinket ready to begin programming.
:::
Trinkets in this book are interactive. Readers can enter code and run the code while reading the textbook. Give it a try. Enter the following code and click the play button. 

```python
print("Hello World! This is my first trinket.")
```

If you wish, you can Remix the trinket to your own account. It will appear in your account as "BlankTrinket". You may rename your trinkets from the trinket.io website.

# Programming in Visual Python

## Create objects in a trinket
The choice of Visual Python is so that readers can visualize the physics being discussed in the book. Therefore, almost every program will be focused on manipulating Visual Python objects. It is important for readers to become comfortable with creating these objects. In the following examples, we will demonstrate spheres and cylinders. All Visual Python objects have "attributes" such as position, color, and size. [](#tab:visualpython:objattrs) lists common objects and their attributes. Notice the attributes vary in definition such as vector, scalar, or some text-based variable. It is also possible to create new, user-defined attributes, which will be discussed below.
```{table} A quick reference for a few commonly used objects and their attributes
:label: app:visualpython:objsattrs
| Object | Attributes |
|:------ | :--------- |
| sphere | pos (vector) – Position of center. Default (0,0,0).|
|        | radius (scalar) – Default 1.|
|        | color (vector) – Default color.white
|        | size (vector) – Dimensions of a box surrounding the sphere. Default (2,2,2).
|        | axis (vector) – Default (1,0,0)
| box    | pos (vector) – Position of center. Default (0,0,0).|
|        | axis (vector) – Extends from left to right end. Default <1,0,0>.|
|        | color (vector) – Default color.white.|
|        | length (scalar) – Length of box. Default 1.|
|        | height (scalar) – Height of box. Default 1.|
|        | width (scalar) – Width of box. Default 1.|
|        | size (vector) – Length, width, and height in one vector. An alternative to length, height, width.|
| arrow  | pos (vector) – Position of tail. Default (0,0,0).|
|        | axis (vector) – Extends from tail to tip. Default (1,0,0).|
|        | color (vector) – Default is color.white|
|        | round (boolean) – Makes shaft and head round instead of square. Default is False.|
|        | shaftwidth (scalar) – Width of tail. Default 0.1*(length of arrow)|
|        | headwidth (scalar) – Default 2*shaftwidth|
|        | headlength (scalar) – Default 3*shaftwidth|
|cylinder| pos (vector) – Position of left end. Default (0,0,0).|
|        | axis (vector) – Extends from pos to end. Default (1,0,0).|
|        | color (vector) – Default color.white.|
|        | radius – Radius of the cylinder. Default is 1.|
|        | length (scalar) – Length of axis. Setting length sets magnitude of axis. Default is 1.|
|        | size (vector) – Length, height, width of a box surrounding the cylinder. Default is (1,1,1).|
```

### Spheres
To create a sphere at the origin of a cartesian coordinate system, enter the following code. 
```python
ball = sphere(pos=vec(0,0,0), color=color.green, radius=0.1)
```
One can think of the spatial coordinate system being in meters so that all lengths are denoted in meters. Of course, this is arbitrary, and the scale could be considered any length desired, and the programming would need to match the chosen scale. Notice the color is defined with ```color=color.green```. It is important to define colors this way, i.e., with the "color-dot" format. Readily available colors are red, green, blue, cyan, magenta, yellow, orange, purple, and white. The ```radius``` variable is often chosen based on the scale of motion that will be simultated. For example, if the sphere is going to be moved centimeters, the radius should be smaller than 1 cm, and if the sphere is going to move meters, the radius would be smaller than 1 meter.

:::{note} Example
Make a collection of spheres each a different color arranged on the corners of a 1x1x1 cube with the origin as the center of the cube.
:::{note} Solution
:class: dropdown
Notice in the code, we define the half-length of the cube edges ```a``` and the sphere radii ```r```. Then, we displace each sphere the half-length along the various axes. This makes the program easily edited to change the size of the cube and size of the spheres.
:::{iframe} https://trinket.io/embed/glowscript/77a3ced8b9
:label: ex:visualpython:simplecube
:width: 100%
:align: center
Spheres on the corners of a 1x1x1 cube.
:::


### Cylinders
To create a magenta cylinder 5 meters long, radius 0.1 meter, named ```cyl```, with one end at the origin and along the $x$-axis, enter the following code. 
```python
cyl = cylinder(pos=vec(0,0,0), axis=vec(1,0,0), radius=0.1, length=5, size=2, color=color.magenta)
```
The axis can easily be changed to orient a cylinder along the cartesian axes. If it desired for the cylinder to be oriented at an angle, one would use the Pythagorean Theorem or trigonometry to determine the unit vector pointed in the desired direction. Then, this would become the axis vector. For example, a cylinder oriented at $45\degree$ in the $xy$-plane would be found by
```{math}
x &= r\cos 45\degree\\
y &= r\sin 45\degree\\
z &= 0
```
Since we want a unit vector ($r=1$), and $x=y=\sqrt{1/2}$. In Python power are expressed using ```**``` rather than ```^```. The command to orient a cylinder at $45\degree$ is
```python
cyl = cylinder(pos=vec(0,0,0), axis=vec(0.5**0.5,0.5**0.5,0), radius=0.1, length=5, size=2, color=color.magenta)
```
However, we may also use trigonometric functions.
```python
cyl = cylinder(pos=vec(0,0,0), axis=vec(cos(pi/4),sin(pi/4),0), radius=0.1, length=5, size=2, color=color.magenta)
```
:::{note} Example
Make a collection of twelve cylinders arranged to evenly divide a circle into sections like the hours on the face of a clock. Adjust the length and radius to suit your desired look.
:::{note} Solution
:class: dropdown
Notice in the code, we define the radius and length, ```R``` and ```L```. This makes the program easily edited to change the size of the model.
:::{iframe} https://trinket.io/embed/glowscript/5f9607143b
:label: ex:visualpython:cylinderclock
:width: 100%
:align: center
Spheres on the corners of a 1x1x1 cube.
:::

### ```for``` loops
It is possible to simplify the code using a ```for``` loop. This loop will increment through the desired angles to create the clock face with a single cylinder object command. The advantage is streamlined code. The disadvantage is that the cylinder objects cannot be manipulated unless we complicate the program by tracking the object names. This kind of programming is beyond the scope of this textbook. [](#fig:visualpython:forloopcylinder) shows the code using a ```for``` loop. In this program, we define the number of cylinders we want ```numcyl```. This number is used to divide $2\pi$ into that many angle segments. The ```for``` loop uses the Python ```range()``` function, which is an "inclusive-exclusive" list. That is, ```for i in range(N):``` would increment ```i``` from 0 to N-1. Notice the tabbing after the line beginning the loop indicates which commands are inside the loop.
:::{iframe} https://trinket.io/embed/glowscript/54a654fa7f
:label: fig:visualpython:forloopcylinder
:width: 100%
:align: center
For loop to place cylinders every $30\degree$.
:::

### User-defined attributes
Object attributes are accessed using the "dot" notation. For example, the position of a sphere named ```ball``` can be accessed with ```ball.pos```. It is possible to add user-defined attributes to an object. Assigning attributes is a simple way to keep track of variables and constants associated with objects. These attributes do not affect the visualization of the object. Some examples of assigning attributes to a sphere named ```ball``` are shown in [](#tab:visualpython:userattributes). Users are free to choose the names of the attributes they assign. Rembember that computer code is unit agnostic. The units are whatever the programmer decides, and it is up to the programmer to keep track of units. In this book, we will primarily use SI (or mks) units.
```{table} Some examples of user-defined object attributes.
:label: tab:visualpython:userattributes
:align: center
| **Attribute** |       **Visual Python**            |
|:------------- | :---------------------------       |
|  mass         | ```ball.m = 5```                   |
| velocity      | ```ball.vel = vec(1,1,1)```        |
| acceleration  | ```ball.acc = vec(0,0,-9.8)```     |
| momentum      | ```ball.p = ball.m * ball.vel```   |
```

# Move objects using code and physics

Once we have objects, we can apply physical principles to make them move. One way to make the ball move is to repeatedly update the position using the equation above. For example, we could write lines of code that take the initial position $x_0$ and move it forward with some amount $v\Delta t$. Since we are in a 3D world, we will do this with vectors where (for this example) only the $x$-direction is changing from the description of position and velocity. Suppose we want to take snapshots every second, i.e., ```t = 0, 1, 2, 3,...``` To update the position of our object we could write code to position the ball each second that passes.
```python
r_0 = ball.pos
ball.pos = r_0 + ball.vel * 0
ball.pos = r_0 + ball.vel * 1
ball.pos = r_0 + ball.vel * 2
ball.pos = r_0 + ball.vel * 3
ball.pos = r_0 + ball.vel * 4
```
Copy the code above that creates the ball, and add these lines in the trinket below.



You will see that your program runs all of the lines instantly, and you do not see the motion. Slow the computation down by adding the command rate(1) between each line updating the ball's position. This will delay each line by 1 second. For example,
```python
ball.pos = r_0 + ball.vel * 0
rate(1)
ball.pos = r_0 + ball.vel * 1
rate(1)
```
Hopefully it is clear to you this is an inefficient way to write a program, especially if we want to run many iterations of changing the ball's position. To make the process more streamlined, we use loops. In this case, we will use a while loop. The while loop runs "while" a condition is met. For example, we can run the ball simulation while the time is less than 10 seconds and update every 1 second. First, initialize the variable for time t to zero and the time increment dt to 1 second. Express the while loop as while t<10:, and in the while loop, update the position and time.