ifeq ($(strip $(PhysicsTools/NanoAOD)),)
src_PhysicsTools_NanoAOD := self/PhysicsTools/NanoAOD
PhysicsTools/NanoAOD  := src_PhysicsTools_NanoAOD
src_PhysicsTools_NanoAOD_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NanoAOD/BuildFile
src_PhysicsTools_NanoAOD_LOC_USE := self  DataFormats/Common DataFormats/NanoAOD Utilities/General boost
src_PhysicsTools_NanoAOD_EX_USE   := $(foreach d,$(src_PhysicsTools_NanoAOD_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_PhysicsTools_NanoAOD
src_PhysicsTools_NanoAOD_INIT_FUNC += $$(eval $$(call EmptyPackage,src_PhysicsTools_NanoAOD,src/PhysicsTools/NanoAOD))
endif

