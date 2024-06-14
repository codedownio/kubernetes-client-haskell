{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()
import CustomInstances ()

import Kubernetes.OpenAPI.Model
import Kubernetes.OpenAPI.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 10) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy AdmissionregistrationV1ServiceReference)
      propMimeEq MimeJSON (Proxy :: Proxy AdmissionregistrationV1WebhookClientConfig)
      propMimeEq MimeJSON (Proxy :: Proxy ApiextensionsV1ServiceReference)
      propMimeEq MimeJSON (Proxy :: Proxy ApiextensionsV1WebhookClientConfig)
      propMimeEq MimeJSON (Proxy :: Proxy ApiregistrationV1ServiceReference)
      propMimeEq MimeJSON (Proxy :: Proxy AuthenticationV1TokenRequest)
      propMimeEq MimeJSON (Proxy :: Proxy CoreV1EndpointPort)
      propMimeEq MimeJSON (Proxy :: Proxy CoreV1Event)
      propMimeEq MimeJSON (Proxy :: Proxy CoreV1EventList)
      propMimeEq MimeJSON (Proxy :: Proxy CoreV1EventSeries)
      propMimeEq MimeJSON (Proxy :: Proxy DiscoveryV1EndpointPort)
      propMimeEq MimeJSON (Proxy :: Proxy EventsV1Event)
      propMimeEq MimeJSON (Proxy :: Proxy EventsV1EventList)
      propMimeEq MimeJSON (Proxy :: Proxy EventsV1EventSeries)
      propMimeEq MimeJSON (Proxy :: Proxy StorageV1TokenRequest)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIGroup)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIGroupList)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIResource)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIResourceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIService)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIServiceCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIServiceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIServiceSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIServiceStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIVersions)
      propMimeEq MimeJSON (Proxy :: Proxy V1AWSElasticBlockStoreVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Affinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1AggregationRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1AttachedVolume)
      propMimeEq MimeJSON (Proxy :: Proxy V1AzureDiskVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1AzureFilePersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1AzureFileVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Binding)
      propMimeEq MimeJSON (Proxy :: Proxy V1BoundObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSIDriver)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSIDriverList)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSIDriverSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSINode)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSINodeDriver)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSINodeList)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSINodeSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSIPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSIVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Capabilities)
      propMimeEq MimeJSON (Proxy :: Proxy V1CephFSPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1CephFSVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1CertificateSigningRequest)
      propMimeEq MimeJSON (Proxy :: Proxy V1CertificateSigningRequestCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1CertificateSigningRequestList)
      propMimeEq MimeJSON (Proxy :: Proxy V1CertificateSigningRequestSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1CertificateSigningRequestStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1CinderPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1CinderVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClientIPConfig)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClusterRole)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClusterRoleBinding)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClusterRoleBindingList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClusterRoleList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ComponentCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1ComponentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ComponentStatusList)
      propMimeEq MimeJSON (Proxy :: Proxy V1Condition)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMap)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapEnvSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapKeySelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapNodeConfigSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Container)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerImage)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerPort)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerState)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerStateRunning)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerStateTerminated)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerStateWaiting)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ControllerRevision)
      propMimeEq MimeJSON (Proxy :: Proxy V1ControllerRevisionList)
      propMimeEq MimeJSON (Proxy :: Proxy V1CronJob)
      propMimeEq MimeJSON (Proxy :: Proxy V1CronJobList)
      propMimeEq MimeJSON (Proxy :: Proxy V1CronJobSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1CronJobStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1CrossVersionObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceColumnDefinition)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceConversion)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceDefinition)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceDefinitionCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceDefinitionList)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceDefinitionNames)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceDefinitionSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceDefinitionStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceDefinitionVersion)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceSubresourceScale)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceSubresources)
      propMimeEq MimeJSON (Proxy :: Proxy V1CustomResourceValidation)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonEndpoint)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetUpdateStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeleteOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1Deployment)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentList)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1DownwardAPIProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1DownwardAPIVolumeFile)
      propMimeEq MimeJSON (Proxy :: Proxy V1DownwardAPIVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1EmptyDirVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Endpoint)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointAddress)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointConditions)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointHints)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointSlice)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointSliceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointSubset)
      propMimeEq MimeJSON (Proxy :: Proxy V1Endpoints)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointsList)
      propMimeEq MimeJSON (Proxy :: Proxy V1EnvFromSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1EnvVar)
      propMimeEq MimeJSON (Proxy :: Proxy V1EnvVarSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1EphemeralContainer)
      propMimeEq MimeJSON (Proxy :: Proxy V1EphemeralVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1EventSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Eviction)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExecAction)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExternalDocumentation)
      propMimeEq MimeJSON (Proxy :: Proxy V1FCVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1FlexPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1FlexVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1FlockerVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ForZone)
      propMimeEq MimeJSON (Proxy :: Proxy V1GCEPersistentDiskVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1GRPCAction)
      propMimeEq MimeJSON (Proxy :: Proxy V1GitRepoVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1GlusterfsPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1GlusterfsVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1GroupVersionForDiscovery)
      propMimeEq MimeJSON (Proxy :: Proxy V1HTTPGetAction)
      propMimeEq MimeJSON (Proxy :: Proxy V1HTTPHeader)
      propMimeEq MimeJSON (Proxy :: Proxy V1HTTPIngressPath)
      propMimeEq MimeJSON (Proxy :: Proxy V1HTTPIngressRuleValue)
      propMimeEq MimeJSON (Proxy :: Proxy V1HorizontalPodAutoscaler)
      propMimeEq MimeJSON (Proxy :: Proxy V1HorizontalPodAutoscalerList)
      propMimeEq MimeJSON (Proxy :: Proxy V1HorizontalPodAutoscalerSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1HorizontalPodAutoscalerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1HostAlias)
      propMimeEq MimeJSON (Proxy :: Proxy V1HostPathVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1IPBlock)
      propMimeEq MimeJSON (Proxy :: Proxy V1ISCSIPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ISCSIVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Ingress)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressBackend)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressClassParametersReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressClassSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressList)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressServiceBackend)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1IngressTLS)
      propMimeEq MimeJSON (Proxy :: Proxy V1JSONSchemaProps)
      propMimeEq MimeJSON (Proxy :: Proxy V1Job)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobList)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobTemplateSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1KeyToPath)
      propMimeEq MimeJSON (Proxy :: Proxy V1LabelSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1LabelSelectorRequirement)
      propMimeEq MimeJSON (Proxy :: Proxy V1Lease)
      propMimeEq MimeJSON (Proxy :: Proxy V1LeaseList)
      propMimeEq MimeJSON (Proxy :: Proxy V1LeaseSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1Lifecycle)
      propMimeEq MimeJSON (Proxy :: Proxy V1LifecycleHandler)
      propMimeEq MimeJSON (Proxy :: Proxy V1LimitRange)
      propMimeEq MimeJSON (Proxy :: Proxy V1LimitRangeItem)
      propMimeEq MimeJSON (Proxy :: Proxy V1LimitRangeList)
      propMimeEq MimeJSON (Proxy :: Proxy V1LimitRangeSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ListMeta)
      propMimeEq MimeJSON (Proxy :: Proxy V1LoadBalancerIngress)
      propMimeEq MimeJSON (Proxy :: Proxy V1LoadBalancerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1LocalObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1LocalSubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1LocalVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ManagedFieldsEntry)
      propMimeEq MimeJSON (Proxy :: Proxy V1MutatingWebhook)
      propMimeEq MimeJSON (Proxy :: Proxy V1MutatingWebhookConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1MutatingWebhookConfigurationList)
      propMimeEq MimeJSON (Proxy :: Proxy V1NFSVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Namespace)
      propMimeEq MimeJSON (Proxy :: Proxy V1NamespaceCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1NamespaceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1NamespaceSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1NamespaceStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicy)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyEgressRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyIngressRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyList)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyPeer)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyPort)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicySpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1Node)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeAddress)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeAffinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeConfigSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeConfigStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeDaemonEndpoints)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeList)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSelectorRequirement)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSelectorTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSystemInfo)
      propMimeEq MimeJSON (Proxy :: Proxy V1NonResourceAttributes)
      propMimeEq MimeJSON (Proxy :: Proxy V1NonResourceRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1ObjectFieldSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1ObjectMeta)
      propMimeEq MimeJSON (Proxy :: Proxy V1ObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1Overhead)
      propMimeEq MimeJSON (Proxy :: Proxy V1OwnerReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolume)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaim)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimTemplate)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1PhotonPersistentDiskVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Pod)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodAffinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodAffinityTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodAntiAffinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodDNSConfig)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodDNSConfigOption)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodDisruptionBudget)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodDisruptionBudgetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodDisruptionBudgetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodDisruptionBudgetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodIP)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodOS)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodReadinessGate)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodSecurityContext)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodTemplate)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodTemplateList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodTemplateSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PolicyRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1PortStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1PortworxVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Preconditions)
      propMimeEq MimeJSON (Proxy :: Proxy V1PreferredSchedulingTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1PriorityClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1PriorityClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1Probe)
      propMimeEq MimeJSON (Proxy :: Proxy V1ProjectedVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1QuobyteVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1RBDPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1RBDVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationController)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationControllerCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationControllerList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationControllerSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationControllerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceAttributes)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceFieldSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceQuota)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceQuotaList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceQuotaSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceQuotaStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceRequirements)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1Role)
      propMimeEq MimeJSON (Proxy :: Proxy V1RoleBinding)
      propMimeEq MimeJSON (Proxy :: Proxy V1RoleBindingList)
      propMimeEq MimeJSON (Proxy :: Proxy V1RoleList)
      propMimeEq MimeJSON (Proxy :: Proxy V1RoleRef)
      propMimeEq MimeJSON (Proxy :: Proxy V1RollingUpdateDaemonSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1RollingUpdateDeployment)
      propMimeEq MimeJSON (Proxy :: Proxy V1RollingUpdateStatefulSetStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1RuleWithOperations)
      propMimeEq MimeJSON (Proxy :: Proxy V1RuntimeClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1RuntimeClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1SELinuxOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1Scale)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScaleIOPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScaleIOVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScaleSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScaleStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1Scheduling)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScopeSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScopedResourceSelectorRequirement)
      propMimeEq MimeJSON (Proxy :: Proxy V1SeccompProfile)
      propMimeEq MimeJSON (Proxy :: Proxy V1Secret)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretEnvSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretKeySelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretList)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecurityContext)
      propMimeEq MimeJSON (Proxy :: Proxy V1SelfSubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1SelfSubjectAccessReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1SelfSubjectRulesReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1SelfSubjectRulesReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServerAddressByClientCIDR)
      propMimeEq MimeJSON (Proxy :: Proxy V1Service)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceAccount)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceAccountList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceAccountTokenProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceBackendPort)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServicePort)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1SessionAffinityConfig)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetPersistentVolumeClaimRetentionPolicy)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetUpdateStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1Status)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatusCause)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatusDetails)
      propMimeEq MimeJSON (Proxy :: Proxy V1StorageClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1StorageClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1StorageOSPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1StorageOSVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Subject)
      propMimeEq MimeJSON (Proxy :: Proxy V1SubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1SubjectAccessReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1SubjectAccessReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1SubjectRulesReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1Sysctl)
      propMimeEq MimeJSON (Proxy :: Proxy V1TCPSocketAction)
      propMimeEq MimeJSON (Proxy :: Proxy V1Taint)
      propMimeEq MimeJSON (Proxy :: Proxy V1TokenRequestSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1TokenRequestStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1TokenReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1TokenReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1TokenReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1Toleration)
      propMimeEq MimeJSON (Proxy :: Proxy V1TopologySelectorLabelRequirement)
      propMimeEq MimeJSON (Proxy :: Proxy V1TopologySelectorTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1TopologySpreadConstraint)
      propMimeEq MimeJSON (Proxy :: Proxy V1TypedLocalObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1UncountedTerminatedPods)
      propMimeEq MimeJSON (Proxy :: Proxy V1UserInfo)
      propMimeEq MimeJSON (Proxy :: Proxy V1ValidatingWebhook)
      propMimeEq MimeJSON (Proxy :: Proxy V1ValidatingWebhookConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1ValidatingWebhookConfigurationList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ValidationRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1Volume)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeAttachment)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeAttachmentList)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeAttachmentSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeAttachmentSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeAttachmentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeDevice)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeError)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeMount)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeNodeAffinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeNodeResources)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1VsphereVirtualDiskVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1WatchEvent)
      propMimeEq MimeJSON (Proxy :: Proxy V1WebhookConversion)
      propMimeEq MimeJSON (Proxy :: Proxy V1WeightedPodAffinityTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1WindowsSecurityContextOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1CSIStorageCapacity)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1CSIStorageCapacityList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1Overhead)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1RuntimeClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1RuntimeClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1RuntimeClassSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1Scheduling)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1ServerStorageVersion)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1StorageVersion)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1StorageVersionCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1StorageVersionList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1StorageVersionStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1AllowedCSIDriver)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1AllowedFlexVolume)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1AllowedHostPath)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CSIStorageCapacity)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CSIStorageCapacityList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CronJob)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CronJobList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CronJobSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CronJobStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Endpoint)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EndpointConditions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EndpointHints)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EndpointPort)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EndpointSlice)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EndpointSliceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Event)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EventList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EventSeries)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1FSGroupStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1FlowDistinguisherMethod)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1FlowSchema)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1FlowSchemaCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1FlowSchemaList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1FlowSchemaSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1FlowSchemaStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ForZone)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1GroupSubject)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1HostPortRange)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IDRange)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1JobTemplateSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1LimitResponse)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1LimitedPriorityLevelConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NonResourcePolicyRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Overhead)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodDisruptionBudget)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodDisruptionBudgetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodDisruptionBudgetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodDisruptionBudgetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodSecurityPolicy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodSecurityPolicyList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodSecurityPolicySpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PolicyRulesWithSubjects)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PriorityLevelConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PriorityLevelConfigurationCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PriorityLevelConfigurationList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PriorityLevelConfigurationReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PriorityLevelConfigurationSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PriorityLevelConfigurationStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1QueuingConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ResourcePolicyRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RunAsGroupStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RunAsUserStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RuntimeClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RuntimeClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RuntimeClassStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SELinuxStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Scheduling)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ServiceAccountSubject)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Subject)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SupplementalGroupsStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1UserSubject)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2FlowDistinguisherMethod)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2FlowSchema)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2FlowSchemaCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2FlowSchemaList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2FlowSchemaSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2FlowSchemaStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2GroupSubject)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2LimitResponse)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2LimitedPriorityLevelConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2NonResourcePolicyRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2PolicyRulesWithSubjects)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2PriorityLevelConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2PriorityLevelConfigurationCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2PriorityLevelConfigurationList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2PriorityLevelConfigurationReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2PriorityLevelConfigurationSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2PriorityLevelConfigurationStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2QueuingConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ResourcePolicyRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ServiceAccountSubject)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2Subject)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2UserSubject)
      propMimeEq MimeJSON (Proxy :: Proxy V2ContainerResourceMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2ContainerResourceMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2CrossVersionObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V2ExternalMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2ExternalMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2HPAScalingPolicy)
      propMimeEq MimeJSON (Proxy :: Proxy V2HPAScalingRules)
      propMimeEq MimeJSON (Proxy :: Proxy V2HorizontalPodAutoscaler)
      propMimeEq MimeJSON (Proxy :: Proxy V2HorizontalPodAutoscalerBehavior)
      propMimeEq MimeJSON (Proxy :: Proxy V2HorizontalPodAutoscalerCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V2HorizontalPodAutoscalerList)
      propMimeEq MimeJSON (Proxy :: Proxy V2HorizontalPodAutoscalerSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2HorizontalPodAutoscalerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2MetricIdentifier)
      propMimeEq MimeJSON (Proxy :: Proxy V2MetricSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2MetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2MetricTarget)
      propMimeEq MimeJSON (Proxy :: Proxy V2MetricValueStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2ObjectMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2ObjectMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2PodsMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2PodsMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2ResourceMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2ResourceMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ContainerResourceMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ContainerResourceMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1CrossVersionObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ExternalMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ExternalMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscaler)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscalerCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscalerList)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscalerSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscalerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1MetricSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1MetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ObjectMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ObjectMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1PodsMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1PodsMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ResourceMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ResourceMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2ContainerResourceMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2ContainerResourceMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2CrossVersionObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2ExternalMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2ExternalMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2HPAScalingPolicy)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2HPAScalingRules)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2HorizontalPodAutoscaler)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2HorizontalPodAutoscalerBehavior)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2HorizontalPodAutoscalerCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2HorizontalPodAutoscalerList)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2HorizontalPodAutoscalerSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2HorizontalPodAutoscalerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2MetricIdentifier)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2MetricSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2MetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2MetricTarget)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2MetricValueStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2ObjectMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2ObjectMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2PodsMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2PodsMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2ResourceMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta2ResourceMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy VersionInfo)
      
