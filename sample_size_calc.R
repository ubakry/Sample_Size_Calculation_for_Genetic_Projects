# Sample size calculation using RnaSeqSampleSize for miRNA profiling (Jul 19, 2023)
# Copyright 2023 Usama Bakry (u.bakry@icloud.com)

# Install packages
BiocManager::install("RnaSeqSampleSize")

# Load packages
library("RnaSeqSampleSize")

# Get docs
?RnaSeqSampleSize::sample_size
?RnaSeqSampleSize::est_power_curve #1:1 only

# A function to estimate the sample size for differential expression analysis of genes/miRNAs
sample_size(
  # Power to detect prognostic genes.
  power = 0.8,
  # Total number of genes/miRNAs for testing.
  m = 4800,
  # Expected number of prognostic genes/miRNAs.
  m1 = 55,
  # FDR level
  f = 0.01,
  # Ratio of sample size between two groups (Treatment/Control).
  k = 1,
  # Ratio of normalization factors between two groups.
  w = 1,
  # Minimum fold change
  rho = 2,
  # Average read counts for prognostic genes.
  lambda0 = 1000,
  #Dispersion for prognostic genes.
  phi0 = 0.5,
  showMessage = FALSE,
  storeProcess = FALSE
)


