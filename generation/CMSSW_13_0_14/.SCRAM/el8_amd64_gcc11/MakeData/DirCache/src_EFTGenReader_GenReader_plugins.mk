ifeq ($(strip $(EFTGenReaderGenReaderPlugins)),)
EFTGenReaderGenReaderPlugins := self/src/EFTGenReader/GenReader/plugins
PLUGINS:=yes
EFTGenReaderGenReaderPlugins_files := $(patsubst src/EFTGenReader/GenReader/plugins/%,%,$(foreach file,*.cc,$(eval xfile:=$(wildcard src/EFTGenReader/GenReader/plugins/$(file)))$(if $(xfile),$(xfile),$(warning No such file exists: src/EFTGenReader/GenReader/plugins/$(file). Please fix src/EFTGenReader/GenReader/plugins/BuildFile.))))
EFTGenReaderGenReaderPlugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/EFTGenReader/GenReader/plugins/BuildFile
EFTGenReaderGenReaderPlugins_LOC_USE := self   root roottmva CommonTools/UtilAlgos FWCore/PluginManager FWCore/ParameterSet FWCore/Framework FWCore/Utilities FWCore/ServiceRegistry FWCore/PythonParameterSet DataFormats/Common DataFormats/Math DataFormats/HepMCCandidate DataFormats/PatCandidates SimDataFormats/GeneratorProducts EFTGenReader/EFTHelperUtilities EFTGenReader/GenReader 
EFTGenReaderGenReaderPlugins_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,EFTGenReaderGenReaderPlugins,EFTGenReaderGenReaderPlugins,$(SCRAMSTORENAME_LIB),src/EFTGenReader/GenReader/plugins))
EFTGenReaderGenReaderPlugins_PACKAGE := self/src/EFTGenReader/GenReader/plugins
ALL_PRODS += EFTGenReaderGenReaderPlugins
EFTGenReader/GenReader_forbigobj+=EFTGenReaderGenReaderPlugins
EFTGenReaderGenReaderPlugins_INIT_FUNC        += $$(eval $$(call Library,EFTGenReaderGenReaderPlugins,src/EFTGenReader/GenReader/plugins,src_EFTGenReader_GenReader_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),edm))
EFTGenReaderGenReaderPlugins_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,EFTGenReaderGenReaderPlugins,src/EFTGenReader/GenReader/plugins))
endif
ALL_COMMONRULES += src_EFTGenReader_GenReader_plugins
src_EFTGenReader_GenReader_plugins_parent := EFTGenReader/GenReader
src_EFTGenReader_GenReader_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EFTGenReader_GenReader_plugins,src/EFTGenReader/GenReader/plugins,PLUGINS))
