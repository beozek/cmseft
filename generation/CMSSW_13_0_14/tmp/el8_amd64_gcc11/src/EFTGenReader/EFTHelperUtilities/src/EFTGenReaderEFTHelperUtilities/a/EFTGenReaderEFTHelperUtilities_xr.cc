// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME tmpdIel8_amd64_gcc11dIsrcdIEFTGenReaderdIEFTHelperUtilitiesdIsrcdIEFTGenReaderEFTHelperUtilitiesdIadIEFTGenReaderEFTHelperUtilities_xr
#define R__NO_DEPRECATION

/*******************************************************************/
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#define G__DICTIONARY
#include "RConfig.h"
#include "TClass.h"
#include "TDictAttributeMap.h"
#include "TInterpreter.h"
#include "TROOT.h"
#include "TBuffer.h"
#include "TMemberInspector.h"
#include "TInterpreter.h"
#include "TVirtualMutex.h"
#include "TError.h"

#ifndef G__ROOT
#define G__ROOT
#endif

#include "RtypesImp.h"
#include "TIsAProxy.h"
#include "TFileMergeInfo.h"
#include <algorithm>
#include "TCollectionProxyInfo.h"
/*******************************************************************/

#include "TDataMember.h"

// Header files passed as explicit arguments
#include "src/EFTGenReader/EFTHelperUtilities/src/classes.h"

// Header files passed via #pragma extra_include

// The generated code does not explicitly qualify STL entities
namespace std {} using namespace std;

namespace ROOT {
   static TClass *WCPoint_Dictionary();
   static void WCPoint_TClassManip(TClass*);
   static void *new_WCPoint(void *p = nullptr);
   static void *newArray_WCPoint(Long_t size, void *p);
   static void delete_WCPoint(void *p);
   static void deleteArray_WCPoint(void *p);
   static void destruct_WCPoint(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::WCPoint*)
   {
      ::WCPoint *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::WCPoint));
      static ::ROOT::TGenericClassInfo 
         instance("WCPoint", "EFTGenReader/EFTHelperUtilities/interface/WCPoint.h", 15,
                  typeid(::WCPoint), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &WCPoint_Dictionary, isa_proxy, 4,
                  sizeof(::WCPoint) );
      instance.SetNew(&new_WCPoint);
      instance.SetNewArray(&newArray_WCPoint);
      instance.SetDelete(&delete_WCPoint);
      instance.SetDeleteArray(&deleteArray_WCPoint);
      instance.SetDestructor(&destruct_WCPoint);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::WCPoint*)
   {
      return GenerateInitInstanceLocal((::WCPoint*)nullptr);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::WCPoint*)nullptr); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *WCPoint_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::WCPoint*)nullptr)->GetClass();
      WCPoint_TClassManip(theClass);
   return theClass;
   }

   static void WCPoint_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *WCFit_Dictionary();
   static void WCFit_TClassManip(TClass*);
   static void *new_WCFit(void *p = nullptr);
   static void *newArray_WCFit(Long_t size, void *p);
   static void delete_WCFit(void *p);
   static void deleteArray_WCFit(void *p);
   static void destruct_WCFit(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::WCFit*)
   {
      ::WCFit *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::WCFit));
      static ::ROOT::TGenericClassInfo 
         instance("WCFit", "EFTGenReader/EFTHelperUtilities/interface/WCFit.h", 19,
                  typeid(::WCFit), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &WCFit_Dictionary, isa_proxy, 4,
                  sizeof(::WCFit) );
      instance.SetNew(&new_WCFit);
      instance.SetNewArray(&newArray_WCFit);
      instance.SetDelete(&delete_WCFit);
      instance.SetDeleteArray(&deleteArray_WCFit);
      instance.SetDestructor(&destruct_WCFit);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::WCFit*)
   {
      return GenerateInitInstanceLocal((::WCFit*)nullptr);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::WCFit*)nullptr); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *WCFit_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::WCFit*)nullptr)->GetClass();
      WCFit_TClassManip(theClass);
   return theClass;
   }

   static void WCFit_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static void *new_TH1EFT(void *p = nullptr);
   static void *newArray_TH1EFT(Long_t size, void *p);
   static void delete_TH1EFT(void *p);
   static void deleteArray_TH1EFT(void *p);
   static void destruct_TH1EFT(void *p);
   static void directoryAutoAdd_TH1EFT(void *obj, TDirectory *dir);
   static Long64_t merge_TH1EFT(void *obj, TCollection *coll,TFileMergeInfo *info);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::TH1EFT*)
   {
      ::TH1EFT *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::TH1EFT >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("TH1EFT", ::TH1EFT::Class_Version(), "EFTGenReader/EFTHelperUtilities/interface/TH1EFT.h", 10,
                  typeid(::TH1EFT), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::TH1EFT::Dictionary, isa_proxy, 4,
                  sizeof(::TH1EFT) );
      instance.SetNew(&new_TH1EFT);
      instance.SetNewArray(&newArray_TH1EFT);
      instance.SetDelete(&delete_TH1EFT);
      instance.SetDeleteArray(&deleteArray_TH1EFT);
      instance.SetDestructor(&destruct_TH1EFT);
      instance.SetDirectoryAutoAdd(&directoryAutoAdd_TH1EFT);
      instance.SetMerge(&merge_TH1EFT);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::TH1EFT*)
   {
      return GenerateInitInstanceLocal((::TH1EFT*)nullptr);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::TH1EFT*)nullptr); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

