#!/bin/bash

rm -rfv .nmlcache nec_town_names.grf nec_town_names-nml.grf nec_town_names-nfo.grf nec_town_names.nfo nec_town_names.nfo.bak parsetab.py
nmlc --nfo nec_town_names.nfo --grf nec_town_names.grf nec_town_names.nml
mv -v nec_town_names.grf nec_town_names-nml.grf
nforenum nec_town_names.nfo
grfcodec -e -c nec_town_names.grf .
mv -v nec_town_names.grf nec_town_names-nfo.grf
rm -rfv nec_town_names.nfo.bak
