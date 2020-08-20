#!/bin/bash

docker run -i --rm -w "$(pwd)" -v "$(pwd):$(pwd):Z" tianon/latex latexmk -pdf main.tex
docker run -i --rm -w "$(pwd)" -v "$(pwd):$(pwd):Z" cartoncloud/pdftk main.pdf burst
