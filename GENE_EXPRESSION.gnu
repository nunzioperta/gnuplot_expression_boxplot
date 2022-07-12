#This script elaborates expression data obtained from the GENT2 database and is intended for use with the gnuplot package.
#The data must first be preprocessed for usage in gnuplot without problems.
#Verifies that all the data are in the format shown in the example "data.txt".

#Plot settings

unset key                                                                                      #This removes the legend key from the final plot
set border 2                                                                                   #This retains only the border on the left of the plot
set title 'AKT' font 'Helvetica,24'                                                            #This declares a title with a defined font
set xtics scale 0                                                                              #This removes the tics, but retains the tic labels
set ytics nomirror                                                                             #This avoids tics on the right of the plot
set ylabel 'gene expression (log2)' font 'Helvetica,24'                                        #This declares the y axis title with a defined font
set style fill solid 0.25                                                                      #This fills with color the boxes
set style boxplot nooutliers                                                                   #This avoids the outliers values from the boxplot 
set bars 2.0                                                                                   #This sets the bars weigth
set style boxplot medianlinewidth 1.5                                                          #This increases mean line thickness
set xtics ("Basal" 1, "HER2" 2, "Luminal" 3, "Luminal A" 4, "Luminal B" 5, "TNBC" 6) scale 0.0 #This sets the tics on the x axis
set xtics font 'Helvetica,16' #This declares the x tics font

#Plot

#We plot the data.txt file using different columns from the file for every tic. We add a color code for each breast cancer subtype.

plot 'data.txt' using (1):1 lc rgb '#5b5b5b' title 'Basal' with boxplot , 'data.txt' using (2):2 lc rgb '#ffc618' title 'HER2' with boxplot,  'data.txt' using (3):6 lc rgb '#2078B5' title 'Luminal' with boxplot,  'data.txt' using (4):3 lc rgb '#32A02B' title 'Luminal A' with boxplot,  'data.txt' using (5):4 lc rgb '#E11B1D' title 'Luminal B' with boxplot,  'data.txt' using (6):5 lc rgb '#FD7F03' title 'TNBC' with boxplot

