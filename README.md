# Predicting income based on census data
### Trevor Ross & Andrew Buelter
### Machine Learning - Final Project

## Data
* The raw data used for project can be found in the raw_data directory. The source of the data can be found online at: [Adult Data Set ](https://archive.ics.uci.edu/ml/datasets/Adult)
* The processed data can be found in the processed_data directory. We processed the data so that it could be interpreted by the ML algoritms. String data types were mapped to integers and incomplete entries were removed.

## MATLAB source code
We used MATLAB to implement the four ML algoritms. The source code of those algoritms can be found in the matlab directory. Note that both the PLA and Pocket-PLA algoritms are implemented in the pocket_PLA.m file.

## Analysis
We analized the results of running the 4 algoritms on the dataset and the conclutions and methods can be found in the analysis directory.

## Data Attributes
#### age
continuous

#### workclass
* Private
* Self-emp-not-inc
* Self-emp-inc
* Federal-gov
* Local-gov
* State-gov
* Without-pay
* Never-worked

#### education-num
continuous

#### marital-status
* Married-civ-spouse
* Divorced
* Never-married
* Separated
* Widowed
* Married-spouse-absent
* Married-AF-spouse

#### occupation
* Tech-support
* Craft-repair
* Other-service
* Sales
* Exec-managerial
* Prof-specialty
* Handlers-cleaners
* Machine-op-inspct
* Adm-clerical
* Farming-fishing
* Transport-moving
* Priv-house-serv
* Protective-serv
* Armed-Forces

#### relationship
* Wife
* Own-child
* Husband
* Not-in-family
* Other-relative
* Unmarried

#### race
* White
* Asian-Pac-Islander
* Amer-Indian-Eskimo
* Other
* Black

#### sex
* Female
* Male

#### capital-gain
continuous

#### capital-loss
continuous

#### hours-per-week
continuous
