These files are overtly simplistic SV files for float16 multiply and
add.  They have no rounding or other 754 amenties.

Right now, these files are purely combinational and do not contain any
sequential devices.  However, this could be added easily, if needed.

The testfp.c validates the output even though its written for
single-precision (I just kept the numbers below float16's max value).

gcc -o testfp testfp.c -lm



