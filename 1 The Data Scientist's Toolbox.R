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

# the next major benefit of version control: It keeps a record of all changes 
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




