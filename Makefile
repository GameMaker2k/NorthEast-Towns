#!/usr/bin/make -f

.PHONY: all clean buildgrf cleangrf

all: buildgrf

clean: cleangrf

buildgrf:
	nmlc --nfo nec_town_names.nfo --grf nec_town_names.grf nec_town_names.nml

cleangrf:
	rm -rfv .nmlcache nec_town_names.grf nec_town_names.nfo parsetab.py
