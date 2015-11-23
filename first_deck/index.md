---
title       : Europe Travelling Distance Calculator
subtitle    : Presentation on Shiny App
author      : Isometrick
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : prettify  # {highlight.js, prettify, highlight}
hitheme     : default      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

Many people drive in Europe between cities for leisure or otherwise. This 
application aims to help people get a quick idea of the distance that they have
to drive for to get between major cities in Europe.


--- .class #id 

## How to use

This application helps you to calculate the distance you would 
travel between Europe cities, including a possible stopover. 
Input the cities of origin, destination, and an option for a 
stopover city. When that is done, click submit to see the results.


--- .class #id 

## Results

The results will indicate the following:



You are travelling from 

'Athens to Barcelona with a stopover at Brussels'

The total distance of your travel is

6276 km

--- .class #id

## Caveats

The shiny app may not work as intended on shinyapps.io, even though it works
perfectly fine locally.

The following methods were tried out to upload the dataset but none was successful

        1. Directly loading using 'data(eurodist)'
        2. Uploading a .csv file and reading from it
        3. Simplifying into a dataset and embedding into the server.R

The dataset for this application is taken from the r datasets, eurodist. 
