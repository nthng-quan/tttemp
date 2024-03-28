{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
--  @generated
-----------------------------------------------------------------

module Module_Types where
import Prelude ( Bool(..), Enum, Float, IO, Double, String, Maybe(..),
                 Eq, Show, Ord,
                 concat, error, fromIntegral, fromEnum, length, map,
                 maybe, not, null, otherwise, return, show, toEnum,
                 enumFromTo, Bounded, minBound, maxBound, seq, succ,
                 pred, enumFrom, enumFromThen, enumFromThenTo,
                 (.), (&&), (||), (==), (++), ($), (-), (>>=), (>>))

import qualified Control.Applicative as Applicative (ZipList(..))
import Control.Applicative ( (<*>) )
import qualified Control.DeepSeq as DeepSeq
import qualified Control.Exception as Exception
import qualified Control.Monad as Monad ( liftM, ap, when )
import qualified Data.ByteString.Lazy as BS
import Data.Functor ( (<$>) )
import qualified Data.Hashable as Hashable
import qualified Data.Int as Int
import Data.List
import qualified Data.Maybe as Maybe (catMaybes)
import qualified Data.Text.Lazy.Encoding as Encoding ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified Data.Typeable as Typeable ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as Arbitrary ( Arbitrary(..) )
import qualified Test.QuickCheck as QuickCheck ( elements )

import qualified Thrift
import qualified Thrift.Types as Types
import qualified Thrift.Serializable as Serializable
import qualified Thrift.Arbitraries as Arbitraries

import qualified Includes_Types as Includes_Types


-- | Definition of the MyStruct struct
data MyStruct = MyStruct
  { myStruct_MyIncludedField :: Includes_Types.Included
    -- ^ MyIncludedField field of the MyStruct struct
  , myStruct_MyOtherIncludedField :: Includes_Types.Included
    -- ^ MyOtherIncludedField field of the MyStruct struct
  , myStruct_MyIncludedInt :: Int.Int64
    -- ^ MyIncludedInt field of the MyStruct struct
  } deriving (Show,Eq,Typeable.Typeable)
instance Serializable.ThriftSerializable MyStruct where
  encode = encode_MyStruct
  decode = decode_MyStruct
instance Hashable.Hashable MyStruct where
  hashWithSalt salt record = salt   `Hashable.hashWithSalt` myStruct_MyIncludedField record   `Hashable.hashWithSalt` myStruct_MyOtherIncludedField record   `Hashable.hashWithSalt` myStruct_MyIncludedInt record  
instance DeepSeq.NFData MyStruct where
  rnf _record0 =
    DeepSeq.rnf (myStruct_MyIncludedField _record0) `seq`
    DeepSeq.rnf (myStruct_MyOtherIncludedField _record0) `seq`
    DeepSeq.rnf (myStruct_MyIncludedInt _record0) `seq`
    ()
instance Arbitrary.Arbitrary MyStruct where 
  arbitrary = Monad.liftM MyStruct (Arbitrary.arbitrary)
          `Monad.ap`(Arbitrary.arbitrary)
          `Monad.ap`(Arbitrary.arbitrary)
  shrink obj | obj == default_MyStruct = []
             | otherwise = Maybe.catMaybes
    [ if obj == default_MyStruct{myStruct_MyIncludedField = myStruct_MyIncludedField obj} then Nothing else Just $ default_MyStruct{myStruct_MyIncludedField = myStruct_MyIncludedField obj}
    , if obj == default_MyStruct{myStruct_MyOtherIncludedField = myStruct_MyOtherIncludedField obj} then Nothing else Just $ default_MyStruct{myStruct_MyOtherIncludedField = myStruct_MyOtherIncludedField obj}
    , if obj == default_MyStruct{myStruct_MyIncludedInt = myStruct_MyIncludedInt obj} then Nothing else Just $ default_MyStruct{myStruct_MyIncludedInt = myStruct_MyIncludedInt obj}
    ]
-- | Translate a 'MyStruct' to a 'Types.ThriftVal'
from_MyStruct :: MyStruct -> Types.ThriftVal
from_MyStruct record = Types.TStruct $ Map.fromList $ Maybe.catMaybes
  [ (\_v3 -> Just (1, ("MyIncludedField",Includes_Types.from_Included _v3))) $ myStruct_MyIncludedField record
  , (\_v3 -> Just (2, ("MyOtherIncludedField",Includes_Types.from_Included _v3))) $ myStruct_MyOtherIncludedField record
  , (\_v3 -> Just (3, ("MyIncludedInt",Types.TI64 _v3))) $ myStruct_MyIncludedInt record
  ]
-- | Write a 'MyStruct' with the given 'Thrift.Protocol'
write_MyStruct :: (Thrift.Protocol p, Thrift.Transport t) => p t -> MyStruct -> IO ()
write_MyStruct oprot record = Thrift.writeVal oprot $ from_MyStruct record
-- | Serialize a 'MyStruct' in pure code
encode_MyStruct :: (Thrift.Protocol p, Thrift.Transport t) => p t -> MyStruct -> BS.ByteString
encode_MyStruct oprot record = Thrift.serializeVal oprot $ from_MyStruct record
-- | Translate a 'Types.ThriftVal' to a 'MyStruct'
to_MyStruct :: Types.ThriftVal -> MyStruct
to_MyStruct (Types.TStruct fields) = MyStruct{
  myStruct_MyIncludedField = maybe (myStruct_MyIncludedField default_MyStruct) (\(_,_val5) -> (case _val5 of {Types.TStruct _val6 -> (Includes_Types.to_Included (Types.TStruct _val6)); _ -> error "wrong type"})) (Map.lookup (1) fields),
  myStruct_MyOtherIncludedField = maybe (myStruct_MyOtherIncludedField default_MyStruct) (\(_,_val5) -> (case _val5 of {Types.TStruct _val7 -> (Includes_Types.to_Included (Types.TStruct _val7)); _ -> error "wrong type"})) (Map.lookup (2) fields),
  myStruct_MyIncludedInt = maybe (myStruct_MyIncludedInt default_MyStruct) (\(_,_val5) -> (case _val5 of {Types.TI64 _val8 -> _val8; _ -> error "wrong type"})) (Map.lookup (3) fields)
  }
to_MyStruct _ = error "not a struct"
-- | Read a 'MyStruct' struct with the given 'Thrift.Protocol'
read_MyStruct :: (Thrift.Transport t, Thrift.Protocol p) => p t -> IO MyStruct
read_MyStruct iprot = to_MyStruct <$> Thrift.readVal iprot (Types.T_STRUCT typemap_MyStruct)
-- | Deserialize a 'MyStruct' in pure code
decode_MyStruct :: (Thrift.Protocol p, Thrift.Transport t) => p t -> BS.ByteString -> MyStruct
decode_MyStruct iprot bs = to_MyStruct $ Thrift.deserializeVal iprot (Types.T_STRUCT typemap_MyStruct) bs
-- | 'TypeMap' for the 'MyStruct' struct
typemap_MyStruct :: Types.TypeMap
typemap_MyStruct = Map.fromList [("MyIncludedField",(1,(Types.T_STRUCT Includes_Types.typemap_Included))),("MyOtherIncludedField",(2,(Types.T_STRUCT Includes_Types.typemap_Included))),("MyIncludedInt",(3,Types.T_I64))]
-- | Default values for the 'MyStruct' struct
default_MyStruct :: MyStruct
default_MyStruct = MyStruct{
  myStruct_MyIncludedField = Includes_Types.default_Included{Includes_Types.included_MyIntField = 2, Includes_Types.included_MyTransitiveField = Transitive_Types.default_Foo{Transitive_Types.foo_a = 2}},
  myStruct_MyOtherIncludedField = Includes_Types.default_Included,
  myStruct_MyIncludedInt = 42}
