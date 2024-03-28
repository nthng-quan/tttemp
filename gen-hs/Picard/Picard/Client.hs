-----------------------------------------------------------------
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
--  @generated
-----------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE BangPatterns #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-overlapping-patterns#-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns#-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
module Picard.Picard.Client
       (Picard, registerSQLSchema, registerSQLSchemaIO,
        send_registerSQLSchema, _build_registerSQLSchema,
        recv_registerSQLSchema, _parse_registerSQLSchema,
        registerTokenizer, registerTokenizerIO, send_registerTokenizer,
        _build_registerTokenizer, recv_registerTokenizer,
        _parse_registerTokenizer, feed, feedIO, send_feed, _build_feed,
        recv_feed, _parse_feed, batchFeed, batchFeedIO, send_batchFeed,
        _build_batchFeed, recv_batchFeed, _parse_batchFeed)
       where
import qualified Control.Arrow as Arrow
import qualified Control.Concurrent as Concurrent
import qualified Control.Exception as Exception
import qualified Control.Monad as Monad
import qualified Control.Monad.Trans.Class as Trans
import qualified Control.Monad.Trans.Reader as Reader
import qualified Data.ByteString.Builder as ByteString
import qualified Data.ByteString.Lazy as LBS
import qualified Data.HashMap.Strict as HashMap
import qualified Data.Int as Int
import qualified Data.List as List
import qualified Data.Proxy as Proxy
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text
import qualified Prelude as Prelude
import qualified Thrift.Binary.Parser as Parser
import qualified Thrift.Codegen as Thrift
import qualified Thrift.Protocol.ApplicationException.Types
       as Thrift
import Data.Monoid ((<>))
import Prelude ((==), (=<<), (>>=), (<$>), (.))
import Picard.Types

data Picard

registerSQLSchema ::
                    (Thrift.Protocol p, Thrift.ClientChannel c,
                     (Thrift.<:) s Picard) =>
                    DBId -> SQLSchema -> Thrift.ThriftM p c s ()
registerSQLSchema __field__dbId __field__sqlSchema
  = do Thrift.ThriftEnv _proxy _channel _opts _counter <- Reader.ask
       Trans.lift
         (registerSQLSchemaIO _proxy _channel _counter _opts __field__dbId
            __field__sqlSchema)

registerSQLSchemaIO ::
                      (Thrift.Protocol p, Thrift.ClientChannel c,
                       (Thrift.<:) s Picard) =>
                      Proxy.Proxy p ->
                        c s ->
                          Thrift.Counter ->
                            Thrift.RpcOptions -> DBId -> SQLSchema -> Prelude.IO ()
registerSQLSchemaIO _proxy _channel _counter _opts __field__dbId
  __field__sqlSchema
  = do (_handle, _sendCob, _recvCob) <- Thrift.mkCallbacks
                                          (recv_registerSQLSchema _proxy)
       send_registerSQLSchema _proxy _channel _counter _sendCob _recvCob
         _opts
         __field__dbId
         __field__sqlSchema
       Thrift.wait _handle

send_registerSQLSchema ::
                         (Thrift.Protocol p, Thrift.ClientChannel c,
                          (Thrift.<:) s Picard) =>
                         Proxy.Proxy p ->
                           c s ->
                             Thrift.Counter ->
                               Thrift.SendCallback ->
                                 Thrift.RecvCallback ->
                                   Thrift.RpcOptions -> DBId -> SQLSchema -> Prelude.IO ()
send_registerSQLSchema _proxy _channel _counter _sendCob _recvCob
  _rpcOpts __field__dbId __field__sqlSchema
  = do _seqNum <- _counter
       let
         _callMsg
           = LBS.toStrict
               (ByteString.toLazyByteString
                  (_build_registerSQLSchema _proxy _seqNum __field__dbId
                     __field__sqlSchema))
       Thrift.sendRequest _channel
         (Thrift.Request _callMsg
            (Thrift.setRpcPriority _rpcOpts Thrift.NormalPriority))
         _sendCob
         _recvCob

