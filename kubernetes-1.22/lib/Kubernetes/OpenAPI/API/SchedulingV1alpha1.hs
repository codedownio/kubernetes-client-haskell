{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: release-1.22
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.API.SchedulingV1alpha1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.SchedulingV1alpha1 where

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


-- ** SchedulingV1alpha1

-- *** createPriorityClass

-- | @POST \/apis\/scheduling.k8s.io\/v1alpha1\/priorityclasses@
-- 
-- create a PriorityClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createPriorityClass
  :: (Consumes CreatePriorityClass contentType, MimeRender contentType V1alpha1PriorityClass)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1alpha1PriorityClass -- ^ "body"
  -> KubernetesRequest CreatePriorityClass contentType V1alpha1PriorityClass accept
createPriorityClass _  _ body =
  _mkRequest "POST" ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreatePriorityClass 
instance HasBodyParam CreatePriorityClass V1alpha1PriorityClass 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreatePriorityClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreatePriorityClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreatePriorityClass FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreatePriorityClass mtype

-- | @application/json@
instance Produces CreatePriorityClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreatePriorityClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreatePriorityClass MimeYaml


-- *** deleteCollectionPriorityClass

-- | @DELETE \/apis\/scheduling.k8s.io\/v1alpha1\/priorityclasses@
-- 
-- delete collection of PriorityClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCollectionPriorityClass
  :: (Consumes DeleteCollectionPriorityClass contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest DeleteCollectionPriorityClass contentType V1Status accept
deleteCollectionPriorityClass _  _ =
  _mkRequest "DELETE" ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCollectionPriorityClass 
instance HasBodyParam DeleteCollectionPriorityClass V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteCollectionPriorityClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam DeleteCollectionPriorityClass Continue where
  applyOptionalParam req (Continue xs) =
    req `addQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam DeleteCollectionPriorityClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam DeleteCollectionPriorityClass FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `addQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteCollectionPriorityClass GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `addQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam DeleteCollectionPriorityClass LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `addQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam DeleteCollectionPriorityClass Limit where
  applyOptionalParam req (Limit xs) =
    req `addQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteCollectionPriorityClass OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `addQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteCollectionPriorityClass PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `addQuery` toQuery ("propagationPolicy", Just xs)

-- | /Optional Param/ "resourceVersion" - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
instance HasOptionalParam DeleteCollectionPriorityClass ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `addQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "resourceVersionMatch" - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
instance HasOptionalParam DeleteCollectionPriorityClass ResourceVersionMatch where
  applyOptionalParam req (ResourceVersionMatch xs) =
    req `addQuery` toQuery ("resourceVersionMatch", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam DeleteCollectionPriorityClass TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `addQuery` toQuery ("timeoutSeconds", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteCollectionPriorityClass mtype

-- | @application/json@
instance Produces DeleteCollectionPriorityClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCollectionPriorityClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteCollectionPriorityClass MimeYaml


-- *** deletePriorityClass

-- | @DELETE \/apis\/scheduling.k8s.io\/v1alpha1\/priorityclasses\/{name}@
-- 
-- delete a PriorityClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deletePriorityClass
  :: (Consumes DeletePriorityClass contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PriorityClass
  -> KubernetesRequest DeletePriorityClass contentType V1Status accept
deletePriorityClass _  _ (Name name) =
  _mkRequest "DELETE" ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeletePriorityClass 
instance HasBodyParam DeletePriorityClass V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeletePriorityClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam DeletePriorityClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeletePriorityClass GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `addQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeletePriorityClass OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `addQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeletePriorityClass PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `addQuery` toQuery ("propagationPolicy", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeletePriorityClass mtype

-- | @application/json@
instance Produces DeletePriorityClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeletePriorityClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeletePriorityClass MimeYaml


-- *** getAPIResources

-- | @GET \/apis\/scheduling.k8s.io\/v1alpha1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/scheduling.k8s.io/v1alpha1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  
-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml


-- *** listPriorityClass

-- | @GET \/apis\/scheduling.k8s.io\/v1alpha1\/priorityclasses@
-- 
-- list or watch objects of kind PriorityClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listPriorityClass
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest ListPriorityClass MimeNoContent V1alpha1PriorityClassList accept
listPriorityClass  _ =
  _mkRequest "GET" ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListPriorityClass  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListPriorityClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "allowWatchBookmarks" - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
instance HasOptionalParam ListPriorityClass AllowWatchBookmarks where
  applyOptionalParam req (AllowWatchBookmarks xs) =
    req `addQuery` toQuery ("allowWatchBookmarks", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListPriorityClass Continue where
  applyOptionalParam req (Continue xs) =
    req `addQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListPriorityClass FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `addQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListPriorityClass LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `addQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListPriorityClass Limit where
  applyOptionalParam req (Limit xs) =
    req `addQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
instance HasOptionalParam ListPriorityClass ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `addQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "resourceVersionMatch" - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
instance HasOptionalParam ListPriorityClass ResourceVersionMatch where
  applyOptionalParam req (ResourceVersionMatch xs) =
    req `addQuery` toQuery ("resourceVersionMatch", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam ListPriorityClass TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `addQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListPriorityClass Watch where
  applyOptionalParam req (Watch xs) =
    req `addQuery` toQuery ("watch", Just xs)
-- | @application/json@
instance Produces ListPriorityClass MimeJSON
-- | @application/json;stream=watch@
instance Produces ListPriorityClass MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListPriorityClass MimeVndKubernetesProtobuf
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListPriorityClass MimeVndKubernetesProtobufstreamwatch
-- | @application/yaml@
instance Produces ListPriorityClass MimeYaml


-- *** patchPriorityClass

-- | @PATCH \/apis\/scheduling.k8s.io\/v1alpha1\/priorityclasses\/{name}@
-- 
-- partially update the specified PriorityClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchPriorityClass
  :: (Consumes PatchPriorityClass contentType, MimeRender contentType Body)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Body -- ^ "body"
  -> Name -- ^ "name" -  name of the PriorityClass
  -> KubernetesRequest PatchPriorityClass contentType V1alpha1PriorityClass accept
patchPriorityClass _  _ body (Name name) =
  _mkRequest "PATCH" ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchPriorityClass 
instance HasBodyParam PatchPriorityClass Body 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchPriorityClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam PatchPriorityClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
instance HasOptionalParam PatchPriorityClass FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "force" - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
instance HasOptionalParam PatchPriorityClass Force where
  applyOptionalParam req (Force xs) =
    req `addQuery` toQuery ("force", Just xs)

-- | @application/apply-patch+yaml@
instance Consumes PatchPriorityClass MimeApplyPatchyaml
-- | @application/json-patch+json@
instance Consumes PatchPriorityClass MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchPriorityClass MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchPriorityClass MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchPriorityClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchPriorityClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces PatchPriorityClass MimeYaml


-- *** readPriorityClass

-- | @GET \/apis\/scheduling.k8s.io\/v1alpha1\/priorityclasses\/{name}@
-- 
-- read the specified PriorityClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readPriorityClass
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the PriorityClass
  -> KubernetesRequest ReadPriorityClass MimeNoContent V1alpha1PriorityClass accept
readPriorityClass  _ (Name name) =
  _mkRequest "GET" ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadPriorityClass  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadPriorityClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)
-- | @application/json@
instance Produces ReadPriorityClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadPriorityClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReadPriorityClass MimeYaml


-- *** replacePriorityClass

-- | @PUT \/apis\/scheduling.k8s.io\/v1alpha1\/priorityclasses\/{name}@
-- 
-- replace the specified PriorityClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replacePriorityClass
  :: (Consumes ReplacePriorityClass contentType, MimeRender contentType V1alpha1PriorityClass)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1alpha1PriorityClass -- ^ "body"
  -> Name -- ^ "name" -  name of the PriorityClass
  -> KubernetesRequest ReplacePriorityClass contentType V1alpha1PriorityClass accept
replacePriorityClass _  _ body (Name name) =
  _mkRequest "PUT" ["/apis/scheduling.k8s.io/v1alpha1/priorityclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplacePriorityClass 
instance HasBodyParam ReplacePriorityClass V1alpha1PriorityClass 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplacePriorityClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `addQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam ReplacePriorityClass DryRun where
  applyOptionalParam req (DryRun xs) =
    req `addQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam ReplacePriorityClass FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `addQuery` toQuery ("fieldManager", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReplacePriorityClass mtype

-- | @application/json@
instance Produces ReplacePriorityClass MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplacePriorityClass MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReplacePriorityClass MimeYaml

