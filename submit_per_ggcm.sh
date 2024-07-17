#!/bin/bash

# Define an array of model names
modelnames=("ACEA" "CROVER" "CYGMA1p74" "Daycent" "EPIC-IIASA" "DSSAT-Pythia" "ISAM" "LNDNC" "LPJ-GUESS" "LPJmL" "PEPIC" "pDSSAT" "PROMET" "SIMPLACE-LINTUL5")

# Loop over the model names
for modelname in "${modelnames[@]}"
do
  # Replace the model name in the submit.jcf file
  sed -e "s/ggcm/$modelname/g" submit.jcf > submit2.jcf
  # Submit the job
  sbatch submit2.jcf
done