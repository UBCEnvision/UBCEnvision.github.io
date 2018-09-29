---
layout: post
title: "Quick Data Analysis with Python"
date: "2018-09-29"
author: ["Josh Donaldson"]
---

In this post we are going to talk about how to quickly and easily analyze data with Python. Note that this post is a work in progress and information will continue to be updated. 

Click [here](/documents/Intro to Engineering Applications of Python.pdf) to view the presentation slides. 

# Basic Python

#### Here is a **LITERAL** 5 minute refresher on some basic Python syntax and conventions. 


```python
a = 1
b = 2
```


```python
a + b
```

OUTPUT: 
```python
3
```

```python
a - b
```

OUTPUT: 
```python
-1
```


```python
a * b
```

```python
2
```




```python
b / a
```




    2.0




```python
b % a
```




    0




```python
a = 2
b = 3
```


```python
b**a
```




    9



## Well that was boring and probably not very helpful. Lets do some harder things! 


```python
for i in range(0, 10, 1):
    print(i)
```

    0
    1
    2
    3
    4
    5
    6
    7
    8
    9


**NOTE THAT THE LOOP DOES NOT PRINT 10**

# Importing Libraries

Some functionality isnt supported by Python by default. Common libraries include:
- os
- pathlib
- math
- Numpy
- Pandas
- Scipy
- Matplotlib
- Sympy
- Thermo

Read more about Python internal libraries here: https://docs.python.org/3/library/

You can import an entire library under an shortened alias. The following are the typical conventions: 

```python
import numpy as np
import pandas as pd
import matplotlib as plt
```

## Lists

Say I have a list of items in Python. The following are helpful indexing conventions. Read more about lists here: https://docs.python.org/3/tutorial/datastructures.html


```python
sample_list = [1, 2, 3, 4, 5]
```


```python
sample_list[0]
```




    1




```python
sample_list[-1]
```




    5




```python
sample_list.pop(0)
```




    1




```python
sample_list
```




    [2, 3, 4, 5]




```python
for item in sample_list:
    print("The item {} multiplied by 2 is {}".format(item, item*2))
```

    The item 2 multiplied by 2 is 4
    The item 3 multiplied by 2 is 6
    The item 4 multiplied by 2 is 8
    The item 5 multiplied by 2 is 10



```python
sample_list.append(0)
print(sample_list)
```

    [2, 3, 4, 5, 0, 0, 0]


**DO NOT DO THIS FOR BIG DATA. IT IS SLOW AND YOUR COMPUTER WILL HATE YOU.** I will show you a better way... just chill

## Dictionaries

You can store lists, arrays, and data in dictionaries and get them with keys


```python
sample_dict = {
    'small': 1,
    'medium': 2.5,
    'large':5
}
```


```python
sample_dict
```




    {'small': 1, 'medium': 2.5, 'large': 5}




```python
sample_dict = {
    'small': sample_list,
    'large': sample_list*2
}
```


```python
sample_dict
```




    {'small': [2, 3, 4, 5], 'large': [2, 3, 4, 5, 2, 3, 4, 5]}



## Functions

If you have a commonly repeated block of code, make it a function! 


```python
def do_a_thing():
    print("Do a thing!")
```


```python
do_a_thing()
```

    Do a thing!



```python
def celsius_to_fahrenheit(celsius):
    fahrenheit = 9/5*celsius + 32
    return fahrenheit
```


```python
celsius_to_fahrenheit(21)
```




    69.80000000000001




```python
celsius_to_fahrenheit(23)
```




    73.4




```python
for item in sample_list:
    print(celsius_to_fahrenheit(item))
```

    35.6
    37.4
    39.2
    41.0


## Hmmmmmmmm

Does anyone see an application for this?

# Challenge TIME

Take 2 lists of data of the following:


```python
list_1 = [21, 23, 65, 23, 65, 12]
list_2 = [34, 12, 54, 54, 12, 54]
```

Create a THIRD list where the contents of this list is the results of list_1 divide by list_2


```python

```


```python

```


```python

```

# WTF is Numpy?

Numpy is a library that basically turns Python into a free version of Matlab. 

Step 1: Importing libraries


```python
import numpy as np
```

This imports all of numpy as a library and accessing any aspect of Numpy can be done by:


```python
np.array([0, 1, 2, 3])
```




    array([0, 1, 2, 3])




