#!/bin/bash

wget -O shakespeare.tar https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar

tar -xf shakespeare.tar

cd shakespeare

cat comedies/* histories/* poetry/* tragedies/* > ../all_works.txt

cd ..
split -n l/5 -d all_works.txt small_file_
