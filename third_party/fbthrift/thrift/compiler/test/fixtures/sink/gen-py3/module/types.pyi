#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

import folly.iobuf as _fbthrift_iobuf
import thrift.py3.types
import thrift.py3.exceptions
from thrift.py3.types import __NotSet, NOTSET
import typing as _typing
from typing_extensions import Final

import sys
import itertools


__property__ = property


class InitialResponse(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        content: bool
        pass

    content: Final[str] = ...

    def __init__(
        self, *,
        content: _typing.Optional[str]=None
    ) -> None: ...

    def __call__(
        self, *,
        content: _typing.Union[str, __NotSet, None]=NOTSET
    ) -> InitialResponse: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['InitialResponse'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'InitialResponse') -> bool: ...
    def __gt__(self, other: 'InitialResponse') -> bool: ...
    def __le__(self, other: 'InitialResponse') -> bool: ...
    def __ge__(self, other: 'InitialResponse') -> bool: ...


class FinalResponse(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        content: bool
        pass

    content: Final[str] = ...

    def __init__(
        self, *,
        content: _typing.Optional[str]=None
    ) -> None: ...

    def __call__(
        self, *,
        content: _typing.Union[str, __NotSet, None]=NOTSET
    ) -> FinalResponse: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['FinalResponse'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'FinalResponse') -> bool: ...
    def __gt__(self, other: 'FinalResponse') -> bool: ...
    def __le__(self, other: 'FinalResponse') -> bool: ...
    def __ge__(self, other: 'FinalResponse') -> bool: ...


class SinkPayload(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        content: bool
        pass

    content: Final[str] = ...

    def __init__(
        self, *,
        content: _typing.Optional[str]=None
    ) -> None: ...

    def __call__(
        self, *,
        content: _typing.Union[str, __NotSet, None]=NOTSET
    ) -> SinkPayload: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['SinkPayload'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'SinkPayload') -> bool: ...
    def __gt__(self, other: 'SinkPayload') -> bool: ...
    def __le__(self, other: 'SinkPayload') -> bool: ...
    def __ge__(self, other: 'SinkPayload') -> bool: ...


class CompatibleWithKeywordSink(thrift.py3.types.Struct, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        sink: bool
        pass

    sink: Final[str] = ...

    def __init__(
        self, *,
        sink: _typing.Optional[str]=None
    ) -> None: ...

    def __call__(
        self, *,
        sink: _typing.Union[str, __NotSet, None]=NOTSET
    ) -> CompatibleWithKeywordSink: ...

    def __reduce__(self) -> _typing.Tuple[_typing.Callable, _typing.Tuple[_typing.Type['CompatibleWithKeywordSink'], bytes]]: ...
    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'CompatibleWithKeywordSink') -> bool: ...
    def __gt__(self, other: 'CompatibleWithKeywordSink') -> bool: ...
    def __le__(self, other: 'CompatibleWithKeywordSink') -> bool: ...
    def __ge__(self, other: 'CompatibleWithKeywordSink') -> bool: ...


class InitialException(thrift.py3.exceptions.GeneratedError, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        reason: bool
        pass

    reason: Final[str] = ...

    def __init__(
        self, *,
        reason: _typing.Optional[str]=None
    ) -> None: ...

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'InitialException') -> bool: ...
    def __gt__(self, other: 'InitialException') -> bool: ...
    def __le__(self, other: 'InitialException') -> bool: ...
    def __ge__(self, other: 'InitialException') -> bool: ...


class SinkException1(thrift.py3.exceptions.GeneratedError, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        reason: bool
        pass

    reason: Final[str] = ...

    def __init__(
        self, *,
        reason: _typing.Optional[str]=None
    ) -> None: ...

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'SinkException1') -> bool: ...
    def __gt__(self, other: 'SinkException1') -> bool: ...
    def __le__(self, other: 'SinkException1') -> bool: ...
    def __ge__(self, other: 'SinkException1') -> bool: ...


class SinkException2(thrift.py3.exceptions.GeneratedError, _typing.Hashable, _typing.Iterable[_typing.Tuple[str, _typing.Any]]):
    class __fbthrift_IsSet:
        reason: bool
        pass

    reason: Final[int] = ...

    def __init__(
        self, *,
        reason: _typing.Optional[int]=None
    ) -> None: ...

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...
    def __hash__(self) -> int: ...
    def __lt__(self, other: 'SinkException2') -> bool: ...
    def __gt__(self, other: 'SinkException2') -> bool: ...
    def __le__(self, other: 'SinkException2') -> bool: ...
    def __ge__(self, other: 'SinkException2') -> bool: ...