```python
np.linspace(0, 1, 101)
```




    array([ 0.  ,  0.01,  0.02,  0.03,  0.04,  0.05,  0.06,  0.07,  0.08,
            0.09,  0.1 ,  0.11,  0.12,  0.13,  0.14,  0.15,  0.16,  0.17,
            0.18,  0.19,  0.2 ,  0.21,  0.22,  0.23,  0.24,  0.25,  0.26,
            0.27,  0.28,  0.29,  0.3 ,  0.31,  0.32,  0.33,  0.34,  0.35,
            0.36,  0.37,  0.38,  0.39,  0.4 ,  0.41,  0.42,  0.43,  0.44,
            0.45,  0.46,  0.47,  0.48,  0.49,  0.5 ,  0.51,  0.52,  0.53,
            0.54,  0.55,  0.56,  0.57,  0.58,  0.59,  0.6 ,  0.61,  0.62,
            0.63,  0.64,  0.65,  0.66,  0.67,  0.68,  0.69,  0.7 ,  0.71,
            0.72,  0.73,  0.74,  0.75,  0.76,  0.77,  0.78,  0.79,  0.8 ,
            0.81,  0.82,  0.83,  0.84,  0.85,  0.86,  0.87,  0.88,  0.89,
            0.9 ,  0.91,  0.92,  0.93,  0.94,  0.95,  0.96,  0.97,  0.98,
            0.99,  1.  ])




```python

```


### WTF is Pandas

Pandas is a library that is going to solve all your problems. 'BIG DATA HERE WE COME'

... actually though its amazing

`pandas` is a Python package providing fast, flexible, and expressive data structures designed to make working with “relational” or “labeled” data both easy and intuitive. It aims to be the fundamental high-level building block for doing practical, real world data analysis in Python. Additionally, it has the broader goal of becoming the most powerful and flexible open source data analysis / manipulation tool available in any language. It is already well on its way toward this goal.


```python
import pandas as pd
```


```python
data = pd.read_csv('HW1-2 Data.csv')
```


```python
data.describe()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Volume [mm^3]]</th>
      <th>Mass [mg]</th>
      <th>Feret Diameter 1 [mm]</th>
      <th>Feret Diameter 2 [mm]</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>count</th>
      <td>1000.000000</td>
      <td>1000.000000</td>
      <td>1000.000000</td>
      <td>1000.000000</td>
    </tr>
    <tr>
      <th>mean</th>
      <td>0.029488</td>
      <td>0.207213</td>
      <td>0.153063</td>
      <td>0.548643</td>
    </tr>
    <tr>
      <th>std</th>
      <td>0.061544</td>
      <td>0.793345</td>
      <td>0.224589</td>
      <td>0.281791</td>
    </tr>
    <tr>
      <th>min</th>
      <td>0.000119</td>
      <td>0.000067</td>
      <td>0.007710</td>
      <td>0.099075</td>
    </tr>
    <tr>
      <th>25%</th>
      <td>0.003823</td>
      <td>0.006164</td>
      <td>0.048020</td>
      <td>0.346826</td>
    </tr>
    <tr>
      <th>50%</th>
      <td>0.010490</td>
      <td>0.024298</td>
      <td>0.094952</td>
      <td>0.484080</td>
    </tr>
    <tr>
      <th>75%</th>
      <td>0.028580</td>
      <td>0.108383</td>
      <td>0.170650</td>
      <td>0.672384</td>
    </tr>
    <tr>
      <th>max</th>
      <td>1.050349</td>
      <td>13.857231</td>
      <td>3.154399</td>
      <td>2.109015</td>
    </tr>
  </tbody>
</table>
</div>



Lets make these columns easier to use! 


```python
data.rename(index=str, columns={"Volume [mm^3]]":"volume",
                                "Mass [mg]": "mass",
                                "Feret Diameter 1 [mm]":"feret_diam_1",
                                "Feret Diameter 2 [mm]":"feret_diam_2"
                               }
           )
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>volume</th>
      <th>mass</th>
      <th>feret_diam_1</th>
      <th>feret_diam_2</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0.006466</td>
      <td>0.058585</td>
      <td>0.019437</td>
      <td>0.700645</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0.009316</td>
      <td>0.012433</td>
      <td>0.952374</td>
      <td>0.267381</td>
    </tr>
    <tr>
      <th>2</th>
      <td>0.002399</td>
      <td>0.006264</td>
      <td>0.058978</td>
      <td>0.345153</td>
    </tr>
    <tr>
      <th>3</th>
      <td>0.031995</td>
      <td>0.100419</td>
      <td>0.067035</td>
      <td>0.418246</td>
    </tr>
    <tr>
      <th>4</th>
      <td>0.007510</td>
      <td>0.006537</td>
      <td>0.075700</td>
      <td>0.572755</td>
    </tr>
    <tr>
      <th>5</th>
      <td>0.026187</td>
      <td>0.166015</td>
      <td>0.126069</td>
      <td>1.059698</td>
    </tr>
    <tr>
      <th>6</th>
      <td>0.029198</td>
      <td>0.005290</td>
      <td>0.074409</td>
      <td>0.565612</td>
    </tr>
    <tr>
      <th>7</th>
      <td>0.007224</td>
      <td>0.022497</td>
      <td>0.038171</td>
      <td>0.228441</td>
    </tr>
    <tr>
      <th>8</th>
      <td>0.005807</td>
      <td>0.445487</td>
      <td>0.092047</td>
      <td>0.328482</td>
    </tr>
    <tr>
      <th>9</th>
      <td>0.009942</td>
      <td>0.334885</td>
      <td>0.050520</td>
      <td>0.469014</td>
    </tr>
    <tr>
      <th>10</th>
      <td>0.011360</td>
      <td>0.011683</td>
      <td>0.034012</td>
      <td>0.492995</td>
    </tr>
    <tr>
      <th>11</th>
      <td>0.004403</td>
      <td>7.124480</td>
      <td>0.046188</td>
      <td>0.460385</td>
    </tr>
    <tr>
      <th>12</th>
      <td>0.006744</td>
      <td>0.005274</td>
      <td>0.600865</td>
      <td>0.488009</td>
    </tr>
    <tr>
      <th>13</th>
      <td>0.009083</td>
      <td>0.129151</td>
      <td>0.033562</td>
      <td>0.540403</td>
    </tr>
    <tr>
      <th>14</th>
      <td>0.003936</td>
      <td>0.005650</td>
      <td>0.052385</td>
      <td>0.505151</td>
    </tr>
    <tr>
      <th>15</th>
      <td>0.007259</td>
      <td>0.054661</td>
      <td>0.100520</td>
      <td>0.311482</td>
    </tr>
    <tr>
      <th>16</th>
      <td>0.000288</td>
      <td>0.031665</td>
      <td>0.052970</td>
      <td>0.369507</td>
    </tr>
    <tr>
      <th>17</th>
      <td>0.001631</td>
      <td>0.006827</td>
      <td>0.246296</td>
      <td>0.475951</td>
    </tr>
    <tr>
      <th>18</th>
      <td>0.048921</td>
      <td>0.012838</td>
      <td>0.256106</td>
      <td>0.709078</td>
    </tr>
    <tr>
      <th>19</th>
      <td>0.014581</td>
      <td>0.015019</td>
      <td>0.226109</td>
      <td>0.591671</td>
    </tr>
    <tr>
      <th>20</th>
      <td>0.023665</td>
      <td>0.251856</td>
      <td>0.071298</td>
      <td>0.837417</td>
    </tr>
    <tr>
      <th>21</th>
      <td>0.002300</td>
      <td>0.011678</td>
      <td>0.050554</td>
      <td>0.339625</td>
    </tr>
    <tr>
      <th>22</th>
      <td>0.008744</td>
      <td>0.047212</td>
      <td>0.093516</td>
      <td>0.457594</td>
    </tr>
    <tr>
      <th>23</th>
      <td>0.025012</td>
      <td>0.015971</td>
      <td>0.074184</td>
      <td>0.784951</td>
    </tr>
    <tr>
      <th>24</th>
      <td>0.002210</td>
      <td>0.061940</td>
      <td>0.128113</td>
      <td>0.641570</td>
    </tr>
    <tr>
      <th>25</th>
      <td>0.010001</td>
      <td>0.001890</td>
      <td>0.028015</td>
      <td>0.310840</td>
    </tr>
    <tr>
      <th>26</th>
      <td>0.001178</td>
      <td>0.002909</td>
      <td>0.183799</td>
      <td>0.488446</td>
    </tr>
    <tr>
      <th>27</th>
      <td>0.004532</td>
      <td>0.011186</td>
      <td>0.617232</td>
      <td>0.651771</td>
    </tr>
    <tr>
      <th>28</th>
      <td>0.004801</td>
      <td>0.223886</td>
      <td>0.413835</td>
      <td>0.306553</td>
    </tr>
    <tr>
      <th>29</th>
      <td>0.013110</td>
      <td>0.050805</td>
      <td>0.007799</td>
      <td>0.510939</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>970</th>
      <td>0.001979</td>
      <td>0.002238</td>
      <td>0.118931</td>
      <td>0.403994</td>
    </tr>
    <tr>
      <th>971</th>
      <td>0.001115</td>
      <td>0.064164</td>
      <td>0.221647</td>
      <td>0.359679</td>
    </tr>
    <tr>
      <th>972</th>
      <td>0.000433</td>
      <td>0.001248</td>
      <td>0.056448</td>
      <td>0.513048</td>
    </tr>
    <tr>
      <th>973</th>
      <td>0.005989</td>
      <td>0.002206</td>
      <td>0.232351</td>
      <td>0.198666</td>
    </tr>
    <tr>
      <th>974</th>
      <td>0.076460</td>
      <td>0.247576</td>
      <td>0.078997</td>
      <td>0.523927</td>
    </tr>
    <tr>
      <th>975</th>
      <td>0.005950</td>
      <td>1.920286</td>
      <td>0.121248</td>
      <td>0.350022</td>
    </tr>
    <tr>
      <th>976</th>
      <td>0.000925</td>
      <td>0.028461</td>
      <td>0.084854</td>
      <td>0.877833</td>
    </tr>
    <tr>
      <th>977</th>
      <td>0.001115</td>
      <td>0.006821</td>
      <td>0.124305</td>
      <td>0.623899</td>
    </tr>
    <tr>
      <th>978</th>
      <td>0.021856</td>
      <td>0.025754</td>
      <td>0.126827</td>
      <td>0.984968</td>
    </tr>
    <tr>
      <th>979</th>
      <td>0.011989</td>
      <td>0.376886</td>
      <td>0.138792</td>
      <td>0.617346</td>
    </tr>
    <tr>
      <th>980</th>
      <td>0.001576</td>
      <td>0.029664</td>
      <td>0.119252</td>
      <td>0.324180</td>
    </tr>
    <tr>
      <th>981</th>
      <td>0.003226</td>
      <td>0.007596</td>
      <td>0.022994</td>
      <td>0.459225</td>
    </tr>
    <tr>
      <th>982</th>
      <td>0.000298</td>
      <td>0.008895</td>
      <td>0.111334</td>
      <td>0.545086</td>
    </tr>
    <tr>
      <th>983</th>
      <td>0.023091</td>
      <td>0.082554</td>
      <td>0.160259</td>
      <td>0.926060</td>
    </tr>
    <tr>
      <th>984</th>
      <td>0.010036</td>
      <td>0.453171</td>
      <td>0.073118</td>
      <td>0.613173</td>
    </tr>
    <tr>
      <th>985</th>
      <td>0.189953</td>
      <td>0.026561</td>
      <td>0.026716</td>
      <td>0.139364</td>
    </tr>
    <tr>
      <th>986</th>
      <td>0.003405</td>
      <td>0.618790</td>
      <td>0.130802</td>
      <td>0.321488</td>
    </tr>
    <tr>
      <th>987</th>
      <td>0.024101</td>
      <td>0.118629</td>
      <td>0.039347</td>
      <td>0.589103</td>
    </tr>
    <tr>
      <th>988</th>
      <td>0.003249</td>
      <td>0.002454</td>
      <td>0.100585</td>
      <td>0.483630</td>
    </tr>
    <tr>
      <th>989</th>
      <td>0.026969</td>
      <td>0.026110</td>
      <td>0.020560</td>
      <td>0.356443</td>
    </tr>
    <tr>
      <th>990</th>
      <td>0.020525</td>
      <td>0.210580</td>
      <td>0.079150</td>
      <td>0.234371</td>
    </tr>
    <tr>
      <th>991</th>
      <td>0.003011</td>
      <td>0.018461</td>
      <td>0.049677</td>
      <td>0.326363</td>
    </tr>
    <tr>
      <th>992</th>
      <td>0.002700</td>
      <td>0.004004</td>
      <td>0.396254</td>
      <td>0.981892</td>
    </tr>
    <tr>
      <th>993</th>
      <td>0.067720</td>
      <td>0.152430</td>
      <td>0.134141</td>
      <td>0.405197</td>
    </tr>
    <tr>
      <th>994</th>
      <td>0.134239</td>
      <td>0.007668</td>
      <td>0.046239</td>
      <td>0.256885</td>
    </tr>
    <tr>
      <th>995</th>
      <td>0.000624</td>
      <td>0.001443</td>
      <td>0.024109</td>
      <td>0.688881</td>
    </tr>
    <tr>
      <th>996</th>
      <td>0.013589</td>
      <td>0.004569</td>
      <td>0.079186</td>
      <td>0.338079</td>
    </tr>
    <tr>
      <th>997</th>
      <td>0.036462</td>
      <td>1.405022</td>
      <td>0.312778</td>
      <td>0.658810</td>
    </tr>
    <tr>
      <th>998</th>
      <td>0.004591</td>
      <td>4.109361</td>
      <td>0.015094</td>
      <td>0.662078</td>
    </tr>
    <tr>
      <th>999</th>
      <td>0.052517</td>
      <td>0.017157</td>
      <td>0.104756</td>
      <td>0.136810</td>
    </tr>
  </tbody>
</table>
<p>1000 rows × 4 columns</p>
</div>
