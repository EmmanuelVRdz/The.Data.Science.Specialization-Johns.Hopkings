######## The Data Scientist's Toolbox ########




#### What is Data and Data Science ####



# Data science = using data to answer questions. 
#Data Scientist have programing skills; expertise; statictics and mathematics knowledge

#Data = a set of values of qualitative or quantitative variables, obteined from 
# a population
#Data is collected, examined and most importantly, used to inform/take decisions.
#The most important part of data science is the question and how all we are doing 
#is using data to answer the question. 

#Data is important, but it is secondary to your question. A good data scientist 
#asks questions first and seeks out relevant data second.

#Often the data available will limit, or perhaps even enable, certain questions 
#you are trying to ask. In these cases, you may have to reframe your question or 
#answer a related question, but the data itself does not drive the question asking.

#we return to our beliefs on the relationship between data and your question and 
#emphasize the importance of question-first strategies. You could have all the data 
#you could ever hope for, but if you don’t have a question to start, the data is 
#useless.

#The ability to solve problems is at the root of data science.

#The Parts of a Data Science Project:

#Every Data Science Project starts with a question that is to be answered with data. 
#That means that forming the question is an important first step in the process. 
#The second step is finding or generating the data you’re going to use to answer that 
#question. With the question solidified and data in hand, the data are then analyzed, 
#first by exploring the data and then often by modeling the data, which means using 
#some statistical or machine learning techniques to analyze the data and answer your 
#question. After drawing conclusions from this analysis, the project has to be 
#communicated to others. Sometimes this is a report you send to your boss or team at 
#work. Other times it’s a blog post. Often it’s a presentation to a group of 
#colleagues. Regardless, a data science project almost always involves some form of 
#communication of the projects’ findings. We’ll walk through these steps using a data 
#science project example below.

# 1. Forming the question
# 2. Finding or generating the data used to answer the question
# 3. Analyzing the data by exploring and modeling it
# 4. Drawn conclusions
# 5. Communicating the projects' findings

#it is important to know that after getting the data together, the next step is 
#figuring out what you need to do with that data in order to answer your question.
#Figuring out how to do what you want to do to answer your question of interest is 
#part of the process, doesn’t always show up in your final project, and can be very 
#time-consuming.An important part of any data science project is effectively 
#communicating the results of the project. In summary, you have to form your question,
#get data, explore and analyse your data, and communicate your results.




#### R-Packages ####



# R-package = collection of functions, data, and code. You can dowload packages from
# repositories, where packages are deposited, such as: CRAN, BioConductor, and GitHub.

# The packages are then stored in a LIBRARY located on the computer. The packages are
# like the books stored in a library.

# If you are installing from the CRAN repository, use the install.packages() function,
# with the name of the package you want to install in quotes between the parentheses 
# It can be used either single or double quotes.

install.packages()
install.packages("ggplot2")

# If you want to install multiple packages at once, you can do so by using a character 
# vector, like:

install.packages(c("ggplo2", "devtools", "lme4"))

# INstalling a package does not make its functions immediatlely available to you.
# First you must LOAD the package into R; to do so, use the liabrary() function.
# It's like any other installed program, just because you've installed it, doesn't
# mean it's automatically running, you have to open the program. Same with R. You've
# installed it, but now you have to "open" it.

library(ggplot2)

# With library() you load the package. It doesn't accept package names in quotes.

# Some packages need other packages, beacause of a "dependency". 

# to check what packages are installed, you can use either of: installed.packages()
# or library() with nothing between the parentheses to check!

installed.packages()
library()

# In RStudio, that package tab  is another way to install packages, and to look at 
# all of the packages you have installed.

# You can check what packages need an update with the function old.packages()
# To update all packages, use update.packages(). If you only want to update a 
# specific package, just use once again install.packages("packagename")

old.packages()
update.packages()
install.packages("PACKAGE NAME")

# Within the RStudio interface, still in that Packages tab, you can click “Update”,
# which will list all of the packages that are not up to date. It gives you the 
# option to update all of your packages, or allows you to select specific packages.

# To unload a given package you can use the detach() function. For example, 

detach("package:ggplot2", unload=TRUE) 

# This would unload the ggplot2 package. Within the RStudio interface, in the 
# Packages tab, you can do it by unchecking the box beside the package name.

# you can simply uninstall it using the function remove.packages(). For example, 

remove.packages("ggplot2")

# Within RStudio, in the Packages tab, clicking on the “X” at the end of a 
# package’s row will uninstall that package.

