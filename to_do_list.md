## Division of Labour
Three students on our Case Study.

**Goal 1:** Given a FASTA and GFF file of a newely sequenced and assembled genpme/reference genome, predict all possible non-B DNA features (Limiting the scope to G4 for the workshop) and watch their overlap on various genomic feeatures. (This workflow is planned to be in Snakemake, however can be changed to other Workflow management language ). The plan is to have a swiss knief for all non-B DNA studies with interface of something like samtools.
**Goal 2:** Using the workflow on Tenacibaculum species and interpret the significance of the results.
 
**Inputs:** A multi-FASTA file (mandatory), GTF/GFF (both if possible), 
**Variables:** The overlapping region cutoff, the length of the G-quads, overlapping/non-overlapping Gquad mode, and others based on the tools used

1. **Student 1:** Carry out the phylogenetic analysis using K-mer method and ANI method and make paper ready visualisations. Also make a Docker image to share for research reproducibility.
2. **Student 2:** Write functions/scripts in R to predict G-quadruplexes given a multifasta file (Only canonical G-quads for workshop). He will also write function to compute PG4 density which can be defined in two ways (No. of G4's per Kb) or (Bases contributing to PG4/Kb). 
3. **Student 3:** Write functions in R to compute the Percentage overlap of Gquads with Genome features using AGAT and Bedtools with a user provided inputs.

**Common Tasks:**  Making controls for the genome under study by simulating the genome and performing enrichment tests. Predicting the Promoter region using G4PromFinder, weave all the functions in form of snakemake workflow, make presentation on what was learn't and achieved.

