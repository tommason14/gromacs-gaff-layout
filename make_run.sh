#!/bin/sh
module load gromacs/5.1.4
# minimisation
gmx_mpi grompp -f em/em.mdp -c pack/pack.pdb -p pack/polymer.top -o em/em.tpr
# npt
gmx_mpi grompp -f npt/npt.mdp -c em/em.gro -p pack/polymer.top -o npt/npt.tpr
# nvt
gmx_mpi grompp -f nvt/nvt.mdp -c npt/npt.gro -p pack/polymer.top -o nvt/nvt.tpr
