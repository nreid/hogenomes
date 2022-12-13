#!/bin/bash
#SBATCH --job-name=symlink_illumina
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 2
#SBATCH --mem=10G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mail-user=your.email@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

# illumina data currently stored here: /core/cbc/CGI_data/CBC_Data/GRisatti_Warthog_ILMN_Sept2021/
    # three samples
        # 2 red river hog: RR1/RR2
        # 2 warthog: WWH2

# files/directories

INDIR=/core/cbc/CGI_data/CBC_Data/GRisatti_Warthog_ILMN_Sept2021

OUTDIR=../../data/illumina
    mkdir -p ${OUTDIR}

for FILE in $(find ${INDIR} -name "*L00*fastq*")
do OUTFILE=${OUTDIR}/$(echo ${FILE} | sed 's,.*/,,')
ln -s ${FILE} ${OUTFILE}
done