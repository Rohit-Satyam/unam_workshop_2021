# unam_workshop_2021

Subsetting the GTFs using the AGAT tool

```bash
## Subsetting a feature

agat_sp_extract_attributes.pl -gff ./Tenacibaculum_maritimum_ncimb_2154_gca_900119795.MARIT_PRJEB17743.49.gff3  -att ID -p mRNA -o temp3

## subsetting the gff3 file
https://stackoverflow.com/questions/56211845/how-to-select-a-subset-of-file-based-on-ids-in-other-file

xargs -I{} -P4 grep -F {} Tenacibaculum_maritimum_ncimb_2154_gca_900119795.MARIT_PRJEB17743.49.gff3 < temp2_ID

```
