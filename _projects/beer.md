---
layout: project
project: beer
title: CHBeer
image: /assets/images/BeerChemistry.jpg
permalink: /beer/

headline: Automated Brewing System
description: Do you enjoy beer? What about process control, thermodynamics and kinetic modelling? Fermentation started in the Bronze Age and is theorized to be the main driver behind the origin of civilization! However, controlling this biological process to achieve the desired beer characteristics challenging to this day. Large breweries have access to sophisticated devices for process control, but what about homebrewers and craft breweries who can’t spend hundreds of thousands of dollars on high-end equipment? This workshop will demonstrate how to build a low-cost device that can monitor and control key process variables such as temperature and pH during the brewing process. Through the Internet of Things, it is possible to access and monitor process variables from anywhere! Come join us and learn how to make great beer from the comfort of your phone. 
box: >
 The Automated Beer Brewing system is a project encompassed by the student organization UBC Envision. The project is based on the idea of ‘The Internet of Things’, and aims to develop craft brewing technologies and to create an automated brewing system with the ability to monitor and control process variables such as temperature and acidity in real-time. We are currently coupling sensors to web servers and developing a mobile app, which would allow operators to remotely view brewing conditions and key control variables. A large focus of our project is the concept that many home-breweries or smaller breweries lack the hundreds of thousands of dollars required for high-end equipment. Through our project, our long-goal is to optimize brewing processes for brewing technologies, to design and implement low-cost data monitoring, and in time, to have our machine learning algorithms be applied to actual breweries to brew the perfect beer.
---
# Technology

## Chemistry
Fermentation is an incredibly important biological process. It is used in the production of penicillin, wine, kombucha, and of course, beer! Yeast is a facultative anaerobe meaning that it can two different metabolic pathways. The aerobic pathway uses oxygen to produce water and carbon dioxide. The anaerobic pathway uses sugars broken down from the mashing process to produce ethanol and carbon dioxide. Hops is added for flavor. Each strain of hops has its own characteristics such as alpha acids and flavor profile. A mixture of hops makes up the flavor in each distinct beer type. This team researches the reaction kinetics in the fermenter as well as makes the recipes for the beer (and soon kombucha) we brew! This team is also responsible for testing key characteristics of the beer such as bitterness, alcohol by volume, turbidity, and the standard reference model (or color) of the beer. 

## Software
In a large factory everything in controlled in a central control room so why not apply the same for a home brewery? This team takes the data that is read from the temperature sensors and sends it to Amazon Web Services where the data is processed and sent to a web app viewable on desktop or mobile. This data can be put into a graph to track temperature profiles or the acidity can be used predict the final SRM. 

## Instrumentation
Custom instrumentation is built to read temperature and acidity. We are developing a way to read the SRM (or color) of the beer using a Raspberry Pi camera. Taking the input variables allows us to use them in machine learning algorithms later custom built for our brewing system. Many companies are entirely built around building and designing custom brewing instrumentation. A refrigeration system is used to chill the beer to desired temperatures in a food safe manner. Our next step is using the temperature readings to control the refrigeration system. 

## Machine Learning
Process data is incredibly difficult to analyze and predict. There are many unpredictable variables that can only be analyzed in a computer. Running machine learning algorithms to predict output variables will allow us to predict and create beer tailored to whatever the brewer desires. We are currently partnering with a local brewery to analyze key process variables for our machine learning algorithms. 

# Like Brewing? 
Check out [beer.ubcchemecar.com](https://beer.ubcchemecar.com) for resources to start a project just like ours! If you have any questions or want to talk about beer feel free to contact Josh at brewing@ubcenvision.com
