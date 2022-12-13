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

# ONT data currently stored here: /core/projects/EBP/CBC/HogGenomes/01_rawdata/ONT/

    # two samples
        # RR2: 
            # not great run: /core/projects/EBP/CBC/HogGenomes/01_rawdata/ONT/old_ONT_Sept2021/2021SEP07_Risatti/2021SEP07_Risatti_RR2_PAH26110/20210907_1508_3C_PAH26110_9897dc97/
            # much better run: /core/projects/EBP/CBC/HogGenomes/01_rawdata/ONT/2022APR19_Risatti_RRH_6mnrcspln_PAK51732/2022APR19_Risatti_RRH_6mnrcspln_PAK51732/20220419_1520_3H_PAK51732_094d9dd8/
        # WH2
            # /core/projects/EBP/CBC/HogGenomes/01_rawdata/ONT/old_ONT_Sept2021/2021SEP07_Risatti/2021SEP07_Risatti_WH2_PAH26157/20210907_1508_3D_PAH26157_4fc881c7/

# files/directories

OUTDIR=../../data/ONT
    mkdir -p ${OUTDIR}

RR2BAD=/core/projects/EBP/CBC/HogGenomes/01_rawdata/ONT/old_ONT_Sept2021/2021SEP07_Risatti/2021SEP07_Risatti_RR2_PAH26110/20210907_1508_3C_PAH26110_9897dc97/
RR2GOOD=/core/projects/EBP/CBC/HogGenomes/01_rawdata/ONT/2022APR19_Risatti_RRH_6mnrcspln_PAK51732/2022APR19_Risatti_RRH_6mnrcspln_PAK51732/20220419_1520_3H_PAK51732_094d9dd8/
WH2=/core/projects/EBP/CBC/HogGenomes/01_rawdata/ONT/old_ONT_Sept2021/2021SEP07_Risatti/2021SEP07_Risatti_WH2_PAH26157/20210907_1508_3D_PAH26157_4fc881c7/

ln -s ${RR2BAD} ${OUTDIR}/RR2BAD
ln -s ${RR2GOOD} ${OUTDIR}/RR2GOOD
ln -s ${WH2} ${OUTDIR}/WH2