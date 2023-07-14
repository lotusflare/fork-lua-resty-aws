local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2014-11-13",
    "endpointPrefix": "ecs",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Amazon ECS",
    "serviceFullName": "Amazon EC2 Container Service",
    "serviceId": "ECS",
    "signatureVersion": "v4",
    "targetPrefix": "AmazonEC2ContainerServiceV20141113",
    "uid": "ecs-2014-11-13"
  },
  "operations": {
    "CreateCapacityProvider": {
      "name": "CreateCapacityProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCapacityProviderRequest"
      },
      "output": {
        "shape": "CreateCapacityProviderResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UpdateInProgressException"
        }
      ],
      "documentation": "<p>Creates a new capacity provider. Capacity providers are associated with an Amazon ECS cluster and are used in capacity provider strategies to facilitate cluster auto scaling.</p> <p>Only capacity providers using an Auto Scaling group can be created. Amazon ECS tasks on AWS Fargate use the <code>FARGATE</code> and <code>FARGATE_SPOT</code> capacity providers which are already created and available to all accounts in Regions supported by AWS Fargate.</p>"
    },
    "CreateCluster": {
      "name": "CreateCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClusterRequest"
      },
      "output": {
        "shape": "CreateClusterResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Creates a new Amazon ECS cluster. By default, your account receives a <code>default</code> cluster when you launch your first container instance. However, you can create your own cluster with a unique name with the <code>CreateCluster</code> action.</p> <note> <p>When you call the <a>CreateCluster</a> API operation, Amazon ECS attempts to create the Amazon ECS service-linked role for your account so that required resources in other AWS services can be managed on your behalf. However, if the IAM user that makes the call does not have permissions to create the service-linked role, it is not created. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html\">Using Service-Linked Roles for Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note>"
    },
    "CreateService": {
      "name": "CreateService",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateServiceRequest"
      },
      "output": {
        "shape": "CreateServiceResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "UnsupportedFeatureException"
        },
        {
          "shape": "PlatformUnknownException"
        },
        {
          "shape": "PlatformTaskDefinitionIncompatibilityException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Runs and maintains a desired number of tasks from a specified task definition. If the number of tasks running in a service drops below the <code>desiredCount</code>, Amazon ECS runs another copy of the task in the specified cluster. To update an existing service, see the UpdateService action.</p> <p>In addition to maintaining the desired count of tasks in your service, you can optionally run your service behind one or more load balancers. The load balancers distribute traffic across the tasks that are associated with the service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html\">Service Load Balancing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>Tasks for services that <i>do not</i> use a load balancer are considered healthy if they're in the <code>RUNNING</code> state. Tasks for services that <i>do</i> use a load balancer are considered healthy if they're in the <code>RUNNING</code> state and the container instance that they're hosted on is reported as healthy by the load balancer.</p> <p>There are two service scheduler strategies available:</p> <ul> <li> <p> <code>REPLICA</code> - The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html\">Service Scheduler Concepts</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </li> <li> <p> <code>DAEMON</code> - The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints. When using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html\">Service Scheduler Concepts</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </li> </ul> <p>You can optionally specify a deployment configuration for your service. The deployment is triggered by changing properties, such as the task definition or the desired count of a service, with an <a>UpdateService</a> operation. The default value for a replica service for <code>minimumHealthyPercent</code> is 100%. The default value for a daemon service for <code>minimumHealthyPercent</code> is 0%.</p> <p>If a service is using the <code>ECS</code> deployment controller, the minimum healthy percent represents a lower limit on the number of tasks in a service that must remain in the <code>RUNNING</code> state during a deployment, as a percentage of the desired number of tasks (rounded up to the nearest integer), and while any container instances are in the <code>DRAINING</code> state if the service contains tasks using the EC2 launch type. This parameter enables you to deploy without using additional cluster capacity. For example, if your service has a desired number of four tasks and a minimum healthy percent of 50%, the scheduler might stop two existing tasks to free up cluster capacity before starting two new tasks. Tasks for services that <i>do not</i> use a load balancer are considered healthy if they're in the <code>RUNNING</code> state. Tasks for services that <i>do</i> use a load balancer are considered healthy if they're in the <code>RUNNING</code> state and they're reported as healthy by the load balancer. The default value for minimum healthy percent is 100%.</p> <p>If a service is using the <code>ECS</code> deployment controller, the <b>maximum percent</b> parameter represents an upper limit on the number of tasks in a service that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state during a deployment, as a percentage of the desired number of tasks (rounded down to the nearest integer), and while any container instances are in the <code>DRAINING</code> state if the service contains tasks using the EC2 launch type. This parameter enables you to define the deployment batch size. For example, if your service has a desired number of four tasks and a maximum percent value of 200%, the scheduler may start four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available). The default value for maximum percent is 200%.</p> <p>If a service is using either the <code>CODE_DEPLOY</code> or <code>EXTERNAL</code> deployment controller types and tasks that use the EC2 launch type, the <b>minimum healthy percent</b> and <b>maximum percent</b> values are used only to define the lower and upper limit on the number of the tasks in the service that remain in the <code>RUNNING</code> state while the container instances are in the <code>DRAINING</code> state. If the tasks in the service use the Fargate launch type, the minimum healthy percent and maximum percent values aren't used, although they're currently visible when describing your service.</p> <p>When creating a service that uses the <code>EXTERNAL</code> deployment controller, you can specify only parameters that aren't controlled at the task set level. The only required parameter is the service name. You control your services using the <a>CreateTaskSet</a> operation. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html\">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>When the service scheduler launches new tasks, it determines task placement in your cluster using the following logic:</p> <ul> <li> <p>Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).</p> </li> <li> <p>By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy) with the <code>placementStrategy</code> parameter):</p> <ul> <li> <p>Sort the valid container instances, giving priority to instances that have the fewest number of running tasks for this service in their respective Availability Zone. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.</p> </li> <li> <p>Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.</p> </li> </ul> </li> </ul>"
    },
    "CreateTaskSet": {
      "name": "CreateTaskSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTaskSetRequest"
      },
      "output": {
        "shape": "CreateTaskSetResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "UnsupportedFeatureException"
        },
        {
          "shape": "PlatformUnknownException"
        },
        {
          "shape": "PlatformTaskDefinitionIncompatibilityException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceNotFoundException"
        },
        {
          "shape": "ServiceNotActiveException"
        }
      ],
      "documentation": "<p>Create a task set in the specified cluster and service. This is used when a service uses the <code>EXTERNAL</code> deployment controller type. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html\">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "DeleteAccountSetting": {
      "name": "DeleteAccountSetting",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAccountSettingRequest"
      },
      "output": {
        "shape": "DeleteAccountSettingResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Disables an account setting for a specified IAM user, IAM role, or the root user for an account.</p>"
    },
    "DeleteAttributes": {
      "name": "DeleteAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAttributesRequest"
      },
      "output": {
        "shape": "DeleteAttributesResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Deletes one or more custom attributes from an Amazon ECS resource.</p>"
    },
    "DeleteCapacityProvider": {
      "name": "DeleteCapacityProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCapacityProviderRequest"
      },
      "output": {
        "shape": "DeleteCapacityProviderResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Deletes the specified capacity provider.</p> <note> <p>The <code>FARGATE</code> and <code>FARGATE_SPOT</code> capacity providers are reserved and cannot be deleted. You can disassociate them from a cluster using either the <a>PutClusterCapacityProviders</a> API or by deleting the cluster.</p> </note> <p>Prior to a capacity provider being deleted, the capacity provider must be removed from the capacity provider strategy from all services. The <a>UpdateService</a> API can be used to remove a capacity provider from a service's capacity provider strategy. When updating a service, the <code>forceNewDeployment</code> option can be used to ensure that any tasks using the Amazon EC2 instance capacity provided by the capacity provider are transitioned to use the capacity from the remaining capacity providers. Only capacity providers that are not associated with a cluster can be deleted. To remove a capacity provider from a cluster, you can either use <a>PutClusterCapacityProviders</a> or delete the cluster.</p>"
    },
    "DeleteCluster": {
      "name": "DeleteCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClusterRequest"
      },
      "output": {
        "shape": "DeleteClusterResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "ClusterContainsContainerInstancesException"
        },
        {
          "shape": "ClusterContainsServicesException"
        },
        {
          "shape": "ClusterContainsTasksException"
        },
        {
          "shape": "UpdateInProgressException"
        }
      ],
      "documentation": "<p>Deletes the specified cluster. The cluster will transition to the <code>INACTIVE</code> state. Clusters with an <code>INACTIVE</code> status may remain discoverable in your account for a period of time. However, this behavior is subject to change in the future, so you should not rely on <code>INACTIVE</code> clusters persisting.</p> <p>You must deregister all container instances from this cluster before you may delete it. You can list the container instances in a cluster with <a>ListContainerInstances</a> and deregister them with <a>DeregisterContainerInstance</a>.</p>"
    },
    "DeleteService": {
      "name": "DeleteService",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServiceRequest"
      },
      "output": {
        "shape": "DeleteServiceResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "ServiceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a specified service within a cluster. You can delete a service if you have no running tasks in it and the desired task count is zero. If the service is actively maintaining tasks, you cannot delete it, and you must update the service to a desired task count of zero. For more information, see <a>UpdateService</a>.</p> <note> <p>When you delete a service, if there are still running tasks that require cleanup, the service status moves from <code>ACTIVE</code> to <code>DRAINING</code>, and the service is no longer visible in the console or in the <a>ListServices</a> API operation. After all tasks have transitioned to either <code>STOPPING</code> or <code>STOPPED</code> status, the service status moves from <code>DRAINING</code> to <code>INACTIVE</code>. Services in the <code>DRAINING</code> or <code>INACTIVE</code> status can still be viewed with the <a>DescribeServices</a> API operation. However, in the future, <code>INACTIVE</code> services may be cleaned up and purged from Amazon ECS record keeping, and <a>DescribeServices</a> calls on those services return a <code>ServiceNotFoundException</code> error.</p> </note> <important> <p>If you attempt to create a new service with the same name as an existing service in either <code>ACTIVE</code> or <code>DRAINING</code> status, you receive an error.</p> </important>"
    },
    "DeleteTaskSet": {
      "name": "DeleteTaskSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTaskSetRequest"
      },
      "output": {
        "shape": "DeleteTaskSetResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "UnsupportedFeatureException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceNotFoundException"
        },
        {
          "shape": "ServiceNotActiveException"
        },
        {
          "shape": "TaskSetNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a specified task set within a service. This is used when a service uses the <code>EXTERNAL</code> deployment controller type. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html\">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "DeregisterContainerInstance": {
      "name": "DeregisterContainerInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterContainerInstanceRequest"
      },
      "output": {
        "shape": "DeregisterContainerInstanceResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Deregisters an Amazon ECS container instance from the specified cluster. This instance is no longer available to run tasks.</p> <p>If you intend to use the container instance for some other purpose after deregistration, you should stop all of the tasks running on the container instance before deregistration. That prevents any orphaned tasks from consuming resources.</p> <p>Deregistering a container instance removes the instance from a cluster, but it does not terminate the EC2 instance. If you are finished using the instance, be sure to terminate it in the Amazon EC2 console to stop billing.</p> <note> <p>If you terminate a running container instance, Amazon ECS automatically deregisters the instance from your cluster (stopped container instances or instances with disconnected agents are not automatically deregistered when terminated).</p> </note>"
    },
    "DeregisterTaskDefinition": {
      "name": "DeregisterTaskDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterTaskDefinitionRequest"
      },
      "output": {
        "shape": "DeregisterTaskDefinitionResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Deregisters the specified task definition by family and revision. Upon deregistration, the task definition is marked as <code>INACTIVE</code>. Existing tasks and services that reference an <code>INACTIVE</code> task definition continue to run without disruption. Existing services that reference an <code>INACTIVE</code> task definition can still scale up or down by modifying the service's desired count.</p> <p>You cannot use an <code>INACTIVE</code> task definition to run new tasks or create new services, and you cannot update an existing service to reference an <code>INACTIVE</code> task definition. However, there may be up to a 10-minute window following deregistration where these restrictions have not yet taken effect.</p> <note> <p>At this time, <code>INACTIVE</code> task definitions remain discoverable in your account indefinitely. However, this behavior is subject to change in the future, so you should not rely on <code>INACTIVE</code> task definitions persisting beyond the lifecycle of any associated tasks and services.</p> </note>"
    },
    "DescribeCapacityProviders": {
      "name": "DescribeCapacityProviders",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCapacityProvidersRequest"
      },
      "output": {
        "shape": "DescribeCapacityProvidersResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Describes one or more of your capacity providers.</p>"
    },
    "DescribeClusters": {
      "name": "DescribeClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClustersRequest"
      },
      "output": {
        "shape": "DescribeClustersResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Describes one or more of your clusters.</p>"
    },
    "DescribeContainerInstances": {
      "name": "DescribeContainerInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeContainerInstancesRequest"
      },
      "output": {
        "shape": "DescribeContainerInstancesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Describes Amazon Elastic Container Service container instances. Returns metadata about registered and remaining resources on each container instance requested.</p>"
    },
    "DescribeServices": {
      "name": "DescribeServices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeServicesRequest"
      },
      "output": {
        "shape": "DescribeServicesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Describes the specified services running in your cluster.</p>"
    },
    "DescribeTaskDefinition": {
      "name": "DescribeTaskDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTaskDefinitionRequest"
      },
      "output": {
        "shape": "DescribeTaskDefinitionResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Describes a task definition. You can specify a <code>family</code> and <code>revision</code> to find information about a specific task definition, or you can simply specify the family to find the latest <code>ACTIVE</code> revision in that family.</p> <note> <p>You can only describe <code>INACTIVE</code> task definitions while an active task or service references them.</p> </note>"
    },
    "DescribeTaskSets": {
      "name": "DescribeTaskSets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTaskSetsRequest"
      },
      "output": {
        "shape": "DescribeTaskSetsResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "UnsupportedFeatureException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceNotFoundException"
        },
        {
          "shape": "ServiceNotActiveException"
        }
      ],
      "documentation": "<p>Describes the task sets in the specified cluster and service. This is used when a service uses the <code>EXTERNAL</code> deployment controller type. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html\">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "DescribeTasks": {
      "name": "DescribeTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTasksRequest"
      },
      "output": {
        "shape": "DescribeTasksResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Describes a specified task or tasks.</p>"
    },
    "DiscoverPollEndpoint": {
      "name": "DiscoverPollEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DiscoverPollEndpointRequest"
      },
      "output": {
        "shape": "DiscoverPollEndpointResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        }
      ],
      "documentation": "<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Returns an endpoint for the Amazon ECS agent to poll for updates.</p>"
    },
    "ListAccountSettings": {
      "name": "ListAccountSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccountSettingsRequest"
      },
      "output": {
        "shape": "ListAccountSettingsResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Lists the account settings for a specified principal.</p>"
    },
    "ListAttributes": {
      "name": "ListAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAttributesRequest"
      },
      "output": {
        "shape": "ListAttributesResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Lists the attributes for Amazon ECS resources within a specified target type and cluster. When you specify a target type and cluster, <code>ListAttributes</code> returns a list of attribute objects, one for each attribute on each resource. You can filter the list of results to a single attribute name to only return results that have that name. You can also filter the results by attribute name and value, for example, to see which container instances in a cluster are running a Linux AMI (<code>ecs.os-type=linux</code>). </p>"
    },
    "ListClusters": {
      "name": "ListClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListClustersRequest"
      },
      "output": {
        "shape": "ListClustersResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Returns a list of existing clusters.</p>"
    },
    "ListContainerInstances": {
      "name": "ListContainerInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListContainerInstancesRequest"
      },
      "output": {
        "shape": "ListContainerInstancesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of container instances in a specified cluster. You can filter the results of a <code>ListContainerInstances</code> operation with cluster query language statements inside the <code>filter</code> parameter. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html\">Cluster Query Language</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "ListServices": {
      "name": "ListServices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServicesRequest"
      },
      "output": {
        "shape": "ListServicesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Lists the services that are running in a specified cluster.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>List the tags for an Amazon ECS resource.</p>"
    },
    "ListTaskDefinitionFamilies": {
      "name": "ListTaskDefinitionFamilies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTaskDefinitionFamiliesRequest"
      },
      "output": {
        "shape": "ListTaskDefinitionFamiliesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any <code>ACTIVE</code> task definition revisions).</p> <p>You can filter out task definition families that do not contain any <code>ACTIVE</code> task definition revisions by setting the <code>status</code> parameter to <code>ACTIVE</code>. You can also filter the results with the <code>familyPrefix</code> parameter.</p>"
    },
    "ListTaskDefinitions": {
      "name": "ListTaskDefinitions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTaskDefinitionsRequest"
      },
      "output": {
        "shape": "ListTaskDefinitionsResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Returns a list of task definitions that are registered to your account. You can filter the results by family name with the <code>familyPrefix</code> parameter or by status with the <code>status</code> parameter.</p>"
    },
    "ListTasks": {
      "name": "ListTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTasksRequest"
      },
      "output": {
        "shape": "ListTasksResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "ServiceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of tasks for a specified cluster. You can filter the results by family name, by a particular container instance, or by the desired status of the task with the <code>family</code>, <code>containerInstance</code>, and <code>desiredStatus</code> parameters.</p> <p>Recently stopped tasks might appear in the returned results. Currently, stopped tasks appear in the returned results for at least one hour. </p>"
    },
    "PutAccountSetting": {
      "name": "PutAccountSetting",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAccountSettingRequest"
      },
      "output": {
        "shape": "PutAccountSettingResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Modifies an account setting. Account settings are set on a per-Region basis.</p> <p>If you change the account setting for the root user, the default settings for all of the IAM users and roles for which no individual account setting has been specified are reset. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html\">Account Settings</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>When <code>serviceLongArnFormat</code>, <code>taskLongArnFormat</code>, or <code>containerInstanceLongArnFormat</code> are specified, the Amazon Resource Name (ARN) and resource ID format of the resource type for a specified IAM user, IAM role, or the root user for an account is affected. The opt-in and opt-out account setting must be set for each Amazon ECS resource separately. The ARN and resource ID format of a resource will be defined by the opt-in status of the IAM user or role that created the resource. You must enable this setting to use Amazon ECS features such as resource tagging.</p> <p>When <code>awsvpcTrunking</code> is specified, the elastic network interface (ENI) limit for any new container instances that support the feature is changed. If <code>awsvpcTrunking</code> is enabled, any new container instances that support the feature are launched have the increased ENI limits available to them. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html\">Elastic Network Interface Trunking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>When <code>containerInsights</code> is specified, the default setting indicating whether CloudWatch Container Insights is enabled for your clusters is changed. If <code>containerInsights</code> is enabled, any new clusters that are created will have Container Insights enabled unless you disable it during cluster creation. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html\">CloudWatch Container Insights</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "PutAccountSettingDefault": {
      "name": "PutAccountSettingDefault",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAccountSettingDefaultRequest"
      },
      "output": {
        "shape": "PutAccountSettingDefaultResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Modifies an account setting for all IAM users on an account for whom no individual account setting has been specified. Account settings are set on a per-Region basis.</p>"
    },
    "PutAttributes": {
      "name": "PutAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAttributesRequest"
      },
      "output": {
        "shape": "PutAttributesResponse"
      },
      "errors": [
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "AttributeLimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Create or update an attribute on an Amazon ECS resource. If the attribute does not exist, it is created. If the attribute exists, its value is replaced with the specified value. To delete an attribute, use <a>DeleteAttributes</a>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes\">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "PutClusterCapacityProviders": {
      "name": "PutClusterCapacityProviders",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutClusterCapacityProvidersRequest"
      },
      "output": {
        "shape": "PutClusterCapacityProvidersResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "UpdateInProgressException"
        }
      ],
      "documentation": "<p>Modifies the available capacity providers and the default capacity provider strategy for a cluster.</p> <p>You must specify both the available capacity providers and a default capacity provider strategy for the cluster. If the specified cluster has existing capacity providers associated with it, you must specify all existing capacity providers in addition to any new ones you want to add. Any existing capacity providers associated with a cluster that are omitted from a <a>PutClusterCapacityProviders</a> API call will be disassociated with the cluster. You can only disassociate an existing capacity provider from a cluster if it's not being used by any existing tasks.</p> <p>When creating a service or running a task on a cluster, if no capacity provider or launch type is specified, then the cluster's default capacity provider strategy is used. It is recommended to define a default capacity provider strategy for your cluster, however you may specify an empty array (<code>[]</code>) to bypass defining a default strategy.</p>"
    },
    "RegisterContainerInstance": {
      "name": "RegisterContainerInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterContainerInstanceRequest"
      },
      "output": {
        "shape": "RegisterContainerInstanceResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Registers an EC2 instance into the specified cluster. This instance becomes available to place containers on.</p>"
    },
    "RegisterTaskDefinition": {
      "name": "RegisterTaskDefinition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterTaskDefinitionRequest"
      },
      "output": {
        "shape": "RegisterTaskDefinitionResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Registers a new task definition from the supplied <code>family</code> and <code>containerDefinitions</code>. Optionally, you can add data volumes to your containers with the <code>volumes</code> parameter. For more information about task definition parameters and defaults, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html\">Amazon ECS Task Definitions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>You can specify an IAM role for your task with the <code>taskRoleArn</code> parameter. When you specify an IAM role for a task, its containers can then use the latest versions of the AWS CLI or SDKs to make API requests to the AWS services that are specified in the IAM policy associated with the role. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html\">IAM Roles for Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>You can specify a Docker networking mode for the containers in your task definition with the <code>networkMode</code> parameter. The available network modes correspond to those described in <a href=\"https://docs.docker.com/engine/reference/run/#/network-settings\">Network settings</a> in the Docker run reference. If you specify the <code>awsvpc</code> network mode, the task is allocated an elastic network interface, and you must specify a <a>NetworkConfiguration</a> when you create a service or run a task with the task definition. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html\">Task Networking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "RunTask": {
      "name": "RunTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RunTaskRequest"
      },
      "output": {
        "shape": "RunTaskResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "UnsupportedFeatureException"
        },
        {
          "shape": "PlatformUnknownException"
        },
        {
          "shape": "PlatformTaskDefinitionIncompatibilityException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "BlockedException"
        }
      ],
      "documentation": "<p>Starts a new task using the specified task definition.</p> <p>You can allow Amazon ECS to place tasks for you, or you can customize how Amazon ECS places tasks using placement constraints and placement strategies. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html\">Scheduling Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>Alternatively, you can use <a>StartTask</a> to use your own scheduler or place tasks manually on specific container instances.</p> <p>The Amazon ECS API follows an eventual consistency model, due to the distributed nature of the system supporting the API. This means that the result of an API command you run that affects your Amazon ECS resources might not be immediately visible to all subsequent commands you run. Keep this in mind when you carry out an API command that immediately follows a previous API command.</p> <p>To manage eventual consistency, you can do the following:</p> <ul> <li> <p>Confirm the state of the resource before you run a command to modify it. Run the DescribeTasks command using an exponential backoff algorithm to ensure that you allow enough time for the previous command to propagate through the system. To do this, run the DescribeTasks command repeatedly, starting with a couple of seconds of wait time and increasing gradually up to five minutes of wait time.</p> </li> <li> <p>Add wait time between subsequent commands, even if the DescribeTasks command returns an accurate response. Apply an exponential backoff algorithm starting with a couple of seconds of wait time, and increase gradually up to about five minutes of wait time.</p> </li> </ul>"
    },
    "StartTask": {
      "name": "StartTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartTaskRequest"
      },
      "output": {
        "shape": "StartTaskResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Starts a new task from the specified task definition on the specified container instance or instances.</p> <p>Alternatively, you can use <a>RunTask</a> to place tasks for you. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html\">Scheduling Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "StopTask": {
      "name": "StopTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopTaskRequest"
      },
      "output": {
        "shape": "StopTaskResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Stops a running task. Any tags associated with the task will be deleted.</p> <p>When <a>StopTask</a> is called on a task, the equivalent of <code>docker stop</code> is issued to the containers running in the task. This results in a <code>SIGTERM</code> value and a default 30-second timeout, after which the <code>SIGKILL</code> value is sent and the containers are forcibly stopped. If the container handles the <code>SIGTERM</code> value gracefully and exits within 30 seconds from receiving it, no <code>SIGKILL</code> value is sent.</p> <note> <p>The default 30-second timeout can be configured on the Amazon ECS container agent with the <code>ECS_CONTAINER_STOP_TIMEOUT</code> variable. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html\">Amazon ECS Container Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note>"
    },
    "SubmitAttachmentStateChanges": {
      "name": "SubmitAttachmentStateChanges",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SubmitAttachmentStateChangesRequest"
      },
      "output": {
        "shape": "SubmitAttachmentStateChangesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that an attachment changed states.</p>"
    },
    "SubmitContainerStateChange": {
      "name": "SubmitContainerStateChange",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SubmitContainerStateChangeRequest"
      },
      "output": {
        "shape": "SubmitContainerStateChangeResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that a container changed states.</p>"
    },
    "SubmitTaskStateChange": {
      "name": "SubmitTaskStateChange",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SubmitTaskStateChangeRequest"
      },
      "output": {
        "shape": "SubmitTaskStateChangeResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<note> <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that a task changed states.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Associates the specified tags to a resource with the specified <code>resourceArn</code>. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Deletes specified tags from a resource.</p>"
    },
    "UpdateClusterSettings": {
      "name": "UpdateClusterSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateClusterSettingsRequest"
      },
      "output": {
        "shape": "UpdateClusterSettingsResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Modifies the settings to use for a cluster.</p>"
    },
    "UpdateContainerAgent": {
      "name": "UpdateContainerAgent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateContainerAgentRequest"
      },
      "output": {
        "shape": "UpdateContainerAgentResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "UpdateInProgressException"
        },
        {
          "shape": "NoUpdateAvailableException"
        },
        {
          "shape": "MissingVersionException"
        }
      ],
      "documentation": "<p>Updates the Amazon ECS container agent on a specified container instance. Updating the Amazon ECS container agent does not interrupt running tasks or services on the container instance. The process for updating the agent differs depending on whether your container instance was launched with the Amazon ECS-optimized AMI or another operating system.</p> <p> <code>UpdateContainerAgent</code> requires the Amazon ECS-optimized AMI or Amazon Linux with the <code>ecs-init</code> service installed and running. For help updating the Amazon ECS container agent on other operating systems, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent\">Manually Updating the Amazon ECS Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "UpdateContainerInstancesState": {
      "name": "UpdateContainerInstancesState",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateContainerInstancesStateRequest"
      },
      "output": {
        "shape": "UpdateContainerInstancesStateResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        }
      ],
      "documentation": "<p>Modifies the status of an Amazon ECS container instance.</p> <p>Once a container instance has reached an <code>ACTIVE</code> state, you can change the status of a container instance to <code>DRAINING</code> to manually remove an instance from a cluster, for example to perform system updates, update the Docker daemon, or scale down the cluster size.</p> <important> <p>A container instance cannot be changed to <code>DRAINING</code> until it has reached an <code>ACTIVE</code> status. If the instance is in any other status, an error will be received.</p> </important> <p>When you set a container instance to <code>DRAINING</code>, Amazon ECS prevents new tasks from being scheduled for placement on the container instance and replacement service tasks are started on other container instances in the cluster if the resources are available. Service tasks on the container instance that are in the <code>PENDING</code> state are stopped immediately.</p> <p>Service tasks on the container instance that are in the <code>RUNNING</code> state are stopped and replaced according to the service's deployment configuration parameters, <code>minimumHealthyPercent</code> and <code>maximumPercent</code>. You can change the deployment configuration of your service using <a>UpdateService</a>.</p> <ul> <li> <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore <code>desiredCount</code> temporarily during task replacement. For example, <code>desiredCount</code> is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. If the minimum is 100%, the service scheduler can't remove existing tasks until the replacement tasks are considered healthy. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer.</p> </li> <li> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of running tasks during task replacement, which enables you to define the replacement batch size. For example, if <code>desiredCount</code> is four tasks, a maximum of 200% starts four new tasks before stopping the four tasks to be drained, provided that the cluster resources required to do this are available. If the maximum is 100%, then replacement tasks can't start until the draining tasks have stopped.</p> </li> </ul> <p>Any <code>PENDING</code> or <code>RUNNING</code> tasks that do not belong to a service are not affected. You must wait for them to finish or stop them manually.</p> <p>A container instance has completed draining when it has no more <code>RUNNING</code> tasks. You can verify this using <a>ListTasks</a>.</p> <p>When a container instance has been drained, you can set a container instance to <code>ACTIVE</code> status and once it has reached that status the Amazon ECS scheduler can begin scheduling tasks on the instance again.</p>"
    },
    "UpdateService": {
      "name": "UpdateService",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServiceRequest"
      },
      "output": {
        "shape": "UpdateServiceResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "ServiceNotFoundException"
        },
        {
          "shape": "ServiceNotActiveException"
        },
        {
          "shape": "PlatformUnknownException"
        },
        {
          "shape": "PlatformTaskDefinitionIncompatibilityException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<important> <p>Updating the task placement strategies and constraints on an Amazon ECS service remains in preview and is a Beta Service as defined by and subject to the Beta Service Participation Service Terms located at <a href=\"https://aws.amazon.com/service-terms\">https://aws.amazon.com/service-terms</a> (\"Beta Terms\"). These Beta Terms apply to your participation in this preview.</p> </important> <p>Modifies the parameters of a service.</p> <p>For services using the rolling update (<code>ECS</code>) deployment controller, the desired count, deployment configuration, network configuration, task placement constraints and strategies, or task definition used can be updated.</p> <p>For services using the blue/green (<code>CODE_DEPLOY</code>) deployment controller, only the desired count, deployment configuration, task placement constraints and strategies, and health check grace period can be updated using this API. If the network configuration, platform version, or task definition need to be updated, a new AWS CodeDeploy deployment should be created. For more information, see <a href=\"https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html\">CreateDeployment</a> in the <i>AWS CodeDeploy API Reference</i>.</p> <p>For services using an external deployment controller, you can update only the desired count, task placement constraints and strategies, and health check grace period using this API. If the launch type, load balancer, network configuration, platform version, or task definition need to be updated, you should create a new task set. For more information, see <a>CreateTaskSet</a>.</p> <p>You can add to or subtract from the number of instantiations of a task definition in a service by specifying the cluster that the service is running in and a new <code>desiredCount</code> parameter.</p> <p>If you have updated the Docker image of your application, you can create a new task definition with that image and deploy it to your service. The service scheduler uses the minimum healthy percent and maximum percent parameters (in the service's deployment configuration) to determine the deployment strategy.</p> <note> <p>If your updated Docker image uses the same tag as what is in the existing task definition for your service (for example, <code>my_image:latest</code>), you do not need to create a new revision of your task definition. You can update the service using the <code>forceNewDeployment</code> option. The new tasks launched by the deployment pull the current image/tag combination from your repository when they start.</p> </note> <p>You can also update the deployment configuration of a service. When a deployment is triggered by updating the task definition of a service, the service scheduler uses the deployment configuration parameters, <code>minimumHealthyPercent</code> and <code>maximumPercent</code>, to determine the deployment strategy.</p> <ul> <li> <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore <code>desiredCount</code> temporarily during a deployment. For example, if <code>desiredCount</code> is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer.</p> </li> <li> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of running tasks during a deployment, which enables you to define the deployment batch size. For example, if <code>desiredCount</code> is four tasks, a maximum of 200% starts four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available).</p> </li> </ul> <p>When <a>UpdateService</a> stops a task during a deployment, the equivalent of <code>docker stop</code> is issued to the containers running in the task. This results in a <code>SIGTERM</code> and a 30-second timeout, after which <code>SIGKILL</code> is sent and the containers are forcibly stopped. If the container handles the <code>SIGTERM</code> gracefully and exits within 30 seconds from receiving it, no <code>SIGKILL</code> is sent.</p> <p>When the service scheduler launches new tasks, it determines task placement in your cluster with the following logic:</p> <ul> <li> <p>Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).</p> </li> <li> <p>By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy):</p> <ul> <li> <p>Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.</p> </li> <li> <p>Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.</p> </li> </ul> </li> </ul> <p>When the service scheduler stops running tasks, it attempts to maintain balance across the Availability Zones in your cluster using the following logic: </p> <ul> <li> <p>Sort the container instances by the largest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have two, container instances in either zone B or C are considered optimal for termination.</p> </li> <li> <p>Stop the task on a container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the largest number of running tasks for this service.</p> </li> </ul>"
    },
    "UpdateServicePrimaryTaskSet": {
      "name": "UpdateServicePrimaryTaskSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServicePrimaryTaskSetRequest"
      },
      "output": {
        "shape": "UpdateServicePrimaryTaskSetResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "UnsupportedFeatureException"
        },
        {
          "shape": "ServiceNotFoundException"
        },
        {
          "shape": "ServiceNotActiveException"
        },
        {
          "shape": "TaskSetNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Modifies which task set in a service is the primary task set. Any parameters that are updated on the primary task set in a service will transition to the service. This is used when a service uses the <code>EXTERNAL</code> deployment controller type. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html\">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "UpdateTaskSet": {
      "name": "UpdateTaskSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTaskSetRequest"
      },
      "output": {
        "shape": "UpdateTaskSetResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "ClientException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ClusterNotFoundException"
        },
        {
          "shape": "UnsupportedFeatureException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceNotFoundException"
        },
        {
          "shape": "ServiceNotActiveException"
        },
        {
          "shape": "TaskSetNotFoundException"
        }
      ],
      "documentation": "<p>Modifies a task set. This is used when a service uses the <code>EXTERNAL</code> deployment controller type. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html\">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    }
  },
  "shapes": {
    "AgentUpdateStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "STAGING",
        "STAGED",
        "UPDATING",
        "UPDATED",
        "FAILED"
      ]
    },
    "AssignPublicIp": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Attachment": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the attachment.</p>"
        },
        "type": {
          "shape": "String",
          "documentation": "<p>The type of the attachment, such as <code>ElasticNetworkInterface</code>.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p> The status of the attachment. Valid values are <code>PRECREATED</code>, <code>CREATED</code>, <code>ATTACHING</code>, <code>ATTACHED</code>, <code>DETACHING</code>, <code>DETACHED</code>, and <code>DELETED</code>.</p>"
        },
        "details": {
          "shape": "AttachmentDetails",
          "documentation": "<p>Details of the attachment. For elastic network interfaces, this includes the network interface ID, the MAC address, the subnet ID, and the private IPv4 address.</p>"
        }
      },
      "documentation": "<p>An object representing a container instance or task attachment.</p>"
    },
    "AttachmentDetails": {
      "type": "list",
      "member": {
        "shape": "KeyValuePair"
      }
    },
    "AttachmentStateChange": {
      "type": "structure",
      "required": [
        "attachmentArn",
        "status"
      ],
      "members": {
        "attachmentArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the attachment.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the attachment.</p>"
        }
      },
      "documentation": "<p>An object representing a change in state for a task attachment.</p>"
    },
    "AttachmentStateChanges": {
      "type": "list",
      "member": {
        "shape": "AttachmentStateChange"
      }
    },
    "Attachments": {
      "type": "list",
      "member": {
        "shape": "Attachment"
      }
    },
    "Attribute": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the attribute. Up to 128 letters (uppercase and lowercase), numbers, hyphens, underscores, and periods are allowed.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The value of the attribute. Up to 128 letters (uppercase and lowercase), numbers, hyphens, underscores, periods, at signs (@), forward slashes, colons, and spaces are allowed.</p>"
        },
        "targetType": {
          "shape": "TargetType",
          "documentation": "<p>The type of the target with which to attach the attribute. This parameter is required if you use the short form ID for a resource instead of the full ARN.</p>"
        },
        "targetId": {
          "shape": "String",
          "documentation": "<p>The ID of the target. You can specify the short form ID for a resource or the full Amazon Resource Name (ARN).</p>"
        }
      },
      "documentation": "<p>An attribute is a name-value pair associated with an Amazon ECS object. Attributes enable you to extend the Amazon ECS data model by adding custom metadata to your resources. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes\">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "Attributes": {
      "type": "list",
      "member": {
        "shape": "Attribute"
      }
    },
    "AutoScalingGroupProvider": {
      "type": "structure",
      "required": [
        "autoScalingGroupArn"
      ],
      "members": {
        "autoScalingGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the Auto Scaling group.</p>"
        },
        "managedScaling": {
          "shape": "ManagedScaling",
          "documentation": "<p>The managed scaling settings for the Auto Scaling group capacity provider.</p>"
        },
        "managedTerminationProtection": {
          "shape": "ManagedTerminationProtection",
          "documentation": "<p>The managed termination protection setting to use for the Auto Scaling group capacity provider. This determines whether the Auto Scaling group has managed termination protection.</p> <important> <p>When using managed termination protection, managed scaling must also be used otherwise managed termination protection will not work.</p> </important> <p>When managed termination protection is enabled, Amazon ECS prevents the Amazon EC2 instances in an Auto Scaling group that contain tasks from being terminated during a scale-in action. The Auto Scaling group and each instance in the Auto Scaling group must have instance protection from scale-in actions enabled as well. For more information, see <a href=\"https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#instance-protection\">Instance Protection</a> in the <i>AWS Auto Scaling User Guide</i>.</p> <p>When managed termination protection is disabled, your Amazon EC2 instances are not protected from termination when the Auto Scaling group scales in.</p>"
        }
      },
      "documentation": "<p>The details of the Auto Scaling group for the capacity provider.</p>"
    },
    "AwsVpcConfiguration": {
      "type": "structure",
      "required": [
        "subnets"
      ],
      "members": {
        "subnets": {
          "shape": "StringList",
          "documentation": "<p>The subnets associated with the task or service. There is a limit of 16 subnets that can be specified per <code>AwsVpcConfiguration</code>.</p> <note> <p>All specified subnets must be from the same VPC.</p> </note>"
        },
        "securityGroups": {
          "shape": "StringList",
          "documentation": "<p>The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. There is a limit of 5 security groups that can be specified per <code>AwsVpcConfiguration</code>.</p> <note> <p>All specified security groups must be from the same VPC.</p> </note>"
        },
        "assignPublicIp": {
          "shape": "AssignPublicIp",
          "documentation": "<p>Whether the task's elastic network interface receives a public IP address. The default value is <code>DISABLED</code>.</p>"
        }
      },
      "documentation": "<p>An object representing the networking details for a task or service.</p>"
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
    "CapacityProvider": {
      "type": "structure",
      "members": {
        "capacityProviderArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the capacity provider.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the capacity provider.</p>"
        },
        "status": {
          "shape": "CapacityProviderStatus",
          "documentation": "<p>The current status of the capacity provider. Only capacity providers in an <code>ACTIVE</code> state can be used in a cluster. When a capacity provider is successfully deleted, it will have an <code>INACTIVE</code> status.</p>"
        },
        "autoScalingGroupProvider": {
          "shape": "AutoScalingGroupProvider",
          "documentation": "<p>The Auto Scaling group settings for the capacity provider.</p>"
        },
        "updateStatus": {
          "shape": "CapacityProviderUpdateStatus",
          "documentation": "<p>The update status of the capacity provider. The following are the possible states that will be returned.</p> <dl> <dt>DELETE_IN_PROGRESS</dt> <dd> <p>The capacity provider is in the process of being deleted.</p> </dd> <dt>DELETE_COMPLETE</dt> <dd> <p>The capacity provider has been successfully deleted and will have an <code>INACTIVE</code> status.</p> </dd> <dt>DELETE_FAILED</dt> <dd> <p>The capacity provider was unable to be deleted. The update status reason will provide further details about why the delete failed.</p> </dd> </dl>"
        },
        "updateStatusReason": {
          "shape": "String",
          "documentation": "<p>The update status reason. This provides further details about the update status for the capacity provider.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the capacity provider to help you categorize and organize it. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The details of a capacity provider.</p>"
    },
    "CapacityProviderField": {
      "type": "string",
      "enum": [
        "TAGS"
      ]
    },
    "CapacityProviderFieldList": {
      "type": "list",
      "member": {
        "shape": "CapacityProviderField"
      }
    },
    "CapacityProviderStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "INACTIVE"
      ]
    },
    "CapacityProviderStrategy": {
      "type": "list",
      "member": {
        "shape": "CapacityProviderStrategyItem"
      }
    },
    "CapacityProviderStrategyItem": {
      "type": "structure",
      "required": [
        "capacityProvider"
      ],
      "members": {
        "capacityProvider": {
          "shape": "String",
          "documentation": "<p>The short name of the capacity provider.</p>"
        },
        "weight": {
          "shape": "CapacityProviderStrategyItemWeight",
          "documentation": "<p>The <i>weight</i> value designates the relative percentage of the total number of tasks launched that should use the specified capacity provider.</p> <p>For example, if you have a strategy that contains two capacity providers and both have a weight of <code>1</code>, then when the <code>base</code> is satisfied, the tasks will be split evenly across the two capacity providers. Using that same logic, if you specify a weight of <code>1</code> for <i>capacityProviderA</i> and a weight of <code>4</code> for <i>capacityProviderB</i>, then for every one task that is run using <i>capacityProviderA</i>, four tasks would use <i>capacityProviderB</i>.</p>"
        },
        "base": {
          "shape": "CapacityProviderStrategyItemBase",
          "documentation": "<p>The <i>base</i> value designates how many tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a <i>base</i> defined.</p>"
        }
      },
      "documentation": "<p>The details of a capacity provider strategy.</p>"
    },
    "CapacityProviderStrategyItemBase": {
      "type": "integer",
      "max": 100000,
      "min": 0
    },
    "CapacityProviderStrategyItemWeight": {
      "type": "integer",
      "max": 1000,
      "min": 0
    },
    "CapacityProviderUpdateStatus": {
      "type": "string",
      "enum": [
        "DELETE_IN_PROGRESS",
        "DELETE_COMPLETE",
        "DELETE_FAILED"
      ]
    },
    "CapacityProviders": {
      "type": "list",
      "member": {
        "shape": "CapacityProvider"
      }
    },
    "Cluster": {
      "type": "structure",
      "members": {
        "clusterArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the cluster. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the cluster, the AWS account ID of the cluster owner, the <code>cluster</code> namespace, and then the cluster name. For example, <code>arn:aws:ecs:region:012345678910:cluster/test</code>.</p>"
        },
        "clusterName": {
          "shape": "String",
          "documentation": "<p>A user-generated string that you use to identify your cluster.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the cluster. The following are the possible states that will be returned.</p> <dl> <dt>ACTIVE</dt> <dd> <p>The cluster is ready to accept tasks and if applicable you can register container instances with the cluster.</p> </dd> <dt>PROVISIONING</dt> <dd> <p>The cluster has capacity providers associated with it and the resources needed for the capacity provider are being created.</p> </dd> <dt>DEPROVISIONING</dt> <dd> <p>The cluster has capacity providers associated with it and the resources needed for the capacity provider are being deleted.</p> </dd> <dt>FAILED</dt> <dd> <p>The cluster has capacity providers associated with it and the resources needed for the capacity provider have failed to create.</p> </dd> <dt>INACTIVE</dt> <dd> <p>The cluster has been deleted. Clusters with an <code>INACTIVE</code> status may remain discoverable in your account for a period of time. However, this behavior is subject to change in the future, so you should not rely on <code>INACTIVE</code> clusters persisting.</p> </dd> </dl>"
        },
        "registeredContainerInstancesCount": {
          "shape": "Integer",
          "documentation": "<p>The number of container instances registered into the cluster. This includes container instances in both <code>ACTIVE</code> and <code>DRAINING</code> status.</p>"
        },
        "runningTasksCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>"
        },
        "pendingTasksCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>"
        },
        "activeServicesCount": {
          "shape": "Integer",
          "documentation": "<p>The number of services that are running on the cluster in an <code>ACTIVE</code> state. You can view these services with <a>ListServices</a>.</p>"
        },
        "statistics": {
          "shape": "Statistics",
          "documentation": "<p>Additional information about your clusters that are separated by launch type, including:</p> <ul> <li> <p>runningEC2TasksCount</p> </li> <li> <p>RunningFargateTasksCount</p> </li> <li> <p>pendingEC2TasksCount</p> </li> <li> <p>pendingFargateTasksCount</p> </li> <li> <p>activeEC2ServiceCount</p> </li> <li> <p>activeFargateServiceCount</p> </li> <li> <p>drainingEC2ServiceCount</p> </li> <li> <p>drainingFargateServiceCount</p> </li> </ul>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the cluster to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        },
        "settings": {
          "shape": "ClusterSettings",
          "documentation": "<p>The settings for the cluster. This parameter indicates whether CloudWatch Container Insights is enabled or disabled for a cluster.</p>"
        },
        "capacityProviders": {
          "shape": "StringList",
          "documentation": "<p>The capacity providers associated with the cluster.</p>"
        },
        "defaultCapacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The default capacity provider strategy for the cluster. When services or tasks are run in the cluster with no launch type or capacity provider strategy specified, the default capacity provider strategy is used.</p>"
        },
        "attachments": {
          "shape": "Attachments",
          "documentation": "<p>The resources attached to a cluster. When using a capacity provider with a cluster, the Auto Scaling plan that is created will be returned as a cluster attachment.</p>"
        },
        "attachmentsStatus": {
          "shape": "String",
          "documentation": "<p>The status of the capacity providers associated with the cluster. The following are the states that will be returned:</p> <dl> <dt>UPDATE_IN_PROGRESS</dt> <dd> <p>The available capacity providers for the cluster are updating. This occurs when the Auto Scaling plan is provisioning or deprovisioning.</p> </dd> <dt>UPDATE_COMPLETE</dt> <dd> <p>The capacity providers have successfully updated.</p> </dd> <dt>UPDATE_FAILED</dt> <dd> <p>The capacity provider updates failed.</p> </dd> </dl>"
        }
      },
      "documentation": "<p>A regional grouping of one or more container instances on which you can run task requests. Each account receives a default cluster the first time you use the Amazon ECS service, but you may also create other clusters. Clusters may contain more than one instance type simultaneously.</p>"
    },
    "ClusterField": {
      "type": "string",
      "enum": [
        "ATTACHMENTS",
        "SETTINGS",
        "STATISTICS",
        "TAGS"
      ]
    },
    "ClusterFieldList": {
      "type": "list",
      "member": {
        "shape": "ClusterField"
      }
    },
    "ClusterSetting": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ClusterSettingName",
          "documentation": "<p>The name of the cluster setting. The only supported value is <code>containerInsights</code>.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The value to set for the cluster setting. The supported values are <code>enabled</code> and <code>disabled</code>. If <code>enabled</code> is specified, CloudWatch Container Insights will be enabled for the cluster, otherwise it will be disabled unless the <code>containerInsights</code> account setting is enabled. If a cluster value is specified, it will override the <code>containerInsights</code> value set with <a>PutAccountSetting</a> or <a>PutAccountSettingDefault</a>.</p>"
        }
      },
      "documentation": "<p>The settings to use when creating a cluster. This parameter is used to enable CloudWatch Container Insights for a cluster.</p>"
    },
    "ClusterSettingName": {
      "type": "string",
      "enum": [
        "containerInsights"
      ]
    },
    "ClusterSettings": {
      "type": "list",
      "member": {
        "shape": "ClusterSetting"
      }
    },
    "Clusters": {
      "type": "list",
      "member": {
        "shape": "Cluster"
      }
    },
    "Compatibility": {
      "type": "string",
      "enum": [
        "EC2",
        "FARGATE"
      ]
    },
    "CompatibilityList": {
      "type": "list",
      "member": {
        "shape": "Compatibility"
      }
    },
    "Connectivity": {
      "type": "string",
      "enum": [
        "CONNECTED",
        "DISCONNECTED"
      ]
    },
    "Container": {
      "type": "structure",
      "members": {
        "containerArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the container.</p>"
        },
        "taskArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the task.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the container.</p>"
        },
        "image": {
          "shape": "String",
          "documentation": "<p>The image used for the container.</p>"
        },
        "imageDigest": {
          "shape": "String",
          "documentation": "<p>The container image manifest digest.</p> <note> <p>The <code>imageDigest</code> is only returned if the container is using an image hosted in Amazon ECR, otherwise it is omitted.</p> </note>"
        },
        "runtimeId": {
          "shape": "String",
          "documentation": "<p>The ID of the Docker container.</p>"
        },
        "lastStatus": {
          "shape": "String",
          "documentation": "<p>The last known status of the container.</p>"
        },
        "exitCode": {
          "shape": "BoxedInteger",
          "documentation": "<p>The exit code returned from the container.</p>"
        },
        "reason": {
          "shape": "String",
          "documentation": "<p>A short (255 max characters) human-readable string to provide additional details about a running or stopped container.</p>"
        },
        "networkBindings": {
          "shape": "NetworkBindings",
          "documentation": "<p>The network bindings associated with the container.</p>"
        },
        "networkInterfaces": {
          "shape": "NetworkInterfaces",
          "documentation": "<p>The network interfaces associated with the container.</p>"
        },
        "healthStatus": {
          "shape": "HealthStatus",
          "documentation": "<p>The health status of the container. If health checks are not configured for this container in its task definition, then it reports the health status as <code>UNKNOWN</code>.</p>"
        },
        "cpu": {
          "shape": "String",
          "documentation": "<p>The number of CPU units set for the container. The value will be <code>0</code> if no value was specified in the container definition when the task definition was registered.</p>"
        },
        "memory": {
          "shape": "String",
          "documentation": "<p>The hard limit (in MiB) of memory set for the container.</p>"
        },
        "memoryReservation": {
          "shape": "String",
          "documentation": "<p>The soft limit (in MiB) of memory set for the container.</p>"
        },
        "gpuIds": {
          "shape": "GpuIds",
          "documentation": "<p>The IDs of each GPU assigned to the container.</p>"
        }
      },
      "documentation": "<p>A Docker container that is part of a task.</p>"
    },
    "ContainerCondition": {
      "type": "string",
      "enum": [
        "START",
        "COMPLETE",
        "SUCCESS",
        "HEALTHY"
      ]
    },
    "ContainerDefinition": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of a container. If you are linking multiple containers together in a task definition, the <code>name</code> of one container can be entered in the <code>links</code> of another container to connect the containers. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. This parameter maps to <code>name</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--name</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>. </p>"
        },
        "image": {
          "shape": "String",
          "documentation": "<p>The image used to start a container. This string is passed directly to the Docker daemon. Images in the Docker Hub registry are available by default. Other repositories are specified with either <code> <i>repository-url</i>/<i>image</i>:<i>tag</i> </code> or <code> <i>repository-url</i>/<i>image</i>@<i>digest</i> </code>. Up to 255 letters (uppercase and lowercase), numbers, hyphens, underscores, colons, periods, forward slashes, and number signs are allowed. This parameter maps to <code>Image</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>IMAGE</code> parameter of <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <ul> <li> <p>When a new task starts, the Amazon ECS container agent pulls the latest version of the specified image and tag for the container to use. However, subsequent updates to a repository image are not propagated to already running tasks.</p> </li> <li> <p>Images in Amazon ECR repositories can be specified by either using the full <code>registry/repository:tag</code> or <code>registry/repository@digest</code>. For example, <code>012345678910.dkr.ecr.&lt;region-name&gt;.amazonaws.com/&lt;repository-name&gt;:latest</code> or <code>012345678910.dkr.ecr.&lt;region-name&gt;.amazonaws.com/&lt;repository-name&gt;@sha256:94afd1f2e64d908bc90dbca0035a5b567EXAMPLE</code>. </p> </li> <li> <p>Images in official repositories on Docker Hub use a single name (for example, <code>ubuntu</code> or <code>mongo</code>).</p> </li> <li> <p>Images in other repositories on Docker Hub are qualified with an organization name (for example, <code>amazon/amazon-ecs-agent</code>).</p> </li> <li> <p>Images in other online repositories are qualified further by a domain name (for example, <code>quay.io/assemblyline/ubuntu</code>).</p> </li> </ul>"
        },
        "repositoryCredentials": {
          "shape": "RepositoryCredentials",
          "documentation": "<p>The private repository authentication credentials to use.</p>"
        },
        "cpu": {
          "shape": "Integer",
          "documentation": "<p>The number of <code>cpu</code> units reserved for the container. This parameter maps to <code>CpuShares</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--cpu-shares</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <p>This field is optional for tasks using the Fargate launch type, and the only requirement is that the total amount of CPU reserved for all containers within a task be lower than the task-level <code>cpu</code> value.</p> <note> <p>You can determine the number of CPU units that are available per EC2 instance type by multiplying the vCPUs listed for that instance type on the <a href=\"http://aws.amazon.com/ec2/instance-types/\">Amazon EC2 Instances</a> detail page by 1,024.</p> </note> <p>Linux containers share unallocated CPU units with other containers on the container instance with the same ratio as their allocated amount. For example, if you run a single-container task on a single-core instance type with 512 CPU units specified for that container, and that is the only task running on the container instance, that container could use the full 1,024 CPU unit share at any given time. However, if you launched another copy of the same task on that container instance, each task would be guaranteed a minimum of 512 CPU units when needed, and each container could float to higher CPU usage if the other container was not using it, but if both tasks were 100% active all of the time, they would be limited to 512 CPU units.</p> <p>On Linux container instances, the Docker daemon on the container instance uses the CPU value to calculate the relative CPU share ratios for running containers. For more information, see <a href=\"https://docs.docker.com/engine/reference/run/#cpu-share-constraint\">CPU share constraint</a> in the Docker documentation. The minimum valid CPU share value that the Linux kernel allows is 2. However, the CPU parameter is not required, and you can use CPU values below 2 in your container definitions. For CPU values below 2 (including null), the behavior varies based on your Amazon ECS container agent version:</p> <ul> <li> <p> <b>Agent versions less than or equal to 1.1.0:</b> Null and zero CPU values are passed to Docker as 0, which Docker then converts to 1,024 CPU shares. CPU values of 1 are passed to Docker as 1, which the Linux kernel converts to two CPU shares.</p> </li> <li> <p> <b>Agent versions greater than or equal to 1.2.0:</b> Null, zero, and CPU values of 1 are passed to Docker as 2.</p> </li> </ul> <p>On Windows container instances, the CPU limit is enforced as an absolute limit, or a quota. Windows containers only have access to the specified amount of CPU that is described in the task definition.</p>"
        },
        "memory": {
          "shape": "BoxedInteger",
          "documentation": "<p>The amount (in MiB) of memory to present to the container. If your container attempts to exceed the memory specified here, the container is killed. The total amount of memory reserved for all containers within a task must be lower than the task <code>memory</code> value, if one is specified. This parameter maps to <code>Memory</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--memory</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <p>If using the Fargate launch type, this parameter is optional.</p> <p>If using the EC2 launch type, you must specify either a task-level memory value or a container-level memory value. If you specify both a container-level <code>memory</code> and <code>memoryReservation</code> value, <code>memory</code> must be greater than <code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then that value is subtracted from the available memory resources for the container instance on which the container is placed. Otherwise, the value of <code>memory</code> is used.</p> <p>The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers.</p>"
        },
        "memoryReservation": {
          "shape": "BoxedInteger",
          "documentation": "<p>The soft limit (in MiB) of memory to reserve for the container. When system memory is under heavy contention, Docker attempts to keep the container memory to this soft limit. However, your container can consume more memory when it needs to, up to either the hard limit specified with the <code>memory</code> parameter (if applicable), or all of the available memory on the container instance, whichever comes first. This parameter maps to <code>MemoryReservation</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--memory-reservation</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <p>If a task-level memory value is not specified, you must specify a non-zero integer for one or both of <code>memory</code> or <code>memoryReservation</code> in a container definition. If you specify both, <code>memory</code> must be greater than <code>memoryReservation</code>. If you specify <code>memoryReservation</code>, then that value is subtracted from the available memory resources for the container instance on which the container is placed. Otherwise, the value of <code>memory</code> is used.</p> <p>For example, if your container normally uses 128 MiB of memory, but occasionally bursts to 256 MiB of memory for short periods of time, you can set a <code>memoryReservation</code> of 128 MiB, and a <code>memory</code> hard limit of 300 MiB. This configuration would allow the container to only reserve 128 MiB of memory from the remaining resources on the container instance, but also allow the container to consume more memory resources when needed.</p> <p>The Docker daemon reserves a minimum of 4 MiB of memory for a container, so you should not specify fewer than 4 MiB of memory for your containers. </p>"
        },
        "links": {
          "shape": "StringList",
          "documentation": "<p>The <code>links</code> parameter allows containers to communicate with each other without the need for port mappings. This parameter is only supported if the network mode of a task definition is <code>bridge</code>. The <code>name:internalName</code> construct is analogous to <code>name:alias</code> in Docker links. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. For more information about linking Docker containers, go to <a href=\"https://docs.docker.com/network/links/\">Legacy container links</a> in the Docker documentation. This parameter maps to <code>Links</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--link</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>This parameter is not supported for Windows containers.</p> </note> <important> <p>Containers that are collocated on a single container instance may be able to communicate with each other without requiring links or host port mappings. Network isolation is achieved on the container instance using security groups and VPC settings.</p> </important>"
        },
        "portMappings": {
          "shape": "PortMappingList",
          "documentation": "<p>The list of port mappings for the container. Port mappings allow containers to access ports on the host container instance to send or receive traffic.</p> <p>For task definitions that use the <code>awsvpc</code> network mode, you should only specify the <code>containerPort</code>. The <code>hostPort</code> can be left blank or it must be the same value as the <code>containerPort</code>.</p> <p>Port mappings on Windows use the <code>NetNAT</code> gateway address rather than <code>localhost</code>. There is no loopback for port mappings on Windows, so you cannot access a container's mapped port from the host itself. </p> <p>This parameter maps to <code>PortBindings</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--publish</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>. If the network mode of a task definition is set to <code>none</code>, then you can't specify port mappings. If the network mode of a task definition is set to <code>host</code>, then host ports must either be undefined or they must match the container port in the port mapping.</p> <note> <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <b>Network Bindings</b> section of a container description for a selected task in the Amazon ECS console. The assignments are also visible in the <code>networkBindings</code> section <a>DescribeTasks</a> responses.</p> </note>"
        },
        "essential": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If the <code>essential</code> parameter of a container is marked as <code>true</code>, and that container fails or stops for any reason, all other containers that are part of the task are stopped. If the <code>essential</code> parameter of a container is marked as <code>false</code>, then its failure does not affect the rest of the containers in a task. If this parameter is omitted, a container is assumed to be essential.</p> <p>All tasks must have at least one essential container. If you have an application that is composed of multiple containers, you should group containers that are used for a common purpose into components, and separate the different components into multiple task definitions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/application_architecture.html\">Application Architecture</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "entryPoint": {
          "shape": "StringList",
          "documentation": "<important> <p>Early versions of the Amazon ECS container agent do not properly handle <code>entryPoint</code> parameters. If you have problems using <code>entryPoint</code>, update your container agent or enter your commands and arguments as <code>command</code> array items instead.</p> </important> <p>The entry point that is passed to the container. This parameter maps to <code>Entrypoint</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--entrypoint</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>. For more information, see <a href=\"https://docs.docker.com/engine/reference/builder/#entrypoint\">https://docs.docker.com/engine/reference/builder/#entrypoint</a>.</p>"
        },
        "command": {
          "shape": "StringList",
          "documentation": "<p>The command that is passed to the container. This parameter maps to <code>Cmd</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>COMMAND</code> parameter to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>. For more information, see <a href=\"https://docs.docker.com/engine/reference/builder/#cmd\">https://docs.docker.com/engine/reference/builder/#cmd</a>. If there are multiple arguments, each argument should be a separated string in the array.</p>"
        },
        "environment": {
          "shape": "EnvironmentVariables",
          "documentation": "<p>The environment variables to pass to a container. This parameter maps to <code>Env</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--env</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <important> <p>We do not recommend using plaintext environment variables for sensitive information, such as credential data.</p> </important>"
        },
        "environmentFiles": {
          "shape": "EnvironmentFiles",
          "documentation": "<p>A list of files containing the environment variables to pass to a container. This parameter maps to the <code>--env-file</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <p>You can specify up to ten environment files. The file must have a <code>.env</code> file extension. Each line in an environment file should contain an environment variable in <code>VARIABLE=VALUE</code> format. Lines beginning with <code>#</code> are treated as comments and are ignored. For more information on the environment variable file syntax, see <a href=\"https://docs.docker.com/compose/env-file/\">Declare default environment variables in file</a>.</p> <p>If there are environment variables specified using the <code>environment</code> parameter in a container definition, they take precedence over the variables contained within an environment file. If multiple environment files are specified that contain the same variable, they are processed from the top down. It is recommended to use unique variable names. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html\">Specifying Environment Variables</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>This field is not valid for containers in tasks using the Fargate launch type.</p>"
        },
        "mountPoints": {
          "shape": "MountPointList",
          "documentation": "<p>The mount points for data volumes in your container.</p> <p>This parameter maps to <code>Volumes</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--volume</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <p>Windows containers can mount whole directories on the same drive as <code>$env:ProgramData</code>. Windows containers cannot mount directories on a different drive, and mount point cannot be across drives.</p>"
        },
        "volumesFrom": {
          "shape": "VolumeFromList",
          "documentation": "<p>Data volumes to mount from another container. This parameter maps to <code>VolumesFrom</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--volumes-from</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p>"
        },
        "linuxParameters": {
          "shape": "LinuxParameters",
          "documentation": "<p>Linux-specific modifications that are applied to the container, such as Linux kernel capabilities. For more information see <a>KernelCapabilities</a>.</p> <note> <p>This parameter is not supported for Windows containers.</p> </note>"
        },
        "secrets": {
          "shape": "SecretList",
          "documentation": "<p>The secrets to pass to the container. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html\">Specifying Sensitive Data</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "dependsOn": {
          "shape": "ContainerDependencies",
          "documentation": "<p>The dependencies defined for container startup and shutdown. A container can contain multiple dependencies. When a dependency is defined for container startup, for container shutdown it is reversed.</p> <p>For tasks using the EC2 launch type, the container instances require at least version 1.26.0 of the container agent to enable container dependencies. However, we recommend using the latest container agent version. For information about checking your agent version and updating to the latest version, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html\">Updating the Amazon ECS Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the <code>ecs-init</code> package. If your container instances are launched from version <code>20190301</code> or later, then they contain the required versions of the container agent and <code>ecs-init</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html\">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>For tasks using the Fargate launch type, the task or service requires platform version <code>1.3.0</code> or later.</p>"
        },
        "startTimeout": {
          "shape": "BoxedInteger",
          "documentation": "<p>Time duration (in seconds) to wait before giving up on resolving dependencies for a container. For example, you specify two containers in a task definition with containerA having a dependency on containerB reaching a <code>COMPLETE</code>, <code>SUCCESS</code>, or <code>HEALTHY</code> status. If a <code>startTimeout</code> value is specified for containerB and it does not reach the desired status within that time then containerA will give up and not start. This results in the task transitioning to a <code>STOPPED</code> state.</p> <p>For tasks using the Fargate launch type, this parameter requires that the task or service uses platform version 1.3.0 or later. If this parameter is not specified, the default value of 3 minutes is used.</p> <p>For tasks using the EC2 launch type, if the <code>startTimeout</code> parameter is not specified, the value set for the Amazon ECS container agent configuration variable <code>ECS_CONTAINER_START_TIMEOUT</code> is used by default. If neither the <code>startTimeout</code> parameter or the <code>ECS_CONTAINER_START_TIMEOUT</code> agent configuration variable are set, then the default values of 3 minutes for Linux containers and 8 minutes on Windows containers are used. Your container instances require at least version 1.26.0 of the container agent to enable a container start timeout value. However, we recommend using the latest container agent version. For information about checking your agent version and updating to the latest version, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html\">Updating the Amazon ECS Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the <code>ecs-init</code> package. If your container instances are launched from version <code>20190301</code> or later, then they contain the required versions of the container agent and <code>ecs-init</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html\">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "stopTimeout": {
          "shape": "BoxedInteger",
          "documentation": "<p>Time duration (in seconds) to wait before the container is forcefully killed if it doesn't exit normally on its own.</p> <p>For tasks using the Fargate launch type, the task or service requires platform version 1.3.0 or later. The max stop timeout value is 120 seconds and if the parameter is not specified, the default value of 30 seconds is used.</p> <p>For tasks using the EC2 launch type, if the <code>stopTimeout</code> parameter is not specified, the value set for the Amazon ECS container agent configuration variable <code>ECS_CONTAINER_STOP_TIMEOUT</code> is used by default. If neither the <code>stopTimeout</code> parameter or the <code>ECS_CONTAINER_STOP_TIMEOUT</code> agent configuration variable are set, then the default values of 30 seconds for Linux containers and 30 seconds on Windows containers are used. Your container instances require at least version 1.26.0 of the container agent to enable a container stop timeout value. However, we recommend using the latest container agent version. For information about checking your agent version and updating to the latest version, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html\">Updating the Amazon ECS Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the <code>ecs-init</code> package. If your container instances are launched from version <code>20190301</code> or later, then they contain the required versions of the container agent and <code>ecs-init</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html\">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "hostname": {
          "shape": "String",
          "documentation": "<p>The hostname to use for your container. This parameter maps to <code>Hostname</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--hostname</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>The <code>hostname</code> parameter is not supported if you are using the <code>awsvpc</code> network mode.</p> </note>"
        },
        "user": {
          "shape": "String",
          "documentation": "<p>The user name to use inside the container. This parameter maps to <code>User</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--user</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <p>You can use the following formats. If specifying a UID or GID, you must specify it as a positive integer.</p> <ul> <li> <p> <code>user</code> </p> </li> <li> <p> <code>user:group</code> </p> </li> <li> <p> <code>uid</code> </p> </li> <li> <p> <code>uid:gid</code> </p> </li> <li> <p> <code>user:gid</code> </p> </li> <li> <p> <code>uid:group</code> </p> </li> </ul> <note> <p>This parameter is not supported for Windows containers.</p> </note>"
        },
        "workingDirectory": {
          "shape": "String",
          "documentation": "<p>The working directory in which to run commands inside the container. This parameter maps to <code>WorkingDir</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--workdir</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p>"
        },
        "disableNetworking": {
          "shape": "BoxedBoolean",
          "documentation": "<p>When this parameter is true, networking is disabled within the container. This parameter maps to <code>NetworkDisabled</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a>.</p> <note> <p>This parameter is not supported for Windows containers.</p> </note>"
        },
        "privileged": {
          "shape": "BoxedBoolean",
          "documentation": "<p>When this parameter is true, the container is given elevated privileges on the host container instance (similar to the <code>root</code> user). This parameter maps to <code>Privileged</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--privileged</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>This parameter is not supported for Windows containers or tasks using the Fargate launch type.</p> </note>"
        },
        "readonlyRootFilesystem": {
          "shape": "BoxedBoolean",
          "documentation": "<p>When this parameter is true, the container is given read-only access to its root file system. This parameter maps to <code>ReadonlyRootfs</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--read-only</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>This parameter is not supported for Windows containers.</p> </note>"
        },
        "dnsServers": {
          "shape": "StringList",
          "documentation": "<p>A list of DNS servers that are presented to the container. This parameter maps to <code>Dns</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--dns</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>This parameter is not supported for Windows containers.</p> </note>"
        },
        "dnsSearchDomains": {
          "shape": "StringList",
          "documentation": "<p>A list of DNS search domains that are presented to the container. This parameter maps to <code>DnsSearch</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--dns-search</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>This parameter is not supported for Windows containers.</p> </note>"
        },
        "extraHosts": {
          "shape": "HostEntryList",
          "documentation": "<p>A list of hostnames and IP address mappings to append to the <code>/etc/hosts</code> file on the container. This parameter maps to <code>ExtraHosts</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--add-host</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>This parameter is not supported for Windows containers or tasks that use the <code>awsvpc</code> network mode.</p> </note>"
        },
        "dockerSecurityOptions": {
          "shape": "StringList",
          "documentation": "<p>A list of strings to provide custom labels for SELinux and AppArmor multi-level security systems. This field is not valid for containers in tasks using the Fargate launch type.</p> <p>With Windows containers, this parameter can be used to reference a credential spec file when configuring a container for Active Directory authentication. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows-gmsa.html\">Using gMSAs for Windows Containers</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>This parameter maps to <code>SecurityOpt</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--security-opt</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>The Amazon ECS container agent running on a container instance must register with the <code>ECS_SELINUX_CAPABLE=true</code> or <code>ECS_APPARMOR_CAPABLE=true</code> environment variables before containers placed on that instance can use these security options. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html\">Amazon ECS Container Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note>"
        },
        "interactive": {
          "shape": "BoxedBoolean",
          "documentation": "<p>When this parameter is <code>true</code>, this allows you to deploy containerized applications that require <code>stdin</code> or a <code>tty</code> to be allocated. This parameter maps to <code>OpenStdin</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--interactive</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p>"
        },
        "pseudoTerminal": {
          "shape": "BoxedBoolean",
          "documentation": "<p>When this parameter is <code>true</code>, a TTY is allocated. This parameter maps to <code>Tty</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--tty</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p>"
        },
        "dockerLabels": {
          "shape": "DockerLabelsMap",
          "documentation": "<p>A key/value map of labels to add to the container. This parameter maps to <code>Labels</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--label</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code> </p>"
        },
        "ulimits": {
          "shape": "UlimitList",
          "documentation": "<p>A list of <code>ulimits</code> to set in the container. If a ulimit value is specified in a task definition, it will override the default values set by Docker. This parameter maps to <code>Ulimits</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--ulimit</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>. Valid naming values are displayed in the <a>Ulimit</a> data type. This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code> </p> <note> <p>This parameter is not supported for Windows containers.</p> </note>"
        },
        "logConfiguration": {
          "shape": "LogConfiguration",
          "documentation": "<p>The log configuration specification for the container.</p> <p>This parameter maps to <code>LogConfig</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--log-driver</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>. By default, containers use the same logging driver that the Docker daemon uses. However the container may use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <a href=\"https://docs.docker.com/engine/admin/logging/overview/\">Configure logging drivers</a> in the Docker documentation.</p> <note> <p>Amazon ECS currently supports a subset of the logging drivers available to the Docker daemon (shown in the <a>LogConfiguration</a> data type). Additional log drivers may be available in future releases of the Amazon ECS container agent.</p> </note> <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code> </p> <note> <p>The Amazon ECS container agent running on a container instance must register the logging drivers available on that instance with the <code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before containers placed on that instance can use these log configuration options. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html\">Amazon ECS Container Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </note>"
        },
        "healthCheck": {
          "shape": "HealthCheck",
          "documentation": "<p>The container health check command and associated configuration parameters for the container. This parameter maps to <code>HealthCheck</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>HEALTHCHECK</code> parameter of <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p>"
        },
        "systemControls": {
          "shape": "SystemControls",
          "documentation": "<p>A list of namespaced kernel parameters to set in the container. This parameter maps to <code>Sysctls</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--sysctl</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>It is not recommended that you specify network-related <code>systemControls</code> parameters for multiple containers in a single task that also uses either the <code>awsvpc</code> or <code>host</code> network modes. For tasks that use the <code>awsvpc</code> network mode, the container that is started last determines which <code>systemControls</code> parameters take effect. For tasks that use the <code>host</code> network mode, it changes the container instance's namespaced kernel parameters as well as the containers.</p> </note>"
        },
        "resourceRequirements": {
          "shape": "ResourceRequirements",
          "documentation": "<p>The type and amount of a resource to assign to a container. The only supported resource is a GPU.</p>"
        },
        "firelensConfiguration": {
          "shape": "FirelensConfiguration",
          "documentation": "<p>The FireLens configuration for the container. This is used to specify and configure a log router for container logs. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html\">Custom Log Routing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>Container definitions are used in task definitions to describe the different containers that are launched as part of a task.</p>"
    },
    "ContainerDefinitions": {
      "type": "list",
      "member": {
        "shape": "ContainerDefinition"
      }
    },
    "ContainerDependencies": {
      "type": "list",
      "member": {
        "shape": "ContainerDependency"
      }
    },
    "ContainerDependency": {
      "type": "structure",
      "required": [
        "containerName",
        "condition"
      ],
      "members": {
        "containerName": {
          "shape": "String",
          "documentation": "<p>The name of a container.</p>"
        },
        "condition": {
          "shape": "ContainerCondition",
          "documentation": "<p>The dependency condition of the container. The following are the available conditions and their behavior:</p> <ul> <li> <p> <code>START</code> - This condition emulates the behavior of links and volumes today. It validates that a dependent container is started before permitting other containers to start.</p> </li> <li> <p> <code>COMPLETE</code> - This condition validates that a dependent container runs to completion (exits) before permitting other containers to start. This can be useful for nonessential containers that run a script and then exit.</p> </li> <li> <p> <code>SUCCESS</code> - This condition is the same as <code>COMPLETE</code>, but it also requires that the container exits with a <code>zero</code> status.</p> </li> <li> <p> <code>HEALTHY</code> - This condition validates that the dependent container passes its Docker health check before permitting other containers to start. This requires that the dependent container has health checks configured. This condition is confirmed only at task startup.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The dependencies defined for container startup and shutdown. A container can contain multiple dependencies. When a dependency is defined for container startup, for container shutdown it is reversed.</p> <p>Your Amazon ECS container instances require at least version 1.26.0 of the container agent to enable container dependencies. However, we recommend using the latest container agent version. For information about checking your agent version and updating to the latest version, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html\">Updating the Amazon ECS Container Agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. If you are using an Amazon ECS-optimized Linux AMI, your instance needs at least version 1.26.0-1 of the <code>ecs-init</code> package. If your container instances are launched from version <code>20190301</code> or later, then they contain the required versions of the container agent and <code>ecs-init</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html\">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <note> <p>For tasks using the Fargate launch type, this parameter requires that the task or service uses platform version 1.3.0 or later.</p> </note>"
    },
    "ContainerInstance": {
      "type": "structure",
      "members": {
        "containerInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID</code>.</p>"
        },
        "ec2InstanceId": {
          "shape": "String",
          "documentation": "<p>The EC2 instance ID of the container instance.</p>"
        },
        "capacityProviderName": {
          "shape": "String",
          "documentation": "<p>The capacity provider associated with the container instance.</p>"
        },
        "version": {
          "shape": "Long",
          "documentation": "<p>The version counter for the container instance. Every time a container instance experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS container instance state with CloudWatch Events, you can compare the version of a container instance reported by the Amazon ECS APIs with the version reported in CloudWatch Events for the container instance (inside the <code>detail</code> object) to verify that the version in your event stream is current.</p>"
        },
        "versionInfo": {
          "shape": "VersionInfo",
          "documentation": "<p>The version information for the Amazon ECS container agent and Docker daemon running on the container instance.</p>"
        },
        "remainingResources": {
          "shape": "Resources",
          "documentation": "<p>For CPU and memory resource types, this parameter describes the remaining CPU and memory that has not already been allocated to tasks and is therefore available for new tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent (at instance registration time) and any task containers that have reserved port mappings on the host (with the <code>host</code> or <code>bridge</code> network mode). Any port that is not specified here is available for new tasks.</p>"
        },
        "registeredResources": {
          "shape": "Resources",
          "documentation": "<p>For CPU and memory resource types, this parameter describes the amount of each resource that was available on the container instance when the container agent registered it with Amazon ECS. This value represents the total amount of CPU and memory that can be allocated on this container instance to tasks. For port resource types, this parameter describes the ports that were reserved by the Amazon ECS container agent when it registered the container instance with Amazon ECS.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the container instance. The valid values are <code>REGISTERING</code>, <code>REGISTRATION_FAILED</code>, <code>ACTIVE</code>, <code>INACTIVE</code>, <code>DEREGISTERING</code>, or <code>DRAINING</code>.</p> <p>If your account has opted in to the <code>awsvpcTrunking</code> account setting, then any newly registered container instance will transition to a <code>REGISTERING</code> status while the trunk elastic network interface is provisioned for the instance. If the registration fails, the instance will transition to a <code>REGISTRATION_FAILED</code> status. You can describe the container instance and see the reason for failure in the <code>statusReason</code> parameter. Once the container instance is terminated, the instance transitions to a <code>DEREGISTERING</code> status while the trunk elastic network interface is deprovisioned. The instance then transitions to an <code>INACTIVE</code> status.</p> <p>The <code>ACTIVE</code> status indicates that the container instance can accept tasks. The <code>DRAINING</code> indicates that new tasks are not placed on the container instance and any service tasks running on the container instance are removed if possible. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-draining.html\">Container Instance Draining</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "statusReason": {
          "shape": "String",
          "documentation": "<p>The reason that the container instance reached its current status.</p>"
        },
        "agentConnected": {
          "shape": "Boolean",
          "documentation": "<p>This parameter returns <code>true</code> if the agent is connected to Amazon ECS. Registered instances with an agent that may be unhealthy or stopped return <code>false</code>. Only instances connected to an agent can accept placement requests.</p>"
        },
        "runningTasksCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks on the container instance that are in the <code>RUNNING</code> status.</p>"
        },
        "pendingTasksCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks on the container instance that are in the <code>PENDING</code> status.</p>"
        },
        "agentUpdateStatus": {
          "shape": "AgentUpdateStatus",
          "documentation": "<p>The status of the most recent agent update. If an update has never been requested, this value is <code>NULL</code>.</p>"
        },
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attributes set for the container instance, either by the Amazon ECS container agent at instance registration or manually with the <a>PutAttributes</a> operation.</p>"
        },
        "registeredAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the container instance was registered.</p>"
        },
        "attachments": {
          "shape": "Attachments",
          "documentation": "<p>The resources attached to a container instance, such as elastic network interfaces.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the container instance to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        }
      },
      "documentation": "<p>An EC2 instance that is running the Amazon ECS agent and has been registered with a cluster.</p>"
    },
    "ContainerInstanceField": {
      "type": "string",
      "enum": [
        "TAGS"
      ]
    },
    "ContainerInstanceFieldList": {
      "type": "list",
      "member": {
        "shape": "ContainerInstanceField"
      }
    },
    "ContainerInstanceStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DRAINING",
        "REGISTERING",
        "DEREGISTERING",
        "REGISTRATION_FAILED"
      ]
    },
    "ContainerInstances": {
      "type": "list",
      "member": {
        "shape": "ContainerInstance"
      }
    },
    "ContainerOverride": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the container that receives the override. This parameter is required if any override is specified.</p>"
        },
        "command": {
          "shape": "StringList",
          "documentation": "<p>The command to send to the container that overrides the default command from the Docker image or the task definition. You must also specify a container name.</p>"
        },
        "environment": {
          "shape": "EnvironmentVariables",
          "documentation": "<p>The environment variables to send to the container. You can add new environment variables, which are added to the container at launch, or you can override the existing environment variables from the Docker image or the task definition. You must also specify a container name.</p>"
        },
        "environmentFiles": {
          "shape": "EnvironmentFiles",
          "documentation": "<p>A list of files containing the environment variables to pass to a container, instead of the value from the container definition.</p>"
        },
        "cpu": {
          "shape": "BoxedInteger",
          "documentation": "<p>The number of <code>cpu</code> units reserved for the container, instead of the default value from the task definition. You must also specify a container name.</p>"
        },
        "memory": {
          "shape": "BoxedInteger",
          "documentation": "<p>The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.</p>"
        },
        "memoryReservation": {
          "shape": "BoxedInteger",
          "documentation": "<p>The soft limit (in MiB) of memory to reserve for the container, instead of the default value from the task definition. You must also specify a container name.</p>"
        },
        "resourceRequirements": {
          "shape": "ResourceRequirements",
          "documentation": "<p>The type and amount of a resource to assign to a container, instead of the default value from the task definition. The only supported resource is a GPU.</p>"
        }
      },
      "documentation": "<p>The overrides that should be sent to a container. An empty container override can be passed in. An example of an empty container override would be <code>{\"containerOverrides\": [ ] }</code>. If a non-empty container override is specified, the <code>name</code> parameter must be included.</p>"
    },
    "ContainerOverrides": {
      "type": "list",
      "member": {
        "shape": "ContainerOverride"
      }
    },
    "ContainerStateChange": {
      "type": "structure",
      "members": {
        "containerName": {
          "shape": "String",
          "documentation": "<p>The name of the container.</p>"
        },
        "imageDigest": {
          "shape": "String",
          "documentation": "<p>The container image SHA 256 digest.</p>"
        },
        "runtimeId": {
          "shape": "String",
          "documentation": "<p>The ID of the Docker container.</p>"
        },
        "exitCode": {
          "shape": "BoxedInteger",
          "documentation": "<p>The exit code for the container, if the state change is a result of the container exiting.</p>"
        },
        "networkBindings": {
          "shape": "NetworkBindings",
          "documentation": "<p>Any network bindings associated with the container.</p>"
        },
        "reason": {
          "shape": "String",
          "documentation": "<p>The reason for the state change.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the container.</p>"
        }
      },
      "documentation": "<p>An object representing a change in state for a container.</p>"
    },
    "ContainerStateChanges": {
      "type": "list",
      "member": {
        "shape": "ContainerStateChange"
      }
    },
    "Containers": {
      "type": "list",
      "member": {
        "shape": "Container"
      }
    },
    "CreateCapacityProviderRequest": {
      "type": "structure",
      "required": [
        "name",
        "autoScalingGroupProvider"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the capacity provider. Up to 255 characters are allowed, including letters (upper and lowercase), numbers, underscores, and hyphens. The name cannot be prefixed with \"<code>aws</code>\", \"<code>ecs</code>\", or \"<code>fargate</code>\".</p>"
        },
        "autoScalingGroupProvider": {
          "shape": "AutoScalingGroupProvider",
          "documentation": "<p>The details of the Auto Scaling group for the capacity provider.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the capacity provider to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "CreateCapacityProviderResponse": {
      "type": "structure",
      "members": {
        "capacityProvider": {
          "shape": "CapacityProvider",
          "documentation": "<p>The full description of the new capacity provider.</p>"
        }
      }
    },
    "CreateClusterRequest": {
      "type": "structure",
      "members": {
        "clusterName": {
          "shape": "String",
          "documentation": "<p>The name of your cluster. If you do not specify a name for your cluster, you create a cluster named <code>default</code>. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. </p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the cluster to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        },
        "settings": {
          "shape": "ClusterSettings",
          "documentation": "<p>The setting to use when creating a cluster. This parameter is used to enable CloudWatch Container Insights for a cluster. If this value is specified, it will override the <code>containerInsights</code> value set with <a>PutAccountSetting</a> or <a>PutAccountSettingDefault</a>.</p>"
        },
        "capacityProviders": {
          "shape": "StringList",
          "documentation": "<p>The short name of one or more capacity providers to associate with the cluster.</p> <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created and not already associated with another cluster. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p> <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used.</p> <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the list of available capacity providers for a cluster after the cluster is created.</p>"
        },
        "defaultCapacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy to use by default for the cluster.</p> <p>When creating a service or running a task on a cluster, if no capacity provider or launch type is specified then the default capacity provider strategy for the cluster is used.</p> <p>A capacity provider strategy consists of one or more capacity providers along with the <code>base</code> and <code>weight</code> to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The <a>PutClusterCapacityProviders</a> API is used to associate a capacity provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or <code>UPDATING</code> status can be used.</p> <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p> <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used.</p> <p>If a default capacity provider strategy is not defined for a cluster during creation, it can be defined later with the <a>PutClusterCapacityProviders</a> API operation.</p>"
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
    "CreateServiceRequest": {
      "type": "structure",
      "required": [
        "serviceName"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster on which to run your service. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "serviceName": {
          "shape": "String",
          "documentation": "<p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.</p>"
        },
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full ARN of the task definition to run in your service. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p> <p>A task definition must be specified if the service is using the <code>ECS</code> deployment controller.</p>"
        },
        "loadBalancers": {
          "shape": "LoadBalancers",
          "documentation": "<p>A load balancer object representing the load balancers to use with your service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html\">Service Load Balancing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>If the service is using the rolling update (<code>ECS</code>) deployment controller and using either an Application Load Balancer or Network Load Balancer, you can specify multiple target groups to attach to the service. The service-linked role is required for services that make use of multiple target groups. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html\">Using Service-Linked Roles for Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>If the service is using the <code>CODE_DEPLOY</code> deployment controller, the service is required to use either an Application Load Balancer or Network Load Balancer. When creating an AWS CodeDeploy deployment group, you specify two target groups (referred to as a <code>targetGroupPair</code>). During a deployment, AWS CodeDeploy determines which task set in your service has the status <code>PRIMARY</code> and associates one target group with it, and then associates the other target group with the replacement task set. The load balancer can also have up to two listeners: a required listener for production traffic and an optional listener that allows you perform validation tests with Lambda functions before routing production traffic to it.</p> <p>After you create a service using the <code>ECS</code> deployment controller, the load balancer name or target group ARN, container name, and container port specified in the service definition are immutable. If you are using the <code>CODE_DEPLOY</code> deployment controller, these values can be changed when updating the service.</p> <p>For Application Load Balancers and Network Load Balancers, this object must contain the load balancer target group ARN, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance and port combination is registered as a target in the target group specified here.</p> <p>For Classic Load Balancers, this object must contain the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer. When a task from this service is placed on a container instance, the container instance is registered with the load balancer specified here.</p> <p>Services with tasks that use the <code>awsvpc</code> network mode (for example, those with the Fargate launch type) only support Application Load Balancers and Network Load Balancers. Classic Load Balancers are not supported. Also, when you create any target groups for these services, you must choose <code>ip</code> as the target type, not <code>instance</code>, because tasks that use the <code>awsvpc</code> network mode are associated with an elastic network interface, not an Amazon EC2 instance.</p>"
        },
        "serviceRegistries": {
          "shape": "ServiceRegistries",
          "documentation": "<p>The details of the service discovery registries to assign to this service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html\">Service Discovery</a>.</p> <note> <p>Service discovery is supported for Fargate tasks if you are using platform version v1.1.0 or later. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a>.</p> </note>"
        },
        "desiredCount": {
          "shape": "BoxedInteger",
          "documentation": "<p>The number of instantiations of the specified task definition to place and keep running on your cluster.</p> <p>This is required if <code>schedulingStrategy</code> is <code>REPLICA</code> or is not specified. If <code>schedulingStrategy</code> is <code>DAEMON</code> then this is not required.</p>"
        },
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.</p>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type on which to run your service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>If a <code>launchType</code> is specified, the <code>capacityProviderStrategy</code> parameter must be omitted.</p>"
        },
        "capacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy to use for the service.</p> <p>A capacity provider strategy consists of one or more capacity providers along with the <code>base</code> and <code>weight</code> to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The <a>PutClusterCapacityProviders</a> API is used to associate a capacity provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or <code>UPDATING</code> status can be used.</p> <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code> parameter must be omitted. If no <code>capacityProviderStrategy</code> or <code>launchType</code> is specified, the <code>defaultCapacityProviderStrategy</code> for the cluster is used.</p> <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p> <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used.</p> <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the list of available capacity providers for a cluster after the cluster is created.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version that your tasks in the service are running on. A platform version is specified only for tasks using the Fargate launch type. If one isn't specified, the <code>LATEST</code> platform version is used by default. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "role": {
          "shape": "String",
          "documentation": "<p>The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is only permitted if you are using a load balancer with your service and your task definition does not use the <code>awsvpc</code> network mode. If you specify the <code>role</code> parameter, you must also specify a load balancer object with the <code>loadBalancers</code> parameter.</p> <important> <p>If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here. The service-linked role is required if your task definition uses the <code>awsvpc</code> network mode or if the service is configured to use service discovery, an external deployment controller, multiple target groups, or Elastic Inference accelerators in which case you should not specify a role here. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html\">Using Service-Linked Roles for Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </important> <p>If your specified role has a path other than <code>/</code>, then you must either specify the full role ARN (this is recommended) or prefix the role name with the path. For example, if a role with the name <code>bar</code> has a path of <code>/foo/</code> then you would specify <code>/foo/bar</code> as the role name. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names\">Friendly Names and Paths</a> in the <i>IAM User Guide</i>.</p>"
        },
        "deploymentConfiguration": {
          "shape": "DeploymentConfiguration",
          "documentation": "<p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>"
        },
        "placementConstraints": {
          "shape": "PlacementConstraints",
          "documentation": "<p>An array of placement constraint objects to use for tasks in your service. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime). </p>"
        },
        "placementStrategy": {
          "shape": "PlacementStrategies",
          "documentation": "<p>The placement strategy objects to use for tasks in your service. You can specify a maximum of five strategy rules per service.</p>"
        },
        "networkConfiguration": {
          "shape": "NetworkConfiguration",
          "documentation": "<p>The network configuration for the service. This parameter is required for task definitions that use the <code>awsvpc</code> network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html\">Task Networking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "healthCheckGracePeriodSeconds": {
          "shape": "BoxedInteger",
          "documentation": "<p>The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only used when your service is configured to use a load balancer. If your service has a load balancer defined and you don't specify a health check grace period value, the default value of <code>0</code> is used.</p> <p>If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds. During that time, the Amazon ECS service scheduler ignores health check status. This grace period can prevent the service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.</p>"
        },
        "schedulingStrategy": {
          "shape": "SchedulingStrategy",
          "documentation": "<p>The scheduling strategy to use for the service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html\">Services</a>.</p> <p>There are two service scheduler strategies available:</p> <ul> <li> <p> <code>REPLICA</code>-The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. This scheduler strategy is required if the service is using the <code>CODE_DEPLOY</code> or <code>EXTERNAL</code> deployment controller types.</p> </li> <li> <p> <code>DAEMON</code>-The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints. When you're using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies.</p> <note> <p>Tasks using the Fargate launch type or the <code>CODE_DEPLOY</code> or <code>EXTERNAL</code> deployment controller types don't support the <code>DAEMON</code> scheduling strategy.</p> </note> </li> </ul>"
        },
        "deploymentController": {
          "shape": "DeploymentController",
          "documentation": "<p>The deployment controller to use for the service.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. When a service is deleted, the tags are deleted as well.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        },
        "enableECSManagedTags": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether to enable Amazon ECS managed tags for the tasks within the service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html\">Tagging Your Amazon ECS Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "propagateTags": {
          "shape": "PropagateTags",
          "documentation": "<p>Specifies whether to propagate the tags from the task definition or the service to the tasks in the service. If no value is specified, the tags are not propagated. Tags can only be propagated to the tasks within the service during service creation. To add tags to a task after service creation, use the <a>TagResource</a> API action.</p>"
        }
      }
    },
    "CreateServiceResponse": {
      "type": "structure",
      "members": {
        "service": {
          "shape": "Service",
          "documentation": "<p>The full description of your service following the create call.</p> <p>If a service is using the <code>ECS</code> deployment controller, the <code>deploymentController</code> and <code>taskSets</code> parameters will not be returned.</p> <p>If the service is using the <code>CODE_DEPLOY</code> deployment controller, the <code>deploymentController</code>, <code>taskSets</code> and <code>deployments</code> parameters will be returned, however the <code>deployments</code> parameter will be an empty list.</p>"
        }
      }
    },
    "CreateTaskSetRequest": {
      "type": "structure",
      "required": [
        "service",
        "cluster",
        "taskDefinition"
      ],
      "members": {
        "service": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the service to create the task set in.</p>"
        },
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to create the task set in.</p>"
        },
        "externalId": {
          "shape": "String",
          "documentation": "<p>An optional non-unique tag that identifies this task set in external systems. If the task set is associated with a service discovery registry, the tasks in this task set will have the <code>ECS_TASK_SET_EXTERNAL_ID</code> AWS Cloud Map attribute set to the provided value.</p>"
        },
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The task definition for the tasks in the task set to use.</p>"
        },
        "networkConfiguration": {
          "shape": "NetworkConfiguration"
        },
        "loadBalancers": {
          "shape": "LoadBalancers",
          "documentation": "<p>A load balancer object representing the load balancer to use with the task set. The supported load balancer types are either an Application Load Balancer or a Network Load Balancer.</p>"
        },
        "serviceRegistries": {
          "shape": "ServiceRegistries",
          "documentation": "<p>The details of the service discovery registries to assign to this task set. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html\">Service Discovery</a>.</p>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type that new tasks in the task set will use. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>If a <code>launchType</code> is specified, the <code>capacityProviderStrategy</code> parameter must be omitted.</p>"
        },
        "capacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy to use for the task set.</p> <p>A capacity provider strategy consists of one or more capacity providers along with the <code>base</code> and <code>weight</code> to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The <a>PutClusterCapacityProviders</a> API is used to associate a capacity provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or <code>UPDATING</code> status can be used.</p> <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code> parameter must be omitted. If no <code>capacityProviderStrategy</code> or <code>launchType</code> is specified, the <code>defaultCapacityProviderStrategy</code> for the cluster is used.</p> <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p> <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used.</p> <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the list of available capacity providers for a cluster after the cluster is created.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version that the tasks in the task set should use. A platform version is specified only for tasks using the Fargate launch type. If one isn't specified, the <code>LATEST</code> platform version is used by default.</p>"
        },
        "scale": {
          "shape": "Scale"
        },
        "clientToken": {
          "shape": "String",
          "documentation": "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Up to 32 ASCII characters are allowed.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the task set to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. When a service is deleted, the tags are deleted as well.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "CreateTaskSetResponse": {
      "type": "structure",
      "members": {
        "taskSet": {
          "shape": "TaskSet"
        }
      }
    },
    "DeleteAccountSettingRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "SettingName",
          "documentation": "<p>The resource name for which to disable the account setting. If <code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is specified, the ARN and resource ID for your Amazon ECS container instances is affected. If <code>awsvpcTrunking</code> is specified, the ENI limit for your Amazon ECS container instances is affected.</p>"
        },
        "principalArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the principal, which can be an IAM user, IAM role, or the root user. If you specify the root user, it disables the account setting for all IAM users, IAM roles, and the root user of the account unless an IAM user or role explicitly overrides these settings. If this field is omitted, the setting is changed only for the authenticated user.</p>"
        }
      }
    },
    "DeleteAccountSettingResponse": {
      "type": "structure",
      "members": {
        "setting": {
          "shape": "Setting",
          "documentation": "<p>The account setting for the specified principal ARN.</p>"
        }
      }
    },
    "DeleteAttributesRequest": {
      "type": "structure",
      "required": [
        "attributes"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to delete attributes. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attributes to delete from your resource. You can specify up to 10 attributes per request. For custom attributes, specify the attribute name and target ID, but do not specify the value. If you specify the target ID using the short form, you must also specify the target type.</p>"
        }
      }
    },
    "DeleteAttributesResponse": {
      "type": "structure",
      "members": {
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>A list of attribute objects that were successfully deleted from your resource.</p>"
        }
      }
    },
    "DeleteCapacityProviderRequest": {
      "type": "structure",
      "required": [
        "capacityProvider"
      ],
      "members": {
        "capacityProvider": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the capacity provider to delete.</p>"
        }
      }
    },
    "DeleteCapacityProviderResponse": {
      "type": "structure",
      "members": {
        "capacityProvider": {
          "shape": "CapacityProvider"
        }
      }
    },
    "DeleteClusterRequest": {
      "type": "structure",
      "required": [
        "cluster"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster to delete.</p>"
        }
      }
    },
    "DeleteClusterResponse": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "Cluster",
          "documentation": "<p>The full description of the deleted cluster.</p>"
        }
      }
    },
    "DeleteServiceRequest": {
      "type": "structure",
      "required": [
        "service"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "service": {
          "shape": "String",
          "documentation": "<p>The name of the service to delete.</p>"
        },
        "force": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If <code>true</code>, allows you to delete a service even if it has not been scaled down to zero tasks. It is only necessary to use this if the service is using the <code>REPLICA</code> scheduling strategy.</p>"
        }
      }
    },
    "DeleteServiceResponse": {
      "type": "structure",
      "members": {
        "service": {
          "shape": "Service",
          "documentation": "<p>The full description of the deleted service.</p>"
        }
      }
    },
    "DeleteTaskSetRequest": {
      "type": "structure",
      "required": [
        "cluster",
        "service",
        "taskSet"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task set exists in to delete.</p>"
        },
        "service": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the service that hosts the task set to delete.</p>"
        },
        "taskSet": {
          "shape": "String",
          "documentation": "<p>The task set ID or full Amazon Resource Name (ARN) of the task set to delete.</p>"
        },
        "force": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If <code>true</code>, this allows you to delete a task set even if it hasn't been scaled down to zero.</p>"
        }
      }
    },
    "DeleteTaskSetResponse": {
      "type": "structure",
      "members": {
        "taskSet": {
          "shape": "TaskSet"
        }
      }
    },
    "Deployment": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "String",
          "documentation": "<p>The ID of the deployment.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the deployment. The following describes each state:</p> <dl> <dt>PRIMARY</dt> <dd> <p>The most recent deployment of a service.</p> </dd> <dt>ACTIVE</dt> <dd> <p>A service deployment that still has running tasks, but are in the process of being replaced with a new <code>PRIMARY</code> deployment.</p> </dd> <dt>INACTIVE</dt> <dd> <p>A deployment that has been completely replaced.</p> </dd> </dl>"
        },
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The most recent task definition that was specified for the tasks in the service to use.</p>"
        },
        "desiredCount": {
          "shape": "Integer",
          "documentation": "<p>The most recent desired count of tasks that was specified for the service to deploy or maintain.</p>"
        },
        "pendingCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks in the deployment that are in the <code>PENDING</code> status.</p>"
        },
        "runningCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks in the deployment that are in the <code>RUNNING</code> status.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the service deployment was created.</p>"
        },
        "updatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the service deployment was last updated.</p>"
        },
        "capacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy that the deployment is using.</p>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type the tasks in the service are using. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version on which your tasks in the service are running. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the <code>LATEST</code> platform version is used by default. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "networkConfiguration": {
          "shape": "NetworkConfiguration",
          "documentation": "<p>The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the <code>awsvpc</code> networking mode.</p>"
        }
      },
      "documentation": "<p>The details of an Amazon ECS service deployment. This is used only when a service uses the <code>ECS</code> deployment controller type.</p>"
    },
    "DeploymentConfiguration": {
      "type": "structure",
      "members": {
        "maximumPercent": {
          "shape": "BoxedInteger",
          "documentation": "<p>If a service is using the rolling update (<code>ECS</code>) deployment type, the <b>maximum percent</b> parameter represents an upper limit on the number of tasks in a service that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state during a deployment, as a percentage of the desired number of tasks (rounded down to the nearest integer), and while any container instances are in the <code>DRAINING</code> state if the service contains tasks using the EC2 launch type. This parameter enables you to define the deployment batch size. For example, if your service has a desired number of four tasks and a maximum percent value of 200%, the scheduler may start four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available). The default value for maximum percent is 200%.</p> <p>If a service is using the blue/green (<code>CODE_DEPLOY</code>) or <code>EXTERNAL</code> deployment types and tasks that use the EC2 launch type, the <b>maximum percent</b> value is set to the default value and is used to define the upper limit on the number of the tasks in the service that remain in the <code>RUNNING</code> state while the container instances are in the <code>DRAINING</code> state. If the tasks in the service use the Fargate launch type, the maximum percent value is not used, although it is returned when describing your service.</p>"
        },
        "minimumHealthyPercent": {
          "shape": "BoxedInteger",
          "documentation": "<p>If a service is using the rolling update (<code>ECS</code>) deployment type, the <b>minimum healthy percent</b> represents a lower limit on the number of tasks in a service that must remain in the <code>RUNNING</code> state during a deployment, as a percentage of the desired number of tasks (rounded up to the nearest integer), and while any container instances are in the <code>DRAINING</code> state if the service contains tasks using the EC2 launch type. This parameter enables you to deploy without using additional cluster capacity. For example, if your service has a desired number of four tasks and a minimum healthy percent of 50%, the scheduler may stop two existing tasks to free up cluster capacity before starting two new tasks. Tasks for services that <i>do not</i> use a load balancer are considered healthy if they are in the <code>RUNNING</code> state; tasks for services that <i>do</i> use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and they are reported as healthy by the load balancer. The default value for minimum healthy percent is 100%.</p> <p>If a service is using the blue/green (<code>CODE_DEPLOY</code>) or <code>EXTERNAL</code> deployment types and tasks that use the EC2 launch type, the <b>minimum healthy percent</b> value is set to the default value and is used to define the lower limit on the number of the tasks in the service that remain in the <code>RUNNING</code> state while the container instances are in the <code>DRAINING</code> state. If the tasks in the service use the Fargate launch type, the minimum healthy percent value is not used, although it is returned when describing your service.</p>"
        }
      },
      "documentation": "<p>Optional deployment parameters that control how many tasks run during a deployment and the ordering of stopping and starting tasks.</p>"
    },
    "DeploymentController": {
      "type": "structure",
      "required": [
        "type"
      ],
      "members": {
        "type": {
          "shape": "DeploymentControllerType",
          "documentation": "<p>The deployment controller type to use.</p> <p>There are three deployment controller types available:</p> <dl> <dt>ECS</dt> <dd> <p>The rolling update (<code>ECS</code>) deployment type involves replacing the current running version of the container with the latest version. The number of containers Amazon ECS adds or removes from the service during a rolling update is controlled by adjusting the minimum and maximum number of healthy tasks allowed during a service deployment, as specified in the <a>DeploymentConfiguration</a>.</p> </dd> <dt>CODE_DEPLOY</dt> <dd> <p>The blue/green (<code>CODE_DEPLOY</code>) deployment type uses the blue/green deployment model powered by AWS CodeDeploy, which allows you to verify a new deployment of a service before sending production traffic to it.</p> </dd> <dt>EXTERNAL</dt> <dd> <p>The external (<code>EXTERNAL</code>) deployment type enables you to use any third-party deployment controller for full control over the deployment process for an Amazon ECS service.</p> </dd> </dl>"
        }
      },
      "documentation": "<p>The deployment controller to use for the service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html\">Amazon ECS Deployment Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "DeploymentControllerType": {
      "type": "string",
      "enum": [
        "ECS",
        "CODE_DEPLOY",
        "EXTERNAL"
      ]
    },
    "Deployments": {
      "type": "list",
      "member": {
        "shape": "Deployment"
      }
    },
    "DeregisterContainerInstanceRequest": {
      "type": "structure",
      "required": [
        "containerInstance"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to deregister. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "containerInstance": {
          "shape": "String",
          "documentation": "<p>The container instance ID or full ARN of the container instance to deregister. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID</code>.</p>"
        },
        "force": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Forces the deregistration of the container instance. If you have tasks running on the container instance when you deregister it with the <code>force</code> option, these tasks remain running until you terminate the instance or the tasks stop through some other means, but they are orphaned (no longer monitored or accounted for by Amazon ECS). If an orphaned task on your container instance is part of an Amazon ECS service, then the service scheduler starts another copy of that task, on a different container instance if possible. </p> <p>Any containers in orphaned service tasks that are registered with a Classic Load Balancer or an Application Load Balancer target group are deregistered. They begin connection draining according to the settings on the load balancer or target group.</p>"
        }
      }
    },
    "DeregisterContainerInstanceResponse": {
      "type": "structure",
      "members": {
        "containerInstance": {
          "shape": "ContainerInstance",
          "documentation": "<p>The container instance that was deregistered.</p>"
        }
      }
    },
    "DeregisterTaskDefinitionRequest": {
      "type": "structure",
      "required": [
        "taskDefinition"
      ],
      "members": {
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a <code>revision</code>.</p>"
        }
      }
    },
    "DeregisterTaskDefinitionResponse": {
      "type": "structure",
      "members": {
        "taskDefinition": {
          "shape": "TaskDefinition",
          "documentation": "<p>The full description of the deregistered task.</p>"
        }
      }
    },
    "DescribeCapacityProvidersRequest": {
      "type": "structure",
      "members": {
        "capacityProviders": {
          "shape": "StringList",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of one or more capacity providers. Up to <code>100</code> capacity providers can be described in an action.</p>"
        },
        "include": {
          "shape": "CapacityProviderFieldList",
          "documentation": "<p>Specifies whether or not you want to see the resource tags for the capacity provider. If <code>TAGS</code> is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.</p>"
        },
        "maxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>The maximum number of account setting results returned by <code>DescribeCapacityProviders</code> in paginated output. When this parameter is used, <code>DescribeCapacityProviders</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeCapacityProviders</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 10. If this parameter is not used, then <code>DescribeCapacityProviders</code> returns up to 10 results and a <code>nextToken</code> value if applicable.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeCapacityProviders</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        }
      }
    },
    "DescribeCapacityProvidersResponse": {
      "type": "structure",
      "members": {
        "capacityProviders": {
          "shape": "CapacityProviders",
          "documentation": "<p>The list of capacity providers.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>DescribeCapacityProviders</code> request. When the results of a <code>DescribeCapacityProviders</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "DescribeClustersRequest": {
      "type": "structure",
      "members": {
        "clusters": {
          "shape": "StringList",
          "documentation": "<p>A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "include": {
          "shape": "ClusterFieldList",
          "documentation": "<p>Whether to include additional information about your clusters in the response. If this field is omitted, the attachments, statistics, and tags are not included.</p> <p>If <code>ATTACHMENTS</code> is specified, the attachments for the container instances or tasks within the cluster are included.</p> <p>If <code>SETTINGS</code> is specified, the settings for the cluster are included.</p> <p>If <code>STATISTICS</code> is specified, the following additional information, separated by launch type, is included:</p> <ul> <li> <p>runningEC2TasksCount</p> </li> <li> <p>runningFargateTasksCount</p> </li> <li> <p>pendingEC2TasksCount</p> </li> <li> <p>pendingFargateTasksCount</p> </li> <li> <p>activeEC2ServiceCount</p> </li> <li> <p>activeFargateServiceCount</p> </li> <li> <p>drainingEC2ServiceCount</p> </li> <li> <p>drainingFargateServiceCount</p> </li> </ul> <p>If <code>TAGS</code> is specified, the metadata tags associated with the cluster are included.</p>"
        }
      }
    },
    "DescribeClustersResponse": {
      "type": "structure",
      "members": {
        "clusters": {
          "shape": "Clusters",
          "documentation": "<p>The list of clusters.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "DescribeContainerInstancesRequest": {
      "type": "structure",
      "required": [
        "containerInstances"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the container instance or container instances you are describing were launched in any cluster other than the default cluster.</p>"
        },
        "containerInstances": {
          "shape": "StringList",
          "documentation": "<p>A list of up to 100 container instance IDs or full Amazon Resource Name (ARN) entries.</p>"
        },
        "include": {
          "shape": "ContainerInstanceFieldList",
          "documentation": "<p>Specifies whether you want to see the resource tags for the container instance. If <code>TAGS</code> is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.</p>"
        }
      }
    },
    "DescribeContainerInstancesResponse": {
      "type": "structure",
      "members": {
        "containerInstances": {
          "shape": "ContainerInstances",
          "documentation": "<p>The list of container instances.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "DescribeServicesRequest": {
      "type": "structure",
      "required": [
        "services"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the service or services you are describing were launched in any cluster other than the default cluster.</p>"
        },
        "services": {
          "shape": "StringList",
          "documentation": "<p>A list of services to describe. You may specify up to 10 services to describe in a single operation.</p>"
        },
        "include": {
          "shape": "ServiceFieldList",
          "documentation": "<p>Specifies whether you want to see the resource tags for the service. If <code>TAGS</code> is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.</p>"
        }
      }
    },
    "DescribeServicesResponse": {
      "type": "structure",
      "members": {
        "services": {
          "shape": "Services",
          "documentation": "<p>The list of services described.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "DescribeTaskDefinitionRequest": {
      "type": "structure",
      "required": [
        "taskDefinition"
      ],
      "members": {
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The <code>family</code> for the latest <code>ACTIVE</code> revision, <code>family</code> and <code>revision</code> (<code>family:revision</code>) for a specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to describe.</p>"
        },
        "include": {
          "shape": "TaskDefinitionFieldList",
          "documentation": "<p>Specifies whether to see the resource tags for the task definition. If <code>TAGS</code> is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.</p>"
        }
      }
    },
    "DescribeTaskDefinitionResponse": {
      "type": "structure",
      "members": {
        "taskDefinition": {
          "shape": "TaskDefinition",
          "documentation": "<p>The full task definition description.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that is applied to the task definition to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "DescribeTaskSetsRequest": {
      "type": "structure",
      "required": [
        "cluster",
        "service"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task sets exist in.</p>"
        },
        "service": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the service that the task sets exist in.</p>"
        },
        "taskSets": {
          "shape": "StringList",
          "documentation": "<p>The ID or full Amazon Resource Name (ARN) of task sets to describe.</p>"
        },
        "include": {
          "shape": "TaskSetFieldList",
          "documentation": "<p>Specifies whether to see the resource tags for the task set. If <code>TAGS</code> is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.</p>"
        }
      }
    },
    "DescribeTaskSetsResponse": {
      "type": "structure",
      "members": {
        "taskSets": {
          "shape": "TaskSets",
          "documentation": "<p>The list of task sets described.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "DescribeTasksRequest": {
      "type": "structure",
      "required": [
        "tasks"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task or tasks to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the task or tasks you are describing were launched in any cluster other than the default cluster.</p>"
        },
        "tasks": {
          "shape": "StringList",
          "documentation": "<p>A list of up to 100 task IDs or full ARN entries.</p>"
        },
        "include": {
          "shape": "TaskFieldList",
          "documentation": "<p>Specifies whether you want to see the resource tags for the task. If <code>TAGS</code> is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.</p>"
        }
      }
    },
    "DescribeTasksResponse": {
      "type": "structure",
      "members": {
        "tasks": {
          "shape": "Tasks",
          "documentation": "<p>The list of tasks.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "DesiredStatus": {
      "type": "string",
      "enum": [
        "RUNNING",
        "PENDING",
        "STOPPED"
      ]
    },
    "Device": {
      "type": "structure",
      "required": [
        "hostPath"
      ],
      "members": {
        "hostPath": {
          "shape": "String",
          "documentation": "<p>The path for the device on the host container instance.</p>"
        },
        "containerPath": {
          "shape": "String",
          "documentation": "<p>The path inside the container at which to expose the host device.</p>"
        },
        "permissions": {
          "shape": "DeviceCgroupPermissions",
          "documentation": "<p>The explicit permissions to provide to the container for the device. By default, the container has permissions for <code>read</code>, <code>write</code>, and <code>mknod</code> for the device.</p>"
        }
      },
      "documentation": "<p>An object representing a container instance host device.</p>"
    },
    "DeviceCgroupPermission": {
      "type": "string",
      "enum": [
        "read",
        "write",
        "mknod"
      ]
    },
    "DeviceCgroupPermissions": {
      "type": "list",
      "member": {
        "shape": "DeviceCgroupPermission"
      }
    },
    "DevicesList": {
      "type": "list",
      "member": {
        "shape": "Device"
      }
    },
    "DiscoverPollEndpointRequest": {
      "type": "structure",
      "members": {
        "containerInstance": {
          "shape": "String",
          "documentation": "<p>The container instance ID or full ARN of the container instance. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the container instance, the AWS account ID of the container instance owner, the <code>container-instance</code> namespace, and then the container instance ID. For example, <code>arn:aws:ecs:region:aws_account_id:container-instance/container_instance_ID</code>.</p>"
        },
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster to which the container instance belongs.</p>"
        }
      }
    },
    "DiscoverPollEndpointResponse": {
      "type": "structure",
      "members": {
        "endpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint for the Amazon ECS agent to poll.</p>"
        },
        "telemetryEndpoint": {
          "shape": "String",
          "documentation": "<p>The telemetry endpoint for the Amazon ECS agent.</p>"
        }
      }
    },
    "DockerLabelsMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "DockerVolumeConfiguration": {
      "type": "structure",
      "members": {
        "scope": {
          "shape": "Scope",
          "documentation": "<p>The scope for the Docker volume that determines its lifecycle. Docker volumes that are scoped to a <code>task</code> are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as <code>shared</code> persist after the task stops.</p>"
        },
        "autoprovision": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If this value is <code>true</code>, the Docker volume is created if it does not already exist.</p> <note> <p>This field is only used if the <code>scope</code> is <code>shared</code>.</p> </note>"
        },
        "driver": {
          "shape": "String",
          "documentation": "<p>The Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement. If the driver was installed using the Docker plugin CLI, use <code>docker plugin ls</code> to retrieve the driver name from your container instance. If the driver was installed using another method, use Docker plugin discovery to retrieve the driver name. For more information, see <a href=\"https://docs.docker.com/engine/extend/plugin_api/#plugin-discovery\">Docker plugin discovery</a>. This parameter maps to <code>Driver</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate\">Create a volume</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>xxdriver</code> option to <a href=\"https://docs.docker.com/engine/reference/commandline/volume_create/\">docker volume create</a>.</p>"
        },
        "driverOpts": {
          "shape": "StringMap",
          "documentation": "<p>A map of Docker driver-specific options passed through. This parameter maps to <code>DriverOpts</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate\">Create a volume</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>xxopt</code> option to <a href=\"https://docs.docker.com/engine/reference/commandline/volume_create/\">docker volume create</a>.</p>"
        },
        "labels": {
          "shape": "StringMap",
          "documentation": "<p>Custom metadata to add to your Docker volume. This parameter maps to <code>Labels</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/VolumeCreate\">Create a volume</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>xxlabel</code> option to <a href=\"https://docs.docker.com/engine/reference/commandline/volume_create/\">docker volume create</a>.</p>"
        }
      },
      "documentation": "<p>This parameter is specified when you are using Docker volumes. Docker volumes are only supported when you are using the EC2 launch type. Windows containers only support the use of the <code>local</code> driver. To use bind mounts, specify a <code>host</code> instead.</p>"
    },
    "Double": {
      "type": "double"
    },
    "EFSAuthorizationConfig": {
      "type": "structure",
      "members": {
        "accessPointId": {
          "shape": "String",
          "documentation": "<p>The Amazon EFS access point ID to use. If an access point is specified, the root directory value specified in the <code>EFSVolumeConfiguration</code> will be relative to the directory set for the access point. If an access point is used, transit encryption must be enabled in the <code>EFSVolumeConfiguration</code>. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html\">Working with Amazon EFS Access Points</a> in the <i>Amazon Elastic File System User Guide</i>.</p>"
        },
        "iam": {
          "shape": "EFSAuthorizationConfigIAM",
          "documentation": "<p>Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the <code>EFSVolumeConfiguration</code>. If this parameter is omitted, the default value of <code>DISABLED</code> is used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html#efs-volume-accesspoints\">Using Amazon EFS Access Points</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The authorization configuration details for the Amazon EFS file system.</p>"
    },
    "EFSAuthorizationConfigIAM": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "EFSTransitEncryption": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "EFSVolumeConfiguration": {
      "type": "structure",
      "required": [
        "fileSystemId"
      ],
      "members": {
        "fileSystemId": {
          "shape": "String",
          "documentation": "<p>The Amazon EFS file system ID to use.</p>"
        },
        "rootDirectory": {
          "shape": "String",
          "documentation": "<p>The directory within the Amazon EFS file system to mount as the root directory inside the host. If this parameter is omitted, the root of the Amazon EFS volume will be used. Specifying <code>/</code> will have the same effect as omitting this parameter.</p>"
        },
        "transitEncryption": {
          "shape": "EFSTransitEncryption",
          "documentation": "<p>Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. If this parameter is omitted, the default value of <code>DISABLED</code> is used. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/encryption-in-transit.html\">Encrypting Data in Transit</a> in the <i>Amazon Elastic File System User Guide</i>.</p>"
        },
        "transitEncryptionPort": {
          "shape": "BoxedInteger",
          "documentation": "<p>The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS server. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/efs-mount-helper.html\">EFS Mount Helper</a> in the <i>Amazon Elastic File System User Guide</i>.</p>"
        },
        "authorizationConfig": {
          "shape": "EFSAuthorizationConfig",
          "documentation": "<p>The authorization configuration details for the Amazon EFS file system.</p>"
        }
      },
      "documentation": "<p>This parameter is specified when you are using an Amazon Elastic File System file system for task storage. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html\">Amazon EFS Volumes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "EnvironmentFile": {
      "type": "structure",
      "required": [
        "value",
        "type"
      ],
      "members": {
        "value": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon S3 object containing the environment variable file.</p>"
        },
        "type": {
          "shape": "EnvironmentFileType",
          "documentation": "<p>The file type to use. The only supported value is <code>s3</code>.</p>"
        }
      },
      "documentation": "<p>A list of files containing the environment variables to pass to a container. You can specify up to ten environment files. The file must have a <code>.env</code> file extension. Each line in an environment file should contain an environment variable in <code>VARIABLE=VALUE</code> format. Lines beginning with <code>#</code> are treated as comments and are ignored. For more information on the environment variable file syntax, see <a href=\"https://docs.docker.com/compose/env-file/\">Declare default environment variables in file</a>.</p> <p>If there are environment variables specified using the <code>environment</code> parameter in a container definition, they take precedence over the variables contained within an environment file. If multiple environment files are specified that contain the same variable, they are processed from the top down. It is recommended to use unique variable names. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html\">Specifying Environment Variables</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>This field is not valid for containers in tasks using the Fargate launch type.</p>"
    },
    "EnvironmentFileType": {
      "type": "string",
      "enum": [
        "s3"
      ]
    },
    "EnvironmentFiles": {
      "type": "list",
      "member": {
        "shape": "EnvironmentFile"
      }
    },
    "EnvironmentVariables": {
      "type": "list",
      "member": {
        "shape": "KeyValuePair"
      }
    },
    "Failure": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the failed resource.</p>"
        },
        "reason": {
          "shape": "String",
          "documentation": "<p>The reason for the failure.</p>"
        },
        "detail": {
          "shape": "String",
          "documentation": "<p>The details of the failure.</p>"
        }
      },
      "documentation": "<p>A failed resource.</p>"
    },
    "Failures": {
      "type": "list",
      "member": {
        "shape": "Failure"
      }
    },
    "FirelensConfiguration": {
      "type": "structure",
      "required": [
        "type"
      ],
      "members": {
        "type": {
          "shape": "FirelensConfigurationType",
          "documentation": "<p>The log router to use. The valid values are <code>fluentd</code> or <code>fluentbit</code>.</p>"
        },
        "options": {
          "shape": "FirelensConfigurationOptionsMap",
          "documentation": "<p>The options to use when configuring the log router. This field is optional and can be used to specify a custom configuration file or to add additional metadata, such as the task, task definition, cluster, and container instance details to the log event. If specified, the syntax to use is <code>\"options\":{\"enable-ecs-log-metadata\":\"true|false\",\"config-file-type:\"s3|file\",\"config-file-value\":\"arn:aws:s3:::mybucket/fluent.conf|filepath\"}</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html#firelens-taskdef\">Creating a Task Definition that Uses a FireLens Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The FireLens configuration for the container. This is used to specify and configure a log router for container logs. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html\">Custom Log Routing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "FirelensConfigurationOptionsMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "FirelensConfigurationType": {
      "type": "string",
      "enum": [
        "fluentd",
        "fluentbit"
      ]
    },
    "GpuIds": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "HealthCheck": {
      "type": "structure",
      "required": [
        "command"
      ],
      "members": {
        "command": {
          "shape": "StringList",
          "documentation": "<p>A string array representing the command that the container runs to determine if it is healthy. The string array must start with <code>CMD</code> to execute the command arguments directly, or <code>CMD-SHELL</code> to run the command with the container's default shell. For example:</p> <p> <code>[ \"CMD-SHELL\", \"curl -f http://localhost/ || exit 1\" ]</code> </p> <p>An exit code of 0 indicates success, and non-zero exit code indicates failure. For more information, see <code>HealthCheck</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a>.</p>"
        },
        "interval": {
          "shape": "BoxedInteger",
          "documentation": "<p>The time period in seconds between each health check execution. You may specify between 5 and 300 seconds. The default value is 30 seconds.</p>"
        },
        "timeout": {
          "shape": "BoxedInteger",
          "documentation": "<p>The time period in seconds to wait for a health check to succeed before it is considered a failure. You may specify between 2 and 60 seconds. The default value is 5.</p>"
        },
        "retries": {
          "shape": "BoxedInteger",
          "documentation": "<p>The number of times to retry a failed health check before the container is considered unhealthy. You may specify between 1 and 10 retries. The default value is 3.</p>"
        },
        "startPeriod": {
          "shape": "BoxedInteger",
          "documentation": "<p>The optional grace period within which to provide containers time to bootstrap before failed health checks count towards the maximum number of retries. You may specify between 0 and 300 seconds. The <code>startPeriod</code> is disabled by default.</p> <note> <p>If a health check succeeds within the <code>startPeriod</code>, then the container is considered healthy and any subsequent failures count toward the maximum number of retries.</p> </note>"
        }
      },
      "documentation": "<p>An object representing a container health check. Health check parameters that are specified in a container definition override any Docker health checks that exist in the container image (such as those specified in a parent image or from the image's Dockerfile).</p> <p>You can view the health status of both individual containers and a task with the DescribeTasks API operation or when viewing the task details in the console.</p> <p>The following describes the possible <code>healthStatus</code> values for a container:</p> <ul> <li> <p> <code>HEALTHY</code>-The container health check has passed successfully.</p> </li> <li> <p> <code>UNHEALTHY</code>-The container health check has failed.</p> </li> <li> <p> <code>UNKNOWN</code>-The container health check is being evaluated or there is no container health check defined.</p> </li> </ul> <p>The following describes the possible <code>healthStatus</code> values for a task. The container health check status of nonessential containers do not have an effect on the health status of a task.</p> <ul> <li> <p> <code>HEALTHY</code>-All essential containers within the task have passed their health checks.</p> </li> <li> <p> <code>UNHEALTHY</code>-One or more essential containers have failed their health check.</p> </li> <li> <p> <code>UNKNOWN</code>-The essential containers within the task are still having their health checks evaluated or there are no container health checks defined.</p> </li> </ul> <p>If a task is run manually, and not as part of a service, the task will continue its lifecycle regardless of its health status. For tasks that are part of a service, if the task reports as unhealthy then the task will be stopped and the service scheduler will replace it.</p> <p>The following are notes about container health check support:</p> <ul> <li> <p>Container health checks require version 1.17.0 or greater of the Amazon ECS container agent. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html\">Updating the Amazon ECS Container Agent</a>.</p> </li> <li> <p>Container health checks are supported for Fargate tasks if you are using platform version 1.1.0 or greater. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a>.</p> </li> <li> <p>Container health checks are not supported for tasks that are part of a service that is configured to use a Classic Load Balancer.</p> </li> </ul>"
    },
    "HealthStatus": {
      "type": "string",
      "enum": [
        "HEALTHY",
        "UNHEALTHY",
        "UNKNOWN"
      ]
    },
    "HostEntry": {
      "type": "structure",
      "required": [
        "hostname",
        "ipAddress"
      ],
      "members": {
        "hostname": {
          "shape": "String",
          "documentation": "<p>The hostname to use in the <code>/etc/hosts</code> entry.</p>"
        },
        "ipAddress": {
          "shape": "String",
          "documentation": "<p>The IP address to use in the <code>/etc/hosts</code> entry.</p>"
        }
      },
      "documentation": "<p>Hostnames and IP address entries that are added to the <code>/etc/hosts</code> file of a container via the <code>extraHosts</code> parameter of its <a>ContainerDefinition</a>. </p>"
    },
    "HostEntryList": {
      "type": "list",
      "member": {
        "shape": "HostEntry"
      }
    },
    "HostVolumeProperties": {
      "type": "structure",
      "members": {
        "sourcePath": {
          "shape": "String",
          "documentation": "<p>When the <code>host</code> parameter is used, specify a <code>sourcePath</code> to declare the path on the host container instance that is presented to the container. If this parameter is empty, then the Docker daemon has assigned a host path for you. If the <code>host</code> parameter contains a <code>sourcePath</code> file location, then the data volume persists at the specified location on the host container instance until you delete it manually. If the <code>sourcePath</code> value does not exist on the host container instance, the Docker daemon creates it. If the location does exist, the contents of the source path folder are exported.</p> <p>If you are using the Fargate launch type, the <code>sourcePath</code> parameter is not supported.</p>"
        }
      },
      "documentation": "<p>Details on a container instance bind mount host volume.</p>"
    },
    "InferenceAccelerator": {
      "type": "structure",
      "required": [
        "deviceName",
        "deviceType"
      ],
      "members": {
        "deviceName": {
          "shape": "String",
          "documentation": "<p>The Elastic Inference accelerator device name. The <code>deviceName</code> must also be referenced in a container definition as a <a>ResourceRequirement</a>.</p>"
        },
        "deviceType": {
          "shape": "String",
          "documentation": "<p>The Elastic Inference accelerator type to use.</p>"
        }
      },
      "documentation": "<p>Details on a Elastic Inference accelerator. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html\">Working with Amazon Elastic Inference on Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "InferenceAcceleratorOverride": {
      "type": "structure",
      "members": {
        "deviceName": {
          "shape": "String",
          "documentation": "<p>The Elastic Inference accelerator device name to override for the task. This parameter must match a <code>deviceName</code> specified in the task definition.</p>"
        },
        "deviceType": {
          "shape": "String",
          "documentation": "<p>The Elastic Inference accelerator type to use.</p>"
        }
      },
      "documentation": "<p>Details on an Elastic Inference accelerator task override. This parameter is used to override the Elastic Inference accelerator specified in the task definition. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html\">Working with Amazon Elastic Inference on Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "InferenceAcceleratorOverrides": {
      "type": "list",
      "member": {
        "shape": "InferenceAcceleratorOverride"
      }
    },
    "InferenceAccelerators": {
      "type": "list",
      "member": {
        "shape": "InferenceAccelerator"
      }
    },
    "Integer": {
      "type": "integer"
    },
    "IpcMode": {
      "type": "string",
      "enum": [
        "host",
        "task",
        "none"
      ]
    },
    "KernelCapabilities": {
      "type": "structure",
      "members": {
        "add": {
          "shape": "StringList",
          "documentation": "<p>The Linux capabilities for the container that have been added to the default configuration provided by Docker. This parameter maps to <code>CapAdd</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--cap-add</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>The <code>SYS_PTRACE</code> capability is supported for tasks that use the Fargate launch type if they are also using platform version 1.4.0. The other capabilities are not supported for any platform versions.</p> </note> <p>Valid values: <code>\"ALL\" | \"AUDIT_CONTROL\" | \"AUDIT_WRITE\" | \"BLOCK_SUSPEND\" | \"CHOWN\" | \"DAC_OVERRIDE\" | \"DAC_READ_SEARCH\" | \"FOWNER\" | \"FSETID\" | \"IPC_LOCK\" | \"IPC_OWNER\" | \"KILL\" | \"LEASE\" | \"LINUX_IMMUTABLE\" | \"MAC_ADMIN\" | \"MAC_OVERRIDE\" | \"MKNOD\" | \"NET_ADMIN\" | \"NET_BIND_SERVICE\" | \"NET_BROADCAST\" | \"NET_RAW\" | \"SETFCAP\" | \"SETGID\" | \"SETPCAP\" | \"SETUID\" | \"SYS_ADMIN\" | \"SYS_BOOT\" | \"SYS_CHROOT\" | \"SYS_MODULE\" | \"SYS_NICE\" | \"SYS_PACCT\" | \"SYS_PTRACE\" | \"SYS_RAWIO\" | \"SYS_RESOURCE\" | \"SYS_TIME\" | \"SYS_TTY_CONFIG\" | \"SYSLOG\" | \"WAKE_ALARM\"</code> </p>"
        },
        "drop": {
          "shape": "StringList",
          "documentation": "<p>The Linux capabilities for the container that have been removed from the default configuration provided by Docker. This parameter maps to <code>CapDrop</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--cap-drop</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <p>Valid values: <code>\"ALL\" | \"AUDIT_CONTROL\" | \"AUDIT_WRITE\" | \"BLOCK_SUSPEND\" | \"CHOWN\" | \"DAC_OVERRIDE\" | \"DAC_READ_SEARCH\" | \"FOWNER\" | \"FSETID\" | \"IPC_LOCK\" | \"IPC_OWNER\" | \"KILL\" | \"LEASE\" | \"LINUX_IMMUTABLE\" | \"MAC_ADMIN\" | \"MAC_OVERRIDE\" | \"MKNOD\" | \"NET_ADMIN\" | \"NET_BIND_SERVICE\" | \"NET_BROADCAST\" | \"NET_RAW\" | \"SETFCAP\" | \"SETGID\" | \"SETPCAP\" | \"SETUID\" | \"SYS_ADMIN\" | \"SYS_BOOT\" | \"SYS_CHROOT\" | \"SYS_MODULE\" | \"SYS_NICE\" | \"SYS_PACCT\" | \"SYS_PTRACE\" | \"SYS_RAWIO\" | \"SYS_RESOURCE\" | \"SYS_TIME\" | \"SYS_TTY_CONFIG\" | \"SYSLOG\" | \"WAKE_ALARM\"</code> </p>"
        }
      },
      "documentation": "<p>The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker. For more information on the default capabilities and the non-default available capabilities, see <a href=\"https://docs.docker.com/engine/reference/run/#runtime-privilege-and-linux-capabilities\">Runtime privilege and Linux capabilities</a> in the <i>Docker run reference</i>. For more detailed information on these Linux capabilities, see the <a href=\"http://man7.org/linux/man-pages/man7/capabilities.7.html\">capabilities(7)</a> Linux manual page.</p>"
    },
    "KeyValuePair": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the key-value pair. For environment variables, this is the name of the environment variable.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The value of the key-value pair. For environment variables, this is the value of the environment variable.</p>"
        }
      },
      "documentation": "<p>A key-value pair object.</p>"
    },
    "LaunchType": {
      "type": "string",
      "enum": [
        "EC2",
        "FARGATE"
      ]
    },
    "LinuxParameters": {
      "type": "structure",
      "members": {
        "capabilities": {
          "shape": "KernelCapabilities",
          "documentation": "<p>The Linux capabilities for the container that are added to or dropped from the default configuration provided by Docker.</p> <note> <p>For tasks that use the Fargate launch type, <code>capabilities</code> is supported for all platform versions but the <code>add</code> parameter is only supported if using platform version 1.4.0 or later.</p> </note>"
        },
        "devices": {
          "shape": "DevicesList",
          "documentation": "<p>Any host devices to expose to the container. This parameter maps to <code>Devices</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--device</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>If you are using tasks that use the Fargate launch type, the <code>devices</code> parameter is not supported.</p> </note>"
        },
        "initProcessEnabled": {
          "shape": "BoxedBoolean",
          "documentation": "<p>Run an <code>init</code> process inside the container that forwards signals and reaps processes. This parameter maps to the <code>--init</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>. This parameter requires version 1.25 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code> </p>"
        },
        "sharedMemorySize": {
          "shape": "BoxedInteger",
          "documentation": "<p>The value for the size (in MiB) of the <code>/dev/shm</code> volume. This parameter maps to the <code>--shm-size</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>If you are using tasks that use the Fargate launch type, the <code>sharedMemorySize</code> parameter is not supported.</p> </note>"
        },
        "tmpfs": {
          "shape": "TmpfsList",
          "documentation": "<p>The container path, mount options, and size (in MiB) of the tmpfs mount. This parameter maps to the <code>--tmpfs</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>If you are using tasks that use the Fargate launch type, the <code>tmpfs</code> parameter is not supported.</p> </note>"
        },
        "maxSwap": {
          "shape": "BoxedInteger",
          "documentation": "<p>The total amount of swap memory (in MiB) a container can use. This parameter will be translated to the <code>--memory-swap</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a> where the value would be the sum of the container memory plus the <code>maxSwap</code> value.</p> <p>If a <code>maxSwap</code> value of <code>0</code> is specified, the container will not use swap. Accepted values are <code>0</code> or any positive integer. If the <code>maxSwap</code> parameter is omitted, the container will use the swap configuration for the container instance it is running on. A <code>maxSwap</code> value must be set for the <code>swappiness</code> parameter to be used.</p> <note> <p>If you are using tasks that use the Fargate launch type, the <code>maxSwap</code> parameter is not supported.</p> </note>"
        },
        "swappiness": {
          "shape": "BoxedInteger",
          "documentation": "<p>This allows you to tune a container's memory swappiness behavior. A <code>swappiness</code> value of <code>0</code> will cause swapping to not happen unless absolutely necessary. A <code>swappiness</code> value of <code>100</code> will cause pages to be swapped very aggressively. Accepted values are whole numbers between <code>0</code> and <code>100</code>. If the <code>swappiness</code> parameter is not specified, a default value of <code>60</code> is used. If a value is not specified for <code>maxSwap</code> then this parameter is ignored. This parameter maps to the <code>--memory-swappiness</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <note> <p>If you are using tasks that use the Fargate launch type, the <code>swappiness</code> parameter is not supported.</p> </note>"
        }
      },
      "documentation": "<p>Linux-specific options that are applied to the container, such as Linux <a>KernelCapabilities</a>.</p>"
    },
    "ListAccountSettingsRequest": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SettingName",
          "documentation": "<p>The name of the account setting you want to list the settings for.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The value of the account settings with which to filter results. You must also specify an account setting name to use this parameter.</p>"
        },
        "principalArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the principal, which can be an IAM user, IAM role, or the root user. If this field is omitted, the account settings are listed only for the authenticated user.</p>"
        },
        "effectiveSettings": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether to return the effective settings. If <code>true</code>, the account settings for the root user or the default setting for the <code>principalArn</code> are returned. If <code>false</code>, the account settings for the <code>principalArn</code> are returned if they are set. Otherwise, no account settings are returned.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a <code>ListAccountSettings</code> request indicating that more results are available to fulfill the request and further calls will be needed. If <code>maxResults</code> was provided, it is possible the number of results to be fewer than <code>maxResults</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>The maximum number of account setting results returned by <code>ListAccountSettings</code> in paginated output. When this parameter is used, <code>ListAccountSettings</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListAccountSettings</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 10. If this parameter is not used, then <code>ListAccountSettings</code> returns up to 10 results and a <code>nextToken</code> value if applicable.</p>"
        }
      }
    },
    "ListAccountSettingsResponse": {
      "type": "structure",
      "members": {
        "settings": {
          "shape": "Settings",
          "documentation": "<p>The account settings for the resource.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListAccountSettings</code> request. When the results of a <code>ListAccountSettings</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListAttributesRequest": {
      "type": "structure",
      "required": [
        "targetType"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster to list attributes. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "targetType": {
          "shape": "TargetType",
          "documentation": "<p>The type of the target with which to list attributes.</p>"
        },
        "attributeName": {
          "shape": "String",
          "documentation": "<p>The name of the attribute with which to filter the results. </p>"
        },
        "attributeValue": {
          "shape": "String",
          "documentation": "<p>The value of the attribute with which to filter results. You must also specify an attribute name to use this parameter.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a <code>ListAttributes</code> request indicating that more results are available to fulfill the request and further calls will be needed. If <code>maxResults</code> was provided, it is possible the number of results to be fewer than <code>maxResults</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>The maximum number of cluster results returned by <code>ListAttributes</code> in paginated output. When this parameter is used, <code>ListAttributes</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListAttributes</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListAttributes</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>"
        }
      }
    },
    "ListAttributesResponse": {
      "type": "structure",
      "members": {
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>A list of attribute objects that meet the criteria of the request.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListAttributes</code> request. When the results of a <code>ListAttributes</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListClustersRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a <code>ListClusters</code> request indicating that more results are available to fulfill the request and further calls will be needed. If <code>maxResults</code> was provided, it is possible the number of results to be fewer than <code>maxResults</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>The maximum number of cluster results returned by <code>ListClusters</code> in paginated output. When this parameter is used, <code>ListClusters</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListClusters</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListClusters</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>"
        }
      }
    },
    "ListClustersResponse": {
      "type": "structure",
      "members": {
        "clusterArns": {
          "shape": "StringList",
          "documentation": "<p>The list of full Amazon Resource Name (ARN) entries for each cluster associated with your account.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListClusters</code> request. When the results of a <code>ListClusters</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListContainerInstancesRequest": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to list. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "filter": {
          "shape": "String",
          "documentation": "<p>You can filter the results of a <code>ListContainerInstances</code> operation with cluster query language statements. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html\">Cluster Query Language</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a <code>ListContainerInstances</code> request indicating that more results are available to fulfill the request and further calls will be needed. If <code>maxResults</code> was provided, it is possible the number of results to be fewer than <code>maxResults</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>The maximum number of container instance results returned by <code>ListContainerInstances</code> in paginated output. When this parameter is used, <code>ListContainerInstances</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListContainerInstances</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListContainerInstances</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>"
        },
        "status": {
          "shape": "ContainerInstanceStatus",
          "documentation": "<p>Filters the container instances by status. For example, if you specify the <code>DRAINING</code> status, the results include only container instances that have been set to <code>DRAINING</code> using <a>UpdateContainerInstancesState</a>. If you do not specify this parameter, the default is to include container instances set to all states other than <code>INACTIVE</code>.</p>"
        }
      }
    },
    "ListContainerInstancesResponse": {
      "type": "structure",
      "members": {
        "containerInstanceArns": {
          "shape": "StringList",
          "documentation": "<p>The list of container instances with full ARN entries for each container instance associated with the specified cluster.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListContainerInstances</code> request. When the results of a <code>ListContainerInstances</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListServicesRequest": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the services to list. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a <code>ListServices</code> request indicating that more results are available to fulfill the request and further calls will be needed. If <code>maxResults</code> was provided, it is possible the number of results to be fewer than <code>maxResults</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>The maximum number of service results returned by <code>ListServices</code> in paginated output. When this parameter is used, <code>ListServices</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListServices</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListServices</code> returns up to 10 results and a <code>nextToken</code> value if applicable.</p>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type for the services to list.</p>"
        },
        "schedulingStrategy": {
          "shape": "SchedulingStrategy",
          "documentation": "<p>The scheduling strategy for services to list.</p>"
        }
      }
    },
    "ListServicesResponse": {
      "type": "structure",
      "members": {
        "serviceArns": {
          "shape": "StringList",
          "documentation": "<p>The list of full ARN entries for each service associated with the specified cluster.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListServices</code> request. When the results of a <code>ListServices</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
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
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are Amazon ECS tasks, services, task definitions, clusters, and container instances.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags for the resource.</p>"
        }
      }
    },
    "ListTaskDefinitionFamiliesRequest": {
      "type": "structure",
      "members": {
        "familyPrefix": {
          "shape": "String",
          "documentation": "<p>The <code>familyPrefix</code> is a string that is used to filter the results of <code>ListTaskDefinitionFamilies</code>. If you specify a <code>familyPrefix</code>, only task definition family names that begin with the <code>familyPrefix</code> string are returned.</p>"
        },
        "status": {
          "shape": "TaskDefinitionFamilyStatus",
          "documentation": "<p>The task definition family status with which to filter the <code>ListTaskDefinitionFamilies</code> results. By default, both <code>ACTIVE</code> and <code>INACTIVE</code> task definition families are listed. If this parameter is set to <code>ACTIVE</code>, only task definition families that have an <code>ACTIVE</code> task definition revision are returned. If this parameter is set to <code>INACTIVE</code>, only task definition families that do not have any <code>ACTIVE</code> task definition revisions are returned. If you paginate the resulting output, be sure to keep the <code>status</code> value constant in each subsequent request.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a <code>ListTaskDefinitionFamilies</code> request indicating that more results are available to fulfill the request and further calls will be needed. If <code>maxResults</code> was provided, it is possible the number of results to be fewer than <code>maxResults</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>The maximum number of task definition family results returned by <code>ListTaskDefinitionFamilies</code> in paginated output. When this parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTaskDefinitionFamilies</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTaskDefinitionFamilies</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>"
        }
      }
    },
    "ListTaskDefinitionFamiliesResponse": {
      "type": "structure",
      "members": {
        "families": {
          "shape": "StringList",
          "documentation": "<p>The list of task definition family names that match the <code>ListTaskDefinitionFamilies</code> request.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListTaskDefinitionFamilies</code> request. When the results of a <code>ListTaskDefinitionFamilies</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListTaskDefinitionsRequest": {
      "type": "structure",
      "members": {
        "familyPrefix": {
          "shape": "String",
          "documentation": "<p>The full family name with which to filter the <code>ListTaskDefinitions</code> results. Specifying a <code>familyPrefix</code> limits the listed task definitions to task definition revisions that belong to that family.</p>"
        },
        "status": {
          "shape": "TaskDefinitionStatus",
          "documentation": "<p>The task definition status with which to filter the <code>ListTaskDefinitions</code> results. By default, only <code>ACTIVE</code> task definitions are listed. By setting this parameter to <code>INACTIVE</code>, you can view task definitions that are <code>INACTIVE</code> as long as an active task or service still references them. If you paginate the resulting output, be sure to keep the <code>status</code> value constant in each subsequent request.</p>"
        },
        "sort": {
          "shape": "SortOrder",
          "documentation": "<p>The order in which to sort the results. Valid values are <code>ASC</code> and <code>DESC</code>. By default (<code>ASC</code>), task definitions are listed lexicographically by family name and in ascending numerical order by revision so that the newest task definitions in a family are listed last. Setting this parameter to <code>DESC</code> reverses the sort order on family name and revision so that the newest task definitions in a family are listed first.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a <code>ListTaskDefinitions</code> request indicating that more results are available to fulfill the request and further calls will be needed. If <code>maxResults</code> was provided, it is possible the number of results to be fewer than <code>maxResults</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>The maximum number of task definition results returned by <code>ListTaskDefinitions</code> in paginated output. When this parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTaskDefinitions</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTaskDefinitions</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>"
        }
      }
    },
    "ListTaskDefinitionsResponse": {
      "type": "structure",
      "members": {
        "taskDefinitionArns": {
          "shape": "StringList",
          "documentation": "<p>The list of task definition Amazon Resource Name (ARN) entries for the <code>ListTaskDefinitions</code> request.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListTaskDefinitions</code> request. When the results of a <code>ListTaskDefinitions</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListTasksRequest": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the tasks to list. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "containerInstance": {
          "shape": "String",
          "documentation": "<p>The container instance ID or full ARN of the container instance with which to filter the <code>ListTasks</code> results. Specifying a <code>containerInstance</code> limits the results to tasks that belong to that container instance.</p>"
        },
        "family": {
          "shape": "String",
          "documentation": "<p>The name of the family with which to filter the <code>ListTasks</code> results. Specifying a <code>family</code> limits the results to tasks that belong to that family.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value returned from a <code>ListTasks</code> request indicating that more results are available to fulfill the request and further calls will be needed. If <code>maxResults</code> was provided, it is possible the number of results to be fewer than <code>maxResults</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "BoxedInteger",
          "documentation": "<p>The maximum number of task results returned by <code>ListTasks</code> in paginated output. When this parameter is used, <code>ListTasks</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListTasks</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListTasks</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>"
        },
        "startedBy": {
          "shape": "String",
          "documentation": "<p>The <code>startedBy</code> value with which to filter the task results. Specifying a <code>startedBy</code> value limits the results to tasks that were started with that value.</p>"
        },
        "serviceName": {
          "shape": "String",
          "documentation": "<p>The name of the service with which to filter the <code>ListTasks</code> results. Specifying a <code>serviceName</code> limits the results to tasks that belong to that service.</p>"
        },
        "desiredStatus": {
          "shape": "DesiredStatus",
          "documentation": "<p>The task desired status with which to filter the <code>ListTasks</code> results. Specifying a <code>desiredStatus</code> of <code>STOPPED</code> limits the results to tasks that Amazon ECS has set the desired status to <code>STOPPED</code>. This can be useful for debugging tasks that are not starting properly or have died or finished. The default status filter is <code>RUNNING</code>, which shows tasks that Amazon ECS has set the desired status to <code>RUNNING</code>.</p> <note> <p>Although you can filter results based on a desired status of <code>PENDING</code>, this does not return any results. Amazon ECS never sets the desired status of a task to that value (only a task's <code>lastStatus</code> may have a value of <code>PENDING</code>).</p> </note>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type for services to list.</p>"
        }
      }
    },
    "ListTasksResponse": {
      "type": "structure",
      "members": {
        "taskArns": {
          "shape": "StringList",
          "documentation": "<p>The list of task ARN entries for the <code>ListTasks</code> request.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListTasks</code> request. When the results of a <code>ListTasks</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "LoadBalancer": {
      "type": "structure",
      "members": {
        "targetGroupArn": {
          "shape": "String",
          "documentation": "<p>The full Amazon Resource Name (ARN) of the Elastic Load Balancing target group or groups associated with a service or task set.</p> <p>A target group ARN is only specified when using an Application Load Balancer or Network Load Balancer. If you are using a Classic Load Balancer the target group ARN should be omitted.</p> <p>For services using the <code>ECS</code> deployment controller, you can specify one or multiple target groups. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html\">Registering Multiple Target Groups with a Service</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>For services using the <code>CODE_DEPLOY</code> deployment controller, you are required to define two target groups for the load balancer. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-bluegreen.html\">Blue/Green Deployment with CodeDeploy</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <important> <p>If your service's task definition uses the <code>awsvpc</code> network mode (which is required for the Fargate launch type), you must choose <code>ip</code> as the target type, not <code>instance</code>, when creating your target groups because tasks that use the <code>awsvpc</code> network mode are associated with an elastic network interface, not an Amazon EC2 instance.</p> </important>"
        },
        "loadBalancerName": {
          "shape": "String",
          "documentation": "<p>The name of the load balancer to associate with the Amazon ECS service or task set.</p> <p>A load balancer name is only specified when using a Classic Load Balancer. If you are using an Application Load Balancer or a Network Load Balancer the load balancer name parameter should be omitted.</p>"
        },
        "containerName": {
          "shape": "String",
          "documentation": "<p>The name of the container (as it appears in a container definition) to associate with the load balancer.</p>"
        },
        "containerPort": {
          "shape": "BoxedInteger",
          "documentation": "<p>The port on the container to associate with the load balancer. This port must correspond to a <code>containerPort</code> in the task definition the tasks in the service are using. For tasks that use the EC2 launch type, the container instance they are launched on must allow ingress traffic on the <code>hostPort</code> of the port mapping.</p>"
        }
      },
      "documentation": "<p>The load balancer configuration to use with a service or task set.</p> <p>For specific notes and restrictions regarding the use of load balancers with services and task sets, see the CreateService and CreateTaskSet actions.</p>"
    },
    "LoadBalancers": {
      "type": "list",
      "member": {
        "shape": "LoadBalancer"
      }
    },
    "LogConfiguration": {
      "type": "structure",
      "required": [
        "logDriver"
      ],
      "members": {
        "logDriver": {
          "shape": "LogDriver",
          "documentation": "<p>The log driver to use for the container. The valid values listed earlier are log drivers that the Amazon ECS container agent can communicate with by default.</p> <p>For tasks using the Fargate launch type, the supported log drivers are <code>awslogs</code>, <code>splunk</code>, and <code>awsfirelens</code>.</p> <p>For tasks using the EC2 launch type, the supported log drivers are <code>awslogs</code>, <code>fluentd</code>, <code>gelf</code>, <code>json-file</code>, <code>journald</code>, <code>logentries</code>,<code>syslog</code>, <code>splunk</code>, and <code>awsfirelens</code>.</p> <p>For more information about using the <code>awslogs</code> log driver, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_awslogs.html\">Using the awslogs Log Driver</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>For more information about using the <code>awsfirelens</code> log driver, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html\">Custom Log Routing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <note> <p>If you have a custom driver that is not listed, you can fork the Amazon ECS container agent project that is <a href=\"https://github.com/aws/amazon-ecs-agent\">available on GitHub</a> and customize it to work with that driver. We encourage you to submit pull requests for changes that you would like to have included. However, we do not currently provide support for running modified copies of this software.</p> </note>"
        },
        "options": {
          "shape": "LogConfigurationOptionsMap",
          "documentation": "<p>The configuration options to send to the log driver. This parameter requires version 1.19 of the Docker Remote API or greater on your container instance. To check the Docker Remote API version on your container instance, log in to your container instance and run the following command: <code>sudo docker version --format '{{.Server.APIVersion}}'</code> </p>"
        },
        "secretOptions": {
          "shape": "SecretList",
          "documentation": "<p>The secrets to pass to the log configuration. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html\">Specifying Sensitive Data</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The log configuration specification for the container.</p> <p>This parameter maps to <code>LogConfig</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--log-driver</code> option to <a href=\"https://docs.docker.com/engine/reference/commandline/run/\"> <code>docker run</code> </a>. By default, containers use the same logging driver that the Docker daemon uses; however the container may use a different logging driver than the Docker daemon by specifying a log driver with this parameter in the container definition. To use a different logging driver for a container, the log system must be configured properly on the container instance (or on a different log server for remote logging options). For more information on the options for different supported log drivers, see <a href=\"https://docs.docker.com/engine/admin/logging/overview/\">Configure logging drivers</a> in the Docker documentation.</p> <p>The following should be noted when specifying a log configuration for your containers:</p> <ul> <li> <p>Amazon ECS currently supports a subset of the logging drivers available to the Docker daemon (shown in the valid values below). Additional log drivers may be available in future releases of the Amazon ECS container agent.</p> </li> <li> <p>This parameter requires version 1.18 of the Docker Remote API or greater on your container instance.</p> </li> <li> <p>For tasks using the EC2 launch type, the Amazon ECS container agent running on a container instance must register the logging drivers available on that instance with the <code>ECS_AVAILABLE_LOGGING_DRIVERS</code> environment variable before containers placed on that instance can use these log configuration options. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html\">Amazon ECS Container Agent Configuration</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> </li> <li> <p>For tasks using the Fargate launch type, because you do not have access to the underlying infrastructure your tasks are hosted on, any additional software needed will have to be installed outside of the task. For example, the Fluentd output aggregators or a remote host running Logstash to send Gelf logs to.</p> </li> </ul>"
    },
    "LogConfigurationOptionsMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "LogDriver": {
      "type": "string",
      "enum": [
        "json-file",
        "syslog",
        "journald",
        "gelf",
        "fluentd",
        "awslogs",
        "splunk",
        "awsfirelens"
      ]
    },
    "Long": {
      "type": "long"
    },
    "ManagedScaling": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "ManagedScalingStatus",
          "documentation": "<p>Whether or not to enable managed scaling for the capacity provider.</p>"
        },
        "targetCapacity": {
          "shape": "ManagedScalingTargetCapacity",
          "documentation": "<p>The target capacity value for the capacity provider. The specified value must be greater than <code>0</code> and less than or equal to <code>100</code>. A value of <code>100</code> will result in the Amazon EC2 instances in your Auto Scaling group being completely utilized.</p>"
        },
        "minimumScalingStepSize": {
          "shape": "ManagedScalingStepSize",
          "documentation": "<p>The minimum number of container instances that Amazon ECS will scale in or scale out at one time. If this parameter is omitted, the default value of <code>1</code> is used.</p>"
        },
        "maximumScalingStepSize": {
          "shape": "ManagedScalingStepSize",
          "documentation": "<p>The maximum number of container instances that Amazon ECS will scale in or scale out at one time. If this parameter is omitted, the default value of <code>10000</code> is used.</p>"
        }
      },
      "documentation": "<p>The managed scaling settings for the Auto Scaling group capacity provider.</p> <p>When managed scaling is enabled, Amazon ECS manages the scale-in and scale-out actions of the Auto Scaling group. Amazon ECS manages a target tracking scaling policy using an Amazon ECS-managed CloudWatch metric with the specified <code>targetCapacity</code> value as the target value for the metric. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/asg-capacity-providers.html#asg-capacity-providers-managed-scaling\">Using Managed Scaling</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>If managed scaling is disabled, the user must manage the scaling of the Auto Scaling group.</p>"
    },
    "ManagedScalingStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "ManagedScalingStepSize": {
      "type": "integer",
      "max": 10000,
      "min": 1
    },
    "ManagedScalingTargetCapacity": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "ManagedTerminationProtection": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "MountPoint": {
      "type": "structure",
      "members": {
        "sourceVolume": {
          "shape": "String",
          "documentation": "<p>The name of the volume to mount. Must be a volume name referenced in the <code>name</code> parameter of task definition <code>volume</code>.</p>"
        },
        "containerPath": {
          "shape": "String",
          "documentation": "<p>The path on the container to mount the host volume at.</p>"
        },
        "readOnly": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If this value is <code>true</code>, the container has read-only access to the volume. If this value is <code>false</code>, then the container can write to the volume. The default value is <code>false</code>.</p>"
        }
      },
      "documentation": "<p>Details on a volume mount point that is used in a container definition.</p>"
    },
    "MountPointList": {
      "type": "list",
      "member": {
        "shape": "MountPoint"
      }
    },
    "NetworkBinding": {
      "type": "structure",
      "members": {
        "bindIP": {
          "shape": "String",
          "documentation": "<p>The IP address that the container is bound to on the container instance.</p>"
        },
        "containerPort": {
          "shape": "BoxedInteger",
          "documentation": "<p>The port number on the container that is used with the network binding.</p>"
        },
        "hostPort": {
          "shape": "BoxedInteger",
          "documentation": "<p>The port number on the host that is used with the network binding.</p>"
        },
        "protocol": {
          "shape": "TransportProtocol",
          "documentation": "<p>The protocol used for the network binding.</p>"
        }
      },
      "documentation": "<p>Details on the network bindings between a container and its host container instance. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>"
    },
    "NetworkBindings": {
      "type": "list",
      "member": {
        "shape": "NetworkBinding"
      }
    },
    "NetworkConfiguration": {
      "type": "structure",
      "members": {
        "awsvpcConfiguration": {
          "shape": "AwsVpcConfiguration",
          "documentation": "<p>The VPC subnets and security groups associated with a task.</p> <note> <p>All specified subnets and security groups must be from the same VPC.</p> </note>"
        }
      },
      "documentation": "<p>An object representing the network configuration for a task or service.</p>"
    },
    "NetworkInterface": {
      "type": "structure",
      "members": {
        "attachmentId": {
          "shape": "String",
          "documentation": "<p>The attachment ID for the network interface.</p>"
        },
        "privateIpv4Address": {
          "shape": "String",
          "documentation": "<p>The private IPv4 address for the network interface.</p>"
        },
        "ipv6Address": {
          "shape": "String",
          "documentation": "<p>The private IPv6 address for the network interface.</p>"
        }
      },
      "documentation": "<p>An object representing the elastic network interface for tasks that use the <code>awsvpc</code> network mode.</p>"
    },
    "NetworkInterfaces": {
      "type": "list",
      "member": {
        "shape": "NetworkInterface"
      }
    },
    "NetworkMode": {
      "type": "string",
      "enum": [
        "bridge",
        "host",
        "awsvpc",
        "none"
      ]
    },
    "PidMode": {
      "type": "string",
      "enum": [
        "host",
        "task"
      ]
    },
    "PlacementConstraint": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "PlacementConstraintType",
          "documentation": "<p>The type of constraint. Use <code>distinctInstance</code> to ensure that each task in a particular group is running on a different container instance. Use <code>memberOf</code> to restrict the selection to a group of valid candidates.</p>"
        },
        "expression": {
          "shape": "String",
          "documentation": "<p>A cluster query language expression to apply to the constraint. You cannot specify an expression if the constraint type is <code>distinctInstance</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html\">Cluster Query Language</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>An object representing a constraint on task placement. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html\">Task Placement Constraints</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <note> <p>If you are using the Fargate launch type, task placement constraints are not supported.</p> </note>"
    },
    "PlacementConstraintType": {
      "type": "string",
      "enum": [
        "distinctInstance",
        "memberOf"
      ]
    },
    "PlacementConstraints": {
      "type": "list",
      "member": {
        "shape": "PlacementConstraint"
      }
    },
    "PlacementStrategies": {
      "type": "list",
      "member": {
        "shape": "PlacementStrategy"
      }
    },
    "PlacementStrategy": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "PlacementStrategyType",
          "documentation": "<p>The type of placement strategy. The <code>random</code> placement strategy randomly places tasks on available candidates. The <code>spread</code> placement strategy spreads placement across available candidates evenly based on the <code>field</code> parameter. The <code>binpack</code> strategy places tasks on available candidates that have the least available amount of the resource that is specified with the <code>field</code> parameter. For example, if you binpack on memory, a task is placed on the instance with the least amount of remaining memory (but still enough to run the task).</p>"
        },
        "field": {
          "shape": "String",
          "documentation": "<p>The field to apply the placement strategy against. For the <code>spread</code> placement strategy, valid values are <code>instanceId</code> (or <code>host</code>, which has the same effect), or any platform or custom attribute that is applied to a container instance, such as <code>attribute:ecs.availability-zone</code>. For the <code>binpack</code> placement strategy, valid values are <code>cpu</code> and <code>memory</code>. For the <code>random</code> placement strategy, this field is not used.</p>"
        }
      },
      "documentation": "<p>The task placement strategy for a task or service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html\">Task Placement Strategies</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "PlacementStrategyType": {
      "type": "string",
      "enum": [
        "random",
        "spread",
        "binpack"
      ]
    },
    "PlatformDevice": {
      "type": "structure",
      "required": [
        "id",
        "type"
      ],
      "members": {
        "id": {
          "shape": "String",
          "documentation": "<p>The ID for the GPU(s) on the container instance. The available GPU IDs can also be obtained on the container instance in the <code>/var/lib/ecs/gpu/nvidia_gpu_info.json</code> file.</p>"
        },
        "type": {
          "shape": "PlatformDeviceType",
          "documentation": "<p>The type of device that is available on the container instance. The only supported value is <code>GPU</code>.</p>"
        }
      },
      "documentation": "<p>The devices that are available on the container instance. The only supported device type is a GPU.</p>"
    },
    "PlatformDeviceType": {
      "type": "string",
      "enum": [
        "GPU"
      ]
    },
    "PlatformDevices": {
      "type": "list",
      "member": {
        "shape": "PlatformDevice"
      }
    },
    "PortMapping": {
      "type": "structure",
      "members": {
        "containerPort": {
          "shape": "BoxedInteger",
          "documentation": "<p>The port number on the container that is bound to the user-specified or automatically assigned host port.</p> <p>If you are using containers in a task with the <code>awsvpc</code> or <code>host</code> network mode, exposed ports should be specified using <code>containerPort</code>.</p> <p>If you are using containers in a task with the <code>bridge</code> network mode and you specify a container port and not a host port, your container automatically receives a host port in the ephemeral port range. For more information, see <code>hostPort</code>. Port mappings that are automatically assigned in this way do not count toward the 100 reserved ports limit of a container instance.</p> <important> <p>You cannot expose the same container port for multiple protocols. An error will be returned if this is attempted.</p> </important>"
        },
        "hostPort": {
          "shape": "BoxedInteger",
          "documentation": "<p>The port number on the container instance to reserve for your container.</p> <p>If you are using containers in a task with the <code>awsvpc</code> or <code>host</code> network mode, the <code>hostPort</code> can either be left blank or set to the same value as the <code>containerPort</code>.</p> <p>If you are using containers in a task with the <code>bridge</code> network mode, you can specify a non-reserved host port for your container port mapping, or you can omit the <code>hostPort</code> (or set it to <code>0</code>) while specifying a <code>containerPort</code> and your container automatically receives a port in the ephemeral port range for your container instance operating system and Docker version.</p> <p>The default ephemeral port range for Docker version 1.6.0 and later is listed on the instance under <code>/proc/sys/net/ipv4/ip_local_port_range</code>. If this kernel parameter is unavailable, the default ephemeral port range from 49153 through 65535 is used. Do not attempt to specify a host port in the ephemeral port range as these are reserved for automatic assignment. In general, ports below 32768 are outside of the ephemeral port range.</p> <note> <p>The default ephemeral port range from 49153 through 65535 is always used for Docker versions before 1.6.0.</p> </note> <p>The default reserved ports are 22 for SSH, the Docker ports 2375 and 2376, and the Amazon ECS container agent ports 51678-51680. Any host port that was previously specified in a running task is also reserved while the task is running (after a task stops, the host port is released). The current reserved ports are displayed in the <code>remainingResources</code> of <a>DescribeContainerInstances</a> output. A container instance can have up to 100 reserved ports at a time, including the default reserved ports. Automatically assigned ports don't count toward the 100 reserved ports limit.</p>"
        },
        "protocol": {
          "shape": "TransportProtocol",
          "documentation": "<p>The protocol used for the port mapping. Valid values are <code>tcp</code> and <code>udp</code>. The default is <code>tcp</code>.</p>"
        }
      },
      "documentation": "<p>Port mappings allow containers to access ports on the host container instance to send or receive traffic. Port mappings are specified as part of the container definition.</p> <p>If you are using containers in a task with the <code>awsvpc</code> or <code>host</code> network mode, exposed ports should be specified using <code>containerPort</code>. The <code>hostPort</code> can be left blank or it must be the same value as the <code>containerPort</code>.</p> <p>After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>"
    },
    "PortMappingList": {
      "type": "list",
      "member": {
        "shape": "PortMapping"
      }
    },
    "PropagateTags": {
      "type": "string",
      "enum": [
        "TASK_DEFINITION",
        "SERVICE"
      ]
    },
    "ProxyConfiguration": {
      "type": "structure",
      "required": [
        "containerName"
      ],
      "members": {
        "type": {
          "shape": "ProxyConfigurationType",
          "documentation": "<p>The proxy type. The only supported value is <code>APPMESH</code>.</p>"
        },
        "containerName": {
          "shape": "String",
          "documentation": "<p>The name of the container that will serve as the App Mesh proxy.</p>"
        },
        "properties": {
          "shape": "ProxyConfigurationProperties",
          "documentation": "<p>The set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified as key-value pairs.</p> <ul> <li> <p> <code>IgnoredUID</code> - (Required) The user ID (UID) of the proxy container as defined by the <code>user</code> parameter in a container definition. This is used to ensure the proxy ignores its own traffic. If <code>IgnoredGID</code> is specified, this field can be empty.</p> </li> <li> <p> <code>IgnoredGID</code> - (Required) The group ID (GID) of the proxy container as defined by the <code>user</code> parameter in a container definition. This is used to ensure the proxy ignores its own traffic. If <code>IgnoredUID</code> is specified, this field can be empty.</p> </li> <li> <p> <code>AppPorts</code> - (Required) The list of ports that the application uses. Network traffic to these ports is forwarded to the <code>ProxyIngressPort</code> and <code>ProxyEgressPort</code>.</p> </li> <li> <p> <code>ProxyIngressPort</code> - (Required) Specifies the port that incoming traffic to the <code>AppPorts</code> is directed to.</p> </li> <li> <p> <code>ProxyEgressPort</code> - (Required) Specifies the port that outgoing traffic from the <code>AppPorts</code> is directed to.</p> </li> <li> <p> <code>EgressIgnoredPorts</code> - (Required) The egress traffic going to the specified ports is ignored and not redirected to the <code>ProxyEgressPort</code>. It can be an empty list.</p> </li> <li> <p> <code>EgressIgnoredIPs</code> - (Required) The egress traffic going to the specified IP addresses is ignored and not redirected to the <code>ProxyEgressPort</code>. It can be an empty list.</p> </li> </ul>"
        }
      },
      "documentation": "<p>The configuration details for the App Mesh proxy.</p> <p>For tasks using the EC2 launch type, the container instances require at least version 1.26.0 of the container agent and at least version 1.26.0-1 of the <code>ecs-init</code> package to enable a proxy configuration. If your container instances are launched from the Amazon ECS-optimized AMI version <code>20190301</code> or later, then they contain the required versions of the container agent and <code>ecs-init</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html\">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>For tasks using the Fargate launch type, the task or service requires platform version 1.3.0 or later.</p>"
    },
    "ProxyConfigurationProperties": {
      "type": "list",
      "member": {
        "shape": "KeyValuePair"
      }
    },
    "ProxyConfigurationType": {
      "type": "string",
      "enum": [
        "APPMESH"
      ]
    },
    "PutAccountSettingDefaultRequest": {
      "type": "structure",
      "required": [
        "name",
        "value"
      ],
      "members": {
        "name": {
          "shape": "SettingName",
          "documentation": "<p>The resource name for which to modify the account setting. If <code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is specified, the ARN and resource ID for your Amazon ECS container instances is affected. If <code>awsvpcTrunking</code> is specified, the ENI limit for your Amazon ECS container instances is affected. If <code>containerInsights</code> is specified, the default setting for CloudWatch Container Insights for your clusters is affected.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The account setting value for the specified principal ARN. Accepted values are <code>enabled</code> and <code>disabled</code>.</p>"
        }
      }
    },
    "PutAccountSettingDefaultResponse": {
      "type": "structure",
      "members": {
        "setting": {
          "shape": "Setting"
        }
      }
    },
    "PutAccountSettingRequest": {
      "type": "structure",
      "required": [
        "name",
        "value"
      ],
      "members": {
        "name": {
          "shape": "SettingName",
          "documentation": "<p>The Amazon ECS resource name for which to modify the account setting. If <code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is specified, the ARN and resource ID for your Amazon ECS container instances is affected. If <code>awsvpcTrunking</code> is specified, the elastic network interface (ENI) limit for your Amazon ECS container instances is affected. If <code>containerInsights</code> is specified, the default setting for CloudWatch Container Insights for your clusters is affected.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The account setting value for the specified principal ARN. Accepted values are <code>enabled</code> and <code>disabled</code>.</p>"
        },
        "principalArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the principal, which can be an IAM user, IAM role, or the root user. If you specify the root user, it modifies the account setting for all IAM users, IAM roles, and the root user of the account unless an IAM user or role explicitly overrides these settings. If this field is omitted, the setting is changed only for the authenticated user.</p>"
        }
      }
    },
    "PutAccountSettingResponse": {
      "type": "structure",
      "members": {
        "setting": {
          "shape": "Setting",
          "documentation": "<p>The current account setting for a resource.</p>"
        }
      }
    },
    "PutAttributesRequest": {
      "type": "structure",
      "required": [
        "attributes"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply attributes. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attributes to apply to your resource. You can specify up to 10 custom attributes per resource. You can specify up to 10 attributes in a single call.</p>"
        }
      }
    },
    "PutAttributesResponse": {
      "type": "structure",
      "members": {
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attributes applied to your resource.</p>"
        }
      }
    },
    "PutClusterCapacityProvidersRequest": {
      "type": "structure",
      "required": [
        "cluster",
        "capacityProviders",
        "defaultCapacityProviderStrategy"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster to modify the capacity provider settings for. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "capacityProviders": {
          "shape": "StringList",
          "documentation": "<p>The name of one or more capacity providers to associate with the cluster.</p> <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p> <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used.</p>"
        },
        "defaultCapacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy to use by default for the cluster.</p> <p>When creating a service or running a task on a cluster, if no capacity provider or launch type is specified then the default capacity provider strategy for the cluster is used.</p> <p>A capacity provider strategy consists of one or more capacity providers along with the <code>base</code> and <code>weight</code> to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The <a>PutClusterCapacityProviders</a> API is used to associate a capacity provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or <code>UPDATING</code> status can be used.</p> <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p> <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used.</p>"
        }
      }
    },
    "PutClusterCapacityProvidersResponse": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "Cluster"
        }
      }
    },
    "RegisterContainerInstanceRequest": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster with which to register your container instance. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "instanceIdentityDocument": {
          "shape": "String",
          "documentation": "<p>The instance identity document for the EC2 instance to register. This document can be found by running the following command from the instance: <code>curl http://169.254.169.254/latest/dynamic/instance-identity/document/</code> </p>"
        },
        "instanceIdentityDocumentSignature": {
          "shape": "String",
          "documentation": "<p>The instance identity document signature for the EC2 instance to register. This signature can be found by running the following command from the instance: <code>curl http://169.254.169.254/latest/dynamic/instance-identity/signature/</code> </p>"
        },
        "totalResources": {
          "shape": "Resources",
          "documentation": "<p>The resources available on the instance.</p>"
        },
        "versionInfo": {
          "shape": "VersionInfo",
          "documentation": "<p>The version information for the Amazon ECS container agent and Docker daemon running on the container instance.</p>"
        },
        "containerInstanceArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the container instance (if it was previously registered).</p>"
        },
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>The container instance attributes that this container instance supports.</p>"
        },
        "platformDevices": {
          "shape": "PlatformDevices",
          "documentation": "<p>The devices that are available on the container instance. The only supported device type is a GPU.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the container instance to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "RegisterContainerInstanceResponse": {
      "type": "structure",
      "members": {
        "containerInstance": {
          "shape": "ContainerInstance",
          "documentation": "<p>The container instance that was registered.</p>"
        }
      }
    },
    "RegisterTaskDefinitionRequest": {
      "type": "structure",
      "required": [
        "family",
        "containerDefinitions"
      ],
      "members": {
        "family": {
          "shape": "String",
          "documentation": "<p>You must specify a <code>family</code> for a task definition, which allows you to track multiple versions of the same task definition. The <code>family</code> is used as a name for your task definition. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed.</p>"
        },
        "taskRoleArn": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html\">IAM Roles for Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "executionRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent permission to make AWS API calls on your behalf. The task execution IAM role is required depending on the requirements of your task. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html\">Amazon ECS task execution IAM role</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "networkMode": {
          "shape": "NetworkMode",
          "documentation": "<p>The Docker networking mode to use for the containers in the task. The valid values are <code>none</code>, <code>bridge</code>, <code>awsvpc</code>, and <code>host</code>. The default Docker network mode is <code>bridge</code>. If you are using the Fargate launch type, the <code>awsvpc</code> network mode is required. If you are using the EC2 launch type, any network mode can be used. If the network mode is set to <code>none</code>, you cannot specify port mappings in your container definitions, and the tasks containers do not have external connectivity. The <code>host</code> and <code>awsvpc</code> network modes offer the highest networking performance for containers because they use the EC2 network stack instead of the virtualized network stack provided by the <code>bridge</code> mode.</p> <p>With the <code>host</code> and <code>awsvpc</code> network modes, exposed container ports are mapped directly to the corresponding host port (for the <code>host</code> network mode) or the attached elastic network interface port (for the <code>awsvpc</code> network mode), so you cannot take advantage of dynamic host port mappings. </p> <p>If the network mode is <code>awsvpc</code>, the task is allocated an elastic network interface, and you must specify a <a>NetworkConfiguration</a> value when you create a service or run a task with the task definition. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html\">Task Networking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <note> <p>Currently, only Amazon ECS-optimized AMIs, other Amazon Linux variants with the <code>ecs-init</code> package, or AWS Fargate infrastructure support the <code>awsvpc</code> network mode. </p> </note> <p>If the network mode is <code>host</code>, you cannot run multiple instantiations of the same task on a single container instance when port mappings are used.</p> <p>Docker for Windows uses different network modes than Docker for Linux. When you register a task definition with Windows containers, you must not specify a network mode. If you use the console to register a task definition with Windows containers, you must choose the <code>&lt;default&gt;</code> network mode object. </p> <p>For more information, see <a href=\"https://docs.docker.com/engine/reference/run/#network-settings\">Network settings</a> in the <i>Docker run reference</i>.</p>"
        },
        "containerDefinitions": {
          "shape": "ContainerDefinitions",
          "documentation": "<p>A list of container definitions in JSON format that describe the different containers that make up your task.</p>"
        },
        "volumes": {
          "shape": "VolumeList",
          "documentation": "<p>A list of volume definitions in JSON format that containers in your task may use.</p>"
        },
        "placementConstraints": {
          "shape": "TaskDefinitionPlacementConstraints",
          "documentation": "<p>An array of placement constraint objects to use for the task. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime).</p>"
        },
        "requiresCompatibilities": {
          "shape": "CompatibilityList",
          "documentation": "<p>The launch type required by the task. If no value is specified, it defaults to <code>EC2</code>.</p>"
        },
        "cpu": {
          "shape": "String",
          "documentation": "<p>The number of CPU units used by the task. It can be expressed as an integer using CPU units, for example <code>1024</code>, or as a string using vCPUs, for example <code>1 vCPU</code> or <code>1 vcpu</code>, in a task definition. String values are converted to an integer indicating the CPU units when the task definition is registered.</p> <note> <p>Task-level CPU and memory parameters are ignored for Windows containers. We recommend specifying container-level resources for Windows containers.</p> </note> <p>If you are using the EC2 launch type, this field is optional. Supported values are between <code>128</code> CPU units (<code>0.125</code> vCPUs) and <code>10240</code> CPU units (<code>10</code> vCPUs).</p> <p>If you are using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the <code>memory</code> parameter:</p> <ul> <li> <p>256 (.25 vCPU) - Available <code>memory</code> values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)</p> </li> <li> <p>512 (.5 vCPU) - Available <code>memory</code> values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)</p> </li> <li> <p>1024 (1 vCPU) - Available <code>memory</code> values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)</p> </li> <li> <p>2048 (2 vCPU) - Available <code>memory</code> values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)</p> </li> <li> <p>4096 (4 vCPU) - Available <code>memory</code> values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)</p> </li> </ul>"
        },
        "memory": {
          "shape": "String",
          "documentation": "<p>The amount of memory (in MiB) used by the task. It can be expressed as an integer using MiB, for example <code>1024</code>, or as a string using GB, for example <code>1GB</code> or <code>1 GB</code>, in a task definition. String values are converted to an integer indicating the MiB when the task definition is registered.</p> <note> <p>Task-level CPU and memory parameters are ignored for Windows containers. We recommend specifying container-level resources for Windows containers.</p> </note> <p>If using the EC2 launch type, this field is optional.</p> <p>If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the <code>cpu</code> parameter:</p> <ul> <li> <p>512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available <code>cpu</code> values: 256 (.25 vCPU)</p> </li> <li> <p>1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available <code>cpu</code> values: 512 (.5 vCPU)</p> </li> <li> <p>2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available <code>cpu</code> values: 1024 (1 vCPU)</p> </li> <li> <p>Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 2048 (2 vCPU)</p> </li> <li> <p>Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 4096 (4 vCPU)</p> </li> </ul>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the task definition to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        },
        "pidMode": {
          "shape": "PidMode",
          "documentation": "<p>The process namespace to use for the containers in the task. The valid values are <code>host</code> or <code>task</code>. If <code>host</code> is specified, then all containers within the tasks that specified the <code>host</code> PID mode on the same container instance share the same process namespace with the host Amazon EC2 instance. If <code>task</code> is specified, all containers within the specified task share the same process namespace. If no value is specified, the default is a private namespace. For more information, see <a href=\"https://docs.docker.com/engine/reference/run/#pid-settings---pid\">PID settings</a> in the <i>Docker run reference</i>.</p> <p>If the <code>host</code> PID mode is used, be aware that there is a heightened risk of undesired process namespace expose. For more information, see <a href=\"https://docs.docker.com/engine/security/security/\">Docker security</a>.</p> <note> <p>This parameter is not supported for Windows containers or tasks using the Fargate launch type.</p> </note>"
        },
        "ipcMode": {
          "shape": "IpcMode",
          "documentation": "<p>The IPC resource namespace to use for the containers in the task. The valid values are <code>host</code>, <code>task</code>, or <code>none</code>. If <code>host</code> is specified, then all containers within the tasks that specified the <code>host</code> IPC mode on the same container instance share the same IPC resources with the host Amazon EC2 instance. If <code>task</code> is specified, all containers within the specified task share the same IPC resources. If <code>none</code> is specified, then IPC resources within the containers of a task are private and not shared with other containers in a task or on the container instance. If no value is specified, then the IPC resource namespace sharing depends on the Docker daemon setting on the container instance. For more information, see <a href=\"https://docs.docker.com/engine/reference/run/#ipc-settings---ipc\">IPC settings</a> in the <i>Docker run reference</i>.</p> <p>If the <code>host</code> IPC mode is used, be aware that there is a heightened risk of undesired IPC namespace expose. For more information, see <a href=\"https://docs.docker.com/engine/security/security/\">Docker security</a>.</p> <p>If you are setting namespaced kernel parameters using <code>systemControls</code> for the containers in the task, the following will apply to your IPC resource namespace. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html\">System Controls</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <ul> <li> <p>For tasks that use the <code>host</code> IPC mode, IPC namespace related <code>systemControls</code> are not supported.</p> </li> <li> <p>For tasks that use the <code>task</code> IPC mode, IPC namespace related <code>systemControls</code> will apply to all containers within a task.</p> </li> </ul> <note> <p>This parameter is not supported for Windows containers or tasks using the Fargate launch type.</p> </note>"
        },
        "proxyConfiguration": {
          "shape": "ProxyConfiguration"
        },
        "inferenceAccelerators": {
          "shape": "InferenceAccelerators",
          "documentation": "<p>The Elastic Inference accelerators to use for the containers in the task.</p>"
        }
      }
    },
    "RegisterTaskDefinitionResponse": {
      "type": "structure",
      "members": {
        "taskDefinition": {
          "shape": "TaskDefinition",
          "documentation": "<p>The full description of the registered task definition.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The list of tags associated with the task definition.</p>"
        }
      }
    },
    "RepositoryCredentials": {
      "type": "structure",
      "required": [
        "credentialsParameter"
      ],
      "members": {
        "credentialsParameter": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the secret containing the private repository credentials.</p> <note> <p>When you are using the Amazon ECS API, AWS CLI, or AWS SDK, if the secret exists in the same Region as the task that you are launching then you can use either the full ARN or the name of the secret. When you are using the AWS Management Console, you must specify the full ARN of the secret.</p> </note>"
        }
      },
      "documentation": "<p>The repository credentials for private registry authentication.</p>"
    },
    "RequiresAttributes": {
      "type": "list",
      "member": {
        "shape": "Attribute"
      }
    },
    "Resource": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the resource, such as <code>CPU</code>, <code>MEMORY</code>, <code>PORTS</code>, <code>PORTS_UDP</code>, or a user-defined resource.</p>"
        },
        "type": {
          "shape": "String",
          "documentation": "<p>The type of the resource, such as <code>INTEGER</code>, <code>DOUBLE</code>, <code>LONG</code>, or <code>STRINGSET</code>.</p>"
        },
        "doubleValue": {
          "shape": "Double",
          "documentation": "<p>When the <code>doubleValue</code> type is set, the value of the resource must be a double precision floating-point type.</p>"
        },
        "longValue": {
          "shape": "Long",
          "documentation": "<p>When the <code>longValue</code> type is set, the value of the resource must be an extended precision floating-point type.</p>"
        },
        "integerValue": {
          "shape": "Integer",
          "documentation": "<p>When the <code>integerValue</code> type is set, the value of the resource must be an integer.</p>"
        },
        "stringSetValue": {
          "shape": "StringList",
          "documentation": "<p>When the <code>stringSetValue</code> type is set, the value of the resource must be a string type.</p>"
        }
      },
      "documentation": "<p>Describes the resources available for a container instance.</p>"
    },
    "ResourceRequirement": {
      "type": "structure",
      "required": [
        "value",
        "type"
      ],
      "members": {
        "value": {
          "shape": "String",
          "documentation": "<p>The value for the specified resource type.</p> <p>If the <code>GPU</code> type is used, the value is the number of physical <code>GPUs</code> the Amazon ECS container agent will reserve for the container. The number of GPUs reserved for all containers in a task should not exceed the number of available GPUs on the container instance the task is launched on.</p> <p>If the <code>InferenceAccelerator</code> type is used, the <code>value</code> should match the <code>deviceName</code> for an <a>InferenceAccelerator</a> specified in a task definition.</p>"
        },
        "type": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource to assign to a container. The supported values are <code>GPU</code> or <code>InferenceAccelerator</code>.</p>"
        }
      },
      "documentation": "<p>The type and amount of a resource to assign to a container. The supported resource types are GPUs and Elastic Inference accelerators. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html\">Working with GPUs on Amazon ECS</a> or <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html\">Working with Amazon Elastic Inference on Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i> </p>"
    },
    "ResourceRequirements": {
      "type": "list",
      "member": {
        "shape": "ResourceRequirement"
      }
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "GPU",
        "InferenceAccelerator"
      ]
    },
    "Resources": {
      "type": "list",
      "member": {
        "shape": "Resource"
      }
    },
    "RunTaskRequest": {
      "type": "structure",
      "required": [
        "taskDefinition"
      ],
      "members": {
        "capacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy to use for the task.</p> <p>A capacity provider strategy consists of one or more capacity providers along with the <code>base</code> and <code>weight</code> to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The <a>PutClusterCapacityProviders</a> API is used to associate a capacity provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or <code>UPDATING</code> status can be used.</p> <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code> parameter must be omitted. If no <code>capacityProviderStrategy</code> or <code>launchType</code> is specified, the <code>defaultCapacityProviderStrategy</code> for the cluster is used.</p> <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p> <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used.</p> <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the list of available capacity providers for a cluster after the cluster is created.</p>"
        },
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster on which to run your task. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "count": {
          "shape": "BoxedInteger",
          "documentation": "<p>The number of instantiations of the specified task to place on your cluster. You can specify up to 10 tasks per call.</p>"
        },
        "enableECSManagedTags": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether to enable Amazon ECS managed tags for the task. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html\">Tagging Your Amazon ECS Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "group": {
          "shape": "String",
          "documentation": "<p>The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).</p>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type on which to run your task. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>If a <code>launchType</code> is specified, the <code>capacityProviderStrategy</code> parameter must be omitted.</p>"
        },
        "networkConfiguration": {
          "shape": "NetworkConfiguration",
          "documentation": "<p>The network configuration for the task. This parameter is required for task definitions that use the <code>awsvpc</code> network mode to receive their own elastic network interface, and it is not supported for other network modes. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html\">Task Networking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "overrides": {
          "shape": "TaskOverride",
          "documentation": "<p>A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p> <note> <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.</p> </note>"
        },
        "placementConstraints": {
          "shape": "PlacementConstraints",
          "documentation": "<p>An array of placement constraint objects to use for the task. You can specify up to 10 constraints per task (including constraints in the task definition and those specified at runtime).</p>"
        },
        "placementStrategy": {
          "shape": "PlacementStrategies",
          "documentation": "<p>The placement strategy objects to use for the task. You can specify a maximum of five strategy rules per task.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version the task should run. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the <code>LATEST</code> platform version is used by default. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "propagateTags": {
          "shape": "PropagateTags",
          "documentation": "<p>Specifies whether to propagate the tags from the task definition to the task. If no value is specified, the tags are not propagated. Tags can only be propagated to the task during task creation. To add tags to a task after task creation, use the <a>TagResource</a> API action.</p> <note> <p>An error will be received if you specify the <code>SERVICE</code> option when running a task.</p> </note>"
        },
        "referenceId": {
          "shape": "String",
          "documentation": "<p>The reference ID to use for the task.</p>"
        },
        "startedBy": {
          "shape": "String",
          "documentation": "<p>An optional tag specified when a task is started. For example, if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the <code>startedBy</code> parameter. You can then identify which tasks belong to that job by filtering the results of a <a>ListTasks</a> call with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the task to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        },
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full ARN of the task definition to run. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>"
        }
      }
    },
    "RunTaskResponse": {
      "type": "structure",
      "members": {
        "tasks": {
          "shape": "Tasks",
          "documentation": "<p>A full description of the tasks that were run. The tasks that were successfully placed on your cluster are described here.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "Scale": {
      "type": "structure",
      "members": {
        "value": {
          "shape": "Double",
          "documentation": "<p>The value, specified as a percent total of a service's <code>desiredCount</code>, to scale the task set. Accepted values are numbers between 0 and 100.</p>"
        },
        "unit": {
          "shape": "ScaleUnit",
          "documentation": "<p>The unit of measure for the scale value.</p>"
        }
      },
      "documentation": "<p>A floating-point percentage of the desired number of tasks to place and keep running in the task set.</p>"
    },
    "ScaleUnit": {
      "type": "string",
      "enum": [
        "PERCENT"
      ]
    },
    "SchedulingStrategy": {
      "type": "string",
      "enum": [
        "REPLICA",
        "DAEMON"
      ]
    },
    "Scope": {
      "type": "string",
      "enum": [
        "task",
        "shared"
      ]
    },
    "Secret": {
      "type": "structure",
      "required": [
        "name",
        "valueFrom"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the secret.</p>"
        },
        "valueFrom": {
          "shape": "String",
          "documentation": "<p>The secret to expose to the container. The supported values are either the full ARN of the AWS Secrets Manager secret or the full ARN of the parameter in the AWS Systems Manager Parameter Store.</p> <note> <p>If the AWS Systems Manager Parameter Store parameter exists in the same Region as the task you are launching, then you can use either the full ARN or name of the parameter. If the parameter exists in a different Region, then the full ARN must be specified.</p> </note>"
        }
      },
      "documentation": "<p>An object representing the secret to expose to your container. Secrets can be exposed to a container in the following ways:</p> <ul> <li> <p>To inject sensitive data into your containers as environment variables, use the <code>secrets</code> container definition parameter.</p> </li> <li> <p>To reference sensitive information in the log configuration of a container, use the <code>secretOptions</code> container definition parameter.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/specifying-sensitive-data.html\">Specifying Sensitive Data</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
    },
    "SecretList": {
      "type": "list",
      "member": {
        "shape": "Secret"
      }
    },
    "Service": {
      "type": "structure",
      "members": {
        "serviceArn": {
          "shape": "String",
          "documentation": "<p>The ARN that identifies the service. The ARN contains the <code>arn:aws:ecs</code> namespace, followed by the Region of the service, the AWS account ID of the service owner, the <code>service</code> namespace, and then the service name. For example, <code>arn:aws:ecs:region:012345678910:service/my-service</code>.</p>"
        },
        "serviceName": {
          "shape": "String",
          "documentation": "<p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. Service names must be unique within a cluster, but you can have similarly named services in multiple clusters within a Region or across multiple Regions.</p>"
        },
        "clusterArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the cluster that hosts the service.</p>"
        },
        "loadBalancers": {
          "shape": "LoadBalancers",
          "documentation": "<p>A list of Elastic Load Balancing load balancer objects, containing the load balancer name, the container name (as it appears in a container definition), and the container port to access from the load balancer.</p>"
        },
        "serviceRegistries": {
          "shape": "ServiceRegistries",
          "documentation": "<p>The details of the service discovery registries to assign to this service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html\">Service Discovery</a>.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the service. The valid values are <code>ACTIVE</code>, <code>DRAINING</code>, or <code>INACTIVE</code>.</p>"
        },
        "desiredCount": {
          "shape": "Integer",
          "documentation": "<p>The desired number of instantiations of the task definition to keep running on the service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>"
        },
        "runningCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks in the cluster that are in the <code>RUNNING</code> state.</p>"
        },
        "pendingCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks in the cluster that are in the <code>PENDING</code> state.</p>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type on which your service is running. If no value is specified, it will default to <code>EC2</code>. Valid values include <code>EC2</code> and <code>FARGATE</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "capacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy associated with the service.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version on which to run your service. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the <code>LATEST</code> platform version is used by default. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The task definition to use for tasks in the service. This value is specified when the service is created with <a>CreateService</a>, and it can be modified with <a>UpdateService</a>.</p>"
        },
        "deploymentConfiguration": {
          "shape": "DeploymentConfiguration",
          "documentation": "<p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>"
        },
        "taskSets": {
          "shape": "TaskSets",
          "documentation": "<p>Information about a set of Amazon ECS tasks in either an AWS CodeDeploy or an <code>EXTERNAL</code> deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic.</p>"
        },
        "deployments": {
          "shape": "Deployments",
          "documentation": "<p>The current state of deployments for the service.</p>"
        },
        "roleArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the IAM role associated with the service that allows the Amazon ECS container agent to register container instances with an Elastic Load Balancing load balancer.</p>"
        },
        "events": {
          "shape": "ServiceEvents",
          "documentation": "<p>The event stream for your service. A maximum of 100 of the latest events are displayed.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the service was created.</p>"
        },
        "placementConstraints": {
          "shape": "PlacementConstraints",
          "documentation": "<p>The placement constraints for the tasks in the service.</p>"
        },
        "placementStrategy": {
          "shape": "PlacementStrategies",
          "documentation": "<p>The placement strategy that determines how tasks for the service are placed.</p>"
        },
        "networkConfiguration": {
          "shape": "NetworkConfiguration",
          "documentation": "<p>The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the <code>awsvpc</code> networking mode.</p>"
        },
        "healthCheckGracePeriodSeconds": {
          "shape": "BoxedInteger",
          "documentation": "<p>The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing target health checks after a task has first started.</p>"
        },
        "schedulingStrategy": {
          "shape": "SchedulingStrategy",
          "documentation": "<p>The scheduling strategy to use for the service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html\">Services</a>.</p> <p>There are two service scheduler strategies available:</p> <ul> <li> <p> <code>REPLICA</code>-The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions.</p> </li> <li> <p> <code>DAEMON</code>-The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that do not meet the placement constraints.</p> <note> <p>Fargate tasks do not support the <code>DAEMON</code> scheduling strategy.</p> </note> </li> </ul>"
        },
        "deploymentController": {
          "shape": "DeploymentController",
          "documentation": "<p>The deployment controller type the service is using. When using the DescribeServices API, this field is omitted if the service is using the <code>ECS</code> deployment controller type.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the service to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        },
        "createdBy": {
          "shape": "String",
          "documentation": "<p>The principal that created the service.</p>"
        },
        "enableECSManagedTags": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether to enable Amazon ECS managed tags for the tasks in the service. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html\">Tagging Your Amazon ECS Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "propagateTags": {
          "shape": "PropagateTags",
          "documentation": "<p>Specifies whether to propagate the tags from the task definition or the service to the task. If no value is specified, the tags are not propagated.</p>"
        }
      },
      "documentation": "<p>Details on a service within a cluster</p>"
    },
    "ServiceEvent": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "String",
          "documentation": "<p>The ID string of the event.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the event was triggered.</p>"
        },
        "message": {
          "shape": "String",
          "documentation": "<p>The event message.</p>"
        }
      },
      "documentation": "<p>Details on an event associated with a service.</p>"
    },
    "ServiceEvents": {
      "type": "list",
      "member": {
        "shape": "ServiceEvent"
      }
    },
    "ServiceField": {
      "type": "string",
      "enum": [
        "TAGS"
      ]
    },
    "ServiceFieldList": {
      "type": "list",
      "member": {
        "shape": "ServiceField"
      }
    },
    "ServiceRegistries": {
      "type": "list",
      "member": {
        "shape": "ServiceRegistry"
      }
    },
    "ServiceRegistry": {
      "type": "structure",
      "members": {
        "registryArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the service registry. The currently supported service registry is AWS Cloud Map. For more information, see <a href=\"https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html\">CreateService</a>.</p>"
        },
        "port": {
          "shape": "BoxedInteger",
          "documentation": "<p>The port value used if your service discovery service specified an SRV record. This field may be used if both the <code>awsvpc</code> network mode and SRV records are used.</p>"
        },
        "containerName": {
          "shape": "String",
          "documentation": "<p>The container name value, already specified in the task definition, to be used for your service discovery service. If the task definition that your service task specifies uses the <code>bridge</code> or <code>host</code> network mode, you must specify a <code>containerName</code> and <code>containerPort</code> combination from the task definition. If the task definition that your service task specifies uses the <code>awsvpc</code> network mode and a type SRV DNS record is used, you must specify either a <code>containerName</code> and <code>containerPort</code> combination or a <code>port</code> value, but not both.</p>"
        },
        "containerPort": {
          "shape": "BoxedInteger",
          "documentation": "<p>The port value, already specified in the task definition, to be used for your service discovery service. If the task definition your service task specifies uses the <code>bridge</code> or <code>host</code> network mode, you must specify a <code>containerName</code> and <code>containerPort</code> combination from the task definition. If the task definition your service task specifies uses the <code>awsvpc</code> network mode and a type SRV DNS record is used, you must specify either a <code>containerName</code> and <code>containerPort</code> combination or a <code>port</code> value, but not both.</p>"
        }
      },
      "documentation": "<p>Details of the service registry.</p>"
    },
    "Services": {
      "type": "list",
      "member": {
        "shape": "Service"
      }
    },
    "Setting": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SettingName",
          "documentation": "<p>The Amazon ECS resource name.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>Whether the account setting is enabled or disabled for the specified resource.</p>"
        },
        "principalArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the principal, which can be an IAM user, IAM role, or the root user. If this field is omitted, the authenticated user is assumed.</p>"
        }
      },
      "documentation": "<p>The current account setting for a resource.</p>"
    },
    "SettingName": {
      "type": "string",
      "enum": [
        "serviceLongArnFormat",
        "taskLongArnFormat",
        "containerInstanceLongArnFormat",
        "awsvpcTrunking",
        "containerInsights"
      ]
    },
    "Settings": {
      "type": "list",
      "member": {
        "shape": "Setting"
      }
    },
    "SortOrder": {
      "type": "string",
      "enum": [
        "ASC",
        "DESC"
      ]
    },
    "StabilityStatus": {
      "type": "string",
      "enum": [
        "STEADY_STATE",
        "STABILIZING"
      ]
    },
    "StartTaskRequest": {
      "type": "structure",
      "required": [
        "containerInstances",
        "taskDefinition"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster on which to start your task. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "containerInstances": {
          "shape": "StringList",
          "documentation": "<p>The container instance IDs or full ARN entries for the container instances on which you would like to place your task. You can specify up to 10 container instances.</p>"
        },
        "enableECSManagedTags": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether to enable Amazon ECS managed tags for the task. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html\">Tagging Your Amazon ECS Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "group": {
          "shape": "String",
          "documentation": "<p>The name of the task group to associate with the task. The default value is the family name of the task definition (for example, family:my-family-name).</p>"
        },
        "networkConfiguration": {
          "shape": "NetworkConfiguration",
          "documentation": "<p>The VPC subnet and security group configuration for tasks that receive their own elastic network interface by using the <code>awsvpc</code> networking mode.</p>"
        },
        "overrides": {
          "shape": "TaskOverride",
          "documentation": "<p>A list of container overrides in JSON format that specify the name of a container in the specified task definition and the overrides it should receive. You can override the default command for a container (that is specified in the task definition or Docker image) with a <code>command</code> override. You can also override existing environment variables (that are specified in the task definition or Docker image) on a container or add new environment variables to it with an <code>environment</code> override.</p> <note> <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON formatting characters of the override structure.</p> </note>"
        },
        "propagateTags": {
          "shape": "PropagateTags",
          "documentation": "<p>Specifies whether to propagate the tags from the task definition or the service to the task. If no value is specified, the tags are not propagated.</p>"
        },
        "referenceId": {
          "shape": "String",
          "documentation": "<p>The reference ID to use for the task.</p>"
        },
        "startedBy": {
          "shape": "String",
          "documentation": "<p>An optional tag specified when a task is started. For example, if you automatically trigger a task to run a batch process job, you could apply a unique identifier for that job to your task with the <code>startedBy</code> parameter. You can then identify which tasks belong to that job by filtering the results of a <a>ListTasks</a> call with the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the task to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        },
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full ARN of the task definition to start. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used.</p>"
        }
      }
    },
    "StartTaskResponse": {
      "type": "structure",
      "members": {
        "tasks": {
          "shape": "Tasks",
          "documentation": "<p>A full description of the tasks that were started. Each task that was successfully placed on your container instances is described.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "Statistics": {
      "type": "list",
      "member": {
        "shape": "KeyValuePair"
      }
    },
    "StopTaskRequest": {
      "type": "structure",
      "required": [
        "task"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "task": {
          "shape": "String",
          "documentation": "<p>The task ID or full Amazon Resource Name (ARN) of the task to stop.</p>"
        },
        "reason": {
          "shape": "String",
          "documentation": "<p>An optional message specified when a task is stopped. For example, if you are using a custom scheduler, you can use this parameter to specify the reason for stopping the task here, and the message appears in subsequent <a>DescribeTasks</a> API operations on this task. Up to 255 characters are allowed in this message.</p>"
        }
      }
    },
    "StopTaskResponse": {
      "type": "structure",
      "members": {
        "task": {
          "shape": "Task",
          "documentation": "<p>The task that was stopped.</p>"
        }
      }
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
    "StringMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "SubmitAttachmentStateChangesRequest": {
      "type": "structure",
      "required": [
        "attachments"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full ARN of the cluster that hosts the container instance the attachment belongs to.</p>"
        },
        "attachments": {
          "shape": "AttachmentStateChanges",
          "documentation": "<p>Any attachments associated with the state change request.</p>"
        }
      }
    },
    "SubmitAttachmentStateChangesResponse": {
      "type": "structure",
      "members": {
        "acknowledgment": {
          "shape": "String",
          "documentation": "<p>Acknowledgement of the state change.</p>"
        }
      }
    },
    "SubmitContainerStateChangeRequest": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full ARN of the cluster that hosts the container.</p>"
        },
        "task": {
          "shape": "String",
          "documentation": "<p>The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.</p>"
        },
        "containerName": {
          "shape": "String",
          "documentation": "<p>The name of the container.</p>"
        },
        "runtimeId": {
          "shape": "String",
          "documentation": "<p>The ID of the Docker container.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the state change request.</p>"
        },
        "exitCode": {
          "shape": "BoxedInteger",
          "documentation": "<p>The exit code returned for the state change request.</p>"
        },
        "reason": {
          "shape": "String",
          "documentation": "<p>The reason for the state change request.</p>"
        },
        "networkBindings": {
          "shape": "NetworkBindings",
          "documentation": "<p>The network bindings of the container.</p>"
        }
      }
    },
    "SubmitContainerStateChangeResponse": {
      "type": "structure",
      "members": {
        "acknowledgment": {
          "shape": "String",
          "documentation": "<p>Acknowledgement of the state change.</p>"
        }
      }
    },
    "SubmitTaskStateChangeRequest": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.</p>"
        },
        "task": {
          "shape": "String",
          "documentation": "<p>The task ID or full ARN of the task in the state change request.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the state change request.</p>"
        },
        "reason": {
          "shape": "String",
          "documentation": "<p>The reason for the state change request.</p>"
        },
        "containers": {
          "shape": "ContainerStateChanges",
          "documentation": "<p>Any containers associated with the state change request.</p>"
        },
        "attachments": {
          "shape": "AttachmentStateChanges",
          "documentation": "<p>Any attachments associated with the state change request.</p>"
        },
        "pullStartedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the container image pull began.</p>"
        },
        "pullStoppedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the container image pull completed.</p>"
        },
        "executionStoppedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task execution stopped.</p>"
        }
      }
    },
    "SubmitTaskStateChangeResponse": {
      "type": "structure",
      "members": {
        "acknowledgment": {
          "shape": "String",
          "documentation": "<p>Acknowledgement of the state change.</p>"
        }
      }
    },
    "SystemControl": {
      "type": "structure",
      "members": {
        "namespace": {
          "shape": "String",
          "documentation": "<p>The namespaced kernel parameter for which to set a <code>value</code>.</p>"
        },
        "value": {
          "shape": "String",
          "documentation": "<p>The value for the namespaced kernel parameter specified in <code>namespace</code>.</p>"
        }
      },
      "documentation": "<p>A list of namespaced kernel parameters to set in the container. This parameter maps to <code>Sysctls</code> in the <a href=\"https://docs.docker.com/engine/api/v1.35/#operation/ContainerCreate\">Create a container</a> section of the <a href=\"https://docs.docker.com/engine/api/v1.35/\">Docker Remote API</a> and the <code>--sysctl</code> option to <a href=\"https://docs.docker.com/engine/reference/run/\">docker run</a>.</p> <p>It is not recommended that you specify network-related <code>systemControls</code> parameters for multiple containers in a single task that also uses either the <code>awsvpc</code> or <code>host</code> network mode for the following reasons:</p> <ul> <li> <p>For tasks that use the <code>awsvpc</code> network mode, if you set <code>systemControls</code> for any container, it applies to all containers in the task. If you set different <code>systemControls</code> for multiple containers in a single task, the container that is started last determines which <code>systemControls</code> take effect.</p> </li> <li> <p>For tasks that use the <code>host</code> network mode, the <code>systemControls</code> parameter applies to the container instance's kernel parameter as well as that of all containers of any tasks running on that container instance.</p> </li> </ul>"
    },
    "SystemControls": {
      "type": "list",
      "member": {
        "shape": "SystemControl"
      }
    },
    "Tag": {
      "type": "structure",
      "members": {
        "key": {
          "shape": "TagKey",
          "documentation": "<p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label that acts like a category for more specific tag values.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>The optional part of a key-value pair that make up a tag. A <code>value</code> acts as a descriptor within a tag category (key).</p>"
        }
      },
      "documentation": "<p>The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
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
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to which to add tags. Currently, the supported resources are Amazon ECS capacity providers, tasks, services, task definitions, clusters, and container instances.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to add to the resource. A tag is an array of key-value pairs.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50,
      "min": 0
    },
    "TargetType": {
      "type": "string",
      "enum": [
        "container-instance"
      ]
    },
    "Task": {
      "type": "structure",
      "members": {
        "attachments": {
          "shape": "Attachments",
          "documentation": "<p>The Elastic Network Adapter associated with the task if the task uses the <code>awsvpc</code> network mode.</p>"
        },
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attributes of the task</p>"
        },
        "availabilityZone": {
          "shape": "String",
          "documentation": "<p>The availability zone of the task.</p>"
        },
        "capacityProviderName": {
          "shape": "String",
          "documentation": "<p>The capacity provider associated with the task.</p>"
        },
        "clusterArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the cluster that hosts the task.</p>"
        },
        "connectivity": {
          "shape": "Connectivity",
          "documentation": "<p>The connectivity status of a task.</p>"
        },
        "connectivityAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task last went into <code>CONNECTED</code> status.</p>"
        },
        "containerInstanceArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the container instances that host the task.</p>"
        },
        "containers": {
          "shape": "Containers",
          "documentation": "<p>The containers associated with the task.</p>"
        },
        "cpu": {
          "shape": "String",
          "documentation": "<p>The number of CPU units used by the task as expressed in a task definition. It can be expressed as an integer using CPU units, for example <code>1024</code>. It can also be expressed as a string using vCPUs, for example <code>1 vCPU</code> or <code>1 vcpu</code>. String values are converted to an integer indicating the CPU units when the task definition is registered.</p> <p>If you are using the EC2 launch type, this field is optional. Supported values are between <code>128</code> CPU units (<code>0.125</code> vCPUs) and <code>10240</code> CPU units (<code>10</code> vCPUs).</p> <p>If you are using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the <code>memory</code> parameter:</p> <ul> <li> <p>256 (.25 vCPU) - Available <code>memory</code> values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)</p> </li> <li> <p>512 (.5 vCPU) - Available <code>memory</code> values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)</p> </li> <li> <p>1024 (1 vCPU) - Available <code>memory</code> values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)</p> </li> <li> <p>2048 (2 vCPU) - Available <code>memory</code> values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)</p> </li> <li> <p>4096 (4 vCPU) - Available <code>memory</code> values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)</p> </li> </ul>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task was created (the task entered the <code>PENDING</code> state).</p>"
        },
        "desiredStatus": {
          "shape": "String",
          "documentation": "<p>The desired status of the task. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html\">Task Lifecycle</a>.</p>"
        },
        "executionStoppedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task execution stopped.</p>"
        },
        "group": {
          "shape": "String",
          "documentation": "<p>The name of the task group associated with the task.</p>"
        },
        "healthStatus": {
          "shape": "HealthStatus",
          "documentation": "<p>The health status for the task, which is determined by the health of the essential containers in the task. If all essential containers in the task are reporting as <code>HEALTHY</code>, then the task status also reports as <code>HEALTHY</code>. If any essential containers in the task are reporting as <code>UNHEALTHY</code> or <code>UNKNOWN</code>, then the task status also reports as <code>UNHEALTHY</code> or <code>UNKNOWN</code>, accordingly.</p> <note> <p>The Amazon ECS container agent does not monitor or report on Docker health checks that are embedded in a container image (such as those specified in a parent image or from the image's Dockerfile) and not specified in the container definition. Health check parameters that are specified in a container definition override any Docker health checks that exist in the container image.</p> </note>"
        },
        "inferenceAccelerators": {
          "shape": "InferenceAccelerators",
          "documentation": "<p>The Elastic Inference accelerator associated with the task.</p>"
        },
        "lastStatus": {
          "shape": "String",
          "documentation": "<p>The last known status of the task. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-lifecycle.html\">Task Lifecycle</a>.</p>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type on which your task is running. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "memory": {
          "shape": "String",
          "documentation": "<p>The amount of memory (in MiB) used by the task as expressed in a task definition. It can be expressed as an integer using MiB, for example <code>1024</code>. It can also be expressed as a string using GB, for example <code>1GB</code> or <code>1 GB</code>. String values are converted to an integer indicating the MiB when the task definition is registered.</p> <p>If you are using the EC2 launch type, this field is optional.</p> <p>If you are using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of supported values for the <code>cpu</code> parameter:</p> <ul> <li> <p>512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available <code>cpu</code> values: 256 (.25 vCPU)</p> </li> <li> <p>1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available <code>cpu</code> values: 512 (.5 vCPU)</p> </li> <li> <p>2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available <code>cpu</code> values: 1024 (1 vCPU)</p> </li> <li> <p>Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 2048 (2 vCPU)</p> </li> <li> <p>Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 4096 (4 vCPU)</p> </li> </ul>"
        },
        "overrides": {
          "shape": "TaskOverride",
          "documentation": "<p>One or more container overrides.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version on which your task is running. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the <code>LATEST</code> platform version is used by default. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "pullStartedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the container image pull began.</p>"
        },
        "pullStoppedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the container image pull completed.</p>"
        },
        "startedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task started (the task transitioned from the <code>PENDING</code> state to the <code>RUNNING</code> state).</p>"
        },
        "startedBy": {
          "shape": "String",
          "documentation": "<p>The tag specified when a task is started. If the task is started by an Amazon ECS service, then the <code>startedBy</code> parameter contains the deployment ID of the service that starts it.</p>"
        },
        "stopCode": {
          "shape": "TaskStopCode",
          "documentation": "<p>The stop code indicating why a task was stopped. The <code>stoppedReason</code> may contain additional details.</p>"
        },
        "stoppedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task was stopped (the task transitioned from the <code>RUNNING</code> state to the <code>STOPPED</code> state).</p>"
        },
        "stoppedReason": {
          "shape": "String",
          "documentation": "<p>The reason that the task was stopped.</p>"
        },
        "stoppingAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task stops (transitions from the <code>RUNNING</code> state to <code>STOPPED</code>).</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the task to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        },
        "taskArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task.</p>"
        },
        "taskDefinitionArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the task definition that creates the task.</p>"
        },
        "version": {
          "shape": "Long",
          "documentation": "<p>The version counter for the task. Every time a task experiences a change that triggers a CloudWatch event, the version counter is incremented. If you are replicating your Amazon ECS task state with CloudWatch Events, you can compare the version of a task reported by the Amazon ECS API actions with the version reported in CloudWatch Events for the task (inside the <code>detail</code> object) to verify that the version in your event stream is current.</p>"
        }
      },
      "documentation": "<p>Details on a task in a cluster.</p>"
    },
    "TaskDefinition": {
      "type": "structure",
      "members": {
        "taskDefinitionArn": {
          "shape": "String",
          "documentation": "<p>The full Amazon Resource Name (ARN) of the task definition.</p>"
        },
        "containerDefinitions": {
          "shape": "ContainerDefinitions",
          "documentation": "<p>A list of container definitions in JSON format that describe the different containers that make up your task. For more information about container definition parameters and defaults, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html\">Amazon ECS Task Definitions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "family": {
          "shape": "String",
          "documentation": "<p>The name of a family that this task definition is registered to. Up to 255 letters (uppercase and lowercase), numbers, hyphens, and underscores are allowed.</p> <p>A family groups multiple versions of a task definition. Amazon ECS gives the first task definition that you registered to a family a revision number of 1. Amazon ECS gives sequential revision numbers to each task definition that you add.</p>"
        },
        "taskRoleArn": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants containers in the task permission to call AWS APIs on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html\">Amazon ECS Task Role</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <p>IAM roles for tasks on Windows require that the <code>-EnableTaskIAMRole</code> option is set when you launch the Amazon ECS-optimized Windows AMI. Your containers must also run some configuration code in order to take advantage of the feature. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/windows_task_IAM_roles.html\">Windows IAM Roles for Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "executionRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent permission to make AWS API calls on your behalf. The task execution IAM role is required depending on the requirements of your task. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html\">Amazon ECS task execution IAM role</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "networkMode": {
          "shape": "NetworkMode",
          "documentation": "<p>The Docker networking mode to use for the containers in the task. The valid values are <code>none</code>, <code>bridge</code>, <code>awsvpc</code>, and <code>host</code>. The default Docker network mode is <code>bridge</code>. If you are using the Fargate launch type, the <code>awsvpc</code> network mode is required. If you are using the EC2 launch type, any network mode can be used. If the network mode is set to <code>none</code>, you cannot specify port mappings in your container definitions, and the tasks containers do not have external connectivity. The <code>host</code> and <code>awsvpc</code> network modes offer the highest networking performance for containers because they use the EC2 network stack instead of the virtualized network stack provided by the <code>bridge</code> mode.</p> <p>With the <code>host</code> and <code>awsvpc</code> network modes, exposed container ports are mapped directly to the corresponding host port (for the <code>host</code> network mode) or the attached elastic network interface port (for the <code>awsvpc</code> network mode), so you cannot take advantage of dynamic host port mappings. </p> <p>If the network mode is <code>awsvpc</code>, the task is allocated an elastic network interface, and you must specify a <a>NetworkConfiguration</a> value when you create a service or run a task with the task definition. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html\">Task Networking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <note> <p>Currently, only Amazon ECS-optimized AMIs, other Amazon Linux variants with the <code>ecs-init</code> package, or AWS Fargate infrastructure support the <code>awsvpc</code> network mode. </p> </note> <p>If the network mode is <code>host</code>, you cannot run multiple instantiations of the same task on a single container instance when port mappings are used.</p> <p>Docker for Windows uses different network modes than Docker for Linux. When you register a task definition with Windows containers, you must not specify a network mode. If you use the console to register a task definition with Windows containers, you must choose the <code>&lt;default&gt;</code> network mode object. </p> <p>For more information, see <a href=\"https://docs.docker.com/engine/reference/run/#network-settings\">Network settings</a> in the <i>Docker run reference</i>.</p>"
        },
        "revision": {
          "shape": "Integer",
          "documentation": "<p>The revision of the task in a particular family. The revision is a version number of a task definition in a family. When you register a task definition for the first time, the revision is <code>1</code>. Each time that you register a new revision of a task definition in the same family, the revision value always increases by one, even if you have deregistered previous revisions in this family.</p>"
        },
        "volumes": {
          "shape": "VolumeList",
          "documentation": "<p>The list of volume definitions for the task.</p> <p>If your tasks are using the Fargate launch type, the <code>host</code> and <code>sourcePath</code> parameters are not supported.</p> <p>For more information about volume definition parameters and defaults, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html\">Amazon ECS Task Definitions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "status": {
          "shape": "TaskDefinitionStatus",
          "documentation": "<p>The status of the task definition.</p>"
        },
        "requiresAttributes": {
          "shape": "RequiresAttributes",
          "documentation": "<p>The container instance attributes required by your task. This field is not valid if you are using the Fargate launch type for your task.</p>"
        },
        "placementConstraints": {
          "shape": "TaskDefinitionPlacementConstraints",
          "documentation": "<p>An array of placement constraint objects to use for tasks. This field is not valid if you are using the Fargate launch type for your task.</p>"
        },
        "compatibilities": {
          "shape": "CompatibilityList",
          "documentation": "<p>The launch type to use with your task. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "requiresCompatibilities": {
          "shape": "CompatibilityList",
          "documentation": "<p>The launch type the task requires. If no value is specified, it will default to <code>EC2</code>. Valid values include <code>EC2</code> and <code>FARGATE</code>.</p>"
        },
        "cpu": {
          "shape": "String",
          "documentation": "<p>The number of <code>cpu</code> units used by the task. If you are using the EC2 launch type, this field is optional and any value can be used. If you are using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of valid values for the <code>memory</code> parameter:</p> <ul> <li> <p>256 (.25 vCPU) - Available <code>memory</code> values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)</p> </li> <li> <p>512 (.5 vCPU) - Available <code>memory</code> values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)</p> </li> <li> <p>1024 (1 vCPU) - Available <code>memory</code> values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)</p> </li> <li> <p>2048 (2 vCPU) - Available <code>memory</code> values: Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)</p> </li> <li> <p>4096 (4 vCPU) - Available <code>memory</code> values: Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)</p> </li> </ul>"
        },
        "memory": {
          "shape": "String",
          "documentation": "<p>The amount (in MiB) of memory used by the task.</p> <p>If using the EC2 launch type, this field is optional and any value can be used. If a task-level memory value is specified then the container-level memory value is optional.</p> <p>If using the Fargate launch type, this field is required and you must use one of the following values, which determines your range of valid values for the <code>cpu</code> parameter:</p> <ul> <li> <p>512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available <code>cpu</code> values: 256 (.25 vCPU)</p> </li> <li> <p>1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available <code>cpu</code> values: 512 (.5 vCPU)</p> </li> <li> <p>2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available <code>cpu</code> values: 1024 (1 vCPU)</p> </li> <li> <p>Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 2048 (2 vCPU)</p> </li> <li> <p>Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 4096 (4 vCPU)</p> </li> </ul>"
        },
        "inferenceAccelerators": {
          "shape": "InferenceAccelerators",
          "documentation": "<p>The Elastic Inference accelerator associated with the task.</p>"
        },
        "pidMode": {
          "shape": "PidMode",
          "documentation": "<p>The process namespace to use for the containers in the task. The valid values are <code>host</code> or <code>task</code>. If <code>host</code> is specified, then all containers within the tasks that specified the <code>host</code> PID mode on the same container instance share the same process namespace with the host Amazon EC2 instance. If <code>task</code> is specified, all containers within the specified task share the same process namespace. If no value is specified, the default is a private namespace. For more information, see <a href=\"https://docs.docker.com/engine/reference/run/#pid-settings---pid\">PID settings</a> in the <i>Docker run reference</i>.</p> <p>If the <code>host</code> PID mode is used, be aware that there is a heightened risk of undesired process namespace expose. For more information, see <a href=\"https://docs.docker.com/engine/security/security/\">Docker security</a>.</p> <note> <p>This parameter is not supported for Windows containers or tasks using the Fargate launch type.</p> </note>"
        },
        "ipcMode": {
          "shape": "IpcMode",
          "documentation": "<p>The IPC resource namespace to use for the containers in the task. The valid values are <code>host</code>, <code>task</code>, or <code>none</code>. If <code>host</code> is specified, then all containers within the tasks that specified the <code>host</code> IPC mode on the same container instance share the same IPC resources with the host Amazon EC2 instance. If <code>task</code> is specified, all containers within the specified task share the same IPC resources. If <code>none</code> is specified, then IPC resources within the containers of a task are private and not shared with other containers in a task or on the container instance. If no value is specified, then the IPC resource namespace sharing depends on the Docker daemon setting on the container instance. For more information, see <a href=\"https://docs.docker.com/engine/reference/run/#ipc-settings---ipc\">IPC settings</a> in the <i>Docker run reference</i>.</p> <p>If the <code>host</code> IPC mode is used, be aware that there is a heightened risk of undesired IPC namespace expose. For more information, see <a href=\"https://docs.docker.com/engine/security/security/\">Docker security</a>.</p> <p>If you are setting namespaced kernel parameters using <code>systemControls</code> for the containers in the task, the following will apply to your IPC resource namespace. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html\">System Controls</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <ul> <li> <p>For tasks that use the <code>host</code> IPC mode, IPC namespace related <code>systemControls</code> are not supported.</p> </li> <li> <p>For tasks that use the <code>task</code> IPC mode, IPC namespace related <code>systemControls</code> will apply to all containers within a task.</p> </li> </ul> <note> <p>This parameter is not supported for Windows containers or tasks using the Fargate launch type.</p> </note>"
        },
        "proxyConfiguration": {
          "shape": "ProxyConfiguration",
          "documentation": "<p>The configuration details for the App Mesh proxy.</p> <p>Your Amazon ECS container instances require at least version 1.26.0 of the container agent and at least version 1.26.0-1 of the <code>ecs-init</code> package to enable a proxy configuration. If your container instances are launched from the Amazon ECS-optimized AMI version <code>20190301</code> or later, then they contain the required versions of the container agent and <code>ecs-init</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html\">Amazon ECS-optimized Linux AMI</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>The details of a task definition which describes the container and volume definitions of an Amazon Elastic Container Service task. You can specify which Docker images to use, the required resources, and other configurations related to launching the task definition through an Amazon ECS service or task.</p>"
    },
    "TaskDefinitionFamilyStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "INACTIVE",
        "ALL"
      ]
    },
    "TaskDefinitionField": {
      "type": "string",
      "enum": [
        "TAGS"
      ]
    },
    "TaskDefinitionFieldList": {
      "type": "list",
      "member": {
        "shape": "TaskDefinitionField"
      }
    },
    "TaskDefinitionPlacementConstraint": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "TaskDefinitionPlacementConstraintType",
          "documentation": "<p>The type of constraint. The <code>MemberOf</code> constraint restricts selection to be from a group of valid candidates.</p>"
        },
        "expression": {
          "shape": "String",
          "documentation": "<p>A cluster query language expression to apply to the constraint. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html\">Cluster Query Language</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>An object representing a constraint on task placement in the task definition. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html\">Task Placement Constraints</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p> <note> <p>If you are using the Fargate launch type, task placement constraints are not supported.</p> </note>"
    },
    "TaskDefinitionPlacementConstraintType": {
      "type": "string",
      "enum": [
        "memberOf"
      ]
    },
    "TaskDefinitionPlacementConstraints": {
      "type": "list",
      "member": {
        "shape": "TaskDefinitionPlacementConstraint"
      }
    },
    "TaskDefinitionStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "INACTIVE"
      ]
    },
    "TaskField": {
      "type": "string",
      "enum": [
        "TAGS"
      ]
    },
    "TaskFieldList": {
      "type": "list",
      "member": {
        "shape": "TaskField"
      }
    },
    "TaskOverride": {
      "type": "structure",
      "members": {
        "containerOverrides": {
          "shape": "ContainerOverrides",
          "documentation": "<p>One or more container overrides sent to a task.</p>"
        },
        "cpu": {
          "shape": "String",
          "documentation": "<p>The cpu override for the task.</p>"
        },
        "inferenceAcceleratorOverrides": {
          "shape": "InferenceAcceleratorOverrides",
          "documentation": "<p>The Elastic Inference accelerator override for the task.</p>"
        },
        "executionRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task execution IAM role override for the task.</p>"
        },
        "memory": {
          "shape": "String",
          "documentation": "<p>The memory override for the task.</p>"
        },
        "taskRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.</p>"
        }
      },
      "documentation": "<p>The overrides associated with a task.</p>"
    },
    "TaskSet": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "String",
          "documentation": "<p>The ID of the task set.</p>"
        },
        "taskSetArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the task set.</p>"
        },
        "serviceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the service the task set exists in.</p>"
        },
        "clusterArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the cluster that the service that hosts the task set exists in.</p>"
        },
        "startedBy": {
          "shape": "String",
          "documentation": "<p>The tag specified when a task set is started. If the task set is created by an AWS CodeDeploy deployment, the <code>startedBy</code> parameter is <code>CODE_DEPLOY</code>. For a task set created for an external deployment, the startedBy field isn't used.</p>"
        },
        "externalId": {
          "shape": "String",
          "documentation": "<p>The external ID associated with the task set.</p> <p>If a task set is created by an AWS CodeDeploy deployment, the <code>externalId</code> parameter contains the AWS CodeDeploy deployment ID.</p> <p>If a task set is created for an external deployment and is associated with a service discovery registry, the <code>externalId</code> parameter contains the <code>ECS_TASK_SET_EXTERNAL_ID</code> AWS Cloud Map attribute.</p>"
        },
        "status": {
          "shape": "String",
          "documentation": "<p>The status of the task set. The following describes each state:</p> <dl> <dt>PRIMARY</dt> <dd> <p>The task set is serving production traffic.</p> </dd> <dt>ACTIVE</dt> <dd> <p>The task set is not serving production traffic.</p> </dd> <dt>DRAINING</dt> <dd> <p>The tasks in the task set are being stopped and their corresponding targets are being deregistered from their target group.</p> </dd> </dl>"
        },
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The task definition the task set is using.</p>"
        },
        "computedDesiredCount": {
          "shape": "Integer",
          "documentation": "<p>The computed desired count for the task set. This is calculated by multiplying the service's <code>desiredCount</code> by the task set's <code>scale</code> percentage. The result is always rounded up. For example, if the computed desired count is 1.2, it rounds up to 2 tasks.</p>"
        },
        "pendingCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks in the task set that are in the <code>PENDING</code> status during a deployment. A task in the <code>PENDING</code> state is preparing to enter the <code>RUNNING</code> state. A task set enters the <code>PENDING</code> status when it launches for the first time or when it is restarted after being in the <code>STOPPED</code> state.</p>"
        },
        "runningCount": {
          "shape": "Integer",
          "documentation": "<p>The number of tasks in the task set that are in the <code>RUNNING</code> status during a deployment. A task in the <code>RUNNING</code> state is running and ready for use.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task set was created.</p>"
        },
        "updatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task set was last updated.</p>"
        },
        "launchType": {
          "shape": "LaunchType",
          "documentation": "<p>The launch type the tasks in the task set are using. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "capacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy associated with the task set.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version on which the tasks in the task set are running. A platform version is only specified for tasks using the Fargate launch type. If one is not specified, the <code>LATEST</code> platform version is used by default. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "networkConfiguration": {
          "shape": "NetworkConfiguration",
          "documentation": "<p>The network configuration for the task set.</p>"
        },
        "loadBalancers": {
          "shape": "LoadBalancers",
          "documentation": "<p>Details on a load balancer that is used with a task set.</p>"
        },
        "serviceRegistries": {
          "shape": "ServiceRegistries",
          "documentation": "<p>The details of the service discovery registries to assign to this task set. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html\">Service Discovery</a>.</p>"
        },
        "scale": {
          "shape": "Scale",
          "documentation": "<p>A floating-point percentage of the desired number of tasks to place and keep running in the task set.</p>"
        },
        "stabilityStatus": {
          "shape": "StabilityStatus",
          "documentation": "<p>The stability status, which indicates whether the task set has reached a steady state. If the following conditions are met, the task set will be in <code>STEADY_STATE</code>:</p> <ul> <li> <p>The task <code>runningCount</code> is equal to the <code>computedDesiredCount</code>.</p> </li> <li> <p>The <code>pendingCount</code> is <code>0</code>.</p> </li> <li> <p>There are no tasks running on container instances in the <code>DRAINING</code> status.</p> </li> <li> <p>All tasks are reporting a healthy status from the load balancers, service discovery, and container health checks.</p> </li> </ul> <p>If any of those conditions are not met, the stability status returns <code>STABILIZING</code>.</p>"
        },
        "stabilityStatusAt": {
          "shape": "Timestamp",
          "documentation": "<p>The Unix timestamp for when the task set stability status was retrieved.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The metadata that you apply to the task set to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define.</p> <p>The following basic restrictions apply to tags:</p> <ul> <li> <p>Maximum number of tags per resource - 50</p> </li> <li> <p>For each resource, each tag key must be unique, and each tag key can have only one value.</p> </li> <li> <p>Maximum key length - 128 Unicode characters in UTF-8</p> </li> <li> <p>Maximum value length - 256 Unicode characters in UTF-8</p> </li> <li> <p>If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.</p> </li> <li> <p>Tag keys and values are case-sensitive.</p> </li> <li> <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Information about a set of Amazon ECS tasks in either an AWS CodeDeploy or an <code>EXTERNAL</code> deployment. An Amazon ECS task set includes details such as the desired number of tasks, how many tasks are running, and whether the task set serves production traffic.</p>"
    },
    "TaskSetField": {
      "type": "string",
      "enum": [
        "TAGS"
      ]
    },
    "TaskSetFieldList": {
      "type": "list",
      "member": {
        "shape": "TaskSetField"
      }
    },
    "TaskSets": {
      "type": "list",
      "member": {
        "shape": "TaskSet"
      }
    },
    "TaskStopCode": {
      "type": "string",
      "enum": [
        "TaskFailedToStart",
        "EssentialContainerExited",
        "UserInitiated"
      ]
    },
    "Tasks": {
      "type": "list",
      "member": {
        "shape": "Task"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Tmpfs": {
      "type": "structure",
      "required": [
        "containerPath",
        "size"
      ],
      "members": {
        "containerPath": {
          "shape": "String",
          "documentation": "<p>The absolute file path where the tmpfs volume is to be mounted.</p>"
        },
        "size": {
          "shape": "Integer",
          "documentation": "<p>The size (in MiB) of the tmpfs volume.</p>"
        },
        "mountOptions": {
          "shape": "StringList",
          "documentation": "<p>The list of tmpfs volume mount options.</p> <p>Valid values: <code>\"defaults\" | \"ro\" | \"rw\" | \"suid\" | \"nosuid\" | \"dev\" | \"nodev\" | \"exec\" | \"noexec\" | \"sync\" | \"async\" | \"dirsync\" | \"remount\" | \"mand\" | \"nomand\" | \"atime\" | \"noatime\" | \"diratime\" | \"nodiratime\" | \"bind\" | \"rbind\" | \"unbindable\" | \"runbindable\" | \"private\" | \"rprivate\" | \"shared\" | \"rshared\" | \"slave\" | \"rslave\" | \"relatime\" | \"norelatime\" | \"strictatime\" | \"nostrictatime\" | \"mode\" | \"uid\" | \"gid\" | \"nr_inodes\" | \"nr_blocks\" | \"mpol\"</code> </p>"
        }
      },
      "documentation": "<p>The container path, mount options, and size of the tmpfs mount.</p>"
    },
    "TmpfsList": {
      "type": "list",
      "member": {
        "shape": "Tmpfs"
      }
    },
    "TransportProtocol": {
      "type": "string",
      "enum": [
        "tcp",
        "udp"
      ]
    },
    "Ulimit": {
      "type": "structure",
      "required": [
        "name",
        "softLimit",
        "hardLimit"
      ],
      "members": {
        "name": {
          "shape": "UlimitName",
          "documentation": "<p>The <code>type</code> of the <code>ulimit</code>.</p>"
        },
        "softLimit": {
          "shape": "Integer",
          "documentation": "<p>The soft limit for the ulimit type.</p>"
        },
        "hardLimit": {
          "shape": "Integer",
          "documentation": "<p>The hard limit for the ulimit type.</p>"
        }
      },
      "documentation": "<p>The <code>ulimit</code> settings to pass to the container.</p>"
    },
    "UlimitList": {
      "type": "list",
      "member": {
        "shape": "Ulimit"
      }
    },
    "UlimitName": {
      "type": "string",
      "enum": [
        "core",
        "cpu",
        "data",
        "fsize",
        "locks",
        "memlock",
        "msgqueue",
        "nice",
        "nofile",
        "nproc",
        "rss",
        "rtprio",
        "rttime",
        "sigpending",
        "stack"
      ]
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
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource from which to delete tags. Currently, the supported resources are Amazon ECS capacity providers, tasks, services, task definitions, clusters, and container instances.</p>"
        },
        "tagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>The keys of the tags to be removed.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateClusterSettingsRequest": {
      "type": "structure",
      "required": [
        "cluster",
        "settings"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The name of the cluster to modify the settings for.</p>"
        },
        "settings": {
          "shape": "ClusterSettings",
          "documentation": "<p>The setting to use by default for a cluster. This parameter is used to enable CloudWatch Container Insights for a cluster. If this value is specified, it will override the <code>containerInsights</code> value set with <a>PutAccountSetting</a> or <a>PutAccountSettingDefault</a>.</p>"
        }
      }
    },
    "UpdateClusterSettingsResponse": {
      "type": "structure",
      "members": {
        "cluster": {
          "shape": "Cluster"
        }
      }
    },
    "UpdateContainerAgentRequest": {
      "type": "structure",
      "required": [
        "containerInstance"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that your container instance is running on. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "containerInstance": {
          "shape": "String",
          "documentation": "<p>The container instance ID or full ARN entries for the container instance on which you would like to update the Amazon ECS container agent.</p>"
        }
      }
    },
    "UpdateContainerAgentResponse": {
      "type": "structure",
      "members": {
        "containerInstance": {
          "shape": "ContainerInstance",
          "documentation": "<p>The container instance for which the container agent was updated.</p>"
        }
      }
    },
    "UpdateContainerInstancesStateRequest": {
      "type": "structure",
      "required": [
        "containerInstances",
        "status"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to update. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "containerInstances": {
          "shape": "StringList",
          "documentation": "<p>A list of container instance IDs or full ARN entries.</p>"
        },
        "status": {
          "shape": "ContainerInstanceStatus",
          "documentation": "<p>The container instance state with which to update the container instance. The only valid values for this action are <code>ACTIVE</code> and <code>DRAINING</code>. A container instance can only be updated to <code>DRAINING</code> status once it has reached an <code>ACTIVE</code> state. If a container instance is in <code>REGISTERING</code>, <code>DEREGISTERING</code>, or <code>REGISTRATION_FAILED</code> state you can describe the container instance but will be unable to update the container instance state.</p>"
        }
      }
    },
    "UpdateContainerInstancesStateResponse": {
      "type": "structure",
      "members": {
        "containerInstances": {
          "shape": "ContainerInstances",
          "documentation": "<p>The list of container instances.</p>"
        },
        "failures": {
          "shape": "Failures",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "UpdateServicePrimaryTaskSetRequest": {
      "type": "structure",
      "required": [
        "cluster",
        "service",
        "primaryTaskSet"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task set exists in.</p>"
        },
        "service": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the service that the task set exists in.</p>"
        },
        "primaryTaskSet": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the task set to set as the primary task set in the deployment.</p>"
        }
      }
    },
    "UpdateServicePrimaryTaskSetResponse": {
      "type": "structure",
      "members": {
        "taskSet": {
          "shape": "TaskSet"
        }
      }
    },
    "UpdateServiceRequest": {
      "type": "structure",
      "required": [
        "service"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that your service is running on. If you do not specify a cluster, the default cluster is assumed.</p>"
        },
        "service": {
          "shape": "String",
          "documentation": "<p>The name of the service to update.</p>"
        },
        "desiredCount": {
          "shape": "BoxedInteger",
          "documentation": "<p>The number of instantiations of the task to place and keep running in your service.</p>"
        },
        "taskDefinition": {
          "shape": "String",
          "documentation": "<p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or full ARN of the task definition to run in your service. If a <code>revision</code> is not specified, the latest <code>ACTIVE</code> revision is used. If you modify the task definition with <code>UpdateService</code>, Amazon ECS spawns a task with the new version of the task definition and then stops an old task after the new version is running.</p>"
        },
        "capacityProviderStrategy": {
          "shape": "CapacityProviderStrategy",
          "documentation": "<p>The capacity provider strategy to update the service to use.</p> <p>If the service is using the default capacity provider strategy for the cluster, the service can be updated to use one or more capacity providers as opposed to the default capacity provider strategy. However, when a service is using a capacity provider strategy that is not the default capacity provider strategy, the service cannot be updated to use the cluster's default capacity provider strategy.</p> <p>A capacity provider strategy consists of one or more capacity providers along with the <code>base</code> and <code>weight</code> to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The <a>PutClusterCapacityProviders</a> API is used to associate a capacity provider with a cluster. Only capacity providers with an <code>ACTIVE</code> or <code>UPDATING</code> status can be used.</p> <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the <a>CreateCapacityProvider</a> API operation.</p> <p>To use a AWS Fargate capacity provider, specify either the <code>FARGATE</code> or <code>FARGATE_SPOT</code> capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used.</p> <p>The <a>PutClusterCapacityProviders</a> API operation is used to update the list of available capacity providers for a cluster after the cluster is created.</p> <p/>"
        },
        "deploymentConfiguration": {
          "shape": "DeploymentConfiguration",
          "documentation": "<p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>"
        },
        "networkConfiguration": {
          "shape": "NetworkConfiguration"
        },
        "placementConstraints": {
          "shape": "PlacementConstraints",
          "documentation": "<p>An array of task placement constraint objects to update the service to use. If no value is specified, the existing placement constraints for the service will remain unchanged. If this value is specified, it will override any existing placement constraints defined for the service. To remove all existing placement constraints, specify an empty array.</p> <p>You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime).</p>"
        },
        "placementStrategy": {
          "shape": "PlacementStrategies",
          "documentation": "<p>The task placement strategy objects to update the service to use. If no value is specified, the existing placement strategy for the service will remain unchanged. If this value is specified, it will override the existing placement strategy defined for the service. To remove an existing placement strategy, specify an empty object.</p> <p>You can specify a maximum of five strategy rules per service.</p>"
        },
        "platformVersion": {
          "shape": "String",
          "documentation": "<p>The platform version on which your tasks in the service are running. A platform version is only specified for tasks using the Fargate launch type. If a platform version is not specified, the <code>LATEST</code> platform version is used by default. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html\">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>"
        },
        "forceNewDeployment": {
          "shape": "Boolean",
          "documentation": "<p>Whether to force a new deployment of the service. Deployments are not forced by default. You can use this option to trigger a new deployment with no service definition changes. For example, you can update a service's tasks to use a newer Docker image with the same image/tag combination (<code>my_image:latest</code>) or to roll Fargate tasks onto a newer platform version.</p>"
        },
        "healthCheckGracePeriodSeconds": {
          "shape": "BoxedInteger",
          "documentation": "<p>The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only valid if your service is configured to use a load balancer. If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds. During that time, the Amazon ECS service scheduler ignores the Elastic Load Balancing health check status. This grace period can prevent the ECS service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.</p>"
        }
      }
    },
    "UpdateServiceResponse": {
      "type": "structure",
      "members": {
        "service": {
          "shape": "Service",
          "documentation": "<p>The full description of your service following the update call.</p>"
        }
      }
    },
    "UpdateTaskSetRequest": {
      "type": "structure",
      "required": [
        "cluster",
        "service",
        "taskSet",
        "scale"
      ],
      "members": {
        "cluster": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task set exists in.</p>"
        },
        "service": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the service that the task set exists in.</p>"
        },
        "taskSet": {
          "shape": "String",
          "documentation": "<p>The short name or full Amazon Resource Name (ARN) of the task set to update.</p>"
        },
        "scale": {
          "shape": "Scale"
        }
      }
    },
    "UpdateTaskSetResponse": {
      "type": "structure",
      "members": {
        "taskSet": {
          "shape": "TaskSet"
        }
      }
    },
    "VersionInfo": {
      "type": "structure",
      "members": {
        "agentVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the Amazon ECS container agent.</p>"
        },
        "agentHash": {
          "shape": "String",
          "documentation": "<p>The Git commit hash for the Amazon ECS container agent build on the <a href=\"https://github.com/aws/amazon-ecs-agent/commits/master\">amazon-ecs-agent </a> GitHub repository.</p>"
        },
        "dockerVersion": {
          "shape": "String",
          "documentation": "<p>The Docker version running on the container instance.</p>"
        }
      },
      "documentation": "<p>The Docker and Amazon ECS container agent version information about a container instance.</p>"
    },
    "Volume": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, and hyphens are allowed. This name is referenced in the <code>sourceVolume</code> parameter of container definition <code>mountPoints</code>.</p>"
        },
        "host": {
          "shape": "HostVolumeProperties",
          "documentation": "<p>This parameter is specified when you are using bind mount host volumes. The contents of the <code>host</code> parameter determine whether your bind mount host volume persists on the host container instance and where it is stored. If the <code>host</code> parameter is empty, then the Docker daemon assigns a host path for your data volume. However, the data is not guaranteed to persist after the containers associated with it stop running.</p> <p>Windows containers can mount whole directories on the same drive as <code>$env:ProgramData</code>. Windows containers cannot mount directories on a different drive, and mount point cannot be across drives. For example, you can mount <code>C:\\my\\path:C:\\my\\path</code> and <code>D:\\:D:\\</code>, but not <code>D:\\my\\path:C:\\my\\path</code> or <code>D:\\:C:\\my\\path</code>.</p>"
        },
        "dockerVolumeConfiguration": {
          "shape": "DockerVolumeConfiguration",
          "documentation": "<p>This parameter is specified when you are using Docker volumes. Docker volumes are only supported when you are using the EC2 launch type. Windows containers only support the use of the <code>local</code> driver. To use bind mounts, specify the <code>host</code> parameter instead.</p>"
        },
        "efsVolumeConfiguration": {
          "shape": "EFSVolumeConfiguration",
          "documentation": "<p>This parameter is specified when you are using an Amazon Elastic File System file system for task storage.</p>"
        }
      },
      "documentation": "<p>A data volume used in a task definition. For tasks that use Amazon Elastic File System (Amazon EFS) file storage, specify an <code>efsVolumeConfiguration</code>. For tasks that use a Docker volume, specify a <code>DockerVolumeConfiguration</code>. For tasks that use a bind mount host volume, specify a <code>host</code> and optional <code>sourcePath</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html\">Using Data Volumes in Tasks</a>.</p>"
    },
    "VolumeFrom": {
      "type": "structure",
      "members": {
        "sourceContainer": {
          "shape": "String",
          "documentation": "<p>The name of another container within the same task definition from which to mount volumes.</p>"
        },
        "readOnly": {
          "shape": "BoxedBoolean",
          "documentation": "<p>If this value is <code>true</code>, the container has read-only access to the volume. If this value is <code>false</code>, then the container can write to the volume. The default value is <code>false</code>.</p>"
        }
      },
      "documentation": "<p>Details on a data volume from another container in the same task definition.</p>"
    },
    "VolumeFromList": {
      "type": "list",
      "member": {
        "shape": "VolumeFrom"
      }
    },
    "VolumeList": {
      "type": "list",
      "member": {
        "shape": "Volume"
      }
    }
  },
  "documentation": "<fullname>Amazon Elastic Container Service</fullname> <p>Amazon Elastic Container Service (Amazon ECS) is a highly scalable, fast, container management service that makes it easy to run, stop, and manage Docker containers on a cluster. You can host your cluster on a serverless infrastructure that is managed by Amazon ECS by launching your services or tasks using the Fargate launch type. For more control, you can host your tasks on a cluster of Amazon Elastic Compute Cloud (Amazon EC2) instances that you manage by using the EC2 launch type. For more information about launch types, see <a href=\"https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html\">Amazon ECS Launch Types</a>.</p> <p>Amazon ECS lets you launch and stop container-based applications with simple API calls, allows you to get the state of your cluster from a centralized service, and gives you access to many familiar Amazon EC2 features.</p> <p>You can use Amazon ECS to schedule the placement of containers across your cluster based on your resource needs, isolation policies, and availability requirements. Amazon ECS eliminates the need for you to operate your own cluster management and configuration management systems or worry about scaling your management infrastructure.</p>"
}
]===]))