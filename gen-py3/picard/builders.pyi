#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

import typing as _typing

import folly.iobuf as _fbthrift_iobuf
import thrift.py3.builder


import picard.types as _picard_types


class SQLSchema_Builder(thrift.py3.builder.StructBuilder):
    columnNames: _typing.Optional[dict]
    columnTypes: _typing.Optional[dict]
    tableNames: _typing.Optional[dict]
    columnToTable: _typing.Optional[dict]
    tableToColumns: _typing.Optional[dict]
    foreignKeys: _typing.Optional[dict]
    primaryKeys: _typing.Optional[list]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class RegisterSQLSchemaException_Builder(thrift.py3.builder.StructBuilder):
    dbId: _typing.Optional[str]
    message: _typing.Optional[str]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class RegisterTokenizerException_Builder(thrift.py3.builder.StructBuilder):
    message: _typing.Optional[str]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class TokenizerNotRegisteredException_Builder(thrift.py3.builder.StructBuilder):
    message: _typing.Optional[str]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class TokenizerPrefixException_Builder(thrift.py3.builder.StructBuilder):
    message: _typing.Optional[str]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class ModeException_Builder(thrift.py3.builder.StructBuilder):
    message: _typing.Optional[str]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class FeedFatalException_Builder(thrift.py3.builder.StructBuilder):
    tokenizerNotRegisteredException: _typing.Any
    tokenizerPrefixException: _typing.Any
    modeException: _typing.Any

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class FeedException_Builder(thrift.py3.builder.StructBuilder):
    feedFatalException: _typing.Any

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class FeedParseFailure_Builder(thrift.py3.builder.StructBuilder):
    input: _typing.Optional[str]
    contexts: _typing.Optional[list]
    description: _typing.Optional[str]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class FeedTimeoutFailure_Builder(thrift.py3.builder.StructBuilder):
    message: _typing.Optional[str]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class FeedPartialSuccess_Builder(thrift.py3.builder.StructBuilder):

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class FeedCompleteSuccess_Builder(thrift.py3.builder.StructBuilder):
    leftover: _typing.Optional[str]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class FeedResult_Builder(thrift.py3.builder.StructBuilder):
    feedParseFailure: _typing.Any
    feedTimeoutFailure: _typing.Any
    feedPartialSuccess: _typing.Any
    feedCompleteSuccess: _typing.Any

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class BatchFeedResult_Builder(thrift.py3.builder.StructBuilder):
    batchId: _typing.Optional[int]
    topToken: _typing.Optional[int]
    feedResult: _typing.Any

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


