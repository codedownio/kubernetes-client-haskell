{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: release-1.29
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.API.StorageV1alpha1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.StorageV1alpha1 where

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


-- ** StorageV1alpha1

-- *** createVolumeAttributesClass

-- | @POST \/apis\/storage.k8s.io\/v1alpha1\/volumeattributesclasses@
-- 
-- create a VolumeAttributesClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createVolumeAttributesClass
  :: (Consumes CreateVolumeAttributesClass contentType, MimeRender contentType V1alpha1VolumeAttributesClass)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1alpha1VolumeAttributesClass -- ^ "body"
  -> KubernetesRequest CreateVolumeAttributesClass contentType V1alpha1VolumeAttributesClass accept
createVolumeAttributesClass _  _ body =
  _mkRequest "POST" ["/apis/storage.k8s.io/v1alpha1/volumeattributesclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateVolumeAttributesClass 
instance HasBodyParam CreateVolumeAttributesClass V1alpha1VolumeAttributesClass 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam CreateVolumeAttributesClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateVolumeAttributesClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateVolumeAttributesClass FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default in v1.23+ - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam CreateVolumeAttributesClass FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateVolumeAttributesClass mtype

-- | @application/json@
instance Produces CreateVolumeAttributesClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateVolumeAttributesClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreateVolumeAttributesClass MimeYaml


-- *** deleteCollectionVolumeAttributesClass

-- | @DELETE \/apis\/storage.k8s.io\/v1alpha1\/volumeattributesclasses@
-- 
-- delete collection of VolumeAttributesClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCollectionVolumeAttributesClass
  :: (Consumes DeleteCollectionVolumeAttributesClass contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest DeleteCollectionVolumeAttributesClass contentType V1Status accept
deleteCollectionVolumeAttributesClass _  _ =
  _mkRequest "DELETE" ["/apis/storage.k8s.io/v1alpha1/volumeattributesclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCollectionVolumeAttributesClass 
instance HasBodyParam DeleteCollectionVolumeAttributesClass V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam DeleteCollectionVolumeAttributesClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass Continue where
  applyOptionalParam req (Continue xs) =
    req `addQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam DeleteCollectionVolumeAttributesClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `addQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `addQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `addQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass Limit where
  applyOptionalParam req (Limit xs) =
    req `addQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `addQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `addQuery` toQuery ("propagationPolicy", Just xs)

-- | /Optional Param/ "resourceVersion" - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
instance HasOptionalParam DeleteCollectionVolumeAttributesClass ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `addQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "resourceVersionMatch" - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
instance HasOptionalParam DeleteCollectionVolumeAttributesClass ResourceVersionMatch where
  applyOptionalParam req (ResourceVersionMatch xs) =
    req `addQuery` toQuery ("resourceVersionMatch", Just xs)

-- | /Optional Param/ "sendInitialEvents" - `sendInitialEvents=true` may be set together with `watch=true`. In that case, the watch stream will begin with synthetic events to produce the current state of objects in the collection. Once all such events have been sent, a synthetic \"Bookmark\" event  will be sent. The bookmark will report the ResourceVersion (RV) corresponding to the set of objects, and be marked with `\"k8s.io/initial-events-end\": \"true\"` annotation. Afterwards, the watch stream will proceed as usual, sending watch events corresponding to changes (subsequent to the RV) to objects watched.  When `sendInitialEvents` option is set, we require `resourceVersionMatch` option to also be set. The semantic of the watch request is as following: - `resourceVersionMatch` = NotOlderThan   is interpreted as \"data at least as new as the provided `resourceVersion`\"   and the bookmark event is send when the state is synced   to a `resourceVersion` at least as fresh as the one provided by the ListOptions.   If `resourceVersion` is unset, this is interpreted as \"consistent read\" and the   bookmark event is send when the state is synced at least to the moment   when request started being processed. - `resourceVersionMatch` set to any other value or unset   Invalid error is returned.  Defaults to true if `resourceVersion=\"\"` or `resourceVersion=\"0\"` (for backward compatibility reasons) and to false otherwise.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass SendInitialEvents where
  applyOptionalParam req (SendInitialEvents xs) =
    req `addQuery` toQuery ("sendInitialEvents", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam DeleteCollectionVolumeAttributesClass TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `addQuery` toQuery ("timeoutSeconds", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteCollectionVolumeAttributesClass mtype

-- | @application/json@
instance Produces DeleteCollectionVolumeAttributesClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCollectionVolumeAttributesClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteCollectionVolumeAttributesClass MimeYaml


-- *** deleteVolumeAttributesClass

-- | @DELETE \/apis\/storage.k8s.io\/v1alpha1\/volumeattributesclasses\/{name}@
-- 
-- delete a VolumeAttributesClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteVolumeAttributesClass
  :: (Consumes DeleteVolumeAttributesClass contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the VolumeAttributesClass
  -> KubernetesRequest DeleteVolumeAttributesClass contentType V1alpha1VolumeAttributesClass accept
deleteVolumeAttributesClass _  _ (Name name) =
  _mkRequest "DELETE" ["/apis/storage.k8s.io/v1alpha1/volumeattributesclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteVolumeAttributesClass 
instance HasBodyParam DeleteVolumeAttributesClass V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam DeleteVolumeAttributesClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam DeleteVolumeAttributesClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteVolumeAttributesClass GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `addQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteVolumeAttributesClass OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `addQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteVolumeAttributesClass PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `addQuery` toQuery ("propagationPolicy", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteVolumeAttributesClass mtype

-- | @application/json@
instance Produces DeleteVolumeAttributesClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteVolumeAttributesClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteVolumeAttributesClass MimeYaml


-- *** getAPIResources

-- | @GET \/apis\/storage.k8s.io\/v1alpha1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/storage.k8s.io/v1alpha1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  
-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml


-- *** listVolumeAttributesClass

-- | @GET \/apis\/storage.k8s.io\/v1alpha1\/volumeattributesclasses@
-- 
-- list or watch objects of kind VolumeAttributesClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listVolumeAttributesClass
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest ListVolumeAttributesClass MimeNoContent V1alpha1VolumeAttributesClassList accept
listVolumeAttributesClass  _ =
  _mkRequest "GET" ["/apis/storage.k8s.io/v1alpha1/volumeattributesclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListVolumeAttributesClass  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam ListVolumeAttributesClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "allowWatchBookmarks" - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
instance HasOptionalParam ListVolumeAttributesClass AllowWatchBookmarks where
  applyOptionalParam req (AllowWatchBookmarks xs) =
    req `addQuery` toQuery ("allowWatchBookmarks", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListVolumeAttributesClass Continue where
  applyOptionalParam req (Continue xs) =
    req `addQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListVolumeAttributesClass FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `addQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListVolumeAttributesClass LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `addQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListVolumeAttributesClass Limit where
  applyOptionalParam req (Limit xs) =
    req `addQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
instance HasOptionalParam ListVolumeAttributesClass ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `addQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "resourceVersionMatch" - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
instance HasOptionalParam ListVolumeAttributesClass ResourceVersionMatch where
  applyOptionalParam req (ResourceVersionMatch xs) =
    req `addQuery` toQuery ("resourceVersionMatch", Just xs)

-- | /Optional Param/ "sendInitialEvents" - `sendInitialEvents=true` may be set together with `watch=true`. In that case, the watch stream will begin with synthetic events to produce the current state of objects in the collection. Once all such events have been sent, a synthetic \"Bookmark\" event  will be sent. The bookmark will report the ResourceVersion (RV) corresponding to the set of objects, and be marked with `\"k8s.io/initial-events-end\": \"true\"` annotation. Afterwards, the watch stream will proceed as usual, sending watch events corresponding to changes (subsequent to the RV) to objects watched.  When `sendInitialEvents` option is set, we require `resourceVersionMatch` option to also be set. The semantic of the watch request is as following: - `resourceVersionMatch` = NotOlderThan   is interpreted as \"data at least as new as the provided `resourceVersion`\"   and the bookmark event is send when the state is synced   to a `resourceVersion` at least as fresh as the one provided by the ListOptions.   If `resourceVersion` is unset, this is interpreted as \"consistent read\" and the   bookmark event is send when the state is synced at least to the moment   when request started being processed. - `resourceVersionMatch` set to any other value or unset   Invalid error is returned.  Defaults to true if `resourceVersion=\"\"` or `resourceVersion=\"0\"` (for backward compatibility reasons) and to false otherwise.
instance HasOptionalParam ListVolumeAttributesClass SendInitialEvents where
  applyOptionalParam req (SendInitialEvents xs) =
    req `addQuery` toQuery ("sendInitialEvents", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam ListVolumeAttributesClass TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `addQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListVolumeAttributesClass Watch where
  applyOptionalParam req (Watch xs) =
    req `addQuery` toQuery ("watch", Just xs)
-- | @application/json@
instance Produces ListVolumeAttributesClass MimeJSON
-- | @application/json;stream=watch@
instance Produces ListVolumeAttributesClass MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListVolumeAttributesClass MimeVndKubernetesProtobuf
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListVolumeAttributesClass MimeVndKubernetesProtobufstreamwatch
-- | @application/yaml@
instance Produces ListVolumeAttributesClass MimeYaml


-- *** patchVolumeAttributesClass

-- | @PATCH \/apis\/storage.k8s.io\/v1alpha1\/volumeattributesclasses\/{name}@
-- 
-- partially update the specified VolumeAttributesClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchVolumeAttributesClass
  :: (Consumes PatchVolumeAttributesClass contentType, MimeRender contentType Body)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Body -- ^ "body"
  -> Name -- ^ "name" -  name of the VolumeAttributesClass
  -> KubernetesRequest PatchVolumeAttributesClass contentType V1alpha1VolumeAttributesClass accept
patchVolumeAttributesClass _  _ body (Name name) =
  _mkRequest "PATCH" ["/apis/storage.k8s.io/v1alpha1/volumeattributesclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchVolumeAttributesClass 
instance HasBodyParam PatchVolumeAttributesClass Body 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam PatchVolumeAttributesClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam PatchVolumeAttributesClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
instance HasOptionalParam PatchVolumeAttributesClass FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default in v1.23+ - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam PatchVolumeAttributesClass FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | /Optional Param/ "force" - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
instance HasOptionalParam PatchVolumeAttributesClass Force where
  applyOptionalParam req (Force xs) =
    req `addQuery` toQuery ("force", Just xs)

-- | @application/apply-patch+yaml@
instance Consumes PatchVolumeAttributesClass MimeApplyPatchyaml
-- | @application/json-patch+json@
instance Consumes PatchVolumeAttributesClass MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchVolumeAttributesClass MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchVolumeAttributesClass MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchVolumeAttributesClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchVolumeAttributesClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces PatchVolumeAttributesClass MimeYaml


-- *** readVolumeAttributesClass

-- | @GET \/apis\/storage.k8s.io\/v1alpha1\/volumeattributesclasses\/{name}@
-- 
-- read the specified VolumeAttributesClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readVolumeAttributesClass
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the VolumeAttributesClass
  -> KubernetesRequest ReadVolumeAttributesClass MimeNoContent V1alpha1VolumeAttributesClass accept
readVolumeAttributesClass  _ (Name name) =
  _mkRequest "GET" ["/apis/storage.k8s.io/v1alpha1/volumeattributesclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadVolumeAttributesClass  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam ReadVolumeAttributesClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)
-- | @application/json@
instance Produces ReadVolumeAttributesClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadVolumeAttributesClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReadVolumeAttributesClass MimeYaml


-- *** replaceVolumeAttributesClass

-- | @PUT \/apis\/storage.k8s.io\/v1alpha1\/volumeattributesclasses\/{name}@
-- 
-- replace the specified VolumeAttributesClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceVolumeAttributesClass
  :: (Consumes ReplaceVolumeAttributesClass contentType, MimeRender contentType V1alpha1VolumeAttributesClass)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1alpha1VolumeAttributesClass -- ^ "body"
  -> Name -- ^ "name" -  name of the VolumeAttributesClass
  -> KubernetesRequest ReplaceVolumeAttributesClass contentType V1alpha1VolumeAttributesClass accept
replaceVolumeAttributesClass _  _ body (Name name) =
  _mkRequest "PUT" ["/apis/storage.k8s.io/v1alpha1/volumeattributesclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceVolumeAttributesClass 
instance HasBodyParam ReplaceVolumeAttributesClass V1alpha1VolumeAttributesClass 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed. Defaults to 'false' unless the user-agent indicates a browser or command-line HTTP tool (curl and wget).
instance HasOptionalParam ReplaceVolumeAttributesClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam ReplaceVolumeAttributesClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam ReplaceVolumeAttributesClass FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "fieldValidation" - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default in v1.23+ - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
instance HasOptionalParam ReplaceVolumeAttributesClass FieldValidation where
  applyOptionalParam req (FieldValidation xs) =
    req `addQuery` toQuery ("fieldValidation", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReplaceVolumeAttributesClass mtype

-- | @application/json@
instance Produces ReplaceVolumeAttributesClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceVolumeAttributesClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReplaceVolumeAttributesClass MimeYaml

