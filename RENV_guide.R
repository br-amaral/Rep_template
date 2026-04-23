#! =======================================================
#!                    RENV QUICK GUIDE
#! =======================================================
#
#? FIRST TIME (new machine / fresh clone) OF EXISTING PROJECT
#  ---------------------------------------
#  ( ) Clone repo and open project
#  ( ) renv::restore()          # installs all packages from lockfile
#
#? STARTING A BRAND NEW PROJECT
#  ---------------------------------------
#  ( ) renv::init(settings = list(snapshot.type = "implicit"))   # initialize renv with only packages in 'library()' in scripts
#  ( ) renv::init()             # initialize renv with ALL MY PACKAGES
#  ( ) renv::snapshot()         # save current packages to lockfile
#  ( ) git add renv.lock && git commit -m "init renv"
#
#? DAILY WORKFLOW
#  ---------------------------------------
#  ( ) renv::status()           # check if library is in sync
#
#? INSTALLED OR UPDATED A PACKAGE?
#  ---------------------------------------
#  ( ) renv::install("pkg")     # install new package
#  ( ) renv::update("pkg")      # or update existing
#  ( ) renv::snapshot()         # save changes to lockfile
#  ( ) git add renv.lock && git commit -m "update renv: add pkg"
#
#? PULLED CHANGES FROM GIT / COLLABORATOR UPDATED LOCKFILE?
#  ---------------------------------------
#  ( ) renv::restore()          # sync your library to lockfile
#
#  =======================================================