#!/bin/bash
komenti query --ontology GO -q "<http://www.w3.org/2002/07/owl#Thing>" --expand-synonyms --verbose --out triple_vocab.txt --threads 60 --override-group terms
komenti query --ontology PATO -q "<http://www.w3.org/2002/07/owl#Thing>" --expand-synonyms --verbose --out triple_vocab.txt --append --threads 60 --override-group terms
komenti query --ontology RO -q "<http://www.w3.org/2002/07/owl#Thing>" --expand-synonyms --verbose --out triple_vocab.txt --append --threads 60 --override-group terms
komenti query --ontology CLO -q "<http://www.w3.org/2002/07/owl#Thing>" --expand-synonyms --verbose --out clo_vocab.txt --threads 60 --override-group terms
komenti query --ontology RO --object-properties --expand-synonyms --verbose --out triple_vocab.txt --append --threads 60 --override-group object-properties
komenti query --ontology GO --object-properties --expand-synonyms --verbose --out triple_vocab.txt --append --threads 60 --override-group object-properties
komenti query --ontology CLO --object-properties --expand-synonyms --verbose --out triple_vocab.txt --append --threads 60 --override-group object-properties
komenti query --ontology PATO --object-properties --expand-synonyms --verbose --out triple_vocab.txt --append --threads 60 --override-group object-properties
echo "done, and saved 2 triple_vocab.txt"
