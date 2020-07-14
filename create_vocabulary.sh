#!/bin/bash
komenti query --ontology GO -q "<http://www.w3.org/2002/07/owl#Thing>" --verbose --out triple_vocab.txt --threads 5 --override-group terms --lemmatise
komenti query --ontology PATO -q "<http://www.w3.org/2002/07/owl#Thing>" --verbose --out triple_vocab.txt --append --threads 5 --override-group terms --lemmatise
komenti query --ontology RO -q "<http://www.w3.org/2002/07/owl#Thing>" --verbose --out triple_vocab.txt --append --threads 5 --override-group terms --lemmatise
komenti query --ontology CLO -q "<http://www.w3.org/2002/07/owl#Thing>" --verbose --out triple_vocab.txt --threads 5 --override-group terms --lemmatise
komenti query --ontology RO --object-properties --verbose --out triple_vocab.txt --append --threads 5 --override-group object-properties --lemmatise
komenti query --ontology GO --object-properties --verbose --out triple_vocab.txt --append --threads 5 --override-group object-properties --lemmatise
komenti query --ontology CLO --object-properties --verbose --out triple_vocab.txt --append --threads 5 --override-group object-properties --lemmatise
komenti query --ontology PATO --object-properties --verbose --out triple_vocab.txt --append --threads 5 --override-group object-properties --lemmatise
echo "done, and saved 2 triple_vocab.txt"
