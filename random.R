## Sample script. Not meant for analysis in this workshop
## Shared to show how the arguments can be passed from commandline to an Rscript

suppressMessages(library(gkmSVM))
suppressMessages(library(GenomicRanges))
suppressMessages(library(BSgenome.Hsapiens.UCSC.hg19))
suppressMessages(library(GenomicFeatures))
suppressMessages(library(GenomeInfoDbData))
suppressMessages(library(BSgenome.Hsapiens.UCSC.hg19.masked))

main <- function() {
        args <- commandArgs(trailingOnly = TRUE)
        filename <- args[1]
	name <- tools::file_path_sans_ext(basename(filename))
	negSet.bed <- paste(name,"_negSet.bed", sep = "")
	posSet.fa <- paste(name,"_posSet.fa", sep = "")
	negSet.fa <- paste(name,"_negSet.fa", sep = "")
	genNullSeqs(inputBedFN = filename, genomeVersion = 'hg19', outputBedFN = negSet.bed, outputPosFastaFN = posSet.fa, outputNegFastaFN = negSet.fa)
}

main()
