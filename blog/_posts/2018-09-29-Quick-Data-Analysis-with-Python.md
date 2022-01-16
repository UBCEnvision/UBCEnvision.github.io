---
layout: post
title: "Quick Data Analysis with Python"
date: "2018-09-29"
author: ["Josh Donaldson"]
---

In this post we are going to talk about how to quickly and easily analyze data with Python. Specifically this will show you how to import and export data from CSV's (comma seperated variables) into Python. Note that this post is a work in progress and information will continue to be updated. 

Click [here](/documents/Intro to Engineering Applications of Python.pdf) to view the presentation slides. They have some useful links to documentation that can help you in your Python endeavours! 

# Basic Python

#### Here is a 5 minute refresher on some basic Python syntax and conventions. 


```python
a = 1
b = 2
```


```python
a + b
```

> 3

```python
a - b
```

> -1


```python
a * b
```

> 2


```python
b / a
```

> 2.0


```python
b % a
```

> 0



```python
a = 2
b = 3
```


```python
b**a
```

> 9


### Lets try some harder things! 


```python
for i in range(0, 10, 1):
    print(i)
```

>0 <br>
>1 <br>
>2 <br>
>3 <br>
>4 <br>
>5 <br>
>6 <br>
>7 <br>
>8 <br>
>9 <br>


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

