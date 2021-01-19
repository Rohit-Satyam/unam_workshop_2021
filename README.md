# unam_workshop_2021

Subsetting the GTFs using the AGAT tool

```bash
## Subsetting a feature

agat_sp_extract_attributes.pl -gff ./Tenacibaculum_maritimum_ncimb_2154_gca_900119795.MARIT_PRJEB17743.49.gff3  -att ID -p mRNA -o temp3

## subsetting the gff3 file
https://stackoverflow.com/questions/56211845/how-to-select-a-subset-of-file-based-on-ids-in-other-file

xargs -I{} -P4 grep -F {} Tenacibaculum_maritimum_ncimb_2154_gca_900119795.MARIT_PRJEB17743.49.gff3 < temp2_ID

```
**Note**

**Miscellaneous RNA:** MiscRNA is short for miscellaneous RNA, a general term for a series of miscellaneous small RNA. It serves a variety of functions, including some enzyme-like catalysis and processing RNA after it is formed. Besides, some of these small RNAs may serve as switches. [source1](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3226645/) and [source2](https://www.researchgate.net/post/What-is-misc-RNA)
