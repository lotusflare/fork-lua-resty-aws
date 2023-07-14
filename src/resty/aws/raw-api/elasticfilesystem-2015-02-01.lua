local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-02-01",
    "endpointPrefix": "elasticfilesystem",
    "protocol": "rest-json",
    "serviceAbbreviation": "EFS",
    "serviceFullName": "Amazon Elastic File System",
    "serviceId": "EFS",
    "signatureVersion": "v4",
    "uid": "elasticfilesystem-2015-02-01"
  },
  "operations": {
    "CreateAccessPoint": {
      "name": "CreateAccessPoint",
      "http": {
        "method": "POST",
        "requestUri": "/2015-02-01/access-points",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateAccessPointRequest"
      },
      "output": {
        "shape": "AccessPointDescription"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "AccessPointAlreadyExists"
        },
        {
          "shape": "IncorrectFileSystemLifeCycleState"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "AccessPointLimitExceeded"
        }
      ],
      "documentation": "<p>Creates an EFS access point. An access point is an application-specific view into an EFS file system that applies an operating system user and group, and a file system path, to any file system request made through the access point. The operating system user and group override any identity information provided by the NFS client. The file system path is exposed as the access point's root directory. Applications using the access point can only access data in its own directory and below. To learn more, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html\">Mounting a File System Using EFS Access Points</a>.</p> <p>This operation requires permissions for the <code>elasticfilesystem:CreateAccessPoint</code> action.</p>"
    },
    "CreateFileSystem": {
      "name": "CreateFileSystem",
      "http": {
        "method": "POST",
        "requestUri": "/2015-02-01/file-systems",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateFileSystemRequest"
      },
      "output": {
        "shape": "FileSystemDescription"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemAlreadyExists"
        },
        {
          "shape": "FileSystemLimitExceeded"
        },
        {
          "shape": "InsufficientThroughputCapacity"
        },
        {
          "shape": "ThroughputLimitExceeded"
        }
      ],
      "documentation": "<p>Creates a new, empty file system. The operation requires a creation token in the request that Amazon EFS uses to ensure idempotent creation (calling the operation with same creation token has no effect). If a file system does not currently exist that is owned by the caller's AWS account with the specified creation token, this operation does the following:</p> <ul> <li> <p>Creates a new, empty file system. The file system will have an Amazon EFS assigned ID, and an initial lifecycle state <code>creating</code>.</p> </li> <li> <p>Returns with the description of the created file system.</p> </li> </ul> <p>Otherwise, this operation returns a <code>FileSystemAlreadyExists</code> error with the ID of the existing file system.</p> <note> <p>For basic use cases, you can use a randomly generated UUID for the creation token.</p> </note> <p> The idempotent operation allows you to retry a <code>CreateFileSystem</code> call without risk of creating an extra file system. This can happen when an initial call fails in a way that leaves it uncertain whether or not a file system was actually created. An example might be that a transport level timeout occurred or your connection was reset. As long as you use the same creation token, if the initial call had succeeded in creating a file system, the client can learn of its existence from the <code>FileSystemAlreadyExists</code> error.</p> <note> <p>The <code>CreateFileSystem</code> call returns while the file system's lifecycle state is still <code>creating</code>. You can check the file system creation status by calling the <a>DescribeFileSystems</a> operation, which among other things returns the file system state.</p> </note> <p>This operation also takes an optional <code>PerformanceMode</code> parameter that you choose for your file system. We recommend <code>generalPurpose</code> performance mode for most file systems. File systems using the <code>maxIO</code> performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. The performance mode can't be changed after the file system has been created. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html\">Amazon EFS: Performance Modes</a>.</p> <p>After the file system is fully created, Amazon EFS sets its lifecycle state to <code>available</code>, at which point you can create one or more mount targets for the file system in your VPC. For more information, see <a>CreateMountTarget</a>. You mount your Amazon EFS file system on an EC2 instances in your VPC by using the mount target. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html\">Amazon EFS: How it Works</a>. </p> <p> This operation requires permissions for the <code>elasticfilesystem:CreateFileSystem</code> action. </p>"
    },
    "CreateMountTarget": {
      "name": "CreateMountTarget",
      "http": {
        "method": "POST",
        "requestUri": "/2015-02-01/mount-targets",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateMountTargetRequest"
      },
      "output": {
        "shape": "MountTargetDescription"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "IncorrectFileSystemLifeCycleState"
        },
        {
          "shape": "MountTargetConflict"
        },
        {
          "shape": "SubnetNotFound"
        },
        {
          "shape": "NoFreeAddressesInSubnet"
        },
        {
          "shape": "IpAddressInUse"
        },
        {
          "shape": "NetworkInterfaceLimitExceeded"
        },
        {
          "shape": "SecurityGroupLimitExceeded"
        },
        {
          "shape": "SecurityGroupNotFound"
        },
        {
          "shape": "UnsupportedAvailabilityZone"
        }
      ],
      "documentation": "<p>Creates a mount target for a file system. You can then mount the file system on EC2 instances by using the mount target.</p> <p>You can create one mount target in each Availability Zone in your VPC. All EC2 instances in a VPC within a given Availability Zone share a single mount target for a given file system. If you have multiple subnets in an Availability Zone, you create a mount target in one of the subnets. EC2 instances do not need to be in the same subnet as the mount target in order to access their file system. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html\">Amazon EFS: How it Works</a>. </p> <p>In the request, you also specify a file system ID for which you are creating the mount target and the file system's lifecycle state must be <code>available</code>. For more information, see <a>DescribeFileSystems</a>.</p> <p>In the request, you also provide a subnet ID, which determines the following:</p> <ul> <li> <p>VPC in which Amazon EFS creates the mount target</p> </li> <li> <p>Availability Zone in which Amazon EFS creates the mount target</p> </li> <li> <p>IP address range from which Amazon EFS selects the IP address of the mount target (if you don't specify an IP address in the request)</p> </li> </ul> <p>After creating the mount target, Amazon EFS returns a response that includes, a <code>MountTargetId</code> and an <code>IpAddress</code>. You use this IP address when mounting the file system in an EC2 instance. You can also use the mount target's DNS name when mounting the file system. The EC2 instance on which you mount the file system by using the mount target can resolve the mount target's DNS name to its IP address. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation\">How it Works: Implementation Overview</a>. </p> <p>Note that you can create mount targets for a file system in only one VPC, and there can be only one mount target per Availability Zone. That is, if the file system already has one or more mount targets created for it, the subnet specified in the request to add another mount target must meet the following requirements:</p> <ul> <li> <p>Must belong to the same VPC as the subnets of the existing mount targets</p> </li> <li> <p>Must not be in the same Availability Zone as any of the subnets of the existing mount targets</p> </li> </ul> <p>If the request satisfies the requirements, Amazon EFS does the following:</p> <ul> <li> <p>Creates a new mount target in the specified subnet.</p> </li> <li> <p>Also creates a new network interface in the subnet as follows:</p> <ul> <li> <p>If the request provides an <code>IpAddress</code>, Amazon EFS assigns that IP address to the network interface. Otherwise, Amazon EFS assigns a free address in the subnet (in the same way that the Amazon EC2 <code>CreateNetworkInterface</code> call does when a request does not specify a primary private IP address).</p> </li> <li> <p>If the request provides <code>SecurityGroups</code>, this network interface is associated with those security groups. Otherwise, it belongs to the default security group for the subnet's VPC.</p> </li> <li> <p>Assigns the description <code>Mount target <i>fsmt-id</i> for file system <i>fs-id</i> </code> where <code> <i>fsmt-id</i> </code> is the mount target ID, and <code> <i>fs-id</i> </code> is the <code>FileSystemId</code>.</p> </li> <li> <p>Sets the <code>requesterManaged</code> property of the network interface to <code>true</code>, and the <code>requesterId</code> value to <code>EFS</code>.</p> </li> </ul> <p>Each Amazon EFS mount target has one corresponding requester-managed EC2 network interface. After the network interface is created, Amazon EFS sets the <code>NetworkInterfaceId</code> field in the mount target's description to the network interface ID, and the <code>IpAddress</code> field to its address. If network interface creation fails, the entire <code>CreateMountTarget</code> operation fails.</p> </li> </ul> <note> <p>The <code>CreateMountTarget</code> call returns only after creating the network interface, but while the mount target state is still <code>creating</code>, you can check the mount target creation status by calling the <a>DescribeMountTargets</a> operation, which among other things returns the mount target state.</p> </note> <p>We recommend that you create a mount target in each of the Availability Zones. There are cost considerations for using a file system in an Availability Zone through a mount target created in another Availability Zone. For more information, see <a href=\"http://aws.amazon.com/efs/\">Amazon EFS</a>. In addition, by always using a mount target local to the instance's Availability Zone, you eliminate a partial failure scenario. If the Availability Zone in which your mount target is created goes down, then you can't access your file system through that mount target. </p> <p>This operation requires permissions for the following action on the file system:</p> <ul> <li> <p> <code>elasticfilesystem:CreateMountTarget</code> </p> </li> </ul> <p>This operation also requires permissions for the following Amazon EC2 actions:</p> <ul> <li> <p> <code>ec2:DescribeSubnets</code> </p> </li> <li> <p> <code>ec2:DescribeNetworkInterfaces</code> </p> </li> <li> <p> <code>ec2:CreateNetworkInterface</code> </p> </li> </ul>"
    },
    "CreateTags": {
      "name": "CreateTags",
      "http": {
        "method": "POST",
        "requestUri": "/2015-02-01/create-tags/{FileSystemId}",
        "responseCode": 204
      },
      "input": {
        "shape": "CreateTagsRequest"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        }
      ],
      "documentation": "<p>Creates or overwrites tags associated with a file system. Each tag is a key-value pair. If a tag key specified in the request already exists on the file system, this operation overwrites its value with the value provided in the request. If you add the <code>Name</code> tag to your file system, Amazon EFS returns it in the response to the <a>DescribeFileSystems</a> operation. </p> <p>This operation requires permission for the <code>elasticfilesystem:CreateTags</code> action.</p>",
      "deprecated": true,
      "deprecatedMessage": "Use TagResource."
    },
    "DeleteAccessPoint": {
      "name": "DeleteAccessPoint",
      "http": {
        "method": "DELETE",
        "requestUri": "/2015-02-01/access-points/{AccessPointId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteAccessPointRequest"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "AccessPointNotFound"
        }
      ],
      "documentation": "<p>Deletes the specified access point. After deletion is complete, new clients can no longer connect to the access points. Clients connected to the access point at the time of deletion will continue to function until they terminate their connection.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DeleteAccessPoint</code> action.</p>"
    },
    "DeleteFileSystem": {
      "name": "DeleteFileSystem",
      "http": {
        "method": "DELETE",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteFileSystemRequest"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "FileSystemInUse"
        }
      ],
      "documentation": "<p>Deletes a file system, permanently severing access to its contents. Upon return, the file system no longer exists and you can't access any contents of the deleted file system.</p> <p> You can't delete a file system that is in use. That is, if the file system has any mount targets, you must first delete them. For more information, see <a>DescribeMountTargets</a> and <a>DeleteMountTarget</a>. </p> <note> <p>The <code>DeleteFileSystem</code> call returns while the file system state is still <code>deleting</code>. You can check the file system deletion status by calling the <a>DescribeFileSystems</a> operation, which returns a list of file systems in your account. If you pass file system ID or creation token for the deleted file system, the <a>DescribeFileSystems</a> returns a <code>404 FileSystemNotFound</code> error.</p> </note> <p>This operation requires permissions for the <code>elasticfilesystem:DeleteFileSystem</code> action.</p>"
    },
    "DeleteFileSystemPolicy": {
      "name": "DeleteFileSystemPolicy",
      "http": {
        "method": "DELETE",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}/policy",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteFileSystemPolicyRequest"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "IncorrectFileSystemLifeCycleState"
        }
      ],
      "documentation": "<p>Deletes the <code>FileSystemPolicy</code> for the specified file system. The default <code>FileSystemPolicy</code> goes into effect once the existing policy is deleted. For more information about the default file system policy, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/res-based-policies-efs.html\">Using Resource-based Policies with EFS</a>.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DeleteFileSystemPolicy</code> action.</p>"
    },
    "DeleteMountTarget": {
      "name": "DeleteMountTarget",
      "http": {
        "method": "DELETE",
        "requestUri": "/2015-02-01/mount-targets/{MountTargetId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteMountTargetRequest"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "DependencyTimeout"
        },
        {
          "shape": "MountTargetNotFound"
        }
      ],
      "documentation": "<p>Deletes the specified mount target.</p> <p>This operation forcibly breaks any mounts of the file system by using the mount target that is being deleted, which might disrupt instances or applications using those mounts. To avoid applications getting cut off abruptly, you might consider unmounting any mounts of the mount target, if feasible. The operation also deletes the associated network interface. Uncommitted writes might be lost, but breaking a mount target using this operation does not corrupt the file system itself. The file system you created remains. You can mount an EC2 instance in your VPC by using another mount target.</p> <p>This operation requires permissions for the following action on the file system:</p> <ul> <li> <p> <code>elasticfilesystem:DeleteMountTarget</code> </p> </li> </ul> <note> <p>The <code>DeleteMountTarget</code> call returns while the mount target state is still <code>deleting</code>. You can check the mount target deletion by calling the <a>DescribeMountTargets</a> operation, which returns a list of mount target descriptions for the given file system. </p> </note> <p>The operation also requires permissions for the following Amazon EC2 action on the mount target's network interface:</p> <ul> <li> <p> <code>ec2:DeleteNetworkInterface</code> </p> </li> </ul>"
    },
    "DeleteTags": {
      "name": "DeleteTags",
      "http": {
        "method": "POST",
        "requestUri": "/2015-02-01/delete-tags/{FileSystemId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteTagsRequest"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        }
      ],
      "documentation": "<p>Deletes the specified tags from a file system. If the <code>DeleteTags</code> request includes a tag key that doesn't exist, Amazon EFS ignores it and doesn't cause an error. For more information about tags and related restrictions, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DeleteTags</code> action.</p>",
      "deprecated": true,
      "deprecatedMessage": "Use UntagResource."
    },
    "DescribeAccessPoints": {
      "name": "DescribeAccessPoints",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/access-points",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeAccessPointsRequest"
      },
      "output": {
        "shape": "DescribeAccessPointsResponse"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "AccessPointNotFound"
        }
      ],
      "documentation": "<p>Returns the description of a specific Amazon EFS access point if the <code>AccessPointId</code> is provided. If you provide an EFS <code>FileSystemId</code>, it returns descriptions of all access points for that file system. You can provide either an <code>AccessPointId</code> or a <code>FileSystemId</code> in the request, but not both. </p> <p>This operation requires permissions for the <code>elasticfilesystem:DescribeAccessPoints</code> action.</p>"
    },
    "DescribeBackupPolicy": {
      "name": "DescribeBackupPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}/backup-policy",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeBackupPolicyRequest"
      },
      "output": {
        "shape": "BackupPolicyDescription"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "PolicyNotFound"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns the backup policy for the specified EFS file system.</p>"
    },
    "DescribeFileSystemPolicy": {
      "name": "DescribeFileSystemPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}/policy",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeFileSystemPolicyRequest"
      },
      "output": {
        "shape": "FileSystemPolicyDescription"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "PolicyNotFound"
        }
      ],
      "documentation": "<p>Returns the <code>FileSystemPolicy</code> for the specified EFS file system.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DescribeFileSystemPolicy</code> action.</p>"
    },
    "DescribeFileSystems": {
      "name": "DescribeFileSystems",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/file-systems",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeFileSystemsRequest"
      },
      "output": {
        "shape": "DescribeFileSystemsResponse"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        }
      ],
      "documentation": "<p>Returns the description of a specific Amazon EFS file system if either the file system <code>CreationToken</code> or the <code>FileSystemId</code> is provided. Otherwise, it returns descriptions of all file systems owned by the caller's AWS account in the AWS Region of the endpoint that you're calling.</p> <p>When retrieving all file system descriptions, you can optionally specify the <code>MaxItems</code> parameter to limit the number of descriptions in a response. Currently, this number is automatically set to 10. If more file system descriptions remain, Amazon EFS returns a <code>NextMarker</code>, an opaque token, in the response. In this case, you should send a subsequent request with the <code>Marker</code> request parameter set to the value of <code>NextMarker</code>. </p> <p>To retrieve a list of your file system descriptions, this operation is used in an iterative process, where <code>DescribeFileSystems</code> is called first without the <code>Marker</code> and then the operation continues to call it with the <code>Marker</code> parameter set to the value of the <code>NextMarker</code> from the previous response until the response has no <code>NextMarker</code>. </p> <p> The order of file systems returned in the response of one <code>DescribeFileSystems</code> call and the order of file systems returned across the responses of a multi-call iteration is unspecified. </p> <p> This operation requires permissions for the <code>elasticfilesystem:DescribeFileSystems</code> action. </p>"
    },
    "DescribeLifecycleConfiguration": {
      "name": "DescribeLifecycleConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeLifecycleConfigurationRequest"
      },
      "output": {
        "shape": "LifecycleConfigurationDescription"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "BadRequest"
        },
        {
          "shape": "FileSystemNotFound"
        }
      ],
      "documentation": "<p>Returns the current <code>LifecycleConfiguration</code> object for the specified Amazon EFS file system. EFS lifecycle management uses the <code>LifecycleConfiguration</code> object to identify which files to move to the EFS Infrequent Access (IA) storage class. For a file system without a <code>LifecycleConfiguration</code> object, the call returns an empty array in the response.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DescribeLifecycleConfiguration</code> operation.</p>"
    },
    "DescribeMountTargetSecurityGroups": {
      "name": "DescribeMountTargetSecurityGroups",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/mount-targets/{MountTargetId}/security-groups",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeMountTargetSecurityGroupsRequest"
      },
      "output": {
        "shape": "DescribeMountTargetSecurityGroupsResponse"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "MountTargetNotFound"
        },
        {
          "shape": "IncorrectMountTargetState"
        }
      ],
      "documentation": "<p>Returns the security groups currently in effect for a mount target. This operation requires that the network interface of the mount target has been created and the lifecycle state of the mount target is not <code>deleted</code>.</p> <p>This operation requires permissions for the following actions:</p> <ul> <li> <p> <code>elasticfilesystem:DescribeMountTargetSecurityGroups</code> action on the mount target's file system. </p> </li> <li> <p> <code>ec2:DescribeNetworkInterfaceAttribute</code> action on the mount target's network interface. </p> </li> </ul>"
    },
    "DescribeMountTargets": {
      "name": "DescribeMountTargets",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/mount-targets",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeMountTargetsRequest"
      },
      "output": {
        "shape": "DescribeMountTargetsResponse"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "MountTargetNotFound"
        },
        {
          "shape": "AccessPointNotFound"
        }
      ],
      "documentation": "<p>Returns the descriptions of all the current mount targets, or a specific mount target, for a file system. When requesting all of the current mount targets, the order of mount targets returned in the response is unspecified.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DescribeMountTargets</code> action, on either the file system ID that you specify in <code>FileSystemId</code>, or on the file system of the mount target that you specify in <code>MountTargetId</code>.</p>"
    },
    "DescribeTags": {
      "name": "DescribeTags",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/tags/{FileSystemId}/",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeTagsRequest"
      },
      "output": {
        "shape": "DescribeTagsResponse"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        }
      ],
      "documentation": "<p>Returns the tags associated with a file system. The order of tags returned in the response of one <code>DescribeTags</code> call and the order of tags returned across the responses of a multiple-call iteration (when using pagination) is unspecified. </p> <p> This operation requires permissions for the <code>elasticfilesystem:DescribeTags</code> action. </p>",
      "deprecated": true,
      "deprecatedMessage": "Use ListTagsForResource."
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/2015-02-01/resource-tags/{ResourceId}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "AccessPointNotFound"
        }
      ],
      "documentation": "<p>Lists all tags for a top-level EFS resource. You must provide the ID of the resource that you want to retrieve the tags for.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DescribeAccessPoints</code> action.</p>"
    },
    "ModifyMountTargetSecurityGroups": {
      "name": "ModifyMountTargetSecurityGroups",
      "http": {
        "method": "PUT",
        "requestUri": "/2015-02-01/mount-targets/{MountTargetId}/security-groups",
        "responseCode": 204
      },
      "input": {
        "shape": "ModifyMountTargetSecurityGroupsRequest"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "MountTargetNotFound"
        },
        {
          "shape": "IncorrectMountTargetState"
        },
        {
          "shape": "SecurityGroupLimitExceeded"
        },
        {
          "shape": "SecurityGroupNotFound"
        }
      ],
      "documentation": "<p>Modifies the set of security groups in effect for a mount target.</p> <p>When you create a mount target, Amazon EFS also creates a new network interface. For more information, see <a>CreateMountTarget</a>. This operation replaces the security groups in effect for the network interface associated with a mount target, with the <code>SecurityGroups</code> provided in the request. This operation requires that the network interface of the mount target has been created and the lifecycle state of the mount target is not <code>deleted</code>. </p> <p>The operation requires permissions for the following actions:</p> <ul> <li> <p> <code>elasticfilesystem:ModifyMountTargetSecurityGroups</code> action on the mount target's file system. </p> </li> <li> <p> <code>ec2:ModifyNetworkInterfaceAttribute</code> action on the mount target's network interface. </p> </li> </ul>"
    },
    "PutBackupPolicy": {
      "name": "PutBackupPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}/backup-policy",
        "responseCode": 200
      },
      "input": {
        "shape": "PutBackupPolicyRequest"
      },
      "output": {
        "shape": "BackupPolicyDescription"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "IncorrectFileSystemLifeCycleState"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Updates the file system's backup policy. Use this action to start or stop automatic backups of the file system. </p>"
    },
    "PutFileSystemPolicy": {
      "name": "PutFileSystemPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}/policy",
        "responseCode": 200
      },
      "input": {
        "shape": "PutFileSystemPolicyRequest"
      },
      "output": {
        "shape": "FileSystemPolicyDescription"
      },
      "errors": [
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "InvalidPolicyException"
        },
        {
          "shape": "IncorrectFileSystemLifeCycleState"
        }
      ],
      "documentation": "<p>Applies an Amazon EFS <code>FileSystemPolicy</code> to an Amazon EFS file system. A file system policy is an IAM resource-based policy and can contain multiple policy statements. A file system always has exactly one file system policy, which can be the default policy or an explicit policy set or updated using this API operation. When an explicit policy is set, it overrides the default policy. For more information about the default file system policy, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy\">Default EFS File System Policy</a>. </p> <p>This operation requires permissions for the <code>elasticfilesystem:PutFileSystemPolicy</code> action.</p>"
    },
    "PutLifecycleConfiguration": {
      "name": "PutLifecycleConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}/lifecycle-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "PutLifecycleConfigurationRequest"
      },
      "output": {
        "shape": "LifecycleConfigurationDescription"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "IncorrectFileSystemLifeCycleState"
        }
      ],
      "documentation": "<p>Enables lifecycle management by creating a new <code>LifecycleConfiguration</code> object. A <code>LifecycleConfiguration</code> object defines when files in an Amazon EFS file system are automatically transitioned to the lower-cost EFS Infrequent Access (IA) storage class. A <code>LifecycleConfiguration</code> applies to all files in a file system.</p> <p>Each Amazon EFS file system supports one lifecycle configuration, which applies to all files in the file system. If a <code>LifecycleConfiguration</code> object already exists for the specified file system, a <code>PutLifecycleConfiguration</code> call modifies the existing configuration. A <code>PutLifecycleConfiguration</code> call with an empty <code>LifecyclePolicies</code> array in the request body deletes any existing <code>LifecycleConfiguration</code> and disables lifecycle management.</p> <p>In the request, specify the following: </p> <ul> <li> <p>The ID for the file system for which you are enabling, disabling, or modifying lifecycle management.</p> </li> <li> <p>A <code>LifecyclePolicies</code> array of <code>LifecyclePolicy</code> objects that define when files are moved to the IA storage class. The array can contain only one <code>LifecyclePolicy</code> item.</p> </li> </ul> <p>This operation requires permissions for the <code>elasticfilesystem:PutLifecycleConfiguration</code> operation.</p> <p>To apply a <code>LifecycleConfiguration</code> object to an encrypted file system, you need the same AWS Key Management Service (AWS KMS) permissions as when you created the encrypted file system. </p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/2015-02-01/resource-tags/{ResourceId}",
        "responseCode": 200
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "AccessPointNotFound"
        }
      ],
      "documentation": "<p>Creates a tag for an EFS resource. You can create tags for EFS file systems and access points using this API operation.</p> <p>This operation requires permissions for the <code>elasticfilesystem:TagResource</code> action.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/2015-02-01/resource-tags/{ResourceId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "AccessPointNotFound"
        }
      ],
      "documentation": "<p>Removes tags from an EFS resource. You can remove tags from EFS file systems and access points using this API operation.</p> <p>This operation requires permissions for the <code>elasticfilesystem:UntagResource</code> action.</p>"
    },
    "UpdateFileSystem": {
      "name": "UpdateFileSystem",
      "http": {
        "method": "PUT",
        "requestUri": "/2015-02-01/file-systems/{FileSystemId}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdateFileSystemRequest"
      },
      "output": {
        "shape": "FileSystemDescription"
      },
      "errors": [
        {
          "shape": "BadRequest"
        },
        {
          "shape": "FileSystemNotFound"
        },
        {
          "shape": "IncorrectFileSystemLifeCycleState"
        },
        {
          "shape": "InsufficientThroughputCapacity"
        },
        {
          "shape": "InternalServerError"
        },
        {
          "shape": "ThroughputLimitExceeded"
        },
        {
          "shape": "TooManyRequests"
        }
      ],
      "documentation": "<p>Updates the throughput mode or the amount of provisioned throughput of an existing file system.</p>"
    }
  },
  "shapes": {
    "AccessPointArn": {
      "type": "string"
    },
    "AccessPointDescription": {
      "type": "structure",
      "members": {
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The opaque string specified in the request to ensure idempotent creation.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the access point. This is the value of the <code>Name</code> tag.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the access point, presented as an array of Tag objects.</p>"
        },
        "AccessPointId": {
          "shape": "AccessPointId",
          "documentation": "<p>The ID of the access point, assigned by Amazon EFS.</p>"
        },
        "AccessPointArn": {
          "shape": "AccessPointArn",
          "documentation": "<p>The unique Amazon Resource Name (ARN) associated with the access point.</p>"
        },
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the EFS file system that the access point applies to.</p>"
        },
        "PosixUser": {
          "shape": "PosixUser",
          "documentation": "<p>The full POSIX identity, including the user ID, group ID, and secondary group IDs on the access point that is used for all file operations by NFS clients using the access point.</p>"
        },
        "RootDirectory": {
          "shape": "RootDirectory",
          "documentation": "<p>The directory on the Amazon EFS file system that the access point exposes as the root directory to NFS clients using the access point.</p>"
        },
        "OwnerId": {
          "shape": "AwsAccountId",
          "documentation": "<p>Identified the AWS account that owns the access point resource.</p>"
        },
        "LifeCycleState": {
          "shape": "LifeCycleState",
          "documentation": "<p>Identifies the lifecycle phase of the access point.</p>"
        }
      },
      "documentation": "<p>Provides a description of an EFS file system access point.</p>"
    },
    "AccessPointDescriptions": {
      "type": "list",
      "member": {
        "shape": "AccessPointDescription"
      }
    },
    "AccessPointId": {
      "type": "string"
    },
    "AvailabilityZoneId": {
      "type": "string"
    },
    "AvailabilityZoneName": {
      "type": "string"
    },
    "AwsAccountId": {
      "type": "string",
      "max": 14,
      "pattern": "^(\\d{12})|(\\d{4}-\\d{4}-\\d{4})$"
    },
    "BackupPolicy": {
      "type": "structure",
      "required": [
        "Status"
      ],
      "members": {
        "Status": {
          "shape": "Status",
          "documentation": "<p>Describes the status of the file system's backup policy.</p> <ul> <li> <p> <i> <code>ENABLED</code> - EFS is automatically backing up the file system.</i> </p> </li> <li> <p> <i> <code>ENABLING</code> - EFS is turning on automatic backups for the file system.</i> </p> </li> <li> <p> <i> <code>DISABLED</code> - automatic back ups are turned off for the file system.</i> </p> </li> <li> <p> <i> <code>DISABLED</code> - EFS is turning off automatic backups for the file system.</i> </p> </li> </ul>"
        }
      },
      "documentation": "<p>The backup policy for the file system, showing the curent status. If <code>ENABLED</code>, the file system is being backed up.</p>"
    },
    "BackupPolicyDescription": {
      "type": "structure",
      "members": {
        "BackupPolicy": {
          "shape": "BackupPolicy",
          "documentation": "<p>Describes the file system's backup policy, indicating whether automatic backups are turned on or off..</p>"
        }
      }
    },
    "BypassPolicyLockoutSafetyCheck": {
      "type": "boolean"
    },
    "ClientToken": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "CreateAccessPointRequest": {
      "type": "structure",
      "required": [
        "ClientToken",
        "FileSystemId"
      ],
      "members": {
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent creation.</p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Creates tags associated with the access point. Each tag is a key-value pair.</p>"
        },
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the EFS file system that the access point provides access to.</p>"
        },
        "PosixUser": {
          "shape": "PosixUser",
          "documentation": "<p>The operating system user and group applied to all file system requests made using the access point.</p>"
        },
        "RootDirectory": {
          "shape": "RootDirectory",
          "documentation": "<p>Specifies the directory on the Amazon EFS file system that the access point exposes as the root directory of your file system to NFS clients using the access point. The clients using the access point can only access the root directory and below. If the <code>RootDirectory</code> &gt; <code>Path</code> specified does not exist, EFS creates it and applies the <code>CreationInfo</code> settings when a client connects to an access point. When specifying a <code>RootDirectory</code>, you need to provide the <code>Path</code>, and the <code>CreationInfo</code> is optional.</p>"
        }
      }
    },
    "CreateFileSystemRequest": {
      "type": "structure",
      "required": [
        "CreationToken"
      ],
      "members": {
        "CreationToken": {
          "shape": "CreationToken",
          "documentation": "<p>A string of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent creation.</p>",
          "idempotencyToken": true
        },
        "PerformanceMode": {
          "shape": "PerformanceMode",
          "documentation": "<p>The performance mode of the file system. We recommend <code>generalPurpose</code> performance mode for most file systems. File systems using the <code>maxIO</code> performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. The performance mode can't be changed after the file system has been created.</p>"
        },
        "Encrypted": {
          "shape": "Encrypted",
          "documentation": "<p>A Boolean value that, if true, creates an encrypted file system. When creating an encrypted file system, you have the option of specifying <a>CreateFileSystemRequest$KmsKeyId</a> for an existing AWS Key Management Service (AWS KMS) customer master key (CMK). If you don't specify a CMK, then the default CMK for Amazon EFS, <code>/aws/elasticfilesystem</code>, is used to protect the encrypted file system. </p>"
        },
        "KmsKeyId": {
          "shape": "KmsKeyId",
          "documentation": "<p>The ID of the AWS KMS CMK to be used to protect the encrypted file system. This parameter is only required if you want to use a nondefault CMK. If this parameter is not specified, the default CMK for Amazon EFS is used. This ID can be in one of the following formats:</p> <ul> <li> <p>Key ID - A unique identifier of the key, for example <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p> </li> <li> <p>ARN - An Amazon Resource Name (ARN) for the key, for example <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p> </li> <li> <p>Key alias - A previously created display name for a key, for example <code>alias/projectKey1</code>.</p> </li> <li> <p>Key alias ARN - An ARN for a key alias, for example <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p> </li> </ul> <p>If <code>KmsKeyId</code> is specified, the <a>CreateFileSystemRequest$Encrypted</a> parameter must be set to true.</p> <important> <p>EFS accepts only symmetric CMKs. You cannot use asymmetric CMKs with EFS file systems.</p> </important>"
        },
        "ThroughputMode": {
          "shape": "ThroughputMode",
          "documentation": "<p>The throughput mode for the file system to be created. There are two throughput modes to choose from for your file system: <code>bursting</code> and <code>provisioned</code>. If you set <code>ThroughputMode</code> to <code>provisioned</code>, you must also set a value for <code>ProvisionedThroughPutInMibps</code>. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change. For more, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput\">Specifying Throughput with Provisioned Mode</a> in the <i>Amazon EFS User Guide.</i> </p>"
        },
        "ProvisionedThroughputInMibps": {
          "shape": "ProvisionedThroughputInMibps",
          "documentation": "<p>The throughput, measured in MiB/s, that you want to provision for a file system that you're creating. Valid values are 1-1024. Required if <code>ThroughputMode</code> is set to <code>provisioned</code>. The upper limit for throughput is 1024 MiB/s. You can get this limit increased by contacting AWS Support. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits\">Amazon EFS Limits That You Can Increase</a> in the <i>Amazon EFS User Guide.</i> </p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A value that specifies to create one or more tags associated with the file system. Each tag is a user-defined key-value pair. Name your file system on creation by including a <code>\"Key\":\"Name\",\"Value\":\"{value}\"</code> key-value pair.</p>"
        }
      }
    },
    "CreateMountTargetRequest": {
      "type": "structure",
      "required": [
        "FileSystemId",
        "SubnetId"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system for which to create the mount target.</p>"
        },
        "SubnetId": {
          "shape": "SubnetId",
          "documentation": "<p>The ID of the subnet to add the mount target in.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>Valid IPv4 address within the address range of the specified subnet.</p>"
        },
        "SecurityGroups": {
          "shape": "SecurityGroups",
          "documentation": "<p>Up to five VPC security group IDs, of the form <code>sg-xxxxxxxx</code>. These must be for the same VPC as subnet specified.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateTagsRequest": {
      "type": "structure",
      "required": [
        "FileSystemId",
        "Tags"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system whose tags you want to modify (String). This operation modifies the tags only, not the file system.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value pair. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreationInfo": {
      "type": "structure",
      "required": [
        "OwnerUid",
        "OwnerGid",
        "Permissions"
      ],
      "members": {
        "OwnerUid": {
          "shape": "OwnerUid",
          "documentation": "<p>Specifies the POSIX user ID to apply to the <code>RootDirectory</code>. Accepts values from 0 to 2^32 (4294967295).</p>"
        },
        "OwnerGid": {
          "shape": "OwnerGid",
          "documentation": "<p>Specifies the POSIX group ID to apply to the <code>RootDirectory</code>. Accepts values from 0 to 2^32 (4294967295).</p>"
        },
        "Permissions": {
          "shape": "Permissions",
          "documentation": "<p>Specifies the POSIX permissions to apply to the <code>RootDirectory</code>, in the format of an octal number representing the file's mode bits.</p>"
        }
      },
      "documentation": "<p>Required if the <code>RootDirectory</code> &gt; <code>Path</code> specified does not exist. Specifies the POSIX IDs and permissions to apply to the access point's <code>RootDirectory</code> &gt; <code>Path</code>. If the access point root directory does not exist, EFS creates it with these settings when a client connects to the access point. When specifying <code>CreationInfo</code>, you must include values for all properties. </p> <important> <p>If you do not provide <code>CreationInfo</code> and the specified <code>RootDirectory</code> does not exist, attempts to mount the file system using the access point will fail.</p> </important>"
    },
    "CreationToken": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": ".+"
    },
    "DeleteAccessPointRequest": {
      "type": "structure",
      "required": [
        "AccessPointId"
      ],
      "members": {
        "AccessPointId": {
          "shape": "AccessPointId",
          "documentation": "<p>The ID of the access point that you want to delete.</p>",
          "location": "uri",
          "locationName": "AccessPointId"
        }
      }
    },
    "DeleteFileSystemPolicyRequest": {
      "type": "structure",
      "required": [
        "FileSystemId"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>Specifies the EFS file system for which to delete the <code>FileSystemPolicy</code>.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        }
      }
    },
    "DeleteFileSystemRequest": {
      "type": "structure",
      "required": [
        "FileSystemId"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system you want to delete.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteMountTargetRequest": {
      "type": "structure",
      "required": [
        "MountTargetId"
      ],
      "members": {
        "MountTargetId": {
          "shape": "MountTargetId",
          "documentation": "<p>The ID of the mount target to delete (String).</p>",
          "location": "uri",
          "locationName": "MountTargetId"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteTagsRequest": {
      "type": "structure",
      "required": [
        "FileSystemId",
        "TagKeys"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system whose tags you want to delete (String).</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>A list of tag keys to delete.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeAccessPointsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>(Optional) When retrieving all access points for a file system, you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response. The default value is 100. </p>",
          "location": "querystring",
          "locationName": "MaxResults"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p> <code>NextToken</code> is present if the response is paginated. You can use <code>NextMarker</code> in the subsequent request to fetch the next page of access point descriptions.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "AccessPointId": {
          "shape": "AccessPointId",
          "documentation": "<p>(Optional) Specifies an EFS access point to describe in the response; mutually exclusive with <code>FileSystemId</code>.</p>",
          "location": "querystring",
          "locationName": "AccessPointId"
        },
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>(Optional) If you provide a <code>FileSystemId</code>, EFS returns all access points for that file system; mutually exclusive with <code>AccessPointId</code>.</p>",
          "location": "querystring",
          "locationName": "FileSystemId"
        }
      }
    },
    "DescribeAccessPointsResponse": {
      "type": "structure",
      "members": {
        "AccessPoints": {
          "shape": "AccessPointDescriptions",
          "documentation": "<p>An array of access point descriptions.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>Present if there are more access points than returned in the response. You can use the NextMarker in the subsequent request to fetch the additional descriptions.</p>"
        }
      }
    },
    "DescribeBackupPolicyRequest": {
      "type": "structure",
      "required": [
        "FileSystemId"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>Specifies which EFS file system to retrieve the <code>BackupPolicy</code> for.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        }
      }
    },
    "DescribeFileSystemPolicyRequest": {
      "type": "structure",
      "required": [
        "FileSystemId"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>Specifies which EFS file system to retrieve the <code>FileSystemPolicy</code> for.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        }
      }
    },
    "DescribeFileSystemsRequest": {
      "type": "structure",
      "members": {
        "MaxItems": {
          "shape": "MaxItems",
          "documentation": "<p>(Optional) Specifies the maximum number of file systems to return in the response (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        },
        "Marker": {
          "shape": "Marker",
          "documentation": "<p>(Optional) Opaque pagination token returned from a previous <code>DescribeFileSystems</code> operation (String). If present, specifies to continue the list from where the returning call had left off. </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "CreationToken": {
          "shape": "CreationToken",
          "documentation": "<p>(Optional) Restricts the list to the file system with this creation token (String). You specify a creation token when you create an Amazon EFS file system.</p>",
          "location": "querystring",
          "locationName": "CreationToken"
        },
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>(Optional) ID of the file system whose description you want to retrieve (String).</p>",
          "location": "querystring",
          "locationName": "FileSystemId"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeFileSystemsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "Marker",
          "documentation": "<p>Present if provided by caller in the request (String).</p>"
        },
        "FileSystems": {
          "shape": "FileSystemDescriptions",
          "documentation": "<p>An array of file system descriptions.</p>"
        },
        "NextMarker": {
          "shape": "Marker",
          "documentation": "<p>Present if there are more file systems than returned in the response (String). You can use the <code>NextMarker</code> in the subsequent request to fetch the descriptions.</p>"
        }
      }
    },
    "DescribeLifecycleConfigurationRequest": {
      "type": "structure",
      "required": [
        "FileSystemId"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system whose <code>LifecycleConfiguration</code> object you want to retrieve (String).</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        }
      }
    },
    "DescribeMountTargetSecurityGroupsRequest": {
      "type": "structure",
      "required": [
        "MountTargetId"
      ],
      "members": {
        "MountTargetId": {
          "shape": "MountTargetId",
          "documentation": "<p>The ID of the mount target whose security groups you want to retrieve.</p>",
          "location": "uri",
          "locationName": "MountTargetId"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeMountTargetSecurityGroupsResponse": {
      "type": "structure",
      "required": [
        "SecurityGroups"
      ],
      "members": {
        "SecurityGroups": {
          "shape": "SecurityGroups",
          "documentation": "<p>An array of security groups.</p>"
        }
      }
    },
    "DescribeMountTargetsRequest": {
      "type": "structure",
      "members": {
        "MaxItems": {
          "shape": "MaxItems",
          "documentation": "<p>(Optional) Maximum number of mount targets to return in the response. Currently, this number is automatically set to 10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        },
        "Marker": {
          "shape": "Marker",
          "documentation": "<p>(Optional) Opaque pagination token returned from a previous <code>DescribeMountTargets</code> operation (String). If present, it specifies to continue the list from where the previous returning call left off.</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>(Optional) ID of the file system whose mount targets you want to list (String). It must be included in your request if an <code>AccessPointId</code> or <code>MountTargetId</code> is not included. Accepts either a file system ID or ARN as input.</p>",
          "location": "querystring",
          "locationName": "FileSystemId"
        },
        "MountTargetId": {
          "shape": "MountTargetId",
          "documentation": "<p>(Optional) ID of the mount target that you want to have described (String). It must be included in your request if <code>FileSystemId</code> is not included. Accepts either a mount target ID or ARN as input.</p>",
          "location": "querystring",
          "locationName": "MountTargetId"
        },
        "AccessPointId": {
          "shape": "AccessPointId",
          "documentation": "<p>(Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a <code>FileSystemId</code> or <code>MountTargetId</code> is not included in your request. Accepts either an access point ID or ARN as input.</p>",
          "location": "querystring",
          "locationName": "AccessPointId"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeMountTargetsResponse": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "Marker",
          "documentation": "<p>If the request included the <code>Marker</code>, the response returns that value in this field.</p>"
        },
        "MountTargets": {
          "shape": "MountTargetDescriptions",
          "documentation": "<p>Returns the file system's mount targets as an array of <code>MountTargetDescription</code> objects.</p>"
        },
        "NextMarker": {
          "shape": "Marker",
          "documentation": "<p>If a value is present, there are more mount targets to return. In a subsequent request, you can provide <code>Marker</code> in your request with this value to retrieve the next set of mount targets.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeTagsRequest": {
      "type": "structure",
      "required": [
        "FileSystemId"
      ],
      "members": {
        "MaxItems": {
          "shape": "MaxItems",
          "documentation": "<p>(Optional) The maximum number of file system tags to return in the response. Currently, this number is automatically set to 100, and other values are ignored. The response is paginated at 100 per page if you have more than 100 tags.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        },
        "Marker": {
          "shape": "Marker",
          "documentation": "<p>(Optional) An opaque pagination token returned from a previous <code>DescribeTags</code> operation (String). If present, it specifies to continue the list from where the previous call left off.</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system whose tag set you want to retrieve.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeTagsResponse": {
      "type": "structure",
      "required": [
        "Tags"
      ],
      "members": {
        "Marker": {
          "shape": "Marker",
          "documentation": "<p>If the request included a <code>Marker</code>, the response returns that value in this field.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>Returns tags associated with the file system as an array of <code>Tag</code> objects. </p>"
        },
        "NextMarker": {
          "shape": "Marker",
          "documentation": "<p>If a value is present, there are more tags to return. In a subsequent request, you can provide the value of <code>NextMarker</code> as the value of the <code>Marker</code> parameter in your next request to retrieve the next set of tags.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "Encrypted": {
      "type": "boolean"
    },
    "FileSystemArn": {
      "type": "string"
    },
    "FileSystemDescription": {
      "type": "structure",
      "required": [
        "OwnerId",
        "CreationToken",
        "FileSystemId",
        "CreationTime",
        "LifeCycleState",
        "NumberOfMountTargets",
        "SizeInBytes",
        "PerformanceMode",
        "Tags"
      ],
      "members": {
        "OwnerId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account that created the file system. If the file system was created by an IAM user, the parent account to which the user belongs is the owner.</p>"
        },
        "CreationToken": {
          "shape": "CreationToken",
          "documentation": "<p>The opaque string specified in the request.</p>"
        },
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system, assigned by Amazon EFS.</p>"
        },
        "FileSystemArn": {
          "shape": "FileSystemArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the EFS file system, in the format <code>arn:aws:elasticfilesystem:<i>region</i>:<i>account-id</i>:file-system/<i>file-system-id</i> </code>. Example with sample data: <code>arn:aws:elasticfilesystem:us-west-2:1111333322228888:file-system/fs-01234567</code> </p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the file system was created, in seconds (since 1970-01-01T00:00:00Z).</p>"
        },
        "LifeCycleState": {
          "shape": "LifeCycleState",
          "documentation": "<p>The lifecycle phase of the file system.</p>"
        },
        "Name": {
          "shape": "TagValue",
          "documentation": "<p>You can add tags to a file system, including a <code>Name</code> tag. For more information, see <a>CreateFileSystem</a>. If the file system has a <code>Name</code> tag, Amazon EFS returns the value in this field. </p>"
        },
        "NumberOfMountTargets": {
          "shape": "MountTargetCount",
          "documentation": "<p>The current number of mount targets that the file system has. For more information, see <a>CreateMountTarget</a>.</p>"
        },
        "SizeInBytes": {
          "shape": "FileSystemSize",
          "documentation": "<p>The latest known metered size (in bytes) of data stored in the file system, in its <code>Value</code> field, and the time at which that size was determined in its <code>Timestamp</code> field. The <code>Timestamp</code> value is the integer number of seconds since 1970-01-01T00:00:00Z. The <code>SizeInBytes</code> value doesn't represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, <code>SizeInBytes</code> represents actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not the exact size that the file system was at any point in time. </p>"
        },
        "PerformanceMode": {
          "shape": "PerformanceMode",
          "documentation": "<p>The performance mode of the file system.</p>"
        },
        "Encrypted": {
          "shape": "Encrypted",
          "documentation": "<p>A Boolean value that, if true, indicates that the file system is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "KmsKeyId",
          "documentation": "<p>The ID of an AWS Key Management Service (AWS KMS) customer master key (CMK) that was used to protect the encrypted file system.</p>"
        },
        "ThroughputMode": {
          "shape": "ThroughputMode",
          "documentation": "<p>The throughput mode for a file system. There are two throughput modes to choose from for your file system: <code>bursting</code> and <code>provisioned</code>. If you set <code>ThroughputMode</code> to <code>provisioned</code>, you must also set a value for <code>ProvisionedThroughPutInMibps</code>. You can decrease your file system's throughput in Provisioned Throughput mode or change between the throughput modes as long as it’s been more than 24 hours since the last decrease or throughput mode change. </p>"
        },
        "ProvisionedThroughputInMibps": {
          "shape": "ProvisionedThroughputInMibps",
          "documentation": "<p>The throughput, measured in MiB/s, that you want to provision for a file system. Valid values are 1-1024. Required if <code>ThroughputMode</code> is set to <code>provisioned</code>. The limit on throughput is 1024 MiB/s. You can get these limits increased by contacting AWS Support. For more information, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits\">Amazon EFS Limits That You Can Increase</a> in the <i>Amazon EFS User Guide.</i> </p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the file system, presented as an array of <code>Tag</code> objects.</p>"
        }
      },
      "documentation": "<p>A description of the file system.</p>"
    },
    "FileSystemDescriptions": {
      "type": "list",
      "member": {
        "shape": "FileSystemDescription"
      }
    },
    "FileSystemId": {
      "type": "string",
      "max": 128,
      "pattern": "^(arn:aws[-a-z]*:elasticfilesystem:[0-9a-z-:]+:file-system/fs-[0-9a-f]{8,40}|fs-[0-9a-f]{8,40})$"
    },
    "FileSystemNullableSizeValue": {
      "type": "long",
      "min": 0
    },
    "FileSystemPolicyDescription": {
      "type": "structure",
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>Specifies the EFS file system to which the <code>FileSystemPolicy</code> applies.</p>"
        },
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>The JSON formatted <code>FileSystemPolicy</code> for the EFS file system.</p>"
        }
      }
    },
    "FileSystemSize": {
      "type": "structure",
      "required": [
        "Value"
      ],
      "members": {
        "Value": {
          "shape": "FileSystemSizeValue",
          "documentation": "<p>The latest known metered size (in bytes) of data stored in the file system.</p>"
        },
        "Timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the size of data, returned in the <code>Value</code> field, was determined. The value is the integer number of seconds since 1970-01-01T00:00:00Z.</p>"
        },
        "ValueInIA": {
          "shape": "FileSystemNullableSizeValue",
          "documentation": "<p>The latest known metered size (in bytes) of data stored in the Infrequent Access storage class.</p>"
        },
        "ValueInStandard": {
          "shape": "FileSystemNullableSizeValue",
          "documentation": "<p>The latest known metered size (in bytes) of data stored in the Standard storage class.</p>"
        }
      },
      "documentation": "<p>The latest known metered size (in bytes) of data stored in the file system, in its <code>Value</code> field, and the time at which that size was determined in its <code>Timestamp</code> field. The value doesn't represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value represents the actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not necessarily the exact size the file system was at any instant in time.</p>"
    },
    "FileSystemSizeValue": {
      "type": "long",
      "min": 0
    },
    "Gid": {
      "type": "long",
      "max": 4294967295,
      "min": 0
    },
    "IpAddress": {
      "type": "string",
      "max": 15,
      "min": 7,
      "pattern": "^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}$"
    },
    "KmsKeyId": {
      "type": "string",
      "max": 2048,
      "pattern": "^([0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}|alias/[a-zA-Z0-9/_-]+|(arn:aws[-a-z]*:kms:[a-z0-9-]+:\\d{12}:((key/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})|(alias/[a-zA-Z0-9/_-]+))))$"
    },
    "LifeCycleState": {
      "type": "string",
      "enum": [
        "creating",
        "available",
        "updating",
        "deleting",
        "deleted"
      ]
    },
    "LifecycleConfigurationDescription": {
      "type": "structure",
      "members": {
        "LifecyclePolicies": {
          "shape": "LifecyclePolicies",
          "documentation": "<p>An array of lifecycle management policies. Currently, EFS supports a maximum of one policy per file system.</p>"
        }
      }
    },
    "LifecyclePolicies": {
      "type": "list",
      "member": {
        "shape": "LifecyclePolicy"
      }
    },
    "LifecyclePolicy": {
      "type": "structure",
      "members": {
        "TransitionToIA": {
          "shape": "TransitionToIARules",
          "documentation": "<p> A value that describes the period of time that a file is not accessed, after which it transitions to the IA storage class. Metadata operations such as listing the contents of a directory don't count as file access events.</p>"
        }
      },
      "documentation": "<p>Describes a policy used by EFS lifecycle management to transition files to the Infrequent Access (IA) storage class.</p>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>Specifies the EFS resource you want to retrieve tags for. You can retrieve tags for EFS file systems and access points using this API endpoint.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>(Optional) Specifies the maximum number of tag objects to return in the response. The default value is 100.</p>",
          "location": "querystring",
          "locationName": "MaxResults"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions if the response payload was paginated.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>An array of the tags for the specified EFS resource.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p> <code>NextToken</code> is present if the response payload is paginated. You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions.</p>"
        }
      }
    },
    "Marker": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": ".+"
    },
    "MaxItems": {
      "type": "integer",
      "min": 1
    },
    "MaxResults": {
      "type": "integer",
      "min": 1
    },
    "ModifyMountTargetSecurityGroupsRequest": {
      "type": "structure",
      "required": [
        "MountTargetId"
      ],
      "members": {
        "MountTargetId": {
          "shape": "MountTargetId",
          "documentation": "<p>The ID of the mount target whose security groups you want to modify.</p>",
          "location": "uri",
          "locationName": "MountTargetId"
        },
        "SecurityGroups": {
          "shape": "SecurityGroups",
          "documentation": "<p>An array of up to five VPC security group IDs.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "MountTargetCount": {
      "type": "integer",
      "min": 0
    },
    "MountTargetDescription": {
      "type": "structure",
      "required": [
        "MountTargetId",
        "FileSystemId",
        "SubnetId",
        "LifeCycleState"
      ],
      "members": {
        "OwnerId": {
          "shape": "AwsAccountId",
          "documentation": "<p>AWS account ID that owns the resource.</p>"
        },
        "MountTargetId": {
          "shape": "MountTargetId",
          "documentation": "<p>System-assigned mount target ID.</p>"
        },
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system for which the mount target is intended.</p>"
        },
        "SubnetId": {
          "shape": "SubnetId",
          "documentation": "<p>The ID of the mount target's subnet.</p>"
        },
        "LifeCycleState": {
          "shape": "LifeCycleState",
          "documentation": "<p>Lifecycle state of the mount target.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>Address at which the file system can be mounted by using the mount target.</p>"
        },
        "NetworkInterfaceId": {
          "shape": "NetworkInterfaceId",
          "documentation": "<p>The ID of the network interface that Amazon EFS created when it created the mount target.</p>"
        },
        "AvailabilityZoneId": {
          "shape": "AvailabilityZoneId",
          "documentation": "<p>The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in. For example, <code>use1-az1</code> is an AZ ID for the us-east-1 Region and it has the same location in every AWS account.</p>"
        },
        "AvailabilityZoneName": {
          "shape": "AvailabilityZoneName",
          "documentation": "<p>The name of the Availability Zone (AZ) that the mount target resides in. AZs are independently mapped to names for each AWS account. For example, the Availability Zone <code>us-east-1a</code> for your AWS account might not be the same location as <code>us-east-1a</code> for another AWS account.</p>"
        },
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The Virtual Private Cloud (VPC) ID that the mount target is configured in.</p>"
        }
      },
      "documentation": "<p>Provides a description of a mount target.</p>"
    },
    "MountTargetDescriptions": {
      "type": "list",
      "member": {
        "shape": "MountTargetDescription"
      }
    },
    "MountTargetId": {
      "type": "string",
      "max": 45,
      "min": 13,
      "pattern": "^fsmt-[0-9a-f]{8,40}$"
    },
    "Name": {
      "type": "string"
    },
    "NetworkInterfaceId": {
      "type": "string"
    },
    "OwnerGid": {
      "type": "long",
      "max": 4294967295,
      "min": 0
    },
    "OwnerUid": {
      "type": "long",
      "max": 4294967295,
      "min": 0
    },
    "Path": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "PerformanceMode": {
      "type": "string",
      "enum": [
        "generalPurpose",
        "maxIO"
      ]
    },
    "Permissions": {
      "type": "string",
      "pattern": "^[0-7]{3,4}$"
    },
    "Policy": {
      "type": "string"
    },
    "PosixUser": {
      "type": "structure",
      "required": [
        "Uid",
        "Gid"
      ],
      "members": {
        "Uid": {
          "shape": "Uid",
          "documentation": "<p>The POSIX user ID used for all file system operations using this access point.</p>"
        },
        "Gid": {
          "shape": "Gid",
          "documentation": "<p>The POSIX group ID used for all file system operations using this access point.</p>"
        },
        "SecondaryGids": {
          "shape": "SecondaryGids",
          "documentation": "<p>Secondary POSIX group IDs used for all file system operations using this access point.</p>"
        }
      },
      "documentation": "<p>The full POSIX identity, including the user ID, group ID, and any secondary group IDs, on the access point that is used for all file system operations performed by NFS clients using the access point.</p>"
    },
    "ProvisionedThroughputInMibps": {
      "type": "double",
      "min": 1
    },
    "PutBackupPolicyRequest": {
      "type": "structure",
      "required": [
        "FileSystemId",
        "BackupPolicy"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>Specifies which EFS file system to update the backup policy for.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        },
        "BackupPolicy": {
          "shape": "BackupPolicy",
          "documentation": "<p>The backup policy included in the <code>PutBackupPolicy</code> request.</p>"
        }
      }
    },
    "PutFileSystemPolicyRequest": {
      "type": "structure",
      "required": [
        "FileSystemId",
        "Policy"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the EFS file system that you want to create or update the <code>FileSystemPolicy</code> for.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        },
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>The <code>FileSystemPolicy</code> that you're creating. Accepts a JSON formatted policy definition. To find out more about the elements that make up a file system policy, see <a href=\"https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies\">EFS Resource-based Policies</a>. </p>"
        },
        "BypassPolicyLockoutSafetyCheck": {
          "shape": "BypassPolicyLockoutSafetyCheck",
          "documentation": "<p>(Optional) A flag to indicate whether to bypass the <code>FileSystemPolicy</code> lockout safety check. The policy lockout safety check determines whether the policy in the request will prevent the principal making the request will be locked out from making future <code>PutFileSystemPolicy</code> requests on the file system. Set <code>BypassPolicyLockoutSafetyCheck</code> to <code>True</code> only when you intend to prevent the principal that is making the request from making a subsequent <code>PutFileSystemPolicy</code> request on the file system. The default value is False. </p>"
        }
      }
    },
    "PutLifecycleConfigurationRequest": {
      "type": "structure",
      "required": [
        "FileSystemId",
        "LifecyclePolicies"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system for which you are creating the <code>LifecycleConfiguration</code> object (String).</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        },
        "LifecyclePolicies": {
          "shape": "LifecyclePolicies",
          "documentation": "<p>An array of <code>LifecyclePolicy</code> objects that define the file system's <code>LifecycleConfiguration</code> object. A <code>LifecycleConfiguration</code> object tells lifecycle management when to transition files from the Standard storage class to the Infrequent Access storage class.</p>"
        }
      }
    },
    "ResourceId": {
      "type": "string"
    },
    "RootDirectory": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "Path",
          "documentation": "<p>Specifies the path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. A path can have up to four subdirectories. If the specified path does not exist, you are required to provide the <code>CreationInfo</code>.</p>"
        },
        "CreationInfo": {
          "shape": "CreationInfo",
          "documentation": "<p>(Optional) Specifies the POSIX IDs and permissions to apply to the access point's <code>RootDirectory</code>. If the <code>RootDirectory</code> &gt; <code>Path</code> specified does not exist, EFS creates the root directory using the <code>CreationInfo</code> settings when a client connects to an access point. When specifying the <code>CreationInfo</code>, you must provide values for all properties. </p> <important> <p>If you do not provide <code>CreationInfo</code> and the specified <code>RootDirectory</code> &gt; <code>Path</code> does not exist, attempts to mount the file system using the access point will fail.</p> </important>"
        }
      },
      "documentation": "<p>Specifies the directory on the Amazon EFS file system that the access point provides access to. The access point exposes the specified file system path as the root directory of your file system to applications using the access point. NFS clients using the access point can only access data in the access point's <code>RootDirectory</code> and it's subdirectories.</p>"
    },
    "SecondaryGids": {
      "type": "list",
      "member": {
        "shape": "Gid"
      },
      "max": 16,
      "min": 0
    },
    "SecurityGroup": {
      "type": "string",
      "max": 43,
      "min": 11,
      "pattern": "^sg-[0-9a-f]{8,40}"
    },
    "SecurityGroups": {
      "type": "list",
      "member": {
        "shape": "SecurityGroup"
      },
      "max": 5
    },
    "Status": {
      "type": "string",
      "enum": [
        "ENABLED",
        "ENABLING",
        "DISABLED",
        "DISABLING"
      ]
    },
    "SubnetId": {
      "type": "string",
      "max": 47,
      "min": 15,
      "pattern": "^subnet-[0-9a-f]{8,40}$"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The tag key (String). The key can't start with <code>aws:</code>.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag key.</p>"
        }
      },
      "documentation": "<p>A tag is a key-value pair. Allowed characters are letters, white space, and numbers that can be represented in UTF-8, and the following characters:<code> + - = . _ : /</code> </p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^(?![aA]{1}[wW]{1}[sS]{1}:)([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+)$"
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "Tags"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID specifying the EFS resource that you want to create a tag for. </p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p/>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "ThroughputMode": {
      "type": "string",
      "enum": [
        "bursting",
        "provisioned"
      ]
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Token": {
      "type": "string"
    },
    "TransitionToIARules": {
      "type": "string",
      "enum": [
        "AFTER_7_DAYS",
        "AFTER_14_DAYS",
        "AFTER_30_DAYS",
        "AFTER_60_DAYS",
        "AFTER_90_DAYS"
      ]
    },
    "Uid": {
      "type": "long",
      "max": 4294967295,
      "min": 0
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "TagKeys"
      ],
      "members": {
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>Specifies the EFS resource that you want to remove tags from.</p>",
          "location": "uri",
          "locationName": "ResourceId"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>The keys of the key:value tag pairs that you want to remove from the specified EFS resource.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UpdateFileSystemRequest": {
      "type": "structure",
      "required": [
        "FileSystemId"
      ],
      "members": {
        "FileSystemId": {
          "shape": "FileSystemId",
          "documentation": "<p>The ID of the file system that you want to update.</p>",
          "location": "uri",
          "locationName": "FileSystemId"
        },
        "ThroughputMode": {
          "shape": "ThroughputMode",
          "documentation": "<p>(Optional) The throughput mode that you want your file system to use. If you're not updating your throughput mode, you don't need to provide this value in your request. If you are changing the <code>ThroughputMode</code> to <code>provisioned</code>, you must also set a value for <code>ProvisionedThroughputInMibps</code>.</p>"
        },
        "ProvisionedThroughputInMibps": {
          "shape": "ProvisionedThroughputInMibps",
          "documentation": "<p>(Optional) The amount of throughput, in MiB/s, that you want to provision for your file system. Valid values are 1-1024. Required if <code>ThroughputMode</code> is changed to <code>provisioned</code> on update. If you're not updating the amount of provisioned throughput for your file system, you don't need to provide this value in your request. </p>"
        }
      }
    },
    "VpcId": {
      "type": "string"
    }
  },
  "documentation": "<fullname>Amazon Elastic File System</fullname> <p>Amazon Elastic File System (Amazon EFS) provides simple, scalable file storage for use with Amazon EC2 instances in the AWS Cloud. With Amazon EFS, storage capacity is elastic, growing and shrinking automatically as you add and remove files, so your applications have the storage they need, when they need it. For more information, see the <a href=\"https://docs.aws.amazon.com/efs/latest/ug/api-reference.html\">User Guide</a>.</p>"
}
]===]))