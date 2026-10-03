# detok85

De-tokenize Kyotronic KC-85 BASIC (TRS-80 Model 100 & clones) to ascii source.

`$ detok85 MYPROG.BA >MYPROG.bas`  
or  
`$ detok85 -cr MYPROG.BA >MYPROG.DO`

Input is a tokenized \*.BA file from one of the following machines:  
Kyotronic KC-85  
TRS-80 Model 100  
TANDY Model 102  
TANDY Model 200  
Olivetti M-10

Does not support N82 BASIC from these machines:  
NEC PC-8201  
NEC PC-8201a  
NEC PC-8300

There are many files in archives on the net ([club100](http://club100.org), [M100SIG](https://github.com/LivingM100SIG/Living_M100SIG), etc) with a \*.BA filename that are already plain ascii.  
You don't need to detokenize those.  

The -cr option outputs CRLF line-endings.  
Aside from general use on DOS/Windows, this is also needed for loading back into K85 / Model 100 BASIC as a .DO file.

The converted program can be read and edited and loaded back into the computer as a text file
(.DO extension) or used to port to other versions of BASIC.

# Installation
mac/*nix: `sudo make install`  

Otherwise just copy `detok85.py` wherever you want.

Requires Python 3 and the **argparse** module.

# Usage
```
detok85 [-h] [-cr] file.BA

Prints ascii text source from tokenized K85 BASIC file

  -h, --help  show this help message and exit
  -cr         output CRLF line endings
  file.BA     *.BA tokenized BASIC file from any of:
              Kyotronic KC-85
              TRS-80 Model 100
              TANDY Model 102
              TANDY Model 200
              Olivetti M-10
              (N82 BASIC from NEC PC-8201/PC-8300 not supported)
```

# References
Forked from https://github.com/diemheych/trs80m100-list  

File format details from: http://fileformats.archiveteam.org/wiki/Tandy_200_BASIC_tokenized_file