# You can get help about a function or data in R with the function hep() or the 
# interrogation mark ? or ??, before the object or function names


help(lm)
help(iris)
?iris
??iris


# you can use the help() function to access a package’s help files. 
# Try help(package = "ggplot2") and you will see all of the many functions 
# that ggplot2 provides.


help(package = "ggplot2")


# Within the RStudio interface, you can access the help files through the 
# Packages tab.

# If you still have questions about what functions within a package are right 
# for you or how to use them, many packages include “vignettes.” These are 
# extended help files, that include an overview of the package and its functions, 
# but often they go the extra mile and include detailed examples of how to use 
# the functions in plain words that you can follow along with to see how to use 
# the package. To see the vignettes included in a package, you can use the 
# browseVignettes() function. For example,


browseVignettes("ggplot2")


# The command sessionInfo() lists your R version, operating system, and loaded packages.
# And the command "version" gives the R version information

sessionInfo()
version




#### R-Projects ####




# R Projects, a built in functionality of RStudio that helps to keep all your 
# related files together.
# When you make a Project, it creates a folder where all files will be kept, 
# which is helpful for organizing yourself and keeping multiple projects separate 
# from each other.

# When you re-open a project, RStudio remembers what files were open and will 
# restore the work environment as if you had never left - which is very helpful 
# when you are starting back up on a project after some time off! Functionally, 
# creating a Project in R will create a new folder and assign that as the working 
# directory so that all files generated will be assigned to the same directory.





#### R-Version Control ####




# Version control is a system that records changes that are made to a file or 
# a set of files over time. As you make edits, the version control system takes 
# snapshots of your files and the changes, and then saves those snapshots so you 
# can refer or revert back to previous versions later if need be.
# Version control systems, like Git, are like a more sophisticated “Track changes” 
# - in that they are far more powerful and are capable of meticulously tracking 
# successive changes on many files, with potentially many people working 
# simultaneously on the same groups of files.

# Without version control, you might be keeping multiple, very similar copies of 
# a file. Version control systems help to solve this problem by keeping a single, 
# updated version of each file, with a record of all previous versions AND a 
# record of exactly what changed between the versions.

# The next major benefit of version control: It keeps a record of all changes 
# made to the files. This can be of great help when you are collaborating with 
# many people on the same files - the version control software keeps track of who, 
# when, and why those specific changes were made. 
# It’s like “Track changes” to the extreme!

# Git is a free and open source version control system. It was developed in 2005 
# and has since become the most commonly used version control system around!

# One of the main benefits of Git is that it keeps a local copy of your work and 
# revisions, which you can then edit offline, and then once you return to internet 
# service, you can sync your copy of the work, with all of your new edits and 
# tracked changes to the main repository online.

# GitHub is an online interface for Git. Git is software used locally on your 
# computer to record changes. GitHub is a host for your files and the records of 
# the changes made. You can sort of think of it as being similar to DropBox.
# GitHub has the added benefit of interfacing with Git to keep track of all of 
# your file versions and changes.

# Concepts Frequently Used:

# Repository: Equivalent to the project’s folder/directory - all of your version 
# controlled files (and the recorded changes) are located in a repository. 
# Repositories are what are hosted on GitHub and through this interface you can 
# either keep your repositories private and share them.

# Commit: To commit is to save your edits and the changes made. Note -when you 
# commit a file, typically you accompany that file change with a little note 
# about what you changed and why. On GitHub, saved changes are called commits. 
# Each commit has an associated commit message, which is a description explaining 
# why a particular change was made. Commit messages capture the history of your 
# changes, so other contributors can understand what you’ve done and why.

# Push: Updating the repository with your edits. Since Git involves making 
# changes locally, you need to be able to share your changes with the common, 
# online repository. Pushing is sending those committed changes to that 
# repository, so now everybody has access to your edits.

# Pull: Updating your local version of the repository to the current version, 
# since others may have edited in the meanwhile. The files you have locally on 
# your computer may be outdated, so you pull to check if you are up to date with 
# the main repository.
# Pull Requests are the heart of collaboration on GitHub. When you open a pull 
# request, you’re proposing your changes and requesting that someone review and 
# pull in your contribution and merge them into their branch. Pull requests show 
# diffs, or differences, of the content from both branches. The changes, 
# additions, and subtractions are shown in green and red.

# Staging: The act of preparing a file for a commit.


