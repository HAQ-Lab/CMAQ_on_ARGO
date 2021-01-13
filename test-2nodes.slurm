#!/bin/bash
#SBATCH --job-name=jCMAQ-5.3.2-bench
# SBATCH --workdir=
#SBATCH --output=jCMAQ-5.3.2-benc-%N-%j.out
#SBATCH --error=jCMAQ-5.3.2-benc-%N-%j.err
# SBATCH --mail-user=USER@gmu.edu
# SBATCH --mail-type=BEGIN,FAIL,TIME_LIMIT_80
#SBATCH --partition=all-HiPri
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=24
#SBATCH --mem-per-cpu=2048

#module load gcc/8.3.1
#module load openmpi/3.1.3
module load use.own
module load cmaq/gcc-mpich/5.3.2

module list

#export CMAQ_HOME=/mnt/beegfs/home/mrasel/local-cmaq-run/CMAQ_HOME
#export CMAQ_DATA=${CMAQ_HOME}/data

#cd $SLURM_SUBMIT_DIR
#export compiler=gcc
#export compilerVrsn=8.3.1

#/projects/HAQ_LAB/mrasel/cmaq/Build_CMAQ/CMAQ_Project/CCTM/scripts/run_cctm_Bench_2016_12SE1.csh
#/projects/HAQ_LAB/mrasel/cmaq/Build_CMAQ/CMAQ_Project/CCTM/scripts/srun_cctm_Bench_2016_12SE1.csh
/projects/HAQ_LAB/mrasel/cmaq/Build_CMAQ/CMAQ_Project/CCTM/scripts/srun_cctm_Bench_2016_12SE1-2nodes.csh
