/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#include <src/gen-py3/module/services_wrapper.h>
#include <src/gen-py3/module/services_api.h>
#include <thrift/lib/cpp2/async/AsyncProcessor.h>

namespace cpp2 {

MyRootWrapper::MyRootWrapper(PyObject *obj, folly::Executor* exc)
  : if_object(obj), executor(exc)
  {
    import_module__services();
  }


void MyRootWrapper::async_tm_do_root(
  std::unique_ptr<apache::thrift::HandlerCallback<void>> callback) {
  auto ctx = callback->getRequestContext();
  folly::via(
    this->executor,
    [this, ctx,
     callback = std::move(callback)    ]() mutable {
        auto [promise, future] = folly::makePromiseContract<folly::Unit>();
        call_cy_MyRoot_do_root(
            this->if_object,
            ctx,
            std::move(promise)        );
        std::move(future).via(this->executor).thenTry([callback = std::move(callback)](folly::Try<folly::Unit>&& t) {
          (void)t;
          callback->complete(std::move(t));
        });
    });
}
std::shared_ptr<apache::thrift::ServerInterface> MyRootInterface(PyObject *if_object, folly::Executor *exc) {
  return std::make_shared<MyRootWrapper>(if_object, exc);
}


MyNodeWrapper::MyNodeWrapper(PyObject *obj, folly::Executor* exc)
  : ::cpp2::MyRootWrapper(obj, exc)
  {
    import_module__services();
  }

void MyNodeWrapper::async_tm_do_mid(
  std::unique_ptr<apache::thrift::HandlerCallback<void>> callback) {
  auto ctx = callback->getRequestContext();
  folly::via(
    this->executor,
    [this, ctx,
     callback = std::move(callback)    ]() mutable {
        auto [promise, future] = folly::makePromiseContract<folly::Unit>();
        call_cy_MyNode_do_mid(
            this->if_object,
            ctx,
            std::move(promise)        );
        std::move(future).via(this->executor).thenTry([callback = std::move(callback)](folly::Try<folly::Unit>&& t) {
          (void)t;
          callback->complete(std::move(t));
        });
    });
}
std::shared_ptr<apache::thrift::ServerInterface> MyNodeInterface(PyObject *if_object, folly::Executor *exc) {
  return std::make_shared<MyNodeWrapper>(if_object, exc);
}


MyLeafWrapper::MyLeafWrapper(PyObject *obj, folly::Executor* exc)
  : ::cpp2::MyNodeWrapper(obj, exc)
  {
    import_module__services();
  }

void MyLeafWrapper::async_tm_do_leaf(
  std::unique_ptr<apache::thrift::HandlerCallback<void>> callback) {
  auto ctx = callback->getRequestContext();
  folly::via(
    this->executor,
    [this, ctx,
     callback = std::move(callback)    ]() mutable {
        auto [promise, future] = folly::makePromiseContract<folly::Unit>();
        call_cy_MyLeaf_do_leaf(
            this->if_object,
            ctx,
            std::move(promise)        );
        std::move(future).via(this->executor).thenTry([callback = std::move(callback)](folly::Try<folly::Unit>&& t) {
          (void)t;
          callback->complete(std::move(t));
        });
    });
}
std::shared_ptr<apache::thrift::ServerInterface> MyLeafInterface(PyObject *if_object, folly::Executor *exc) {
  return std::make_shared<MyLeafWrapper>(if_object, exc);
}
} // namespace cpp2