recv_registerSQLSchema ::
                         (Thrift.Protocol p) =>
                         Proxy.Proxy p ->
                           Thrift.Response -> Prelude.Either Exception.SomeException ()
recv_registerSQLSchema _proxy (Thrift.Response _response _)
  = Monad.join
      (Arrow.left (Exception.SomeException . Thrift.ProtocolException)
         (Parser.parse (_parse_registerSQLSchema _proxy) _response))

_build_registerSQLSchema ::
                           Thrift.Protocol p =>
                           Proxy.Proxy p ->
                             Int.Int32 -> DBId -> SQLSchema -> ByteString.Builder
_build_registerSQLSchema _proxy _seqNum __field__dbId
  __field__sqlSchema
  = Thrift.genMsgBegin _proxy "registerSQLSchema" 1 _seqNum <>
      Thrift.genStruct _proxy
        (Thrift.genField _proxy "dbId" (Thrift.getStringType _proxy) 1 0
           (Thrift.genText _proxy __field__dbId)
           :
           Thrift.genField _proxy "sqlSchema" (Thrift.getStructType _proxy) 2
             1
             (Thrift.buildStruct _proxy __field__sqlSchema)
             : [])
      <> Thrift.genMsgEnd _proxy

_parse_registerSQLSchema ::
                           Thrift.Protocol p =>
                           Proxy.Proxy p ->
                             Parser.Parser (Prelude.Either Exception.SomeException ())
_parse_registerSQLSchema _proxy
  = do Thrift.MsgBegin _name _msgTy _ <- Thrift.parseMsgBegin _proxy
       _result <- case _msgTy of
                    1 -> Prelude.fail
                           "registerSQLSchema: expected reply but got function call"
                    2 | _name == "registerSQLSchema" ->
                        do let
                             _idMap = HashMap.fromList [("fail", 1)]
                           _fieldBegin <- Thrift.parseFieldBegin _proxy 0 _idMap
                           case _fieldBegin of
                             Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                       1 | _type ==
                                                                             Thrift.getStructType
                                                                               _proxy
                                                                           ->
                                                                           Prelude.fmap
                                                                             (Prelude.Left .
                                                                                Exception.SomeException)
                                                                             (Thrift.parseStruct
                                                                                _proxy
                                                                                ::
                                                                                Parser.Parser
                                                                                  RegisterSQLSchemaException)
                                                                       _ -> Prelude.fail
                                                                              (Prelude.unwords
                                                                                 ["unrecognized exception, type:",
                                                                                  Prelude.show
                                                                                    _type,
                                                                                  "field id:",
                                                                                  Prelude.show _id])
                             Thrift.FieldEnd -> Prelude.return (Prelude.Right ())
                      | Prelude.otherwise -> Prelude.fail "reply function does not match"
                    3 -> Prelude.fmap (Prelude.Left . Exception.SomeException)
                           (Thrift.parseStruct _proxy ::
                              Parser.Parser Thrift.ApplicationException)
                    4 -> Prelude.fail
                           "registerSQLSchema: expected reply but got oneway function call"
                    _ -> Prelude.fail "registerSQLSchema: invalid message type"
       Thrift.parseMsgEnd _proxy
       Prelude.return _result

registerTokenizer ::
                    (Thrift.Protocol p, Thrift.ClientChannel c,
                     (Thrift.<:) s Picard) =>
                    Text.Text -> Thrift.ThriftM p c s ()
registerTokenizer __field__jsonConfig
  = do Thrift.ThriftEnv _proxy _channel _opts _counter <- Reader.ask
       Trans.lift
         (registerTokenizerIO _proxy _channel _counter _opts
            __field__jsonConfig)

registerTokenizerIO ::
                      (Thrift.Protocol p, Thrift.ClientChannel c,
                       (Thrift.<:) s Picard) =>
                      Proxy.Proxy p ->
                        c s ->
                          Thrift.Counter -> Thrift.RpcOptions -> Text.Text -> Prelude.IO ()
