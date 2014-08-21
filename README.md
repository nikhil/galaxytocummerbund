
galaxytocummerbund
=============

A bash script that batch renames all the output files downloaded from the
Galaxy server so that it can be used to run cummerbund.

##Eases Pipeline integration

The RNA-seq pipeline for many users consists of cuff-diff on galaxy,
downloading the files and then running them on R with CummeRbund. 

### The problem

The files downloaded from galaxy have different names than what galaxy expects.

### The solution

I wrote a script that converts all the files into the proper format.

### Running it

Open up a terminal with a bash shell.

<code>
chmod +x galaxytocummerbund.sh <br>
./galaxytocummerbund.sh
</code>


