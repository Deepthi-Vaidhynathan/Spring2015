#!/bin/bash
#PBS -l walltime=24:00:00             # WALLTIME
#PBS -l nodes=1:ppn=32                 # Number of nodes and processes per node
#PBS -lfeature=su06
#PBS -N appln-of
#PBS -A hpc-apps

module purge
impi-intel/4.1.3-14.0.2
module unload epel

export MPI_ROOT=$I_MPI_ROOT/mic

export MAKEFLAGS='-j 32'

cd /home/dvaidhyn/Openfoam-mic/of-xp/OpenFOAM-2.3.1
 source etc/bashrc

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/dvaidhyn/Openfoam-mic/of-xp/OpenFOAM-2.3.1/platforms/linux64IccDPDebug/lib

cd applications

./Allwamke >& applicationsbuild.txt 



