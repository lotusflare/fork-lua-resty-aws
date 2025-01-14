local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-11-01",
    "endpointPrefix": "eks",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "Amazon EKS",
    "serviceFullName": "Amazon Elastic Kubernetes Service",
    "serviceId": "EKS",
    "signatureVersion": "v4",
    "signingName": "eks",
    "uid": "eks-2017-11-01"
  },
  "operations": {
    "CreateCluster": {
      "name": "CreateCluster",
      "http": {
        "method": "POST",
        "requestUri": "/clusters"
      },
      "input": {
        "shape": "CreateClusterRequest"
      },
      "output": {
        "shape": "CreateClusterResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "UnsupportedAvailabilityZoneException"
        }
      ],
      "documentation": "<p>Creates an Amazon EKS control plane. </p> <p>The Amazon EKS control plane consists of control plane instances that run the Kubernetes software, such as <code>etcd</code> and the API server. The control plane runs in an account managed by AWS, and the Kubernetes API is exposed via the Amazon EKS API server endpoint. Each Amazon EKS cluster control plane is single-tenant and unique and runs on its own set of Amazon EC2 instances.</p> <p>The cluster control plane is provisioned across multiple Availability Zones and fronted by an Elastic Load Balancing Network Load Balancer. Amazon EKS also provisions elastic network interfaces in your VPC subnets to provide connectivity from the control plane instances to the worker nodes (for example, to support <code>kubectl exec</code>, <code>logs</code>, and <code>proxy</code> data flows).</p> <p>Amazon EKS worker nodes run in your AWS account and connect to your cluster's control plane via the Kubernetes API server endpoint and a certificate file that is created for your cluster.</p> <p>You can use the <code>endpointPublicAccess</code> and <code>endpointPrivateAccess</code> parameters to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS Cluster Endpoint Access Control</a> in the <i> <i>Amazon EKS User Guide</i> </i>. </p> <p>You can use the <code>logging</code> parameter to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html\">Amazon EKS Cluster Control Plane Logs</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p> <note> <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see <a href=\"http://aws.amazon.com/cloudwatch/pricing/\">Amazon CloudWatch Pricing</a>.</p> </note> <p>Cluster creation typically takes between 10 and 15 minutes. After you create an Amazon EKS cluster, you must configure your Kubernetes tooling to communicate with the API server and launch worker nodes into your cluster. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html\">Managing Cluster Authentication</a> and <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html\">Launching Amazon EKS Worker Nodes</a> in the <i>Amazon EKS User Guide</i>.</p>"
    },
    "CreateFargateProfile": {
      "name": "CreateFargateProfile",
      "http": {
        "method": "POST",
        "requestUri": "/clusters/{name}/fargate-profiles"
      },
      "input": {
        "shape": "CreateFargateProfileRequest"
      },
      "output": {
        "shape": "CreateFargateProfileResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "UnsupportedAvailabilityZoneException"
        }
      ],
      "documentation": "<p>Creates an AWS Fargate profile for your Amazon EKS cluster. You must have at least one Fargate profile in a cluster to be able to run pods on Fargate.</p> <p>The Fargate profile allows an administrator to declare which pods run on Fargate and specify which pods run on which Fargate profile. This declaration is done through the profile’s selectors. Each profile can have up to five selectors that contain a namespace and labels. A namespace is required for every selector. The label field consists of multiple optional key-value pairs. Pods that match the selectors are scheduled on Fargate. If a to-be-scheduled pod matches any of the selectors in the Fargate profile, then that pod is run on Fargate.</p> <p>When you create a Fargate profile, you must specify a pod execution role to use with the pods that are scheduled with the profile. This role is added to the cluster's Kubernetes <a href=\"https://kubernetes.io/docs/admin/authorization/rbac/\">Role Based Access Control</a> (RBAC) for authorization so that the <code>kubelet</code> that is running on the Fargate infrastructure can register with your Amazon EKS cluster so that it can appear in your cluster as a node. The pod execution role also provides IAM permissions to the Fargate infrastructure to allow read access to Amazon ECR image repositories. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html\">Pod Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p> <p>Fargate profiles are immutable. However, you can create a new updated profile to replace an existing profile and then delete the original after the updated profile has finished creating.</p> <p>If any Fargate profiles in a cluster are in the <code>DELETING</code> status, you must wait for that Fargate profile to finish deleting before you can create any other profiles in that cluster.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html\">AWS Fargate Profile</a> in the <i>Amazon EKS User Guide</i>.</p>"
    },
    "CreateNodegroup": {
      "name": "CreateNodegroup",
      "http": {
        "method": "POST",
        "requestUri": "/clusters/{name}/node-groups"
      },
      "input": {
        "shape": "CreateNodegroupRequest"
      },
      "output": {
        "shape": "CreateNodegroupResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Creates a managed worker node group for an Amazon EKS cluster. You can only create a node group for your cluster that is equal to the current Kubernetes version for the cluster. All node groups are created with the latest AMI release version for the respective minor Kubernetes version of the cluster, unless you deploy a custom AMI using a launch template. For more information about using launch templates, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a>.</p> <p>An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and associated Amazon EC2 instances that are managed by AWS for an Amazon EKS cluster. Each node group uses a version of the Amazon EKS-optimized Amazon Linux 2 AMI. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html\">Managed Node Groups</a> in the <i>Amazon EKS User Guide</i>. </p>"
    },
    "DeleteCluster": {
      "name": "DeleteCluster",
      "http": {
        "method": "DELETE",
        "requestUri": "/clusters/{name}"
      },
      "input": {
        "shape": "DeleteClusterRequest"
      },
      "output": {
        "shape": "DeleteClusterResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes the Amazon EKS cluster control plane.</p> <p>If you have active services in your cluster that are associated with a load balancer, you must delete those services before deleting the cluster so that the load balancers are deleted properly. Otherwise, you can have orphaned resources in your VPC that prevent you from being able to delete the VPC. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html\">Deleting a Cluster</a> in the <i>Amazon EKS User Guide</i>.</p> <p>If you have managed node groups or Fargate profiles attached to the cluster, you must delete them first. For more information, see <a>DeleteNodegroup</a> and <a>DeleteFargateProfile</a>.</p>"
    },
    "DeleteFargateProfile": {
      "name": "DeleteFargateProfile",
      "http": {
        "method": "DELETE",
        "requestUri": "/clusters/{name}/fargate-profiles/{fargateProfileName}"
      },
      "input": {
        "shape": "DeleteFargateProfileRequest"
      },
      "output": {
        "shape": "DeleteFargateProfileResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes an AWS Fargate profile.</p> <p>When you delete a Fargate profile, any pods running on Fargate that were created with the profile are deleted. If those pods match another Fargate profile, then they are scheduled on Fargate with that profile. If they no longer match any Fargate profiles, then they are not scheduled on Fargate and they may remain in a pending state.</p> <p>Only one Fargate profile in a cluster can be in the <code>DELETING</code> status at a time. You must wait for a Fargate profile to finish deleting before you can delete any other profiles in that cluster.</p>"
    },
    "DeleteNodegroup": {
      "name": "DeleteNodegroup",
      "http": {
        "method": "DELETE",
        "requestUri": "/clusters/{name}/node-groups/{nodegroupName}"
      },
      "input": {
        "shape": "DeleteNodegroupRequest"
      },
      "output": {
        "shape": "DeleteNodegroupResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes an Amazon EKS node group for a cluster.</p>"
    },
    "DescribeCluster": {
      "name": "DescribeCluster",
      "http": {
        "method": "GET",
        "requestUri": "/clusters/{name}"
      },
      "input": {
        "shape": "DescribeClusterRequest"
      },
      "output": {
        "shape": "DescribeClusterResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Returns descriptive information about an Amazon EKS cluster.</p> <p>The API server endpoint and certificate authority data returned by this operation are required for <code>kubelet</code> and <code>kubectl</code> to communicate with your Kubernetes API server. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html\">Create a kubeconfig for Amazon EKS</a>.</p> <note> <p>The API server endpoint and certificate authority data aren't available until the cluster reaches the <code>ACTIVE</code> state.</p> </note>"
    },
    "DescribeFargateProfile": {
      "name": "DescribeFargateProfile",
      "http": {
        "method": "GET",
        "requestUri": "/clusters/{name}/fargate-profiles/{fargateProfileName}"
      },
      "input": {
        "shape": "DescribeFargateProfileRequest"
      },
      "output": {
        "shape": "DescribeFargateProfileResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns descriptive information about an AWS Fargate profile.</p>"
    },
    "DescribeNodegroup": {
      "name": "DescribeNodegroup",
      "http": {
        "method": "GET",
        "requestUri": "/clusters/{name}/node-groups/{nodegroupName}"
      },
      "input": {
        "shape": "DescribeNodegroupRequest"
      },
      "output": {
        "shape": "DescribeNodegroupResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Returns descriptive information about an Amazon EKS node group.</p>"
    },
    "DescribeUpdate": {
      "name": "DescribeUpdate",
      "http": {
        "method": "GET",
        "requestUri": "/clusters/{name}/updates/{updateId}"
      },
      "input": {
        "shape": "DescribeUpdateRequest"
      },
      "output": {
        "shape": "DescribeUpdateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns descriptive information about an update against your Amazon EKS cluster or associated managed node group.</p> <p>When the status of the update is <code>Succeeded</code>, the update is complete. If an update fails, the status is <code>Failed</code>, and an error detail explains the reason for the failure.</p>"
    },
    "ListClusters": {
      "name": "ListClusters",
      "http": {
        "method": "GET",
        "requestUri": "/clusters"
      },
      "input": {
        "shape": "ListClustersRequest"
      },
      "output": {
        "shape": "ListClustersResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Lists the Amazon EKS clusters in your AWS account in the specified Region.</p>"
    },
    "ListFargateProfiles": {
      "name": "ListFargateProfiles",
      "http": {
        "method": "GET",
        "requestUri": "/clusters/{name}/fargate-profiles"
      },
      "input": {
        "shape": "ListFargateProfilesRequest"
      },
      "output": {
        "shape": "ListFargateProfilesResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        }
      ],
      "documentation": "<p>Lists the AWS Fargate profiles associated with the specified cluster in your AWS account in the specified Region.</p>"
    },
    "ListNodegroups": {
      "name": "ListNodegroups",
      "http": {
        "method": "GET",
        "requestUri": "/clusters/{name}/node-groups"
      },
      "input": {
        "shape": "ListNodegroupsRequest"
      },
      "output": {
        "shape": "ListNodegroupsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the Amazon EKS managed node groups associated with the specified cluster in your AWS account in the specified Region. Self-managed node groups are not listed.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>List the tags for an Amazon EKS resource.</p>"
    },
    "ListUpdates": {
      "name": "ListUpdates",
      "http": {
        "method": "GET",
        "requestUri": "/clusters/{name}/updates"
      },
      "input": {
        "shape": "ListUpdatesRequest"
      },
      "output": {
        "shape": "ListUpdatesResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Lists the updates associated with an Amazon EKS cluster or managed node group in your AWS account, in the specified Region.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Associates the specified tags to a resource with the specified <code>resourceArn</code>. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well. Tags that you create for Amazon EKS resources do not propagate to any other resources associated with the cluster. For example, if you tag a cluster with this operation, that tag does not automatically propagate to the subnets and worker nodes associated with the cluster.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Deletes specified tags from a resource.</p>"
    },
    "UpdateClusterConfig": {
      "name": "UpdateClusterConfig",
      "http": {
        "method": "POST",
        "requestUri": "/clusters/{name}/update-config"
      },
      "input": {
        "shape": "UpdateClusterConfigRequest"
      },
      "output": {
        "shape": "UpdateClusterConfigResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Updates an Amazon EKS cluster configuration. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the <a>DescribeUpdate</a> API operation.</p> <p>You can use this API operation to enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html\">Amazon EKS Cluster Control Plane Logs</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p> <note> <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see <a href=\"http://aws.amazon.com/cloudwatch/pricing/\">Amazon CloudWatch Pricing</a>.</p> </note> <p>You can also use this API operation to enable or disable public and private access to your cluster's Kubernetes API server endpoint. By default, public access is enabled, and private access is disabled. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS Cluster Endpoint Access Control</a> in the <i> <i>Amazon EKS User Guide</i> </i>. </p> <important> <p>At this time, you can not update the subnets or security group IDs for an existing cluster.</p> </important> <p>Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to <code>UPDATING</code> (this status transition is eventually consistent). When the update is complete (either <code>Failed</code> or <code>Successful</code>), the cluster status moves to <code>Active</code>.</p>"
    },
    "UpdateClusterVersion": {
      "name": "UpdateClusterVersion",
      "http": {
        "method": "POST",
        "requestUri": "/clusters/{name}/updates"
      },
      "input": {
        "shape": "UpdateClusterVersionRequest"
      },
      "output": {
        "shape": "UpdateClusterVersionResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Updates an Amazon EKS cluster to the specified Kubernetes version. Your cluster continues to function during the update. The response output includes an update ID that you can use to track the status of your cluster update with the <a>DescribeUpdate</a> API operation.</p> <p>Cluster updates are asynchronous, and they should finish within a few minutes. During an update, the cluster status moves to <code>UPDATING</code> (this status transition is eventually consistent). When the update is complete (either <code>Failed</code> or <code>Successful</code>), the cluster status moves to <code>Active</code>.</p> <p>If your cluster has managed node groups attached to it, all of your node groups’ Kubernetes versions must match the cluster’s Kubernetes version in order to update the cluster to a new Kubernetes version.</p>"
    },
    "UpdateNodegroupConfig": {
      "name": "UpdateNodegroupConfig",
      "http": {
        "method": "POST",
        "requestUri": "/clusters/{name}/node-groups/{nodegroupName}/update-config"
      },
      "input": {
        "shape": "UpdateNodegroupConfigRequest"
      },
      "output": {
        "shape": "UpdateNodegroupConfigResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Updates an Amazon EKS managed node group configuration. Your node group continues to function during the update. The response output includes an update ID that you can use to track the status of your node group update with the <a>DescribeUpdate</a> API operation. Currently you can update the Kubernetes labels for a node group or the scaling configuration.</p>"
    },
    "UpdateNodegroupVersion": {
      "name": "UpdateNodegroupVersion",
      "http": {
        "method": "POST",
        "requestUri": "/clusters/{name}/node-groups/{nodegroupName}/update-version"
      },
      "input": {
        "shape": "UpdateNodegroupVersionRequest"
      },
      "output": {
        "shape": "UpdateNodegroupVersionResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ServerException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Updates the Kubernetes version or AMI version of an Amazon EKS managed node group.</p> <p>You can update a node group using a launch template only if the node group was originally deployed with a launch template. If you need to update a custom AMI in a node group that was deployed with a launch template, then update your custom AMI, specify the new ID in a new version of the launch template, and then update the node group to the new version of the launch template.</p> <p>If you update without a launch template, then you can update to the latest available AMI version of a node group's current Kubernetes version by not specifying a Kubernetes version in the request. You can update to the latest AMI version of your cluster's current Kubernetes version by specifying your cluster's Kubernetes version in the request. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html\">Amazon EKS-Optimized Linux AMI Versions</a> in the <i>Amazon EKS User Guide</i>.</p> <p>You cannot roll back a node group to an earlier Kubernetes version or AMI version.</p> <p>When a node in a managed node group is terminated due to a scaling action or update, the pods in that node are drained first. Amazon EKS attempts to drain the nodes gracefully and will fail if it is unable to do so. You can <code>force</code> the update if Amazon EKS is unable to drain the nodes as a result of a pod disruption budget issue.</p>"
    }
  },
  "shapes": {
    "AMITypes": {
      "type": "string",
      "enum": [
        "AL2_x86_64",
        "AL2_x86_64_GPU",
        "AL2_ARM_64"
      ]
    },
    "AutoScalingGroup": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the Auto Scaling group associated with an Amazon EKS managed node group.</p>"
        }
      },
      "documentation": "<p>An Auto Scaling group that is associated with an Amazon EKS managed node group.</p>"
    },
    "AutoScalingGroupList": {
      "type": "list",
      "member": {
        "shape": "AutoScalingGroup"
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BoxedBoolean": {
      "type": "boolean",
      "box": true
    },
    "BoxedInteger": {
      "type": "integer",
      "box": true
    },
    "Capacity": {
      "type": "integer",
      "box": true,
      "min": 1
    },
    "Certificate": {
      "type": "structure",
      "members": {
        "data": {
          "shape": "String",
          "documentation": "<p>The Base64-encoded certificate data required to communicate with your cluster. Add this to the <code>certificate-authority-data</code> section of the <code>kubeconfig</code> file for your cluster.</p>"
        }
      },
      "documentation": "<p>An object representing the <code>certificate-authority-data</code> for your cluster.</p>"
    },
    "Cluster": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the cluster.</p>"
        },
        "arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the cluster.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix epoch timestamp in seconds for when the cluster was created.</p>"
        },
        "version": {
          "shape": "String",
          "documentation": "<p>The Kubernetes server version for the cluster.</p>"
        },
        "endpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint for your Kubernetes API server.</p>"
        },
        "roleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.</p>"
        },
        "resourcesVpcConfig": {
          "shape": "VpcConfigResponse",
          "documentation": "<p>The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html\">Cluster VPC Considerations</a> and <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html\">Cluster Security Group Considerations</a> in the <i>Amazon EKS User Guide</i>.</p>"
        },
        "logging": {
          "shape": "Logging",
          "documentation": "<p>The logging configuration for your cluster.</p>"
        },
        "identity": {
          "shape": "Identity",
          "documentation": "<p>The identity provider information for the cluster.</p>"
        },
        "status": {
          "shape": "ClusterStatus",
          "documentation": "<p>The current status of the cluster.</p>"
        },
        "certificateAuthority": {
          "shape": "Certificate",
          "documentation": "<p>The <code>certificate-authority-data</code> for your cluster.</p>"
        },
        "clientRequestToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version of your Amazon EKS cluster. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/platform-versions.html\">Platform Versions</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The metadata that you apply to the cluster to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Cluster tags do not propagate to any other resources associated with the cluster. </p>"
        },
        "encryptionConfig": {
          "shape": "EncryptionConfigList",
          "documentation": "<p>The encryption configuration for the cluster.</p>"
        }
      },
      "documentation": "<p>An object representing an Amazon EKS cluster.</p>"
    },
    "ClusterName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^[0-9A-Za-z][A-Za-z0-9\\-_]*"
    },
    "ClusterStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "DELETING",
        "FAILED",
        "UPDATING"
      ]
    },
    "CreateClusterRequest": {
      "type": "structure",
      "required": [
        "name",
        "roleArn",
        "resourcesVpcConfig"
      ],
      "members": {
        "name": {
          "shape": "ClusterName",
          "documentation": "<p>The unique name to give to your cluster.</p>"
        },
        "version": {
          "shape": "String",
          "documentation": "<p>The desired Kubernetes version for your cluster. If you don't specify a value here, the latest version available in Amazon EKS is used.</p>"
        },
        "roleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html\">Amazon EKS Service IAM Role</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>"
        },
        "resourcesVpcConfig": {
          "shape": "VpcConfigRequest",
          "documentation": "<p>The VPC configuration used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html\">Cluster VPC Considerations</a> and <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html\">Cluster Security Group Considerations</a> in the <i>Amazon EKS User Guide</i>. You must specify at least two subnets. You can specify up to five security groups, but we recommend that you use a dedicated security group for your cluster control plane.</p>"
        },
        "logging": {
          "shape": "Logging",
          "documentation": "<p>Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html\">Amazon EKS Cluster Control Plane Logs</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p> <note> <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see <a href=\"http://aws.amazon.com/cloudwatch/pricing/\">Amazon CloudWatch Pricing</a>.</p> </note>"
        },
        "clientRequestToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The metadata to apply to the cluster to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define.</p>"
        },
        "encryptionConfig": {
          "shape": "EncryptionConfigList",
          "documentation": "<p>The encryption configuration for the cluster.</p>"
        }
      }
    },
    "CreateClusterResponse": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "Cluster",
          "documentation": "<p>The full description of your new cluster.</p>"
        }
      }
    },
    "CreateFargateProfileRequest": {
      "type": "structure",
      "required": [
        "fargateProfileName",
        "clusterName",
        "podExecutionRoleArn"
      ],
      "members": {
        "fargateProfileName": {
          "shape": "String",
          "documentation": "<p>The name of the Fargate profile.</p>"
        },
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster to apply the Fargate profile to.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "podExecutionRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in the Fargate profile. The pod execution role allows Fargate infrastructure to register with your cluster as a node, and it provides read access to Amazon ECR image repositories. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html\">Pod Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>"
        },
        "subnets": {
          "shape": "StringList",
          "documentation": "<p>The IDs of subnets to launch your pods into. At this time, pods running on Fargate are not assigned public IP addresses, so only private subnets (with no direct route to an Internet Gateway) are accepted for this parameter.</p>"
        },
        "selectors": {
          "shape": "FargateProfileSelectors",
          "documentation": "<p>The selectors to match for pods to use this Fargate profile. Each selector must have an associated namespace. Optionally, you can also specify labels for a namespace. You may specify up to five selectors in a Fargate profile.</p>"
        },
        "clientRequestToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The metadata to apply to the Fargate profile to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Fargate profile tags do not propagate to any other resources associated with the Fargate profile, such as the pods that are scheduled with it.</p>"
        }
      }
    },
    "CreateFargateProfileResponse": {
      "type": "structure",
      "members": {
        "fargateProfile": {
          "shape": "FargateProfile",
          "documentation": "<p>The full description of your new Fargate profile.</p>"
        }
      }
    },
    "CreateNodegroupRequest": {
      "type": "structure",
      "required": [
        "clusterName",
        "nodegroupName",
        "subnets",
        "nodeRole"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster to create the node group in.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nodegroupName": {
          "shape": "String",
          "documentation": "<p>The unique name to give your node group.</p>"
        },
        "scalingConfig": {
          "shape": "NodegroupScalingConfig",
          "documentation": "<p>The scaling configuration details for the Auto Scaling group that is created for your node group.</p>"
        },
        "diskSize": {
          "shape": "BoxedInteger",
          "documentation": "<p>The root device disk size (in GiB) for your node group instances. The default disk size is 20 GiB. If you specify <code>launchTemplate</code>, then don't specify <code>diskSize</code>, or the node group deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "subnets": {
          "shape": "StringList",
          "documentation": "<p>The subnets to use for the Auto Scaling group that is created for your node group. These subnets must have the tag key <code>kubernetes.io/cluster/CLUSTER_NAME</code> with a value of <code>shared</code>, where <code>CLUSTER_NAME</code> is replaced with the name of your cluster. If you specify <code>launchTemplate</code>, then don't specify <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html\"> <code>SubnetId</code> </a> in your launch template, or the node group deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "instanceTypes": {
          "shape": "StringList",
          "documentation": "<p>The instance type to use for your node group. You can specify a single instance type for a node group. The default value for <code>instanceTypes</code> is <code>t3.medium</code>. If you choose a GPU instance type, be sure to specify <code>AL2_x86_64_GPU</code> with the <code>amiType</code> parameter. If you specify <code>launchTemplate</code>, then don't specify <code>instanceTypes</code>, or the node group deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "amiType": {
          "shape": "AMITypes",
          "documentation": "<p>The AMI type for your node group. GPU instance types should use the <code>AL2_x86_64_GPU</code> AMI type, which uses the Amazon EKS-optimized Linux AMI with GPU support. Non-GPU instances should use the <code>AL2_x86_64</code> AMI type, which uses the Amazon EKS-optimized Linux AMI. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify <code>amiType</code>, or the node group deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "remoteAccess": {
          "shape": "RemoteAccessConfig",
          "documentation": "<p>The remote access (SSH) configuration to use with your node group. If you specify <code>launchTemplate</code>, then don't specify <code>remoteAccess</code>, or the node group deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "nodeRole": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role to associate with your node group. The Amazon EKS worker node <code>kubelet</code> daemon makes calls to AWS APIs on your behalf. Worker nodes receive permissions for these API calls through an IAM instance profile and associated policies. Before you can launch worker nodes and register them into a cluster, you must create an IAM role for those worker nodes to use when they are launched. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html\">Amazon EKS Worker Node IAM Role</a> in the <i> <i>Amazon EKS User Guide</i> </i>. If you specify <code>launchTemplate</code>, then don't specify <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html\"> <code>IamInstanceProfile</code> </a> in your launch template, or the node group deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "labels": {
          "shape": "labelsMap",
          "documentation": "<p>The Kubernetes labels to be applied to the nodes in the node group when they are created.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The metadata to apply to the node group to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Node group tags do not propagate to any other resources associated with the node group, such as the Amazon EC2 instances or subnets.</p>"
        },
        "clientRequestToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "launchTemplate": {
          "shape": "LaunchTemplateSpecification",
          "documentation": "<p>An object representing a node group's launch template specification. If specified, then do not specify <code>instanceTypes</code>, <code>diskSize</code>, or <code>remoteAccess</code>. If specified, make sure that the launch template meets the requirements in <code>launchTemplateSpecification</code>.</p>"
        },
        "version": {
          "shape": "String",
          "documentation": "<p>The Kubernetes version to use for your managed nodes. By default, the Kubernetes version of the cluster is used, and this is the only accepted specified value. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify <code>version</code>, or the node group deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "releaseVersion": {
          "shape": "String",
          "documentation": "<p>The AMI version of the Amazon EKS-optimized AMI to use with your node group. By default, the latest available AMI version for the node group's current Kubernetes version is used. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html\">Amazon EKS-Optimized Linux AMI Versions</a> in the <i>Amazon EKS User Guide</i>. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify <code>releaseVersion</code>, or the node group deployment will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        }
      }
    },
    "CreateNodegroupResponse": {
      "type": "structure",
      "members": {
        "nodegroup": {
          "shape": "Nodegroup",
          "documentation": "<p>The full description of your new node group.</p>"
        }
      }
    },
    "DeleteClusterRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the cluster to delete.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DeleteClusterResponse": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "Cluster",
          "documentation": "<p>The full description of the cluster to delete.</p>"
        }
      }
    },
    "DeleteFargateProfileRequest": {
      "type": "structure",
      "required": [
        "clusterName",
        "fargateProfileName"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster associated with the Fargate profile to delete.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "fargateProfileName": {
          "shape": "String",
          "documentation": "<p>The name of the Fargate profile to delete.</p>",
          "location": "uri",
          "locationName": "fargateProfileName"
        }
      }
    },
    "DeleteFargateProfileResponse": {
      "type": "structure",
      "members": {
        "fargateProfile": {
          "shape": "FargateProfile",
          "documentation": "<p>The deleted Fargate profile.</p>"
        }
      }
    },
    "DeleteNodegroupRequest": {
      "type": "structure",
      "required": [
        "clusterName",
        "nodegroupName"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster that is associated with your node group.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nodegroupName": {
          "shape": "String",
          "documentation": "<p>The name of the node group to delete.</p>",
          "location": "uri",
          "locationName": "nodegroupName"
        }
      }
    },
    "DeleteNodegroupResponse": {
      "type": "structure",
      "members": {
        "nodegroup": {
          "shape": "Nodegroup",
          "documentation": "<p>The full description of your deleted node group.</p>"
        }
      }
    },
    "DescribeClusterRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the cluster to describe.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DescribeClusterResponse": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "Cluster",
          "documentation": "<p>The full description of your specified cluster.</p>"
        }
      }
    },
    "DescribeFargateProfileRequest": {
      "type": "structure",
      "required": [
        "clusterName",
        "fargateProfileName"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster associated with the Fargate profile.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "fargateProfileName": {
          "shape": "String",
          "documentation": "<p>The name of the Fargate profile to describe.</p>",
          "location": "uri",
          "locationName": "fargateProfileName"
        }
      }
    },
    "DescribeFargateProfileResponse": {
      "type": "structure",
      "members": {
        "fargateProfile": {
          "shape": "FargateProfile",
          "documentation": "<p>The full description of your Fargate profile.</p>"
        }
      }
    },
    "DescribeNodegroupRequest": {
      "type": "structure",
      "required": [
        "clusterName",
        "nodegroupName"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster associated with the node group.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nodegroupName": {
          "shape": "String",
          "documentation": "<p>The name of the node group to describe.</p>",
          "location": "uri",
          "locationName": "nodegroupName"
        }
      }
    },
    "DescribeNodegroupResponse": {
      "type": "structure",
      "members": {
        "nodegroup": {
          "shape": "Nodegroup",
          "documentation": "<p>The full description of your node group.</p>"
        }
      }
    },
    "DescribeUpdateRequest": {
      "type": "structure",
      "required": [
        "name",
        "updateId"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster associated with the update.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "updateId": {
          "shape": "String",
          "documentation": "<p>The ID of the update to describe.</p>",
          "location": "uri",
          "locationName": "updateId"
        },
        "nodegroupName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS node group associated with the update.</p>",
          "location": "querystring",
          "locationName": "nodegroupName"
        }
      }
    },
    "DescribeUpdateResponse": {
      "type": "structure",
      "members": {
        "update": {
          "shape": "Update",
          "documentation": "<p>The full description of the specified update.</p>"
        }
      }
    },
    "EncryptionConfig": {
      "type": "structure",
      "members": {
        "resources": {
          "shape": "StringList",
          "documentation": "<p>Specifies the resources to be encrypted. The only supported value is \"secrets\".</p>"
        },
        "provider": {
          "shape": "Provider",
          "documentation": "<p>AWS Key Management Service (AWS KMS) customer master key (CMK). Either the ARN or the alias can be used.</p>"
        }
      },
      "documentation": "<p>The encryption configuration for the cluster.</p>"
    },
    "EncryptionConfigList": {
      "type": "list",
      "member": {
        "shape": "EncryptionConfig"
      },
      "max": 1
    },
    "ErrorCode": {
      "type": "string",
      "enum": [
        "SubnetNotFound",
        "SecurityGroupNotFound",
        "EniLimitReached",
        "IpNotAvailable",
        "AccessDenied",
        "OperationNotPermitted",
        "VpcIdNotFound",
        "Unknown",
        "NodeCreationFailure",
        "PodEvictionFailure",
        "InsufficientFreeAddresses"
      ]
    },
    "ErrorDetail": {
      "type": "structure",
      "members": {
        "errorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>A brief description of the error. </p> <ul> <li> <p> <b>SubnetNotFound</b>: We couldn't find one of the subnets associated with the cluster.</p> </li> <li> <p> <b>SecurityGroupNotFound</b>: We couldn't find one of the security groups associated with the cluster.</p> </li> <li> <p> <b>EniLimitReached</b>: You have reached the elastic network interface limit for your account.</p> </li> <li> <p> <b>IpNotAvailable</b>: A subnet associated with the cluster doesn't have any free IP addresses.</p> </li> <li> <p> <b>AccessDenied</b>: You don't have permissions to perform the specified operation.</p> </li> <li> <p> <b>OperationNotPermitted</b>: The service role associated with the cluster doesn't have the required access permissions for Amazon EKS.</p> </li> <li> <p> <b>VpcIdNotFound</b>: We couldn't find the VPC associated with the cluster.</p> </li> </ul>"
        },
        "errorMessage": {
          "shape": "String",
          "documentation": "<p>A more complete description of the error.</p>"
        },
        "resourceIds": {
          "shape": "StringList",
          "documentation": "<p>An optional field that contains the resource IDs associated with the error.</p>"
        }
      },
      "documentation": "<p>An object representing an error when an asynchronous operation fails.</p>"
    },
    "ErrorDetails": {
      "type": "list",
      "member": {
        "shape": "ErrorDetail"
      }
    },
    "FargateProfile": {
      "type": "structure",
      "members": {
        "fargateProfileName": {
          "shape": "String",
          "documentation": "<p>The name of the Fargate profile.</p>"
        },
        "fargateProfileArn": {
          "shape": "String",
          "documentation": "<p>The full Amazon Resource Name (ARN) of the Fargate profile.</p>"
        },
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster that the Fargate profile belongs to.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix epoch timestamp in seconds for when the Fargate profile was created.</p>"
        },
        "podExecutionRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the pod execution role to use for pods that match the selectors in the Fargate profile. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html\">Pod Execution Role</a> in the <i>Amazon EKS User Guide</i>.</p>"
        },
        "subnets": {
          "shape": "StringList",
          "documentation": "<p>The IDs of subnets to launch pods into.</p>"
        },
        "selectors": {
          "shape": "FargateProfileSelectors",
          "documentation": "<p>The selectors to match for pods to use this Fargate profile.</p>"
        },
        "status": {
          "shape": "FargateProfileStatus",
          "documentation": "<p>The current status of the Fargate profile.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The metadata applied to the Fargate profile to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Fargate profile tags do not propagate to any other resources associated with the Fargate profile, such as the pods that are scheduled with it.</p>"
        }
      },
      "documentation": "<p>An object representing an AWS Fargate profile.</p>"
    },
    "FargateProfileLabel": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "FargateProfileSelector": {
      "type": "structure",
      "members": {
        "namespace": {
          "shape": "String",
          "documentation": "<p>The Kubernetes namespace that the selector should match.</p>"
        },
        "labels": {
          "shape": "FargateProfileLabel",
          "documentation": "<p>The Kubernetes labels that the selector should match. A pod must contain all of the labels that are specified in the selector for it to be considered a match.</p>"
        }
      },
      "documentation": "<p>An object representing an AWS Fargate profile selector.</p>"
    },
    "FargateProfileSelectors": {
      "type": "list",
      "member": {
        "shape": "FargateProfileSelector"
      }
    },
    "FargateProfileStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "DELETING",
        "CREATE_FAILED",
        "DELETE_FAILED"
      ]
    },
    "FargateProfilesRequestMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "Identity": {
      "type": "structure",
      "members": {
        "oidc": {
          "shape": "OIDC",
          "documentation": "<p>The <a href=\"https://openid.net/connect/\">OpenID Connect</a> identity provider information for the cluster.</p>"
        }
      },
      "documentation": "<p>An object representing an identity provider for authentication credentials.</p>"
    },
    "Issue": {
      "type": "structure",
      "members": {
        "code": {
          "shape": "NodegroupIssueCode",
          "documentation": "<p>A brief description of the error.</p> <ul> <li> <p> <b>AutoScalingGroupNotFound</b>: We couldn't find the Auto Scaling group associated with the managed node group. You may be able to recreate an Auto Scaling group with the same settings to recover.</p> </li> <li> <p> <b>Ec2SecurityGroupNotFound</b>: We couldn't find the cluster security group for the cluster. You must recreate your cluster.</p> </li> <li> <p> <b>Ec2SecurityGroupDeletionFailure</b>: We could not delete the remote access security group for your managed node group. Remove any dependencies from the security group.</p> </li> <li> <p> <b>Ec2LaunchTemplateNotFound</b>: We couldn't find the Amazon EC2 launch template for your managed node group. You may be able to recreate a launch template with the same settings to recover.</p> </li> <li> <p> <b>Ec2LaunchTemplateVersionMismatch</b>: The Amazon EC2 launch template version for your managed node group does not match the version that Amazon EKS created. You may be able to revert to the version that Amazon EKS created to recover.</p> </li> <li> <p> <b>Ec2SubnetInvalidConfiguration</b>: One or more Amazon EC2 subnets specified for a node group do not automatically assign public IP addresses to instances launched into it. If you want your instances to be assigned a public IP address, then you need to enable the <code>auto-assign public IP address</code> setting for the subnet. See <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html#subnet-public-ip\">Modifying the public IPv4 addressing attribute for your subnet</a> in the Amazon VPC User Guide.</p> </li> <li> <p> <b>IamInstanceProfileNotFound</b>: We couldn't find the IAM instance profile for your managed node group. You may be able to recreate an instance profile with the same settings to recover.</p> </li> <li> <p> <b>IamNodeRoleNotFound</b>: We couldn't find the IAM role for your managed node group. You may be able to recreate an IAM role with the same settings to recover.</p> </li> <li> <p> <b>AsgInstanceLaunchFailures</b>: Your Auto Scaling group is experiencing failures while attempting to launch instances.</p> </li> <li> <p> <b>NodeCreationFailure</b>: Your launched instances are unable to register with your Amazon EKS cluster. Common causes of this failure are insufficient <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html\">worker node IAM role</a> permissions or lack of outbound internet access for the nodes. </p> </li> <li> <p> <b>InstanceLimitExceeded</b>: Your AWS account is unable to launch any more instances of the specified instance type. You may be able to request an Amazon EC2 instance limit increase to recover.</p> </li> <li> <p> <b>InsufficientFreeAddresses</b>: One or more of the subnets associated with your managed node group does not have enough available IP addresses for new nodes.</p> </li> <li> <p> <b>AccessDenied</b>: Amazon EKS or one or more of your managed nodes is unable to communicate with your cluster API server.</p> </li> <li> <p> <b>InternalFailure</b>: These errors are usually caused by an Amazon EKS server-side issue.</p> </li> </ul>"
        },
        "message": {
          "shape": "String",
          "documentation": "<p>The error message associated with the issue.</p>"
        },
        "resourceIds": {
          "shape": "StringList",
          "documentation": "<p>The AWS resources that are afflicted by this issue.</p>"
        }
      },
      "documentation": "<p>An object representing an issue with an Amazon EKS resource.</p>"
    },
    "IssueList": {
      "type": "list",
      "member": {
        "shape": "Issue"
      }
    },
    "LaunchTemplateSpecification": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the launch template.</p>"
        },
        "version": {
          "shape": "String",
          "documentation": "<p>The version of the launch template to use. If no version is specified, then the template's default version is used.</p>"
        },
        "id": {
          "shape": "String",
          "documentation": "<p>The ID of the launch template.</p>"
        }
      },
      "documentation": "<p>An object representing a node group launch template specification. The launch template cannot include <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html\"> <code>SubnetId</code> </a>, <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_IamInstanceProfile.html\"> <code>IamInstanceProfile</code> </a>, <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotInstances.html\"> <code>RequestSpotInstances</code> </a>, <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_HibernationOptionsRequest.html\"> <code>HibernationOptions</code> </a>, or <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TerminateInstances.html\"> <code>TerminateInstances</code> </a>, or the node group deployment or update will fail. For more information about launch templates, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateLaunchTemplate.html\"> <code>CreateLaunchTemplate</code> </a> in the Amazon EC2 API Reference. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p> <p>Specify either <code>name</code> or <code>id</code>, but not both.</p>"
    },
    "ListClustersRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "ListClustersRequestMaxResults",
          "documentation": "<p>The maximum number of cluster results returned by <code>ListClusters</code> in paginated output. When you use this parameter, <code>ListClusters</code> returns only <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. You can see the remaining results of the initial request by sending another <code>ListClusters</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If you don't use this parameter, <code>ListClusters</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListClusters</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.</p> <note> <p>This token should be treated as an opaque identifier that is used only to retrieve the next items in a list and not for other programmatic purposes.</p> </note>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListClustersRequestMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "ListClustersResponse": {
      "type": "structure",
      "members": {
        "clusters": {
          "shape": "StringList",
          "documentation": "<p>A list of all of the clusters for your account in the specified Region.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListClusters</code> request. When the results of a <code>ListClusters</code> request exceed <code>maxResults</code>, you can use this value to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListFargateProfilesRequest": {
      "type": "structure",
      "required": [
        "clusterName"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster that you would like to listFargate profiles in.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "maxResults": {
          "shape": "FargateProfilesRequestMaxResults",
          "documentation": "<p>The maximum number of Fargate profile results returned by <code>ListFargateProfiles</code> in paginated output. When you use this parameter, <code>ListFargateProfiles</code> returns only <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. You can see the remaining results of the initial request by sending another <code>ListFargateProfiles</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If you don't use this parameter, <code>ListFargateProfiles</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListFargateProfiles</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListFargateProfilesResponse": {
      "type": "structure",
      "members": {
        "fargateProfileNames": {
          "shape": "StringList",
          "documentation": "<p>A list of all of the Fargate profiles associated with the specified cluster.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListFargateProfiles</code> request. When the results of a <code>ListFargateProfiles</code> request exceed <code>maxResults</code>, you can use this value to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListNodegroupsRequest": {
      "type": "structure",
      "required": [
        "clusterName"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster that you would like to list node groups in.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "maxResults": {
          "shape": "ListNodegroupsRequestMaxResults",
          "documentation": "<p>The maximum number of node group results returned by <code>ListNodegroups</code> in paginated output. When you use this parameter, <code>ListNodegroups</code> returns only <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. You can see the remaining results of the initial request by sending another <code>ListNodegroups</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If you don't use this parameter, <code>ListNodegroups</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListNodegroups</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListNodegroupsRequestMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "ListNodegroupsResponse": {
      "type": "structure",
      "members": {
        "nodegroups": {
          "shape": "StringList",
          "documentation": "<p>A list of all of the node groups associated with the specified cluster.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListNodegroups</code> request. When the results of a <code>ListNodegroups</code> request exceed <code>maxResults</code>, you can use this value to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are Amazon EKS clusters and managed node groups.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags for the resource.</p>"
        }
      }
    },
    "ListUpdatesRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster to list updates for.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nodegroupName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS managed node group to list updates for.</p>",
          "location": "querystring",
          "locationName": "nodegroupName"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListUpdates</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "ListUpdatesRequestMaxResults",
          "documentation": "<p>The maximum number of update results returned by <code>ListUpdates</code> in paginated output. When you use this parameter, <code>ListUpdates</code> returns only <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. You can see the remaining results of the initial request by sending another <code>ListUpdates</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If you don't use this parameter, <code>ListUpdates</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListUpdatesRequestMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "ListUpdatesResponse": {
      "type": "structure",
      "members": {
        "updateIds": {
          "shape": "StringList",
          "documentation": "<p>A list of all the updates for the specified cluster and Region.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListUpdates</code> request. When the results of a <code>ListUpdates</code> request exceed <code>maxResults</code>, you can use this value to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "LogSetup": {
      "type": "structure",
      "members": {
        "types": {
          "shape": "LogTypes",
          "documentation": "<p>The available cluster control plane log types.</p>"
        },
        "enabled": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If a log type is enabled, that log type exports its control plane logs to CloudWatch Logs. If a log type isn't enabled, that log type doesn't export its control plane logs. Each individual log type can be enabled or disabled independently.</p>"
        }
      },
      "documentation": "<p>An object representing the enabled or disabled Kubernetes control plane logs for your cluster.</p>"
    },
    "LogSetups": {
      "type": "list",
      "member": {
        "shape": "LogSetup"
      }
    },
    "LogType": {
      "type": "string",
      "enum": [
        "api",
        "audit",
        "authenticator",
        "controllerManager",
        "scheduler"
      ]
    },
    "LogTypes": {
      "type": "list",
      "member": {
        "shape": "LogType"
      }
    },
    "Logging": {
      "type": "structure",
      "members": {
        "clusterLogging": {
          "shape": "LogSetups",
          "documentation": "<p>The cluster control plane logging configuration for your cluster.</p>"
        }
      },
      "documentation": "<p>An object representing the logging configuration for resources in your cluster.</p>"
    },
    "Nodegroup": {
      "type": "structure",
      "members": {
        "nodegroupName": {
          "shape": "String",
          "documentation": "<p>The name associated with an Amazon EKS managed node group.</p>"
        },
        "nodegroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) associated with the managed node group.</p>"
        },
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the cluster that the managed node group resides in.</p>"
        },
        "version": {
          "shape": "String",
          "documentation": "<p>The Kubernetes version of the managed node group.</p>"
        },
        "releaseVersion": {
          "shape": "String",
          "documentation": "<p>If the node group was deployed using a launch template with a custom AMI, then this is the AMI ID that was specified in the launch template. For node groups that weren't deployed using a launch template, this is the version of the Amazon EKS-optimized AMI that the node group was deployed with.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix epoch timestamp in seconds for when the managed node group was created.</p>"
        },
        "modifiedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix epoch timestamp in seconds for when the managed node group was last modified.</p>"
        },
        "status": {
          "shape": "NodegroupStatus",
          "documentation": "<p>The current status of the managed node group.</p>"
        },
        "scalingConfig": {
          "shape": "NodegroupScalingConfig",
          "documentation": "<p>The scaling configuration details for the Auto Scaling group that is associated with your node group.</p>"
        },
        "instanceTypes": {
          "shape": "StringList",
          "documentation": "<p>If the node group wasn't deployed with a launch template, then this is the instance type that is associated with the node group. If the node group was deployed with a launch template, then <code>instanceTypes</code> is <code>null</code>.</p>"
        },
        "subnets": {
          "shape": "StringList",
          "documentation": "<p>The subnets that were specified for the Auto Scaling group that is associated with your node group.</p>"
        },
        "remoteAccess": {
          "shape": "RemoteAccessConfig",
          "documentation": "<p>If the node group wasn't deployed with a launch template, then this is the remote access configuration that is associated with the node group. If the node group was deployed with a launch template, then <code>remoteAccess</code> is <code>null</code>.</p>"
        },
        "amiType": {
          "shape": "AMITypes",
          "documentation": "<p>If the node group was deployed using a launch template with a custom AMI, then this is <code>CUSTOM</code>. For node groups that weren't deployed using a launch template, this is the AMI type that was specified in the node group configuration.</p>"
        },
        "nodeRole": {
          "shape": "String",
          "documentation": "<p>The IAM role associated with your node group. The Amazon EKS worker node <code>kubelet</code> daemon makes calls to AWS APIs on your behalf. Worker nodes receive permissions for these API calls through an IAM instance profile and associated policies.</p>"
        },
        "labels": {
          "shape": "labelsMap",
          "documentation": "<p>The Kubernetes labels applied to the nodes in the node group.</p> <note> <p>Only labels that are applied with the Amazon EKS API are shown here. There may be other Kubernetes labels applied to the nodes in this group.</p> </note>"
        },
        "resources": {
          "shape": "NodegroupResources",
          "documentation": "<p>The resources associated with the node group, such as Auto Scaling groups and security groups for remote access.</p>"
        },
        "diskSize": {
          "shape": "BoxedInteger",
          "documentation": "<p>If the node group wasn't deployed with a launch template, then this is the disk size in the node group configuration. If the node group was deployed with a launch template, then <code>diskSize</code> is <code>null</code>.</p>"
        },
        "health": {
          "shape": "NodegroupHealth",
          "documentation": "<p>The health status of the node group. If there are issues with your node group's health, they are listed here.</p>"
        },
        "launchTemplate": {
          "shape": "LaunchTemplateSpecification",
          "documentation": "<p>If a launch template was used to create the node group, then this is the launch template that was used.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The metadata applied to the node group to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define. Node group tags do not propagate to any other resources associated with the node group, such as the Amazon EC2 instances or subnets. </p>"
        }
      },
      "documentation": "<p>An object representing an Amazon EKS managed node group.</p>"
    },
    "NodegroupHealth": {
      "type": "structure",
      "members": {
        "issues": {
          "shape": "IssueList",
          "documentation": "<p>Any issues that are associated with the node group. </p>"
        }
      },
      "documentation": "<p>An object representing the health status of the node group.</p>"
    },
    "NodegroupIssueCode": {
      "type": "string",
      "enum": [
        "AutoScalingGroupNotFound",
        "AutoScalingGroupInvalidConfiguration",
        "Ec2SecurityGroupNotFound",
        "Ec2SecurityGroupDeletionFailure",
        "Ec2LaunchTemplateNotFound",
        "Ec2LaunchTemplateVersionMismatch",
        "Ec2SubnetNotFound",
        "Ec2SubnetInvalidConfiguration",
        "IamInstanceProfileNotFound",
        "IamLimitExceeded",
        "IamNodeRoleNotFound",
        "NodeCreationFailure",
        "AsgInstanceLaunchFailures",
        "InstanceLimitExceeded",
        "InsufficientFreeAddresses",
        "AccessDenied",
        "InternalFailure"
      ]
    },
    "NodegroupResources": {
      "type": "structure",
      "members": {
        "autoScalingGroups": {
          "shape": "AutoScalingGroupList",
          "documentation": "<p>The Auto Scaling groups associated with the node group.</p>"
        },
        "remoteAccessSecurityGroup": {
          "shape": "String",
          "documentation": "<p>The remote access security group associated with the node group. This security group controls SSH access to the worker nodes.</p>"
        }
      },
      "documentation": "<p>An object representing the resources associated with the node group, such as Auto Scaling groups and security groups for remote access.</p>"
    },
    "NodegroupScalingConfig": {
      "type": "structure",
      "members": {
        "minSize": {
          "shape": "Capacity",
          "documentation": "<p>The minimum number of worker nodes that the managed node group can scale in to. This number must be greater than zero.</p>"
        },
        "maxSize": {
          "shape": "Capacity",
          "documentation": "<p>The maximum number of worker nodes that the managed node group can scale out to. Managed node groups can support up to 100 nodes by default.</p>"
        },
        "desiredSize": {
          "shape": "Capacity",
          "documentation": "<p>The current number of worker nodes that the managed node group should maintain.</p>"
        }
      },
      "documentation": "<p>An object representing the scaling configuration details for the Auto Scaling group that is associated with your node group. If you specify a value for any property, then you must specify values for all of the properties.</p>"
    },
    "NodegroupStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "UPDATING",
        "DELETING",
        "CREATE_FAILED",
        "DELETE_FAILED",
        "DEGRADED"
      ]
    },
    "OIDC": {
      "type": "structure",
      "members": {
        "issuer": {
          "shape": "String",
          "documentation": "<p>The issuer URL for the OpenID Connect identity provider.</p>"
        }
      },
      "documentation": "<p>An object representing the <a href=\"https://openid.net/connect/\">OpenID Connect</a> identity provider information for the cluster.</p>"
    },
    "Provider": {
      "type": "structure",
      "members": {
        "keyArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) or alias of the customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html\">Allowing Users in Other Accounts to Use a CMK</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>Identifies the AWS Key Management Service (AWS KMS) customer master key (CMK) used to encrypt the secrets.</p>"
    },
    "RemoteAccessConfig": {
      "type": "structure",
      "members": {
        "ec2SshKey": {
          "shape": "String",
          "documentation": "<p>The Amazon EC2 SSH key that provides access for SSH communication with the worker nodes in the managed node group. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html\">Amazon EC2 Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux Instances</i>.</p>"
        },
        "sourceSecurityGroups": {
          "shape": "StringList",
          "documentation": "<p>The security groups that are allowed SSH access (port 22) to the worker nodes. If you specify an Amazon EC2 SSH key but do not specify a source security group when you create a managed node group, then port 22 on the worker nodes is opened to the internet (0.0.0.0/0). For more information, see <a href=\"https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html\">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>"
        }
      },
      "documentation": "<p>An object representing the remote access configuration for the managed node group.</p>"
    },
    "String": {
      "type": "string"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 50,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to which to add tags. Currently, the supported resources are Amazon EKS clusters and managed node groups.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to add to the resource. A tag is an array of key-value pairs.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Currently, the supported resources are Amazon EKS clusters and managed node groups.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of the tags to be removed.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "Update": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "String",
          "documentation": "<p>A UUID that is used to track the update.</p>"
        },
        "status": {
          "shape": "UpdateStatus",
          "documentation": "<p>The current status of the update.</p>"
        },
        "type": {
          "shape": "UpdateType",
          "documentation": "<p>The type of the update.</p>"
        },
        "params": {
          "shape": "UpdateParams",
          "documentation": "<p>A key-value map that contains the parameters associated with the update.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix epoch timestamp in seconds for when the update was created.</p>"
        },
        "errors": {
          "shape": "ErrorDetails",
          "documentation": "<p>Any errors associated with a <code>Failed</code> update.</p>"
        }
      },
      "documentation": "<p>An object representing an asynchronous update.</p>"
    },
    "UpdateClusterConfigRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster to update.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "resourcesVpcConfig": {
          "shape": "VpcConfigRequest"
        },
        "logging": {
          "shape": "Logging",
          "documentation": "<p>Enable or disable exporting the Kubernetes control plane logs for your cluster to CloudWatch Logs. By default, cluster control plane logs aren't exported to CloudWatch Logs. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html\">Amazon EKS Cluster Control Plane Logs</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p> <note> <p>CloudWatch Logs ingestion, archive storage, and data scanning rates apply to exported control plane logs. For more information, see <a href=\"http://aws.amazon.com/cloudwatch/pricing/\">Amazon CloudWatch Pricing</a>.</p> </note>"
        },
        "clientRequestToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateClusterConfigResponse": {
      "type": "structure",
      "members": {
        "update": {
          "shape": "Update"
        }
      }
    },
    "UpdateClusterVersionRequest": {
      "type": "structure",
      "required": [
        "name",
        "version"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster to update.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "version": {
          "shape": "String",
          "documentation": "<p>The desired Kubernetes version following a successful update.</p>"
        },
        "clientRequestToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateClusterVersionResponse": {
      "type": "structure",
      "members": {
        "update": {
          "shape": "Update",
          "documentation": "<p>The full description of the specified update</p>"
        }
      }
    },
    "UpdateLabelsPayload": {
      "type": "structure",
      "members": {
        "addOrUpdateLabels": {
          "shape": "labelsMap",
          "documentation": "<p>Kubernetes labels to be added or updated.</p>"
        },
        "removeLabels": {
          "shape": "labelsKeyList",
          "documentation": "<p>Kubernetes labels to be removed.</p>"
        }
      },
      "documentation": "<p>An object representing a Kubernetes label change for a managed node group.</p>"
    },
    "UpdateNodegroupConfigRequest": {
      "type": "structure",
      "required": [
        "clusterName",
        "nodegroupName"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster that the managed node group resides in.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nodegroupName": {
          "shape": "String",
          "documentation": "<p>The name of the managed node group to update.</p>",
          "location": "uri",
          "locationName": "nodegroupName"
        },
        "labels": {
          "shape": "UpdateLabelsPayload",
          "documentation": "<p>The Kubernetes labels to be applied to the nodes in the node group after the update.</p>"
        },
        "scalingConfig": {
          "shape": "NodegroupScalingConfig",
          "documentation": "<p>The scaling configuration details for the Auto Scaling group after the update.</p>"
        },
        "clientRequestToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateNodegroupConfigResponse": {
      "type": "structure",
      "members": {
        "update": {
          "shape": "Update"
        }
      }
    },
    "UpdateNodegroupVersionRequest": {
      "type": "structure",
      "required": [
        "clusterName",
        "nodegroupName"
      ],
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon EKS cluster that is associated with the managed node group to update.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "nodegroupName": {
          "shape": "String",
          "documentation": "<p>The name of the managed node group to update.</p>",
          "location": "uri",
          "locationName": "nodegroupName"
        },
        "version": {
          "shape": "String",
          "documentation": "<p>The Kubernetes version to update to. If no version is specified, then the Kubernetes version of the node group does not change. You can specify the Kubernetes version of the cluster to update the node group to the latest AMI version of the cluster's Kubernetes version. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify <code>version</code>, or the node group update will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "releaseVersion": {
          "shape": "String",
          "documentation": "<p>The AMI version of the Amazon EKS-optimized AMI to use for the update. By default, the latest available AMI version for the node group's Kubernetes version is used. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html\">Amazon EKS-Optimized Linux AMI Versions </a> in the <i>Amazon EKS User Guide</i>. If you specify <code>launchTemplate</code>, and your launch template uses a custom AMI, then don't specify <code>releaseVersion</code>, or the node group update will fail. For more information about using launch templates with Amazon EKS, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html\">Launch template support</a> in the Amazon EKS User Guide.</p>"
        },
        "launchTemplate": {
          "shape": "LaunchTemplateSpecification",
          "documentation": "<p>An object representing a node group's launch template specification. You can only update a node group using a launch template if the node group was originally deployed with a launch template.</p>"
        },
        "force": {
          "shape": "Boolean",
          "documentation": "<p>Force the update if the existing node group's pods are unable to be drained due to a pod disruption budget issue. If an update fails because pods could not be drained, you can force the update after it fails to terminate the old node whether or not any pods are running on the node.</p>"
        },
        "clientRequestToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateNodegroupVersionResponse": {
      "type": "structure",
      "members": {
        "update": {
          "shape": "Update"
        }
      }
    },
    "UpdateParam": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "UpdateParamType",
          "documentation": "<p>The keys associated with an update request.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The value of the keys submitted as part of an update request.</p>"
        }
      },
      "documentation": "<p>An object representing the details of an update request.</p>"
    },
    "UpdateParamType": {
      "type": "string",
      "enum": [
        "Version",
        "PlatformVersion",
        "EndpointPrivateAccess",
        "EndpointPublicAccess",
        "ClusterLogging",
        "DesiredSize",
        "LabelsToAdd",
        "LabelsToRemove",
        "MaxSize",
        "MinSize",
        "ReleaseVersion",
        "PublicAccessCidrs"
      ]
    },
    "UpdateParams": {
      "type": "list",
      "member": {
        "shape": "UpdateParam"
      }
    },
    "UpdateStatus": {
      "type": "string",
      "enum": [
        "InProgress",
        "Failed",
        "Cancelled",
        "Successful"
      ]
    },
    "UpdateType": {
      "type": "string",
      "enum": [
        "VersionUpdate",
        "EndpointAccessUpdate",
        "LoggingUpdate",
        "ConfigUpdate"
      ]
    },
    "VpcConfigRequest": {
      "type": "structure",
      "members": {
        "subnetIds": {
          "shape": "StringList",
          "documentation": "<p>Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.</p>"
        },
        "securityGroupIds": {
          "shape": "StringList",
          "documentation": "<p>Specify one or more security groups for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane. If you don't specify a security group, the default security group for your VPC is used.</p>"
        },
        "endpointPublicAccess": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Set this value to <code>false</code> to disable public access to your cluster's Kubernetes API server endpoint. If you disable public access, your cluster's Kubernetes API server can only receive requests from within the cluster VPC. The default value for this parameter is <code>true</code>, which enables public access for your Kubernetes API server. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS Cluster Endpoint Access Control</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>"
        },
        "endpointPrivateAccess": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Set this value to <code>true</code> to enable private access for your cluster's Kubernetes API server endpoint. If you enable private access, Kubernetes API requests from within your cluster's VPC use the private VPC endpoint. The default value for this parameter is <code>false</code>, which disables private access for your Kubernetes API server. If you disable private access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that <code>publicAccessCidrs</code> includes the necessary CIDR blocks for communication with the worker nodes or Fargate pods. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS Cluster Endpoint Access Control</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>"
        },
        "publicAccessCidrs": {
          "shape": "StringList",
          "documentation": "<p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint. Communication to the endpoint from addresses outside of the CIDR blocks that you specify is denied. The default value is <code>0.0.0.0/0</code>. If you've disabled private endpoint access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that you specify the necessary CIDR blocks. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS Cluster Endpoint Access Control</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>"
        }
      },
      "documentation": "<p>An object representing the VPC configuration to use for an Amazon EKS cluster.</p>"
    },
    "VpcConfigResponse": {
      "type": "structure",
      "members": {
        "subnetIds": {
          "shape": "StringList",
          "documentation": "<p>The subnets associated with your cluster.</p>"
        },
        "securityGroupIds": {
          "shape": "StringList",
          "documentation": "<p>The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your worker nodes and the Kubernetes control plane.</p>"
        },
        "clusterSecurityGroupId": {
          "shape": "String",
          "documentation": "<p>The cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication.</p>"
        },
        "vpcId": {
          "shape": "String",
          "documentation": "<p>The VPC associated with your cluster.</p>"
        },
        "endpointPublicAccess": {
          "shape": "Boolean",
          "documentation": "<p>This parameter indicates whether the Amazon EKS public API server endpoint is enabled. If the Amazon EKS public API server endpoint is disabled, your cluster's Kubernetes API server can only receive requests that originate from within the cluster VPC.</p>"
        },
        "endpointPrivateAccess": {
          "shape": "Boolean",
          "documentation": "<p>This parameter indicates whether the Amazon EKS private API server endpoint is enabled. If the Amazon EKS private API server endpoint is enabled, Kubernetes API requests that originate from within your cluster's VPC use the private VPC endpoint instead of traversing the internet. If this value is disabled and you have worker nodes or AWS Fargate pods in the cluster, then ensure that <code>publicAccessCidrs</code> includes the necessary CIDR blocks for communication with the worker nodes or Fargate pods. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS Cluster Endpoint Access Control</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>"
        },
        "publicAccessCidrs": {
          "shape": "StringList",
          "documentation": "<p>The CIDR blocks that are allowed access to your cluster's public Kubernetes API server endpoint. Communication to the endpoint from addresses outside of the listed CIDR blocks is denied. The default value is <code>0.0.0.0/0</code>. If you've disabled private endpoint access and you have worker nodes or AWS Fargate pods in the cluster, then ensure that the necessary CIDR blocks are listed. For more information, see <a href=\"https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html\">Amazon EKS Cluster Endpoint Access Control</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>"
        }
      },
      "documentation": "<p>An object representing an Amazon EKS cluster VPC configuration response.</p>"
    },
    "labelKey": {
      "type": "string",
      "max": 63,
      "min": 1
    },
    "labelValue": {
      "type": "string",
      "max": 253,
      "min": 1
    },
    "labelsKeyList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "labelsMap": {
      "type": "map",
      "key": {
        "shape": "labelKey"
      },
      "value": {
        "shape": "labelValue"
      }
    }
  },
  "documentation": "<p>Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that makes it easy for you to run Kubernetes on AWS without needing to stand up or maintain your own Kubernetes control plane. Kubernetes is an open-source system for automating the deployment, scaling, and management of containerized applications. </p> <p>Amazon EKS runs up-to-date versions of the open-source Kubernetes software, so you can use all the existing plugins and tooling from the Kubernetes community. Applications running on Amazon EKS are fully compatible with applications running on any standard Kubernetes environment, whether running in on-premises data centers or public clouds. This means that you can easily migrate any standard Kubernetes application to Amazon EKS without any code modification required.</p>"
}
]===]))
