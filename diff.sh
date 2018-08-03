#!/bin/bash

echo "Creating diff for branch master and $1..."

# https://mirror.hmc.edu/ctan/support/latexdiff/doc/latexdiff-man.pdf
latexdiff-vc \
    --git \
    --pdf \
    --force \
    --dir diff \
    --revision master \
    --revision $1 \
    main.tex

# Clean temp files
rm main-oldtmp-*.tex