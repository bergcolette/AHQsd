import pandas as pd 
import numpy as np 
from pandas.api.types import is_string_dtype
from pandas.api.types import is_numeric_dtype

dataDir="/home/colette_berg/YNP/AHQsd_2021_stacks/"
genotypes="AHQsd_forPhasing_thinned.012"

# read in the data -- genotypes, sites, and individuals. 

## there's one dataframe with T & N and another with the rest of the individuals.
NT_data = pd.read_csv(dataDir + "NT_forPhasing.012", sep="\t", index_col=False, header=None).iloc[:, 1:]
NT_indv = pd.read_csv(dataDir + "NT_forPhasing.012.indv", sep="\t", index_col=False, header=None)

data_genotypes = pd.read_csv(dataDir + genotypes, sep="\t", index_col=False, header=None).iloc[:, 1:]
data_indv = pd.read_csv(dataDir + genotypes + ".indv", sep="\t", index_col=False, header=None)
data_sites = pd.read_csv(dataDir + genotypes + ".pos", sep="\t", index_col=False, header=None)

# format the names of the sites
tmpDF = pd.DataFrame(columns=['scaffold','chr'])
tmpDF[['scaffold','chr']] = data_sites[0].str.split('_', expand=True)

data_sites['chr'] = tmpDF['chr']
data_sites['site'] = data_sites[0].astype(str) + ['_'] + data_sites[1].astype(str)

# paste NT data and AHQsd data together
AHQsd_and_NT = pd.concat([NT_data, data_genotypes])

all_indv = pd.concat([NT_indv, data_indv])

# add columns and row names 
AHQsd_and_NT.columns = data_sites['site']
AHQsd_and_NT.insert(0, 'indv', all_indv[0])

# transpose for filtering fun
genotypes_transposed = AHQsd_and_NT.set_index('indv').T

# replace -1 with NaN
genotypes_transposed = genotypes_transposed.replace(-1, np.NaN)

genotypes_transposed.reset_index(inplace=True)

# get rid of any sites where T and N are hets
genotypes_transposed = genotypes_transposed[genotypes_transposed['AHQNT1.6_8'] != 1]
genotypes_transposed = genotypes_transposed[genotypes_transposed['AHQT1'] != 1]

# make a T and an N dataframte
T_is_ref = genotypes_transposed[genotypes_transposed['AHQNT1.6_8'] == 0]
N_is_ref = genotypes_transposed[genotypes_transposed['AHQT1'] == 0]

## replace the genotypes for N
N_is_ref = N_is_ref.replace(0.0, "N")
N_is_ref = N_is_ref.replace(1.0, "NT")
N_is_ref = N_is_ref.replace(2.0, "T")

## replace the genotypes for T
T_is_ref = T_is_ref.replace(0.0, "T")
T_is_ref = T_is_ref.replace(1.0, "NT")
T_is_ref = T_is_ref.replace(2.0, "N")

phased_sites = pd.concat([N_is_ref, T_is_ref])

phased_sites.to_csv("AHQsd_phased.csv")