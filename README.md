# Apocrita

## Setup

```
mkdir ~/bin
ln -s /data/SBBS-BuschLab/checkouts/Apocrita/dotfiles/bashrc ~/.bashrc
ln -s /data/SBBS-BuschLab/checkouts/Apocrita/dotfiles/profile ~/.profile
ln -s /data/SBBS-BuschLab/checkouts/Apocrita/dotfiles/environ ~/.environ
ln -s /data/SBBS-BuschLab/checkouts/Apocrita/dotfiles/aliases ~/.aliases
ln -s /data/SBBS-BuschLab/checkouts/Apocrita/dotfiles/functions ~/.functions
ln -s /data/SBBS-BuschLab/checkouts/Apocrita/dotfiles/bash_logout ~/.bash_logout
chgrp SBBS-BuschLab /data/scratch/$USER
chmod g+r /data/scratch/$USER
exit
```

## Installing Snakemake

```
mkdir -p /data/SBBS-BuschLab/python/Snakemake-7.3.1
module load python/3.8.5
pip install --prefix=/data/SBBS-BuschLab/python/Snakemake-7.3.1 snakemake==7.3.1
```

## Useful Info

From https://docs.hpc.qmul.ac.uk/

- ~350 nodes & ~12,500 cores

Disk:
- All costed research gets 1 TB storage plus 1 TB scratch
- Additional storage at £150 per TB per year
- Home directory: 60 GB, backed up nightly
- Scratch: 3 TB, automatically deleted 35 days after modification (email after 31 days)
- Nightly snapshots are in hidden .snapshots directories
- Kept for 7 days (or 3 days for scratch)
- View snapshots with `mmlssnapshot home` and `mmlssnapshot gpfsScratch`
- Backups are kept for 3 months

Univa Grid Engine:
- `qsub` - submit job
- `qstat` - status of jobs, e.g. `qstat`, `qstat -r`, `qstat -j <jobid>`
- `qdel` - delete job or tasks, e.g. `qdel <jobid> -t 20-60`
- `qlogin` - interactive job in short queue (i.e. 1 hour)
- `qalter` - alter job, e.g. `qalter -tc 10 <jobid>`
- `qacct` - stats for an individual job

Scripts:
- `nodestatus` - show current node usage in terms of cores and memory
- `showqueue` - show waiting jobs
- `jobstats` - personal job history
- `get_job_ram_usage`
- `qmquota` - disk quota

Example job script:
```
#!/bin/bash
#$ -cwd           # Set the working directory for the job to the current directory
#$ -pe smp 1      # Request 1 core
#$ -l h_rt=1:0:0  # Request 1 hour runtime
#$ -l h_vmem=1G   # Request 1GB RAM
./code
```

Example array job script:
```
#!/bin/bash
#$ -cwd
#$ -pe smp 1
#$ -l h_rt=1:0:0
#$ -l h_vmem=1G
#$ -t 1-10        # 10 tasks
#$ -tc 2          # Max 2 concurrent tasks (default is 100)
./code ${SGE_TASK_ID}
```

Running specific tasks from an array job:
- `qsub -t 5 job.sh`
- `qsub -t 10-20 job.sh`

Memory requests are per core:
```
# 1 GB allocated:
#$ -pe smp 1
#$ -l h_vmem=1G
```
```
# 2 GB allocated:
#$ -pe smp 2
#$ -l h_vmem=1G
```

For jobs requiring large RAM:
```
#$ -l highmem
```

Job runtime:
- Number of cores and RAM impacts queueing time, but maximum runtime has low impact
- So either specify 1 hour (for high priority short queue) or 240 hours (max runtime)

Do not specify queue or project when submitting jobs

Stats:
- https://stats.hpc.qmul.ac.uk/
- https://stats.hpc.qmul.ac.uk/univastats/www/jobdetail.php

Verifying a job:
- `qsub -w v job.sh`
- `qalter -w v <jobid>`
