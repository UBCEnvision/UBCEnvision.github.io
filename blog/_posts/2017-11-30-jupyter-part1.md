---
layout: post
title: "Exploring Environment Canada Weather Data with Jupyter Notebooks, Part I: Data Extraction & Cleaning"
date: "2017-11-30"
author: ["Siang Lim"]
---

## Introduction
[Environment Canada](http://climate.weather.gc.ca/) provides reliable weather data for many locations across the country. The data can be accessed as either .CSV or .XML files.

Recently, I worked on a project that required analysis of hourly weather data for multiple years across different cities in British Columbia. The .CSV files provided on the Environment Canada site are aggregated by month. For example. weather data for January 2015 will be in one CSV file, data for February 2015 in another file and so on. [Here's the page](http://climate.weather.gc.ca/climate_data/hourly_data_e.html?hlyRange=2013-06-11%7C2017-11-29&dlyRange=2013-06-13%7C2017-11-29&mlyRange=%7C&StationID=51442&Prov=BC&urlExtension=_e.html&searchType=stnName&optLimit=yearRange&StartYear=1840&EndYear=2017&selRowPerPage=25&Line=39&searchMethod=contains&txtStationName=vancouver&timeframe=1&Year=2017&Month=11&Day=1#) to obtain November 2017 weather data for Vancouver, BC.

If I were to download the data manually and use Excel for the job, to complete my analysis for one single year in one city, I'll have to download 12 separate .CSV files, open it up in Excel, copy and paste the relevant cells into a new workbook and clean up any formatting/missing data issues manually. Now imagine repeating that process for multiple years and different cities.

There must be a better way.

## Environment Canada Data Source
To figure out how to automate this process, I first looked for patterns in the .CSV download link on the Environment Canada site and its query parameters:

http://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=51442&Year=2017&Month=11&Day=1&timeframe=1&submit=Download+Data

The field-value pairs for downloading November 2017 hourly data for Vancouver, BC are:

| Field     | Parameter |
|-----------|-----------|
| `format`    | csv       |
| `stationID` | 51442     |
| `Year`      | 2017      |
| `Month`     | 11        |
| `Day`       | 1         |
| `timeframe` | 1         |
| `submit`    | Download Data |

By playing with the parameters, I found that:

- Deleting the `submit` field has no effect on the data retrieval process. 
- The `timeframe` can accept four different values: `1` for hourly data, `2` for daily data, `3` for monthly data and `4` for almanac.
- All weather stations are identified by a unique stationID. The easiest way to find the ID is to search for the location [here](http://climate.weather.gc.ca/historical_data/search_historic_data_e.html) and look at the `stationID` field in the data page. Alternatively, we can scrape data from Environment Canada and match the station IDs with a name, [scroll down](#Scraping Data) for an example.
- Deleting the `day` field has no effect since I'm interested in hourly data and setting `timeframe=1` provides me data for the entire month.
 
 This simplifies the data retrieval link to:
 http://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=51442&Year=2017&Month=11&timeframe=1

## Importing remote CSV files with Pandas
Knowing the pattern, we can either (1) write a VBA script to import the data into Excel, or (2) do our analysis in Jupyter Notebooks using Python. I prefer the second option.

We will now import the CSV file using [pandas](http://pandas.pydata.org/). One of the most popular Python data analysis libraries. Newer versions of pandas can handle remote CSV files directly with the `pd.read_csv` function, so all you need to do is supply a URL.

If you open [the CSV file](http://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=51442&Year=2017&Month=11&timeframe=1), you'll notice that it contains 16 rows of header information and the actual weather data begins at row 17.

Knowing all that, we can write a simple function that takes in a station ID, the year and month and returns a pandas [DataFrame](https://pandas.pydata.org/pandas-docs/stable/dsintro.html) with the downloaded data.


```python
import pandas as pd

def getHourlyData(stationID, year, month):
    base_url = "http://climate.weather.gc.ca/climate_data/bulk_data_e.html?"
    query_url = "format=csv&stationID={}&Year={}&Month={}&timeframe=1".format(stationID, year, month)
    api_endpoint = base_url + query_url
    return pd.read_csv(api_endpoint, skiprows=16)
```

To get data for all 12 months, we just need to create a loop to grab the individual DataFrames and then use `pd.concat` to merge it all together.

```python
stationID = 51442
year = 2016

frames = []
for month in range(12):
	# We add 1 because of Python's 0-indexing
	df = getHourlyData(stationID, year, month+1) 
	frames.append(df)
weather_data = pd.concat(frames)
```

## Additional tricks with `datetime`
What if you wanted to collect weather data from June 2015 to June 2016? Instead of writing some awkward loops to get the correct months we can use the `datetime` and `dateutil` libraries to help us.

Using [rrule](http://dateutil.readthedocs.io/en/stable/rrule.html), which is part of `dateutil`, we can loop through the correct months easily just by defining a start date and and ending date and using the `rrule.MONTHLY` frequency.

```python
from datetime import datetime
from dateutil import rrule

stationID = 51442
start_date = datetime.strptime('June2015', '%b%Y')
end_date = datetime.strptime('June2016', '%b%Y')

frames = []
for dt in rrule.rrule(rrule.MONTHLY, dtstart=start_date, until=end_date):
    df = getMonthlyData(stationID, dt.year, dt.month)
    frames.append(df)
    
weather_data = pd.concat(frames)
```

## Filtering data

We can use boolean indexing to filter our weather data. 

A boolean index is an array of True and False values corresponding to each row. We can use this as a filter to select only True rows in our `weather_data` DataFrame.

Here's an example of a filter that will select data between a date range of September 2015 and November 2015.

```python
start_date = datetime.strptime('Sep2015', '%b%Y')
end_date = datetime.strptime('Nov2015', '%b%Y')

data_filter = (weather_data['Date/Time'] >= start_date) & (weather_data['Date/Time'] <= end_date)
```

But if we try to run it, we will get an error:

> TypeError: '>=' not supported between instances of 'str' and 'datetime.datetime'

Python is complaining that we are comparing a string with a datetime object. To figure out why, let's check the column datatype using:

```python
weather_data['Date/Time'].dtype
```

The command returned `dtype('O')`, telling us that the column contains Python objects and not datetime objects. This is an easy fix, we just need pandas to convert the column to a datetime data type using `pd.to_datetime`:

```python
weather_data['Date/Time'] = pd.to_datetime(weather_data['Date/Time'])
```
We'll need to do convert the data type for the other columns too, for example, the temperature column contains numeric data, so we'll use `pd.numeric`:

```python
weather_data['Temp (°C)'] = pd.to_numeric(weather_data['Temp (°C)'])
```

I only need the temperatures but you need to do this for all the columns that you'll be using in your own analysis.

Finally, if we apply the index on our weather data, we will get the filtered data that's between the date range we've previously specified.

```python
filtered_weather = weather_data[data_filter]
```

### Scraping Data
The stationIDs are provided by province in this Environment Canada [page](http://climate.weather.gc.ca/historical_data/search_historic_data_e.html). We can write a simple Python script that loops through all pages and grabs the StationID, Station Name, Intervals and Year Range.

We will be using [Beautiful Soup](https://www.crummy.com/software/BeautifulSoup/) to parse HTML documents and [FuzzWuzzy](https://github.com/seatgeek/fuzzywuzzy) to perform string matching.

Take a look at the notebook in this GitHub repository to see how it's done: https://github.com/csianglim/weather-gc-ca-python

### What's Next
You can play with the notebook interactively in this [GitHub repository](https://github.com/csianglim/weather-gc-ca-python). 

Check back soon for Part II on data manipulation and visualization.
