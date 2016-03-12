#!/bin/bash

rm -rfv .nmlcache nec_town_names-optimized.nml nec_town_names.grf nec_town_names-nml.grf nec_town_names-nfo.grf nec_town_names.nfo nec_town_names.nfo.bak nec_town_names-nml.nfo parsetab.py
nmlc --verbosity 5 --nml nec_town_names-optimized.nml --nfo nec_town_names-nml.nfo --grf nec_town_names.grf nec_town_names.nml
cp -v nec_town_names-nml.nfo nec_town_names.nfo
mv -v nec_town_names.grf nec_town_names-nml.grf
nforenum nec_town_names.nfo
grfcodec -g 2 -n -e -c nec_town_names.grf .
mv -v nec_town_names.grf nec_town_names-nfo.grf
rm -rfv nec_town_names.nfo.bak
