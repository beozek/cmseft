ifeq ($(strip $(EFTGenReaderLHEReaderPlugins)),)
EFTGenReaderLHEReaderPlugins := self/src/EFTGenReader/LHEReader/plugins
PLUGINS:=yes
EFTGenReaderLHEReaderPlugins_files := $(patsubst src/EFTGenReader/LHEReader/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EFTGenReader/LHEReader/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EFTGenReader/LHEReader/plugins/$(file). Please fix src/EFTGenReader/LHEReader/plugins/BuildFile.))))
EFTGenReaderLHEReaderPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EFTGenReader/LHEReader/plugins/BuildFile
EFTGenReaderLHEReaderPlugins_LOC_USE := self   root roottmva CommonTools/UtilAlgos FWCore/PluginManager FWCore/ParameterSet FWCore/Framework FWCore/Utilities FWCore/ServiceRegistry FWCore/PythonParameterSet DataFormats/Common DataFormats/Math DataFormats/HepMCCandidate DataFormats/PatCandidates SimDataFormats/GeneratorProducts EFTGenReader/EFTHelperUtilities EFTGenReader/LHEReader 
EFTGenReaderLHEReaderPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EFTGenReaderLHEReaderPlugins,EFTGenReaderLHEReaderPlugins,$(SCRAMSTORENAME_LIB),src/EFTGenReader/LHEReader/plugins))
EFTGenReaderLHEReaderPlugins_PACKAGE := self/src/EFTGenReader/LHEReader/plugins
ALL_PRODS += EFTGenReaderLHEReaderPlugins
EFTGenReader/LHEReader_forbigobj+=EFTGenReaderLHEReaderPlugins
EFTGenReaderLHEReaderPlugins_INIT_FUNC        += $$(eval $$(call Library,EFTGenReaderLHEReaderPlugins,src/EFTGenReader/LHEReader/plugins,src_EFTGenReader_LHEReader_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
EFTGenReaderLHEReaderPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,EFTGenReaderLHEReaderPlugins,src/EFTGenReader/LHEReader/plugins))
endif
ALL_COMMONRULES += src_EFTGenReader_LHEReader_plugins
src_EFTGenReader_LHEReader_plugins_parent := EFTGenReader/LHEReader
src_EFTGenReader_LHEReader_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EFTGenReader_LHEReader_plugins,src/EFTGenReader/LHEReader/plugins,PLUGINS))
