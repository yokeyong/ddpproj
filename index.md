---
title       : Flower Species - Knowledge Base
subtitle    : Developing Data Products - Course Project
author      : Wong Yoke Yong
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

- This Application guesses which flower you are looking at
- Working Database include the following species:
        
        1) Setosa
        2) Versicolor
        3) Virginica

---

## Prediction Engine Used

Random Forests Algorithm is chosen, which provides 100% Accuracy


```
## Confusion Matrix and Statistics
## 
##             Reference
## Prediction   setosa versicolor virginica
##   setosa         50          0         0
##   versicolor      0         50         0
##   virginica       0          0        50
## 
## Overall Statistics
##                                      
##                Accuracy : 1          
##                  95% CI : (0.9757, 1)
##     No Information Rate : 0.3333     
##     P-Value [Acc > NIR] : < 2.2e-16  
##                                      
##                   Kappa : 1          
##  Mcnemar's Test P-Value : NA         
## 
## Statistics by Class:
## 
##                      Class: setosa Class: versicolor Class: virginica
## Sensitivity                 1.0000            1.0000           1.0000
## Specificity                 1.0000            1.0000           1.0000
## Pos Pred Value              1.0000            1.0000           1.0000
## Neg Pred Value              1.0000            1.0000           1.0000
## Prevalence                  0.3333            0.3333           0.3333
## Detection Rate              0.3333            0.3333           0.3333
## Detection Prevalence        0.3333            0.3333           0.3333
## Balanced Accuracy           1.0000            1.0000           1.0000
```

---

## Advantages

- Flowers, as per living things, come in different sizes
- A recognition system is needed to do a general classification of the flower
- Measurements are easy to collect and widely available
- Storage Space is cheap and huge amount of data can be stored
- Prediction algorithm can apply to different flower species that are added to the Database

---

## Caveat

- The sample size is too small; 3-Fold Cross Validation is used to check the accuracy
- Ongoing expansion of Working Database
- Botanical Research Team, headed by Dr. John Doe, will address this issue
