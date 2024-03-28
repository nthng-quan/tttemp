#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
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
from libcpp.vector cimport vector as vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from libcpp.utility cimport move as cmove
from cython.operator cimport dereference as deref, typeid
from cpython.ref cimport PyObject
from thrift.py3.client cimport cRequestChannel_ptr, makeClientWrapper, cClientWrapper
from thrift.py3.exceptions cimport try_make_shared_exception, create_py_exception
from folly cimport cFollyTry, cFollyUnit, c_unit
from folly.cast cimport down_cast_ptr
from libcpp.typeinfo cimport type_info
import thrift.py3.types
cimport thrift.py3.types
import thrift.py3.client
cimport thrift.py3.client
from thrift.py3.common cimport (
    RpcOptions as __RpcOptions,
    cThriftServiceContext as __fbthrift_cThriftServiceContext,
    cThriftMetadata as __fbthrift_cThriftMetadata,
    ServiceMetadata,
    extractMetadataFromServiceContext,
    MetadataBox as __MetadataBox,
)

from folly.futures cimport bridgeFutureWith
from folly.executor cimport get_executor
cimport folly.iobuf as _fbthrift_iobuf
import folly.iobuf as _fbthrift_iobuf
from folly.iobuf cimport move as move_iobuf
cimport cython

import sys
import types as _py_types
from asyncio import get_event_loop as asyncio_get_event_loop, shield as asyncio_shield, InvalidStateError as asyncio_InvalidStateError

cimport picard.types as _picard_types
import picard.types as _picard_types

cimport picard.services_reflection as _services_reflection

from picard.clients_wrapper cimport cPicardAsyncClient, cPicardClientWrapper


cdef void Picard_registerSQLSchema_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException[_picard_types.cRegisterSQLSchemaException]():
        try:
            exc = _picard_types.RegisterSQLSchemaException.create(try_make_shared_exception[_picard_types.cRegisterSQLSchemaException](result.exception()))
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))
        else:
            pyfuture.set_exception(exc)
    elif result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void Picard_registerTokenizer_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException[_picard_types.cRegisterTokenizerException]():
        try:
            exc = _picard_types.RegisterTokenizerException.create(try_make_shared_exception[_picard_types.cRegisterTokenizerException](result.exception()))
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))
        else:
            pyfuture.set_exception(exc)
    elif result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void Picard_feed_callback(
    cFollyTry[_picard_types.cFeedResult]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException[_picard_types.cFeedException]():
        try:
            exc = _picard_types.FeedException.create(try_make_shared_exception[_picard_types.cFeedException](result.exception()))
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))
        else:
            pyfuture.set_exception(exc)
    elif result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(_picard_types.FeedResult.create(make_shared[_picard_types.cFeedResult](result.value())))
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void Picard_batchFeed_callback(
    cFollyTry[vector[_picard_types.cBatchFeedResult]]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException[_picard_types.cFeedException]():
        try:
            exc = _picard_types.FeedException.create(try_make_shared_exception[_picard_types.cFeedException](result.exception()))
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))
        else:
            pyfuture.set_exception(exc)
    elif result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(_picard_types.List__BatchFeedResult.create(make_shared[vector[_picard_types.cBatchFeedResult]](result.value())))
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))


cdef object _Picard_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class Picard(thrift.py3.client.Client):
    annotations = _Picard_annotations

    cdef const type_info* _typeid(Picard self):
        return &typeid(cPicardAsyncClient)

    cdef bind_client(Picard self, cRequestChannel_ptr&& channel):
        self._client = makeClientWrapper[cPicardAsyncClient, cPicardClientWrapper](
            cmove(channel)
        )

    @cython.always_allow_keywords(True)
    def registerSQLSchema(
            Picard self,
            str dbId not None,
            _picard_types.SQLSchema sqlSchema not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            down_cast_ptr[cPicardClientWrapper, cClientWrapper](self._client.get()).registerSQLSchema(rpc_options._cpp_obj, 
                dbId.encode('UTF-8'),
                deref((<_picard_types.SQLSchema>sqlSchema)._cpp_obj),
            ),
            Picard_registerSQLSchema_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def registerTokenizer(
            Picard self,
            str jsonConfig not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            down_cast_ptr[cPicardClientWrapper, cClientWrapper](self._client.get()).registerTokenizer(rpc_options._cpp_obj, 
                jsonConfig.encode('UTF-8'),
            ),
            Picard_registerTokenizer_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def feed(
            Picard self,
            inputIds not None,
            token not None,
            _picard_types.Mode mode not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        if not isinstance(inputIds, _picard_types.List__i64):
            inputIds = _picard_types.List__i64(inputIds)
        if not isinstance(token, int):
            raise TypeError(f'token is not a {int !r}.')
        else:
            token = <cint64_t> token
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[_picard_types.cFeedResult](
            self._executor,
            down_cast_ptr[cPicardClientWrapper, cClientWrapper](self._client.get()).feed(rpc_options._cpp_obj, 
                deref((<_picard_types.List__i64>inputIds)._cpp_obj),
                token,
                <_picard_types.cMode><int>mode,
            ),
            Picard_feed_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def batchFeed(
            Picard self,
            inputIds not None,
            topTokens not None,
            _picard_types.Mode mode not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        if not isinstance(inputIds, _picard_types.List__List__i64):
            inputIds = _picard_types.List__List__i64(inputIds)
        if not isinstance(topTokens, _picard_types.List__List__i64):
            topTokens = _picard_types.List__List__i64(topTokens)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[vector[_picard_types.cBatchFeedResult]](
            self._executor,
            down_cast_ptr[cPicardClientWrapper, cClientWrapper](self._client.get()).batchFeed(rpc_options._cpp_obj, 
                deref((<_picard_types.List__List__i64>inputIds)._cpp_obj),
                deref((<_picard_types.List__List__i64>topTokens)._cpp_obj),
                <_picard_types.cMode><int>mode,
            ),
            Picard_batchFeed_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)


    @classmethod
    def __get_reflection__(cls):
        return _services_reflection.get_reflection__Picard(for_clients=True)

    @staticmethod
    def __get_metadata__():
        cdef __fbthrift_cThriftMetadata meta
        cdef __fbthrift_cThriftServiceContext context
        ServiceMetadata[_services_reflection.cPicardSvIf].gen(meta, context)
        extractMetadataFromServiceContext(meta, context)
        return __MetadataBox.box(cmove(meta))

    @staticmethod
    def __get_thrift_name__():
        return "picard.Picard"

