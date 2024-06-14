{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: release-1.26
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.API.AuthorizationV1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.AuthorizationV1 where

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


-- ** AuthorizationV1

-- *** createNamespacedLocalSubjectAccessReview

-- | @POST \/apis\/authorization.k8s.io\/v1\/namespaces\/{namespace}\/localsubjectaccessreviews@
-- 
-- create a LocalSubjectAccessReview
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createNamespacedLocalSubjectAccessReview
  :: (Consumes CreateNamespacedLocalSubjectAccessReview contentType, MimeRender contentType V1LocalSubjectAccessReview)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1LocalSubjectAccessReview -- ^ "body"
  -> Namespace -- ^ "namespace" -  object name and auth scope, such as for teams and projects
  -> KubernetesRequest CreateNamespacedLocalSubjectAccessReview contentType V1LocalSubjectAccessReview accept
createNamespacedLocalSubjectAccessReview _  _ body (Namespace namespace) =
  _mkRequest "POST" ["/apis/authorization.k8s.io/v1/namespaces/",toPath namespace,"/localsubjectaccessreviews"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateNamespacedLocalSubjectAccessReview 
instance HasBodyParam CreateNamespacedLocalSubjectAccessReview V1LocalSubjectAccessReview 

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateNamespacedLocalSubjectAccessReview DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateNamespacedLocalSubjectAccessReview FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam CreateNamespacedLocalSubjectAccessReview FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateNamespacedLocalSubjectAccessReview Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateNamespacedLocalSubjectAccessReview mtype

-- | @application/json@
instance Produces CreateNamespacedLocalSubjectAccessReview MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateNamespacedLocalSubjectAccessReview MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreateNamespacedLocalSubjectAccessReview MimeYaml


-- *** createSelfSubjectAccessReview

-- | @POST \/apis\/authorization.k8s.io\/v1\/selfsubjectaccessreviews@
-- 
-- create a SelfSubjectAccessReview
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createSelfSubjectAccessReview
  :: (Consumes CreateSelfSubjectAccessReview contentType, MimeRender contentType V1SelfSubjectAccessReview)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1SelfSubjectAccessReview -- ^ "body"
  -> KubernetesRequest CreateSelfSubjectAccessReview contentType V1SelfSubjectAccessReview accept
createSelfSubjectAccessReview _  _ body =
  _mkRequest "POST" ["/apis/authorization.k8s.io/v1/selfsubjectaccessreviews"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateSelfSubjectAccessReview 
instance HasBodyParam CreateSelfSubjectAccessReview V1SelfSubjectAccessReview 

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateSelfSubjectAccessReview DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateSelfSubjectAccessReview FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam CreateSelfSubjectAccessReview FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateSelfSubjectAccessReview Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateSelfSubjectAccessReview mtype

-- | @application/json@
instance Produces CreateSelfSubjectAccessReview MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateSelfSubjectAccessReview MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreateSelfSubjectAccessReview MimeYaml


-- *** createSelfSubjectRulesReview

-- | @POST \/apis\/authorization.k8s.io\/v1\/selfsubjectrulesreviews@
-- 
-- create a SelfSubjectRulesReview
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createSelfSubjectRulesReview
  :: (Consumes CreateSelfSubjectRulesReview contentType, MimeRender contentType V1SelfSubjectRulesReview)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1SelfSubjectRulesReview -- ^ "body"
  -> KubernetesRequest CreateSelfSubjectRulesReview contentType V1SelfSubjectRulesReview accept
createSelfSubjectRulesReview _  _ body =
  _mkRequest "POST" ["/apis/authorization.k8s.io/v1/selfsubjectrulesreviews"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateSelfSubjectRulesReview 
instance HasBodyParam CreateSelfSubjectRulesReview V1SelfSubjectRulesReview 

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateSelfSubjectRulesReview DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateSelfSubjectRulesReview FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam CreateSelfSubjectRulesReview FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateSelfSubjectRulesReview Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateSelfSubjectRulesReview mtype

-- | @application/json@
instance Produces CreateSelfSubjectRulesReview MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateSelfSubjectRulesReview MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreateSelfSubjectRulesReview MimeYaml


-- *** createSubjectAccessReview

-- | @POST \/apis\/authorization.k8s.io\/v1\/subjectaccessreviews@
-- 
-- create a SubjectAccessReview
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createSubjectAccessReview
  :: (Consumes CreateSubjectAccessReview contentType, MimeRender contentType V1SubjectAccessReview)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1SubjectAccessReview -- ^ "body"
  -> KubernetesRequest CreateSubjectAccessReview contentType V1SubjectAccessReview accept
createSubjectAccessReview _  _ body =
  _mkRequest "POST" ["/apis/authorization.k8s.io/v1/subjectaccessreviews"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateSubjectAccessReview 
instance HasBodyParam CreateSubjectAccessReview V1SubjectAccessReview 

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateSubjectAccessReview DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateSubjectAccessReview FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam CreateSubjectAccessReview FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateSubjectAccessReview Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateSubjectAccessReview mtype

-- | @application/json@
instance Produces CreateSubjectAccessReview MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateSubjectAccessReview MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreateSubjectAccessReview MimeYaml


-- *** getAPIResources

-- | @GET \/apis\/authorization.k8s.io\/v1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/authorization.k8s.io/v1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  
-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml

