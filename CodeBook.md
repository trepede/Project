---
title: "CodeBook"
author: "Tom Repede"
date: "Saturday, April 25, 2015"
output:
  html_document:
    keep_md: yes
---
 
## Project Description
One of the most exciting areas in all of data science right now is wearable computing, Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
This project collects, works with, and cleans a data set and prepare tidy data that can be used for later analysis. 

###Collection of the raw data
The raw data was downloaded from: 
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
It expanded into multiple folders and files for descriptions, meta data, measurements used during training, and measurements used during testing.

##Creating the tidy datafile
Set a working directory, and run run_Analysis.R.  It will produce file mean_data.txt
 
 
###Cleaning of the data
The processing steps were
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

For more detail, see the ReadMe.md file
 
##Description of the variables in the mean_data.txt file
General description of the file:
 - 180 rows and 88 columns
 - Summary of the data:
            activity_name    subject     tBodyAcc.mean...X tBodyAcc.mean...Y   tBodyAcc.mean...Z 
 LAYING            :30    Min.   : 1.0   Min.   :0.2216    Min.   :-0.040514   Min.   :-0.15251  
 SITTING           :30    1st Qu.: 8.0   1st Qu.:0.2712    1st Qu.:-0.020022   1st Qu.:-0.11207  
 STANDING          :30    Median :15.5   Median :0.2770    Median :-0.017262   Median :-0.10819  
 WALKING           :30    Mean   :15.5   Mean   :0.2743    Mean   :-0.017876   Mean   :-0.10916  
 WALKING_DOWNSTAIRS:30    3rd Qu.:23.0   3rd Qu.:0.2800    3rd Qu.:-0.014936   3rd Qu.:-0.10443  
 WALKING_UPSTAIRS  :30    Max.   :30.0   Max.   :0.3015    Max.   :-0.001308   Max.   :-0.07538  
 tGravityAcc.mean...X tGravityAcc.mean...Y tGravityAcc.mean...Z tBodyAccJerk.mean...X tBodyAccJerk.mean...Y
 Min.   :-0.6800      Min.   :-0.47989     Min.   :-0.49509     Min.   :0.04269       Min.   :-0.0386872   
 1st Qu.: 0.8376      1st Qu.:-0.23319     1st Qu.:-0.11726     1st Qu.:0.07396       1st Qu.: 0.0004664   
 Median : 0.9208      Median :-0.12782     Median : 0.02384     Median :0.07640       Median : 0.0094698   
 Mean   : 0.6975      Mean   :-0.01621     Mean   : 0.07413     Mean   :0.07947       Mean   : 0.0075652   
 3rd Qu.: 0.9425      3rd Qu.: 0.08773     3rd Qu.: 0.14946     3rd Qu.:0.08330       3rd Qu.: 0.0134008   
 Max.   : 0.9745      Max.   : 0.95659     Max.   : 0.95787     Max.   :0.13019       Max.   : 0.0568186   
 tBodyAccJerk.mean...Z tBodyGyro.mean...X tBodyGyro.mean...Y tBodyGyro.mean...Z tBodyGyroJerk.mean...X
 Min.   :-0.067458     Min.   :-0.20578   Min.   :-0.20421   Min.   :-0.07245   Min.   :-0.15721      
 1st Qu.:-0.010601     1st Qu.:-0.04712   1st Qu.:-0.08955   1st Qu.: 0.07475   1st Qu.:-0.10322      
 Median :-0.003861     Median :-0.02871   Median :-0.07318   Median : 0.08512   Median :-0.09868      
 Mean   :-0.004953     Mean   :-0.03244   Mean   :-0.07426   Mean   : 0.08744   Mean   :-0.09606      
 3rd Qu.: 0.001958     3rd Qu.:-0.01676   3rd Qu.:-0.06113   3rd Qu.: 0.10177   3rd Qu.:-0.09110      
 Max.   : 0.038053     Max.   : 0.19270   Max.   : 0.02747   Max.   : 0.17910   Max.   :-0.02209      
 tBodyGyroJerk.mean...Y tBodyGyroJerk.mean...Z tBodyAccMag.mean.. tGravityAccMag.mean.. tBodyAccJerkMag.mean..
 Min.   :-0.07681       Min.   :-0.092500      Min.   :-0.9865    Min.   :-0.9865       Min.   :-0.9928       
 1st Qu.:-0.04552       1st Qu.:-0.061725      1st Qu.:-0.9573    1st Qu.:-0.9573       1st Qu.:-0.9807       
 Median :-0.04112       Median :-0.053430      Median :-0.4829    Median :-0.4829       Median :-0.8168       
 Mean   :-0.04269       Mean   :-0.054802      Mean   :-0.4973    Mean   :-0.4973       Mean   :-0.6079       
 3rd Qu.:-0.03842       3rd Qu.:-0.048985      3rd Qu.:-0.0919    3rd Qu.:-0.0919       3rd Qu.:-0.2456       
 Max.   :-0.01320       Max.   :-0.006941      Max.   : 0.6446    Max.   : 0.6446       Max.   : 0.4345       
 tBodyGyroMag.mean.. tBodyGyroJerkMag.mean.. fBodyAcc.mean...X fBodyAcc.mean...Y  fBodyAcc.mean...Z
 Min.   :-0.9807     Min.   :-0.99732        Min.   :-0.9952   Min.   :-0.98903   Min.   :-0.9895  
 1st Qu.:-0.9461     1st Qu.:-0.98515        1st Qu.:-0.9787   1st Qu.:-0.95361   1st Qu.:-0.9619  
 Median :-0.6551     Median :-0.86479        Median :-0.7691   Median :-0.59498   Median :-0.7236  
 Mean   :-0.5652     Mean   :-0.73637        Mean   :-0.5758   Mean   :-0.48873   Mean   :-0.6297  
 3rd Qu.:-0.2159     3rd Qu.:-0.51186        3rd Qu.:-0.2174   3rd Qu.:-0.06341   3rd Qu.:-0.3183  
 Max.   : 0.4180     Max.   : 0.08758        Max.   : 0.5370   Max.   : 0.52419   Max.   : 0.2807  
 fBodyAcc.meanFreq...X fBodyAcc.meanFreq...Y fBodyAcc.meanFreq...Z fBodyAccJerk.mean...X fBodyAccJerk.mean...Y
 Min.   :-0.63591      Min.   :-0.379518     Min.   :-0.52011      Min.   :-0.9946       Min.   :-0.9894      
 1st Qu.:-0.39165      1st Qu.:-0.081314     1st Qu.:-0.03629      1st Qu.:-0.9828       1st Qu.:-0.9725      
 Median :-0.25731      Median : 0.007855     Median : 0.06582      Median :-0.8126       Median :-0.7817      
 Mean   :-0.23227      Mean   : 0.011529     Mean   : 0.04372      Mean   :-0.6139       Mean   :-0.5882      
 3rd Qu.:-0.06105      3rd Qu.: 0.086281     3rd Qu.: 0.17542      3rd Qu.:-0.2820       3rd Qu.:-0.1963      
 Max.   : 0.15912      Max.   : 0.466528     Max.   : 0.40253      Max.   : 0.4743       Max.   : 0.2767      
 fBodyAccJerk.mean...Z fBodyAccJerk.meanFreq...X fBodyAccJerk.meanFreq...Y fBodyAccJerk.meanFreq...Z
 Min.   :-0.9920       Min.   :-0.57604          Min.   :-0.60197          Min.   :-0.62756         
 1st Qu.:-0.9796       1st Qu.:-0.28966          1st Qu.:-0.39751          1st Qu.:-0.30867         
 Median :-0.8707       Median :-0.06091          Median :-0.23209          Median :-0.09187         
 Mean   :-0.7144       Mean   :-0.06910          Mean   :-0.22810          Mean   :-0.13760         
 3rd Qu.:-0.4697       3rd Qu.: 0.17660          3rd Qu.:-0.04721          3rd Qu.: 0.03858         
 Max.   : 0.1578       Max.   : 0.33145          Max.   : 0.19568          Max.   : 0.23011         
 fBodyGyro.mean...X fBodyGyro.mean...Y fBodyGyro.mean...Z fBodyGyro.meanFreq...X fBodyGyro.meanFreq...Y
 Min.   :-0.9931    Min.   :-0.9940    Min.   :-0.9860    Min.   :-0.395770      Min.   :-0.66681      
 1st Qu.:-0.9697    1st Qu.:-0.9700    1st Qu.:-0.9624    1st Qu.:-0.213363      1st Qu.:-0.29433      
 Median :-0.7300    Median :-0.8141    Median :-0.7909    Median :-0.115527      Median :-0.15794      
 Mean   :-0.6367    Mean   :-0.6767    Mean   :-0.6044    Mean   :-0.104551      Mean   :-0.16741      
 3rd Qu.:-0.3387    3rd Qu.:-0.4458    3rd Qu.:-0.2635    3rd Qu.: 0.002655      3rd Qu.:-0.04269      
 Max.   : 0.4750    Max.   : 0.3288    Max.   : 0.4924    Max.   : 0.249209      Max.   : 0.27314      
 fBodyGyro.meanFreq...Z fBodyAccMag.mean.. fBodyAccMag.meanFreq.. fBodyBodyAccJerkMag.mean..
 Min.   :-0.50749       Min.   :-0.9868    Min.   :-0.31234       Min.   :-0.9940           
 1st Qu.:-0.15481       1st Qu.:-0.9560    1st Qu.:-0.01475       1st Qu.:-0.9770           
 Median :-0.05081       Median :-0.6703    Median : 0.08132       Median :-0.7940           
 Mean   :-0.05718       Mean   :-0.5365    Mean   : 0.07613       Mean   :-0.5756           
 3rd Qu.: 0.04152       3rd Qu.:-0.1622    3rd Qu.: 0.17436       3rd Qu.:-0.1872           
 Max.   : 0.37707       Max.   : 0.5866    Max.   : 0.43585       Max.   : 0.5384           
 fBodyBodyAccJerkMag.meanFreq.. fBodyBodyGyroMag.mean.. fBodyBodyGyroMag.meanFreq.. fBodyBodyGyroJerkMag.mean..
 Min.   :-0.12521               Min.   :-0.9865         Min.   :-0.45664            Min.   :-0.9976            
 1st Qu.: 0.04527               1st Qu.:-0.9616         1st Qu.:-0.16951            1st Qu.:-0.9813            
 Median : 0.17198               Median :-0.7657         Median :-0.05352            Median :-0.8779            
 Mean   : 0.16255               Mean   :-0.6671         Mean   :-0.03603            Mean   :-0.7564            
 3rd Qu.: 0.27593               3rd Qu.:-0.4087         3rd Qu.: 0.08228            3rd Qu.:-0.5831            
 Max.   : 0.48809               Max.   : 0.2040         Max.   : 0.40952            Max.   : 0.1466            
 fBodyBodyGyroJerkMag.meanFreq.. angle.tBodyAccMean.gravity. angle.tBodyAccJerkMean..gravityMean.
 Min.   :-0.18292                Min.   :-0.163043           Min.   :-0.1205540                  
 1st Qu.: 0.05423                1st Qu.:-0.011012           1st Qu.:-0.0211694                  
 Median : 0.11156                Median : 0.007878           Median : 0.0031358                  
 Mean   : 0.12592                Mean   : 0.006556           Mean   : 0.0006439                  
 3rd Qu.: 0.20805                3rd Qu.: 0.024393           3rd Qu.: 0.0220881                  
 Max.   : 0.42630                Max.   : 0.129154           Max.   : 0.2032600                  
 angle.tBodyGyroMean.gravityMean. angle.tBodyGyroJerkMean.gravityMean. angle.X.gravityMean. angle.Y.gravityMean.
 Min.   :-0.38931                 Min.   :-0.22367                     Min.   :-0.9471      Min.   :-0.87457    
 1st Qu.:-0.01977                 1st Qu.:-0.05613                     1st Qu.:-0.7907      1st Qu.: 0.02191    
 Median : 0.02087                 Median :-0.01602                     Median :-0.7377      Median : 0.17136    
 Mean   : 0.02193                 Mean   :-0.01137                     Mean   :-0.5243      Mean   : 0.07865    
 3rd Qu.: 0.06460                 3rd Qu.: 0.03200                     3rd Qu.:-0.5823      3rd Qu.: 0.24343    
 Max.   : 0.44410                 Max.   : 0.18238                     Max.   : 0.7378      Max.   : 0.42476    
 angle.Z.gravityMean. tBodyAcc.std...X  tBodyAcc.std...Y   tBodyAcc.std...Z  tGravityAcc.std...X tGravityAcc.std...Y
 Min.   :-0.873649    Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877   Min.   :-0.9968     Min.   :-0.9942    
 1st Qu.:-0.083912    1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498   1st Qu.:-0.9825     1st Qu.:-0.9711    
 Median : 0.005079    Median :-0.7526   Median :-0.50897   Median :-0.6518   Median :-0.9695     Median :-0.9590    
 Mean   :-0.040436    Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756   Mean   :-0.9638     Mean   :-0.9524    
 3rd Qu.: 0.106190    3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306   3rd Qu.:-0.9509     3rd Qu.:-0.9370    
 Max.   : 0.390444    Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090   Max.   :-0.8296     Max.   :-0.6436    
 tGravityAcc.std...Z tBodyAccJerk.std...X tBodyAccJerk.std...Y tBodyAccJerk.std...Z tBodyGyro.std...X
 Min.   :-0.9910     Min.   :-0.9946      Min.   :-0.9895      Min.   :-0.99329     Min.   :-0.9943  
 1st Qu.:-0.9605     1st Qu.:-0.9832      1st Qu.:-0.9724      1st Qu.:-0.98266     1st Qu.:-0.9735  
 Median :-0.9450     Median :-0.8104      Median :-0.7756      Median :-0.88366     Median :-0.7890  
 Mean   :-0.9364     Mean   :-0.5949      Mean   :-0.5654      Mean   :-0.73596     Mean   :-0.6916  
 3rd Qu.:-0.9180     3rd Qu.:-0.2233      3rd Qu.:-0.1483      3rd Qu.:-0.51212     3rd Qu.:-0.4414  
 Max.   :-0.6102     Max.   : 0.5443      Max.   : 0.3553      Max.   : 0.03102     Max.   : 0.2677  
 tBodyGyro.std...Y tBodyGyro.std...Z tBodyGyroJerk.std...X tBodyGyroJerk.std...Y tBodyGyroJerk.std...Z
 Min.   :-0.9942   Min.   :-0.9855   Min.   :-0.9965       Min.   :-0.9971       Min.   :-0.9954      
 1st Qu.:-0.9629   1st Qu.:-0.9609   1st Qu.:-0.9800       1st Qu.:-0.9832       1st Qu.:-0.9848      
 Median :-0.8017   Median :-0.8010   Median :-0.8396       Median :-0.8942       Median :-0.8610      
 Mean   :-0.6533   Mean   :-0.6164   Mean   :-0.7036       Mean   :-0.7636       Mean   :-0.7096      
 3rd Qu.:-0.4196   3rd Qu.:-0.3106   3rd Qu.:-0.4629       3rd Qu.:-0.5861       3rd Qu.:-0.4741      
 Max.   : 0.4765   Max.   : 0.5649   Max.   : 0.1791       Max.   : 0.2959       Max.   : 0.1932      
 tBodyAccMag.std.. tGravityAccMag.std.. tBodyAccJerkMag.std.. tBodyGyroMag.std.. tBodyGyroJerkMag.std..
 Min.   :-0.9865   Min.   :-0.9865      Min.   :-0.9946       Min.   :-0.9814    Min.   :-0.9977       
 1st Qu.:-0.9430   1st Qu.:-0.9430      1st Qu.:-0.9765       1st Qu.:-0.9476    1st Qu.:-0.9805       
 Median :-0.6074   Median :-0.6074      Median :-0.8014       Median :-0.7420    Median :-0.8809       
 Mean   :-0.5439   Mean   :-0.5439      Mean   :-0.5842       Mean   :-0.6304    Mean   :-0.7550       
 3rd Qu.:-0.2090   3rd Qu.:-0.2090      3rd Qu.:-0.2173       3rd Qu.:-0.3602    3rd Qu.:-0.5767       
 Max.   : 0.4284   Max.   : 0.4284      Max.   : 0.4506       Max.   : 0.3000    Max.   : 0.2502       
 fBodyAcc.std...X  fBodyAcc.std...Y   fBodyAcc.std...Z  fBodyAccJerk.std...X fBodyAccJerk.std...Y
 Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872   Min.   :-0.9951      Min.   :-0.9905     
 1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459   1st Qu.:-0.9847      1st Qu.:-0.9737     
 Median :-0.7470   Median :-0.51338   Median :-0.6441   Median :-0.8254      Median :-0.7852     
 Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824   Mean   :-0.6121      Mean   :-0.5707     
 3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655   3rd Qu.:-0.2475      3rd Qu.:-0.1685     
 Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871   Max.   : 0.4768      Max.   : 0.3498     
 fBodyAccJerk.std...Z fBodyGyro.std...X fBodyGyro.std...Y fBodyGyro.std...Z fBodyAccMag.std..
 Min.   :-0.993108    Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867   Min.   :-0.9876  
 1st Qu.:-0.983747    1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643   1st Qu.:-0.9452  
 Median :-0.895121    Median :-0.8086   Median :-0.7964   Median :-0.8224   Median :-0.6513  
 Mean   :-0.756489    Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577   Mean   :-0.6210  
 3rd Qu.:-0.543787    3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916   3rd Qu.:-0.3654  
 Max.   :-0.006236    Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225   Max.   : 0.1787  
 fBodyBodyAccJerkMag.std.. fBodyBodyGyroMag.std.. fBodyBodyGyroJerkMag.std..
 Min.   :-0.9944           Min.   :-0.9815        Min.   :-0.9976           
 1st Qu.:-0.9752           1st Qu.:-0.9488        1st Qu.:-0.9802           
 Median :-0.8126           Median :-0.7727        Median :-0.8941           
 Mean   :-0.5992           Mean   :-0.6723        Mean   :-0.7715           
 3rd Qu.:-0.2668           3rd Qu.:-0.4277        3rd Qu.:-0.6081           
 Max.   : 0.3163           Max.   : 0.2367        Max.   : 0.2878        
 