namespace ROOT {
   static void *new_TH2EFT(void *p = nullptr);
   static void *newArray_TH2EFT(Long_t size, void *p);
   static void delete_TH2EFT(void *p);
   static void deleteArray_TH2EFT(void *p);
   static void destruct_TH2EFT(void *p);
   static void directoryAutoAdd_TH2EFT(void *obj, TDirectory *dir);
   static Long64_t merge_TH2EFT(void *obj, TCollection *coll,TFileMergeInfo *info);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::TH2EFT*)
   {
      ::TH2EFT *ptr = nullptr;
      static ::TVirtualIsAProxy* isa_proxy = new ::TInstrumentedIsAProxy< ::TH2EFT >(nullptr);
      static ::ROOT::TGenericClassInfo 
         instance("TH2EFT", ::TH2EFT::Class_Version(), "EFTGenReader/EFTHelperUtilities/interface/TH2EFT.h", 10,
                  typeid(::TH2EFT), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &::TH2EFT::Dictionary, isa_proxy, 4,
                  sizeof(::TH2EFT) );
      instance.SetNew(&new_TH2EFT);
      instance.SetNewArray(&newArray_TH2EFT);
      instance.SetDelete(&delete_TH2EFT);
      instance.SetDeleteArray(&deleteArray_TH2EFT);
      instance.SetDestructor(&destruct_TH2EFT);
      instance.SetDirectoryAutoAdd(&directoryAutoAdd_TH2EFT);
      instance.SetMerge(&merge_TH2EFT);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::TH2EFT*)
   {
      return GenerateInitInstanceLocal((::TH2EFT*)nullptr);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::TH2EFT*)nullptr); R__UseDummy(_R__UNIQUE_DICT_(Init));
} // end of namespace ROOT

//______________________________________________________________________________
atomic_TClass_ptr TH1EFT::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *TH1EFT::Class_Name()
{
   return "TH1EFT";
}

//______________________________________________________________________________
const char *TH1EFT::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TH1EFT*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int TH1EFT::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TH1EFT*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *TH1EFT::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TH1EFT*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *TH1EFT::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TH1EFT*)nullptr)->GetClass(); }
   return fgIsA;
}

//______________________________________________________________________________
atomic_TClass_ptr TH2EFT::fgIsA(nullptr);  // static to hold class pointer

//______________________________________________________________________________
const char *TH2EFT::Class_Name()
{
   return "TH2EFT";
}

//______________________________________________________________________________
const char *TH2EFT::ImplFileName()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TH2EFT*)nullptr)->GetImplFileName();
}

