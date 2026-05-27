library(Biostrings)
library(BSgenome.Scerevisiae.UCSC.sacCer3)
library(GenomicRanges)
library(IRanges)
library(AnnotationHub)

############### part -1: BIOSRTINGS ################
dna <- DNAString("ATGCATCGCGAGTCC")
dna 

# DNAStringSet : multiple sequence
dna_set <- DNAStringSet(c("ATGC","GTGC", "TTTT","GGGG"))
dna_set

# Basic Operation
reverse(dna)
complement(dna)
reverseComplement(dna)

# translate DNA to Protein
translate(dna)

######## part 2 - BSGENOME : working with a full yeast genome
yeast <- BSgenome.Scerevisiae.UCSC.sacCer3
yeast

#  explore genome structure
seqnames(yeast)
seqlengths(yeast)

# extract chromosome sequence
chrI <- yeast$chrI
chrI
subseq(chrI,1,50) # first 50 bases

###### part 3 -  Pattern matching (finging DNA motifs) ######
pattern <- DNAString("ACGTAACGT")

# count matches
countPattern(pattern, chrI)

# find locations
matchPattern(pattern, chrI)

##### part 4 - IRanges & GenomicRanges (Coordinates on a genome) #####

# IRanges basics
IRanges(start = c(10,50,100),width = 25)

# GRanges basics
GRanges(
    seqnames = c("chrI","chrI"),
    ranges = IRanges(start = c(100,500), width = 50),
    strand = c("+","-")
)

### part 5 - Promoter GC content
# load yeast gene annotation using AnnotationHUB
ah <- AnnotationHub()
query(ah,"sacCer3") # search for yeast genome annotations

# load the yeast gene database
txdb <- ah[["AH52272"]]
genes <- genes(txdb)

# extract promoter regions
promoters <- promoters(genes, upstream = 2000, downstream = 0)
promoters <- trim(promoters)
promoters

# compute GC content
promoter_seqs <- getSeq(BSgenome.Scerevisiae.UCSC.sacCer3, promoters)
gc_content <- letterFrequency(promoter_seqs, "GC", as.prob = TRUE)

# viewing the GC content across all promoters
summary(gc_content)

##### part 6 - Coverage & Rle (read Depth) ######
reads <- GRanges(
    seqnames = "chrI",
    ranges = IRanges(start = c(1,5,10),width = 5)
    )
cov <- coverage(reads)
cov

sessionInfo()
