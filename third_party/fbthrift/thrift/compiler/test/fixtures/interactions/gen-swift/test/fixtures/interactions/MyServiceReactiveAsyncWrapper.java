/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

package test.fixtures.interactions;

import java.util.*;

public class MyServiceReactiveAsyncWrapper 
  implements MyService.Async {
  private MyService.Reactive _delegate;

  public MyServiceReactiveAsyncWrapper(MyService.Reactive _delegate) {
    
    this._delegate = _delegate;
  }

  public MyServiceReactiveAsyncWrapper(org.apache.thrift.ProtocolId _protocolId, reactor.core.publisher.Mono<? extends com.facebook.swift.transport.client.RpcClient> _rpcClient, Map<String, String> _headers, Map<String, String> _persistentHeaders) {
    this(new MyServiceReactiveClient(_protocolId, _rpcClient, _headers, _persistentHeaders));
  }

  @java.lang.Override
  public void close() {
    _delegate.dispose();
  }

  @java.lang.Override
  public com.google.common.util.concurrent.ListenableFuture<Void> foo() {
      return com.facebook.swift.transport.util.FutureUtil.toListenableFuture(_delegate.foo());
  }

  @java.lang.Override
  public com.google.common.util.concurrent.ListenableFuture<Void> foo(
    com.facebook.swift.transport.client.RpcOptions rpcOptions) {
      return com.facebook.swift.transport.util.FutureUtil.toListenableFuture(_delegate.foo( rpcOptions));
  }

  @java.lang.Override
  public com.google.common.util.concurrent.ListenableFuture<com.facebook.swift.transport.client.ResponseWrapper<Void>> fooWrapper(
    com.facebook.swift.transport.client.RpcOptions rpcOptions) {
    return com.facebook.swift.transport.util.FutureUtil.toListenableFuture(_delegate.fooWrapper( rpcOptions));
  }

}