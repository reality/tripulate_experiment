#!/bin/bash
komenti annotate --extract-triples --file-list /data2/pubmed_xml_baseline/training_sample.txt -l triple_vocab.txt --threads 25 --out triples.json --allow-unmatched-relations --verbose
komenti ontologise --triples --labels triple_vocab.txt --out train_gloo.owl