//______________________________________________________________________________
int TH2EFT::ImplFileLine()
{
   return ::ROOT::GenerateInitInstanceLocal((const ::TH2EFT*)nullptr)->GetImplFileLine();
}

//______________________________________________________________________________
TClass *TH2EFT::Dictionary()
{
   fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TH2EFT*)nullptr)->GetClass();
   return fgIsA;
}

//______________________________________________________________________________
TClass *TH2EFT::Class()
{
   if (!fgIsA.load()) { R__LOCKGUARD(gInterpreterMutex); fgIsA = ::ROOT::GenerateInitInstanceLocal((const ::TH2EFT*)nullptr)->GetClass(); }
   return fgIsA;
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_WCPoint(void *p) {
      return  p ? new(p) ::WCPoint : new ::WCPoint;
   }
   static void *newArray_WCPoint(Long_t nElements, void *p) {
      return p ? new(p) ::WCPoint[nElements] : new ::WCPoint[nElements];
   }
   // Wrapper around operator delete
   static void delete_WCPoint(void *p) {
      delete ((::WCPoint*)p);
   }
   static void deleteArray_WCPoint(void *p) {
      delete [] ((::WCPoint*)p);
   }
   static void destruct_WCPoint(void *p) {
      typedef ::WCPoint current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::WCPoint

namespace ROOT {
   // Wrappers around operator new
   static void *new_WCFit(void *p) {
      return  p ? new(p) ::WCFit : new ::WCFit;
   }
   static void *newArray_WCFit(Long_t nElements, void *p) {
      return p ? new(p) ::WCFit[nElements] : new ::WCFit[nElements];
   }
   // Wrapper around operator delete
   static void delete_WCFit(void *p) {
      delete ((::WCFit*)p);
   }
   static void deleteArray_WCFit(void *p) {
      delete [] ((::WCFit*)p);
   }
   static void destruct_WCFit(void *p) {
      typedef ::WCFit current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::WCFit

//______________________________________________________________________________
void TH1EFT::Streamer(TBuffer &R__b)
{
   // Stream an object of class TH1EFT.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(TH1EFT::Class(),this);
   } else {
      R__b.WriteClassBuffer(TH1EFT::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_TH1EFT(void *p) {
      return  p ? new(p) ::TH1EFT : new ::TH1EFT;
   }
   static void *newArray_TH1EFT(Long_t nElements, void *p) {
      return p ? new(p) ::TH1EFT[nElements] : new ::TH1EFT[nElements];
   }
   // Wrapper around operator delete
   static void delete_TH1EFT(void *p) {
      delete ((::TH1EFT*)p);
   }
   static void deleteArray_TH1EFT(void *p) {
      delete [] ((::TH1EFT*)p);
   }
   static void destruct_TH1EFT(void *p) {
      typedef ::TH1EFT current_t;
      ((current_t*)p)->~current_t();
   }
   // Wrapper around the directory auto add.
   static void directoryAutoAdd_TH1EFT(void *p, TDirectory *dir) {
      ((::TH1EFT*)p)->DirectoryAutoAdd(dir);
   }
   // Wrapper around the merge function.
   static Long64_t  merge_TH1EFT(void *obj,TCollection *coll,TFileMergeInfo *) {
      return ((::TH1EFT*)obj)->Merge(coll);
   }
} // end of namespace ROOT for class ::TH1EFT

//______________________________________________________________________________
void TH2EFT::Streamer(TBuffer &R__b)
{
   // Stream an object of class TH2EFT.

   if (R__b.IsReading()) {
      R__b.ReadClassBuffer(TH2EFT::Class(),this);
   } else {
      R__b.WriteClassBuffer(TH2EFT::Class(),this);
   }
}

namespace ROOT {
   // Wrappers around operator new
   static void *new_TH2EFT(void *p) {
      return  p ? new(p) ::TH2EFT : new ::TH2EFT;
   }
   static void *newArray_TH2EFT(Long_t nElements, void *p) {
      return p ? new(p) ::TH2EFT[nElements] : new ::TH2EFT[nElements];
   }
   // Wrapper around operator delete
   static void delete_TH2EFT(void *p) {
      delete ((::TH2EFT*)p);
   }
   static void deleteArray_TH2EFT(void *p) {
      delete [] ((::TH2EFT*)p);
   }
   static void destruct_TH2EFT(void *p) {
      typedef ::TH2EFT current_t;
      ((current_t*)p)->~current_t();
   }
   // Wrapper around the directory auto add.
   static void directoryAutoAdd_TH2EFT(void *p, TDirectory *dir) {
      ((::TH2EFT*)p)->DirectoryAutoAdd(dir);
   }
   // Wrapper around the merge function.
   static Long64_t  merge_TH2EFT(void *obj,TCollection *coll,TFileMergeInfo *) {
      return ((::TH2EFT*)obj)->Merge(coll);
   }
} // end of namespace ROOT for class ::TH2EFT

namespace {
  void TriggerDictionaryInitialization_EFTGenReaderEFTHelperUtilities_xr_Impl() {
    static const char* headers[] = {
"0",
nullptr
    };
    static const char* includePaths[] = {
"/uscms/homes/b/bozek/EFT_workshop24_v2/cmseft/generation/CMSSW_13_0_14/src",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/cms/cmssw/CMSSW_13_0_14/src",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/pcre/8.43-5dcc901acc02f624b22dd9840b2357e8/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/bz2lib/1.0.6-2c1f18484cb66c30aba7929f2be5e7d4/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/gsl/2.6-fcf47bcbedd800ca8386c7e2920fa474/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/libuuid/2.34-0451b31e1b9a58c6aeefab41c18eea34/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/xz/5.2.5-83d0a00b575efd1701e07bedf7977343/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/zlib/1.2.11-3dfb2715f3608466b74431b80eb9d788/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/eigen/82dd3710dac619448f50331c1d6a35da673f764a-b0dc243d10365424e66e60c822ab818e/include/eigen3",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/fmt/8.0.1-557ae4739f3cbc76e428d57162bae99b/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/md5/1.0.0-e68283f2de2e2e709a0db99db3b53205/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/OpenBLAS/0.3.15-26c67b8b638762cfd2e2bcfc936e3ec7/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/external/tinyxml2/6.2.0-20b4f0dfd078828bfb8e7fdd5ba85221/include",
"/cvmfs/cms.cern.ch/el8_amd64_gcc11/lcg/root/6.26.11-fec5b250e1cd56b91a094709de26e5b8/include/",
"/uscms/homes/b/bozek/EFT_workshop24_v2/cmseft/generation/CMSSW_13_0_14/",
nullptr
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "EFTGenReaderEFTHelperUtilities_xr dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_AutoLoading_Map;
class __attribute__((annotate("$clingAutoload$EFTGenReader/EFTHelperUtilities/interface/WCPoint.h")))  WCPoint;
class __attribute__((annotate("$clingAutoload$EFTGenReader/EFTHelperUtilities/interface/WCFit.h")))  WCFit;
class __attribute__((annotate(R"ATTRDUMP(ROOT needs this here)ATTRDUMP"))) __attribute__((annotate(R"ATTRDUMP(ROOT needs this here)ATTRDUMP"))) __attribute__((annotate(R"ATTRDUMP(ROOT needs this here)ATTRDUMP"))) __attribute__((annotate(R"ATTRDUMP(ROOT needs this here)ATTRDUMP"))) __attribute__((annotate("$clingAutoload$EFTGenReader/EFTHelperUtilities/interface/TH1EFT.h")))  TH1EFT;
class __attribute__((annotate(R"ATTRDUMP(ROOT needs this here)ATTRDUMP"))) __attribute__((annotate(R"ATTRDUMP(ROOT needs this here)ATTRDUMP"))) __attribute__((annotate(R"ATTRDUMP(ROOT needs this here)ATTRDUMP"))) __attribute__((annotate(R"ATTRDUMP(ROOT needs this here)ATTRDUMP"))) __attribute__((annotate("$clingAutoload$EFTGenReader/EFTHelperUtilities/interface/TH2EFT.h")))  TH2EFT;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "EFTGenReaderEFTHelperUtilities_xr dictionary payload"

#ifndef CMS_DICT_IMPL
  #define CMS_DICT_IMPL 1
#endif
#ifndef _REENTRANT
  #define _REENTRANT 1
#endif
#ifndef GNUSOURCE
  #define GNUSOURCE 1
#endif
#ifndef __STRICT_ANSI__
  #define __STRICT_ANSI__ 1
#endif
#ifndef GNU_GCC
  #define GNU_GCC 1
#endif
#ifndef _GNU_SOURCE
  #define _GNU_SOURCE 1
#endif
#ifndef EIGEN_DONT_PARALLELIZE
  #define EIGEN_DONT_PARALLELIZE 1
#endif
#ifndef TBB_USE_GLIBCXX_VERSION
  #define TBB_USE_GLIBCXX_VERSION 110201
#endif
#ifndef TBB_SUPPRESS_DEPRECATED_MESSAGES
  #define TBB_SUPPRESS_DEPRECATED_MESSAGES 1
#endif
#ifndef TBB_PREVIEW_RESUMABLE_TASKS
  #define TBB_PREVIEW_RESUMABLE_TASKS 1
#endif
#ifndef TBB_PREVIEW_TASK_GROUP_EXTENSIONS
  #define TBB_PREVIEW_TASK_GROUP_EXTENSIONS 1
#endif
#ifndef BOOST_SPIRIT_THREADSAFE
  #define BOOST_SPIRIT_THREADSAFE 1
#endif
#ifndef PHOENIX_THREADSAFE
  #define PHOENIX_THREADSAFE 1
#endif
#ifndef BOOST_MATH_DISABLE_STD_FPCLASSIFY
  #define BOOST_MATH_DISABLE_STD_FPCLASSIFY 1
#endif
#ifndef BOOST_UUID_RANDOM_PROVIDER_FORCE_POSIX
  #define BOOST_UUID_RANDOM_PROVIDER_FORCE_POSIX 1
#endif
#ifndef CMSSW_GIT_HASH
  #define CMSSW_GIT_HASH "CMSSW_13_0_14"
#endif
#ifndef PROJECT_NAME
  #define PROJECT_NAME "CMSSW"
#endif
#ifndef PROJECT_VERSION
  #define PROJECT_VERSION "CMSSW_13_0_14"
#endif
#ifndef CMSSW_REFLEX_DICT
  #define CMSSW_REFLEX_DICT 1
#endif

#define _BACKWARD_BACKWARD_WARNING_H
// Inline headers
//#include "EFTGenReader/GenReader/interface/WCPoint.h"
//#include "EFTGenReader/GenReader/interface/WCFit.h"
//#include "EFTGenReader/GenReader/interface/TH1EFT.h"
#include "EFTGenReader/EFTHelperUtilities/interface/WCPoint.h"
#include "EFTGenReader/EFTHelperUtilities/interface/WCFit.h"
#include "EFTGenReader/EFTHelperUtilities/interface/TH1EFT.h"
#include "EFTGenReader/EFTHelperUtilities/interface/TH2EFT.h"

#ifndef EFTGENREADER_DUMMY_OBJS
#define EFTGENREADER_DUMMY_OBJS

namespace {
    struct WC_Objects {
        WCPoint dummy_wcpoint;
        WCFit dummy_wcfit;
        TH1EFT dummy_th1eft;
    };
}

#endif

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[] = {
"TH1EFT", payloadCode, "@",
"TH2EFT", payloadCode, "@",
"WCFit", payloadCode, "@",
"WCPoint", payloadCode, "@",
nullptr
};
    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("EFTGenReaderEFTHelperUtilities_xr",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_EFTGenReaderEFTHelperUtilities_xr_Impl, {}, classesHeaders, /*hasCxxModule*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_EFTGenReaderEFTHelperUtilities_xr_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_EFTGenReaderEFTHelperUtilities_xr() {
  TriggerDictionaryInitialization_EFTGenReaderEFTHelperUtilities_xr_Impl();
}
