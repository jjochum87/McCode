#!/bin/sh
### General options
### –- specify queue --
#BSUB -q hpc
### -- set the job Name --
#BSUB -J McStas_test_job
### -- ask for number of cores (default: 1) --
#BSUB -n 1
### -- set walltime limit: hh:mm --  maximum 24 hours for GPU-queues right now
#BSUB -W 2:00
# request 5GB of system-memory
#BSUB -R "rusage[mem=5GB]"
### -- set the email address --
# please uncomment the following line and put in your e-mail address,
# if you want to receive e-mail notifications on a non-default address
#BSUB -u pkwi@fysik.dtu.dk
### -- send notification at start --
#BSUB -B
### -- send notification at completion--
#BSUB -N
### -- Specify the output and error file. %J is the job-id --
### -- -o and -e mean append, -oo and -eo mean overwrite --
#BSUB -o gpu-%J.out
#BSUB -e gpu_%J.err
# -- end of LSF options --

DATE=`date +%F`
mkdir -p $HOME/TESTS/
mkdir -p $HOME/TESTS/${DATE}

cd $HOME/TESTS/${DATE}

$HOME/McCode/tools/Python/mctest/mctest.py --ncount=1e6 --configs --mccoderoot $HOME/McStas/mcstas --verbose --testdir $HOME/TESTS/${DATE} --config=McStas_CPU_GCC_KISS

cd $HOME

echo done on single-CPU / KISS, submitting next job
$HOME/go4.sh
