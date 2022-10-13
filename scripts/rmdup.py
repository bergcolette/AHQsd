import pandas as pd
import glob

flist = glob.glob("AHQsd*/*.txt")
print(flist)
dfMaster = pd.read_csv("~/sequenceData3.2020/3762/raw/PCF2_1.1/PCF2_1.1_barcodes.txt", sep="\t", names=['barcode', 'ind'], index_col=False)

for i in flist:
	df = pd.read_csv(i, sep = '\t', names = ['barcode', 'ind'], index_col=False)
	if dfMaster["barcode"].equals(df["barcode"]):
		pass
	else: 
		print(dfMaster['barcode'] == df['barcode'])
		print(i, "broken as hell")
