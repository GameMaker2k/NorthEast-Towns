#!/bin/bash

rm -rfv .nmlcache nec_town_names.grf nec_town_names.nfo parsetab.py
nmlc --nfo nec_town_names.nfo --grf nec_town_names.grf nec_town_names.nml