registerTokenizerIO _proxy _channel _counter _opts
  __field__jsonConfig
  = do (_handle, _sendCob, _recvCob) <- Thrift.mkCallbacks
                                          (recv_registerTokenizer _proxy)
       send_registerTokenizer _proxy _channel _counter _sendCob _recvCob
         _opts
         __field__jsonConfig
       Thrift.wait _handle

send_registerTokenizer ::
                         (Thrift.Protocol p, Thrift.ClientChannel c,
                          (Thrift.<:) s Picard) =>
                         Proxy.Proxy p ->
                           c s ->
                             Thrift.Counter ->
                               Thrift.SendCallback ->
                                 Thrift.RecvCallback ->
                                   Thrift.RpcOptions -> Text.Text -> Prelude.IO ()
send_registerTokenizer _proxy _channel _counter _sendCob _recvCob
  _rpcOpts __field__jsonConfig
  = do _seqNum <- _counter
       let
         _callMsg
           = LBS.toStrict
               (ByteString.toLazyByteString
                  (_build_registerTokenizer _proxy _seqNum __field__jsonConfig))
       Thrift.sendRequest _channel
         (Thrift.Request _callMsg
            (Thrift.setRpcPriority _rpcOpts Thrift.NormalPriority))
         _sendCob
         _recvCob

recv_registerTokenizer ::
                         (Thrift.Protocol p) =>
                         Proxy.Proxy p ->
                           Thrift.Response -> Prelude.Either Exception.SomeException ()
recv_registerTokenizer _proxy (Thrift.Response _response _)
  = Monad.join
      (Arrow.left (Exception.SomeException . Thrift.ProtocolException)
         (Parser.parse (_parse_registerTokenizer _proxy) _response))

_build_registerTokenizer ::
                           Thrift.Protocol p =>
                           Proxy.Proxy p -> Int.Int32 -> Text.Text -> ByteString.Builder
_build_registerTokenizer _proxy _seqNum __field__jsonConfig
  = Thrift.genMsgBegin _proxy "registerTokenizer" 1 _seqNum <>
      Thrift.genStruct _proxy
        (Thrift.genField _proxy "jsonConfig" (Thrift.getStringType _proxy)
           1
           0
           (Thrift.genText _proxy __field__jsonConfig)
           : [])
      <> Thrift.genMsgEnd _proxy

_parse_registerTokenizer ::
                           Thrift.Protocol p =>
                           Proxy.Proxy p ->
                             Parser.Parser (Prelude.Either Exception.SomeException ())
_parse_registerTokenizer _proxy
  = do Thrift.MsgBegin _name _msgTy _ <- Thrift.parseMsgBegin _proxy
       _result <- case _msgTy of
                    1 -> Prelude.fail
                           "registerTokenizer: expected reply but got function call"
                    2 | _name == "registerTokenizer" ->
                        do let
                             _idMap = HashMap.fromList [("fail", 1)]
                           _fieldBegin <- Thrift.parseFieldBegin _proxy 0 _idMap
                           case _fieldBegin of
                             Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                       1 | _type ==
                                                                             Thrift.getStructType
                                                                               _proxy
                                                                           ->
                                                                           Prelude.fmap
                                                                             (Prelude.Left .
                                                                                Exception.SomeException)
                                                                             (Thrift.parseStruct
                                                                                _proxy
                                                                                ::
                                                                                Parser.Parser
                                                                                  RegisterTokenizerException)
                                                                       _ -> Prelude.fail
                                                                              (Prelude.unwords
                                                                                 ["unrecognized exception, type:",
                                                                                  Prelude.show
                                                                                    _type,
                                                                                  "field id:",
                                                                                  Prelude.show _id])
                             Thrift.FieldEnd -> Prelude.return (Prelude.Right ())
                      | Prelude.otherwise -> Prelude.fail "reply function does not match"
                    3 -> Prelude.fmap (Prelude.Left . Exception.SomeException)
                           (Thrift.parseStruct _proxy ::
                              Parser.Parser Thrift.ApplicationException)
                    4 -> Prelude.fail
                           "registerTokenizer: expected reply but got oneway function call"
                    _ -> Prelude.fail "registerTokenizer: invalid message type"
       Thrift.parseMsgEnd _proxy
       Prelude.return _result

