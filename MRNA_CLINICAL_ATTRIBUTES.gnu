unset key             							 #This removes the legend key from the initial plot
set border 2          							 #This retains only the border on the left of the plot
set xtics scale 0     							 #This removes the tics, but retains the tic labels
set ytics nomirror    						         #This avoids tics on the right of the plot
set title 'AKT' font 'Helvetica,20'					 #This declares a title with a defined font
set ylabel 'Z-scores of mRNA expression (FPKM)' font 'Helvetica,20'      #This declares the y axis title with a defined plot
set style fill transparent solid 0.1 border				 #This fills with color the boxes and then confers transparency to them
set style boxplot nooutliers						 #This avoids the outliers values from the boxplot
set bars 5.5								 #This sets the bars weigth
set style boxplot medianlinewidth 1.5 					 #This increases mean line thickness
set xtics ('Basal' 1, 'HER2' 60, 'Luminal A' 120, 'Luminal B' 180, 'Normal' 240, 'Claudin-low' 300) scale 0.0 font 'Helvetica,16'	#This sets the tics on the x axis
set ytics font 'Helvetica,20' 						 #This declares the xtics font
set palette defined (1 '#CB4727', 2 '#F19E38', 3 '#4065C5')		 #This sets a defined palette for certain values 
set cbrange [1:3]							 #This sets the range of values which are colored using the current palette by styles
unset colorbox								 #This unsets the color scheme on the plot
set boxwidth 20								 #This sets the box width
set jitter overlap 0.7 spread 1.5 square wrap 8				 #This sets the diffusion of the points (data) on the plot

#Plot

#We plot every file using the same file two times in order to build the plot and the spread of the dots with a defined pattern palette

plot 'Basal.txt' using (1):1 lc rgb '#000000' with boxplot, 'Basal.txt' using (1):1:2 pt 7 ps 1.5 palette, 'Her2.txt' using (60):1 lc rgb '#000000' with boxplot, 'Her2.txt' using (60):1:2 pt 7 ps 1.5 palette, 'LumA.txt' using (120):1 lc rgb '#000000' with boxplot, 'LumA.txt' using (120):1:2 pt 7 ps 1.5 palette, 'LumB.txt' using (180):1 lc rgb '#000000' with boxplot, 'LumB.txt' using (180):1:2 pt 7 ps 1.5 palette, 'Normal.txt' using (240):1 lc rgb '#000000' with boxplot, 'Normal.txt' using (240):1:2 pt 7 ps 1.5 palette, 'claudin.txt' using (300):2 lc rgb '#000000' with boxplot, 'claudin.txt' using (300):2:3 pt 7 ps 1.5 palette

