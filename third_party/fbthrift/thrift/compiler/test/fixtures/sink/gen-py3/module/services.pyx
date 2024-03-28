#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

cimport cython
from cpython.version cimport PY_VERSION_HEX
from libc.stdint cimport (
    int8_t as cint8_t,
    int16_t as cint16_t,
    int32_t as cint32_t,
    int64_t as cint64_t,
)
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from libcpp.utility cimport move as cmove
from cython.operator cimport dereference as deref
from cpython.ref cimport PyObject
from thrift.py3.exceptions cimport (
    cTApplicationException,
    ApplicationError as __ApplicationError,
    cTApplicationExceptionType__UNKNOWN)
from thrift.py3.server cimport ServiceInterface, RequestContext, Cpp2RequestContext
from thrift.py3.server import RequestContext, pass_context
from folly cimport (
  cFollyPromise,
  cFollyUnit,
  c_unit,
)
from thrift.py3.common cimport (
    cThriftServiceContext as __fbthrift_cThriftServiceContext,
    cThriftMetadata as __fbthrift_cThriftMetadata,
    ServiceMetadata,
    extractMetadataFromServiceContext,
    MetadataBox as __MetadataBox,
)

if PY_VERSION_HEX >= 0x030702F0:  # 3.7.2 Final
    from thrift.py3.server cimport THRIFT_REQUEST_CONTEXT as __THRIFT_REQUEST_CONTEXT

cimport folly.futures
from folly.executor cimport get_executor
cimport folly.iobuf as _fbthrift_iobuf
import folly.iobuf as _fbthrift_iobuf
from folly.iobuf cimport move as move_iobuf
from folly.memory cimport to_shared_ptr as __to_shared_ptr

cimport module.types as _module_types
import module.types as _module_types

cimport module.services_reflection as _services_reflection

import asyncio
import functools
import sys
import traceback
import types as _py_types

from module.services_wrapper cimport cSinkServiceInterface



@cython.auto_pickle(False)
cdef class Promise_:
    cdef cFollyPromise[] cPromise

    @staticmethod
    cdef create(cFollyPromise[] cPromise):
        cdef Promise_ inst = Promise_.__new__(Promise_)
        inst.cPromise = cmove(cPromise)
        return inst

cdef object _SinkService_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class SinkServiceInterface(
    ServiceInterface
):
    annotations = _SinkService_annotations

    def __cinit__(self):
        self._cpp_obj = cSinkServiceInterface(
            <PyObject *> self,
            get_executor()
        )

    @classmethod
    def __get_reflection__(cls):
        return _services_reflection.get_reflection__SinkService(for_clients=False)

    @staticmethod
    def __get_metadata__():
        cdef __fbthrift_cThriftMetadata meta
        cdef __fbthrift_cThriftServiceContext context
        ServiceMetadata[_services_reflection.cSinkServiceSvIf].gen(meta, context)
        extractMetadataFromServiceContext(meta, context)
        return __MetadataBox.box(cmove(meta))

    @staticmethod
    def __get_thrift_name__():
        return "module.SinkService"


