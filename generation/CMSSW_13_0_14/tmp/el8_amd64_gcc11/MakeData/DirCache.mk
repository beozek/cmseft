ALL_SUBSYSTEMS+=PhysicsTools
subdirs_src_PhysicsTools = src_PhysicsTools_NanoAOD
subdirs_src += src_PhysicsTools
ALL_PACKAGES += PhysicsTools/NanoAOD
subdirs_src_PhysicsTools_NanoAOD := src_PhysicsTools_NanoAOD_plugins src_PhysicsTools_NanoAOD_python src_PhysicsTools_NanoAOD_scripts src_PhysicsTools_NanoAOD_test
ifeq ($(strip $(PyPhysicsToolsNanoAOD)),)
PyPhysicsToolsNanoAOD := self/src/PhysicsTools/NanoAOD/python
src_PhysicsTools_NanoAOD_python_parent := src/PhysicsTools/NanoAOD
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/PhysicsTools/NanoAOD/python)
PyPhysicsToolsNanoAOD_files := $(patsubst src/PhysicsTools/NanoAOD/python/%,%,$(wildcard $(foreach dir,src/PhysicsTools/NanoAOD/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyPhysicsToolsNanoAOD_LOC_USE := self   
PyPhysicsToolsNanoAOD_PACKAGE := self/src/PhysicsTools/NanoAOD/python
ALL_PRODS += PyPhysicsToolsNanoAOD
PyPhysicsToolsNanoAOD_INIT_FUNC        += $$(eval $$(call PythonProduct,PyPhysicsToolsNanoAOD,src/PhysicsTools/NanoAOD/python,src_PhysicsTools_NanoAOD_python))
else
$(eval $(call MultipleWarningMsg,PyPhysicsToolsNanoAOD,src/PhysicsTools/NanoAOD/python))
endif
ALL_COMMONRULES += src_PhysicsTools_NanoAOD_python
src_PhysicsTools_NanoAOD_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_PhysicsTools_NanoAOD_python,src/PhysicsTools/NanoAOD/python,PYTHON))
src_PhysicsTools_NanoAOD_scripts_files := $(filter-out \#% %\#,$(notdir $(wildcard $(foreach dir,$(LOCALTOP)/src/PhysicsTools/NanoAOD/scripts,$(dir)/*))))
$(eval $(call Src2StoreCopy,src_PhysicsTools_NanoAOD_scripts,src/PhysicsTools/NanoAOD/scripts,$(SCRAMSTORENAME_BIN),*))
ALL_SUBSYSTEMS+=EFTGenReader
subdirs_src_EFTGenReader = src_EFTGenReader_EFTHelperUtilities src_EFTGenReader_GenReader src_EFTGenReader_LHEReader
subdirs_src += src_EFTGenReader
ALL_PACKAGES += EFTGenReader/EFTHelperUtilities
subdirs_src_EFTGenReader_EFTHelperUtilities := src_EFTGenReader_EFTHelperUtilities_src src_EFTGenReader_EFTHelperUtilities_test
ALL_PACKAGES += EFTGenReader/GenReader
subdirs_src_EFTGenReader_GenReader := src_EFTGenReader_GenReader_plugins src_EFTGenReader_GenReader_python src_EFTGenReader_GenReader_test
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
ALL_PACKAGES += EFTGenReader/LHEReader
subdirs_src_EFTGenReader_LHEReader := src_EFTGenReader_LHEReader_plugins src_EFTGenReader_LHEReader_python src_EFTGenReader_LHEReader_test
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
ALL_SUBSYSTEMS+=Configuration
subdirs_src_Configuration = src_Configuration_GenProduction
subdirs_src += src_Configuration
ALL_PACKAGES += Configuration/GenProduction
subdirs_src_Configuration_GenProduction := src_Configuration_GenProduction_python
ifeq ($(strip $(PyConfigurationGenProduction)),)
PyConfigurationGenProduction := self/src/Configuration/GenProduction/python
src_Configuration_GenProduction_python_parent := src/Configuration/GenProduction
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/Configuration/GenProduction/python)
PyConfigurationGenProduction_files := $(patsubst src/Configuration/GenProduction/python/%,%,$(wildcard $(foreach dir,src/Configuration/GenProduction/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyConfigurationGenProduction_LOC_USE := self   
PyConfigurationGenProduction_PACKAGE := self/src/Configuration/GenProduction/python
ALL_PRODS += PyConfigurationGenProduction
PyConfigurationGenProduction_INIT_FUNC        += $$(eval $$(call PythonProduct,PyConfigurationGenProduction,src/Configuration/GenProduction/python,src_Configuration_GenProduction_python))
else
$(eval $(call MultipleWarningMsg,PyConfigurationGenProduction,src/Configuration/GenProduction/python))
endif
ALL_COMMONRULES += src_Configuration_GenProduction_python
src_Configuration_GenProduction_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_Configuration_GenProduction_python,src/Configuration/GenProduction/python,PYTHON))
