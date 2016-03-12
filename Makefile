#!/usr/bin/make -f

.PHONY: all clean buildgrf buildgrfalt cleangrf

all: buildgrf buildgrfalt

clean: cleangrf

buildgrf:
	nmlc --nfo nec_town_names.nfo --grf nec_town_names.grf nec_town_names.nml
	mv -v nec_town_names.grf nec_town_names-nml.grf

buildgrfalt:
	nforenum nec_town_names.nfo
	grfcodec -e -c nec_town_names.grf .
	mv -v nec_town_names.grf nec_town_names-nfo.grf
	rm -rfv nec_town_names.nfo.bak

cleangrf:
	rm -rfv .nmlcache nec_town_names.grf nec_town_names-nml.grf nec_town_names-nfo.grf nec_town_names.nfo nec_town_names.nfo.bak parsetab.py
