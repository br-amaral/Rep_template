
module purge

module load GCC/8.3.0 OpenMPI/3.1.4 R/4.0.2

R --vanilla

install.packages("https://cran.r-project.org/src/contrib/lifecycle_1.0.3.tar.gz", repo=NULL, type="source", lib = "~/R")

install.packages("stringr", lib = "~/R")

q()
