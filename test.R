if (!require("renv")) {
  # Install renv if it is not already installed
  install.packages("renv")
}
library("renv")

renv::init(force = TRUE)
renv.lock
renv::restore()
renv::snapshot()
renv::status()

# Check if renv is already initialized
if (!file.exists("renv.lock")) {
  # Initialize renv project
  renv::init()
  
  # Restore packages
  renv::restore()
}
#install.packages("reticulate")
#install.packages("tidyverse")
library(reticulate)
library(tidyverse)

reticulate::install_miniconda()
reticulate::conda_create()
reticulate::use_condaenv()

# assign the right virtual environment for the exercises
env_name <- "MLBA"

# if the virtual enviroment does not already exist, only then create then
if (!env_name %in% reticulate::conda_list()$name) {
  reticulate::conda_create(env_name, pip = TRUE) # we use pip for installations
}
# make sure we're using the right environment
reticulate::use_condaenv(env_name)

# if you preferred, you can also use your own version of python with `use_python()`
# you can see all the versions of your path here and which one has been assigned
reticulate::py_config()

# Check if python is setup properly now
reticulate::py_available()















