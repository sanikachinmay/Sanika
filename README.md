For nonparametric tests, data set name per patient average is created where we create a data which includes average (receptive and expressive) score for each patient within each hearing age group.
The code included does not specify any variable name, we can change the variable name as per the requirement.
After that based on if variable has two or three categories, wilcox or kruskal wallis test is run to get the p-value.
In the file boxplots, first we created a useal boxplot for each variable for both (receptive and expressive) scores. data frame used here is the same data per patient average we created
in non-parametric tests. 
To put a mark of significance (*) over boxplot for significantly different age groups we create data sig_re_df where we let r know about significant groups and provide all other parameters
such that significance mark is appropriately placed.
