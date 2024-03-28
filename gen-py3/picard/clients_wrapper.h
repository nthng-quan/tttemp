/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#pragma once
#include <gen-cpp2/Picard.h>

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

class PicardClientWrapper : public ::thrift::py3::ClientWrapper {
  public:
    using ::thrift::py3::ClientWrapper::ClientWrapper;

    folly::Future<folly::Unit> registerSQLSchema(
      apache::thrift::RpcOptions& rpcOptions,
      std::string arg_dbId,
      ::cpp2::SQLSchema arg_sqlSchema);
    folly::Future<folly::Unit> registerTokenizer(
      apache::thrift::RpcOptions& rpcOptions,
      std::string arg_jsonConfig);
    folly::Future<::cpp2::FeedResult> feed(
      apache::thrift::RpcOptions& rpcOptions,
      std::vector<int64_t> arg_inputIds,
      int64_t arg_token,
      ::cpp2::Mode arg_mode);
    folly::Future<std::vector<::cpp2::BatchFeedResult>> batchFeed(
      apache::thrift::RpcOptions& rpcOptions,
      std::vector<std::vector<int64_t>> arg_inputIds,
      std::vector<std::vector<int64_t>> arg_topTokens,
      ::cpp2::Mode arg_mode);
};


} // namespace cpp2