---
title: Chapter 3 - Vectors
numbering:
  headings:
  heading_1:
    start: 4
---
(chap:vectors)=
# Overview

:::{hint} Learning Objectives
* Understand the definition of a coordinate system
* Understand the definition of a vector and of a scalar
* Be able to perform algebra with vectors (addition, scalar products, vector products)}
:::

# Coordinate systems
Coordinate systems are used to describe the position of an object in space. A coordinate system is an artificial mathematical tool that we construct in order to describe the position of a real object. 

## 1D Coordinate systems 
The easiest coordinate system to construct is one that we can use to describe the location of objects in one dimensional space. For example, we may wish to describe the location of a train along a straight section of track that runs in the East-West direction. In order to do so, we must first define an "origin", which is the reference point of our coordinate system. For example, the origin for our train track may be the Kingston train station ([](#fig:Vectors:1daxistrain)).

We can describe the position of the train by specifying how far it is from the train station (the origin), using a single real number, say $x$. If the train is at position $x=0$, then we know that it is at the Kingston station. If the object is not at the origin, then we need to be able to specify on which side (East or West in our train example) of the origin the object is located. We do this by choosing a direction for our one dimensional coordinate $x$. For example, we may choose that the East side of the track corresponds to positive values of $x$ and that the West side of the track correspond to the negative values of $x$. Thus, in order to fully specify a one-dimensional coordinate system we need to choose:
* the location of the origin.
* the direction in which the coordinate, $x$, increases.
* the units in which we wish to express $x$. 

In one dimension, it is common to use the variable $x$ to define the position along the "$x$-axis". The $x$-axis _is_ our coordinate system in one dimension, and we represent it by drawing a line with an arrow in the direction of increasing $x$ and indicate where the origin is located (as in [](#fig:Vectors:1daxistrain)).

```{figure} figures/Vectors/1daxistrain.png
:label: fig:Vectors:1daxistrain
:width: 100%
:align: center
:alt: A 1d coordinate system describing the position of a train. The Kingston train station is the origin and the East side of the track corresponds to positive values of $x$. The train is located at position $x_1$.
A 1d coordinate system describing the position of a train. The Kingston train station is the origin and the East side of the track corresponds to positive values of $x$. The train is located at position $x_1$.
```
 
## 2D Coordinate systems
```{figure} figures/Vectors/xyp.png
:label: fig:Vectors:xyp
:width: 50%
:align: center
:alt: Example of Cartesian coordinate system and a point $P$ with coordinates $(x_p,y_p)$.
Example of Cartesian coordinate system and a point $P$ with coordinates $(x_p,y_p)$.
```
To describe the position of an object in two dimensions (e.g. a marble rolling on a table), we need to specify two numbers. The easiest way to do this is to define two axes, $x$ and $y$, whose origin and direction we must define. [](#fig:Vectors:xyp) shows an example of such a coordinate system. Although it is not necessary to do so, we chose $x$ and $y$ axes that are perpendicular to each other. The origin of the coordinate system is where the two axes intersect. One is free to choose any two directions for the axes (as long as they are not parallel). However, choosing axes that are perpendicular (a "Cartesian" coordinate system) is usually the most convenient.

To fully describe the position of an object, we must specify both its position along the $x$ and $y$ axes. For example, point $P$ in [](#fig:Vectors:xyp) has two **coordinates**, $x_p$ and $y_p$, that define its position. The $x$ coordinate is found by drawing a line through $P$ that is parallel to the $y$ axis and is given by the intersection of that line with the $x$ axis. The $y$ coordinate is found by drawing a line through point $P$ that is parallel to the $x$ axis and is given by the intersection of that line with the $y$ axis.

:::{tip} Checkpoint 3.1
:label: Checkpoint-3.1
[](#fig:Vectors:xyslant) shows a coordinate system that is not orthogonal (where the $x$ and $y$ axes are not perpendicular). Which value on the figure correctly indicates the $y$ coordinate of point $P$?
```{figure} figures/Vectors/xyslant.png
:label: fig:Vectors:xyslant
:width: 50%
:align: center
:alt: A non-orthogonal coordinate system (the $x$ and $y$ axes are not perpendicular).
A non-orthogonal coordinate system (the $x$ and $y$ axes are not perpendicular).
```
1. $y_1$
2. $y_2$
3. $y_3$
:::{tip} Answer
:label: Checkpoint-3.1
:class: dropdown
1.
:::

The most common choice of coordinate system in two dimensions is the Cartesian coordinate system that we just described, where the $x$ and $y$ axes are perpendicular and share a common origin, as shown in [](#fig:Vectors:xyp). When applicable, by convention, we usually choose the $y$ axis to correspond to the vertical direction.

Another common choice is a "polar" coordinate system, where the position of an object is specified by a distance to the origin, $r$, and an angle, $\theta$, relative to a specified direction, as shown in [](#fig:Vectors:polarp). Often, a polar coordinate system is defined alongside a Cartesian system, so that $r$ is the distance to the origin of the Cartesian system and $\theta$ is the angle with respect to the $x$ axis.

```{figure} figures/Vectors/polarp.png
:label: fig:Vectors:polarp 
:width: 50%
:align: center
:alt: Example of a polar coordinate system and a point $P$ with coordinates $(r,\theta)$.
Example of a polar coordinate system and a point $P$ with coordinates $(r,\theta)$.
```


One can easily convert between the two Cartesian coordinates, $x$ and $y$, and the two corresponding polar coordinates, $r$ and $\theta$:
```{math}

\begin{align*}
x&=r\cos(\theta)\\
y&=r\sin(\theta)\\
r&=\sqrt{x^2+y^2}\\
\tan(\theta) &= \frac{y}{x}
\end{align*}
```
Polar coordinates are often used to describe the motion of an object moving around a circle, as this means that only one of the coordinates ($\theta$) changes with time (if the origin of the coordinate system is chosen to coincide with the centre of the circle).

## 3D Coordinate systems
In three dimensions, we need to specify three numbers to describe the position of an object (e.g. a bird flying in the air). In a three dimensional Cartesian coordinate system, we simply add a third axis, $z$, that is mutually perpendicular to both $x$ and $y$. The position of an object can then be specified by using the three coordinates, $x$, $y$, and $z$. By convention, we use the $z$ axis to be the vertical direction in three dimensions.

Two additional coordinate systems are common in three dimensions: "cylindrical" and "spherical" coordinates. All three systems are illustrated in [](#fig:Vectors:3dcoords) superimposed onto the Cartesian system.
```{figure} figures/Vectors/3dcoords.png
:label: fig:Vectors:3dcoords
:width: 100%
:align: center
:alt: Cartesian (left), cylindrical (centre) and spherical (right) coordinate systems used in three dimensions. The $y$ and $z$ axes are in the plane of the page, whereas the $x$ axis comes out of the page.
Cartesian (left), cylindrical (centre) and spherical (right) coordinate systems used in three dimensions. The $y$ and $z$ axes are in the plane of the page, whereas the $x$ axis comes out of the page.
```

Cylindrical coordinates can be thought of as an extension of the polar coordinates. We keep the same Cartesian coordinate $z$ to indicate the height above the $xy$ plane, however, we use the *azimuthal angle*, $\phi$, and the radius, $\rho$, to describe the position of the projection of a point onto the $xy$ plane. $\phi$ is the angle between the $x$ axis and the line from the origin to the projection of the point in the $xy$ plane and $\rho$ is the distance between the point and the $z$ axis. Thus, cylindrical coordinates are very similar to the polar coordinate system introduced in two dimensions, except with the addition of the $z$ coordinate. Cylindrical coordinates are useful for describing situations with azimuthal symmetry, such as the motion along the surface of a cylinder. For example, consider point $P$ in [](#fig:Vectors:cylindricalcoordinates). Point $P$ is located a distance $\rho$ from the $z$ axis, as it is located on the surface of the cylinder (the circular end of the cylinder has a radius $\rho$). Point $P$ is a height $z$ above the $xy$ plane, and a line from the $z$ axis to point $P$ makes an angle $\phi$ with the $x$ axis.

```{figure} figures/Vectors/cylindricalcoordinates.png
:label: fig:Vectors:cylindricalcoordinates
:width: 50%
:align: center
:alt: Describing the position of $P$, located on the surface of a cylinder, in cylindrical coordinates.
Describing the position of $P$, located on the surface of a cylinder, in cylindrical coordinates.
```

The cylindrical coordinates are related to the Cartesian coordinates by:
```{math}

\begin{align*}
\rho &= \sqrt{x^2+y^2}\\
\tan(\phi) &= \frac{y}{x}\\
z&=z
\end{align*}
```
In spherical coordinates, a point $P$ is described by the radius, $r$, the *polar angle* $\theta$, and the *azimuthal angle*, $\phi$. The radius is the distance between the point and the origin. The polar angle is the angle with the $z$ axis that is made by the line from the origin to the point. The azimuthal angle is defined in the same way as in polar coordinates. Note that the value of $\phi$ must be between $0$ and $2\pi$, whereas the value of $\theta$ must be between $0$ and $\pi$. 

Spherical coordinates are useful for describing situations that have spherical symmetry, such as a person walking on the surface of the Earth, since the radial coordinate will not change. For example, this is shown with Point $P$ in [](#fig:Vectors:sphericalcoordinates), located on the surface of a sphere of radius $r$. 

```{figure} figures/Vectors/sphericalcoordinates.png
:label: fig:Vectors:sphericalcoordinates
:width: 50%
:align: center
:alt: Describing the position of $P$, located on the surface of a sphere, in spherical coordinates.
Describing the position of $P$, located on the surface of a sphere, in spherical coordinates.
```

 The spherical coordinates are related to the Cartesian coordinates by:
```{math}

\begin{align*}
r &= \sqrt{x^2+y^2+z^2}\\
\cos(\theta) &= \frac{z}{r}=\frac{z}{\sqrt{x^2+y^2+z^2}}\\
\tan(\phi) &= \frac{y}{x}\\
\end{align*}
```

# Vectors
So far, we have seen how to use a coordinate system to describe the position of a single point in space relative to an origin. In this section, we introduce the notion of a "vector", which allows us to describe quantities that have a **magnitude** and a **direction**. For example, you can use a vector to describe the fact that you walked \SI{5}{km} in the North direction. A vector can be visualized by an arrow. The length of the arrow is the magnitude that we wish to describe, and the direction of the arrow corresponds to the direction that we would like to describe. 

Unlike a point in space, vectors **have no location**. That is, vectors are simply an arrow, and you can choose to draw that arrow anywhere you like. In two dimensional space, one requires two numbers to completely define a vector. In three dimensional space, one requires three numbers to completely define a vector. [](#fig:Vectors:dvec) shows a two dimensional vector, $\vec d$, twice. Because both arrows in the figure have the same magnitude and direction, they represent the *same* vector. When we refer to quantities that are vectors, we usually draw an arrow on top of the quantity ($\vec d$) to indicate that they are vectors. We use the word "scalar" to refer to numbers that are not vectors (a regular number is thus also called a scalar to distinguish it from a quantity that is a vector).

```{figure} figures/Vectors/dvec.png
:label: fig:Vectors:dvec
:width: 50%
:align: center
:alt: A vector $\vec d$ shown twice, once with its Cartesian components ($d_x$, $d_y$) and once with its magnitude and direction ($d$, $\phi$).
A vector $\vec d$ shown twice, once with its Cartesian components ($d_x$, $d_y$) and once with its magnitude and direction ($d$, $\phi$).
```

In analogy with coordinate systems, we have multiple ways to choose the numbers that we use to describe the vector. The most convenient choice is usually to use the "Cartesian components" of the vector which correspond to the length of the vector when projected onto a Cartesian coordinate system. For example, in [](#fig:Vectors:dvec), the Cartesian components of the vector $\vec d$ are labelled as ($d_x$, $d_y$) indicating that the vector has a length of $d_x$ in the $x$ direction and $d_y$ in the $y$ direction. Furthermore, the number $d_x$ is negative, since the vector points in the negative $x$ direction. Another common choice is to use the length of the vector, which we label $d$ (the name of the vector without the arrow on top), and the angle, $\phi$ that the vector makes with the $x$-axis, as illustrated in [](#fig:Vectors:dvec). In terms of the two dimensional Cartesian components, the magnitude of the vector is given by:
```{math}

\begin{align*}
d&= ||\vec d||= \sqrt{d_x^2+d_y^2}
\end{align*}
```
where we also introduced the notation that placing two vertical bars around a vector ($||\vec d||$) is used to indicated its magnitude. Note that in three dimensions, it is usually not convenient to specify the direction unless the vector lies in one of the planes defined by the coordinate system (e.g the $xy$ plane). In three dimensions, it is usually most convenient to specify the three Cartesian components.


## Unit vectors 
A special category of vectors is "unit vectors", which are simply vectors that have a length (magnitude) of 1 (in whichever units the coordinate system is defined). Unit vectors are particularly useful for indicating direction. For example, in [](#fig:Vectors:dvec), we may be interested in indicating the direction of the vector $\vec d$. Unit vectors are denoted by using a "hat" instead of an arrow. Thus, the vector $\hat d$, is the vector of length 1 that points in the same direction as $\vec d$. The (Cartesian) components of $\hat d$ are easily found by dividing the corresponding components of $\vec d$ by $d$ (the magnitude):
```{math}

\begin{align*}
(\hat d)_x &= \frac{d_x}{d}=\frac{d_x}{\sqrt{d_x^2+d_y^2}}\\
(\hat d)_y &= \frac{d_y}{d}=\frac{d_y}{\sqrt{d_x^2+d_y^2}}\\
\therefore d &= ||\hat d||=\sqrt{(\hat d)_x^2+(\hat d)_y^2}=\sqrt{\frac{d_x^2}{d_x^2+d_y^2}+\frac{d_y^2}{d_x^2+d_y^2}}=1
\end{align*}
```

A specific type of unit vector is the units vectors that are parallel to the axes of the coordinate system. Those vectors are denoted $\hat x$, $\hat y$, $\hat z$ (and sometimes $\hat i$, $\hat j$, $\hat k$ or $\hat e_x$, $\hat e_y$, $\hat e_z$) for the $x$, $y$, and $z$ axes, respectively. Thus, the vector $d\hat{x}$, is the vector of length $d$ that points in the positive $x$ direction. 

## Notations and representation of vectors
There are multiple notations for describing a vector using its components. The following are all equivalent ways to write down the vector $\vec d$ in terms of its components $d_x$ and $d_y$:
```{math}

\begin{align*}
\vec d &= (d_x,d_y)\quad&\text{row vector}\\
       &=\begin{pmatrix}
           d_x \\
           d_y \\
         \end{pmatrix}\quad&\text{column vector}\\
         &= d_x\hat x +d_y \hat y\quad&\text{using }\hat x,\;\hat y\\
         &=d_x\hat i +d_y \hat j \quad&\text{using }\hat i,\;\hat j
\end{align*}
```
The vectors $\hat x$ ($\hat i$) and $\hat y$ ($\hat j$) are unit vectors in $x$ and $y$ directions respectively.
For example, the unit vector $\hat y$ can be written down as (0,1) in two dimensions or (0,1,0) in three dimensions, using the row notation.

:::{tip} Checkpoint 3.2
:label: Checkpoint-3.2
What is the magnitude (the length) of the vector $5\hat x-2\hat y$?
1. 3.0
2. 5.4
3. 7.0
4. 10.0
:::{tip} Answer
:label: Checkpoint-3.2
:class: dropdown
2.
:::
Illustrating a vector graphically in two dimensions is straightforward, but difficult in three dimensions. To help remedy this, a notation is introduced in order to draw vectors that point in or out of the page (perpendicular to the plane of the page). The notation comes from imagining that the vector is an archery arrow. If the vector is coming out of the page (at you!), then you would see the head of the arrow, which we represent as a circle with a dot (the dot is the point of the arrow, the circle is the base of the conically shaped arrowhead). If instead, the vector points into the page, then you would see the back of the arrow, which we represent as a cross (the cross being the feathers in the tail of the arrow). This is illustrated in [](#fig:Vectors:vector3d).

```{figure} figures/Vectors/vector3d.png
:label: fig:Vectors:vector3d
:width: 50%
:align: center
:alt: Geometric representation of three vectors. The vector $\vec a$ lies in the plane of the page, the vector $\vec b$ is pointing out of the page, and the vector $\vec c$ is pointing into the page.
Geometric representation of three vectors. The vector $\vec a$ lies in the plane of the page, the vector $\vec b$ is pointing out of the page, and the vector $\vec c$ is pointing into the page.
```

# Vector algebra
In this section, we describe the various algebraic operations that can be performed using vectors. 
## Multiplication/division of a vector by a scalar
One can multiply (or divide) a vector by a scalar (a number). Suppose that we are given a vector $\vec v=(v_x, v_y, v_z)$ and a scalar $a$. The multiplication $a\vec v$ is defined to be a new vector, say $\vec w$, whose components are the components of $\vec v$ multiplied by $a$:
```math
\vec w = a\vec v = (av_x, a v_y, av_z)
```
Similarly, the division of a vector by a scalar is defined analogously by dividing each Cartesian component by the scalar::
```math
\vec w = \frac{\vec v}{a} = \left(\frac{v_x}{a}, \frac{v_y}{a}, \frac{v_z}{a}\right)
```
:::{tip} Checkpoint 3.3
:label: Checkpoint-3.3
What happens to the length of a vector if the vector is multiplied by 2 (a scalar)?
1. The length doubles
2. The length is halved
3. The length is quadrupled
4. It depends on the direction of the vector
:::{tip} Answer
:label: Checkpoint-3.3
:class: dropdown
1.
:::
In particular, this makes it easy to determine the unit vector, $\hat v$, that points in the same direction as $\vec v$:
```math
\hat v = \frac{\vec v}{v}
```
where $v$ is the (scalar) magnitude of $\vec v$. 

## Addition/subtraction of two vectors
The sum of two vectors, $\vec a$ and $\vec b$, is found by adding the components of the two vectors. Similarly, the difference between two vectors is found by subtracting the components. For example, if $\vec c=\vec a+\vec b$, the components of $\vec c$ are given by:
```{math}

\begin{align*}
\vec c &= \vec a + \vec b = \begin{pmatrix}
           a_x \\
           a_y \\
         \end{pmatrix} + \begin{pmatrix}
           b_x \\
           b_y \\
         \end{pmatrix}\\
        \therefore \begin{pmatrix}
           c_x \\
           c_y \\
         \end{pmatrix} &=\begin{pmatrix}
           a_x+b_x \\
           a_y+b_y \\
         \end{pmatrix}
\end{align*}
```
where we chose to use the "column vector" notation. The column vector notation highlights the fact that the algebra (addition, subtraction) is performed independently on the $x$ and $y$ components. We can thus write this sum equivalently as two scalar equations, one for each coordinate:
```{math}

\begin{align*}
c_x &= a_x+b_x\\
c_y &= a_y+b_y
\end{align*}
```
Vectors can thus be used as a short-hand notation for representing multiple equations (one equation per component). When we use vectors to write an equation such as:
```math
\vec F = m\vec a
```
we really mean that there is one scalar equation per component of the vectors:
```{math}

\begin{align*}
F_x &= ma_x\\
F_y &= ma_y\\
F_z &= ma_z
\end{align*}
```

:::{note} Example 3.1
:label: Example-3.1
Given two vectors, $\vec a=2\hat x+3\hat y$, and $\vec b=5\hat x-2\hat y$, calculate the vector $\vec c= 2\vec a- 3\vec b$.
:::{note} Solution
:label: Example-3.1
:class: dropdown
This can easily be solved algebraically by collecting terms for each component, $\hat x$ and $\hat y$:
```{math}

\begin{align*}
\vec c &= 2\vec a- 3\vec b\\
&=2 (2\hat x+3\hat y) - 3 (5\hat x-2\hat y) \\
&=(4\hat x+6\hat y)-(15\hat x-6\hat y) \\
&=(4-15)\hat x + (6+6) \hat y\\
&= -11 \hat x + 12 \hat y
\end{align*}
```
We can think of these operations as being performed independently on the components:
```{math}

\begin{align*}
c_x&=2a_x-3b_x=-11\\
c_y&=2a_y-3b_y=12
\end{align*}
```
:::

Geometrically, one can easily visualize the addition and subtraction of vectors. This is illustrated in [](#fig:Vectors:aplusbvec) for the case of adding vectors $\vec a$ and $\vec b$ to get the vector $\vec c$. Geometrically, the sum of the vectors $\vec a$ and $\vec b$ (sometimes also called the "resultant") can be found by:
1. Placing the "tail" of vector $\vec b$ at the "head" of $\vec a$ (think of an arrow, the pointy part is the head and the feathery part is the tail)
2. Drawing the vector that goes from the tail of vector $\vec a$ to the head of vector $\vec b$.

```{figure} figures/Vectors/aplusbvec.png
:label: fig:Vectors:aplusbvec
:width: 50%
:align: center
:alt: Geometric addition of the vectors $\vec a$ and $\vec b$ by placing them "head to tail".
Geometric addition of the vectors $\vec a$ and $\vec b$ by placing them "head to tail".
```

Subtracting two vectors geometrically is done in the same way as addition. For example, the vector $\vec c$, given by $\vec c=\vec a -\vec b$ can also be expressed as $\vec c = \vec a + (-1) \vec b$. That is, first multiply the vector $\vec b$ by minus 1 (which just reverses its direction), then add that vector, "head to tail", to the vector $\vec a$. 

Now that we know how to add vectors, we can better understand the notation $\vec a = a_x \hat x+ a_y\hat y$. This is not simply a notation, but is in fact algebraically correct. It means: "multiply the vector $\hat x$ by $a_x$ (thus giving it a length of $a_x$) and then add $a_y$ times the vector $\hat y$". This is illustrated in [](#fig:Vectors:acomponents), which shows the unit vectors, $\hat x$ and $\hat y$, which are then multiplied by $a_x$ and $a_y$, respectively, and then added together "head to tail".

```{figure} figures/Vectors/acomponents.png
:label: fig:Vectors:acomponents
:width: 50%
:align: center
:alt: Illustration that the notation $\vec a = a_x \hat x+ a_y\hat y$ is in fact the vector addition of $a_x \hat x$ and $a_y \hat y$.
Illustration that the notation $\vec a = a_x \hat x+ a_y\hat y$ is in fact the vector addition of $a_x \hat x$ and $a_y \hat y$.
```

(sec:Vectors:scalarproduct)=
## The scalar product
There are two ways to "multiply" vectors: the "scalar product" and the "vector product". The scalar product (or "dot product") takes two vectors and results in a scalar (a number). The vector product (or "cross product") takes two vectors and results in a third vector. 

The scalar product, $\vec a \cdot \vec b$, of two vectors $\vec a$ and $\vec b$, is defined as the following:
```math
\vec a \cdot \vec b=a_xb_x +a_yb_y
```
That is, one multiplies the individual components of the two vectors and then adds those products for each component. This is easily extended to the three dimensional case by adding a term $a_zb_z$ to the sum. The scalar product is also related to the angle between the two vectors when the vectors are placed "tail to tail", as in [](#fig:Vectors:scalarproduct)
```math
\vec a \cdot \vec b= ab\cos\theta
```

```{figure} figures/Vectors/scalarproduct.png
:label: fig:Vectors:scalarproduct
:width: 50%
:align: center
:alt: Illustration of the angle between vectors $\vec a$ and $\vec b$ when these are placed tail to tail.
Illustration of the angle between vectors $\vec a$ and $\vec b$ when these are placed tail to tail.
```

The scalar product between two vectors of a fixed length will be maximal when the two vectors are parallel ($\cos\theta=1$) and zero when the vectors are perpendicular ($\cos\theta =0$). The scalar product is thus useful when we want to calculate quantities that are maximal when two vectors are parallel. 

:::{tip} Checkpoint 3.4
:label: Checkpoint-3.4
The vectors $\vec a $ and $\vec b$ in the three diagrams below have the same magnitude. Order the diagrams from the one that gives the smallest scalar product $\vec a\cdot \vec b$ to the largest scalar product.
```{figure} figures/Vectors/vectororder.png
:label: fig:Vectors:scalarproductorder
:width: 100%
:align: center
:alt: Put these in order of the magnitude of their scalar product.
Put these in order of the magnitude of their scalar product.
```
:::{tip} Answer
:label: Checkpoint-3.4
:class: dropdown
$3<1<2$
:::

(sec:Vectors:vectorproduct)=
## The vector product

The vector (or cross) product takes two vectors to produce a third vector that is **mutually perpendicular** to both vectors. The vector product only has meaning in three dimensions. Two vectors that are not co-linear, meaning they can not be arranged so that they lie along the same line, can always be used to define a plane in three dimensions. The cross product of those two vectors will give a third vector that is perpendicular to the plane (making it perpendicular to both vectors). 

Algebraically, the three components of the vector product, $\vec a\times \vec b$, of vectors $\vec a$ and $\vec b$ are found as follows:
```{math}
:label: eqn:Vectors:crossproduct
\vec a \times \vec b =\begin{pmatrix}
           a_yb_z - a_z b_y\\
           a_zb_x - a_x b_z\\
           a_xb_y - a_y b_x\\
         \end{pmatrix}
```

One important property to note is that $\vec a \times \vec b = -\vec b \times \vec a$; that is, the cross product is not commutative (the order matters). The magnitude of the vector obtained by a cross product is given by:
```{math}
:label: eqn:Vectors:crossproductmag
||\vec a \times \vec b ||=ab\sin\theta
```
where $\theta$ is the angle between the vectors $\vec a$ and $\vec b$ when these are placed tail to tail ([](#fig:Vectors:scalarproduct)). The vector resulting from a cross product will be null (have a zero length) if the vectors $\vec a$ and $\vec b$ are parallel, and will have a maximal length when these are perpendicular. The cross product is useful to determine quantities that are maximal when two vectors are perpendicular. 

Geometrically, one can determine the direction of the cross product of two vectors by using a "right hand rule". To distinguish it from another right hand rule (see [Section %s](#sec:Vectors:rotationalmotion)), we will call it "the right hand rule for the cross product"). This is done by using your right hand, aligning your thumb with the first vector and your index with the second vector. The cross product will point in the direction of your middle finger (when you hold your middle finger perpendicular to the other two fingers). This is illustrated in [](#fig:Vectors:righthandrule). Thus, you can often avoid using equation [](#eqn:Vectors:crossproduct) and instead use the right hand rule to determine the direction of the cross product and equation [](#eqn:Vectors:crossproductmag) to find its magnitude.

```{figure} figures/Vectors/righthandrule.png
:label: fig:Vectors:righthandrule 
:width: 70%
:align: center
:alt: Using the right hand rule for cross products to find the direction of the cross product of vectors $\vec a$ (upwards) and $\vec b$ (into the page).
Using the right hand rule for cross products to find the direction of the cross product of vectors $\vec a$ (upwards) and $\vec b$ (into the page).
```

The unit vectors that define a coordinate system have the following properties relative to the cross product:
```{math}

\begin{align*}
\hat x \times \hat y &= \hat z\\
\hat y \times \hat z &= \hat x\\
\hat z \times \hat x &= \hat y\\
\end{align*}
```
For these properties to be correct, it should be noted that the direction of the $z$ axis in three dimensions is specified by the choice of $x$ and $y$ axes. That is, one can freely choose the direction of the $x$ and $y$ axes, which then define a plane to which the $z$ axis will be perpendicular. The direction of the $z$ axis must be chosen so that $\hat x \times \hat y = \hat z$ (this guarantees that the coordinate system is "right handed"), as in [](#fig:Vectors:xyzaxis).
```{figure} figures/Vectors/xyzaxis.png
:label: fig:Vectors:xyzaxis
:width: 70%
:align: center
:alt: Two possible orientations for a three dimensional coordinate system. You can confirm using the right hand rule that the $z$ axis is the cross product $\hat x \times \hat y$.
Two possible orientations for a three dimensional coordinate system. You can confirm using the right hand rule that the $z$ axis is the cross product $\hat x \times \hat y$.
```
# Exploring Vectors with Simulations

## Using PhET to Explore Vector Properties
The properties of vectors described in this section can be explored using the Phet Simulation in [](#chap:vectors:PhET). To begin, click on the "Explore 2D". Drag a vector $\vec{a}$ onto the graph, and place it anywhere. Take note of the vector properties.
* magnitude, $\vert\vec{a}\vert=\vert\vert\vec{a}\vert\vert$
* angle, $\theta$
* $x$-component, $a_x$
* $y$-component, $a_y$

Move the vector so that its tail is at the origin. Then, move the vector somewhere else. These properties do not change with location, indicating vectors **have no location**. Calculate the vector components using trigonometry.
```math
a_x = \vert\vec{a}\vert \cos\theta\\
a_y = \vert\vec{a}\vert \sin\theta
```
:::{iframe}https://phet.colorado.edu/sims/html/vector-addition/latest/vector-addition_all.html
:label: chap:vectors:PhET
:width: 100%
:align: center
:placeholder: ../chapters/figures/Vectors/PhetVectors.jpg
A PhET simulation to explore vector properties.
:::

Click on the "Equations" tab. The simulation has two vectors $\vec{a}$ and $\vec{b}$ drawn along with their sum $\vec{c}$. Drag these vectors so that the head of $\vec{a}$ meets the tail of $\vec{b}$. Vector $\vec{c}$ can be moved to go from the tail of $\vec{a}$ to the head $\vec{b}$. This is how we draw the sum of two vectors. Therefore, $\vec{c}= \vec{a}+\vec{b}$. Verify that adding the components of $\vec{a}$ and $\vec{b}$ gives the vector $\vec{c}$. Using the "Base Vectors" dropdown, you can modify the vectors to see how changing their components changes their length and angles. The vector $\vec{c}$ will always result in their sum. 

What happens when we subtract vectors. Subtracting is the same as adding the negative of a vector, that is, making each component the negative of its value. Explore how subtracting a vector changes the resulting $\vec{c}.

## Drawing Vectors in VPython
We can create our own vector simulations using the VPython trinket in [](#chap:vectors:vectortrinket). Clicking the button to run the simulation shows the cartesian unit vectors located at the origin for reference. In VPython we can define a cartesian vector in two ways.
```python
r1 = vec(1, 2, 3)
r1 = vector(1, 2, 3)
```
This could be an indication of the position of the object relative to an origin `O = vec(0,0,0)`. We draw a vector using the `arrow` object and give it the name `arw1` pointing to this position. The `arrow` object will place the tail of the arrow at `pos=vec(x, y, z)`. The head of the arrow will be located by the `axis=vec(x2, y2, z2)`, where the head is at the position corresponding to `pos + axis`. This code will place a vector tail at the origin and the head at $\vec{r}_1=1\hat{i}+2\hat{j}+3\hat{k}$.
```python
r1 = vec(1, 2, 3)
arw1 = arrow(pos=vec(0,0,0), axis=r1, color=color.white)
```
Copy this code at the bottom of the trinket below to see how it draws the arrow.
:::{iframe} https://trinket.io/embed/glowscript/ad8349ada0?toggleCode=true
:label: chap:vectors:vectortrinket
:width: 100%
:align: center
:placeholder: ../chapters/figures/MomentumAndCM/BlankTrinket.jpg
A trinket with unit vectors to simulate various vectors.
:::
Change the tail position to `(1,1,1)` to see how the vector moves in 3D space. The magnitude of a vector $\vec{a}$ can be calculated in VPython as
```python
mag(a)
```
Use this to calculate the magnitude of `r1` and print the value using `print(mag(r1))`. The angle a vector makes with respect to the $x$-axis can be calculated in VPython as
```python
diff_angle(a, vec(1,0,0))
```
Use this to calculate the angle of `r1` and print the angle value. The angle will be in radians.

In VPython, objects' attributes can be manipulated mathematically. For example, two vectors drawn as arrows `arw1` and `arw2` can be added together.
```python
r1 = vec(1,1,0)
r2 = vec(1,-1,0)
arw1 = arrow(pos=vec(0,0,0), axis=r1, color=color.cyan)
arw2 = arrow(pos=r1, axis=r2, color=color.yellow)
arw3 = arrow(pos=arw1.pos, axis=arw1.axis+arw2.axis, color=color.magenta)
print(arw3.axis)
```

:::{note} Example 3.2
:label: Example-3.2
Create arrows `arwa` and `arwb` corresponding to the vectors $\vec{a}=(0,5,0)$ and $\vec{b}=(5,5,0)$, where $\vec{a}$ begins at the origin and $\vec{b}$ begins at the head of $\vec{a}$. These are the default vectors in the PhET "Equations" simulation. Create a third arrow `arwc` corresponding to the sum $\vec{a}+\vec{b}$. Place the tail of this arrow at the tail of $\vec{a}$. 
* Confirm the vectors have the same appearance as the PhET simulation when drawing $\vec{c}= \vec{a}+\vec{b}$. 
* Confirm the magnitudes and angles of the vectors are the same as shown in the PhET simulation. 
* Confirm the vector sum $\vec{c}$ is the same as the PhET simulation.
:::{note} Solution
:class: dropdown
```python
arwa = arrow(pos=vec(0,0,0), axis=vec(0,5,0), color=color.cyan, shaftwidth=0.5)
arwb = arrow(pos=arwa.axis, axis=vec(5,5,0), color=color.cyan, shaftwidth=0.5)
arwc = arrow(pos=arwa.pos, axis=arwa.axis+arwb.axis, color=color.white, shaftwidth=0.5)
print("mag of a =", mag(arwa.axis))
print("angle of a =", diff_angle(arwa.axis, vec(1,0,0))*180/pi)
print("mag of b =", mag(arwb.axis))
print("angle of b =", diff_angle(arwb.axis, vec(1,0,0))*180/pi)
print("vector c =", arwc.axis)
```
:::

# Example uses of vectors in physics
This section gives a quick overview of some applications of vectors in physics.
## Kinematics and vector equations
Kinematics is the description of the position and motion of an object (Chapters [](#chapter:describingmotionin1d) and [](#chapter:describingmotioninnd)). The laws of physics are the principles that ultimately allow us to determine how the position of an object changes with time. For example, Newton's Laws are a mathematical framework that introduce the concepts of force and mass in order to model and determine how an object will move through space.

We often use a **position vector**, $\vec r(t)$, to describe the position of an object as a function of time. Because the object can move, the position vector is a function of time. A position vector is a special vector in the sense that it should be considered to be fixed in space; the position vector for an object points from the origin of a coordinate system to the location of the object. 

The three components of the position vector in Cartesian coordinates, are the $x$, $y$, and $z$ coordinates of the object:
```math
\vec r(t) = \begin{pmatrix}
           x(t) \\
           y(t) \\
           z(t) \\
         \end{pmatrix}
```
where the three coordinates of the object are functions of time if the object can move. Suppose that the object was initially at position $\vec r_1=(x_1, y_1, z_1)$ at some time $t=t_1$, and that later, at time $t=t_2$, the object was at as second position, $\vec r_2=(x_2, y_2, z_2)$. We can define the **displacement vector**, $\vec  d$, as the vector from position $\vec r_1$ to position $\vec r_2$:
```math
 \vec d = \vec r_2 - \vec r_1 =\begin{pmatrix}
           x_2-x_1 \\
           y_2-y_1 \\
           z_2-z_1 \\
         \end{pmatrix} = \begin{pmatrix}
           \Delta x \\
           \Delta y \\
           \Delta z \\
         \end{pmatrix}
```
The displacement vector is such that one can add the vector $\vec d$ to the vector $\vec r_1$ to describe the new position of the object at time $t_2$:
```{math}

\begin{align*}
\vec d &= \vec r_2 - \vec r_1\\
\therefore \vec r_2 &= \vec r_1 + \vec d
\end{align*}
```
The components of the displacement vector, $\Delta x$, $\Delta y$, and $\Delta z$ correspond to the displacements (the distance travelled) along the $x$, $y$, and $z$ axes, respectively. This is illustrated for the two dimensional case in [](#fig:Vectors:xydvec).

```{figure} figures/Vectors/xydvec.png
:label: fig:Vectors:xydvec
:width: 50%
:align: center
:alt: Illustration of a displacement vector, $\vec d = \vec r_2 -\vec r_1$, for an object that was located at position $\vec r_1$ at time $t_1$ and at position $\vec r_2$ at time $t_2$.
Illustration of a displacement vector, $\vec d = \vec r_2 -\vec r_1$, for an object that was located at position $\vec r_1$ at time $t_1$ and at position $\vec r_2$ at time $t_2$.
```

The velocity vector of the object, $\vec v=(v_x, v_y, v_z)$, is defined to be the displacement vector, $\vec d$, divided by the amount of time (a scalar) that elapsed, $\Delta t=t_2-t_1$, while the object moved by the corresponding displacement:
```math
\vec v = \frac{\vec d}{\Delta t}=\begin{pmatrix}
           \frac{\Delta x}{\Delta t} \\
           \frac{\Delta y}{\Delta t} \\
           \frac{\Delta z}{\Delta t} \\
         \end{pmatrix}
```
We used the property that dividing a vector by a scalar ($\Delta t$) is defined as dividing each component by the scalar. If we write the components of the velocity vector out explicitly, we have:
```math
\begin{pmatrix}
           v_x \\
           v_y \\
           v_z \\
         \end{pmatrix} = \begin{pmatrix}
           \frac{\Delta x}{\Delta t} \\
           \frac{\Delta y}{\Delta t} \\
           \frac{\Delta z}{\Delta t}
         \end{pmatrix}
```
That is, we can think of each row in this "vector equation" as an independent equation. That is, when we write the vector equation:
```math
\vec v = \frac{\vec d}{\Delta t}
```
we are really just using a shorthand notation for writing the three **independent** equations that are true for each individual component of the vectors:
```{math}

\begin{align*}
v_x &= \frac{\Delta x}{\Delta t} \\
v_y &= \frac{\Delta y}{\Delta t} \\
v_z &= \frac{\Delta z}{\Delta t} \\
\end{align*}
```
Whenever we write an equation using vectors, we are really writing out multiple equations all at once, one for each component. Newton's Second Law:
```math
\vec F = m \vec a
```
thus corresponds to the three (scalar) equations:
```{math}

\begin{align*}
F_x &= ma_x\\
F_y &= ma_y\\
F_z &= ma_z\\
\end{align*}
```

## Work and scalar products
As we will see, "work" is a scalar quantity that allows us to determine the change in the speed (squared) of an object that results from a force exerted over a particular displacement ([](#chap:workenergy)). Both force and the displacement are vector quantities (a force has a magnitude and is exerted in a particular direction). The work, $W$, done by a force, $\vec F$, over a displacements, $\vec d$, is defined as:
```math
W = \vec F \cdot \vec d
```
The work energy theorem tells us that this work is related to the change in speed squared of the object as it moves along the displacement vector $d$. If the work is zero, the object has the same speed at the beginning and end of the displacement. If the work is positive, the object is moving faster at the end of the displacement (and slower if the work is negative). A one dimensional example is shown in [](#fig:Vectors:work_scalarprod), which shows a force $\vec F$ being applied to a block as it slides along the ground over a distance $d$ (represented by the displacement vector $\vec d$).  

```{figure} figures/Vectors/work_scalarprod.png
:label: fig:Vectors:work_scalarprod
:width: 70%
:align: center
:alt: Example of a force $\vec F$ being applied on an object as it moves along the displacement vector $\vec d$.
Example of a force $\vec F$ being applied on an object as it moves along the displacement vector $\vec d$.
```

Intuitively, it makes sense that only the horizontal component of the force would contribute to changing the speed of the object as it moves along the horizontal trajectory defined by the vector $\vec d$. The vertical component of the force does not contribute to changing the speed of the object. Thus, the work (the change in speed), should only depend on the component of the force that is parallel to the displacement vector. The scalar product allows us to formalize this in an equation. The scalar product is given by:
```math
\vec F \cdot \vec d = Fd\cos\theta = F_{\parallel}d
```
where we introduced $F_{\parallel} = F\cos\theta$ as the component of $\vec F$ that is parallel to $\vec d$ (see [](#fig:Vectors:work_scalarprod)). The scalar product thus "picks out" the component of $\vec F$ that is parallel to $\vec d$, which is exactly what we need to in order for work to make sense.

(sec:Vectors:rotationalmotion)=
## Using vectors to describe rotational motion

Often, we need to describe rotational motion in physics. If an object is rotating, one must specify:
1. The axis about which the object is rotating
2. The direction about that axis in which the object is rotating (e.g. clockwise or counter-clockwise)
3. How fast the object is rotating
We introduce a new type of vector, an "axial vector", to describe this kind of rotational motion. We choose the direction of the vector to be co-linear with the axis of rotation and the magnitude of the vector to represent the speed with which the object is rotating. We are thus left with two choices for the direction of the vector. For example, consider the wheels on a car that is moving away from you ([](#fig:vectors:carwheelrotation), the car is moving into the page).  The axis of rotation is the axis of the wheel, so we know that the vector describing the wheel's rotation (the angular velocity vector) must point either to the left or to the right. 

```{figure} figures/Vectors/carwheelrotation.png
:label: fig:vectors:carwheelrotation
:width: 70%
:align: center
:alt: The wheels on a car that is driving away from you.
The wheels on a car that is driving away from you.
```

We choose the direction of the vector by using another right hand rule. We will refer to this as "the right hand rule for axial vectors" to distinguish it from the right hand rule for the cross product.  When using the right hand rule for axial vectors, the vector points in the direction of your thumb when you curl your fingers in the direction of rotation, as in [](#fig:vectors:righthandruleaxial). For the car moving away from you, the wheels will be turning such that the closest point to you is moving up and the furthest point is moving down. Using the right hand rule, we find that the rotation vector points to the left. 

```{figure} figures/Vectors/righthandruleaxial.png
:label: fig:vectors:righthandruleaxial
:width: 60%
:align: center
:alt: Using the right hand rule for axial quantities. In this case, the direction of rotation is counter clockwise when looking at the page (the direction that the fingers curl), so the rotation vector points out of the page (the direction of the thumb).
Using the right hand rule for axial quantities. In this case, the direction of rotation is counter clockwise when looking at the page (the direction that the fingers curl), so the rotation vector points out of the page (the direction of the thumb).
```

We have to distinguish axial vectors from "true" vectors because they do not behave like true vectors in all cases. 
For instance, imagine that there is a giant mirror that runs parallel to the road ([](#fig:vectors:wheelmirror)). When the car is reflected in the mirror, the reflected car will also be moving away from you. This means that the wheels will be turning in the same direction as before, so the rotation vector still points to the left. Now consider a true vector, like a velocity vector. If the velocity vector initially pointed to the left (i.e. if the car was moving to the left), the reflected car would be moving to the *right*. So, we expect a true vector to change directions when it is reflected in this way. Since the rotation vector does not always behave like a true vector, we call it an axial vector or a "pseudovector."

```{figure} figures/Vectors/carwheelmirror.png
:label: fig:vectors:wheelmirror
:width: 100%
:align: center
:alt: Left: The angular velocity vector for the rotation of the wheels, $\vec \omega$, which points to the left, also points left in the reflection. Right: The velocity vector, pointing to the left, points to the right in the reflection of the car. The angular velocity vector is called an "axial" or "pseudo" vector because it does not change direction under a reflection.
Left: The angular velocity vector for the rotation of the wheels, $\vec \omega$, which points to the left, also points left in the reflection. Right: The velocity vector, pointing to the left, points to the right in the reflection of the car. The angular velocity vector is called an "axial" or "pseudo" vector because it does not change direction under a reflection.
```

## Torque and vector products
We will introduce the concept of a torque in order to describe how a force can cause an object to rotate. Consider the disk illustrated in [](#fig:Vectors:torque_vectorprod) that is free to rotate about an axis that goes through its centre and that is perpendicular to the plane of the page. A force $\vec F$ is applied at the edge of the disk (imagine pulling on a string attached to the edge of the disk), at a position that is displaced from the axis of rotation by the vector $\vec r$. The torque, $\vec \tau$, of the force about the centre of the disk is defined to be:
```math
\vec\tau=\vec r\times \vec F
```
and represents how much the force $\vec F$ will contribute to making the disk rotate about its axis. If the force vector were parallel to the vector $\vec r$, the disk would not rotate; if you pull outwards on a disk, it will not rotate about its centre. However, if the force is perpendicular to the vector $\vec r$ (i.e. tangent to the circumference of the disk), then it will maximally cause the disk to rotate. The magnitude of the torque (cross-product) is given by:
```math
\tau =rF\sin\theta=F_{\perp}r=Fr_\perp
```
where $\theta$ is the angle between the vectors when placed tail to tail, as in the right side of [](#fig:Vectors:torque_vectorprod). In the last two equalities, we have defined $F_\perp=F\sin\theta$ or $r_\perp=r\sin\theta$ to refer to the part of the vector $\vec F$ that is perpendicular to the vector $\vec r$ or the part of the vector $\vec r$ that is perpendicular to the vector $\vec F$. That is, the vector product "picks out" the part of a vector that is perpendicular to the other, which is exactly the property that we need for the physical quantity of torque.

```{figure} figures/Vectors/torque_vectorprod.png
:label: fig:Vectors:torque_vectorprod
:width: 70% 
:align: center
:alt: A force, $\vec F$, is exerted in the plane of a disk at a position given by the vector $\vec r$ relative to the centre of the disk.
A force, $\vec F$, is exerted in the plane of a disk at a position given by the vector $\vec r$ relative to the centre of the disk.
```

:::{tip} Checkpoint 3.5
:label: Checkpoint-3.5
Referring to [](#fig:Vectors:torque_vectorprod), in which direction does the torque vector point?
1. to the right
2. to the left
3. out of the page 
4. into the page
:::{tip} Answer
:label: Checkpoint-3.5
:class: dropdown
4.
:::

# Summary

Cartesian coordinate systems can be defined using an origin, and mutually perpendicular axes that specify a direction in which each corresponding coordinate increases. The position of a point is described by the coordinates of the point (one coordinate per axis). Polar, cylindrical and spherical coordinate systems can be defined relative to a Cartesian coordinate system and sometimes facilitate the description of situations with cylindrical (azimuthal) or spherical symmetry. 

Vectors can be represented by arrows and are quantities that have both a magnitude and a direction, as opposed to "scalars", which are simply numbers. Vectors are not fixed in space, so two vectors are equal if they have the same magnitude and direction, regardless of where they are drawn. We place a little arrow above a variable, $\vec d$, to indicate that it is a vector. There are several, equivalent, notations to indicate the components of a vector:
```{math}

\begin{align*}
\vec d &= (d_x,d_y, d_z)\quad&\text{row vector}\\
       &=\begin{pmatrix}
           d_x \\
           d_y \\
           d_z\\
         \end{pmatrix}\quad&\text{column vector}\\
         &= d_x\hat x +d_y \hat y +d_z \hat z\quad&\text{using }\hat x,\;\hat y,\;\hat z\\
         &=d_x\hat i +d_y \hat j+d_z \hat k \quad&\text{using }\hat i,\;\hat j,\;\hat k
\end{align*}
```
If we multiply (divide) a vector by a scalar, we multiply (divide) each component of the vector individually by that quantity. As a result, the magnitude of the vector will also be multiplied (divided) by that quantity:
```math
a\vec d = \begin{pmatrix}
           ad_x \\
           ad_y \\
           ad_z \\
         \end{pmatrix}
```
In particular, we can define a unit vector, $\hat d$, to be a vector of length 1 in the same direction as $\vec d$, by simply dividing $\vec d$ by its magnitude, $d$:
```math
\hat d = \frac{\vec d}{d}
```
where the magnitude of the vector, $||\vec d|| = d$, expressed in Cartesian coordinates, is given by:
```math
||\vec d|| = d =\sqrt{d_x^2+d_y^2+d_z^2}
```
We can add two vectors by independently adding the individual components of the vectors:
```{math}

\begin{align*}
\vec c &= \vec a + \vec b\\
\therefore c_x &= a_x + b_x\\
\therefore c_y &= a_y + b_y\\
\therefore c_z &= a_z + b_z
\end{align*}
```
Graphically, this corresponds to adding vectors "head to tail". This also highlights that an equation written using vectors (as the first line above) really represents three independent equations, one for each coordinate of the vectors (or two in two dimensions). Subtraction of vectors is treated in the same way as addition (but using minus signs where appropriate).

One can define the scalar (or dot) product between two vectors, as a scalar quantity that is obtained from the two vectors:
```math
\vec a \cdot \vec b = a_xb_x + a_yb_y + a_zb_z
```
The scalar product is also related to the angle, $\theta$, between the two vectors when these are placed "tail to tail":
```math
\vec a \cdot \vec b = ab\cos\theta
```
In particular, the scalar product between two vectors is zero if the two vectors are perpendicular to each other ($\cos\theta=0$), and maximal when these are parallel to each other.

The vector (or cross) product between two vectors is a vector that is mutually perpendicular to both vectors and is defined as the following:
```math
\vec a \times \vec b =\begin{pmatrix}
           a_yb_z - a_z b_y\\
           a_zb_x - a_x b_z\\
           a_xb_y - a_y b_x\\
         \end{pmatrix}
```
The vector product can only be defined in three dimensions, since it must be mutually perpendicular to the vectors. The magnitude of the vector product is given by:
```math
|| \vec a \times \vec b || = ab\sin\theta
```
where $\theta$ is the angle between the two vectors when these are placed tail to tail. In particular, the vector product between two vectors is zero if the two vectors are parallel to each other (and maximal when these are perpendicular). The direction of the vector product is given by the right-hand rule for the cross product.

An axial vector can be used to describe a quantity that is related to rotation. The direction of the axial vector is co-linear with the axis of rotation, its magnitude is given by the magnitude of the rotational quantity (e.g. angular speed), and its direction is defined using the right-hand rule for axial vectors.

# Thinking about the Material
:::{seealso} Reflect and research
1. What are some quantities that need to be represented by a vector?
2. Can a vector in three dimensions be represented using spherical coordinates? How would you calculate the scalar product between two vectors represented in spherical coordinates?
:::

# Sample problems and solutions

## Problems 
:::{note}Problem 3.1
* a) What is the displacement vector from position $(1,2,3)$ to position $(4,5,6)$?
* b) What angle does that displacement vector make with the $x$ axis?
:::
:::{note}Problem 3.2
```{figure} figures/Vectors/Prob3.2.png
:label: fig:Vectors:prob3.2
:width: 100% 
:align: center
:alt: A graph of 9 vectors for analyzing.
``` 
[](#fig:Vectors:prob3.2) is a graph with nine vectors represented in the two dimensional space of the $xy$-plane.
* a) Which vectors have magnitudes equal to the magnitude of $\vec{a}$?
* b) Which vector(s) are equal to $\vec{a}$?
* c) Are any other vectors equal to one another?
* d) Which vectors are equal to the negative of one another?
:::
:::{note}Problem 3.3
While visiting Manhattan, New York, you make the journey between the sights listed in [](#tab:Vectors:prob3.3). Calculate the displacement and velocity vectors for each step of journey. 
* a) Draw this journey's displacement vectors to scale on a piece of graph paper.
* b) Write the vectors in matrix notation.
	* $\vec{r} = (x, y, z)$
	* $\vec{v} = (v_x, v_y, v_z)$
* c) Write the vectors using trigonometric notation
	* $\vec{r} = r \cos(\theta) \hat{i} + r \sin(\theta) \hat{j}$
	* $\vec{v} = v \cos(\theta) \hat{i} + v \sin(\theta) \hat{j}$
* d) Calculate the resultant displacement vector and the average velocity vector.
```{table} Manhattan journey including locations visited, distance between locations, direction traveled, and time taken traveling between sights.
:label: tab:Vectors:prob3.3
| Locations | Distance (mi) | Direction | Time (min) |
| :-------: | :----------: | :-------: | :------: |
| Penn Station to Empire State Building | 0.4 | $30^o$ South of East | 7.2 |
| Empire State Building to Times Square | 0.8 | $80^o$ North of East | 18.0 |
| Times Square to the MoMA | 0.5 | $60^o$ North of East | 10.1 |
| The MoMA to Central Park Zoo | 0.6 | $50^o$ North of East | 11.4 |
```
:::
:::{note}Problem 3.4
Objects A, B, and C are moving from left to right and display motion diagrams shown in [](#fig:Vectors:prob3.4). The dots correspond to equal time intervals between position measurements. Which motion diagrams exhibit motion where the object is interacting with something external to the object? Explain the evidence for these interactions. For example, what direction does the external source push or pull on the objects?
```{figure} figures/Vectors/prob3.4.png
:label: fig:Vectors:prob3.4
:width: 100% 
:align: center
:alt: Motion diagrams of objects A, B, and C.
``` 
:::

## Solutions

:::{note}Solution 3.1
:class: dropdown
* a) The displacement vector is given by:
```math
\vec d = \begin{pmatrix}
           4\\
           5\\
           6\\
         \end{pmatrix} - \begin{pmatrix}
           1\\
           2\\
           3\\
         \end{pmatrix}=\begin{pmatrix}
           3\\
           3\\
           3\\
         \end{pmatrix}
```
* b) We can find the angle that this vector makes with the $x$ axis by taking the scalar product of the displacement vector and the unit vector in the $x$ direction (1,0,0):
```math
\hat x \cdot \vec d = (1)(3)+(0)(3)+(0)(3) = 3
```
This is equal to the product of the magnitude of $\hat x $ and $\vec d$ multiplied by the cosine of the angle between them:
```{math}

\begin{align*}
\hat x \cdot \vec d  &= ||\hat x||||\vec d||\cos\theta = (1)(\sqrt{3^2+3^2+3^2})\cos\theta= \sqrt{27}\cos\theta\\
 3 &= \sqrt{27}\cos\theta\\
 \therefore \cos\theta &= \frac{3}{\sqrt{27}} = \frac{1}{\sqrt{3}}\\
 \theta&= 54.7\text{\degree}
\end{align*}
```
:::