# To summarize these commonly used terms so far and to test whether you’ve got 
# the hang of this, files are hosted in a REPOSITORY that is shared online with 
# collaborators. You PULL the repository’s contents so that you have a local 
# copy of the files that you can edit. Once you are happy with your changes to 
# a file, you STAGE the file and then COMMIT it. You PUSH this commit to the 
# shared repository. This uploads your new file and all of the changes and is 
# accompanied by a message explaining what changed, why and by whom.





#### GitHub and Git ####





# GitHub is a cloud-based management system for your version controlled files. 
# Like DropBox, your files are both locally on your computer and hosted online 
# and easily accessible.


# Git is the free and open source version control system which GitHub is built 
# on. One of the main benefits of using the Git system is its compatibility 
# with RStudio.


# We need to tell Git what your username and email are, so that it knows how 
# to name each commit as coming from you. To do so, in the command prompt type: 
# git config --global user.name "Jane Doe" with your desired username in place 
# of “Jane Doe.” This is the name each commit will be tagged with.


config --global user.name "Emmanuel Valdés Rodríguez"



# Following this, in the command prompt, type: 
# git config --global user.email janedoe@gmail.com 
# MAKING SURE TO USE THE SAME EMAIL ADDRESS YOU SIGNED UP FOR GITHUB WITH!


git config --global user.email emmvrdz@gmail.com


# confirm your changes by typing: 


git config --list


# If you notice any problems or want to change these values, just retype the 
# original config commands from earlier with your desired changes.
# Once you are satisfied that your username and email is correct, exit the 
# command line by typing exit and hit Enter.


exit




#### Linking Git/GitHub and RStudio ####




# In RStudio, go to Tools > Global Options > Git/SVN
# Confirm that git.exe resides in the directory that RStudio has specified; 
# if not, change the directory to the correct path. Otherwise, click Apply.
# RStudio and Git are now linked.

# In that same RStudio option window, click “Create RSA Key” and when this 
# completes, click “Close.”
# Following this, in that same window again, click “View public key” and 
# copy the string of numbers and letters. Close this window.

# You have now created a key that is specific to you which we will provide 
# to GitHub, so that it knows who you are when you commit a change from 
# within RStudio.
# To do so, go to github.com/, log-in if you are not already, and go to your 
# account settings. There, go to “SSH and GPG keys” and click “New SSH key”. 
# Paste in the public key you have copied from RStudio into the Key box and 
# give it a Title related to RStudio. Confirm the addition of the key with 
# your GitHub password.

# GitHub and RStudio are now linked. From here, we can create a repository 
# on GitHub and link to RStudio.

# On GitHub, create a new repository 
# (github.com > Your Profile > Repositories > New). Name your new repository 
# and give it a short description. Click Create repository. Copy the URL for 
# your new repository.

# In RStudio, go to File > New Project. Select Version Control. Select Git as 
# your version control software. Paste in the repository URL from before, 
# select the location where you would like the project stored. When done, 
# click on “Create Project”. Doing so will initialize a new project, linked 
# to the GitHub repository, and open a new session of RStudio.

# Create a new R script (File > New File > R Script)
# Save the file. Note that when you do so, the default location for the file 
# is within the new Project directory you created earlier.

# Once that is done, looking back at RStudio, in the Git tab of the environment 
# quadrant, you should see your file you just created! Click the checkbox under 
# “Staged” to stage your file.

# Click “Commit”. A new window should open, that lists all of the changed files 
# from earlier, and below that shows the differences in the staged files from 
# previous versions. In the upper quadrant, in the “Commit message” box, write 
# yourself a commit message. Click Commit.

# So far, you have created a file, saved it, staged it, and committed it. If you 
# remember your version control lecture, the next step is to push your changes 
# to your online repository. Push your changes to the GitHub repository.

# Go to your GitHub repository and see that the commit has been recorded.




#### Projects Under Version Control ####




#  what if you already have an R Project that you’ve been working on, but don’t 
# have it linked up to any version control software (tut tut!)?
#  Let’s fix that. First, let’s set it up to interact with Git. Open Git Bash or 
# Terminal and navigate to the directory containing your project files. Move 
# around directories by typing cd ~/dir/name/of/path/to/file


cd ~/dir/name/of/path/to/file


# When the command prompt in the line before the dollar sign says the correct 
# directory location of your project, you are in the correct location. Once here, 
# type git init followed by git add . - this initializes (init) this directory 
# as a git repository and adds all of the files in the directory (.) to your 
# local repository. Commit these changes to the git repository using 
# git commit -m "Initial commit"


git init
git add .
git commit -m "Initial commit"