feed ::
       (Thrift.Protocol p, Thrift.ClientChannel c,
        (Thrift.<:) s Picard) =>
       InputIds -> Token -> Mode -> Thrift.ThriftM p c s FeedResult
feed __field__inputIds __field__token __field__mode
  = do Thrift.ThriftEnv _proxy _channel _opts _counter <- Reader.ask
       Trans.lift
         (feedIO _proxy _channel _counter _opts __field__inputIds
            __field__token
            __field__mode)

feedIO ::
         (Thrift.Protocol p, Thrift.ClientChannel c,
          (Thrift.<:) s Picard) =>
         Proxy.Proxy p ->
           c s ->
             Thrift.Counter ->
               Thrift.RpcOptions ->
                 InputIds -> Token -> Mode -> Prelude.IO FeedResult
feedIO _proxy _channel _counter _opts __field__inputIds
  __field__token __field__mode
  = do (_handle, _sendCob, _recvCob) <- Thrift.mkCallbacks
                                          (recv_feed _proxy)
       send_feed _proxy _channel _counter _sendCob _recvCob _opts
         __field__inputIds
         __field__token
         __field__mode
       Thrift.wait _handle

send_feed ::
            (Thrift.Protocol p, Thrift.ClientChannel c,
             (Thrift.<:) s Picard) =>
            Proxy.Proxy p ->
              c s ->
                Thrift.Counter ->
                  Thrift.SendCallback ->
                    Thrift.RecvCallback ->
                      Thrift.RpcOptions -> InputIds -> Token -> Mode -> Prelude.IO ()
send_feed _proxy _channel _counter _sendCob _recvCob _rpcOpts
  __field__inputIds __field__token __field__mode
  = do _seqNum <- _counter
       let
         _callMsg
           = LBS.toStrict
               (ByteString.toLazyByteString
                  (_build_feed _proxy _seqNum __field__inputIds __field__token
                     __field__mode))
       Thrift.sendRequest _channel
         (Thrift.Request _callMsg
            (Thrift.setRpcPriority _rpcOpts Thrift.NormalPriority))
         _sendCob
         _recvCob

recv_feed ::
            (Thrift.Protocol p) =>
            Proxy.Proxy p ->
              Thrift.Response ->
                Prelude.Either Exception.SomeException FeedResult
recv_feed _proxy (Thrift.Response _response _)
  = Monad.join
      (Arrow.left (Exception.SomeException . Thrift.ProtocolException)
         (Parser.parse (_parse_feed _proxy) _response))

_build_feed ::
              Thrift.Protocol p =>
              Proxy.Proxy p ->
                Int.Int32 -> InputIds -> Token -> Mode -> ByteString.Builder
_build_feed _proxy _seqNum __field__inputIds __field__token
  __field__mode
  = Thrift.genMsgBegin _proxy "feed" 1 _seqNum <>
      Thrift.genStruct _proxy
        (Thrift.genField _proxy "inputIds" (Thrift.getListType _proxy) 1 0
           (Thrift.genList _proxy (Thrift.getI64Type _proxy)
              (Thrift.genI64 _proxy)
              __field__inputIds)
           :
           Thrift.genField _proxy "token" (Thrift.getI64Type _proxy) 2 1
             (Thrift.genI64 _proxy __field__token)
             :
             Thrift.genField _proxy "mode" (Thrift.getI32Type _proxy) 3 2
               ((Thrift.genI32 _proxy . Prelude.fromIntegral .
                   Thrift.fromThriftEnum)
                  __field__mode)
               : [])
      <> Thrift.genMsgEnd _proxy

_parse_feed ::
              Thrift.Protocol p =>
              Proxy.Proxy p ->
                Parser.Parser (Prelude.Either Exception.SomeException FeedResult)
