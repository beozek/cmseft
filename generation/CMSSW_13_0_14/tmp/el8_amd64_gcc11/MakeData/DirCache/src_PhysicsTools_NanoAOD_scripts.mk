src_PhysicsTools_NanoAOD_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/NanoAOD/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_NanoAOD_scripts,src/PhysicsTools/NanoAOD/scripts,$(SCRAMSTORENAME_BIN),*))
