ifeq ($(strip $(PyEFTGenReaderGenReader)),)
PyEFTGenReaderGenReader := self/src/EFTGenReader/GenReader/python
src_EFTGenReader_GenReader_python_parent := src/EFTGenReader/GenReader
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/EFTGenReader/GenReader/python)
PyEFTGenReaderGenReader_files := $(patsubst src/EFTGenReader/GenReader/python/%,%,$(wildcard $(foreach dir,src/EFTGenReader/GenReader/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyEFTGenReaderGenReader_LOC_USE := self   
PyEFTGenReaderGenReader_PACKAGE := self/src/EFTGenReader/GenReader/python
ALL_PRODS += PyEFTGenReaderGenReader
PyEFTGenReaderGenReader_INIT_FUNC        += $$(eval $$(call PythonProduct,PyEFTGenReaderGenReader,src/EFTGenReader/GenReader/python,src_EFTGenReader_GenReader_python))
else
$(eval $(call MultipleWarningMsg,PyEFTGenReaderGenReader,src/EFTGenReader/GenReader/python))
endif
ALL_COMMONRULES += src_EFTGenReader_GenReader_python
src_EFTGenReader_GenReader_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_EFTGenReader_GenReader_python,src/EFTGenReader/GenReader/python,PYTHON))
