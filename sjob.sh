#!/bin/bash
#SBATCH --job-name="Abyss 112 thread"
#SBATCH --nodes=1
#SBATCH --time=168:00:00
#SBATCH -p standard
#SBATCH --ntasks-per-node=1
#SBATCH --mem=500GB
##SBATCH --cpus-per-task=112

### Define paths
PARTITION="scratch"
WORK_DIR="~/pl0217-01/${PARTITION}/4_MHryc"
export CONTAINERS="~/pl0217-01/project_data/4_MHryc/containers"

############




### Load modules
module load abyss

############

### Computation script
srun abyss-pe j=$SLURM_CPUS_PER_TASK