_parse_feed _proxy
  = do Thrift.MsgBegin _name _msgTy _ <- Thrift.parseMsgBegin _proxy
       _result <- case _msgTy of
                    1 -> Prelude.fail "feed: expected reply but got function call"
                    2 | _name == "feed" ->
                        do let
                             _idMap = HashMap.fromList [("feed_success", 0), ("fail", 1)]
                           _fieldBegin <- Thrift.parseFieldBegin _proxy 0 _idMap
                           case _fieldBegin of
                             Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                       0 | _type ==
                                                                             Thrift.getStructType
                                                                               _proxy
                                                                           ->
                                                                           Prelude.fmap
                                                                             Prelude.Right
                                                                             (Thrift.parseStruct
                                                                                _proxy)
                                                                       1 | _type ==
                                                                             Thrift.getStructType
                                                                               _proxy
                                                                           ->
                                                                           Prelude.fmap
                                                                             (Prelude.Left .
                                                                                Exception.SomeException)
                                                                             (Thrift.parseStruct
                                                                                _proxy
                                                                                ::
                                                                                Parser.Parser
                                                                                  FeedException)
                                                                       _ -> Prelude.fail
                                                                              (Prelude.unwords
                                                                                 ["unrecognized exception, type:",
                                                                                  Prelude.show
                                                                                    _type,
                                                                                  "field id:",
                                                                                  Prelude.show _id])
                             Thrift.FieldEnd -> Prelude.fail "no response"
                      | Prelude.otherwise -> Prelude.fail "reply function does not match"
                    3 -> Prelude.fmap (Prelude.Left . Exception.SomeException)
                           (Thrift.parseStruct _proxy ::
                              Parser.Parser Thrift.ApplicationException)
                    4 -> Prelude.fail
                           "feed: expected reply but got oneway function call"
                    _ -> Prelude.fail "feed: invalid message type"
       Thrift.parseMsgEnd _proxy
       Prelude.return _result

batchFeed ::
            (Thrift.Protocol p, Thrift.ClientChannel c,
             (Thrift.<:) s Picard) =>
            [InputIds] ->
              [[Token]] -> Mode -> Thrift.ThriftM p c s [BatchFeedResult]
batchFeed __field__inputIds __field__topTokens __field__mode
  = do Thrift.ThriftEnv _proxy _channel _opts _counter <- Reader.ask
       Trans.lift
         (batchFeedIO _proxy _channel _counter _opts __field__inputIds
            __field__topTokens
            __field__mode)

batchFeedIO ::
              (Thrift.Protocol p, Thrift.ClientChannel c,
               (Thrift.<:) s Picard) =>
              Proxy.Proxy p ->
                c s ->
                  Thrift.Counter ->
                    Thrift.RpcOptions ->
                      [InputIds] -> [[Token]] -> Mode -> Prelude.IO [BatchFeedResult]
batchFeedIO _proxy _channel _counter _opts __field__inputIds
  __field__topTokens __field__mode
  = do (_handle, _sendCob, _recvCob) <- Thrift.mkCallbacks
                                          (recv_batchFeed _proxy)
       send_batchFeed _proxy _channel _counter _sendCob _recvCob _opts
         __field__inputIds
         __field__topTokens
         __field__mode
       Thrift.wait _handle

send_batchFeed ::
                 (Thrift.Protocol p, Thrift.ClientChannel c,
                  (Thrift.<:) s Picard) =>
                 Proxy.Proxy p ->
                   c s ->
                     Thrift.Counter ->
                       Thrift.SendCallback ->
                         Thrift.RecvCallback ->
                           Thrift.RpcOptions ->
                             [InputIds] -> [[Token]] -> Mode -> Prelude.IO ()
send_batchFeed _proxy _channel _counter _sendCob _recvCob _rpcOpts
  __field__inputIds __field__topTokens __field__mode
  = do _seqNum <- _counter
       let
         _callMsg
           = LBS.toStrict
               (ByteString.toLazyByteString
                  (_build_batchFeed _proxy _seqNum __field__inputIds
                     __field__topTokens
                     __field__mode))
       Thrift.sendRequest _channel
         (Thrift.Request _callMsg
            (Thrift.setRpcPriority _rpcOpts Thrift.NormalPriority))
         _sendCob
         _recvCob

