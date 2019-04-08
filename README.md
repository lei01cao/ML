# ML-notes-exercises-via-Andrew-Ng
The note document of CS229 one-by-one class at ".\note\". (finished in 2019.04)

The solutions to the exercises at ".\exercise\" done during Machine Learning course by Andrew Ng on Coursera.

These are in programming language Octave/MATLAB.

# Exercise_remake_via_Meredith 2018.12
- Original exercises forked from "https://github.com/goswami-rahul/machine-learning-by-AndrewNg-exercises".
- Repair some of bugs.
- Give out personal solutions by Octave/MATLAB only (JSON files #and associated toolbox# not included).
- Make conclusions (and some useless demos?) at ".\exercise\ex_extra\" in Chinese (hope it helps!).


## Repository Tree (2019.04.04)
```bash
.
├── note
│     ├── doc
│     │     ├── CS229_Before_RL.docx
│     │     └── CS229_Notes.docx
│     └── pdf
│            ├── CS229_Before_RL.pdf
│            └── CS229_Notes.pdf
├── exercise
│     ├── ex_extra
│     │   ├── ex3_apply it!
│     │   │   ├── displayData.m
│     │   │   ├── give_prediction.m
│     │   │   ├── handwritting_numbers.mat
│     │   │   ├── predictOneVsAll.m
│     │   │   ├── sigmoid.m
│     │   │   └── trained_para400.mat
│     │   ├── ex1_ReadMe.txt
│     │   ├── ex2_ReadMe.txt
│     │   ├── ex3_ReadMe.txt
│     │   ├── ex4_ReadMe.txt
│     │   ├── ex5_ReadMe.txt
│     │   ├── ex6_ReadMe.txt
│     │   ├── ex7_ReadMe.txt
│     │   └── ex8_ReadMe.txt
│     ├── machine-learning-ex1
│     │   ├── ex1
│     │   │   ├── computeCost.m
│     │   │   ├── computeCostMulti.m
│     │   │   ├── ex1data1.txt
│     │   │   ├── ex1data2.txt
│     │   │   ├── ex1.m
│     │   │   ├── ex1_multi.m
│     │   │   ├── featureNormalize.m
│     │   │   ├── gradientDescent.m
│     │   │   ├── gradientDescentMulti.m
│     │   │   ├── normalEqn.m
│     │   │   ├── plotData.m
│     │   │   ├── submit.m
│     │   │   ├── token.mat
│     │   │   └── warmUpExercise.m
│     │   └── ex1.pdf
│     ├── machine-learning-ex2
│     │   ├── ex2
│     │   │   ├── costFunction.m
│     │   │   ├── costFunctionReg.m
│     │   │   ├── ex2data1.txt
│     │   │   ├── ex2data2.txt
│     │   │   ├── ex2.m
│     │   │   ├── ex2_reg.m
│     │   │   ├── mapFeature.m
│     │   │   ├── plotData.m
│     │   │   ├── plotDecisionBoundary.m
│     │   │   ├── predict.m
│     │   │   ├── sigmoid.m
│     │   │   ├── submit.m
│     │   │   └── token.mat
│     │   └── ex2.pdf
│     ├── machine-learning-ex3
│     │   ├── ex3
│     │   │   ├── displayData.m
│     │   │   ├── ex3data1.mat
│     │   │   ├── ex3.m
│     │   │   ├── ex3_nn.m
│     │   │   ├── ex3weights.mat
│     │   │   ├── fmincg.m
│     │   │   ├── lrCostFunction.m
│     │   │   ├── oneVsAll.m
│     │   │   ├── predict.m
│     │   │   ├── predictOneVsAll.m
│     │   │   ├── sigmoid.m
│     │   │   ├── submit.m
│     │   │   └── token.mat
│     │   └── ex3.pdf
│     ├── machine-learning-ex4
│     │   ├── ex4
│     │   │   ├── checkNNGradients.m
│     │   │   ├── computeNumericalGradient.m
│     │   │   ├── debugInitializeWeights.m
│     │   │   ├── displayData.m
│     │   │   ├── ex4data1.mat
│     │   │   ├── ex4.m
│     │   │   ├── ex4weights.mat
│     │   │   ├── fmincg.m
│     │   │   ├── nnCostFunction.m
│     │   │   ├── octave-workspace
│     │   │   ├── predict.m
│     │   │   ├── randInitializeWeights.m
│     │   │   ├── sigmoidGradient.m
│     │   │   ├── sigmoid.m
│     │   │   ├── submit.m
│     │   │   └── token.mat
│     │   └── ex4.pdf
│     ├── machine-learning-ex5
│     │   ├── ex5
│     │   │   ├── ex5data1.mat
│     │   │   ├── ex5.m
│     │   │   ├── featureNormalize.m
│     │   │   ├── fmincg.m
│     │   │   ├── learningCurve.m
│     │   │   ├── linearRegCostFunction.m
│     │   │   ├── plotFit.m
│     │   │   ├── polyFeatures.m
│     │   │   ├── submit.m
│     │   │   ├── token.mat
│     │   │   ├── trainLinearReg.m
│     │   │   └── validationCurve.m
│     │   └── ex5.pdf
│     ├── machine-learning-ex6
│     │   ├── ex6
│     │   │   ├── dataset3Params.m
│     │   │   ├── emailFeatures.m
│     │   │   ├── emailSample1.txt
│     │   │   ├── emailSample2.txt
│     │   │   ├── ex6data1.mat
│     │   │   ├── ex6data2.mat
│     │   │   ├── ex6data3.mat
│     │   │   ├── ex6.m
│     │   │   ├── ex6_spam.m
│     │   │   ├── gaussianKernel.m
│     │   │   ├── getVocabList.m
│     │   │   ├── linearKernel.m
│     │   │   ├── myEmail.txt
│     │   │   ├── mySpam.txt
│     │   │   ├── plotData.m
│     │   │   ├── porterStemmer.m
│     │   │   ├── processEmail.m
│     │   │   ├── readFile.m
│     │   │   ├── spamSample1.txt
│     │   │   ├── spamSample2.txt
│     │   │   ├── spamTest.mat
│     │   │   ├── spamTrain.mat
│     │   │   ├── submit.m
│     │   │   ├── svmPredict.m
│     │   │   ├── svmTrain.m
│     │   │   ├── token.mat
│     │   │   ├── visualizeBoundaryLinear.m
│     │   │   ├── visualizeBoundary.m
│     │   │   └── vocab.txt
│     │   └── ex6.pdf
│     ├── machine-learning-ex7
│     │   ├── ex7
│     │   │   ├── bird_small.mat
│     │   │   ├── bird_small.png
│     │   │   ├── computeCentroids.m
│     │   │   ├── displayData.m
│     │   │   ├── drawLine.m
│     │   │   ├── ex7data1.mat
│     │   │   ├── ex7data2.mat
│     │   │   ├── ex7faces.mat
│     │   │   ├── ex7.m
│     │   │   ├── ex7_pca.m
│     │   │   ├── featureNormalize.m
│     │   │   ├── findClosestCentroids.m
│     │   │   ├── kMeansInitCentroids.m
│     │   │   ├── octave-workspace
│     │   │   ├── pca.m
│     │   │   ├── plotDataPoints.m
│     │   │   ├── plotProgresskMeans.m
│     │   │   ├── projectData.m
│     │   │   ├── rahul1.jpg
│     │   │   ├── recoverData.m
│     │   │   ├── runkMeans.m
│     │   │   ├── submit.m
│     │   │   └── token.mat
│     │   └── ex7.pdf
│     └── machine-learning-ex8
│          ├── ex8
│          │   ├── checkCostFunction.m
│          │   ├── cofiCostFunc.m
│          │   ├── computeNumericalGradient.m
│          │   ├── estimateGaussian.m
│          │   ├── ex8_cofi.m
│          │   ├── ex8data1.mat
│          │   ├── ex8data2.mat
│          │   ├── ex8.m
│          │   ├── ex8_movieParams.mat
│          │   ├── ex8_movies.mat
│          │   ├── fmincg.m
│          │   ├── loadMovieList.m
│          │   ├── movie_ids.txt
│          │   ├── multivariateGaussian.m
│          │   ├── normalizeRatings.m
│          │   ├── selectThreshold.m
│          │   ├── submit.m
│          │   └── visualizeFit.m
│          └── ex8.pdf
├── license
│     ├── CODE_OF_CONDUCT.md
│     ├── LICENSE
│     └── PULL_REQUEST_TEMPLATE.md
└── README.md
```
PS: The whole project is done! Slightly rearrange some part and the repository.