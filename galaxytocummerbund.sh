#!/bin/bash



#If you have downloaded the files directly with the "Galaxy" phrase in front of it uncomment this and comment the other one
#for f in *.tabular; do mv $f ${f#Galaxy1**-\[Cuffdiff_on_data_***,_data_**,_and_data_***__}%\]; done
#If you have downloaded the files from export history, uncomment this and comment the other one

#for f in *.tabular; do mv $f ${f#Cuffdiff_on_data_*,_data_**,_and_data_***__}%.tabular}; done
for f in *; do mv $f ${f#Galaxy1***-\[Cuffdiff_on_data_***,_data_**,_and_data_***__}; done 2> /dev/null	
for f in *; do mv $f ${f#Cuffdiff_on_data_***,_data_***,_and_data_***__}; done 2> /dev/null	
for f in *; do mv $f ${f#Cuffdiff_on_data_***,_data_***,_and_others__}; done 2> /dev/null
for f in *; do mv $f ${f%.tabular}; done 2> /dev/null	


for f in *; do mv $f `echo $f | tr '[:upper:]' '[:lower:]'`; done 2> /dev/null	

for f in *differential_expression_testing; do mv $f ${f%_differential_expression_testing}.diff; done

for f in *diffential_expression_testing; do mv $f ${f%_diffential_expression_testing}.diff; done

mv cds_fpkm.diff cds_exp.diff
mv cds_overloading.diff cds.diff
mv gene.diff gene_exp.diff
mv tss_groups.diff tss_group_exp.diff
mv transcript.diff isoforms_exp.diff
mv transcript_fpkm_tracking isoforms.fpkm_tracking


for f in tss*;do test ${f%.*} = $f && mv $f `echo $f | sed 's/_/./2'`; done

for f in *; do test ${f%.*} = $f && mv $f ${f/_/.}; done

mv gene.fpkm_tracking genes.fpkm_tracking
