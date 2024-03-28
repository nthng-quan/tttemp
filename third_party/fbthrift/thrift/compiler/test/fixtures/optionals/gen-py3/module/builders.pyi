#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

import typing as _typing

import folly.iobuf as _fbthrift_iobuf
import thrift.py3.builder


import module.types as _module_types


class Color_Builder(thrift.py3.builder.StructBuilder):
    red: _typing.Optional[float]
    green: _typing.Optional[float]
    blue: _typing.Optional[float]
    alpha: _typing.Optional[float]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class Vehicle_Builder(thrift.py3.builder.StructBuilder):
    color: _typing.Any
    licensePlate: _typing.Optional[str]
    description: _typing.Optional[str]
    name: _typing.Optional[str]
    hasAC: _typing.Optional[bool]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


class Person_Builder(thrift.py3.builder.StructBuilder):
    id: _typing.Optional[int]
    name: _typing.Optional[str]
    age: _typing.Optional[int]
    address: _typing.Optional[str]
    favoriteColor: _typing.Any
    friends: _typing.Optional[set]
    bestFriend: _typing.Optional[int]
    petNames: _typing.Optional[dict]
    afraidOfAnimal: _typing.Optional[_module_types.Animal]
    vehicles: _typing.Optional[list]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...

