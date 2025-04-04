# Introductory Physics: Modeling with Physics

This is an **open-access** textbook for calculus-based introductory physics courses. Anyone that complies with the license is welcome to modify and use this work for their own use, and we hope that you will choose to contribute. The textbook is specifically intended for a **flipped-classroom** approach, wherein students complete readings at home and the material is then discussed in class. The textbook thus contains questions and activities to engage readers. This text also includes a **curriculum in experimental physics**, detailing the scientific method and process, suggesting experiments to perform at home and in the lab, and has chapters that cover: writing and reviewing proposals, writing and reviewing reports, analyzing data, as well as an introduction to python. Finally, this textbook was **written with many contributions from students**! We hope that you may find it useful, and we are interested to know if you are using it!

![Build](https://img.shields.io/github/actions/workflow/status/veillette/hands-on/build.yml?branch=main)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)
![PRs](https://img.shields.io/badge/PRs-Welcome-brightgreen)
![mystmd](https://img.shields.io/badge/Built%20with-mystmd-8A2BE2)
![License](https://img.shields.io/badge/License-CC--BY--4.0-green)


This book is a remix of [Introductory Physics: Building Models to Describe Our World](https://github.com/OSTP/PhysicsArtofModelling/raw/master/tex/BuildingModelsToDescribeOurWorld.pdf). All licensing and copyrights are derived from this original text. Anyone is welcome to compile their own version including or excluding chapters. The original open-access files are found at https://github.com/OSTP/PhysicsArtofModelling/tex/. 

This version of the textbook is also open-access and can be found at https://github.com/troymessina/PhysicsArtOfModeling. The following chapters are included in the textbook:

1. [The scientific method and physics](#chap:introduction)
2. [Comparing model and experiment](#chap:modelandexperiment)
3. [Vectors](#chap:vectors)
4. [Linear momentum and the centre of mass](#chap:momentumandcm)
5. [Newton's Laws](#chap:NewtonsLaws)
6. [Applying Newton's Laws](#chap:ApplyingNewtonsLaws)
7. [Work and energy](#chap:workenergy)
8. [Potential energy and conservation of energy](#chapter:potentialecons)
9. [Gravity](#chapter:gravity)
10. [Rotational dynamics](#chap:rotationaldynamics)
11. [Rotational energy and momentum](#chapter:angularmomentumrolling)
12. [Simple harmonic motion](#chapter:simpleharmonicmotion)
13. [Waves](#chapter:waves)
14. [Fluid mechanics](#chapter:fluidmechanics)
15. [Electric charges and fields](#chapter:chargesfields)
16. [Gauss' Law](#chapter:gauss)
17. [Electric potential](#chapter:potential)
18. [Electric current](#chapter:current)
19. [Electric circuits](#chapter:circuits)
20. [The magnetic force](#chapter:magneticforce)
21. [Sources of magnetic field](#chapter:magneticsource)
22. [Electromagnetic induction](#chapter:induction)
23. [The theory of Special Relativity](#chap:specialrelativity)
24. [Appendix A: Calculus](#app:calculus)
25. [Appendix B: An Introduction to Visual Python](#app:visualpython)
27. [Appendix C: Guidelines for lab related activities](#app:labs)

## 🚀 Getting Started

### 📱 Online Access

Visit the textbook website at [https://troymessina.github.io/PhysicsArtOfModeling/](https://troymessina.github.io/PhysicsArtOfModeling/)

## 🛠️ Building Locally

This textbook is built using [mystmd](https://mystmd.org/), a modern publishing system designed for scientific and technical content.

```console
# Clone the repository
git clone https://github.com/veillette/hands-on.git
cd hands-on

# Install dependencies using npm
npm install

# Build the site
myst build --html

# Preview locally (available at http://localhost:3000 by default)
myst start
```

## 👥 Contributing

We welcome contributions from the physics education community! Please see our [Contributing Guide](CONTRIBUTING.md) for details on how to help improve this textbook.

Types of contributions we're looking for:
- 🐛 Error corrections
- 📖 Clarity improvements
- 🧪 Additional examples
- 📝 New problems
- 📊 Enhanced visualizations
- 🧩 New interactives



<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Text" property="dct:title" rel="dct:type">Introductory Physics: Building Models to Describe Our World</span> by <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Ryan D. Martin, Emma Neary, Joshua Rinaldo, and Olivia Woodman</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/OSTP/PhysicsArtofModelling" rel="dct:source">https://github.com/OSTP/PhysicsArtofModelling</a>.