Read more about Python internal libraries [here](https://docs.python.org/3/library/)

You can import an entire library under an shortened alias. The following are the typical conventions: 

```python
import numpy as np
import pandas as pd
import matplotlib as plt
```

## Lists

Say I have a list of items in Python. The following are helpful indexing conventions. Read more about lists [here](https://docs.python.org/3/tutorial/datastructures.html)


```python
sample_list = [1, 2, 3, 4, 5]
```


```python
sample_list[0]
```

> 1

```python
sample_list[-1]
```

> 5

```python
sample_list.pop(0)
```

> 1


```python
sample_list
```
> [2, 3, 4, 5]




```python
for item in sample_list:
    print("The item {} multiplied by 2 is {}".format(item, item*2))
```
<p>
The item 2 multiplied by 2 is 4 <br>


The item 3 multiplied by 2 is 6 <br>


The item 4 multiplied by 2 is 8 <br>


The item 5 multiplied by 2 is 10 <br>
</p>



```python
sample_list.append(0)
print(sample_list)
```

> [2, 3, 4, 5, 0, 0, 0]


**Try not to do this with big data. There are better functions for iterating over large datasets.**

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

> {'small': 1, 'medium': 2.5, 'large': 5}


```python
sample_dict = {
    'small': sample_list,
    'large': sample_list*2
}
```


```python
sample_dict
```

> {'small': [2, 3, 4, 5], 'large': [2, 3, 4, 5, 2, 3, 4, 5]}



## Functions

If you have a commonly repeated block of code, make it a function! 


```python
def do_a_thing():
    print("Do a thing!")
```


```python
do_a_thing()
```

> Do a thing!

```python
def celsius_to_fahrenheit(celsius):
    fahrenheit = 9/5*celsius + 32
    return fahrenheit
```


```python
celsius_to_fahrenheit(21)
```

> 69.80000000000001


```python
celsius_to_fahrenheit(23)
```

> 73.4




```python
for item in sample_list:
    print(celsius_to_fahrenheit(item))
```

> 35.6 <br>
> 37.4 <br>
> 39.2 <br>
> 41.0 <br>


# Try This

Take 2 lists of data of the following:


```python
list_1 = [21, 23, 65, 23, 65, 12]
list_2 = [34, 12, 54, 54, 12, 54]
```

Create a THIRD list where the contents of this list is the results of list_1 divide by list_2


# What is Numpy?

Numpy is a library that basically turns Python into a free version of Matlab. 

Step 1: Importing libraries


```python
import numpy as np
```

This imports all of numpy as a library and accessing any aspect of Numpy can be done by:


```python
np.array([0, 1, 2, 3])
```

> array([0, 1, 2, 3])

```python
np.linspace(0, 1, 101)
```

>    array([ 0.  ,  0.01,  0.02,  0.03,  0.04,  0.05,  0.06,  0.07,  0.08, <br>
>            0.09,  0.1 ,  0.11,  0.12,  0.13,  0.14,  0.15,  0.16,  0.17, <br>
>            0.18,  0.19,  0.2 ,  0.21,  0.22,  0.23,  0.24,  0.25,  0.26, <br>
>            0.27,  0.28,  0.29,  0.3 ,  0.31,  0.32,  0.33,  0.34,  0.35, <br>
>            0.36,  0.37,  0.38,  0.39,  0.4 ,  0.41,  0.42,  0.43,  0.44, <br>
>            0.45,  0.46,  0.47,  0.48,  0.49,  0.5 ,  0.51,  0.52,  0.53, <br>
>            0.54,  0.55,  0.56,  0.57,  0.58,  0.59,  0.6 ,  0.61,  0.62, <br>
>            0.63,  0.64,  0.65,  0.66,  0.67,  0.68,  0.69,  0.7 ,  0.71, <br>
>            0.72,  0.73,  0.74,  0.75,  0.76,  0.77,  0.78,  0.79,  0.8 , <br>
>            0.81,  0.82,  0.83,  0.84,  0.85,  0.86,  0.87,  0.88,  0.89, <br>
>            0.9 ,  0.91,  0.92,  0.93,  0.94,  0.95,  0.96,  0.97,  0.98, <br>
>            0.99,  1.  ])


### What is Pandas??

Pandas is a library that is going to solve all your engineering problems.

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



```python
data['volume'].mean()
```

> 0.029487654130769765

```python
data['mass'].mean()
```

> 0.20721328766934172

```python
data['mass'].quantile(.65)
```

> 0.05503852664868761

```python
import numpy as np
data = data.apply(np.sqrt)
```

<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
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
      <td>0.080414</td>
      <td>0.242044</td>
      <td>0.139415</td>
      <td>0.837045</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0.096521</td>
      <td>0.111503</td>
      <td>0.975896</td>
      <td>0.517089</td>
    </tr>
    <tr>
      <th>2</th>
      <td>0.048980</td>
      <td>0.079146</td>
      <td>0.242854</td>
      <td>0.587497</td>
    </tr>
    <tr>
      <th>3</th>
      <td>0.178872</td>
      <td>0.316890</td>
      <td>0.258910</td>
      <td>0.646719</td>
    </tr>
    <tr>
      <th>4</th>
      <td>0.086658</td>
      <td>0.080849</td>
      <td>0.275137</td>
      <td>0.756806</td>
    </tr>
    <tr>
      <th>5</th>
      <td>0.161823</td>
      <td>0.407450</td>
      <td>0.355062</td>
      <td>1.029417</td>
    </tr>
    <tr>
      <th>6</th>
      <td>0.170873</td>
      <td>0.072731</td>
      <td>0.272781</td>
      <td>0.752072</td>
    </tr>
    <tr>
      <th>7</th>
      <td>0.084994</td>
      <td>0.149989</td>
      <td>0.195374</td>
      <td>0.477955</td>
    </tr>
    <tr>
      <th>8</th>
      <td>0.076204</td>
      <td>0.667448</td>
      <td>0.303392</td>
      <td>0.573133</td>
    </tr>
    <tr>
      <th>9</th>
      <td>0.099709</td>
      <td>0.578692</td>
      <td>0.224767</td>
      <td>0.684846</td>
    </tr>
    <tr>
      <th>10</th>
      <td>0.106582</td>
      <td>0.108086</td>
      <td>0.184423</td>
      <td>0.702136</td>
    </tr>
    <tr>
      <th>11</th>
      <td>0.066354</td>
      <td>2.669172</td>
      <td>0.214914</td>
      <td>0.678517</td>
    </tr>
    <tr>
      <th>12</th>
      <td>0.082119</td>
      <td>0.072624</td>
      <td>0.775155</td>
      <td>0.698577</td>
    </tr>
    <tr>
      <th>13</th>
      <td>0.095306</td>
      <td>0.359376</td>
      <td>0.183200</td>
      <td>0.735121</td>
    </tr>
    <tr>
      <th>14</th>
      <td>0.062741</td>
      <td>0.075163</td>
      <td>0.228878</td>
      <td>0.710740</td>
    </tr>
    <tr>
      <th>15</th>
      <td>0.085197</td>
      <td>0.233797</td>
      <td>0.317048</td>
      <td>0.558106</td>
    </tr>
    <tr>
      <th>16</th>
      <td>0.016958</td>
      <td>0.177946</td>
      <td>0.230152</td>
      <td>0.607871</td>
    </tr>
    <tr>
      <th>17</th>
      <td>0.040384</td>
      <td>0.082625</td>
      <td>0.496282</td>
      <td>0.689892</td>
    </tr>
    <tr>
      <th>18</th>
      <td>0.221181</td>
      <td>0.113304</td>
      <td>0.506069</td>
      <td>0.842068</td>
    </tr>
    <tr>
      <th>19</th>
      <td>0.120752</td>
      <td>0.122553</td>
      <td>0.475510</td>
      <td>0.769202</td>
    </tr>
    <tr>
      <th>20</th>
      <td>0.153834</td>
      <td>0.501852</td>
      <td>0.267017</td>
      <td>0.915105</td>
    </tr>
    <tr>
      <th>21</th>
      <td>0.047959</td>
      <td>0.108065</td>
      <td>0.224841</td>
      <td>0.582773</td>
    </tr>
    <tr>
      <th>22</th>
      <td>0.093510</td>
      <td>0.217282</td>
      <td>0.305804</td>
      <td>0.676457</td>
    </tr>
    <tr>
      <th>23</th>
      <td>0.158153</td>
      <td>0.126377</td>
      <td>0.272368</td>
      <td>0.885975</td>
    </tr>
    <tr>
      <th>24</th>
      <td>0.047007</td>
      <td>0.248878</td>
      <td>0.357929</td>
      <td>0.800980</td>
    </tr>
    <tr>
      <th>25</th>
      <td>0.100004</td>
      <td>0.043477</td>
      <td>0.167377</td>
      <td>0.557530</td>
    </tr>
    <tr>
      <th>26</th>
      <td>0.034325</td>
      <td>0.053933</td>
      <td>0.428718</td>
      <td>0.698889</td>
    </tr>
    <tr>
      <th>27</th>
      <td>0.067324</td>
      <td>0.105763</td>
      <td>0.785641</td>
      <td>0.807323</td>
    </tr>
    <tr>
      <th>28</th>
      <td>0.069286</td>
      <td>0.473166</td>
      <td>0.643300</td>
      <td>0.553672</td>
    </tr>
    <tr>
      <th>29</th>
      <td>0.114501</td>
      <td>0.225399</td>
      <td>0.088311</td>
      <td>0.714800</td>
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
      <td>0.044482</td>
      <td>0.047308</td>
      <td>0.344864</td>
      <td>0.635605</td>
    </tr>
    <tr>
      <th>971</th>
      <td>0.033395</td>
      <td>0.253306</td>
      <td>0.470794</td>
      <td>0.599732</td>
    </tr>
    <tr>
      <th>972</th>
      <td>0.020803</td>
      <td>0.035330</td>
      <td>0.237587</td>
      <td>0.716273</td>
    </tr>
    <tr>
      <th>973</th>
      <td>0.077388</td>
      <td>0.046973</td>
      <td>0.482028</td>
      <td>0.445720</td>
    </tr>
    <tr>
      <th>974</th>
      <td>0.276513</td>
      <td>0.497570</td>
      <td>0.281064</td>
      <td>0.723828</td>
    </tr>
    <tr>
      <th>975</th>
      <td>0.077135</td>
      <td>1.385744</td>
      <td>0.348207</td>
      <td>0.591626</td>
    </tr>
    <tr>
      <th>976</th>
      <td>0.030408</td>
      <td>0.168704</td>
      <td>0.291297</td>
      <td>0.936927</td>
    </tr>
    <tr>
      <th>977</th>
      <td>0.033390</td>
      <td>0.082591</td>
      <td>0.352569</td>
      <td>0.789873</td>
    </tr>
    <tr>
      <th>978</th>
      <td>0.147838</td>
      <td>0.160479</td>
      <td>0.356127</td>
      <td>0.992455</td>
    </tr>
    <tr>
      <th>979</th>
      <td>0.109493</td>
      <td>0.613911</td>
      <td>0.372549</td>
      <td>0.785714</td>
    </tr>
    <tr>
      <th>980</th>
      <td>0.039704</td>
      <td>0.172233</td>
      <td>0.345329</td>
      <td>0.569368</td>
    </tr>
    <tr>
      <th>981</th>
      <td>0.056798</td>
      <td>0.087156</td>
      <td>0.151638</td>
      <td>0.677662</td>
    </tr>
    <tr>
      <th>982</th>
      <td>0.017253</td>
      <td>0.094311</td>
      <td>0.333668</td>
      <td>0.738300</td>
    </tr>
    <tr>
      <th>983</th>
      <td>0.151959</td>
      <td>0.287323</td>
      <td>0.400324</td>
      <td>0.962320</td>
    </tr>
    <tr>
      <th>984</th>
      <td>0.100177</td>
      <td>0.673180</td>
      <td>0.270403</td>
      <td>0.783054</td>
    </tr>
    <tr>
      <th>985</th>
      <td>0.435836</td>
      <td>0.162975</td>
      <td>0.163449</td>
      <td>0.373314</td>
    </tr>
    <tr>
      <th>986</th>
      <td>0.058351</td>
      <td>0.786632</td>
      <td>0.361665</td>
      <td>0.566999</td>
    </tr>
    <tr>
      <th>987</th>
      <td>0.155243</td>
      <td>0.344426</td>
      <td>0.198362</td>
      <td>0.767530</td>
    </tr>
    <tr>
      <th>988</th>
      <td>0.057004</td>
      <td>0.049536</td>
      <td>0.317151</td>
      <td>0.695435</td>
    </tr>
    <tr>
      <th>989</th>
      <td>0.164222</td>
      <td>0.161585</td>
      <td>0.143387</td>
      <td>0.597029</td>
    </tr>
    <tr>
      <th>990</th>
      <td>0.143266</td>
      <td>0.458890</td>
      <td>0.281336</td>
      <td>0.484119</td>
    </tr>
    <tr>
      <th>991</th>
      <td>0.054868</td>
      <td>0.135872</td>
      <td>0.222883</td>
      <td>0.571282</td>
    </tr>
    <tr>
      <th>992</th>
      <td>0.051958</td>
      <td>0.063276</td>
      <td>0.629487</td>
      <td>0.990904</td>
    </tr>
    <tr>
      <th>993</th>
      <td>0.260231</td>
      <td>0.390423</td>
      <td>0.366253</td>
      <td>0.636551</td>
    </tr>
    <tr>
      <th>994</th>
      <td>0.366386</td>
      <td>0.087567</td>
      <td>0.215033</td>
      <td>0.506838</td>
    </tr>
    <tr>
      <th>995</th>
      <td>0.024982</td>
      <td>0.037982</td>
      <td>0.155269</td>
      <td>0.829988</td>
    </tr>
    <tr>
      <th>996</th>
      <td>0.116573</td>
      <td>0.067593</td>
      <td>0.281401</td>
      <td>0.581446</td>
    </tr>
    <tr>
      <th>997</th>
      <td>0.190949</td>
      <td>1.185336</td>
      <td>0.559265</td>
      <td>0.811671</td>
    </tr>
    <tr>
      <th>998</th>
      <td>0.067758</td>
      <td>2.027156</td>
      <td>0.122859</td>
      <td>0.813682</td>
    </tr>
    <tr>
      <th>999</th>
      <td>0.229165</td>
      <td>0.130985</td>
      <td>0.323660</td>
      <td>0.369878</td>
    </tr>
  </tbody>
</table>
<p>1000 rows × 4 columns</p>
</div>

## Challenge time

Convert the units of each column into units without prefixes (ie: metres, meters cubed)


```python
data.assign(density = lambda x: x['mass']/x['volume'])
```

<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
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
      <th>density</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0.729737</td>
      <td>0.837504</td>
      <td>0.781697</td>
      <td>0.978011</td>
      <td>1.147678</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0.746582</td>
      <td>0.760170</td>
      <td>0.996955</td>
      <td>0.920864</td>
      <td>1.018200</td>
    </tr>
    <tr>
      <th>2</th>
      <td>0.685886</td>
      <td>0.728289</td>
      <td>0.837854</td>
      <td>0.935677</td>
      <td>1.061822</td>
    </tr>
    <tr>
      <th>3</th>
      <td>0.806432</td>
      <td>0.866191</td>
      <td>0.844586</td>
      <td>0.946977</td>
      <td>1.074103</td>
    </tr>
    <tr>
      <th>4</th>
      <td>0.736590</td>
      <td>0.730230</td>
      <td>0.851028</td>
      <td>0.965769</td>
      <td>0.991365</td>
    </tr>
    <tr>
      <th>5</th>
      <td>0.796398</td>
      <td>0.893839</td>
      <td>0.878594</td>
      <td>1.003631</td>
      <td>1.122352</td>
    </tr>
    <tr>
      <th>6</th>
      <td>0.801833</td>
      <td>0.720634</td>
      <td>0.850113</td>
      <td>0.965011</td>
      <td>0.898733</td>
    </tr>
    <tr>
      <th>7</th>
      <td>0.734808</td>
      <td>0.788874</td>
      <td>0.815377</td>
      <td>0.911850</td>
      <td>1.073579</td>
    </tr>
    <tr>
      <th>8</th>
      <td>0.724849</td>
      <td>0.950719</td>
      <td>0.861491</td>
      <td>0.932786</td>
      <td>1.311610</td>
    </tr>
    <tr>
      <th>9</th>
      <td>0.749621</td>
      <td>0.933912</td>
      <td>0.829787</td>
      <td>0.953782</td>
      <td>1.245846</td>
    </tr>
    <tr>
      <th>10</th>
      <td>0.755894</td>
      <td>0.757218</td>
      <td>0.809519</td>
      <td>0.956759</td>
      <td>1.001752</td>
    </tr>
    <tr>
      <th>11</th>
      <td>0.712416</td>
      <td>1.130569</td>
      <td>0.825150</td>
      <td>0.952676</td>
      <td>1.586951</td>
    </tr>
    <tr>
      <th>12</th>
      <td>0.731654</td>
      <td>0.720501</td>
      <td>0.968665</td>
      <td>0.956152</td>
      <td>0.984757</td>
    </tr>
    <tr>
      <th>13</th>
      <td>0.745401</td>
      <td>0.879921</td>
      <td>0.808846</td>
      <td>0.962265</td>
      <td>1.180467</td>
    </tr>
    <tr>
      <th>14</th>
      <td>0.707448</td>
      <td>0.723604</td>
      <td>0.831669</td>
      <td>0.958217</td>
      <td>1.022837</td>
    </tr>
    <tr>
      <th>15</th>
      <td>0.735027</td>
      <td>0.833883</td>
      <td>0.866245</td>
      <td>0.929693</td>
      <td>1.134493</td>
    </tr>
    <tr>
      <th>16</th>
      <td>0.600720</td>
      <td>0.805909</td>
      <td>0.832246</td>
      <td>0.939672</td>
      <td>1.341571</td>
    </tr>
    <tr>
      <th>17</th>
      <td>0.669539</td>
      <td>0.732216</td>
      <td>0.916149</td>
      <td>0.954658</td>
      <td>1.093612</td>
    </tr>
    <tr>
      <th>18</th>
      <td>0.828121</td>
      <td>0.761694</td>
      <td>0.918388</td>
      <td>0.978742</td>
      <td>0.919786</td>
    </tr>
    <tr>
      <th>19</th>
      <td>0.767780</td>
      <td>0.769202</td>
      <td>0.911265</td>
      <td>0.967732</td>
      <td>1.001853</td>
    </tr>
    <tr>
      <th>20</th>
      <td>0.791374</td>
      <td>0.917428</td>
      <td>0.847847</td>
      <td>0.988972</td>
      <td>1.159286</td>
    </tr>
    <tr>
      <th>21</th>
      <td>0.684082</td>
      <td>0.757200</td>
      <td>0.829821</td>
      <td>0.934733</td>
      <td>1.106884</td>
    </tr>
    <tr>
      <th>22</th>
      <td>0.743631</td>
      <td>0.826281</td>
      <td>0.862344</td>
      <td>0.952314</td>
      <td>1.111145</td>
    </tr>
    <tr>
      <th>23</th>
      <td>0.794117</td>
      <td>0.772162</td>
      <td>0.849952</td>
      <td>0.984981</td>
      <td>0.972353</td>
    </tr>
    <tr>
      <th>24</th>
      <td>0.682371</td>
      <td>0.840424</td>
      <td>0.879477</td>
      <td>0.972641</td>
      <td>1.231623</td>
    </tr>
    <tr>
      <th>25</th>
      <td>0.749898</td>
      <td>0.675744</td>
      <td>0.799764</td>
      <td>0.929573</td>
      <td>0.901114</td>
    </tr>
    <tr>
      <th>26</th>
      <td>0.656071</td>
      <td>0.694196</td>
      <td>0.899542</td>
      <td>0.956205</td>
      <td>1.058112</td>
    </tr>
    <tr>
      <th>27</th>
      <td>0.713709</td>
      <td>0.755165</td>
      <td>0.970293</td>
      <td>0.973601</td>
      <td>1.058086</td>
    </tr>
    <tr>
      <th>28</th>
      <td>0.716277</td>
      <td>0.910703</td>
      <td>0.946350</td>
      <td>0.928767</td>
      <td>1.271440</td>
    </tr>
    <tr>
      <th>29</th>
      <td>0.762695</td>
      <td>0.830078</td>
      <td>0.738333</td>
      <td>0.958899</td>
      <td>1.088348</td>
    </tr>
    <tr>
      <th>...</th>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
      <td>...</td>
    </tr>
    <tr>
      <th>970</th>
      <td>0.677677</td>
      <td>0.682915</td>
      <td>0.875399</td>
      <td>0.944927</td>
      <td>1.007729</td>
    </tr>
    <tr>
      <th>971</th>
      <td>0.653824</td>
      <td>0.842278</td>
      <td>0.910131</td>
      <td>0.938090</td>
      <td>1.288234</td>
    </tr>
    <tr>
      <th>972</th>
      <td>0.616264</td>
      <td>0.658444</td>
      <td>0.835561</td>
      <td>0.959146</td>
      <td>1.068444</td>
    </tr>
    <tr>
      <th>973</th>
      <td>0.726246</td>
      <td>0.682308</td>
      <td>0.912818</td>
      <td>0.903926</td>
      <td>0.939500</td>
    </tr>
    <tr>
      <th>974</th>
      <td>0.851559</td>
      <td>0.916446</td>
      <td>0.853298</td>
      <td>0.960405</td>
      <td>1.076198</td>
    </tr>
    <tr>
      <th>975</th>
      <td>0.725949</td>
      <td>1.041623</td>
      <td>0.876455</td>
      <td>0.936496</td>
      <td>1.434842</td>
    </tr>
    <tr>
      <th>976</th>
      <td>0.646209</td>
      <td>0.800554</td>
      <td>0.857121</td>
      <td>0.991889</td>
      <td>1.238846</td>
    </tr>
    <tr>
      <th>977</th>
      <td>0.653810</td>
      <td>0.732178</td>
      <td>0.877820</td>
      <td>0.970945</td>
      <td>1.119863</td>
    </tr>
    <tr>
      <th>978</th>
      <td>0.787450</td>
      <td>0.795568</td>
      <td>0.878923</td>
      <td>0.999054</td>
      <td>1.010309</td>
    </tr>
    <tr>
      <th>979</th>
      <td>0.758444</td>
      <td>0.940834</td>
      <td>0.883889</td>
      <td>0.970304</td>
      <td>1.240480</td>
    </tr>
    <tr>
      <th>980</th>
      <td>0.668121</td>
      <td>0.802628</td>
      <td>0.875546</td>
      <td>0.932018</td>
      <td>1.201322</td>
    </tr>
    <tr>
      <th>981</th>
      <td>0.698702</td>
      <td>0.737119</td>
      <td>0.789952</td>
      <td>0.952525</td>
      <td>1.054983</td>
    </tr>
    <tr>
      <th>982</th>
      <td>0.602016</td>
      <td>0.744424</td>
      <td>0.871795</td>
      <td>0.962784</td>
      <td>1.236552</td>
    </tr>
    <tr>
      <th>983</th>
      <td>0.790161</td>
      <td>0.855650</td>
      <td>0.891870</td>
      <td>0.995210</td>
      <td>1.082881</td>
    </tr>
    <tr>
      <th>984</th>
      <td>0.750060</td>
      <td>0.951736</td>
      <td>0.849183</td>
      <td>0.969893</td>
      <td>1.268879</td>
    </tr>
    <tr>
      <th>985</th>
      <td>0.901396</td>
      <td>0.797104</td>
      <td>0.797394</td>
      <td>0.884116</td>
      <td>0.884300</td>
    </tr>
    <tr>
      <th>986</th>
      <td>0.701061</td>
      <td>0.970446</td>
      <td>0.880620</td>
      <td>0.931532</td>
      <td>1.384253</td>
    </tr>
    <tr>
      <th>987</th>
      <td>0.792276</td>
      <td>0.875260</td>
      <td>0.816925</td>
      <td>0.967469</td>
      <td>1.104741</td>
    </tr>
    <tr>
      <th>988</th>
      <td>0.699018</td>
      <td>0.686855</td>
      <td>0.866280</td>
      <td>0.955613</td>
      <td>0.982600</td>
    </tr>
    <tr>
      <th>989</th>
      <td>0.797864</td>
      <td>0.796251</td>
      <td>0.784447</td>
      <td>0.937561</td>
      <td>0.997979</td>
    </tr>
    <tr>
      <th>990</th>
      <td>0.784364</td>
      <td>0.907222</td>
      <td>0.853401</td>
      <td>0.913312</td>
      <td>1.156633</td>
    </tr>
    <tr>
      <th>991</th>
      <td>0.695689</td>
      <td>0.779186</td>
      <td>0.828914</td>
      <td>0.932409</td>
      <td>1.120021</td>
    </tr>
    <tr>
      <th>992</th>
      <td>0.690967</td>
      <td>0.708198</td>
      <td>0.943786</td>
      <td>0.998859</td>
      <td>1.024938</td>
    </tr>
    <tr>
      <th>993</th>
      <td>0.845123</td>
      <td>0.889082</td>
      <td>0.882008</td>
      <td>0.945103</td>
      <td>1.052015</td>
    </tr>
    <tr>
      <th>994</th>
      <td>0.882048</td>
      <td>0.737552</td>
      <td>0.825208</td>
      <td>0.918562</td>
      <td>0.836181</td>
    </tr>
    <tr>
      <th>995</th>
      <td>0.630526</td>
      <td>0.664428</td>
      <td>0.792293</td>
      <td>0.976976</td>
      <td>1.053767</td>
    </tr>
    <tr>
      <th>996</th>
      <td>0.764407</td>
      <td>0.714065</td>
      <td>0.853426</td>
      <td>0.934466</td>
      <td>0.934142</td>
    </tr>
    <tr>
      <th>997</th>
      <td>0.813045</td>
      <td>1.021481</td>
      <td>0.929934</td>
      <td>0.974255</td>
      <td>1.256364</td>
    </tr>
    <tr>
      <th>998</th>
      <td>0.714283</td>
      <td>1.092348</td>
      <td>0.769442</td>
      <td>0.974556</td>
      <td>1.529293</td>
    </tr>
    <tr>
      <th>999</th>
      <td>0.831799</td>
      <td>0.775627</td>
      <td>0.868483</td>
      <td>0.883095</td>
      <td>0.932469</td>
    </tr>
  </tbody>
</table>
<p>1000 rows × 5 columns</p>
</div>

```python
import matplotlib.pyplot as plt
plt.style.use('ggplot')
```

```python
plt.figure()
data.plot.hist(alpha=1, stacked=True, bins=20)
plt.show()
```

![png](/assets/images/blog/python/output_17_1.png)


```python
data['volume'].plot.hist(bins=10)
plt.show()
```

![png](/assets/images/blog/python/output_18_0.png)


```python
data.plot.box()
plt.show()
```

![png](/assets/images/blog/python/output_19_0.png)

```python
data['volume'].plot.box()
plt.show()
```

![png](/assets/images/blog/python/output_20_0.png)

There are **MANY** tools I did not cover in this tutorial but this should show the basic building blocks of data analysis with Python. Here is an extensive [cheat sheet](https://www.pcwdld.com/python-cheat-sheet) from Hitesh Jethva of PCWDLD to aid you in the learning process. Feel free to comment below in case of any questions!
