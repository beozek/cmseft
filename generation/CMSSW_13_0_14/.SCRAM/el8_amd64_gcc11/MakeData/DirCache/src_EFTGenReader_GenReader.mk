ifeq ($(strip $(EFTGenReader/GenReader)),)
src_EFTGenReader_GenReader := self/EFTGenReader/GenReader
EFTGenReader/GenReader  := src_EFTGenReader_GenReader
src_EFTGenReader_GenReader_BuildFile    := $(WORKINGDIR)/cache/bf/src/EFTGenReader/GenReader/BuildFile
src_EFTGenReader_GenReader_LOC_USE := self  CommonTools/Utils DataFormats/FWLite EgammaAnalysis/ElectronTools DataFormats/Math root roottmva lhapdf
src_EFTGenReader_GenReader_EX_USE   := $(foreach d,$(src_EFTGenReader_GenReader_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_EFTGenReader_GenReader
src_EFTGenReader_GenReader_INIT_FUNC += $$(eval $$(call EmptyPackage,src_EFTGenReader_GenReader,src/EFTGenReader/GenReader))
endif

