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


cimport module.types as _module_types



ctypedef void (*__Color_FieldsSetterFunc)(__Color_FieldsSetter, object) except *

cdef class __Color_FieldsSetter(__StructFieldsSetter):
    cdef _module_types.cColor* _struct_cpp_obj
    cdef cumap[__cstring_view, __Color_FieldsSetterFunc] _setters

    @staticmethod
    cdef __Color_FieldsSetter create(_module_types.cColor* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *
    cdef void _set_field_1(self, _fbthrift_value) except *
    cdef void _set_field_2(self, _fbthrift_value) except *
    cdef void _set_field_3(self, _fbthrift_value) except *


ctypedef void (*__Vehicle_FieldsSetterFunc)(__Vehicle_FieldsSetter, object) except *

cdef class __Vehicle_FieldsSetter(__StructFieldsSetter):
    cdef _module_types.cVehicle* _struct_cpp_obj
    cdef cumap[__cstring_view, __Vehicle_FieldsSetterFunc] _setters

    @staticmethod
    cdef __Vehicle_FieldsSetter create(_module_types.cVehicle* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *
    cdef void _set_field_1(self, _fbthrift_value) except *
    cdef void _set_field_2(self, _fbthrift_value) except *
    cdef void _set_field_3(self, _fbthrift_value) except *
    cdef void _set_field_4(self, _fbthrift_value) except *


ctypedef void (*__Person_FieldsSetterFunc)(__Person_FieldsSetter, object) except *

cdef class __Person_FieldsSetter(__StructFieldsSetter):
    cdef _module_types.cPerson* _struct_cpp_obj
    cdef cumap[__cstring_view, __Person_FieldsSetterFunc] _setters

    @staticmethod
    cdef __Person_FieldsSetter create(_module_types.cPerson* struct_cpp_obj)
    cdef void _set_field_0(self, _fbthrift_value) except *
    cdef void _set_field_1(self, _fbthrift_value) except *
    cdef void _set_field_2(self, _fbthrift_value) except *
    cdef void _set_field_3(self, _fbthrift_value) except *
    cdef void _set_field_4(self, _fbthrift_value) except *
    cdef void _set_field_5(self, _fbthrift_value) except *
    cdef void _set_field_6(self, _fbthrift_value) except *
    cdef void _set_field_7(self, _fbthrift_value) except *
    cdef void _set_field_8(self, _fbthrift_value) except *
    cdef void _set_field_9(self, _fbthrift_value) except *

