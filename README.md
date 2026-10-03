# detok85

De-tokenize Kyotronic KC-85 BASIC to ascii source.

`$ detok85 MYPROG.BA >MYPROG.bas`

Input is a tokenized \*.BA file from one of the following machines:  
Kyotronic KC-85  
TRS-80 Model 100  
TANDY Model 102  
TANDY Model 200  
Olivetti M-10

Does not support N82 BASIC from theese machines:  
NEC PC-8201  
NEC PC-8201a  
NEC PC-8300

There are many files stored in archives on the net ([club100](http://club100.org), [M100SIG](https://github.com/LivingM100SIG/Living_M100SIG), etc) with a \*.BA filename that are already plain ascii. You don't need to detokenize those.  
This is to convert an actual \*.BA file to plain text/ascii.

The -cr option adds carriage return (CR) to the end of line so the output is Windows compatible.

The converted program can be read and edited and loaded back into the computer as a text file
(.DO extension) or used to port to other versions of BASIC.

As the file format is very simple with no header or magic numbers there is no error checking.

Note: the NEC PC-8xxx portable computers do not use the same tokenized BASIC file format.

# Installation
Requires Python 3 and the **argparse** module.

# Usage
```
Usage: detok85 [-h] [-cr] infile

Convert tokenised K85 BASIC program file to ascii text source

positional arguments:
  infile

optional arguments:
  -h, --help  show this help message and exit
  -cr         output CRLF (DOS/Windows) line endings
```

# References
Forked from https://github.com/diemheych/trs80m100-list  

File format details from: http://fileformats.archiveteam.org/wiki/Tandy_200_BASIC_tokenized_file