recv_batchFeed ::
                 (Thrift.Protocol p) =>
                 Proxy.Proxy p ->
                   Thrift.Response ->
                     Prelude.Either Exception.SomeException [BatchFeedResult]
recv_batchFeed _proxy (Thrift.Response _response _)
  = Monad.join
      (Arrow.left (Exception.SomeException . Thrift.ProtocolException)
         (Parser.parse (_parse_batchFeed _proxy) _response))

_build_batchFeed ::
                   Thrift.Protocol p =>
                   Proxy.Proxy p ->
                     Int.Int32 -> [InputIds] -> [[Token]] -> Mode -> ByteString.Builder
_build_batchFeed _proxy _seqNum __field__inputIds
  __field__topTokens __field__mode
  = Thrift.genMsgBegin _proxy "batchFeed" 1 _seqNum <>
      Thrift.genStruct _proxy
        (Thrift.genField _proxy "inputIds" (Thrift.getListType _proxy) 1 0
           (Thrift.genList _proxy (Thrift.getListType _proxy)
              (Thrift.genList _proxy (Thrift.getI64Type _proxy)
                 (Thrift.genI64 _proxy))
              __field__inputIds)
           :
           Thrift.genField _proxy "topTokens" (Thrift.getListType _proxy) 2 1
             (Thrift.genList _proxy (Thrift.getListType _proxy)
                (Thrift.genList _proxy (Thrift.getI64Type _proxy)
                   (Thrift.genI64 _proxy))
                __field__topTokens)
             :
             Thrift.genField _proxy "mode" (Thrift.getI32Type _proxy) 3 2
               ((Thrift.genI32 _proxy . Prelude.fromIntegral .
                   Thrift.fromThriftEnum)
                  __field__mode)
               : [])
      <> Thrift.genMsgEnd _proxy

_parse_batchFeed ::
                   Thrift.Protocol p =>
                   Proxy.Proxy p ->
                     Parser.Parser
                       (Prelude.Either Exception.SomeException [BatchFeedResult])
_parse_batchFeed _proxy
  = do Thrift.MsgBegin _name _msgTy _ <- Thrift.parseMsgBegin _proxy
       _result <- case _msgTy of
                    1 -> Prelude.fail "batchFeed: expected reply but got function call"
                    2 | _name == "batchFeed" ->
                        do let
                             _idMap = HashMap.fromList [("batchFeed_success", 0), ("fail", 1)]
                           _fieldBegin <- Thrift.parseFieldBegin _proxy 0 _idMap
                           case _fieldBegin of
                             Thrift.FieldBegin _type _id _bool -> do case _id of
                                                                       0 | _type ==
                                                                             Thrift.getListType
                                                                               _proxy
                                                                           ->
                                                                           Prelude.fmap
                                                                             Prelude.Right
                                                                             (Prelude.snd <$>
                                                                                Thrift.parseList
                                                                                  _proxy
                                                                                  (Thrift.parseStruct
                                                                                     _proxy))
                                                                       1 | _type ==
                                                                             Thrift.getStructType
                                                                               _proxy
                                                                           ->
                                                                           Prelude.fmap
                                                                             (Prelude.Left .
                                                                                Exception.SomeException)
                                                                             (Thrift.parseStruct
                                                                                _proxy
                                                                                ::
                                                                                Parser.Parser
                                                                                  FeedException)
                                                                       _ -> Prelude.fail
                                                                              (Prelude.unwords
                                                                                 ["unrecognized exception, type:",
                                                                                  Prelude.show
                                                                                    _type,
                                                                                  "field id:",
                                                                                  Prelude.show _id])
                             Thrift.FieldEnd -> Prelude.fail "no response"
                      | Prelude.otherwise -> Prelude.fail "reply function does not match"
                    3 -> Prelude.fmap (Prelude.Left . Exception.SomeException)
                           (Thrift.parseStruct _proxy ::
                              Parser.Parser Thrift.ApplicationException)
                    4 -> Prelude.fail
                           "batchFeed: expected reply but got oneway function call"
                    _ -> Prelude.fail "batchFeed: invalid message type"
       Thrift.parseMsgEnd _proxy
       Prelude.return _result