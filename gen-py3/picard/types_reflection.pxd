#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#


from thrift.py3.reflection cimport (
    StructSpec as __StructSpec,
    ListSpec as __ListSpec,
    SetSpec as __SetSpec,
    MapSpec as __MapSpec,
    FieldSpec as __FieldSpec,
)

cdef __StructSpec get_reflection__SQLSchema()

cdef __StructSpec get_reflection__RegisterSQLSchemaException()

cdef __StructSpec get_reflection__RegisterTokenizerException()

cdef __StructSpec get_reflection__TokenizerNotRegisteredException()

cdef __StructSpec get_reflection__TokenizerPrefixException()

cdef __StructSpec get_reflection__ModeException()

cdef __StructSpec get_reflection__FeedFatalException()

cdef __StructSpec get_reflection__FeedException()

cdef __StructSpec get_reflection__FeedParseFailure()

cdef __StructSpec get_reflection__FeedTimeoutFailure()

cdef __StructSpec get_reflection__FeedPartialSuccess()

cdef __StructSpec get_reflection__FeedCompleteSuccess()

cdef __StructSpec get_reflection__FeedResult()

cdef __StructSpec get_reflection__BatchFeedResult()

cdef __ListSpec get_reflection__List__i64()

cdef __ListSpec get_reflection__List__List__i64()

cdef __ListSpec get_reflection__List__BatchFeedResult()

cdef __MapSpec get_reflection__Map__string_string()

cdef __MapSpec get_reflection__Map__string_ColumnType()

cdef __ListSpec get_reflection__List__string()

cdef __MapSpec get_reflection__Map__string_List__string()
