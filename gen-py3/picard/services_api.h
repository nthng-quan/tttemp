/* Generated by Cython 0.29.28 */

#ifndef __PYX_HAVE_API__picard__services
#define __PYX_HAVE_API__picard__services
#ifdef __MINGW64__
#define MS_WIN64
#endif
#include "Python.h"

static void (*__pyx_api_f_6picard_8services_call_cy_Picard_registerSQLSchema)(PyObject *, apache::thrift::Cpp2RequestContext *, folly::Promise<struct folly::Unit> , std::unique_ptr<std::string> , std::unique_ptr<::cpp2::SQLSchema> ) = 0;
#define call_cy_Picard_registerSQLSchema __pyx_api_f_6picard_8services_call_cy_Picard_registerSQLSchema
static void (*__pyx_api_f_6picard_8services_call_cy_Picard_registerTokenizer)(PyObject *, apache::thrift::Cpp2RequestContext *, folly::Promise<struct folly::Unit> , std::unique_ptr<std::string> ) = 0;
#define call_cy_Picard_registerTokenizer __pyx_api_f_6picard_8services_call_cy_Picard_registerTokenizer
static void (*__pyx_api_f_6picard_8services_call_cy_Picard_feed)(PyObject *, apache::thrift::Cpp2RequestContext *, folly::Promise<std::unique_ptr<::cpp2::FeedResult> > , std::unique_ptr<std::vector<int64_t> > , int64_t, ::cpp2::Mode) = 0;
#define call_cy_Picard_feed __pyx_api_f_6picard_8services_call_cy_Picard_feed
static void (*__pyx_api_f_6picard_8services_call_cy_Picard_batchFeed)(PyObject *, apache::thrift::Cpp2RequestContext *, folly::Promise<std::unique_ptr<std::vector<::cpp2::BatchFeedResult> > > , std::unique_ptr<std::vector<std::vector<int64_t> > > , std::unique_ptr<std::vector<std::vector<int64_t> > > , ::cpp2::Mode) = 0;
#define call_cy_Picard_batchFeed __pyx_api_f_6picard_8services_call_cy_Picard_batchFeed
#if !defined(__Pyx_PyIdentifier_FromString)
#if PY_MAJOR_VERSION < 3
  #define __Pyx_PyIdentifier_FromString(s) PyString_FromString(s)
#else
  #define __Pyx_PyIdentifier_FromString(s) PyUnicode_FromString(s)
#endif
#endif

#ifndef __PYX_HAVE_RT_ImportFunction
#define __PYX_HAVE_RT_ImportFunction
static int __Pyx_ImportFunction(PyObject *module, const char *funcname, void (**f)(void), const char *sig) {
    PyObject *d = 0;
    PyObject *cobj = 0;
    union {
        void (*fp)(void);
        void *p;
    } tmp;
    d = PyObject_GetAttrString(module, (char *)"__pyx_capi__");
    if (!d)
        goto bad;
    cobj = PyDict_GetItemString(d, funcname);
    if (!cobj) {
        PyErr_Format(PyExc_ImportError,
            "%.200s does not export expected C function %.200s",
                PyModule_GetName(module), funcname);
        goto bad;
    }
#if PY_VERSION_HEX >= 0x02070000
    if (!PyCapsule_IsValid(cobj, sig)) {
        PyErr_Format(PyExc_TypeError,
            "C function %.200s.%.200s has wrong signature (expected %.500s, got %.500s)",
             PyModule_GetName(module), funcname, sig, PyCapsule_GetName(cobj));
        goto bad;
    }
    tmp.p = PyCapsule_GetPointer(cobj, sig);
#else
    {const char *desc, *s1, *s2;
    desc = (const char *)PyCObject_GetDesc(cobj);
    if (!desc)
        goto bad;
    s1 = desc; s2 = sig;
    while (*s1 != '\0' && *s1 == *s2) { s1++; s2++; }
    if (*s1 != *s2) {
        PyErr_Format(PyExc_TypeError,
            "C function %.200s.%.200s has wrong signature (expected %.500s, got %.500s)",
             PyModule_GetName(module), funcname, sig, desc);
        goto bad;
    }
    tmp.p = PyCObject_AsVoidPtr(cobj);}
#endif
    *f = tmp.fp;
    if (!(*f))
        goto bad;
    Py_DECREF(d);
    return 0;
bad:
    Py_XDECREF(d);
    return -1;
}
#endif


static int import_picard__services(void) {
  PyObject *module = 0;
  module = PyImport_ImportModule("picard.services");
  if (!module) goto bad;
  if (__Pyx_ImportFunction(module, "call_cy_Picard_registerSQLSchema", (void (**)(void))&__pyx_api_f_6picard_8services_call_cy_Picard_registerSQLSchema, "void (PyObject *, apache::thrift::Cpp2RequestContext *, folly::Promise<struct folly::Unit> , std::unique_ptr<std::string> , std::unique_ptr<::cpp2::SQLSchema> )") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "call_cy_Picard_registerTokenizer", (void (**)(void))&__pyx_api_f_6picard_8services_call_cy_Picard_registerTokenizer, "void (PyObject *, apache::thrift::Cpp2RequestContext *, folly::Promise<struct folly::Unit> , std::unique_ptr<std::string> )") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "call_cy_Picard_feed", (void (**)(void))&__pyx_api_f_6picard_8services_call_cy_Picard_feed, "void (PyObject *, apache::thrift::Cpp2RequestContext *, folly::Promise<std::unique_ptr<::cpp2::FeedResult> > , std::unique_ptr<std::vector<int64_t> > , int64_t, ::cpp2::Mode)") < 0) goto bad;
  if (__Pyx_ImportFunction(module, "call_cy_Picard_batchFeed", (void (**)(void))&__pyx_api_f_6picard_8services_call_cy_Picard_batchFeed, "void (PyObject *, apache::thrift::Cpp2RequestContext *, folly::Promise<std::unique_ptr<std::vector<::cpp2::BatchFeedResult> > > , std::unique_ptr<std::vector<std::vector<int64_t> > > , std::unique_ptr<std::vector<std::vector<int64_t> > > , ::cpp2::Mode)") < 0) goto bad;
  Py_DECREF(module); module = 0;
  return 0;
  bad:
  Py_XDECREF(module);
  return -1;
}

#endif /* !__PYX_HAVE_API__picard__services */