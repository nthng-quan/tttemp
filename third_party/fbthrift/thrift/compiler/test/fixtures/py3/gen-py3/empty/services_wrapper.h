/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#pragma once
#include <src/gen-cpp2/NullService.h>
#include <folly/python/futures.h>
#include <Python.h>

#include <memory>

namespace cpp2 {

class NullServiceWrapper : virtual public NullServiceSvIf {
  protected:
    PyObject *if_object;
    folly::Executor *executor;
  public:
    explicit NullServiceWrapper(PyObject *if_object, folly::Executor *exc);
};

std::shared_ptr<apache::thrift::ServerInterface> NullServiceInterface(PyObject *if_object, folly::Executor *exc);
} // namespace cpp2