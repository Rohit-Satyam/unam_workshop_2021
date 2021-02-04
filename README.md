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

**Miscellaneous RNA:** MiscRNA is short for miscellaneous RNA, a general term for a series of miscellaneous small RNA (ncRNA). It serves a variety of functions, including some enzyme-like catalysis and processing RNA after it is formed. Besides, some of these small RNAs may serve as switches. [source1](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3226645/) and [source2](https://www.researchgate.net/post/What-is-misc-RNA). See ENSEMBL page too [here](https://m.ensembl.org/info/genome/genebuild/ncrna.html)

# Installing Ki-S in docker image

The general docker commands can be found [here](https://medium.com/@rohitsatyam/step-by-step-guide-to-using-docker-3f953a9127b4)

Steps to creater a docker Image and make it importable:
1. Make a dockerfile that will specify all the dependencies you require for your tool to run. Make sure that the directory you are building image conatins only a singlefile containing `Dockerfile` file.
2. Once you define all the dependencies in a file, you can build it using `docker build -f ./Dockerfile -t ki-s.` command where `-f` flag is use to specify the location of Dockerfile (optional if you are already in the same directory where Dockerfile resides) and `-t` flag let's you tag your image with a name. This will check if all the dependencies are available for the OS you have asked for/ for the tool and will intall them your you.
*NOTE:* If you again type the `docker build .` command, you will see that this time, the image do not take much time to build. This is because the build process knew the Dockerfile didn’t change, so it used the cache from the last build. If a line had changed, it would have rebuilt the layers from that line onwards. The Docker build process also checks for changes in files added with the `ADD` or `COPY` instructions such as let's say had there been changes made in `script.sh` script, the layers for steps where the script has been mentioned would have underwent rebuilt. This optimization allows us to save time when creating our image, as we’ll probably build and run it many times. But there are times where the cache prevents the image from being updated.[Source](https://www.baeldung.com/linux/docker-build-cache).
3. Once building image ends without an error, you can view it using docker images
