#!/bin/bash
komenti query --ontology GO -q "<http://www.w3.org/2002/07/owl#Thing>" --expand-synonyms --verbose --out triple_vocab.txt 
komenti query --ontology PATO -q "<http://www.w3.org/2002/07/owl#Thing>" --expand-synonyms --verbose --out triple_vocab.txt --append
komenti query --ontology RO -q "<http://www.w3.org/2002/07/owl#Thing>" --expand-synonyms --verbose --out triple_vocab.txt --append
komenti query --ontology CLO -q "<http://www.w3.org/2002/07/owl#Thing>" --expand-synonyms --verbose --out triple_vocab.txt --append
echo "done, and saved 2 triple_vocab.txt"
