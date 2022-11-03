
data_genotypes_T = pd.read_csv("AHQsd_T_is_ref.012", sep="\t", index_col=False, header=None).iloc[:, 1:]
data_indv = pd.read_csv("AHQsd_T_is_ref.012.indv", sep="\t", index_col=False, header=None)
data_sites_T = pd.read_csv("AHQsd_T_is_ref.012.pos", sep="\t", index_col=False, header=None)

tmpDF_T = pd.DataFrame(columns=['scaffold','chr'])
tmpDF_T[['scaffold','chr']] = data_sites_T[0].str.split('_', expand=True)

data_sites_T['chr'] = tmpDF_T['chr']
data_sites_T['site'] = data_sites_T[0].astype(str) + ['_'] + data_sites_T[1].astype(str)

data_genotypes_T.columns = data_sites_T['site']
data_genotypes_T.insert(0, 'indv', data_indv[0])

data_genotypes_T.to_csv("AHQsd_T_is_ref.csv")
