local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2013-02-18",
    "endpointPrefix": "opsworks",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS OpsWorks",
    "serviceId": "OpsWorks",
    "signatureVersion": "v4",
    "targetPrefix": "OpsWorks_20130218",
    "uid": "opsworks-2013-02-18"
  },
  "operations": {
    "AssignInstance": {
      "name": "AssignInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssignInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Assign a registered instance to a layer.</p> <ul> <li> <p>You can assign registered on-premises instances to any layer type.</p> </li> <li> <p>You can assign registered Amazon EC2 instances only to custom layers.</p> </li> <li> <p>You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> </li> </ul> <p> <b>Required Permissions</b>: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "AssignVolume": {
      "name": "AssignVolume",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssignVolumeRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling <a>RegisterVolume</a>. After you register the volume, you must call <a>UpdateVolume</a> to specify a mount point before calling <code>AssignVolume</code>. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "AssociateElasticIp": {
      "name": "AssociateElasticIp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateElasticIpRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling <a>RegisterElasticIp</a>. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "AttachElasticLoadBalancer": {
      "name": "AttachElasticLoadBalancer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AttachElasticLoadBalancerRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Attaches an Elastic Load Balancing load balancer to a specified layer. AWS OpsWorks Stacks does not support Application Load Balancer. You can only use Classic Load Balancer with AWS OpsWorks Stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html\">Elastic Load Balancing</a>.</p> <note> <p>You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see <a href=\"https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html\"> Elastic Load Balancing Developer Guide</a>.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "CloneStack": {
      "name": "CloneStack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CloneStackRequest"
      },
      "output": {
        "shape": "CloneStackResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates a clone of a specified stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html\">Clone a Stack</a>. By default, all parameters are set to the values used by the parent stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "CreateApp": {
      "name": "CreateApp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAppRequest"
      },
      "output": {
        "shape": "CreateAppResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates an app for a specified stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Creating Apps</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "CreateDeployment": {
      "name": "CreateDeployment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDeploymentRequest"
      },
      "output": {
        "shape": "CreateDeploymentResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Runs deployment or stack commands. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html\">Deploying Apps</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html\">Run Stack Commands</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "CreateInstance": {
      "name": "CreateInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateInstanceRequest"
      },
      "output": {
        "shape": "CreateInstanceResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates an instance in a specified stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\">Adding an Instance to a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "CreateLayer": {
      "name": "CreateLayer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLayerRequest"
      },
      "output": {
        "shape": "CreateLayerResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Creates a layer. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html\">How to Create a Layer</a>.</p> <note> <p>You should use <b>CreateLayer</b> for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, <b>CreateLayer</b> fails. A stack can have an arbitrary number of custom layers, so you can call <b>CreateLayer</b> as many times as you like for that layer type.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "CreateStack": {
      "name": "CreateStack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateStackRequest"
      },
      "output": {
        "shape": "CreateStackResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Creates a new stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html\">Create a New Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "CreateUserProfile": {
      "name": "CreateUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateUserProfileRequest"
      },
      "output": {
        "shape": "CreateUserProfileResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Creates a new user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeleteApp": {
      "name": "DeleteApp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAppRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeleteInstance": {
      "name": "DeleteInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html\">Deleting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeleteLayer": {
      "name": "DeleteLayer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLayerRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html\">How to Delete a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeleteStack": {
      "name": "DeleteStack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteStackRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html\">Shut Down a Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeleteUserProfile": {
      "name": "DeleteUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUserProfileRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeregisterEcsCluster": {
      "name": "DeregisterEcsCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterEcsClusterRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deregisters a specified Amazon ECS cluster from a stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete\"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html</a>.</p>"
    },
    "DeregisterElasticIp": {
      "name": "DeregisterElasticIp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterElasticIpRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeregisterInstance": {
      "name": "DeregisterInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action cannot be used with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeregisterRdsDbInstance": {
      "name": "DeregisterRdsDbInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterRdsDbInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deregisters an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DeregisterVolume": {
      "name": "DeregisterVolume",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterVolumeRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeAgentVersions": {
      "name": "DescribeAgentVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAgentVersionsRequest"
      },
      "output": {
        "shape": "DescribeAgentVersionsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the available AWS OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. <code>DescribeAgentVersions</code> returns a list of available agent versions for the specified stack or configuration manager.</p>"
    },
    "DescribeApps": {
      "name": "DescribeApps",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAppsRequest"
      },
      "output": {
        "shape": "DescribeAppsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Requests a description of a specified set of apps.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeCommands": {
      "name": "DescribeCommands",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCommandsRequest"
      },
      "output": {
        "shape": "DescribeCommandsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the results of specified commands.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeDeployments": {
      "name": "DescribeDeployments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDeploymentsRequest"
      },
      "output": {
        "shape": "DescribeDeploymentsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Requests a description of a specified set of deployments.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeEcsClusters": {
      "name": "DescribeEcsClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEcsClustersRequest"
      },
      "output": {
        "shape": "DescribeEcsClustersResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the <code>MaxResults</code> and <code>NextToken</code> parameters to paginate the response. However, AWS OpsWorks Stacks currently supports only one cluster per layer, so the result set has a maximum of one element.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>"
    },
    "DescribeElasticIps": {
      "name": "DescribeElasticIps",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeElasticIpsRequest"
      },
      "output": {
        "shape": "DescribeElasticIpsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP addresses</a>.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeElasticLoadBalancers": {
      "name": "DescribeElasticLoadBalancers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeElasticLoadBalancersRequest"
      },
      "output": {
        "shape": "DescribeElasticLoadBalancersResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes a stack's Elastic Load Balancing instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeInstances": {
      "name": "DescribeInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstancesRequest"
      },
      "output": {
        "shape": "DescribeInstancesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Requests a description of a set of instances.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeLayers": {
      "name": "DescribeLayers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLayersRequest"
      },
      "output": {
        "shape": "DescribeLayersResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Requests a description of one or more layers in a specified stack.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeLoadBasedAutoScaling": {
      "name": "DescribeLoadBasedAutoScaling",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeLoadBasedAutoScalingRequest"
      },
      "output": {
        "shape": "DescribeLoadBasedAutoScalingResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes load-based auto scaling configurations for specified layers.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeMyUserProfile": {
      "name": "DescribeMyUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "DescribeMyUserProfileResult"
      },
      "documentation": "<p>Describes a user's SSH information.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeOperatingSystems": {
      "name": "DescribeOperatingSystems",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "DescribeOperatingSystemsResponse"
      },
      "documentation": "<p>Describes the operating systems that are supported by AWS OpsWorks Stacks.</p>"
    },
    "DescribePermissions": {
      "name": "DescribePermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePermissionsRequest"
      },
      "output": {
        "shape": "DescribePermissionsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the permissions for a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeRaidArrays": {
      "name": "DescribeRaidArrays",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRaidArraysRequest"
      },
      "output": {
        "shape": "DescribeRaidArraysResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describe an instance's RAID arrays.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeRdsDbInstances": {
      "name": "DescribeRdsDbInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRdsDbInstancesRequest"
      },
      "output": {
        "shape": "DescribeRdsDbInstancesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes Amazon RDS instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>"
    },
    "DescribeServiceErrors": {
      "name": "DescribeServiceErrors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeServiceErrorsRequest"
      },
      "output": {
        "shape": "DescribeServiceErrorsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes AWS OpsWorks Stacks service errors.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p> <p>This call accepts only one resource-identifying parameter.</p>"
    },
    "DescribeStackProvisioningParameters": {
      "name": "DescribeStackProvisioningParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStackProvisioningParametersRequest"
      },
      "output": {
        "shape": "DescribeStackProvisioningParametersResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Requests a description of a stack's provisioning parameters.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeStackSummary": {
      "name": "DescribeStackSummary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStackSummaryRequest"
      },
      "output": {
        "shape": "DescribeStackSummaryResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as <code>running_setup</code> or <code>online</code>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeStacks": {
      "name": "DescribeStacks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStacksRequest"
      },
      "output": {
        "shape": "DescribeStacksResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Requests a description of one or more stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeTimeBasedAutoScaling": {
      "name": "DescribeTimeBasedAutoScaling",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTimeBasedAutoScalingRequest"
      },
      "output": {
        "shape": "DescribeTimeBasedAutoScalingResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes time-based auto scaling configurations for specified instances.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeUserProfiles": {
      "name": "DescribeUserProfiles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeUserProfilesRequest"
      },
      "output": {
        "shape": "DescribeUserProfilesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describe specified users.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DescribeVolumes": {
      "name": "DescribeVolumes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeVolumesRequest"
      },
      "output": {
        "shape": "DescribeVolumesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes an instance's Amazon EBS volumes.</p> <note> <p>This call accepts only one resource-identifying parameter.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DetachElasticLoadBalancer": {
      "name": "DetachElasticLoadBalancer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetachElasticLoadBalancerRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Detaches a specified Elastic Load Balancing instance from its layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "DisassociateElasticIp": {
      "name": "DisassociateElasticIp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateElasticIpRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "GetHostnameSuggestion": {
      "name": "GetHostnameSuggestion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetHostnameSuggestionRequest"
      },
      "output": {
        "shape": "GetHostnameSuggestionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets a generated host name for the specified layer, based on the current host name theme.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "GrantAccess": {
      "name": "GrantAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GrantAccessRequest"
      },
      "output": {
        "shape": "GrantAccessResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<note> <p>This action can be used only with Windows stacks.</p> </note> <p>Grants RDP access to a Windows instance for a specified time period.</p>"
    },
    "ListTags": {
      "name": "ListTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsRequest"
      },
      "output": {
        "shape": "ListTagsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns a list of tags that are applied to the specified stack or layer.</p>"
    },
    "RebootInstance": {
      "name": "RebootInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebootInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Reboots a specified instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html\">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "RegisterEcsCluster": {
      "name": "RegisterEcsCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterEcsClusterRequest"
      },
      "output": {
        "shape": "RegisterEcsClusterResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html\"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\"> Managing User Permissions</a>.</p>"
    },
    "RegisterElasticIp": {
      "name": "RegisterElasticIp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterElasticIpRequest"
      },
      "output": {
        "shape": "RegisterElasticIpResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling <a>DeregisterElasticIp</a>. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "RegisterInstance": {
      "name": "RegisterInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterInstanceRequest"
      },
      "output": {
        "shape": "RegisterInstanceResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack.</p> <note> <p>We do not recommend using this action to register instances. The complete registration operation includes two tasks: installing the AWS OpsWorks Stacks agent on the instance, and registering the instance with the stack. <code>RegisterInstance</code> handles only the second step. You should instead use the AWS CLI <code>register</code> command, which performs the entire registration operation. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html\"> Registering an Instance with an AWS OpsWorks Stacks Stack</a>.</p> </note> <p>Registered instances have the same requirements as instances that are created by using the <a>CreateInstance</a> API. For example, registered instances must be running a supported Linux-based operating system, and they must have a supported instance type. For more information about requirements for instances that you want to register, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html\"> Preparing the Instance</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "RegisterRdsDbInstance": {
      "name": "RegisterRdsDbInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterRdsDbInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Registers an Amazon RDS instance with a stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "RegisterVolume": {
      "name": "RegisterVolume",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterVolumeRequest"
      },
      "output": {
        "shape": "RegisterVolumeResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling <a>DeregisterVolume</a>. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "SetLoadBasedAutoScaling": {
      "name": "SetLoadBasedAutoScaling",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SetLoadBasedAutoScalingRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Specify the load-based auto scaling configuration for a specified layer. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html\">Managing Load with Time-based and Load-based Instances</a>.</p> <note> <p>To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "SetPermission": {
      "name": "SetPermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SetPermissionRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Specifies a user's permissions. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html\">Security and Permissions</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "SetTimeBasedAutoScaling": {
      "name": "SetTimeBasedAutoScaling",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SetTimeBasedAutoScalingRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Specify the time-based auto scaling configuration for a specified instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html\">Managing Load with Time-based and Load-based Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "StartInstance": {
      "name": "StartInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Starts a specified instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html\">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "StartStack": {
      "name": "StartStack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartStackRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Starts a stack's instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "StopInstance": {
      "name": "StopInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html\">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "StopStack": {
      "name": "StopStack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopStackRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Stops a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
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
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks. For more information about how tagging works, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html\">Tags</a> in the AWS OpsWorks User Guide.</p>"
    },
    "UnassignInstance": {
      "name": "UnassignInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UnassignInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Unassigns a registered instance from all layers that are using the instance. The instance remains in the stack as an unassigned instance, and can be assigned to another layer as needed. You cannot use this action with instances that were created with AWS OpsWorks Stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UnassignVolume": {
      "name": "UnassignVolume",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UnassignVolumeRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
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
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes tags from a specified stack or layer.</p>"
    },
    "UpdateApp": {
      "name": "UpdateApp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAppRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UpdateElasticIp": {
      "name": "UpdateElasticIp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateElasticIpRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a registered Elastic IP address's name. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UpdateInstance": {
      "name": "UpdateInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a specified instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UpdateLayer": {
      "name": "UpdateLayer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateLayerRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a specified layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UpdateMyUserProfile": {
      "name": "UpdateMyUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateMyUserProfileRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Updates a user's SSH public key.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UpdateRdsDbInstance": {
      "name": "UpdateRdsDbInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRdsDbInstanceRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UpdateStack": {
      "name": "UpdateStack",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateStackRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UpdateUserProfile": {
      "name": "UpdateUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateUserProfileRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates a specified user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information about user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    },
    "UpdateVolume": {
      "name": "UpdateVolume",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateVolumeRequest"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Updates an Amazon EBS volume's name or mount point. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html\">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
    }
  },
  "shapes": {
    "AgentVersion": {
      "type": "structure",
      "members": {
        "Version": {
          "shape": "String",
          "documentation": "<p>The agent version.</p>"
        },
        "ConfigurationManager": {
          "shape": "StackConfigurationManager",
          "documentation": "<p>The configuration manager.</p>"
        }
      },
      "documentation": "<p>Describes an agent version.</p>"
    },
    "AgentVersions": {
      "type": "list",
      "member": {
        "shape": "AgentVersion"
      }
    },
    "App": {
      "type": "structure",
      "members": {
        "AppId": {
          "shape": "String",
          "documentation": "<p>The app ID.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The app stack ID.</p>"
        },
        "Shortname": {
          "shape": "String",
          "documentation": "<p>The app's short name.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The app name.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the app.</p>"
        },
        "DataSources": {
          "shape": "DataSources",
          "documentation": "<p>The app's data sources.</p>"
        },
        "Type": {
          "shape": "AppType",
          "documentation": "<p>The app type.</p>"
        },
        "AppSource": {
          "shape": "Source",
          "documentation": "<p>A <code>Source</code> object that describes the app repository.</p>"
        },
        "Domains": {
          "shape": "Strings",
          "documentation": "<p>The app vhost settings with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>"
        },
        "EnableSsl": {
          "shape": "Boolean",
          "documentation": "<p>Whether to enable SSL for the app.</p>"
        },
        "SslConfiguration": {
          "shape": "SslConfiguration",
          "documentation": "<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>"
        },
        "Attributes": {
          "shape": "AppAttributes",
          "documentation": "<p>The stack attributes.</p>"
        },
        "CreatedAt": {
          "shape": "String",
          "documentation": "<p>When the app was created.</p>"
        },
        "Environment": {
          "shape": "EnvironmentVariables",
          "documentation": "<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>. </p> <note> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variable names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases, but if you do exceed it, you will cause an exception (API) with an \"Environment: is too large (maximum is 20 KB)\" message.</p> </note>"
        }
      },
      "documentation": "<p>A description of the app.</p>"
    },
    "AppAttributes": {
      "type": "map",
      "key": {
        "shape": "AppAttributesKeys"
      },
      "value": {
        "shape": "String"
      }
    },
    "AppAttributesKeys": {
      "type": "string",
      "enum": [
        "DocumentRoot",
        "RailsEnv",
        "AutoBundleOnDeploy",
        "AwsFlowRubySettings"
      ]
    },
    "AppType": {
      "type": "string",
      "enum": [
        "aws-flow-ruby",
        "java",
        "rails",
        "php",
        "nodejs",
        "static",
        "other"
      ]
    },
    "Apps": {
      "type": "list",
      "member": {
        "shape": "App"
      }
    },
    "Architecture": {
      "type": "string",
      "enum": [
        "x86_64",
        "i386"
      ]
    },
    "AssignInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId",
        "LayerIds"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "LayerIds": {
          "shape": "Strings",
          "documentation": "<p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>"
        }
      }
    },
    "AssignVolumeRequest": {
      "type": "structure",
      "required": [
        "VolumeId"
      ],
      "members": {
        "VolumeId": {
          "shape": "String",
          "documentation": "<p>The volume ID.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        }
      }
    },
    "AssociateElasticIpRequest": {
      "type": "structure",
      "required": [
        "ElasticIp"
      ],
      "members": {
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The Elastic IP address.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        }
      }
    },
    "AttachElasticLoadBalancerRequest": {
      "type": "structure",
      "required": [
        "ElasticLoadBalancerName",
        "LayerId"
      ],
      "members": {
        "ElasticLoadBalancerName": {
          "shape": "String",
          "documentation": "<p>The Elastic Load Balancing instance's name.</p>"
        },
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The ID of the layer to which the Elastic Load Balancing instance is to be attached.</p>"
        }
      }
    },
    "AutoScalingThresholds": {
      "type": "structure",
      "members": {
        "InstanceCount": {
          "shape": "Integer",
          "documentation": "<p>The number of instances to add or remove when the load exceeds a threshold.</p>"
        },
        "ThresholdsWaitTime": {
          "shape": "Minute",
          "documentation": "<p>The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.</p>"
        },
        "IgnoreMetricsTime": {
          "shape": "Minute",
          "documentation": "<p>The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events. For example, AWS OpsWorks Stacks adds new instances following an upscaling event but the instances won't start reducing the load until they have been booted and configured. There is no point in raising additional scaling events during that operation, which typically takes several minutes. <code>IgnoreMetricsTime</code> allows you to direct AWS OpsWorks Stacks to suppress scaling events long enough to get the new instances online.</p>"
        },
        "CpuThreshold": {
          "shape": "Double",
          "documentation": "<p>The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.</p>"
        },
        "MemoryThreshold": {
          "shape": "Double",
          "documentation": "<p>The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.</p>"
        },
        "LoadThreshold": {
          "shape": "Double",
          "documentation": "<p>The load threshold. A value of -1 disables the threshold. For more information about how load is computed, see <a href=\"http://en.wikipedia.org/wiki/Load_%28computing%29\">Load (computing)</a>.</p>"
        },
        "Alarms": {
          "shape": "Strings",
          "documentation": "<p>Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack.</p> <note> <p>To use custom alarms, you must update your service role to allow <code>cloudwatch:DescribeAlarms</code>. You can either have AWS OpsWorks Stacks update the role for you when you first use this feature or you can edit the role manually. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html\">Allowing AWS OpsWorks Stacks to Act on Your Behalf</a>.</p> </note>"
        }
      },
      "documentation": "<p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks Stacks starts or stops load-based instances.</p>"
    },
    "AutoScalingType": {
      "type": "string",
      "enum": [
        "load",
        "timer"
      ]
    },
    "BlockDeviceMapping": {
      "type": "structure",
      "members": {
        "DeviceName": {
          "shape": "String",
          "documentation": "<p>The device name that is exposed to the instance, such as <code>/dev/sdh</code>. For the root device, you can use the explicit device name or you can set this parameter to <code>ROOT_DEVICE</code> and AWS OpsWorks Stacks will provide the correct device name.</p>"
        },
        "NoDevice": {
          "shape": "String",
          "documentation": "<p>Suppresses the specified device included in the AMI's block device mapping.</p>"
        },
        "VirtualName": {
          "shape": "String",
          "documentation": "<p>The virtual device name. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html\">BlockDeviceMapping</a>.</p>"
        },
        "Ebs": {
          "shape": "EbsBlockDevice",
          "documentation": "<p>An <code>EBSBlockDevice</code> that defines how to configure an Amazon EBS volume when the instance is launched.</p>"
        }
      },
      "documentation": "<p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html\">BlockDeviceMapping</a> data type. </p>"
    },
    "BlockDeviceMappings": {
      "type": "list",
      "member": {
        "shape": "BlockDeviceMapping"
      }
    },
    "Boolean": {
      "type": "boolean",
      "box": true
    },
    "ChefConfiguration": {
      "type": "structure",
      "members": {
        "ManageBerkshelf": {
          "shape": "Boolean",
          "documentation": "<p>Whether to enable Berkshelf.</p>"
        },
        "BerkshelfVersion": {
          "shape": "String",
          "documentation": "<p>The Berkshelf version.</p>"
        }
      },
      "documentation": "<p>Describes the Chef configuration.</p>"
    },
    "CloneStackRequest": {
      "type": "structure",
      "required": [
        "SourceStackId",
        "ServiceRoleArn"
      ],
      "members": {
        "SourceStackId": {
          "shape": "String",
          "documentation": "<p>The source stack ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The cloned stack name.</p>"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The cloned stack AWS region, such as \"ap-northeast-2\". For more information about AWS regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All instances are launched into this VPC, and you cannot change the ID later.</p> <ul> <li> <p>If your account supports EC2 Classic, the default value is no VPC.</p> </li> <li> <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p> </li> </ul> <p>If the VPC ID corresponds to a default VPC and you have specified either the <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively. </p> <p>If you specify a nondefault VPC ID, note the following:</p> <ul> <li> <p>It must belong to a VPC in your account that is in the specified region.</p> </li> <li> <p>You must specify a value for <code>DefaultSubnetId</code>.</p> </li> </ul> <p>For more information about how to use AWS OpsWorks Stacks with a VPC, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html\">Running a Stack in a VPC</a>. For more information about default VPC and EC2 Classic, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported Platforms</a>. </p>"
        },
        "Attributes": {
          "shape": "StackAttributes",
          "documentation": "<p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>"
        },
        "ServiceRoleArn": {
          "shape": "String",
          "documentation": "<p>The stack AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. If you create a stack by using the AWS OpsWorks Stacks console, it creates the role for you. You can obtain an existing stack's IAM ARN programmatically by calling <a>DescribePermissions</a>. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p> <note> <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p> </note>"
        },
        "DefaultInstanceProfileArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "DefaultOs": {
          "shape": "String",
          "documentation": "<p>The stack's operating system, which must be set to one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p> <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the parent stack's operating system. For more information about supported operating systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p> <note> <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to Windows or Windows to Linux.</p> </note>"
        },
        "HostnameTheme": {
          "shape": "String",
          "documentation": "<p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities_and_Titans</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>"
        },
        "DefaultAvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The cloned stack's default Availability Zone, which must be in the specified region. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see the <code>VpcId</code> parameter description. </p>"
        },
        "DefaultSubnetId": {
          "shape": "String",
          "documentation": "<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration JSON values. The string should be in the following format:</p> <p> <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code> </p> <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to Modify the Stack Configuration Attributes</a> </p>"
        },
        "ConfigurationManager": {
          "shape": "StackConfigurationManager",
          "documentation": "<p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>"
        },
        "ChefConfiguration": {
          "shape": "ChefConfiguration",
          "documentation": "<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"
        },
        "UseCustomCookbooks": {
          "shape": "Boolean",
          "documentation": "<p>Whether to use custom cookbooks.</p>"
        },
        "UseOpsworksSecurityGroups": {
          "shape": "Boolean",
          "documentation": "<p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate Amazon Elastic Compute Cloud (Amazon EC2) security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"
        },
        "CustomCookbooksSource": {
          "shape": "Source",
          "documentation": "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>"
        },
        "DefaultSshKeyName": {
          "shape": "String",
          "documentation": "<p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\"> create an instance</a>. </p>"
        },
        "ClonePermissions": {
          "shape": "Boolean",
          "documentation": "<p>Whether to clone the source stack's permissions.</p>"
        },
        "CloneAppIds": {
          "shape": "Strings",
          "documentation": "<p>A list of source stack app IDs to be included in the cloned stack.</p>"
        },
        "DefaultRootDeviceType": {
          "shape": "RootDeviceType",
          "documentation": "<p>The default root device type. This value is used by default for all instances in the cloned stack, but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"
        },
        "AgentVersion": {
          "shape": "String",
          "documentation": "<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is <code>LATEST</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>"
        }
      }
    },
    "CloneStackResult": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The cloned stack ID.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>CloneStack</code> request.</p>"
    },
    "CloudWatchLogsConfiguration": {
      "type": "structure",
      "members": {
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Whether CloudWatch Logs is enabled for a layer.</p>"
        },
        "LogStreams": {
          "shape": "CloudWatchLogsLogStreams",
          "documentation": "<p>A list of configuration options for CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p>Describes the Amazon CloudWatch logs configuration for a layer.</p>"
    },
    "CloudWatchLogsEncoding": {
      "type": "string",
      "documentation": "<p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>",
      "enum": [
        "ascii",
        "big5",
        "big5hkscs",
        "cp037",
        "cp424",
        "cp437",
        "cp500",
        "cp720",
        "cp737",
        "cp775",
        "cp850",
        "cp852",
        "cp855",
        "cp856",
        "cp857",
        "cp858",
        "cp860",
        "cp861",
        "cp862",
        "cp863",
        "cp864",
        "cp865",
        "cp866",
        "cp869",
        "cp874",
        "cp875",
        "cp932",
        "cp949",
        "cp950",
        "cp1006",
        "cp1026",
        "cp1140",
        "cp1250",
        "cp1251",
        "cp1252",
        "cp1253",
        "cp1254",
        "cp1255",
        "cp1256",
        "cp1257",
        "cp1258",
        "euc_jp",
        "euc_jis_2004",
        "euc_jisx0213",
        "euc_kr",
        "gb2312",
        "gbk",
        "gb18030",
        "hz",
        "iso2022_jp",
        "iso2022_jp_1",
        "iso2022_jp_2",
        "iso2022_jp_2004",
        "iso2022_jp_3",
        "iso2022_jp_ext",
        "iso2022_kr",
        "latin_1",
        "iso8859_2",
        "iso8859_3",
        "iso8859_4",
        "iso8859_5",
        "iso8859_6",
        "iso8859_7",
        "iso8859_8",
        "iso8859_9",
        "iso8859_10",
        "iso8859_13",
        "iso8859_14",
        "iso8859_15",
        "iso8859_16",
        "johab",
        "koi8_r",
        "koi8_u",
        "mac_cyrillic",
        "mac_greek",
        "mac_iceland",
        "mac_latin2",
        "mac_roman",
        "mac_turkish",
        "ptcp154",
        "shift_jis",
        "shift_jis_2004",
        "shift_jisx0213",
        "utf_32",
        "utf_32_be",
        "utf_32_le",
        "utf_16",
        "utf_16_be",
        "utf_16_le",
        "utf_7",
        "utf_8",
        "utf_8_sig"
      ]
    },
    "CloudWatchLogsInitialPosition": {
      "type": "string",
      "documentation": "<p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. It's only used if there is no state persisted for that log stream.</p>",
      "enum": [
        "start_of_file",
        "end_of_file"
      ]
    },
    "CloudWatchLogsLogStream": {
      "type": "structure",
      "members": {
        "LogGroupName": {
          "shape": "String",
          "documentation": "<p>Specifies the destination log group. A log group is created automatically if it doesn't already exist. Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).</p>"
        },
        "DatetimeFormat": {
          "shape": "String",
          "documentation": "<p>Specifies how the time stamp is extracted from logs. For more information, see the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html\">CloudWatch Logs Agent Reference</a>.</p>"
        },
        "TimeZone": {
          "shape": "CloudWatchLogsTimeZone",
          "documentation": "<p>Specifies the time zone of log event time stamps.</p>"
        },
        "File": {
          "shape": "String",
          "documentation": "<p>Specifies log files that you want to push to CloudWatch Logs.</p> <p> <code>File</code> can point to a specific file or multiple files (by using wild card characters such as <code>/var/log/system.log*</code>). Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use wild card characters to specify a series of files of the same type, such as <code>access_log.2014-06-01-01</code>, <code>access_log.2014-06-01-02</code>, and so on by using a pattern like <code>access_log.*</code>. Don't use a wildcard to match multiple file types, such as <code>access_log_80</code> and <code>access_log_443</code>. To specify multiple, different file types, add another log stream entry to the configuration file, so that each log file type is stored in a different log group.</p> <p>Zipped files are not supported.</p>"
        },
        "FileFingerprintLines": {
          "shape": "String",
          "documentation": "<p>Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. Fingerprint lines are not sent to CloudWatch Logs unless all specified lines are available.</p>"
        },
        "MultiLineStartPattern": {
          "shape": "String",
          "documentation": "<p>Specifies the pattern for identifying the start of a log message.</p>"
        },
        "InitialPosition": {
          "shape": "CloudWatchLogsInitialPosition",
          "documentation": "<p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. This setting is only used if there is no state persisted for that log stream.</p>"
        },
        "Encoding": {
          "shape": "CloudWatchLogsEncoding",
          "documentation": "<p>Specifies the encoding of the log file so that the file can be read correctly. The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>"
        },
        "BufferDuration": {
          "shape": "Integer",
          "documentation": "<p>Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.</p>"
        },
        "BatchCount": {
          "shape": "Integer",
          "documentation": "<p>Specifies the max number of log events in a batch, up to 10000. The default value is 1000.</p>"
        },
        "BatchSize": {
          "shape": "Integer",
          "documentation": "<p>Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.</p>"
        }
      },
      "documentation": "<p>Describes the Amazon CloudWatch logs configuration for a layer. For detailed information about members of this data type, see the <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html\">CloudWatch Logs Agent Reference</a>.</p>"
    },
    "CloudWatchLogsLogStreams": {
      "type": "list",
      "member": {
        "shape": "CloudWatchLogsLogStream"
      },
      "documentation": "<p>Describes the Amazon CloudWatch logs configuration for a layer.</p>"
    },
    "CloudWatchLogsTimeZone": {
      "type": "string",
      "documentation": "<p>The preferred time zone for logs streamed to CloudWatch Logs. Valid values are <code>LOCAL</code> and <code>UTC</code>, for Coordinated Universal Time.</p>",
      "enum": [
        "LOCAL",
        "UTC"
      ]
    },
    "Command": {
      "type": "structure",
      "members": {
        "CommandId": {
          "shape": "String",
          "documentation": "<p>The command ID.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The ID of the instance where the command was executed.</p>"
        },
        "DeploymentId": {
          "shape": "String",
          "documentation": "<p>The command deployment ID.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>Date and time when the command was run.</p>"
        },
        "AcknowledgedAt": {
          "shape": "DateTime",
          "documentation": "<p>Date and time when the command was acknowledged.</p>"
        },
        "CompletedAt": {
          "shape": "DateTime",
          "documentation": "<p>Date when the command completed.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The command status:</p> <ul> <li> <p>failed</p> </li> <li> <p>successful</p> </li> <li> <p>skipped</p> </li> <li> <p>pending</p> </li> </ul>"
        },
        "ExitCode": {
          "shape": "Integer",
          "documentation": "<p>The command exit code.</p>"
        },
        "LogUrl": {
          "shape": "String",
          "documentation": "<p>The URL of the command log.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The command type:</p> <ul> <li> <p> <code>configure</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>execute_recipes</code> </p> </li> <li> <p> <code>install_dependencies</code> </p> </li> <li> <p> <code>restart</code> </p> </li> <li> <p> <code>rollback</code> </p> </li> <li> <p> <code>setup</code> </p> </li> <li> <p> <code>start</code> </p> </li> <li> <p> <code>stop</code> </p> </li> <li> <p> <code>undeploy</code> </p> </li> <li> <p> <code>update_custom_cookbooks</code> </p> </li> <li> <p> <code>update_dependencies</code> </p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes a command.</p>"
    },
    "Commands": {
      "type": "list",
      "member": {
        "shape": "Command"
      }
    },
    "CreateAppRequest": {
      "type": "structure",
      "required": [
        "StackId",
        "Name",
        "Type"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "Shortname": {
          "shape": "String",
          "documentation": "<p>The app's short name.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The app name.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the app.</p>"
        },
        "DataSources": {
          "shape": "DataSources",
          "documentation": "<p>The app's data source.</p>"
        },
        "Type": {
          "shape": "AppType",
          "documentation": "<p>The app type. Each supported type is associated with a particular layer. For example, PHP applications are associated with a PHP layer. AWS OpsWorks Stacks deploys an application to those instances that are members of the corresponding layer. If your app isn't one of the standard types, or you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>"
        },
        "AppSource": {
          "shape": "Source",
          "documentation": "<p>A <code>Source</code> object that specifies the app repository.</p>"
        },
        "Domains": {
          "shape": "Strings",
          "documentation": "<p>The app virtual host settings, with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>"
        },
        "EnableSsl": {
          "shape": "Boolean",
          "documentation": "<p>Whether to enable SSL for the app.</p>"
        },
        "SslConfiguration": {
          "shape": "SslConfiguration",
          "documentation": "<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>"
        },
        "Attributes": {
          "shape": "AppAttributes",
          "documentation": "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"
        },
        "Environment": {
          "shape": "EnvironmentVariables",
          "documentation": "<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>.</p> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, \"Environment: is too large (maximum is 20KB).\"</p> <note> <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p> </note>"
        }
      }
    },
    "CreateAppResult": {
      "type": "structure",
      "members": {
        "AppId": {
          "shape": "String",
          "documentation": "<p>The app ID.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>CreateApp</code> request.</p>"
    },
    "CreateDeploymentRequest": {
      "type": "structure",
      "required": [
        "StackId",
        "Command"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "AppId": {
          "shape": "String",
          "documentation": "<p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>"
        },
        "InstanceIds": {
          "shape": "Strings",
          "documentation": "<p>The instance IDs for the deployment targets.</p>"
        },
        "LayerIds": {
          "shape": "Strings",
          "documentation": "<p>The layer IDs for the deployment targets.</p>"
        },
        "Command": {
          "shape": "DeploymentCommand",
          "documentation": "<p>A <code>DeploymentCommand</code> object that specifies the deployment command and any associated arguments.</p>"
        },
        "Comment": {
          "shape": "String",
          "documentation": "<p>A user-defined comment.</p>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default stack configuration JSON values. The string should be in the following format:</p> <p> <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code> </p> <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to Modify the Stack Configuration Attributes</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\">Overriding Attributes With Custom JSON</a>.</p>"
        }
      }
    },
    "CreateDeploymentResult": {
      "type": "structure",
      "members": {
        "DeploymentId": {
          "shape": "String",
          "documentation": "<p>The deployment ID, which can be used with other requests to identify the deployment.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>CreateDeployment</code> request.</p>"
    },
    "CreateInstanceRequest": {
      "type": "structure",
      "required": [
        "StackId",
        "LayerIds",
        "InstanceType"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "LayerIds": {
          "shape": "Strings",
          "documentation": "<p>An array that contains the instance's layer IDs.</p>"
        },
        "InstanceType": {
          "shape": "String",
          "documentation": "<p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types, open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>. The <b>Size</b> list contains the currently supported types. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance Families and Types</a>. The parameter values that you use to specify the various types are in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>"
        },
        "AutoScalingType": {
          "shape": "AutoScalingType",
          "documentation": "<p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>"
        },
        "Hostname": {
          "shape": "String",
          "documentation": "<p>The instance host name.</p>"
        },
        "Os": {
          "shape": "String",
          "documentation": "<p>The instance's operating system, which must be set to one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>.</p> </li> </ul> <p>For more information about the supported operating systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p> <p>The default option is the current Amazon Linux version. If you set this parameter to <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. For more information about supported operating systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">Operating Systems</a>For more information about how to use custom AMIs with AWS OpsWorks Stacks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using Custom AMIs</a>.</p>"
        },
        "AmiId": {
          "shape": "String",
          "documentation": "<p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the supported operating systems. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using Custom AMIs</a>.</p> <note> <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p> </note>"
        },
        "SshKeyName": {
          "shape": "String",
          "documentation": "<p>The instance's Amazon EC2 key-pair name.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The instance Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "VirtualizationType": {
          "shape": "String",
          "documentation": "<p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>"
        },
        "SubnetId": {
          "shape": "String",
          "documentation": "<p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's default subnet ID value and direct AWS OpsWorks Stacks to launch the instance in a different subnet.</p>"
        },
        "Architecture": {
          "shape": "Architecture",
          "documentation": "<p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance Families and Types</a>.</p>"
        },
        "RootDeviceType": {
          "shape": "RootDeviceType",
          "documentation": "<p>The instance root device type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"
        },
        "BlockDeviceMappings": {
          "shape": "BlockDeviceMappings",
          "documentation": "<p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block devices. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html\">Block Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>"
        },
        "InstallUpdatesOnBoot": {
          "shape": "Boolean",
          "documentation": "<p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code> to ensure that your instances have the latest security updates.</p> </note>"
        },
        "EbsOptimized": {
          "shape": "Boolean",
          "documentation": "<p>Whether to create an Amazon EBS-optimized instance.</p>"
        },
        "AgentVersion": {
          "shape": "String",
          "documentation": "<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p> <code>INHERIT</code> - Use the stack's default agent version setting.</p> </li> <li> <p> <i>version_number</i> - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.</p> </li> </ul> <p>The default setting is <code>INHERIT</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>"
        },
        "Tenancy": {
          "shape": "String",
          "documentation": "<p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, inherit tenancy settings from the VPC. The following are valid values for this parameter: <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes in tenancy options, we recommend that you research tenancy options before choosing them for your instances. For more information about dedicated hosts, see <a href=\"http://aws.amazon.com/ec2/dedicated-hosts/\">Dedicated Hosts Overview</a> and <a href=\"http://aws.amazon.com/ec2/dedicated-hosts/\">Amazon EC2 Dedicated Hosts</a>. For more information about dedicated instances, see <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html\">Dedicated Instances</a> and <a href=\"http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/\">Amazon EC2 Dedicated Instances</a>.</p>"
        }
      }
    },
    "CreateInstanceResult": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>CreateInstance</code> request.</p>"
    },
    "CreateLayerRequest": {
      "type": "structure",
      "required": [
        "StackId",
        "Type",
        "Name",
        "Shortname"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The layer stack ID.</p>"
        },
        "Type": {
          "shape": "LayerType",
          "documentation": "<p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. Built-in layers are not available in Chef 12 stacks.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The layer name, which is used by the console.</p>"
        },
        "Shortname": {
          "shape": "String",
          "documentation": "<p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters, which are limited to the alphanumeric characters, '-', '_', and '.'.</p> <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html\">Layer Reference</a>.</p>"
        },
        "Attributes": {
          "shape": "LayerAttributes",
          "documentation": "<p>One or more user-defined key-value pairs to be added to the stack attributes.</p> <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>"
        },
        "CloudWatchLogsConfiguration": {
          "shape": "CloudWatchLogsConfiguration",
          "documentation": "<p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>"
        },
        "CustomInstanceProfileArn": {
          "shape": "String",
          "documentation": "<p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\"> Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the AWS CLI. </p>"
        },
        "CustomSecurityGroupIds": {
          "shape": "Strings",
          "documentation": "<p>An array containing the layer custom security group IDs.</p>"
        },
        "Packages": {
          "shape": "Strings",
          "documentation": "<p>An array of <code>Package</code> objects that describes the layer packages.</p>"
        },
        "VolumeConfigurations": {
          "shape": "VolumeConfigurations",
          "documentation": "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"
        },
        "EnableAutoHealing": {
          "shape": "Boolean",
          "documentation": "<p>Whether to disable auto healing for the layer.</p>"
        },
        "AutoAssignElasticIps": {
          "shape": "Boolean",
          "documentation": "<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit a Layer</a>.</p>"
        },
        "AutoAssignPublicIps": {
          "shape": "Boolean",
          "documentation": "<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit a Layer</a>.</p>"
        },
        "CustomRecipes": {
          "shape": "Recipes",
          "documentation": "<p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>"
        },
        "InstallUpdatesOnBoot": {
          "shape": "Boolean",
          "documentation": "<p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>To ensure that your instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p> </note>"
        },
        "UseEbsOptimizedInstances": {
          "shape": "Boolean",
          "documentation": "<p>Whether to use Amazon EBS-optimized instances.</p>"
        },
        "LifecycleEventConfiguration": {
          "shape": "LifecycleEventConfiguration",
          "documentation": "<p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to specify an execution timeout and enable or disable Elastic Load Balancer connection draining.</p>"
        }
      }
    },
    "CreateLayerResult": {
      "type": "structure",
      "members": {
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The layer ID.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>CreateLayer</code> request.</p>"
    },
    "CreateStackRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Region",
        "ServiceRoleArn",
        "DefaultInstanceProfileArn"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The stack name.</p>"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The stack's AWS region, such as <code>ap-south-1</code>. For more information about Amazon regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p> <note> <p>In the AWS CLI, this API maps to the <code>--stack-region</code> parameter. If the <code>--stack-region</code> parameter and the AWS CLI common parameter <code>--region</code> are set to the same value, the stack uses a <i>regional</i> endpoint. If the <code>--stack-region</code> parameter is not set, but the AWS CLI <code>--region</code> parameter is, this also results in a stack with a <i>regional</i> endpoint. However, if the <code>--region</code> parameter is set to <code>us-east-1</code>, and the <code>--stack-region</code> parameter is set to one of the following, then the stack uses a legacy or <i>classic</i> region: <code>us-west-1, us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1, ap-southeast-2</code>. In this case, the actual API endpoint of the stack is in <code>us-east-1</code>. Only the preceding regions are supported as classic regions in the <code>us-east-1</code> API endpoint. Because it is a best practice to choose the regional endpoint that is closest to where you manage AWS, we recommend that you use regional endpoints for new stacks. The AWS CLI common <code>--region</code> parameter always specifies a regional API endpoint; it cannot be used to specify a classic AWS OpsWorks Stacks region.</p> </note>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched into this VPC. You cannot change the ID later.</p> <ul> <li> <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p> </li> <li> <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p> </li> </ul> <p>If the VPC ID corresponds to a default VPC and you have specified either the <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only, AWS OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, AWS OpsWorks Stacks sets these parameters to the first valid Availability Zone for the specified region and the corresponding default VPC subnet ID, respectively.</p> <p>If you specify a nondefault VPC ID, note the following:</p> <ul> <li> <p>It must belong to a VPC in your account that is in the specified region.</p> </li> <li> <p>You must specify a value for <code>DefaultSubnetId</code>.</p> </li> </ul> <p>For more information about how to use AWS OpsWorks Stacks with a VPC, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html\">Running a Stack in a VPC</a>. For more information about default VPC and EC2-Classic, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported Platforms</a>. </p>"
        },
        "Attributes": {
          "shape": "StackAttributes",
          "documentation": "<p>One or more user-defined key-value pairs to be added to the stack attributes.</p>"
        },
        "ServiceRoleArn": {
          "shape": "String",
          "documentation": "<p>The stack's AWS Identity and Access Management (IAM) role, which allows AWS OpsWorks Stacks to work with AWS resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an existing IAM role. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "DefaultInstanceProfileArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "DefaultOs": {
          "shape": "String",
          "documentation": "<p>The stack's default operating system, which is installed on every instance unless you specify a different operating system when you create the instance. You can specify one of the following.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\"> Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the current Amazon Linux version. For more information about supported operating systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p>"
        },
        "HostnameTheme": {
          "shape": "String",
          "documentation": "<p>The stack's host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities_and_Titans</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>"
        },
        "DefaultAvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The stack's default Availability Zone, which must be in the specified region. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see the <code>VpcId</code> parameter description. </p>"
        },
        "DefaultSubnetId": {
          "shape": "String",
          "documentation": "<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p> <p> <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code> </p> <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>"
        },
        "ConfigurationManager": {
          "shape": "StackConfigurationManager",
          "documentation": "<p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>"
        },
        "ChefConfiguration": {
          "shape": "ChefConfiguration",
          "documentation": "<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"
        },
        "UseCustomCookbooks": {
          "shape": "Boolean",
          "documentation": "<p>Whether the stack uses custom cookbooks.</p>"
        },
        "UseOpsworksSecurityGroups": {
          "shape": "Boolean",
          "documentation": "<p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on creation; custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"
        },
        "CustomCookbooksSource": {
          "shape": "Source",
          "documentation": "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>"
        },
        "DefaultSshKeyName": {
          "shape": "String",
          "documentation": "<p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, AWS OpsWorks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\"> create an instance</a>. </p>"
        },
        "DefaultRootDeviceType": {
          "shape": "RootDeviceType",
          "documentation": "<p>The default root device type. This value is the default for all instances in the stack, but you can override it when you create an instance. The default option is <code>instance-store</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"
        },
        "AgentVersion": {
          "shape": "String",
          "documentation": "<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is the most recent release of the agent. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>"
        }
      }
    },
    "CreateStackResult": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID, which is an opaque string that you use to identify the stack when performing actions such as <code>DescribeStacks</code>.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>CreateStack</code> request.</p>"
    },
    "CreateUserProfileRequest": {
      "type": "structure",
      "required": [
        "IamUserArn"
      ],
      "members": {
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user's IAM ARN; this can also be a federated user's ARN.</p>"
        },
        "SshUsername": {
          "shape": "String",
          "documentation": "<p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>"
        },
        "SshPublicKey": {
          "shape": "String",
          "documentation": "<p>The user's public SSH key.</p>"
        },
        "AllowSelfManagement": {
          "shape": "Boolean",
          "documentation": "<p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Setting an IAM User's Public SSH Key</a>.</p>"
        }
      }
    },
    "CreateUserProfileResult": {
      "type": "structure",
      "members": {
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user's IAM ARN.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>CreateUserProfile</code> request.</p>"
    },
    "DailyAutoScalingSchedule": {
      "type": "map",
      "key": {
        "shape": "Hour"
      },
      "value": {
        "shape": "Switch"
      }
    },
    "DataSource": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "String",
          "documentation": "<p>The data source's type, <code>AutoSelectOpsworksMysqlInstance</code>, <code>OpsworksMysqlInstance</code>, <code>RdsDbInstance</code>, or <code>None</code>.</p>"
        },
        "Arn": {
          "shape": "String",
          "documentation": "<p>The data source's ARN.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>The database name.</p>"
        }
      },
      "documentation": "<p>Describes an app's data source.</p>"
    },
    "DataSources": {
      "type": "list",
      "member": {
        "shape": "DataSource"
      }
    },
    "DateTime": {
      "type": "string"
    },
    "DeleteAppRequest": {
      "type": "structure",
      "required": [
        "AppId"
      ],
      "members": {
        "AppId": {
          "shape": "String",
          "documentation": "<p>The app ID.</p>"
        }
      }
    },
    "DeleteInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "DeleteElasticIp": {
          "shape": "Boolean",
          "documentation": "<p>Whether to delete the instance Elastic IP address.</p>"
        },
        "DeleteVolumes": {
          "shape": "Boolean",
          "documentation": "<p>Whether to delete the instance's Amazon EBS volumes.</p>"
        }
      }
    },
    "DeleteLayerRequest": {
      "type": "structure",
      "required": [
        "LayerId"
      ],
      "members": {
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The layer ID.</p>"
        }
      }
    },
    "DeleteStackRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "DeleteUserProfileRequest": {
      "type": "structure",
      "required": [
        "IamUserArn"
      ],
      "members": {
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user's IAM ARN. This can also be a federated user's ARN.</p>"
        }
      }
    },
    "Deployment": {
      "type": "structure",
      "members": {
        "DeploymentId": {
          "shape": "String",
          "documentation": "<p>The deployment ID.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "AppId": {
          "shape": "String",
          "documentation": "<p>The app ID.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>Date when the deployment was created.</p>"
        },
        "CompletedAt": {
          "shape": "DateTime",
          "documentation": "<p>Date when the deployment completed.</p>"
        },
        "Duration": {
          "shape": "Integer",
          "documentation": "<p>The deployment duration.</p>"
        },
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user's IAM ARN.</p>"
        },
        "Comment": {
          "shape": "String",
          "documentation": "<p>A user-defined comment.</p>"
        },
        "Command": {
          "shape": "DeploymentCommand",
          "documentation": "<p>Used to specify a stack or deployment command.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The deployment status:</p> <ul> <li> <p>running</p> </li> <li> <p>successful</p> </li> <li> <p>failed</p> </li> </ul>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A string that contains user-defined custom JSON. It can be used to override the corresponding default stack configuration attribute values for stack or to pass data to recipes. The string should be in the following format:</p> <p> <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code> </p> <p>For more information on custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>"
        },
        "InstanceIds": {
          "shape": "Strings",
          "documentation": "<p>The IDs of the target instances.</p>"
        }
      },
      "documentation": "<p>Describes a deployment of a stack or app.</p>"
    },
    "DeploymentCommand": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "DeploymentCommandName",
          "documentation": "<p>Specifies the operation. You can specify only one command.</p> <p>For stacks, the following commands are available:</p> <ul> <li> <p> <code>execute_recipes</code>: Execute one or more recipes. To specify the recipes, set an <code>Args</code> parameter named <code>recipes</code> to the list of recipes to be executed. For example, to execute <code>phpapp::appsetup</code>, set <code>Args</code> to <code>{\"recipes\":[\"phpapp::appsetup\"]}</code>.</p> </li> <li> <p> <code>install_dependencies</code>: Install the stack's dependencies.</p> </li> <li> <p> <code>update_custom_cookbooks</code>: Update the stack's custom cookbooks.</p> </li> <li> <p> <code>update_dependencies</code>: Update the stack's dependencies.</p> </li> </ul> <note> <p>The update_dependencies and install_dependencies commands are supported only for Linux instances. You can run the commands successfully on Windows instances, but they do nothing.</p> </note> <p>For apps, the following commands are available:</p> <ul> <li> <p> <code>deploy</code>: Deploy an app. Ruby on Rails apps have an optional <code>Args</code> parameter named <code>migrate</code>. Set <code>Args</code> to {\"migrate\":[\"true\"]} to migrate the database. The default setting is {\"migrate\":[\"false\"]}.</p> </li> <li> <p> <code>rollback</code> Roll the app back to the previous version. When you update an app, AWS OpsWorks Stacks stores the previous version, up to a maximum of five versions. You can use this command to roll an app back as many as four versions.</p> </li> <li> <p> <code>start</code>: Start the app's web or application server.</p> </li> <li> <p> <code>stop</code>: Stop the app's web or application server.</p> </li> <li> <p> <code>restart</code>: Restart the app's web or application server.</p> </li> <li> <p> <code>undeploy</code>: Undeploy the app.</p> </li> </ul>"
        },
        "Args": {
          "shape": "DeploymentCommandArgs",
          "documentation": "<p>The arguments of those commands that take arguments. It should be set to a JSON object with the following format:</p> <p> <code>{\"arg_name1\" : [\"value1\", \"value2\", ...], \"arg_name2\" : [\"value1\", \"value2\", ...], ...}</code> </p> <p>The <code>update_dependencies</code> command takes two arguments:</p> <ul> <li> <p> <code>upgrade_os_to</code> - Specifies the desired Amazon Linux version for instances whose OS you want to upgrade, such as <code>Amazon Linux 2016.09</code>. You must also set the <code>allow_reboot</code> argument to true.</p> </li> <li> <p> <code>allow_reboot</code> - Specifies whether to allow AWS OpsWorks Stacks to reboot the instances if necessary, after installing the updates. This argument can be set to either <code>true</code> or <code>false</code>. The default value is <code>false</code>.</p> </li> </ul> <p>For example, to upgrade an instance to Amazon Linux 2016.09, set <code>Args</code> to the following.</p> <p> <code> { \"upgrade_os_to\":[\"Amazon Linux 2016.09\"], \"allow_reboot\":[\"true\"] } </code> </p>"
        }
      },
      "documentation": "<p>Used to specify a stack or deployment command.</p>"
    },
    "DeploymentCommandArgs": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "Strings"
      }
    },
    "DeploymentCommandName": {
      "type": "string",
      "enum": [
        "install_dependencies",
        "update_dependencies",
        "update_custom_cookbooks",
        "execute_recipes",
        "configure",
        "setup",
        "deploy",
        "rollback",
        "start",
        "stop",
        "restart",
        "undeploy"
      ]
    },
    "Deployments": {
      "type": "list",
      "member": {
        "shape": "Deployment"
      }
    },
    "DeregisterEcsClusterRequest": {
      "type": "structure",
      "required": [
        "EcsClusterArn"
      ],
      "members": {
        "EcsClusterArn": {
          "shape": "String",
          "documentation": "<p>The cluster's Amazon Resource Number (ARN).</p>"
        }
      }
    },
    "DeregisterElasticIpRequest": {
      "type": "structure",
      "required": [
        "ElasticIp"
      ],
      "members": {
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The Elastic IP address.</p>"
        }
      }
    },
    "DeregisterInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        }
      }
    },
    "DeregisterRdsDbInstanceRequest": {
      "type": "structure",
      "required": [
        "RdsDbInstanceArn"
      ],
      "members": {
        "RdsDbInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon RDS instance's ARN.</p>"
        }
      }
    },
    "DeregisterVolumeRequest": {
      "type": "structure",
      "required": [
        "VolumeId"
      ],
      "members": {
        "VolumeId": {
          "shape": "String",
          "documentation": "<p>The AWS OpsWorks Stacks volume ID, which is the GUID that AWS OpsWorks Stacks assigned to the instance when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>"
        }
      }
    },
    "DescribeAgentVersionsRequest": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "ConfigurationManager": {
          "shape": "StackConfigurationManager",
          "documentation": "<p>The configuration manager.</p>"
        }
      }
    },
    "DescribeAgentVersionsResult": {
      "type": "structure",
      "members": {
        "AgentVersions": {
          "shape": "AgentVersions",
          "documentation": "<p>The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, not the abbreviated number used by the console.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeAgentVersions</code> request.</p>"
    },
    "DescribeAppsRequest": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description of the apps in the specified stack.</p>"
        },
        "AppIds": {
          "shape": "Strings",
          "documentation": "<p>An array of app IDs for the apps to be described. If you use this parameter, <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns a description of every app.</p>"
        }
      }
    },
    "DescribeAppsResult": {
      "type": "structure",
      "members": {
        "Apps": {
          "shape": "Apps",
          "documentation": "<p>An array of <code>App</code> objects that describe the specified apps. </p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeApps</code> request.</p>"
    },
    "DescribeCommandsRequest": {
      "type": "structure",
      "members": {
        "DeploymentId": {
          "shape": "String",
          "documentation": "<p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a description of the commands associated with the specified deployment.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a description of the commands associated with the specified instance.</p>"
        },
        "CommandIds": {
          "shape": "Strings",
          "documentation": "<p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns a description of the specified commands. Otherwise, it returns a description of every command.</p>"
        }
      }
    },
    "DescribeCommandsResult": {
      "type": "structure",
      "members": {
        "Commands": {
          "shape": "Commands",
          "documentation": "<p>An array of <code>Command</code> objects that describe each of the specified commands.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeCommands</code> request.</p>"
    },
    "DescribeDeploymentsRequest": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID. If you include this parameter, the command returns a description of the commands associated with the specified stack.</p>"
        },
        "AppId": {
          "shape": "String",
          "documentation": "<p>The app ID. If you include this parameter, the command returns a description of the commands associated with the specified app.</p>"
        },
        "DeploymentIds": {
          "shape": "Strings",
          "documentation": "<p>An array of deployment IDs to be described. If you include this parameter, the command returns a description of the specified deployments. Otherwise, it returns a description of every deployment.</p>"
        }
      }
    },
    "DescribeDeploymentsResult": {
      "type": "structure",
      "members": {
        "Deployments": {
          "shape": "Deployments",
          "documentation": "<p>An array of <code>Deployment</code> objects that describe the deployments.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeDeployments</code> request.</p>"
    },
    "DescribeEcsClustersRequest": {
      "type": "structure",
      "members": {
        "EcsClusterArns": {
          "shape": "Strings",
          "documentation": "<p>A list of ARNs, one for each cluster to be described.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>A stack ID. <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>If the previous paginated request did not return all of the remaining results, the response object's<code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>DescribeEcsClusters</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>"
        },
        "MaxResults": {
          "shape": "Integer",
          "documentation": "<p>To receive a paginated response, use this parameter to specify the maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>"
        }
      }
    },
    "DescribeEcsClustersResult": {
      "type": "structure",
      "members": {
        "EcsClusters": {
          "shape": "EcsClusters",
          "documentation": "<p>A list of <code>EcsCluster</code> objects containing the cluster descriptions.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's <code>NextToken</code> parameter to retrieve the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to <code>null</code>.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeEcsClusters</code> request.</p>"
    },
    "DescribeElasticIpsRequest": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the Elastic IP addresses associated with the specified instance.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the Elastic IP addresses that are registered with the specified stack.</p>"
        },
        "Ips": {
          "shape": "Strings",
          "documentation": "<p>An array of Elastic IP addresses to be described. If you include this parameter, <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses. Otherwise, it returns a description of every Elastic IP address.</p>"
        }
      }
    },
    "DescribeElasticIpsResult": {
      "type": "structure",
      "members": {
        "ElasticIps": {
          "shape": "ElasticIps",
          "documentation": "<p>An <code>ElasticIps</code> object that describes the specified Elastic IP addresses.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeElasticIps</code> request.</p>"
    },
    "DescribeElasticLoadBalancersRequest": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>"
        },
        "LayerIds": {
          "shape": "Strings",
          "documentation": "<p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>"
        }
      }
    },
    "DescribeElasticLoadBalancersResult": {
      "type": "structure",
      "members": {
        "ElasticLoadBalancers": {
          "shape": "ElasticLoadBalancers",
          "documentation": "<p>A list of <code>ElasticLoadBalancer</code> objects that describe the specified Elastic Load Balancing instances.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeElasticLoadBalancers</code> request.</p>"
    },
    "DescribeInstancesRequest": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of the instances associated with the specified stack.</p>"
        },
        "LayerId": {
          "shape": "String",
          "documentation": "<p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of the instances associated with the specified layer.</p>"
        },
        "InstanceIds": {
          "shape": "Strings",
          "documentation": "<p>An array of instance IDs to be described. If you use this parameter, <code>DescribeInstances</code> returns a description of the specified instances. Otherwise, it returns a description of every instance.</p>"
        }
      }
    },
    "DescribeInstancesResult": {
      "type": "structure",
      "members": {
        "Instances": {
          "shape": "Instances",
          "documentation": "<p>An array of <code>Instance</code> objects that describe the instances.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeInstances</code> request.</p>"
    },
    "DescribeLayersRequest": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "LayerIds": {
          "shape": "Strings",
          "documentation": "<p>An array of layer IDs that specify the layers to be described. If you omit this parameter, <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>"
        }
      }
    },
    "DescribeLayersResult": {
      "type": "structure",
      "members": {
        "Layers": {
          "shape": "Layers",
          "documentation": "<p>An array of <code>Layer</code> objects that describe the layers.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeLayers</code> request.</p>"
    },
    "DescribeLoadBasedAutoScalingRequest": {
      "type": "structure",
      "required": [
        "LayerIds"
      ],
      "members": {
        "LayerIds": {
          "shape": "Strings",
          "documentation": "<p>An array of layer IDs.</p>"
        }
      }
    },
    "DescribeLoadBasedAutoScalingResult": {
      "type": "structure",
      "members": {
        "LoadBasedAutoScalingConfigurations": {
          "shape": "LoadBasedAutoScalingConfigurations",
          "documentation": "<p>An array of <code>LoadBasedAutoScalingConfiguration</code> objects that describe each layer's configuration.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeLoadBasedAutoScaling</code> request.</p>"
    },
    "DescribeMyUserProfileResult": {
      "type": "structure",
      "members": {
        "UserProfile": {
          "shape": "SelfUserProfile",
          "documentation": "<p>A <code>UserProfile</code> object that describes the user's SSH information.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeMyUserProfile</code> request.</p>"
    },
    "DescribeOperatingSystemsResponse": {
      "type": "structure",
      "members": {
        "OperatingSystems": {
          "shape": "OperatingSystems",
          "documentation": "<p>Contains information in response to a <code>DescribeOperatingSystems</code> request.</p>"
        }
      },
      "documentation": "<p>The response to a <code>DescribeOperatingSystems</code> request.</p>"
    },
    "DescribePermissionsRequest": {
      "type": "structure",
      "members": {
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "DescribePermissionsResult": {
      "type": "structure",
      "members": {
        "Permissions": {
          "shape": "Permissions",
          "documentation": "<p>An array of <code>Permission</code> objects that describe the stack permissions.</p> <ul> <li> <p>If the request object contains only a stack ID, the array contains a <code>Permission</code> object with permissions for each of the stack IAM ARNs.</p> </li> <li> <p>If the request object contains only an IAM ARN, the array contains a <code>Permission</code> object with permissions for each of the user's stack IDs.</p> </li> <li> <p>If the request contains a stack ID and an IAM ARN, the array contains a single <code>Permission</code> object with permissions for the specified stack and IAM ARN.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribePermissions</code> request.</p>"
    },
    "DescribeRaidArraysRequest": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns descriptions of the RAID arrays associated with the specified instance. </p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "RaidArrayIds": {
          "shape": "Strings",
          "documentation": "<p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code> returns descriptions of the specified arrays. Otherwise, it returns a description of every array.</p>"
        }
      }
    },
    "DescribeRaidArraysResult": {
      "type": "structure",
      "members": {
        "RaidArrays": {
          "shape": "RaidArrays",
          "documentation": "<p>A <code>RaidArrays</code> object that describes the specified RAID arrays.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeRaidArrays</code> request.</p>"
    },
    "DescribeRdsDbInstancesRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The ID of the stack with which the instances are registered. The operation returns descriptions of all registered Amazon RDS instances.</p>"
        },
        "RdsDbInstanceArns": {
          "shape": "Strings",
          "documentation": "<p>An array containing the ARNs of the instances to be described.</p>"
        }
      }
    },
    "DescribeRdsDbInstancesResult": {
      "type": "structure",
      "members": {
        "RdsDbInstances": {
          "shape": "RdsDbInstances",
          "documentation": "<p>An a array of <code>RdsDbInstance</code> objects that describe the instances.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeRdsDbInstances</code> request.</p>"
    },
    "DescribeServiceErrorsRequest": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the errors associated with the specified stack.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the errors associated with the specified instance.</p>"
        },
        "ServiceErrorIds": {
          "shape": "Strings",
          "documentation": "<p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code> returns descriptions of the specified errors. Otherwise, it returns a description of every error.</p>"
        }
      }
    },
    "DescribeServiceErrorsResult": {
      "type": "structure",
      "members": {
        "ServiceErrors": {
          "shape": "ServiceErrors",
          "documentation": "<p>An array of <code>ServiceError</code> objects that describe the specified service errors.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeServiceErrors</code> request.</p>"
    },
    "DescribeStackProvisioningParametersRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "DescribeStackProvisioningParametersResult": {
      "type": "structure",
      "members": {
        "AgentInstallerUrl": {
          "shape": "String",
          "documentation": "<p>The AWS OpsWorks Stacks agent installer's URL.</p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>An embedded object that contains the provisioning parameters.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeStackProvisioningParameters</code> request.</p>"
    },
    "DescribeStackSummaryRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "DescribeStackSummaryResult": {
      "type": "structure",
      "members": {
        "StackSummary": {
          "shape": "StackSummary",
          "documentation": "<p>A <code>StackSummary</code> object that contains the results.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeStackSummary</code> request.</p>"
    },
    "DescribeStacksRequest": {
      "type": "structure",
      "members": {
        "StackIds": {
          "shape": "Strings",
          "documentation": "<p>An array of stack IDs that specify the stacks to be described. If you omit this parameter, <code>DescribeStacks</code> returns a description of every stack.</p>"
        }
      }
    },
    "DescribeStacksResult": {
      "type": "structure",
      "members": {
        "Stacks": {
          "shape": "Stacks",
          "documentation": "<p>An array of <code>Stack</code> objects that describe the stacks.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeStacks</code> request.</p>"
    },
    "DescribeTimeBasedAutoScalingRequest": {
      "type": "structure",
      "required": [
        "InstanceIds"
      ],
      "members": {
        "InstanceIds": {
          "shape": "Strings",
          "documentation": "<p>An array of instance IDs.</p>"
        }
      }
    },
    "DescribeTimeBasedAutoScalingResult": {
      "type": "structure",
      "members": {
        "TimeBasedAutoScalingConfigurations": {
          "shape": "TimeBasedAutoScalingConfigurations",
          "documentation": "<p>An array of <code>TimeBasedAutoScalingConfiguration</code> objects that describe the configuration for the specified instances.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeTimeBasedAutoScaling</code> request.</p>"
    },
    "DescribeUserProfilesRequest": {
      "type": "structure",
      "members": {
        "IamUserArns": {
          "shape": "Strings",
          "documentation": "<p>An array of IAM or federated user ARNs that identify the users to be described.</p>"
        }
      }
    },
    "DescribeUserProfilesResult": {
      "type": "structure",
      "members": {
        "UserProfiles": {
          "shape": "UserProfiles",
          "documentation": "<p>A <code>Users</code> object that describes the specified users.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeUserProfiles</code> request.</p>"
    },
    "DescribeVolumesRequest": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the volumes associated with the specified instance.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>"
        },
        "RaidArrayId": {
          "shape": "String",
          "documentation": "<p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the volumes associated with the specified RAID array.</p>"
        },
        "VolumeIds": {
          "shape": "Strings",
          "documentation": "<p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns descriptions of the specified volumes. Otherwise, it returns a description of every volume.</p>"
        }
      }
    },
    "DescribeVolumesResult": {
      "type": "structure",
      "members": {
        "Volumes": {
          "shape": "Volumes",
          "documentation": "<p>An array of volume IDs.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>DescribeVolumes</code> request.</p>"
    },
    "DetachElasticLoadBalancerRequest": {
      "type": "structure",
      "required": [
        "ElasticLoadBalancerName",
        "LayerId"
      ],
      "members": {
        "ElasticLoadBalancerName": {
          "shape": "String",
          "documentation": "<p>The Elastic Load Balancing instance's name.</p>"
        },
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>"
        }
      }
    },
    "DisassociateElasticIpRequest": {
      "type": "structure",
      "required": [
        "ElasticIp"
      ],
      "members": {
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The Elastic IP address.</p>"
        }
      }
    },
    "Double": {
      "type": "double",
      "box": true
    },
    "EbsBlockDevice": {
      "type": "structure",
      "members": {
        "SnapshotId": {
          "shape": "String",
          "documentation": "<p>The snapshot ID.</p>"
        },
        "Iops": {
          "shape": "Integer",
          "documentation": "<p>The number of I/O operations per second (IOPS) that the volume supports. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html\">EbsBlockDevice</a>.</p>"
        },
        "VolumeSize": {
          "shape": "Integer",
          "documentation": "<p>The volume size, in GiB. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html\">EbsBlockDevice</a>.</p>"
        },
        "VolumeType": {
          "shape": "VolumeType",
          "documentation": "<p>The volume type. <code>gp2</code> for General Purpose (SSD) volumes, <code>io1</code> for Provisioned IOPS (SSD) volumes, <code>st1</code> for Throughput Optimized hard disk drives (HDD), <code>sc1</code> for Cold HDD,and <code>standard</code> for Magnetic volumes.</p> <p>If you specify the <code>io1</code> volume type, you must also specify a value for the <code>Iops</code> attribute. The maximum ratio of provisioned IOPS to requested volume size (in GiB) is 50:1. AWS uses the default volume size (in GiB) specified in the AMI attributes to set IOPS to 50 x (volume size).</p>"
        },
        "DeleteOnTermination": {
          "shape": "Boolean",
          "documentation": "<p>Whether the volume is deleted on instance termination.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html\">EbsBlockDevice</a> data type.</p>"
    },
    "EcsCluster": {
      "type": "structure",
      "members": {
        "EcsClusterArn": {
          "shape": "String",
          "documentation": "<p>The cluster's ARN.</p>"
        },
        "EcsClusterName": {
          "shape": "String",
          "documentation": "<p>The cluster name.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "RegisteredAt": {
          "shape": "DateTime",
          "documentation": "<p>The time and date that the cluster was registered with the stack.</p>"
        }
      },
      "documentation": "<p>Describes a registered Amazon ECS cluster.</p>"
    },
    "EcsClusters": {
      "type": "list",
      "member": {
        "shape": "EcsCluster"
      }
    },
    "ElasticIp": {
      "type": "structure",
      "members": {
        "Ip": {
          "shape": "String",
          "documentation": "<p>The IP address.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name.</p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>The domain.</p>"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The AWS region. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The ID of the instance that the address is attached to.</p>"
        }
      },
      "documentation": "<p>Describes an Elastic IP address.</p>"
    },
    "ElasticIps": {
      "type": "list",
      "member": {
        "shape": "ElasticIp"
      }
    },
    "ElasticLoadBalancer": {
      "type": "structure",
      "members": {
        "ElasticLoadBalancerName": {
          "shape": "String",
          "documentation": "<p>The Elastic Load Balancing instance's name.</p>"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The instance's AWS region.</p>"
        },
        "DnsName": {
          "shape": "String",
          "documentation": "<p>The instance's public DNS name.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The ID of the stack that the instance is associated with.</p>"
        },
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The ID of the layer that the instance is attached to.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The VPC ID.</p>"
        },
        "AvailabilityZones": {
          "shape": "Strings",
          "documentation": "<p>A list of Availability Zones.</p>"
        },
        "SubnetIds": {
          "shape": "Strings",
          "documentation": "<p>A list of subnet IDs, if the stack is running in a VPC.</p>"
        },
        "Ec2InstanceIds": {
          "shape": "Strings",
          "documentation": "<p>A list of the EC2 instances that the Elastic Load Balancing instance is managing traffic for.</p>"
        }
      },
      "documentation": "<p>Describes an Elastic Load Balancing instance.</p>"
    },
    "ElasticLoadBalancers": {
      "type": "list",
      "member": {
        "shape": "ElasticLoadBalancer"
      }
    },
    "EnvironmentVariable": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>(Required) The environment variable's name, which can consist of up to 64 characters and must be specified. The name can contain upper- and lowercase letters, numbers, and underscores (_), but it must start with a letter or underscore.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>(Optional) The environment variable's value, which can be left empty. If you specify a value, it can contain up to 256 characters, which must all be printable.</p>"
        },
        "Secure": {
          "shape": "Boolean",
          "documentation": "<p>(Optional) Whether the variable's value will be returned by the <a>DescribeApps</a> action. To conceal an environment variable's value, set <code>Secure</code> to <code>true</code>. <code>DescribeApps</code> then returns <code>*****FILTERED*****</code> instead of the actual value. The default value for <code>Secure</code> is <code>false</code>. </p>"
        }
      },
      "documentation": "<p>Represents an app's environment variable.</p>"
    },
    "EnvironmentVariables": {
      "type": "list",
      "member": {
        "shape": "EnvironmentVariable"
      }
    },
    "GetHostnameSuggestionRequest": {
      "type": "structure",
      "required": [
        "LayerId"
      ],
      "members": {
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The layer ID.</p>"
        }
      }
    },
    "GetHostnameSuggestionResult": {
      "type": "structure",
      "members": {
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The layer ID.</p>"
        },
        "Hostname": {
          "shape": "String",
          "documentation": "<p>The generated host name.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>GetHostnameSuggestion</code> request.</p>"
    },
    "GrantAccessRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance's AWS OpsWorks Stacks ID.</p>"
        },
        "ValidForInMinutes": {
          "shape": "ValidForInMinutes",
          "documentation": "<p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, the user will no longer be able to use the credentials to log in. If the user is logged in at the time, he or she automatically will be logged out.</p>"
        }
      }
    },
    "GrantAccessResult": {
      "type": "structure",
      "members": {
        "TemporaryCredential": {
          "shape": "TemporaryCredential",
          "documentation": "<p>A <code>TemporaryCredential</code> object that contains the data needed to log in to the instance by RDP clients, such as the Microsoft Remote Desktop Connection.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>GrantAccess</code> request.</p>"
    },
    "Hour": {
      "type": "string"
    },
    "Instance": {
      "type": "structure",
      "members": {
        "AgentVersion": {
          "shape": "String",
          "documentation": "<p>The agent version. This parameter is set to <code>INHERIT</code> if the instance inherits the default stack setting or to a a version number for a fixed agent version.</p>"
        },
        "AmiId": {
          "shape": "String",
          "documentation": "<p>A custom AMI ID to be used to create the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Instances</a> </p>"
        },
        "Architecture": {
          "shape": "Architecture",
          "documentation": "<p>The instance architecture: \"i386\" or \"x86_64\".</p>"
        },
        "Arn": {
          "shape": "String",
          "documentation": "<p>The instance's Amazon Resource Number (ARN).</p>"
        },
        "AutoScalingType": {
          "shape": "AutoScalingType",
          "documentation": "<p>For load-based or time-based instances, the type.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The instance Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "BlockDeviceMappings": {
          "shape": "BlockDeviceMappings",
          "documentation": "<p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block device mappings.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>The time that the instance was created.</p>"
        },
        "EbsOptimized": {
          "shape": "Boolean",
          "documentation": "<p>Whether this is an Amazon EBS-optimized instance.</p>"
        },
        "Ec2InstanceId": {
          "shape": "String",
          "documentation": "<p>The ID of the associated Amazon EC2 instance.</p>"
        },
        "EcsClusterArn": {
          "shape": "String",
          "documentation": "<p>For container instances, the Amazon ECS cluster's ARN.</p>"
        },
        "EcsContainerInstanceArn": {
          "shape": "String",
          "documentation": "<p>For container instances, the instance's ARN.</p>"
        },
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The instance <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP address </a>.</p>"
        },
        "Hostname": {
          "shape": "String",
          "documentation": "<p>The instance host name.</p>"
        },
        "InfrastructureClass": {
          "shape": "String",
          "documentation": "<p>For registered instances, the infrastructure class: <code>ec2</code> or <code>on-premises</code>.</p>"
        },
        "InstallUpdatesOnBoot": {
          "shape": "Boolean",
          "documentation": "<p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. If this value is set to <code>false</code>, you must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "InstanceProfileArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the instance's IAM profile. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "InstanceType": {
          "shape": "String",
          "documentation": "<p>The instance type, such as <code>t2.micro</code>.</p>"
        },
        "LastServiceErrorId": {
          "shape": "String",
          "documentation": "<p>The ID of the last service error. For more information, call <a>DescribeServiceErrors</a>.</p>"
        },
        "LayerIds": {
          "shape": "Strings",
          "documentation": "<p>An array containing the instance layer IDs.</p>"
        },
        "Os": {
          "shape": "String",
          "documentation": "<p>The instance's operating system.</p>"
        },
        "Platform": {
          "shape": "String",
          "documentation": "<p>The instance's platform.</p>"
        },
        "PrivateDns": {
          "shape": "String",
          "documentation": "<p>The instance's private DNS name.</p>"
        },
        "PrivateIp": {
          "shape": "String",
          "documentation": "<p>The instance's private IP address.</p>"
        },
        "PublicDns": {
          "shape": "String",
          "documentation": "<p>The instance public DNS name.</p>"
        },
        "PublicIp": {
          "shape": "String",
          "documentation": "<p>The instance public IP address.</p>"
        },
        "RegisteredBy": {
          "shape": "String",
          "documentation": "<p>For registered instances, who performed the registration.</p>"
        },
        "ReportedAgentVersion": {
          "shape": "String",
          "documentation": "<p>The instance's reported AWS OpsWorks Stacks agent version.</p>"
        },
        "ReportedOs": {
          "shape": "ReportedOs",
          "documentation": "<p>For registered instances, the reported operating system.</p>"
        },
        "RootDeviceType": {
          "shape": "RootDeviceType",
          "documentation": "<p>The instance's root device type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"
        },
        "RootDeviceVolumeId": {
          "shape": "String",
          "documentation": "<p>The root device volume ID.</p>"
        },
        "SecurityGroupIds": {
          "shape": "Strings",
          "documentation": "<p>An array containing the instance security group IDs.</p>"
        },
        "SshHostDsaKeyFingerprint": {
          "shape": "String",
          "documentation": "<p>The SSH key's Deep Security Agent (DSA) fingerprint.</p>"
        },
        "SshHostRsaKeyFingerprint": {
          "shape": "String",
          "documentation": "<p>The SSH key's RSA fingerprint.</p>"
        },
        "SshKeyName": {
          "shape": "String",
          "documentation": "<p>The instance's Amazon EC2 key-pair name.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The instance status:</p> <ul> <li> <p> <code>booting</code> </p> </li> <li> <p> <code>connection_lost</code> </p> </li> <li> <p> <code>online</code> </p> </li> <li> <p> <code>pending</code> </p> </li> <li> <p> <code>rebooting</code> </p> </li> <li> <p> <code>requested</code> </p> </li> <li> <p> <code>running_setup</code> </p> </li> <li> <p> <code>setup_failed</code> </p> </li> <li> <p> <code>shutting_down</code> </p> </li> <li> <p> <code>start_failed</code> </p> </li> <li> <p> <code>stop_failed</code> </p> </li> <li> <p> <code>stopped</code> </p> </li> <li> <p> <code>stopping</code> </p> </li> <li> <p> <code>terminated</code> </p> </li> <li> <p> <code>terminating</code> </p> </li> </ul>"
        },
        "SubnetId": {
          "shape": "String",
          "documentation": "<p>The instance's subnet ID; applicable only if the stack is running in a VPC.</p>"
        },
        "Tenancy": {
          "shape": "String",
          "documentation": "<p>The instance's tenancy option, such as <code>dedicated</code> or <code>host</code>.</p>"
        },
        "VirtualizationType": {
          "shape": "VirtualizationType",
          "documentation": "<p>The instance's virtualization type: <code>paravirtual</code> or <code>hvm</code>.</p>"
        }
      },
      "documentation": "<p>Describes an instance.</p>"
    },
    "InstanceIdentity": {
      "type": "structure",
      "members": {
        "Document": {
          "shape": "String",
          "documentation": "<p>A JSON document that contains the metadata.</p>"
        },
        "Signature": {
          "shape": "String",
          "documentation": "<p>A signature that can be used to verify the document's accuracy and authenticity.</p>"
        }
      },
      "documentation": "<p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see <a href=\"https://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html\">Instance Metadata and User Data</a>.</p>"
    },
    "Instances": {
      "type": "list",
      "member": {
        "shape": "Instance"
      }
    },
    "InstancesCount": {
      "type": "structure",
      "members": {
        "Assigning": {
          "shape": "Integer",
          "documentation": "<p>The number of instances in the Assigning state.</p>"
        },
        "Booting": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>booting</code> status.</p>"
        },
        "ConnectionLost": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>connection_lost</code> status.</p>"
        },
        "Deregistering": {
          "shape": "Integer",
          "documentation": "<p>The number of instances in the Deregistering state.</p>"
        },
        "Online": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>online</code> status.</p>"
        },
        "Pending": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>pending</code> status.</p>"
        },
        "Rebooting": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>rebooting</code> status.</p>"
        },
        "Registered": {
          "shape": "Integer",
          "documentation": "<p>The number of instances in the Registered state.</p>"
        },
        "Registering": {
          "shape": "Integer",
          "documentation": "<p>The number of instances in the Registering state.</p>"
        },
        "Requested": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>requested</code> status.</p>"
        },
        "RunningSetup": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>running_setup</code> status.</p>"
        },
        "SetupFailed": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>setup_failed</code> status.</p>"
        },
        "ShuttingDown": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>shutting_down</code> status.</p>"
        },
        "StartFailed": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>start_failed</code> status.</p>"
        },
        "StopFailed": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>stop_failed</code> status.</p>"
        },
        "Stopped": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>stopped</code> status.</p>"
        },
        "Stopping": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>stopping</code> status.</p>"
        },
        "Terminated": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>terminated</code> status.</p>"
        },
        "Terminating": {
          "shape": "Integer",
          "documentation": "<p>The number of instances with <code>terminating</code> status.</p>"
        },
        "Unassigning": {
          "shape": "Integer",
          "documentation": "<p>The number of instances in the Unassigning state.</p>"
        }
      },
      "documentation": "<p>Describes how many instances a stack has for each status.</p>"
    },
    "Integer": {
      "type": "integer",
      "box": true
    },
    "Layer": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Number (ARN) of a layer.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The layer stack ID.</p>"
        },
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The layer ID.</p>"
        },
        "Type": {
          "shape": "LayerType",
          "documentation": "<p>The layer type.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The layer name.</p>"
        },
        "Shortname": {
          "shape": "String",
          "documentation": "<p>The layer short name.</p>"
        },
        "Attributes": {
          "shape": "LayerAttributes",
          "documentation": "<p>The layer attributes.</p> <p>For the <code>HaproxyStatsPassword</code>, <code>MysqlRootPassword</code>, and <code>GangliaPassword</code> attributes, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value</p> <p>For an ECS Cluster layer, AWS OpsWorks Stacks the <code>EcsClusterArn</code> attribute is set to the cluster's ARN.</p>"
        },
        "CloudWatchLogsConfiguration": {
          "shape": "CloudWatchLogsConfiguration",
          "documentation": "<p>The Amazon CloudWatch Logs configuration settings for the layer.</p>"
        },
        "CustomInstanceProfileArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the default IAM profile to be used for the layer's EC2 instances. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A JSON formatted string containing the layer's custom stack configuration and deployment attributes.</p>"
        },
        "CustomSecurityGroupIds": {
          "shape": "Strings",
          "documentation": "<p>An array containing the layer's custom security group IDs.</p>"
        },
        "DefaultSecurityGroupNames": {
          "shape": "Strings",
          "documentation": "<p>An array containing the layer's security group names.</p>"
        },
        "Packages": {
          "shape": "Strings",
          "documentation": "<p>An array of <code>Package</code> objects that describe the layer's packages.</p>"
        },
        "VolumeConfigurations": {
          "shape": "VolumeConfigurations",
          "documentation": "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"
        },
        "EnableAutoHealing": {
          "shape": "Boolean",
          "documentation": "<p>Whether auto healing is disabled for the layer.</p>"
        },
        "AutoAssignElasticIps": {
          "shape": "Boolean",
          "documentation": "<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit a Layer</a>.</p>"
        },
        "AutoAssignPublicIps": {
          "shape": "Boolean",
          "documentation": "<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit a Layer</a>.</p>"
        },
        "DefaultRecipes": {
          "shape": "Recipes",
          "documentation": "<p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. You can also provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events.</p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the <code>.rb</code> extension. For example: <code>phpapp2::dbsetup</code> specifies the <code>dbsetup.rb</code> recipe in the repository's <code>phpapp2</code> folder.</p>"
        },
        "CustomRecipes": {
          "shape": "Recipes",
          "documentation": "<p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>Date when the layer was created.</p>"
        },
        "InstallUpdatesOnBoot": {
          "shape": "Boolean",
          "documentation": "<p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. If this value is set to <code>false</code>, you must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>"
        },
        "UseEbsOptimizedInstances": {
          "shape": "Boolean",
          "documentation": "<p>Whether the layer uses Amazon EBS-optimized instances.</p>"
        },
        "LifecycleEventConfiguration": {
          "shape": "LifecycleEventConfiguration",
          "documentation": "<p>A <code>LifeCycleEventConfiguration</code> object that specifies the Shutdown event configuration.</p>"
        }
      },
      "documentation": "<p>Describes a layer.</p>"
    },
    "LayerAttributes": {
      "type": "map",
      "key": {
        "shape": "LayerAttributesKeys"
      },
      "value": {
        "shape": "String"
      }
    },
    "LayerAttributesKeys": {
      "type": "string",
      "enum": [
        "EcsClusterArn",
        "EnableHaproxyStats",
        "HaproxyStatsUrl",
        "HaproxyStatsUser",
        "HaproxyStatsPassword",
        "HaproxyHealthCheckUrl",
        "HaproxyHealthCheckMethod",
        "MysqlRootPassword",
        "MysqlRootPasswordUbiquitous",
        "GangliaUrl",
        "GangliaUser",
        "GangliaPassword",
        "MemcachedMemory",
        "NodejsVersion",
        "RubyVersion",
        "RubygemsVersion",
        "ManageBundler",
        "BundlerVersion",
        "RailsStack",
        "PassengerVersion",
        "Jvm",
        "JvmVersion",
        "JvmOptions",
        "JavaAppServer",
        "JavaAppServerVersion"
      ]
    },
    "LayerType": {
      "type": "string",
      "enum": [
        "aws-flow-ruby",
        "ecs-cluster",
        "java-app",
        "lb",
        "web",
        "php-app",
        "rails-app",
        "nodejs-app",
        "memcached",
        "db-master",
        "monitoring-master",
        "custom"
      ]
    },
    "Layers": {
      "type": "list",
      "member": {
        "shape": "Layer"
      }
    },
    "LifecycleEventConfiguration": {
      "type": "structure",
      "members": {
        "Shutdown": {
          "shape": "ShutdownEventConfiguration",
          "documentation": "<p>A <code>ShutdownEventConfiguration</code> object that specifies the Shutdown event configuration.</p>"
        }
      },
      "documentation": "<p>Specifies the lifecycle event configuration</p>"
    },
    "ListTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The stack or layer's Amazon Resource Number (ARN).</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> call. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> call. </p>"
        }
      }
    },
    "ListTagsResult": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If a paginated request does not return all of the remaining results, this parameter is set to a token that you can assign to the request object's <code>NextToken</code> parameter to get the next set of results. If the previous paginated request returned all of the remaining results, this parameter is set to <code>null</code>. </p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>ListTags</code> request.</p>"
    },
    "LoadBasedAutoScalingConfiguration": {
      "type": "structure",
      "members": {
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The layer ID.</p>"
        },
        "Enable": {
          "shape": "Boolean",
          "documentation": "<p>Whether load-based auto scaling is enabled for the layer.</p>"
        },
        "UpScaling": {
          "shape": "AutoScalingThresholds",
          "documentation": "<p>An <code>AutoScalingThresholds</code> object that describes the upscaling configuration, which defines how and when AWS OpsWorks Stacks increases the number of instances.</p>"
        },
        "DownScaling": {
          "shape": "AutoScalingThresholds",
          "documentation": "<p>An <code>AutoScalingThresholds</code> object that describes the downscaling configuration, which defines how and when AWS OpsWorks Stacks reduces the number of instances.</p>"
        }
      },
      "documentation": "<p>Describes a layer's load-based auto scaling configuration.</p>"
    },
    "LoadBasedAutoScalingConfigurations": {
      "type": "list",
      "member": {
        "shape": "LoadBasedAutoScalingConfiguration"
      }
    },
    "MaxResults": {
      "type": "integer"
    },
    "Minute": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "NextToken": {
      "type": "string"
    },
    "OperatingSystem": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the operating system, such as <code>Amazon Linux 2018.03</code>.</p>"
        },
        "Id": {
          "shape": "String",
          "documentation": "<p>The ID of a supported operating system, such as <code>Amazon Linux 2018.03</code>.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The type of a supported operating system, either <code>Linux</code> or <code>Windows</code>.</p>"
        },
        "ConfigurationManagers": {
          "shape": "OperatingSystemConfigurationManagers",
          "documentation": "<p>Supported configuration manager name and versions for an AWS OpsWorks Stacks operating system.</p>"
        },
        "ReportedName": {
          "shape": "String",
          "documentation": "<p>A short name for the operating system manufacturer.</p>"
        },
        "ReportedVersion": {
          "shape": "String",
          "documentation": "<p>The version of the operating system, including the release and edition, if applicable.</p>"
        },
        "Supported": {
          "shape": "Boolean",
          "documentation": "<p>Indicates that an operating system is not supported for new instances.</p>"
        }
      },
      "documentation": "<p>Describes supported operating systems in AWS OpsWorks Stacks.</p>"
    },
    "OperatingSystemConfigurationManager": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the configuration manager, which is Chef.</p>"
        },
        "Version": {
          "shape": "String",
          "documentation": "<p>The versions of the configuration manager that are supported by an operating system.</p>"
        }
      },
      "documentation": "<p>A block that contains information about the configuration manager (Chef) and the versions of the configuration manager that are supported for an operating system.</p>"
    },
    "OperatingSystemConfigurationManagers": {
      "type": "list",
      "member": {
        "shape": "OperatingSystemConfigurationManager"
      }
    },
    "OperatingSystems": {
      "type": "list",
      "member": {
        "shape": "OperatingSystem"
      }
    },
    "Parameters": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "Permission": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>A stack ID.</p>"
        },
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for an AWS Identity and Access Management (IAM) role. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "AllowSsh": {
          "shape": "Boolean",
          "documentation": "<p>Whether the user can use SSH.</p>"
        },
        "AllowSudo": {
          "shape": "Boolean",
          "documentation": "<p>Whether the user can use <b>sudo</b>.</p>"
        },
        "Level": {
          "shape": "String",
          "documentation": "<p>The user's permission level, which must be the following:</p> <ul> <li> <p> <code>deny</code> </p> </li> <li> <p> <code>show</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>manage</code> </p> </li> <li> <p> <code>iam_only</code> </p> </li> </ul> <p>For more information on the permissions associated with these levels, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a> </p>"
        }
      },
      "documentation": "<p>Describes stack or user permissions.</p>"
    },
    "Permissions": {
      "type": "list",
      "member": {
        "shape": "Permission"
      }
    },
    "RaidArray": {
      "type": "structure",
      "members": {
        "RaidArrayId": {
          "shape": "String",
          "documentation": "<p>The array ID.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The array name.</p>"
        },
        "RaidLevel": {
          "shape": "Integer",
          "documentation": "<p>The <a href=\"http://en.wikipedia.org/wiki/Standard_RAID_levels\">RAID level</a>.</p>"
        },
        "NumberOfDisks": {
          "shape": "Integer",
          "documentation": "<p>The number of disks in the array.</p>"
        },
        "Size": {
          "shape": "Integer",
          "documentation": "<p>The array's size.</p>"
        },
        "Device": {
          "shape": "String",
          "documentation": "<p>The array's Linux device. For example /dev/mdadm0.</p>"
        },
        "MountPoint": {
          "shape": "String",
          "documentation": "<p>The array's mount point.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The array's Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>When the RAID array was created.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "VolumeType": {
          "shape": "String",
          "documentation": "<p>The volume type, standard or PIOPS.</p>"
        },
        "Iops": {
          "shape": "Integer",
          "documentation": "<p>For PIOPS volumes, the IOPS per disk.</p>"
        }
      },
      "documentation": "<p>Describes an instance's RAID array.</p>"
    },
    "RaidArrays": {
      "type": "list",
      "member": {
        "shape": "RaidArray"
      }
    },
    "RdsDbInstance": {
      "type": "structure",
      "members": {
        "RdsDbInstanceArn": {
          "shape": "String",
          "documentation": "<p>The instance's ARN.</p>"
        },
        "DbInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB instance identifier.</p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The master user name.</p>"
        },
        "DbPassword": {
          "shape": "String",
          "documentation": "<p>AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The instance's AWS region.</p>"
        },
        "Address": {
          "shape": "String",
          "documentation": "<p>The instance's address.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The instance's database engine.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The ID of the stack with which the instance is registered.</p>"
        },
        "MissingOnRds": {
          "shape": "Boolean",
          "documentation": "<p>Set to <code>true</code> if AWS OpsWorks Stacks is unable to discover the Amazon RDS instance. AWS OpsWorks Stacks attempts to discover the instance only once. If this value is set to <code>true</code>, you must deregister the instance, and then register it again.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon RDS instance.</p>"
    },
    "RdsDbInstances": {
      "type": "list",
      "member": {
        "shape": "RdsDbInstance"
      }
    },
    "RebootInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        }
      }
    },
    "Recipes": {
      "type": "structure",
      "members": {
        "Setup": {
          "shape": "Strings",
          "documentation": "<p>An array of custom recipe names to be run following a <code>setup</code> event.</p>"
        },
        "Configure": {
          "shape": "Strings",
          "documentation": "<p>An array of custom recipe names to be run following a <code>configure</code> event.</p>"
        },
        "Deploy": {
          "shape": "Strings",
          "documentation": "<p>An array of custom recipe names to be run following a <code>deploy</code> event.</p>"
        },
        "Undeploy": {
          "shape": "Strings",
          "documentation": "<p>An array of custom recipe names to be run following a <code>undeploy</code> event.</p>"
        },
        "Shutdown": {
          "shape": "Strings",
          "documentation": "<p>An array of custom recipe names to be run following a <code>shutdown</code> event.</p>"
        }
      },
      "documentation": "<p>AWS OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks Stacks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks Stacks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events. </p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>"
    },
    "RegisterEcsClusterRequest": {
      "type": "structure",
      "required": [
        "EcsClusterArn",
        "StackId"
      ],
      "members": {
        "EcsClusterArn": {
          "shape": "String",
          "documentation": "<p>The cluster's ARN.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "RegisterEcsClusterResult": {
      "type": "structure",
      "members": {
        "EcsClusterArn": {
          "shape": "String",
          "documentation": "<p>The cluster's ARN.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>RegisterEcsCluster</code> request.</p>"
    },
    "RegisterElasticIpRequest": {
      "type": "structure",
      "required": [
        "ElasticIp",
        "StackId"
      ],
      "members": {
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The Elastic IP address.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "RegisterElasticIpResult": {
      "type": "structure",
      "members": {
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The Elastic IP address.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>RegisterElasticIp</code> request.</p>"
    },
    "RegisterInstanceRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The ID of the stack that the instance is to be registered with.</p>"
        },
        "Hostname": {
          "shape": "String",
          "documentation": "<p>The instance's hostname.</p>"
        },
        "PublicIp": {
          "shape": "String",
          "documentation": "<p>The instance's public IP address.</p>"
        },
        "PrivateIp": {
          "shape": "String",
          "documentation": "<p>The instance's private IP address.</p>"
        },
        "RsaPublicKey": {
          "shape": "String",
          "documentation": "<p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>"
        },
        "RsaPublicKeyFingerprint": {
          "shape": "String",
          "documentation": "<p>The instances public RSA key fingerprint.</p>"
        },
        "InstanceIdentity": {
          "shape": "InstanceIdentity",
          "documentation": "<p>An InstanceIdentity object that contains the instance's identity.</p>"
        }
      }
    },
    "RegisterInstanceResult": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The registered instance's AWS OpsWorks Stacks ID.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>RegisterInstanceResult</code> request.</p>"
    },
    "RegisterRdsDbInstanceRequest": {
      "type": "structure",
      "required": [
        "StackId",
        "RdsDbInstanceArn",
        "DbUser",
        "DbPassword"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "RdsDbInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon RDS instance's ARN.</p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The database's master user name.</p>"
        },
        "DbPassword": {
          "shape": "String",
          "documentation": "<p>The database password.</p>"
        }
      }
    },
    "RegisterVolumeRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "Ec2VolumeId": {
          "shape": "String",
          "documentation": "<p>The Amazon EBS volume ID.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "RegisterVolumeResult": {
      "type": "structure",
      "members": {
        "VolumeId": {
          "shape": "String",
          "documentation": "<p>The volume ID.</p>"
        }
      },
      "documentation": "<p>Contains the response to a <code>RegisterVolume</code> request.</p>"
    },
    "ReportedOs": {
      "type": "structure",
      "members": {
        "Family": {
          "shape": "String",
          "documentation": "<p>The operating system family.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The operating system name.</p>"
        },
        "Version": {
          "shape": "String",
          "documentation": "<p>The operating system version.</p>"
        }
      },
      "documentation": "<p>A registered instance's reported operating system.</p>"
    },
    "ResourceArn": {
      "type": "string"
    },
    "RootDeviceType": {
      "type": "string",
      "enum": [
        "ebs",
        "instance-store"
      ]
    },
    "SelfUserProfile": {
      "type": "structure",
      "members": {
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user's IAM ARN.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The user's name.</p>"
        },
        "SshUsername": {
          "shape": "String",
          "documentation": "<p>The user's SSH user name.</p>"
        },
        "SshPublicKey": {
          "shape": "String",
          "documentation": "<p>The user's SSH public key.</p>"
        }
      },
      "documentation": "<p>Describes a user's SSH information.</p>"
    },
    "ServiceError": {
      "type": "structure",
      "members": {
        "ServiceErrorId": {
          "shape": "String",
          "documentation": "<p>The error ID.</p>"
        },
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>The error type.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>A message that describes the error.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>When the error occurred.</p>"
        }
      },
      "documentation": "<p>Describes an AWS OpsWorks Stacks service error.</p>"
    },
    "ServiceErrors": {
      "type": "list",
      "member": {
        "shape": "ServiceError"
      }
    },
    "SetLoadBasedAutoScalingRequest": {
      "type": "structure",
      "required": [
        "LayerId"
      ],
      "members": {
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The layer ID.</p>"
        },
        "Enable": {
          "shape": "Boolean",
          "documentation": "<p>Enables load-based auto scaling for the layer.</p>"
        },
        "UpScaling": {
          "shape": "AutoScalingThresholds",
          "documentation": "<p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If the load exceeds these thresholds for a specified amount of time, AWS OpsWorks Stacks starts a specified number of instances.</p>"
        },
        "DownScaling": {
          "shape": "AutoScalingThresholds",
          "documentation": "<p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If the load falls below these thresholds for a specified amount of time, AWS OpsWorks Stacks stops a specified number of instances.</p>"
        }
      }
    },
    "SetPermissionRequest": {
      "type": "structure",
      "required": [
        "StackId",
        "IamUserArn"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user's IAM ARN. This can also be a federated user's ARN.</p>"
        },
        "AllowSsh": {
          "shape": "Boolean",
          "documentation": "<p>The user is allowed to use SSH to communicate with the instance.</p>"
        },
        "AllowSudo": {
          "shape": "Boolean",
          "documentation": "<p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>"
        },
        "Level": {
          "shape": "String",
          "documentation": "<p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p> <ul> <li> <p> <code>deny</code> </p> </li> <li> <p> <code>show</code> </p> </li> <li> <p> <code>deploy</code> </p> </li> <li> <p> <code>manage</code> </p> </li> <li> <p> <code>iam_only</code> </p> </li> </ul> <p>For more information about the permissions associated with these levels, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"
        }
      }
    },
    "SetTimeBasedAutoScalingRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "AutoScalingSchedule": {
          "shape": "WeeklyAutoScalingSchedule",
          "documentation": "<p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>"
        }
      }
    },
    "ShutdownEventConfiguration": {
      "type": "structure",
      "members": {
        "ExecutionTimeout": {
          "shape": "Integer",
          "documentation": "<p>The time, in seconds, that AWS OpsWorks Stacks will wait after triggering a Shutdown event before shutting down an instance.</p>"
        },
        "DelayUntilElbConnectionsDrained": {
          "shape": "Boolean",
          "documentation": "<p>Whether to enable Elastic Load Balancing connection draining. For more information, see <a href=\"https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain\">Connection Draining</a> </p>"
        }
      },
      "documentation": "<p>The Shutdown event configuration.</p>"
    },
    "Source": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "SourceType",
          "documentation": "<p>The repository type.</p>"
        },
        "Url": {
          "shape": "String",
          "documentation": "<p>The source URL. The following is an example of an Amazon S3 source URL: <code>https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz</code>.</p>"
        },
        "Username": {
          "shape": "String",
          "documentation": "<p>This parameter depends on the repository type.</p> <ul> <li> <p>For Amazon S3 bundles, set <code>Username</code> to the appropriate IAM access key ID.</p> </li> <li> <p>For HTTP bundles, Git repositories, and Subversion repositories, set <code>Username</code> to the user name.</p> </li> </ul>"
        },
        "Password": {
          "shape": "String",
          "documentation": "<p>When included in a request, the parameter depends on the repository type.</p> <ul> <li> <p>For Amazon S3 bundles, set <code>Password</code> to the appropriate IAM secret access key.</p> </li> <li> <p>For HTTP bundles and Subversion repositories, set <code>Password</code> to the password.</p> </li> </ul> <p>For more information on how to safely handle IAM credentials, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html\">https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html</a>.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>"
        },
        "SshKey": {
          "shape": "String",
          "documentation": "<p>In requests, the repository's SSH key.</p> <p>In responses, AWS OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>"
        },
        "Revision": {
          "shape": "String",
          "documentation": "<p>The application's version. AWS OpsWorks Stacks enables you to easily deploy new versions of an application. One of the simplest approaches is to have branches or revisions in your repository that represent different versions that can potentially be deployed.</p>"
        }
      },
      "documentation": "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Creating Apps</a> or <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Custom Recipes and Cookbooks</a>.</p>"
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "git",
        "svn",
        "archive",
        "s3"
      ]
    },
    "SslConfiguration": {
      "type": "structure",
      "required": [
        "Certificate",
        "PrivateKey"
      ],
      "members": {
        "Certificate": {
          "shape": "String",
          "documentation": "<p>The contents of the certificate's domain.crt file.</p>"
        },
        "PrivateKey": {
          "shape": "String",
          "documentation": "<p>The private key; the contents of the certificate's domain.kex file.</p>"
        },
        "Chain": {
          "shape": "String",
          "documentation": "<p>Optional. Can be used to specify an intermediate certificate authority key or client authentication.</p>"
        }
      },
      "documentation": "<p>Describes an app's SSL configuration.</p>"
    },
    "Stack": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The stack name.</p>"
        },
        "Arn": {
          "shape": "String",
          "documentation": "<p>The stack's ARN.</p>"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The stack AWS region, such as \"ap-northeast-2\". For more information about AWS regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The VPC ID; applicable only if the stack is running in a VPC.</p>"
        },
        "Attributes": {
          "shape": "StackAttributes",
          "documentation": "<p>The stack's attributes.</p>"
        },
        "ServiceRoleArn": {
          "shape": "String",
          "documentation": "<p>The stack AWS Identity and Access Management (IAM) role.</p>"
        },
        "DefaultInstanceProfileArn": {
          "shape": "String",
          "documentation": "<p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "DefaultOs": {
          "shape": "String",
          "documentation": "<p>The stack's default operating system.</p>"
        },
        "HostnameTheme": {
          "shape": "String",
          "documentation": "<p>The stack host name theme, with spaces replaced by underscores.</p>"
        },
        "DefaultAvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The stack's default Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "DefaultSubnetId": {
          "shape": "String",
          "documentation": "<p>The default subnet ID; applicable only if the stack is running in a VPC.</p>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. The string should be in the following format:</p> <p> <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code> </p> <p>For more information on custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>"
        },
        "ConfigurationManager": {
          "shape": "StackConfigurationManager",
          "documentation": "<p>The configuration manager.</p>"
        },
        "ChefConfiguration": {
          "shape": "ChefConfiguration",
          "documentation": "<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"
        },
        "UseCustomCookbooks": {
          "shape": "Boolean",
          "documentation": "<p>Whether the stack uses custom cookbooks.</p>"
        },
        "UseOpsworksSecurityGroups": {
          "shape": "Boolean",
          "documentation": "<p>Whether the stack automatically associates the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p>"
        },
        "CustomCookbooksSource": {
          "shape": "Source",
          "documentation": "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>"
        },
        "DefaultSshKeyName": {
          "shape": "String",
          "documentation": "<p>A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or update an instance.</p>"
        },
        "CreatedAt": {
          "shape": "DateTime",
          "documentation": "<p>The date when the stack was created.</p>"
        },
        "DefaultRootDeviceType": {
          "shape": "RootDeviceType",
          "documentation": "<p>The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"
        },
        "AgentVersion": {
          "shape": "String",
          "documentation": "<p>The agent version. This parameter is set to <code>LATEST</code> for auto-update. or a version number for a fixed agent version.</p>"
        }
      },
      "documentation": "<p>Describes a stack.</p>"
    },
    "StackAttributes": {
      "type": "map",
      "key": {
        "shape": "StackAttributesKeys"
      },
      "value": {
        "shape": "String"
      }
    },
    "StackAttributesKeys": {
      "type": "string",
      "enum": [
        "Color"
      ]
    },
    "StackConfigurationManager": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name. This parameter must be set to \"Chef\".</p>"
        },
        "Version": {
          "shape": "String",
          "documentation": "<p>The Chef version. This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks. The default value for Linux stacks is 11.4.</p>"
        }
      },
      "documentation": "<p>Describes the configuration manager.</p>"
    },
    "StackSummary": {
      "type": "structure",
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The stack name.</p>"
        },
        "Arn": {
          "shape": "String",
          "documentation": "<p>The stack's ARN.</p>"
        },
        "LayersCount": {
          "shape": "Integer",
          "documentation": "<p>The number of layers.</p>"
        },
        "AppsCount": {
          "shape": "Integer",
          "documentation": "<p>The number of apps.</p>"
        },
        "InstancesCount": {
          "shape": "InstancesCount",
          "documentation": "<p>An <code>InstancesCount</code> object with the number of instances in each status.</p>"
        }
      },
      "documentation": "<p>Summarizes the number of layers, instances, and apps in a stack.</p>"
    },
    "Stacks": {
      "type": "list",
      "member": {
        "shape": "Stack"
      }
    },
    "StartInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        }
      }
    },
    "StartStackRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "StopInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "Force": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether to force an instance to stop. If the instance's root device type is <code>ebs</code>, or EBS-backed, adding the <code>Force</code> parameter to the <code>StopInstances</code> API call disassociates the AWS OpsWorks Stacks instance from EC2, and forces deletion of <i>only</i> the OpsWorks Stacks instance. You must also delete the formerly-associated instance in EC2 after troubleshooting and replacing the AWS OpsWorks Stacks instance with a new one.</p>"
        }
      }
    },
    "StopStackRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "Strings": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Switch": {
      "type": "string"
    },
    "TagKey": {
      "type": "string"
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
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The stack or layer's Amazon Resource Number (ARN).</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A map that contains tag keys and tag values that are attached to a stack or layer.</p> <ul> <li> <p>The key cannot be empty.</p> </li> <li> <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p> </li> <li> <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code> </p> </li> <li> <p>Leading and trailing white spaces are trimmed from both the key and value.</p> </li> <li> <p>A maximum of 40 tags is allowed for any resource.</p> </li> </ul>"
        }
      }
    },
    "TagValue": {
      "type": "string"
    },
    "Tags": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      }
    },
    "TemporaryCredential": {
      "type": "structure",
      "members": {
        "Username": {
          "shape": "String",
          "documentation": "<p>The user name.</p>"
        },
        "Password": {
          "shape": "String",
          "documentation": "<p>The password.</p>"
        },
        "ValidForInMinutes": {
          "shape": "Integer",
          "documentation": "<p>The length of time (in minutes) that the grant is valid. When the grant expires, at the end of this period, the user will no longer be able to use the credentials to log in. If they are logged in at the time, they will be automatically logged out.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance's AWS OpsWorks Stacks ID.</p>"
        }
      },
      "documentation": "<p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>"
    },
    "TimeBasedAutoScalingConfiguration": {
      "type": "structure",
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "AutoScalingSchedule": {
          "shape": "WeeklyAutoScalingSchedule",
          "documentation": "<p>A <code>WeeklyAutoScalingSchedule</code> object with the instance schedule.</p>"
        }
      },
      "documentation": "<p>Describes an instance's time-based auto scaling configuration.</p>"
    },
    "TimeBasedAutoScalingConfigurations": {
      "type": "list",
      "member": {
        "shape": "TimeBasedAutoScalingConfiguration"
      }
    },
    "UnassignInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        }
      }
    },
    "UnassignVolumeRequest": {
      "type": "structure",
      "required": [
        "VolumeId"
      ],
      "members": {
        "VolumeId": {
          "shape": "String",
          "documentation": "<p>The volume ID.</p>"
        }
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The stack or layer's Amazon Resource Number (ARN).</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>A list of the keys of tags to be removed from a stack or layer.</p>"
        }
      }
    },
    "UpdateAppRequest": {
      "type": "structure",
      "required": [
        "AppId"
      ],
      "members": {
        "AppId": {
          "shape": "String",
          "documentation": "<p>The app ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The app name.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the app.</p>"
        },
        "DataSources": {
          "shape": "DataSources",
          "documentation": "<p>The app's data sources.</p>"
        },
        "Type": {
          "shape": "AppType",
          "documentation": "<p>The app type.</p>"
        },
        "AppSource": {
          "shape": "Source",
          "documentation": "<p>A <code>Source</code> object that specifies the app repository.</p>"
        },
        "Domains": {
          "shape": "Strings",
          "documentation": "<p>The app's virtual host settings, with multiple domains separated by commas. For example: <code>'www.example.com, example.com'</code> </p>"
        },
        "EnableSsl": {
          "shape": "Boolean",
          "documentation": "<p>Whether SSL is enabled for the app.</p>"
        },
        "SslConfiguration": {
          "shape": "SslConfiguration",
          "documentation": "<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>"
        },
        "Attributes": {
          "shape": "AppAttributes",
          "documentation": "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"
        },
        "Environment": {
          "shape": "EnvironmentVariables",
          "documentation": "<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be associated with the app. After you deploy the app, these variables are defined on the associated app server instances.For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>.</p> <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, \"Environment: is too large (maximum is 20 KB).\"</p> <note> <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p> </note>"
        }
      }
    },
    "UpdateElasticIpRequest": {
      "type": "structure",
      "required": [
        "ElasticIp"
      ],
      "members": {
        "ElasticIp": {
          "shape": "String",
          "documentation": "<p>The IP address for which you want to update the name.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The new name.</p>"
        }
      }
    },
    "UpdateInstanceRequest": {
      "type": "structure",
      "required": [
        "InstanceId"
      ],
      "members": {
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "LayerIds": {
          "shape": "Strings",
          "documentation": "<p>The instance's layer IDs.</p>"
        },
        "InstanceType": {
          "shape": "String",
          "documentation": "<p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types, open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>. The <b>Size</b> list contains the currently supported types. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance Families and Types</a>. The parameter values that you use to specify the various types are in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>"
        },
        "AutoScalingType": {
          "shape": "AutoScalingType",
          "documentation": "<p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>"
        },
        "Hostname": {
          "shape": "String",
          "documentation": "<p>The instance host name.</p>"
        },
        "Os": {
          "shape": "String",
          "documentation": "<p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using a custom AMI.</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> </ul> <p>For more information about supported operating systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p> <p>The default option is the current Amazon Linux version. If you set this parameter to <code>Custom</code>, you must use the AmiId parameter to specify the custom AMI that you want to use. For more information about supported operating systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">Operating Systems</a>. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using Custom AMIs</a>.</p> <note> <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p> </note>"
        },
        "AmiId": {
          "shape": "String",
          "documentation": "<p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the instance is already using. You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using custom AMIs. </p>"
        },
        "SshKeyName": {
          "shape": "String",
          "documentation": "<p>The instance's Amazon EC2 key name.</p>"
        },
        "Architecture": {
          "shape": "Architecture",
          "documentation": "<p>The instance architecture. Instance types do not necessarily support both architectures. For a list of the architectures that are supported by the different instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance Families and Types</a>.</p>"
        },
        "InstallUpdatesOnBoot": {
          "shape": "Boolean",
          "documentation": "<p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>"
        },
        "EbsOptimized": {
          "shape": "Boolean",
          "documentation": "<p>This property cannot be updated.</p>"
        },
        "AgentVersion": {
          "shape": "String",
          "documentation": "<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p> <code>INHERIT</code> - Use the stack's default agent version setting.</p> </li> <li> <p> <i>version_number</i> - Use the specified agent version. This value overrides the stack's default setting. To update the agent version, you must edit the instance configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the instance.</p> </li> </ul> <p>The default setting is <code>INHERIT</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p> <p>AgentVersion cannot be set to Chef 12.2.</p>"
        }
      }
    },
    "UpdateLayerRequest": {
      "type": "structure",
      "required": [
        "LayerId"
      ],
      "members": {
        "LayerId": {
          "shape": "String",
          "documentation": "<p>The layer ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The layer name, which is used by the console.</p>"
        },
        "Shortname": {
          "shape": "String",
          "documentation": "<p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by AWS OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files are installed. It can have a maximum of 200 characters and must be in the following format: /\\A[a-z0-9\\-\\_\\.]+\\Z/.</p> <p>The built-in layers' short names are defined by AWS OpsWorks Stacks. For more information, see the <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html\">Layer Reference</a> </p>"
        },
        "Attributes": {
          "shape": "LayerAttributes",
          "documentation": "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"
        },
        "CloudWatchLogsConfiguration": {
          "shape": "CloudWatchLogsConfiguration",
          "documentation": "<p>Specifies CloudWatch Logs configuration options for the layer. For more information, see <a>CloudWatchLogsLogStream</a>.</p>"
        },
        "CustomInstanceProfileArn": {
          "shape": "String",
          "documentation": "<p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A JSON-formatted string containing custom stack configuration and deployment attributes to be installed on the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\"> Using Custom JSON</a>. </p>"
        },
        "CustomSecurityGroupIds": {
          "shape": "Strings",
          "documentation": "<p>An array containing the layer's custom security group IDs.</p>"
        },
        "Packages": {
          "shape": "Strings",
          "documentation": "<p>An array of <code>Package</code> objects that describe the layer's packages.</p>"
        },
        "VolumeConfigurations": {
          "shape": "VolumeConfigurations",
          "documentation": "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"
        },
        "EnableAutoHealing": {
          "shape": "Boolean",
          "documentation": "<p>Whether to disable auto healing for the layer.</p>"
        },
        "AutoAssignElasticIps": {
          "shape": "Boolean",
          "documentation": "<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit a Layer</a>.</p>"
        },
        "AutoAssignPublicIps": {
          "shape": "Boolean",
          "documentation": "<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit a Layer</a>.</p>"
        },
        "CustomRecipes": {
          "shape": "Recipes",
          "documentation": "<p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>"
        },
        "InstallUpdatesOnBoot": {
          "shape": "Boolean",
          "documentation": "<p>Whether to install operating system and package updates when the instance boots. The default value is <code>true</code>. To control when updates are installed, set this value to <code>false</code>. You must then update your instances manually by using <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p> <note> <p>We strongly recommend using the default value of <code>true</code>, to ensure that your instances have the latest security updates.</p> </note>"
        },
        "UseEbsOptimizedInstances": {
          "shape": "Boolean",
          "documentation": "<p>Whether to use Amazon EBS-optimized instances.</p>"
        },
        "LifecycleEventConfiguration": {
          "shape": "LifecycleEventConfiguration",
          "documentation": "<p/>"
        }
      }
    },
    "UpdateMyUserProfileRequest": {
      "type": "structure",
      "members": {
        "SshPublicKey": {
          "shape": "String",
          "documentation": "<p>The user's SSH public key.</p>"
        }
      }
    },
    "UpdateRdsDbInstanceRequest": {
      "type": "structure",
      "required": [
        "RdsDbInstanceArn"
      ],
      "members": {
        "RdsDbInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon RDS instance's ARN.</p>"
        },
        "DbUser": {
          "shape": "String",
          "documentation": "<p>The master user name.</p>"
        },
        "DbPassword": {
          "shape": "String",
          "documentation": "<p>The database password.</p>"
        }
      }
    },
    "UpdateStackRequest": {
      "type": "structure",
      "required": [
        "StackId"
      ],
      "members": {
        "StackId": {
          "shape": "String",
          "documentation": "<p>The stack ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The stack's new name.</p>"
        },
        "Attributes": {
          "shape": "StackAttributes",
          "documentation": "<p>One or more user-defined key-value pairs to be added to the stack attributes.</p>"
        },
        "ServiceRoleArn": {
          "shape": "String",
          "documentation": "<p>Do not use this parameter. You cannot update a stack's service role.</p>"
        },
        "DefaultInstanceProfileArn": {
          "shape": "String",
          "documentation": "<p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances. For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"
        },
        "DefaultOs": {
          "shape": "String",
          "documentation": "<p>The stack's operating system, which must be set to one of the following:</p> <ul> <li> <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p> </li> <li> <p>A supported Ubuntu operating system, such as <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p> </li> <li> <p> <code>CentOS Linux 7</code> </p> </li> <li> <p> <code>Red Hat Enterprise Linux 7</code> </p> </li> <li> <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p> </li> <li> <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using Custom AMIs</a>.</p> </li> </ul> <p>The default option is the stack's current operating system. For more information about supported operating systems, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">AWS OpsWorks Stacks Operating Systems</a>.</p>"
        },
        "HostnameTheme": {
          "shape": "String",
          "documentation": "<p>The stack's new host name theme, with spaces replaced by underscores. The theme is used to generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's short name. The other themes are:</p> <ul> <li> <p> <code>Baked_Goods</code> </p> </li> <li> <p> <code>Clouds</code> </p> </li> <li> <p> <code>Europe_Cities</code> </p> </li> <li> <p> <code>Fruits</code> </p> </li> <li> <p> <code>Greek_Deities_and_Titans</code> </p> </li> <li> <p> <code>Legendary_creatures_from_Japan</code> </p> </li> <li> <p> <code>Planets_and_Moons</code> </p> </li> <li> <p> <code>Roman_Deities</code> </p> </li> <li> <p> <code>Scottish_Islands</code> </p> </li> <li> <p> <code>US_Cities</code> </p> </li> <li> <p> <code>Wild_Cats</code> </p> </li> </ul> <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a host name based on the current theme.</p>"
        },
        "DefaultAvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The stack's default Availability Zone, which must be in the stack's region. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must be in the same zone. For more information, see <a>CreateStack</a>. </p>"
        },
        "DefaultSubnetId": {
          "shape": "String",
          "documentation": "<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify otherwise when you create the instance. If you also specify a value for <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on default values and when this parameter is required, see the <code>VpcId</code> parameter description. </p>"
        },
        "CustomJson": {
          "shape": "String",
          "documentation": "<p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration JSON values or to pass data to recipes. The string should be in the following format:</p> <p> <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code> </p> <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to Modify the Stack Configuration Attributes</a>.</p>"
        },
        "ConfigurationManager": {
          "shape": "StackConfigurationManager",
          "documentation": "<p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>"
        },
        "ChefConfiguration": {
          "shape": "ChefConfiguration",
          "documentation": "<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"
        },
        "UseCustomCookbooks": {
          "shape": "Boolean",
          "documentation": "<p>Whether the stack uses custom cookbooks.</p>"
        },
        "CustomCookbooksSource": {
          "shape": "Source",
          "documentation": "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>"
        },
        "DefaultSshKeyName": {
          "shape": "String",
          "documentation": "<p>A default Amazon EC2 key-pair name. The default value is <code>none</code>. If you specify a key-pair name, AWS OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH Access</a>. You can override this setting by specifying a different key pair, or no key pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\"> create an instance</a>. </p>"
        },
        "DefaultRootDeviceType": {
          "shape": "RootDeviceType",
          "documentation": "<p>The default root device type. This value is used by default for all instances in the stack, but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"
        },
        "UseOpsworksSecurityGroups": {
          "shape": "Boolean",
          "documentation": "<p>Whether to associate the AWS OpsWorks Stacks built-in security groups with the stack's layers.</p> <p>AWS OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to provide your own custom security groups instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has the following settings: </p> <ul> <li> <p>True - AWS OpsWorks Stacks automatically associates the appropriate built-in security group with each layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot delete the built-in security group.</p> </li> <li> <p>False - AWS OpsWorks Stacks does not associate built-in security groups with layers. You must create appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still manually associate a built-in security group with a layer on. Custom security groups are required only for those layers that need custom settings.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"
        },
        "AgentVersion": {
          "shape": "String",
          "documentation": "<p>The default AWS OpsWorks Stacks agent version. You have the following options:</p> <ul> <li> <p>Auto-update - Set this parameter to <code>LATEST</code>. AWS OpsWorks Stacks automatically installs new agent versions on the stack's instances as soon as they are available.</p> </li> <li> <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must edit the stack configuration and specify a new version. AWS OpsWorks Stacks then automatically installs that version on the stack's instances.</p> </li> </ul> <p>The default setting is <code>LATEST</code>. To specify an agent version, you must use the complete version number, not the abbreviated number shown on the console. For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p> <note> <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default setting.</p> </note>"
        }
      }
    },
    "UpdateUserProfileRequest": {
      "type": "structure",
      "required": [
        "IamUserArn"
      ],
      "members": {
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user IAM ARN. This can also be a federated user's ARN.</p>"
        },
        "SshUsername": {
          "shape": "String",
          "documentation": "<p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If the specified name includes other punctuation marks, AWS OpsWorks Stacks removes them. For example, <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH user name, AWS OpsWorks Stacks generates one from the IAM user name. </p>"
        },
        "SshPublicKey": {
          "shape": "String",
          "documentation": "<p>The user's new SSH public key.</p>"
        },
        "AllowSelfManagement": {
          "shape": "Boolean",
          "documentation": "<p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Managing User Permissions</a>.</p>"
        }
      }
    },
    "UpdateVolumeRequest": {
      "type": "structure",
      "required": [
        "VolumeId"
      ],
      "members": {
        "VolumeId": {
          "shape": "String",
          "documentation": "<p>The volume ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The new name.</p>"
        },
        "MountPoint": {
          "shape": "String",
          "documentation": "<p>The new mount point.</p>"
        }
      }
    },
    "UserProfile": {
      "type": "structure",
      "members": {
        "IamUserArn": {
          "shape": "String",
          "documentation": "<p>The user's IAM ARN.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The user's name.</p>"
        },
        "SshUsername": {
          "shape": "String",
          "documentation": "<p>The user's SSH user name.</p>"
        },
        "SshPublicKey": {
          "shape": "String",
          "documentation": "<p>The user's SSH public key.</p>"
        },
        "AllowSelfManagement": {
          "shape": "Boolean",
          "documentation": "<p>Whether users can specify their own SSH public key through the My Settings page. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Managing User Permissions</a>.</p>"
        }
      },
      "documentation": "<p>Describes a user's SSH information.</p>"
    },
    "UserProfiles": {
      "type": "list",
      "member": {
        "shape": "UserProfile"
      }
    },
    "ValidForInMinutes": {
      "type": "integer",
      "box": true,
      "max": 1440,
      "min": 60
    },
    "VirtualizationType": {
      "type": "string",
      "enum": [
        "paravirtual",
        "hvm"
      ]
    },
    "Volume": {
      "type": "structure",
      "members": {
        "VolumeId": {
          "shape": "String",
          "documentation": "<p>The volume ID.</p>"
        },
        "Ec2VolumeId": {
          "shape": "String",
          "documentation": "<p>The Amazon EC2 volume ID.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The volume name.</p>"
        },
        "RaidArrayId": {
          "shape": "String",
          "documentation": "<p>The RAID array ID.</p>"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The instance ID.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The value returned by <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html\">DescribeVolumes</a>.</p>"
        },
        "Size": {
          "shape": "Integer",
          "documentation": "<p>The volume size.</p>"
        },
        "Device": {
          "shape": "String",
          "documentation": "<p>The device name.</p>"
        },
        "MountPoint": {
          "shape": "String",
          "documentation": "<p>The volume mount point. For example, \"/mnt/disk1\".</p>"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The AWS region. For more information about AWS regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The volume Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"
        },
        "VolumeType": {
          "shape": "String",
          "documentation": "<p>The volume type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html\"> Amazon EBS Volume Types</a>.</p> <ul> <li> <p> <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p> </li> <li> <p> <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p> </li> </ul>"
        },
        "Iops": {
          "shape": "Integer",
          "documentation": "<p>For PIOPS volumes, the IOPS per disk.</p>"
        },
        "Encrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether an Amazon EBS volume is encrypted. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html\">Amazon EBS Encryption</a>.</p>"
        }
      },
      "documentation": "<p>Describes an instance's Amazon EBS volume.</p>"
    },
    "VolumeConfiguration": {
      "type": "structure",
      "required": [
        "MountPoint",
        "NumberOfDisks",
        "Size"
      ],
      "members": {
        "MountPoint": {
          "shape": "String",
          "documentation": "<p>The volume mount point. For example \"/dev/sdh\".</p>"
        },
        "RaidLevel": {
          "shape": "Integer",
          "documentation": "<p>The volume <a href=\"http://en.wikipedia.org/wiki/Standard_RAID_levels\">RAID level</a>.</p>"
        },
        "NumberOfDisks": {
          "shape": "Integer",
          "documentation": "<p>The number of disks in the volume.</p>"
        },
        "Size": {
          "shape": "Integer",
          "documentation": "<p>The volume size.</p>"
        },
        "VolumeType": {
          "shape": "String",
          "documentation": "<p>The volume type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html\"> Amazon EBS Volume Types</a>.</p> <ul> <li> <p> <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p> </li> <li> <p> <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p> </li> <li> <p> <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 500 GiB and a maximum size of 16384 GiB.</p> </li> </ul>"
        },
        "Iops": {
          "shape": "Integer",
          "documentation": "<p>For PIOPS volumes, the IOPS per disk.</p>"
        },
        "Encrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether an Amazon EBS volume is encrypted. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html\">Amazon EBS Encryption</a>.</p>"
        }
      },
      "documentation": "<p>Describes an Amazon EBS volume configuration.</p>"
    },
    "VolumeConfigurations": {
      "type": "list",
      "member": {
        "shape": "VolumeConfiguration"
      }
    },
    "VolumeType": {
      "type": "string",
      "enum": [
        "gp2",
        "io1",
        "standard"
      ]
    },
    "Volumes": {
      "type": "list",
      "member": {
        "shape": "Volume"
      }
    },
    "WeeklyAutoScalingSchedule": {
      "type": "structure",
      "members": {
        "Monday": {
          "shape": "DailyAutoScalingSchedule",
          "documentation": "<p>The schedule for Monday.</p>"
        },
        "Tuesday": {
          "shape": "DailyAutoScalingSchedule",
          "documentation": "<p>The schedule for Tuesday.</p>"
        },
        "Wednesday": {
          "shape": "DailyAutoScalingSchedule",
          "documentation": "<p>The schedule for Wednesday.</p>"
        },
        "Thursday": {
          "shape": "DailyAutoScalingSchedule",
          "documentation": "<p>The schedule for Thursday.</p>"
        },
        "Friday": {
          "shape": "DailyAutoScalingSchedule",
          "documentation": "<p>The schedule for Friday.</p>"
        },
        "Saturday": {
          "shape": "DailyAutoScalingSchedule",
          "documentation": "<p>The schedule for Saturday.</p>"
        },
        "Sunday": {
          "shape": "DailyAutoScalingSchedule",
          "documentation": "<p>The schedule for Sunday.</p>"
        }
      },
      "documentation": "<p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p> <ul> <li> <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p> </li> <li> <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to \"on\" or \"off\"</p> </li> </ul> <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p> <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p> <p> <code> { \"12\":\"on\", \"13\":\"on\", \"14\":\"on\", \"15\":\"on\" } </code> </p>"
    }
  },
  "documentation": "<fullname>AWS OpsWorks</fullname> <p>Welcome to the <i>AWS OpsWorks Stacks API Reference</i>. This guide provides descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions and data types, including common parameters and error codes. </p> <p>AWS OpsWorks Stacks is an application management service that provides an integrated experience for overseeing the complete application lifecycle. For information about this product, go to the <a href=\"http://aws.amazon.com/opsworks/\">AWS OpsWorks</a> details page. </p> <p> <b>SDKs and CLI</b> </p> <p>The most common way to use the AWS OpsWorks Stacks API is by using the AWS Command Line Interface (CLI) or by using one of the AWS SDKs to implement applications in your preferred language. For more information, see:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html\">AWS CLI</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html\">AWS SDK for Java</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm\">AWS SDK for .NET</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html\">AWS SDK for PHP 2</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/sdkforruby/api/\">AWS SDK for Ruby</a> </p> </li> <li> <p> <a href=\"http://aws.amazon.com/documentation/sdkforjavascript/\">AWS SDK for Node.js</a> </p> </li> <li> <p> <a href=\"http://docs.pythonboto.org/en/latest/ref/opsworks.html\">AWS SDK for Python(Boto)</a> </p> </li> </ul> <p> <b>Endpoints</b> </p> <p>AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Stacks can only be accessed or managed within the endpoint in which they are created.</p> <ul> <li> <p>opsworks.us-east-1.amazonaws.com</p> </li> <li> <p>opsworks.us-east-2.amazonaws.com</p> </li> <li> <p>opsworks.us-west-1.amazonaws.com</p> </li> <li> <p>opsworks.us-west-2.amazonaws.com</p> </li> <li> <p>opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS console)</p> </li> <li> <p>opsworks.eu-west-1.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-2.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-3.amazonaws.com</p> </li> <li> <p>opsworks.eu-central-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-2.amazonaws.com</p> </li> <li> <p>opsworks.ap-south-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-2.amazonaws.com</p> </li> <li> <p>opsworks.sa-east-1.amazonaws.com</p> </li> </ul> <p> <b>Chef Versions</b> </p> <p>When you call <a>CreateStack</a>, <a>CloneStack</a>, or <a>UpdateStack</a> we recommend you use the <code>ConfigurationManager</code> parameter to specify the Chef version. The recommended and default value for Linux stacks is currently 12. Windows stacks use Chef 12.2. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html\">Chef Versions</a>.</p> <note> <p>You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend migrating your existing Linux stacks to Chef 12 as soon as possible.</p> </note>"
}
]===]))
