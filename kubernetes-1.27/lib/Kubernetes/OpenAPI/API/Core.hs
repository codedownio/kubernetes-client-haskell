{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: release-1.27
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.API.Core
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.Core where

import Kubernetes.OpenAPI.Core
import Kubernetes.OpenAPI.MimeTypes
import Kubernetes.OpenAPI.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Core

-- *** getAPIVersions

-- | @GET \/api\/@
-- 
-- get available API versions
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIVersions
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIVersions MimeNoContent V1APIVersions accept
getAPIVersions  _ =
  _mkRequest "GET" ["/api/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIVersions  
-- | @application/json@
instance Produces GetAPIVersions MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIVersions MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces GetAPIVersions MimeYaml

