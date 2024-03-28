/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#pragma once
#include <src/gen-cpp2/MyService.h>
#include <src/gen-cpp2/DbMixedStackArguments.h>

#include <folly/futures/Future.h>
#include <folly/futures/Promise.h>
#include <folly/Unit.h>
#include <thrift/lib/py3/clientcallbacks.h>
#include <thrift/lib/py3/client_wrapper.h>

#include <cstdint>
#include <functional>
#include <map>
#include <memory>
#include <set>
#include <vector>

namespace cpp2 {

class MyServiceClientWrapper : public ::thrift::py3::ClientWrapper {
  public:
    using ::thrift::py3::ClientWrapper::ClientWrapper;

    folly::Future<folly::Unit> ping(
      apache::thrift::RpcOptions& rpcOptions);
    folly::Future<std::string> getRandomData(
      apache::thrift::RpcOptions& rpcOptions);
    folly::Future<folly::Unit> sink(
      apache::thrift::RpcOptions& rpcOptions,
      int64_t arg_sink);
    folly::Future<folly::Unit> putDataById(
      apache::thrift::RpcOptions& rpcOptions,
      int64_t arg_id,
      std::string arg_data);
    folly::Future<bool> hasDataById(
      apache::thrift::RpcOptions& rpcOptions,
      int64_t arg_id);
    folly::Future<std::string> getDataById(
      apache::thrift::RpcOptions& rpcOptions,
      int64_t arg_id);
    folly::Future<folly::Unit> deleteDataById(
      apache::thrift::RpcOptions& rpcOptions,
      int64_t arg_id);
    folly::Future<folly::Unit> lobDataById(
      apache::thrift::RpcOptions& rpcOptions,
      int64_t arg_id,
      std::string arg_data);
};


class DbMixedStackArgumentsClientWrapper : public ::thrift::py3::ClientWrapper {
  public:
    using ::thrift::py3::ClientWrapper::ClientWrapper;

    folly::Future<std::string> getDataByKey0(
      apache::thrift::RpcOptions& rpcOptions,
      std::string arg_key);
    folly::Future<std::string> getDataByKey1(
      apache::thrift::RpcOptions& rpcOptions,
      std::string arg_key);
};


} // namespace cpp2