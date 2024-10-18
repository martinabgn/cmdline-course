#!/bin/bash
# This script computes word frequency list from a text file

for book in ../data/*.txt; do
  cat "$book" | tr '[:upper:]' '[:lower:]' | tr -c '[:alnum:]' '[\n*]' | sort | uniq -c | sort -nr > "../results/$(basename "$book" .txt).freq.txt"
done

