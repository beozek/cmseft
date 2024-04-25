ifeq ($(strip $(EFTGenReader/LHEReader)),)
src_EFTGenReader_LHEReader := self/EFTGenReader/LHEReader
EFTGenReader/LHEReader  := src_EFTGenReader_LHEReader
src_EFTGenReader_LHEReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/EFTGenReader/LHEReader/BuildFile
src_EFTGenReader_LHEReader_LOC_USE := self  CommonTools/Utils DataFormats/FWLite EgammaAnalysis/ElectronTools DataFormats/Math root roottmva lhapdf
src_EFTGenReader_LHEReader_EX_USE   := $(foreach d,$(src_EFTGenReader_LHEReader_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_EFTGenReader_LHEReader
src_EFTGenReader_LHEReader_INIT_FUNC += $$(eval $$(call EmptyPackage,src_EFTGenReader_LHEReader,src/EFTGenReader/LHEReader))
endif

