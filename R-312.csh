#!/bin/csh

# file to set up csh/tcsh shell environment
# to use R
#
#R_LIBS=/gpfs_common/share02/heber/efarhan
set Rbin=/usr/local/apps/R/em64t/R-3.1.2/bin
set mark=/usr/local/apps/mark
set gdal=/usr/local/apps/gdal/gcc483-2.1.1/bin
set path = ($Rbin $mark $gdal $path)
source /usr/local/apps/java/java18.csh

if !($?MANPATH) then
    setenv MANPATH /usr/local/apps/R/em64t/R-3.1.2/share/man:`man -w`
else
    setenv MANPATH /usr/local/apps/R/em64t/R-3.1.2/share/man:$MANPATH
endif

if !($?LD_LIBRARY_PATH) then
    setenv LD_LIBRARY_PATH /usr/local/apps/jags/4.2.0/lib:/usr/local/apps/R/em64t/R-3.1.2/lib64/R/lib:/usr/local/apps/gdal/gcc483-2.1.1/lib:/usr/local/apps/proj/gcc483-4.8.0/lib:/usr/local/apps/openssl/gcc483-1.0.0r/lib
else
    setenv LD_LIBRARY_PATH /usr/local/apps/jags/4.2.0/lib:/usr/local/apps/R/em64t/R-3.1.2/lib64/R/lib:/usr/local/apps/gdal/gcc483-2.1.1/lib:/usr/local/apps/proj/gcc483-4.8.0/lib:/usr/local/apps/openssl/gcc483-1.0.0r/lib:$LD_LIBRARY_PATH
endif

if !($?C_INCLUDE_PATH) then
    setenv C_INCLUDE_PATH /usr/local/apps/proj/gcc483-4.8.0/include
else
    setenv C_INCLUDE_PATH /usr/local/apps/proj/gcc483-4.8.0/include:$C_INCLUDE_PATH
endif
