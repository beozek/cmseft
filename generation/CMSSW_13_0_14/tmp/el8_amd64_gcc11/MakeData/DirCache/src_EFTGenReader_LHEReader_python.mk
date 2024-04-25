ifeq ($(strip $(PyEFTGenReaderLHEReader)),)
PyEFTGenReaderLHEReader := self/src/EFTGenReader/LHEReader/python
src_EFTGenReader_LHEReader_python_parent := src/EFTGenReader/LHEReader
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EFTGenReader/LHEReader/python)
PyEFTGenReaderLHEReader_files := $(patsubst src/EFTGenReader/LHEReader/python/%,%,$(wildcard $(foreach dir,src/EFTGenReader/LHEReader/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyEFTGenReaderLHEReader_LOC_USE := self   
PyEFTGenReaderLHEReader_PACKAGE := self/src/EFTGenReader/LHEReader/python
ALL_PRODS += PyEFTGenReaderLHEReader
PyEFTGenReaderLHEReader_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEFTGenReaderLHEReader,src/EFTGenReader/LHEReader/python,src_EFTGenReader_LHEReader_python))
else
$(eval $(call MultipleWarningMsg,PyEFTGenReaderLHEReader,src/EFTGenReader/LHEReader/python))
endif
ALL_COMMONRULES += src_EFTGenReader_LHEReader_python
src_EFTGenReader_LHEReader_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EFTGenReader_LHEReader_python,src/EFTGenReader/LHEReader/python,PYTHON))