# At this point, we have created an R Project and have now linked it to Git 
# version control. The next step is to link this with GitHub.
# To do this, go to GitHub.com, and again, create a new repository:
# 1) Make sure the name is the exact same as your R project;
# 2) Do NOT initialize a README file, .gitignore, or license.

# You should see that there is an option to “Push an existing repository from 
# the command line” with instructions below containing code on how to do so. 
# In Git Bash or Terminal, copy and paste these lines of code to link your 
# repository with GitHub. After doing so, refresh your GitHub page.

# When you re-open your project in RStudio, you should now have access to the 
# Git tab in the upper right quadrant and can push to GitHub from within 
# RStudio any future changes.

# If there is an existing project that others are working on that you are asked 
# to contribute to, you can link the existing project with your RStudio. It 
# follows the exact same premise as that from the last lesson where you 
# created a GitHub repository and then cloned it to your local computer using 
# RStudio. In brief, in RStudio, go to File > New Project > Version Control. 
# Select Git as your version control system, and like in the last lesson, 
# provide the URL to the repository that you are attempting to clone and select 
# a location on your computer to store the files locally. Create the project.

# The only difference from the last lesson is that you did not create the 
# original repository, instead you cloned somebody else’s.





#### R-Markdown ####




# R Markdown is a way of creating fully reproducible documents, in which both 
# text and code can be combined. Despite these documents all starting as plain 
# text, you can render them into HTML pages, or PDFs, or Word documents, or 
# slides! The symbols you use to signal, for example, bold or italics is 
# compatible with all of those formats.

# One of the main benefits is the reproducibility of using R Markdown. Since 
# you can easily combine text and code chunks in one document, you can easily 
# integrate introductions, hypotheses, your code that you are running, the 
# results of that code and your conclusions all in one document. Sharing what 
# you did, why you did it and how it turned out becomes so simple - and that 
# person you share it with can re-run your code and get the exact same answers 
# you got. That’s what we mean about reproducibility. But also, sometimes you 
# will be working on a project that takes many weeks to complete; you want to 
# be able to see what you did a long time ago (and perhaps be reminded exactly 
# why you were doing this) and you can see exactly what you ran AND the results 
# of that code - and R Markdown documents allow you to do that.

# Another major benefit to R Markdown is that since it is plain text, it works 
# very well with version control systems. It is easy to track what character 
# changes occur between commits; unlike other formats that aren’t plain text.

# Like everything in R, this extended functionality comes from an R package - 
# “rmarkdown.” All you need to do to install it is run:

install.packages("rmarkdown")

# To create an R Markdown document, in R Studio, go to 
# File > New File > R Markdown. 

# There are three main sections of an R Markdown document. 
# The first is the HEADER at the top, bounded by the three dashes. This is 
# where you can specify details like the title, your name, the date, and what 
# kind of document you want output. If you filled in the blanks in the window 
# earlier, these should be filled out for you. Also on this page, you can see 
# TEXT SECTIONS.

# And finally, you will see code chunks. These are bounded by the triple 
# backticks. These are pieces of R code (“chunks”) that you can run right from 
# within your document - and the output of this code will be included in the 
# PDF when you create it.

# The easiest way to see how each of these sections behave is to produce the PDF!

# When you are done with a document, in R Markdown, you are said to “knit” your 
# plain text and code into your final document. To do so, click on the “Knit” 
# button along the top of the source panel. When you do so, it will prompt you 
# to save the document as an RMD file.

# One of the huge benefits of R Markdown - rendering the results to code inline.

# What are some easy Markdown commands?
# To bold text, you surround it by two asterisks on either side. Similarly, to 
# italicise text, you surround the word with a single asterisk on either side. 
# **bold** and *italics* respectively.


# You can make section headers. To do this, you put a series of hash marks (#). 
# The number of hash marks determines what level of heading it is. One hash is 
# the highest level and will make the largest text, two hashes is the next 
# highest level and so on.

# Header level 1
## Header level 2
### Header level 3...

# To make an R code chunk, you can type the three backticks, followed by the 
# curly brackets surrounding a lower case R, put your code on a new line and 
# end the chunk with three more backticks. Thankfully, RStudio recognized you’d 
# be doing this a lot and there are short cuts, namely Ctrl+Alt+I (Windows) or 
# Cmd + Option + I (Mac). Additionally, along the top of the source quadrant, 
# there is the “Insert” button, that will also produce an empty code chunk.

