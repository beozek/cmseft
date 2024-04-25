ifeq ($(strip $(PhysicsToolsNanoAODPlugins)),)
PhysicsToolsNanoAODPlugins := self/src/PhysicsTools/NanoAOD/plugins
PLUGINS:=yes
PhysicsToolsNanoAODPlugins_files := $(patsubst src/PhysicsTools/NanoAOD/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/PhysicsTools/NanoAOD/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/PhysicsTools/NanoAOD/plugins/$(file). Please fix src/PhysicsTools/NanoAOD/plugins/BuildFile.))))
PhysicsToolsNanoAODPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NanoAOD/plugins/BuildFile
PhysicsToolsNanoAODPlugins_LOC_USE := self   fastjet fastjet-contrib roothistmatrix tbb CommonTools/Egamma CondFormats/BTauObjects CondFormats/DataRecord CondFormats/L1TObjects CondFormats/RunInfo CondTools/BTau DQMServices/Core DataFormats/CTPPSDetId DataFormats/CTPPSReco DataFormats/Candidate DataFormats/L1TGlobal DataFormats/NanoAOD DataFormats/PatCandidates DataFormats/ProtonReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities IOPool/Provenance PhysicsTools/PatAlgos RecoVertex/VertexPrimitives RecoVertex/VertexTools 
PhysicsToolsNanoAODPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,PhysicsToolsNanoAODPlugins,PhysicsToolsNanoAODPlugins,$(SCRAMSTORENAME_LIB),src/PhysicsTools/NanoAOD/plugins))
PhysicsToolsNanoAODPlugins_PACKAGE := self/src/PhysicsTools/NanoAOD/plugins
ALL_PRODS += PhysicsToolsNanoAODPlugins
PhysicsTools/NanoAOD_forbigobj+=PhysicsToolsNanoAODPlugins
PhysicsToolsNanoAODPlugins_INIT_FUNC        += $$(eval $$(call Library,PhysicsToolsNanoAODPlugins,src/PhysicsTools/NanoAOD/plugins,src_PhysicsTools_NanoAOD_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
PhysicsToolsNanoAODPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,PhysicsToolsNanoAODPlugins,src/PhysicsTools/NanoAOD/plugins))
endif
ALL_COMMONRULES += src_PhysicsTools_NanoAOD_plugins
src_PhysicsTools_NanoAOD_plugins_parent := PhysicsTools/NanoAOD
src_PhysicsTools_NanoAOD_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NanoAOD_plugins,src/PhysicsTools/NanoAOD/plugins,PLUGINS))