###VariableS
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation

"Subject" and "Activity_name" are character.  All other columns are numeric.  The actual column names are:
 [1] "activity_name"                        "subject"                             
 [3] "tBodyAcc.mean...X"                    "tBodyAcc.mean...Y"                   
 [5] "tBodyAcc.mean...Z"                    "tGravityAcc.mean...X"                
 [7] "tGravityAcc.mean...Y"                 "tGravityAcc.mean...Z"                
 [9] "tBodyAccJerk.mean...X"                "tBodyAccJerk.mean...Y"               
[11] "tBodyAccJerk.mean...Z"                "tBodyGyro.mean...X"                  
[13] "tBodyGyro.mean...Y"                   "tBodyGyro.mean...Z"                  
[15] "tBodyGyroJerk.mean...X"               "tBodyGyroJerk.mean...Y"              
[17] "tBodyGyroJerk.mean...Z"               "tBodyAccMag.mean.."                  
[19] "tGravityAccMag.mean.."                "tBodyAccJerkMag.mean.."              
[21] "tBodyGyroMag.mean.."                  "tBodyGyroJerkMag.mean.."             
[23] "fBodyAcc.mean...X"                    "fBodyAcc.mean...Y"                   
[25] "fBodyAcc.mean...Z"                    "fBodyAcc.meanFreq...X"               
[27] "fBodyAcc.meanFreq...Y"                "fBodyAcc.meanFreq...Z"               
[29] "fBodyAccJerk.mean...X"                "fBodyAccJerk.mean...Y"               
[31] "fBodyAccJerk.mean...Z"                "fBodyAccJerk.meanFreq...X"           
[33] "fBodyAccJerk.meanFreq...Y"            "fBodyAccJerk.meanFreq...Z"           
[35] "fBodyGyro.mean...X"                   "fBodyGyro.mean...Y"                  
[37] "fBodyGyro.mean...Z"                   "fBodyGyro.meanFreq...X"              
[39] "fBodyGyro.meanFreq...Y"               "fBodyGyro.meanFreq...Z"              
[41] "fBodyAccMag.mean.."                   "fBodyAccMag.meanFreq.."              
[43] "fBodyBodyAccJerkMag.mean.."           "fBodyBodyAccJerkMag.meanFreq.."      
[45] "fBodyBodyGyroMag.mean.."              "fBodyBodyGyroMag.meanFreq.."         
[47] "fBodyBodyGyroJerkMag.mean.."          "fBodyBodyGyroJerkMag.meanFreq.."     
[49] "angle.tBodyAccMean.gravity."          "angle.tBodyAccJerkMean..gravityMean."
[51] "angle.tBodyGyroMean.gravityMean."     "angle.tBodyGyroJerkMean.gravityMean."
[53] "angle.X.gravityMean."                 "angle.Y.gravityMean."                
[55] "angle.Z.gravityMean."                 "tBodyAcc.std...X"                    
[57] "tBodyAcc.std...Y"                     "tBodyAcc.std...Z"                    
[59] "tGravityAcc.std...X"                  "tGravityAcc.std...Y"                 
[61] "tGravityAcc.std...Z"                  "tBodyAccJerk.std...X"                
[63] "tBodyAccJerk.std...Y"                 "tBodyAccJerk.std...Z"                
[65] "tBodyGyro.std...X"                    "tBodyGyro.std...Y"                   
[67] "tBodyGyro.std...Z"                    "tBodyGyroJerk.std...X"               
[69] "tBodyGyroJerk.std...Y"                "tBodyGyroJerk.std...Z"               
[71] "tBodyAccMag.std.."                    "tGravityAccMag.std.."                
[73] "tBodyAccJerkMag.std.."                "tBodyGyroMag.std.."                  
[75] "tBodyGyroJerkMag.std.."               "fBodyAcc.std...X"                    
[77] "fBodyAcc.std...Y"                     "fBodyAcc.std...Z"                    
[79] "fBodyAccJerk.std...X"                 "fBodyAccJerk.std...Y"                
[81] "fBodyAccJerk.std...Z"                 "fBodyGyro.std...X"                   
[83] "fBodyGyro.std...Y"                    "fBodyGyro.std...Z"                   
[85] "fBodyAccMag.std.."                    "fBodyBodyAccJerkMag.std.."           
[87] "fBodyBodyGyroMag.std.."               "fBodyBodyGyroJerkMag.std.."     
 
