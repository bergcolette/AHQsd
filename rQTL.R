# following an rQTL mapping tutorial

library(qtl)
library(dplyr)
library(ggplot2)
library(reshape2)
library(tidyr)
library(tibble)


# reading in the data
AHQsd_cross <- read.cross("csv", "~/Dropbox", "AHQsd_genotypes.csv",
                       genotypes=c("T","NT","N"), alleles=c("T","N"))

# summarise
summary(AHQsd_cross)

# plot 
plot(AHQsd_cross)

# plot missing in order of phenotype 
plotMissing(AHQsd_cross, reorder=TRUE)

# remove markers with no genotype data 
AHQsd_cross <- drop.nullmarkers(AHQsd_cross)

# estimate recombination fractions between all pairs of markers, and plot them
# this also calculates LOD scores. this will take a while
AHQsd_cross <- est.rf(AHQsd_cross)

# plot the result
plotRF(AHQsd_cross)

# re-estimate the genetic map
newmap <- est.map(AHQsd_cross, error.prob=.01)





write.csv(as.data.frame(rf), "rf.csv")
write.csv(as.data.frame(lod), "lod.csv")


map_prob <- calc.genoprob(mapthis1, step=1, error.prob=0.01)
out.mr <- scanone(mapthis1, pheno.col = 1)# , model='binary', method="mr")# , method="mr", pheno.col = 1)

#summary(map_scan)
plot(out.mr)

summary(out.mr)
plot(multi)


## load in the data -- (".extension", "~/path", "file_name")
dat <- read.cross("csv", "~/Documents/UMontana/Research/YNP/AHQsd", "filt_rQTL.csv")
dat_jitter <- jittermap(dat, amount=1e-6)
multi_filled <- fill.geno(dat)
multi <- scanone(dat, model='binary', 
                 pheno.col = 1)

plot(multi)
warnings()
class(multi)
write.csv(multi, "AHQsd_LOD.csv")

ggplot(out.mr, aes(x=pos, y=lod)) + geom_line() + 
  theme_bw() + 
  theme(panel.grid.major = element_blank(),
        panel.border = element_blank(),
        panel.grid.minor = element_blank(), 
        axis.line = element_line(colour = "black"), 
        strip.placement="outside",
        strip.background = element_blank(),
        panel.spacing = unit(.1, "lines"),
        axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),
        legend.position= c(0.9, 0.8),
        legend.text=element_text(size=12),
        legend.title=element_text(size=12)) + facet_grid(cols=vars(chr),
                                                           scales='free',
                                                           space="free",
                                                           switch="both") +
  theme(text = element_text(size=20))


rf1s<- pull.rf(mapthis1, chr=6)
lod1s <- pull.rf(mapthis1, what="lod", chr=6) 

rffs<- melt(rf1s)

lodds<- melt(lod1s)

ggplot(lodds, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile() + scale_fill_gradient(low="purple",high="yellow") + 
  theme(axis.text=element_text(size=1, color="black"))

## compare lepMap, joinMap, and physical order

joinMap <- read.cross("csv", "~", "chr6_fromJoinMap.csv", estimate.map=FALSE)
physMap <- read.cross("csv", "~", "chr6_physOrder.csv", estimate.map=FALSE)
physMapTrim <- read.cross("csv", "~", "chr6_physMap_trim.csv", estimate.map=FALSE)
lepMap <- read.cross("csv", "~", "PCF2_12.28_trimmedchr6.csv", estimate.map=FALSE)

compare_Maps <- read.cross("csv", "~", "compare_maps.csv", estimate.map=FALSE)
plotMap(compare_Maps)
plotRF(compare_Maps)

compPos <- read.csv("compareMaps.csv")

head(compPos)

ggplot(compPos, aes(y=phys_pos, x=pos, col=lg)) + facet_wrap(~map) + geom_point()

gPar <- read.cross("csv", "~", "GrandParPhase.csv", estimate.map=FALSE)
plotMap(gPar)
plotRF(gPar)

rf1s<- pull.rf(gPar)
lod1s <- pull.rf(gPar, what="lod")

rffs<- melt(rf1s)
lodds<- melt(lod1s)

ggplot(rffs, aes(x=Var1, y=Var2, fill=value)) + 
  geom_tile() + scale_fill_gradient(low="purple", high="yellow") + 
  theme(axis.text=element_text(size=1, color="black"))


plotMap(joinMap)
plotMap(physMap)
plotMap(physMapTrim)
plotMap(lepMap)
plotMap(gPar)


compAll <- read.csv("compareMaps_allLoci.csv")
ggplot(compAll, aes(x=map, y=pos)) + geom_point() + geom_text(geom_text(label=posName))







