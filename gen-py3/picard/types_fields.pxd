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
    uint16_t as cuint16_t,
    uint32_t as cuint32_t,
)
from libcpp.string cimport string
from libcpp cimport bool as cbool, nullptr, nullptr_t
from cpython cimport bool as pbool
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.utility cimport move as cmove
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from libcpp.unordered_map cimport unordered_map as cumap
from thrift.py3.exceptions cimport cTException
cimport folly.iobuf as _fbthrift_iobuf
cimport thrift.py3.exceptions
cimport thrift.py3.types
from thrift.py3.common cimport Protocol as __Protocol
from thrift.py3.std_libcpp cimport string_view as __cstring_view
from thrift.py3.types cimport (
    bstring,
    bytes_to_string,
    field_ref as __field_ref,
    optional_field_ref as __optional_field_ref,
    required_field_ref as __required_field_ref,
    StructFieldsSetter as __StructFieldsSetter
)
from folly.optional cimport cOptional as __cOptional


cimport picard.types as _picard_types



ctypedef void (*__SQLSchema_FieldsSetterFunc)(__SQLSchema_FieldsSetter, object) except *

cdef class __SQLSchema_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cSQLSchema* _struct_cpp_obj
    cdef cumap[__cstring_view, __SQLSchema_FieldsSetterFunc] _setters

    @staticmethod
    cdef __SQLSchema_FieldsSetter create(_picard_types.cSQLSchema* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *
    cdef void _set_field_1(self, _fbthrift_value) except *
    cdef void _set_field_2(self, _fbthrift_value) except *
    cdef void _set_field_3(self, _fbthrift_value) except *
    cdef void _set_field_4(self, _fbthrift_value) except *
    cdef void _set_field_5(self, _fbthrift_value) except *
    cdef void _set_field_6(self, _fbthrift_value) except *


ctypedef void (*__RegisterSQLSchemaException_FieldsSetterFunc)(__RegisterSQLSchemaException_FieldsSetter, object) except *

cdef class __RegisterSQLSchemaException_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cRegisterSQLSchemaException* _struct_cpp_obj
    cdef cumap[__cstring_view, __RegisterSQLSchemaException_FieldsSetterFunc] _setters

    @staticmethod
    cdef __RegisterSQLSchemaException_FieldsSetter create(_picard_types.cRegisterSQLSchemaException* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *
    cdef void _set_field_1(self, _fbthrift_value) except *


ctypedef void (*__RegisterTokenizerException_FieldsSetterFunc)(__RegisterTokenizerException_FieldsSetter, object) except *

cdef class __RegisterTokenizerException_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cRegisterTokenizerException* _struct_cpp_obj
    cdef cumap[__cstring_view, __RegisterTokenizerException_FieldsSetterFunc] _setters

    @staticmethod
    cdef __RegisterTokenizerException_FieldsSetter create(_picard_types.cRegisterTokenizerException* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *


ctypedef void (*__TokenizerNotRegisteredException_FieldsSetterFunc)(__TokenizerNotRegisteredException_FieldsSetter, object) except *

cdef class __TokenizerNotRegisteredException_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cTokenizerNotRegisteredException* _struct_cpp_obj
    cdef cumap[__cstring_view, __TokenizerNotRegisteredException_FieldsSetterFunc] _setters

    @staticmethod
    cdef __TokenizerNotRegisteredException_FieldsSetter create(_picard_types.cTokenizerNotRegisteredException* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *


ctypedef void (*__TokenizerPrefixException_FieldsSetterFunc)(__TokenizerPrefixException_FieldsSetter, object) except *

cdef class __TokenizerPrefixException_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cTokenizerPrefixException* _struct_cpp_obj
    cdef cumap[__cstring_view, __TokenizerPrefixException_FieldsSetterFunc] _setters

    @staticmethod
    cdef __TokenizerPrefixException_FieldsSetter create(_picard_types.cTokenizerPrefixException* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *


ctypedef void (*__ModeException_FieldsSetterFunc)(__ModeException_FieldsSetter, object) except *

cdef class __ModeException_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cModeException* _struct_cpp_obj
    cdef cumap[__cstring_view, __ModeException_FieldsSetterFunc] _setters

    @staticmethod
    cdef __ModeException_FieldsSetter create(_picard_types.cModeException* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *


ctypedef void (*__FeedException_FieldsSetterFunc)(__FeedException_FieldsSetter, object) except *

cdef class __FeedException_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cFeedException* _struct_cpp_obj
    cdef cumap[__cstring_view, __FeedException_FieldsSetterFunc] _setters

    @staticmethod
    cdef __FeedException_FieldsSetter create(_picard_types.cFeedException* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *


ctypedef void (*__FeedParseFailure_FieldsSetterFunc)(__FeedParseFailure_FieldsSetter, object) except *

cdef class __FeedParseFailure_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cFeedParseFailure* _struct_cpp_obj
    cdef cumap[__cstring_view, __FeedParseFailure_FieldsSetterFunc] _setters

    @staticmethod
    cdef __FeedParseFailure_FieldsSetter create(_picard_types.cFeedParseFailure* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *
    cdef void _set_field_1(self, _fbthrift_value) except *
    cdef void _set_field_2(self, _fbthrift_value) except *


ctypedef void (*__FeedTimeoutFailure_FieldsSetterFunc)(__FeedTimeoutFailure_FieldsSetter, object) except *

cdef class __FeedTimeoutFailure_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cFeedTimeoutFailure* _struct_cpp_obj
    cdef cumap[__cstring_view, __FeedTimeoutFailure_FieldsSetterFunc] _setters

    @staticmethod
    cdef __FeedTimeoutFailure_FieldsSetter create(_picard_types.cFeedTimeoutFailure* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *


ctypedef void (*__FeedPartialSuccess_FieldsSetterFunc)(__FeedPartialSuccess_FieldsSetter, object) except *

cdef class __FeedPartialSuccess_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cFeedPartialSuccess* _struct_cpp_obj
    cdef cumap[__cstring_view, __FeedPartialSuccess_FieldsSetterFunc] _setters

    @staticmethod
    cdef __FeedPartialSuccess_FieldsSetter create(_picard_types.cFeedPartialSuccess* struct_cpp_obj)


ctypedef void (*__FeedCompleteSuccess_FieldsSetterFunc)(__FeedCompleteSuccess_FieldsSetter, object) except *

cdef class __FeedCompleteSuccess_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cFeedCompleteSuccess* _struct_cpp_obj
    cdef cumap[__cstring_view, __FeedCompleteSuccess_FieldsSetterFunc] _setters

    @staticmethod
    cdef __FeedCompleteSuccess_FieldsSetter create(_picard_types.cFeedCompleteSuccess* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *


ctypedef void (*__BatchFeedResult_FieldsSetterFunc)(__BatchFeedResult_FieldsSetter, object) except *

cdef class __BatchFeedResult_FieldsSetter(__StructFieldsSetter):
    cdef _picard_types.cBatchFeedResult* _struct_cpp_obj
    cdef cumap[__cstring_view, __BatchFeedResult_FieldsSetterFunc] _setters

    @staticmethod
    cdef __BatchFeedResult_FieldsSetter create(_picard_types.cBatchFeedResult* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *
    cdef void _set_field_1(self, _fbthrift_value) except *
    cdef void _set_field_2(self, _fbthrift_value) except *

