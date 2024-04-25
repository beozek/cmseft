ifeq ($(strip $(PhysicsTools/NanoAOD)),)
src_PhysicsTools_NanoAOD := self/PhysicsTools/NanoAOD
PhysicsTools/NanoAOD  := src_PhysicsTools_NanoAOD
src_PhysicsTools_NanoAOD_BuildFile    := $(WORKINGDIR)/cache/bf/src/PhysicsTools/NanoAOD/BuildFile
src_PhysicsTools_NanoAOD_LOC_USE := self  DataFormats/Common DataFormats/NanoAOD Utilities/General boost
src_PhysicsTools_NanoAOD_EX_USE   := $(foreach d,$(src_PhysicsTools_NanoAOD_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_PhysicsTools_NanoAOD
src_PhysicsTools_NanoAOD_INIT_FUNC += $$(eval $$(call EmptyPackage,src_PhysicsTools_NanoAOD,src/PhysicsTools/NanoAOD))
endif

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
ifeq ($(strip $(EFTGenReader/EFTHelperUtilities)),)
ALL_COMMONRULES += src_EFTGenReader_EFTHelperUtilities_src
src_EFTGenReader_EFTHelperUtilities_src_parent := EFTGenReader/EFTHelperUtilities
src_EFTGenReader_EFTHelperUtilities_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_EFTGenReader_EFTHelperUtilities_src,src/EFTGenReader/EFTHelperUtilities/src,LIBRARY))
EFTGenReaderEFTHelperUtilities := self/EFTGenReader/EFTHelperUtilities
EFTGenReader/EFTHelperUtilities := EFTGenReaderEFTHelperUtilities
EFTGenReaderEFTHelperUtilities_files := $(patsubst src/EFTGenReader/EFTHelperUtilities/src/%,%,$(wildcard $(foreach dir,src/EFTGenReader/EFTHelperUtilities/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
EFTGenReaderEFTHelperUtilities_BuildFile    := $(WORKINGDIR)/cache/bf/src/EFTGenReader/EFTHelperUtilities/BuildFile
EFTGenReaderEFTHelperUtilities_LOC_USE := self   CommonTools/Utils DataFormats/FWLite DataFormats/Math root 
EFTGenReaderEFTHelperUtilities_LCGDICTS  := x 
EFTGenReaderEFTHelperUtilities_PRE_INIT_FUNC += $$(eval $$(call LCGDict,EFTGenReaderEFTHelperUtilities,src/EFTGenReader/EFTHelperUtilities/src/classes.h,src/EFTGenReader/EFTHelperUtilities/src/classes_def.xml,$(SCRAMSTORENAME_LIB),$(GENREFLEX_ARGS) $(root_EX_FLAGS_GENREFLEX_FAILES_ON_WARNS)))
EFTGenReaderEFTHelperUtilities_EX_LIB   := EFTGenReaderEFTHelperUtilities
EFTGenReaderEFTHelperUtilities_EX_USE   := $(foreach d,$(EFTGenReaderEFTHelperUtilities_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
EFTGenReaderEFTHelperUtilities_PACKAGE := self/src/EFTGenReader/EFTHelperUtilities/src
ALL_PRODS += EFTGenReaderEFTHelperUtilities
EFTGenReaderEFTHelperUtilities_CLASS := LIBRARY
EFTGenReader/EFTHelperUtilities_forbigobj+=EFTGenReaderEFTHelperUtilities
EFTGenReaderEFTHelperUtilities_INIT_FUNC        += $$(eval $$(call Library,EFTGenReaderEFTHelperUtilities,src/EFTGenReader/EFTHelperUtilities/src,src_EFTGenReader_EFTHelperUtilities_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS),))
endif
ifeq ($(strip $(EFTGenReader/GenReader)),)
src_EFTGenReader_GenReader := self/EFTGenReader/GenReader
EFTGenReader/GenReader  := src_EFTGenReader_GenReader
src_EFTGenReader_GenReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/EFTGenReader/GenReader/BuildFile
src_EFTGenReader_GenReader_LOC_USE := self  CommonTools/Utils DataFormats/FWLite EgammaAnalysis/ElectronTools DataFormats/Math root roottmva lhapdf
src_EFTGenReader_GenReader_EX_USE   := $(foreach d,$(src_EFTGenReader_GenReader_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_EFTGenReader_GenReader
src_EFTGenReader_GenReader_INIT_FUNC += $$(eval $$(call EmptyPackage,src_EFTGenReader_GenReader,src/EFTGenReader/GenReader))
endif

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
ifeq ($(strip $(EFTGenReader/LHEReader)),)
src_EFTGenReader_LHEReader := self/EFTGenReader/LHEReader
EFTGenReader/LHEReader  := src_EFTGenReader_LHEReader
src_EFTGenReader_LHEReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/EFTGenReader/LHEReader/BuildFile
src_EFTGenReader_LHEReader_LOC_USE := self  CommonTools/Utils DataFormats/FWLite EgammaAnalysis/ElectronTools DataFormats/Math root roottmva lhapdf
src_EFTGenReader_LHEReader_EX_USE   := $(foreach d,$(src_EFTGenReader_LHEReader_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_EFTGenReader_LHEReader
src_EFTGenReader_LHEReader_INIT_FUNC += $$(eval $$(call EmptyPackage,src_EFTGenReader_LHEReader,src/EFTGenReader/LHEReader))
endif

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
