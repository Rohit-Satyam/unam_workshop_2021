##loading Libraries
suppressMessages(library(Biostrings))		##For reading multifasta files
library(pqsfinder)							## For pg4 prediction

##Writing a funcion for pg4 prediction
pg4 <- function(f_name) {				#f_name is file name
  dna <- readDNAStringSet(f_name)
  x <- length(names(dna))				#measuring the number of scaffold in a sample to run pqsfinder in loop
  i <- 1
  while (i <= x){		
    pqs <-pqsfinder(dna[[i]], max_defects = 0, min_score = 20, run_max_len = 15)		#for G3L1-15
    csv <- as(pqs, "GRanges")			#saving the results in Granges form. Ignore the chromosome column of the output
    pqs_status <- length(pqs)
    if(pqs_status > 0){
      csv$name <- names(dna[i])
    }
    #Writing the csv and ensuring for a sample genome output of all the contigs/scaffolds are appended in same file
    name <- tools::file_path_sans_ext(basename(f_name))
    final<- paste(name,".csv")
    write.table(csv, file = final, sep = ",", row.names = FALSE, col.names = FALSE,
                quote = FALSE, append = TRUE)
    i = i+1
    
  }
}

#Running over 1520 .fna files
list.files(path = ".", pattern = "*fna")-> list_of_files
for (files in list_of_files){pg4(files)}
