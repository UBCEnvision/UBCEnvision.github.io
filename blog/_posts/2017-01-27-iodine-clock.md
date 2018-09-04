---
layout: post
title: "Chem-E-Car Reaction Mechanism"
date: "2017-01-27"
author: ["Joshua Agarwal", "Jayg Dimayacyac"]
---

## Introduction
The Iodine Clock reaction is the official stopping mechanism for the 2016-2017 Junior Chem-E-Car design team. The reaction involves a color change with an Iodine indicator to signal the stopping mechanism, via a light dependent resistor. Through calibration, the reaction time can be determined by the ratio of Potassium Iodide and Sodium Thiosulfate. The correlation between time and ratio is linear; therefore, the Iodine Clock is a simple and effective stopping mechanism for the motor.

## How does it work?

The two simultaneous chemical reactions shown below cause a color change from colorless to dark purple with a transient light blue intermediate stage.

### 1. H<sub>2</sub>O<sub>2</sub> (aq) + 2I<sup>−</sup>(aq) + 2H<sup>+</sup>(aq)→ I<sub>2</sub> + 2H<sub>2</sub>O (aq)
### 2. 2S<sub>2</sub>O<sub>3</sub><sup>2−</sup>(aq)+ I<sub>2</sub>(aq)→ S<sub>4</sub>O<sub>6</sub><sup>2−</sup>(aq) + 2I<sup>−</sup> (aq)

<img src="/assets/images/blog/iodine-clock/figure1.png" width="100%" alt="clock">

**Figure 1:** Color changes during the iodine clock reaction [Ref. 1]

The first reaction slowly oxidizes iodide ions (I-) into iodine (I2) which has the potential to
form a blue triiodide – starch complex. The second reaction rapidly reduces the product (I2)
from the first reaction back into its ionic form (I-). Due to the reaction rate difference, only
same amount of triiodide exists in the solution which maintains the colorless state of the
mixture. When thiosulfate ions (2S<sub>2</sub>O<sub>3</sub><sup>2−</sup>) are exhausted, chemical equilibrium moves to the
accumulation and the solution turns from colorless into dark blue. In this calibration process, the concentration of thiosulfate ions acts as the limiting reagent.

## General Procedure:
During the testing process, our team has to prepare multiple solutions with varying concentrations. We begin by preparing solution A and B (explained in detail below), mixing them, observing and recording the color change. After a large enough spread of data points are recorded, we can generate a calibration curve.

## Step-by-step Procedure:

**Preparation of solution A**

1. Measure 6.0 g Na2S2O3 with an analytic balance and a weighing boat.
2.  Dissolve 6.0 g Na2S2O3 in a 250ml volumetric flask. (Note: Dissolve Na2S2O3 within
the weighing boat first and then transfer the solution into the flask.)
3.  Fill in the volumetric flask with DI water up to the graduation marking.
4. Measure 6.0g KI with an analytic balance and a weighing boat.
5. Dissolve 6.0g KI in a 250ml volumetric flask. (Note: Dissolve KI within the
weighing boat first and then transfer the solution into the flask.)
6.  Fill in the volumetric flask with DI water up to the graduation marking.
7. Measure volume of both solutions needed, and mix in a 250 mL beaker.

**Preparation of solution B**

1. Fill in the volumetric flask with distilled water up to the graduation marking.
2. Measure 40 ml 2M H2SO4 with a pipette into the 500ml volumetric flask.
3. Measure 5 ml 30% H2O2 with a pipette into a 500ml volumetric flask.
4. Measure 45ml prepared solution from the volumetric flask with a graduated cylinder as solution B.
5. Transfer solution B from the graduated cylinder into a 50ml beaker as the testing container.
6. Heat up 50 mL of DI water to approximately 45-50 degrees celsius. Measure and dissolve 2g of soluble starch in the water.
7. Transfer 3 mL of the starch solution into the 50mL beaker with solution B.

**Mixing Solutions and Data Calibration**

1. Mix and adjust ratio of KI and Na2S2O3 in Solution A
2. Measure 10 mL of Solution A in syringe
3. Transfer 40 mL of Solution B to beaker
4. Inject Solution A into Solution B to mix and start timing
5. Stop time once color change initiates and record
6. Repeat steps 1-5 for different ratios of KI and Na2S2O3
7. Plot calibration to find relationship between time and ratio


<img src="/assets/images/blog/iodine-clock/figure2.png" width="100%" alt="clock2">

**Figure 2:** Calibration curve plotting reaction time vs volumetric ratio of solution A to solution B



## Conclusion

The Iodine clock reaction displays a linear relationship between reaction time and the ratio between the volumes of Potassium Iodide and Sodium Thiosulfate added. As a result, we can manipulate the volume of our Potassium Iodide solution added to interpolate for a specific stopping time. Our goal is to maintain an error of less than 2% for our calibration curve. The Iodine Clock reaction is a reliable and simple method for timing the motor of the car.

## References:

1. [Classic chemistry colorize colorless liquids with black magic](http://img.wonderhowto.com/img/18/99/63483049134215/0/classic-chemistry-colorize-colorless-liquids-with-black-magic-aka-iodine-clock-reaction.1280x600.jpg)
