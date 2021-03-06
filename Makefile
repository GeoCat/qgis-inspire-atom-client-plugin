COMPILED_RESOURCE_FILES = resources.py

UI_FILES = ui_metadataclient.py ui_inspireatomclient.py


default: compile

compile: $(COMPILED_RESOURCE_FILES) $(UI_FILES)

%.py : %.ui
	pyuic4 -o $@ $<

%.py : %.qrc
	pyrcc4 -o $*.py  $<