# If you aren’t ready to knit your document yet, but want to see the output of 
# your code, select the line of code you want to run and use Ctrl+Enter or hit 
# the “Run” button along the top of your source window. The text “Hello world” 
# should be output in your console window. If you have multiple lines of code 
# in a chunk and you want to run them all in one go, you can run the entire 
# chunk by using Ctrl+Shift+Enter OR hitting the green arrow button on the 
# right side of the chunk OR going to the Run menu and selecting Run current 
# chunk.

# Lists are easily created by preceding each prospective bullet point by a 
# single dash, followed by a space. Importantly, at the end of each bullet’s 
# line, end with TWO spaces. This is a quirk of R Markdown that will cause 
# spacing problems if not included.





#### Types of Data Science Questions ####




# There are, broadly speaking, six categories in which data analyses fall. In 
# the approximate order of difficulty, they are: 1, Descriptive; 2. Exploratory
# 3. Inferential; 4. Predictive; 5. Causal; 6. Mechanistic

# 1, Descriptive Analysis

# The goal is to describe or summarize a set of data. Whenever you get a new 
# dataset to examine, this is usually the first kind of analysis you will 
# perform. Descriptive analysis will generate simple summaries about the 
# samples and their measurements. You may be familiar with common descriptive 
# statistics: measures of central tendency (eg: mean, median, mode) or 
# measures of variability (eg: range, standard deviations or variance).

# This type of analysis is aimed at summarizing your sample – not for 
# generalizing the results of the analysis to a larger population or trying 
# to make conclusions. Description of data is separated from making 
# interpretations; generalizations and interpretations require additional 
# statistical steps.



# 2. Exploratory Analysis

# The goal of exploratory analysis is to examine or explore the data and find 
# relationships that weren’t previously known. Exploratory analyses explore 
# how different measures might be related to each other but do not confirm 
# that relationship as causitive. “Correlation does not imply causation”

# rather than just summarizing the data points within a single variable, we 
# can look at how two or more variables might be related to each other. 
# All exploratory analysis can tell us is that a relationship exists, not 
# the cause.



# 3. Inferential analysis

# The goal of inferential analyses is to use a relatively small sample of data 
# to infer or say something about the population at large. Inferential 
# analysis is commonly the goal of statistical modelling, where you have a 
# small amount of information to extrapolate and generalize that information 
# to a larger group.

# Inferential analysis typically involves using the data you have to estimate 
# that value in the population and then give a measure of your uncertainty 
# about your estimate. Since you are moving from a small amount of data and 
# trying to generalize to a larger population, your ability to accurately 
# infer information about the larger population depends heavily on your 
# sampling scheme - if the data you collect is not from a representative 
# sample of the population, the generalizations you infer won’t be accurate 
# for the population.



# 4. Predictive analysis

# The goal of predictive analysis is to use current data to make predictions
# about future data. Essentially, you are using current and historical data
# to find patterns and predict the likehood of future outcomes.

# Like in inferential analysis, your accuracy in predictions is dependent on 
# measuring the right variables.  there are many ways to build up prediction 
# models with some being better or worse for specific cases, but in general, 
# having more data and a simple model generally performs well at predicting 
# future outcomes.



# 5. Causal analysis

# The goal of causal analysis is to see what happens to one variable when we 
# manipulate another variable - looking at the cause and effect of a 
# relationship.

#  Causal analysis is often considered the gold standard in data analysis, 
# and is seen frequently in scientific studies where scientists are trying 
# to identify the cause of a phenomenon, but often getting appropriate data 
# for doing a causal analysis is a challenge.

# One thing to note about causal analysis is that the data is usually 
# analysed in aggregate and observed relationships are usually average 
# effects; so, while on average giving a certain population a drug may 
# alleviate the symptoms of a disease, this causal relationship may not hold 
# true for every single affected individual.



# 6. Mechanistic analysis

# Mechanistic analysis are not as commonly used as the previous analysises.
# The goal of mechanistic analysis is to understand the EXACT CHANGES IN 
# VARIABLES that lead to EXACT CHANGES IN OTHER VARIABLES. These analyses 
# are exceedingly hard to use to infer much, except in simple situations or 
# in those that are nicely modeled by deterministic equations. Given this 
# description, it might be clear to see how mechanistic analyses are most 
# commonly applied to physical or engineering sciences; biological sciences, 
# for example, are far too noisy of data sets to use mechanistic analysis. 
# Often, when these analyses are applied, the only noise in the data is 
# measurement error, which can be accounted for.





#### Experimental Design ####




