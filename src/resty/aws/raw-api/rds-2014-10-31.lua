local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2014-10-31",
    "endpointPrefix": "rds",
    "protocol": "query",
    "serviceAbbreviation": "Amazon RDS",
    "serviceFullName": "Amazon Relational Database Service",
    "serviceId": "RDS",
    "signatureVersion": "v4",
    "uid": "rds-2014-10-31",
    "xmlNamespace": "http://rds.amazonaws.com/doc/2014-10-31/"
  },
  "operations": {
    "AddRoleToDBCluster": {
      "name": "AddRoleToDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddRoleToDBClusterMessage"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBClusterRoleAlreadyExistsFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "DBClusterRoleQuotaExceededFault"
        }
      ],
      "documentation": "<p>Associates an Identity and Access Management (IAM) role from an Amazon Aurora DB cluster. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html\">Authorizing Amazon Aurora MySQL to Access Other AWS Services on Your Behalf</a> in the <i>Amazon Aurora User Guide</i>.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "AddRoleToDBInstance": {
      "name": "AddRoleToDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddRoleToDBInstanceMessage"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBInstanceRoleAlreadyExistsFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBInstanceRoleQuotaExceededFault"
        }
      ],
      "documentation": "<p>Associates an AWS Identity and Access Management (IAM) role with a DB instance.</p> <note> <p>To add a role to a DB instance, the status of the DB instance must be <code>available</code>.</p> </note>"
    },
    "AddSourceIdentifierToSubscription": {
      "name": "AddSourceIdentifierToSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddSourceIdentifierToSubscriptionMessage"
      },
      "output": {
        "shape": "AddSourceIdentifierToSubscriptionResult",
        "resultWrapper": "AddSourceIdentifierToSubscriptionResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "SourceNotFoundFault"
        }
      ],
      "documentation": "<p>Adds a source identifier to an existing RDS event notification subscription.</p>"
    },
    "AddTagsToResource": {
      "name": "AddTagsToResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddTagsToResourceMessage"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "DBProxyTargetGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Adds metadata tags to an Amazon RDS resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon RDS resources, or used in a Condition statement in an IAM policy for Amazon RDS.</p> <p>For an overview on tagging Amazon RDS resources, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html\">Tagging Amazon RDS Resources</a>.</p>"
    },
    "ApplyPendingMaintenanceAction": {
      "name": "ApplyPendingMaintenanceAction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ApplyPendingMaintenanceActionMessage"
      },
      "output": {
        "shape": "ApplyPendingMaintenanceActionResult",
        "resultWrapper": "ApplyPendingMaintenanceActionResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Applies a pending maintenance action to a resource (for example, to a DB instance).</p>"
    },
    "AuthorizeDBSecurityGroupIngress": {
      "name": "AuthorizeDBSecurityGroupIngress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AuthorizeDBSecurityGroupIngressMessage"
      },
      "output": {
        "shape": "AuthorizeDBSecurityGroupIngressResult",
        "resultWrapper": "AuthorizeDBSecurityGroupIngressResult"
      },
      "errors": [
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        },
        {
          "shape": "AuthorizationAlreadyExistsFault"
        },
        {
          "shape": "AuthorizationQuotaExceededFault"
        }
      ],
      "documentation": "<p>Enables ingress to a DBSecurityGroup using one of two forms of authorization. First, EC2 or VPC security groups can be added to the DBSecurityGroup if the application using the database is running on EC2 or VPC instances. Second, IP ranges are available if the application accessing your database is running on the Internet. Required parameters for this API are one of CIDR range, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).</p> <note> <p>You can't authorize ingress from an EC2 security group in one AWS Region to an Amazon RDS DB instance in another. You can't authorize ingress from a VPC security group in one VPC to an Amazon RDS DB instance in another.</p> </note> <p>For an overview of CIDR ranges, go to the <a href=\"http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Wikipedia Tutorial</a>. </p>"
    },
    "BacktrackDBCluster": {
      "name": "BacktrackDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BacktrackDBClusterMessage"
      },
      "output": {
        "shape": "DBClusterBacktrack",
        "resultWrapper": "BacktrackDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        }
      ],
      "documentation": "<p>Backtracks a DB cluster to a specific time, without creating a new DB cluster.</p> <p>For more information on backtracking, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Managing.Backtrack.html\"> Backtracking an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora MySQL DB clusters.</p> </note>"
    },
    "CancelExportTask": {
      "name": "CancelExportTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelExportTaskMessage"
      },
      "output": {
        "shape": "ExportTask",
        "resultWrapper": "CancelExportTaskResult"
      },
      "errors": [
        {
          "shape": "ExportTaskNotFoundFault"
        },
        {
          "shape": "InvalidExportTaskStateFault"
        }
      ],
      "documentation": "<p>Cancels an export task in progress that is exporting a snapshot to Amazon S3. Any data that has already been written to the S3 bucket isn't removed. </p>"
    },
    "CopyDBClusterParameterGroup": {
      "name": "CopyDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyDBClusterParameterGroupMessage"
      },
      "output": {
        "shape": "CopyDBClusterParameterGroupResult",
        "resultWrapper": "CopyDBClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "DBParameterGroupQuotaExceededFault"
        },
        {
          "shape": "DBParameterGroupAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Copies the specified DB cluster parameter group.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "CopyDBClusterSnapshot": {
      "name": "CopyDBClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyDBClusterSnapshotMessage"
      },
      "output": {
        "shape": "CopyDBClusterSnapshotResult",
        "resultWrapper": "CopyDBClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Copies a snapshot of a DB cluster.</p> <p>To copy a DB cluster snapshot from a shared manual DB cluster snapshot, <code>SourceDBClusterSnapshotIdentifier</code> must be the Amazon Resource Name (ARN) of the shared DB cluster snapshot.</p> <p>You can copy an encrypted DB cluster snapshot from another AWS Region. In that case, the AWS Region where you call the <code>CopyDBClusterSnapshot</code> action is the destination AWS Region for the encrypted DB cluster snapshot to be copied to. To copy an encrypted DB cluster snapshot from another AWS Region, you must provide the following values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS Key Management System (AWS KMS) key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region.</p> </li> <li> <p> <code>PreSignedUrl</code> - A URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> action to be called in the source AWS Region where the DB cluster snapshot is copied from. The pre-signed URL must be a valid request for the <code>CopyDBClusterSnapshot</code> API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied.</p> <p>The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the AWS Region that the DB cluster snapshot is to be created in.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\"> Signature Version 4 Signing Process</a>.</p> <note> <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI) instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid request for the operation that can be executed in the source AWS Region.</p> </note> </li> <li> <p> <code>TargetDBClusterSnapshotIdentifier</code> - The identifier for the new copy of the DB cluster snapshot in the destination AWS Region.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the ARN format for the source AWS Region and is the same value as the <code>SourceDBClusterSnapshotIdentifier</code> in the pre-signed URL. </p> </li> </ul> <p>To cancel the copy operation once it is in progress, delete the target DB cluster snapshot identified by <code>TargetDBClusterSnapshotIdentifier</code> while that DB cluster snapshot is in \"copying\" status.</p> <p>For more information on copying encrypted DB cluster snapshots from one AWS Region to another, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html\"> Copying a Snapshot</a> in the <i>Amazon Aurora User Guide.</i> </p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "CopyDBParameterGroup": {
      "name": "CopyDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyDBParameterGroupMessage"
      },
      "output": {
        "shape": "CopyDBParameterGroupResult",
        "resultWrapper": "CopyDBParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "DBParameterGroupAlreadyExistsFault"
        },
        {
          "shape": "DBParameterGroupQuotaExceededFault"
        }
      ],
      "documentation": "<p>Copies the specified DB parameter group.</p>"
    },
    "CopyDBSnapshot": {
      "name": "CopyDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyDBSnapshotMessage"
      },
      "output": {
        "shape": "CopyDBSnapshotResult",
        "resultWrapper": "CopyDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotAlreadyExistsFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Copies the specified DB snapshot. The source DB snapshot must be in the \"available\" state.</p> <p>You can copy a snapshot from one AWS Region to another. In that case, the AWS Region where you call the <code>CopyDBSnapshot</code> action is the destination AWS Region for the DB snapshot copy. </p> <p>For more information about copying snapshots, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopyDBSnapshot\">Copying a DB Snapshot</a> in the <i>Amazon RDS User Guide.</i> </p>"
    },
    "CopyOptionGroup": {
      "name": "CopyOptionGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyOptionGroupMessage"
      },
      "output": {
        "shape": "CopyOptionGroupResult",
        "resultWrapper": "CopyOptionGroupResult"
      },
      "errors": [
        {
          "shape": "OptionGroupAlreadyExistsFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "OptionGroupQuotaExceededFault"
        }
      ],
      "documentation": "<p>Copies the specified option group.</p>"
    },
    "CreateCustomAvailabilityZone": {
      "name": "CreateCustomAvailabilityZone",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCustomAvailabilityZoneMessage"
      },
      "output": {
        "shape": "CreateCustomAvailabilityZoneResult",
        "resultWrapper": "CreateCustomAvailabilityZoneResult"
      },
      "errors": [
        {
          "shape": "CustomAvailabilityZoneAlreadyExistsFault"
        },
        {
          "shape": "CustomAvailabilityZoneQuotaExceededFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Creates a custom Availability Zone (AZ).</p> <p>A custom AZ is an on-premises AZ that is integrated with a VMware vSphere cluster.</p> <p>For more information about RDS on VMware, see the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\"> <i>RDS on VMware User Guide.</i> </a> </p>"
    },
    "CreateDBCluster": {
      "name": "CreateDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBClusterMessage"
      },
      "output": {
        "shape": "CreateDBClusterResult",
        "resultWrapper": "CreateDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterAlreadyExistsFault"
        },
        {
          "shape": "InsufficientStorageClusterCapacityFault"
        },
        {
          "shape": "DBClusterQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBSubnetGroupStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "GlobalClusterNotFoundFault"
        },
        {
          "shape": "InvalidGlobalClusterStateFault"
        },
        {
          "shape": "DomainNotFoundFault"
        }
      ],
      "documentation": "<p>Creates a new Amazon Aurora DB cluster.</p> <p>You can use the <code>ReplicationSourceIdentifier</code> parameter to create the DB cluster as a read replica of another DB cluster or Amazon RDS MySQL DB instance. For cross-region replication where the DB cluster identified by <code>ReplicationSourceIdentifier</code> is encrypted, you must also specify the <code>PreSignedUrl</code> parameter.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "CreateDBClusterEndpoint": {
      "name": "CreateDBClusterEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBClusterEndpointMessage"
      },
      "output": {
        "shape": "DBClusterEndpoint",
        "resultWrapper": "CreateDBClusterEndpointResult"
      },
      "errors": [
        {
          "shape": "DBClusterEndpointQuotaExceededFault"
        },
        {
          "shape": "DBClusterEndpointAlreadyExistsFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Creates a new custom endpoint and associates it with an Amazon Aurora DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "CreateDBClusterParameterGroup": {
      "name": "CreateDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBClusterParameterGroupMessage"
      },
      "output": {
        "shape": "CreateDBClusterParameterGroupResult",
        "resultWrapper": "CreateDBClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupQuotaExceededFault"
        },
        {
          "shape": "DBParameterGroupAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Creates a new DB cluster parameter group.</p> <p>Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.</p> <p> A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using <code>ModifyDBClusterParameterGroup</code>. Once you've created a DB cluster parameter group, you need to associate it with your DB cluster using <code>ModifyDBCluster</code>. When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect. </p> <important> <p>After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href=\"https://console.aws.amazon.com/rds/\">Amazon RDS console</a> or the <code>DescribeDBClusterParameters</code> action to verify that your DB cluster parameter group has been created or modified.</p> </important> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "CreateDBClusterSnapshot": {
      "name": "CreateDBClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBClusterSnapshotMessage"
      },
      "output": {
        "shape": "CreateDBClusterSnapshotResult",
        "resultWrapper": "CreateDBClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        }
      ],
      "documentation": "<p>Creates a snapshot of a DB cluster. For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "CreateDBInstance": {
      "name": "CreateDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBInstanceMessage"
      },
      "output": {
        "shape": "CreateDBInstanceResult",
        "resultWrapper": "CreateDBInstanceResult"
      },
      "errors": [
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "InstanceQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "StorageTypeNotSupportedFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "DomainNotFoundFault"
        },
        {
          "shape": "BackupPolicyNotFoundFault"
        }
      ],
      "documentation": "<p>Creates a new DB instance.</p>"
    },
    "CreateDBInstanceReadReplica": {
      "name": "CreateDBInstanceReadReplica",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBInstanceReadReplicaMessage"
      },
      "output": {
        "shape": "CreateDBInstanceReadReplicaResult",
        "resultWrapper": "CreateDBInstanceReadReplicaResult"
      },
      "errors": [
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "InstanceQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupNotAllowedFault"
        },
        {
          "shape": "InvalidDBSubnetGroupFault"
        },
        {
          "shape": "StorageTypeNotSupportedFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "DomainNotFoundFault"
        }
      ],
      "documentation": "<p>Creates a new DB instance that acts as a read replica for an existing source DB instance. You can create a read replica for a DB instance running MySQL, MariaDB, Oracle, PostgreSQL, or SQL Server. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html\">Working with Read Replicas</a> in the <i>Amazon RDS User Guide</i>. </p> <p>Amazon Aurora doesn't support this action. Call the <code>CreateDBInstance</code> action to create a DB instance for an Aurora DB cluster.</p> <p>All read replica DB instances are created with backups disabled. All other DB instance attributes (including DB security groups and DB parameter groups) are inherited from the source DB instance, except as specified.</p> <important> <p>Your source DB instance must have backup retention enabled. </p> </important>"
    },
    "CreateDBParameterGroup": {
      "name": "CreateDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBParameterGroupMessage"
      },
      "output": {
        "shape": "CreateDBParameterGroupResult",
        "resultWrapper": "CreateDBParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupQuotaExceededFault"
        },
        {
          "shape": "DBParameterGroupAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Creates a new DB parameter group.</p> <p> A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using <i>ModifyDBParameterGroup</i>. Once you've created a DB parameter group, you need to associate it with your DB instance using <i>ModifyDBInstance</i>. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect. </p> <important> <p>After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href=\"https://console.aws.amazon.com/rds/\">Amazon RDS console</a> or the <i>DescribeDBParameters</i> command to verify that your DB parameter group has been created or modified.</p> </important>"
    },
    "CreateDBProxy": {
      "name": "CreateDBProxy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBProxyRequest"
      },
      "output": {
        "shape": "CreateDBProxyResponse",
        "resultWrapper": "CreateDBProxyResult"
      },
      "errors": [
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "DBProxyAlreadyExistsFault"
        },
        {
          "shape": "DBProxyQuotaExceededFault"
        }
      ],
      "documentation": "<p>Creates a new DB proxy.</p>"
    },
    "CreateDBSecurityGroup": {
      "name": "CreateDBSecurityGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBSecurityGroupMessage"
      },
      "output": {
        "shape": "CreateDBSecurityGroupResult",
        "resultWrapper": "CreateDBSecurityGroupResult"
      },
      "errors": [
        {
          "shape": "DBSecurityGroupAlreadyExistsFault"
        },
        {
          "shape": "DBSecurityGroupQuotaExceededFault"
        },
        {
          "shape": "DBSecurityGroupNotSupportedFault"
        }
      ],
      "documentation": "<p>Creates a new DB security group. DB security groups control access to a DB instance.</p> <note> <p>A DB security group controls access to EC2-Classic DB instances that are not in a VPC.</p> </note>"
    },
    "CreateDBSnapshot": {
      "name": "CreateDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBSnapshotMessage"
      },
      "output": {
        "shape": "CreateDBSnapshotResult",
        "resultWrapper": "CreateDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotAlreadyExistsFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        }
      ],
      "documentation": "<p>Creates a DBSnapshot. The source DBInstance must be in \"available\" state.</p>"
    },
    "CreateDBSubnetGroup": {
      "name": "CreateDBSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDBSubnetGroupMessage"
      },
      "output": {
        "shape": "CreateDBSubnetGroupResult",
        "resultWrapper": "CreateDBSubnetGroupResult"
      },
      "errors": [
        {
          "shape": "DBSubnetGroupAlreadyExistsFault"
        },
        {
          "shape": "DBSubnetGroupQuotaExceededFault"
        },
        {
          "shape": "DBSubnetQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        }
      ],
      "documentation": "<p>Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.</p>"
    },
    "CreateEventSubscription": {
      "name": "CreateEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateEventSubscriptionMessage"
      },
      "output": {
        "shape": "CreateEventSubscriptionResult",
        "resultWrapper": "CreateEventSubscriptionResult"
      },
      "errors": [
        {
          "shape": "EventSubscriptionQuotaExceededFault"
        },
        {
          "shape": "SubscriptionAlreadyExistFault"
        },
        {
          "shape": "SNSInvalidTopicFault"
        },
        {
          "shape": "SNSNoAuthorizationFault"
        },
        {
          "shape": "SNSTopicArnNotFoundFault"
        },
        {
          "shape": "SubscriptionCategoryNotFoundFault"
        },
        {
          "shape": "SourceNotFoundFault"
        }
      ],
      "documentation": "<p>Creates an RDS event notification subscription. This action requires a topic Amazon Resource Name (ARN) created by either the RDS console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.</p> <p>You can specify the type of source (<code>SourceType</code>) that you want to be notified of and provide a list of RDS sources (<code>SourceIds</code>) that triggers the events. You can also provide a list of event categories (<code>EventCategories</code>) for events that you want to be notified of. For example, you can specify <code>SourceType</code> = <code>db-instance</code>, <code>SourceIds</code> = <code>mydbinstance1</code>, <code>mydbinstance2</code> and <code>EventCategories</code> = <code>Availability</code>, <code>Backup</code>.</p> <p>If you specify both the <code>SourceType</code> and <code>SourceIds</code>, such as <code>SourceType</code> = <code>db-instance</code> and <code>SourceIdentifier</code> = <code>myDBInstance1</code>, you are notified of all the <code>db-instance</code> events for the specified source. If you specify a <code>SourceType</code> but do not specify a <code>SourceIdentifier</code>, you receive notice of the events for that source type for all your RDS sources. If you don't specify either the SourceType or the <code>SourceIdentifier</code>, you are notified of events generated from all RDS sources belonging to your customer account.</p> <note> <p>RDS event notification is only available for unencrypted SNS topics. If you specify an encrypted SNS topic, event notifications aren't sent for the topic.</p> </note>"
    },
    "CreateGlobalCluster": {
      "name": "CreateGlobalCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateGlobalClusterMessage"
      },
      "output": {
        "shape": "CreateGlobalClusterResult",
        "resultWrapper": "CreateGlobalClusterResult"
      },
      "errors": [
        {
          "shape": "GlobalClusterAlreadyExistsFault"
        },
        {
          "shape": "GlobalClusterQuotaExceededFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        }
      ],
      "documentation": "<p> Creates an Aurora global database spread across multiple regions. The global database contains a single primary cluster with read-write capability, and a read-only secondary cluster that receives data from the primary cluster through high-speed replication performed by the Aurora storage subsystem. </p> <p> You can create a global database that is initially empty, and then add a primary cluster and a secondary cluster to it. Or you can specify an existing Aurora cluster during the create operation, and this cluster becomes the primary cluster of the global database. </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "CreateOptionGroup": {
      "name": "CreateOptionGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateOptionGroupMessage"
      },
      "output": {
        "shape": "CreateOptionGroupResult",
        "resultWrapper": "CreateOptionGroupResult"
      },
      "errors": [
        {
          "shape": "OptionGroupAlreadyExistsFault"
        },
        {
          "shape": "OptionGroupQuotaExceededFault"
        }
      ],
      "documentation": "<p>Creates a new option group. You can create up to 20 option groups.</p>"
    },
    "DeleteCustomAvailabilityZone": {
      "name": "DeleteCustomAvailabilityZone",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCustomAvailabilityZoneMessage"
      },
      "output": {
        "shape": "DeleteCustomAvailabilityZoneResult",
        "resultWrapper": "DeleteCustomAvailabilityZoneResult"
      },
      "errors": [
        {
          "shape": "CustomAvailabilityZoneNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Deletes a custom Availability Zone (AZ).</p> <p>A custom AZ is an on-premises AZ that is integrated with a VMware vSphere cluster.</p> <p>For more information about RDS on VMware, see the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\"> <i>RDS on VMware User Guide.</i> </a> </p>"
    },
    "DeleteDBCluster": {
      "name": "DeleteDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBClusterMessage"
      },
      "output": {
        "shape": "DeleteDBClusterResult",
        "resultWrapper": "DeleteDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "DBClusterSnapshotAlreadyExistsFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        }
      ],
      "documentation": "<p>The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and can't be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.</p> <p/> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DeleteDBClusterEndpoint": {
      "name": "DeleteDBClusterEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBClusterEndpointMessage"
      },
      "output": {
        "shape": "DBClusterEndpoint",
        "resultWrapper": "DeleteDBClusterEndpointResult"
      },
      "errors": [
        {
          "shape": "InvalidDBClusterEndpointStateFault"
        },
        {
          "shape": "DBClusterEndpointNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        }
      ],
      "documentation": "<p>Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DeleteDBClusterParameterGroup": {
      "name": "DeleteDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBClusterParameterGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidDBParameterGroupStateFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted can't be associated with any DB clusters.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DeleteDBClusterSnapshot": {
      "name": "DeleteDBClusterSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBClusterSnapshotMessage"
      },
      "output": {
        "shape": "DeleteDBClusterSnapshotResult",
        "resultWrapper": "DeleteDBClusterSnapshotResult"
      },
      "errors": [
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.</p> <note> <p>The DB cluster snapshot must be in the <code>available</code> state to be deleted.</p> </note> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DeleteDBInstance": {
      "name": "DeleteDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBInstanceMessage"
      },
      "output": {
        "shape": "DeleteDBInstanceResult",
        "resultWrapper": "DeleteDBInstanceResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBSnapshotAlreadyExistsFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "DBInstanceAutomatedBackupQuotaExceededFault"
        }
      ],
      "documentation": "<p>The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and can't be recovered. Manual DB snapshots of the DB instance to be deleted by <code>DeleteDBInstance</code> are not deleted.</p> <p> If you request a final DB snapshot the status of the Amazon RDS DB instance is <code>deleting</code> until the DB snapshot is created. The API action <code>DescribeDBInstance</code> is used to monitor the status of this operation. The action can't be canceled or reverted once submitted. </p> <p>When a DB instance is in a failure state and has a status of <code>failed</code>, <code>incompatible-restore</code>, or <code>incompatible-network</code>, you can only delete it when you skip creation of the final snapshot with the <code>SkipFinalSnapshot</code> parameter.</p> <p>If the specified DB instance is part of an Amazon Aurora DB cluster, you can't delete the DB instance if both of the following conditions are true:</p> <ul> <li> <p>The DB cluster is a read replica of another Amazon Aurora DB cluster.</p> </li> <li> <p>The DB instance is the only instance in the DB cluster.</p> </li> </ul> <p>To delete a DB instance in this case, first call the <code>PromoteReadReplicaDBCluster</code> API action to promote the DB cluster so it's no longer a read replica. After the promotion completes, then call the <code>DeleteDBInstance</code> API action to delete the final instance in the DB cluster.</p>"
    },
    "DeleteDBInstanceAutomatedBackup": {
      "name": "DeleteDBInstanceAutomatedBackup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBInstanceAutomatedBackupMessage"
      },
      "output": {
        "shape": "DeleteDBInstanceAutomatedBackupResult",
        "resultWrapper": "DeleteDBInstanceAutomatedBackupResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceAutomatedBackupStateFault"
        },
        {
          "shape": "DBInstanceAutomatedBackupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes automated backups based on the source instance's <code>DbiResourceId</code> value or the restorable instance's resource ID.</p>"
    },
    "DeleteDBParameterGroup": {
      "name": "DeleteDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBParameterGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidDBParameterGroupStateFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a specified DB parameter group. The DB parameter group to be deleted can't be associated with any DB instances.</p>"
    },
    "DeleteDBProxy": {
      "name": "DeleteDBProxy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBProxyRequest"
      },
      "output": {
        "shape": "DeleteDBProxyResponse",
        "resultWrapper": "DeleteDBProxyResult"
      },
      "errors": [
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "InvalidDBProxyStateFault"
        }
      ],
      "documentation": "<p>Deletes an existing proxy.</p>"
    },
    "DeleteDBSecurityGroup": {
      "name": "DeleteDBSecurityGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBSecurityGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a DB security group.</p> <note> <p>The specified DB security group must not be associated with any DB instances.</p> </note>"
    },
    "DeleteDBSnapshot": {
      "name": "DeleteDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBSnapshotMessage"
      },
      "output": {
        "shape": "DeleteDBSnapshotResult",
        "resultWrapper": "DeleteDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a DB snapshot. If the snapshot is being copied, the copy operation is terminated.</p> <note> <p>The DB snapshot must be in the <code>available</code> state to be deleted.</p> </note>"
    },
    "DeleteDBSubnetGroup": {
      "name": "DeleteDBSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDBSubnetGroupMessage"
      },
      "errors": [
        {
          "shape": "InvalidDBSubnetGroupStateFault"
        },
        {
          "shape": "InvalidDBSubnetStateFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes a DB subnet group.</p> <note> <p>The specified database subnet group must not be associated with any DB instances.</p> </note>"
    },
    "DeleteEventSubscription": {
      "name": "DeleteEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEventSubscriptionMessage"
      },
      "output": {
        "shape": "DeleteEventSubscriptionResult",
        "resultWrapper": "DeleteEventSubscriptionResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "InvalidEventSubscriptionStateFault"
        }
      ],
      "documentation": "<p>Deletes an RDS event notification subscription.</p>"
    },
    "DeleteGlobalCluster": {
      "name": "DeleteGlobalCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteGlobalClusterMessage"
      },
      "output": {
        "shape": "DeleteGlobalClusterResult",
        "resultWrapper": "DeleteGlobalClusterResult"
      },
      "errors": [
        {
          "shape": "GlobalClusterNotFoundFault"
        },
        {
          "shape": "InvalidGlobalClusterStateFault"
        }
      ],
      "documentation": "<p> Deletes a global database cluster. The primary and secondary clusters must already be detached or destroyed first. </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DeleteInstallationMedia": {
      "name": "DeleteInstallationMedia",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteInstallationMediaMessage"
      },
      "output": {
        "shape": "InstallationMedia",
        "resultWrapper": "DeleteInstallationMediaResult"
      },
      "errors": [
        {
          "shape": "InstallationMediaNotFoundFault"
        }
      ],
      "documentation": "<p>Deletes the installation medium for a DB engine that requires an on-premises customer provided license, such as Microsoft SQL Server.</p>"
    },
    "DeleteOptionGroup": {
      "name": "DeleteOptionGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteOptionGroupMessage"
      },
      "errors": [
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "InvalidOptionGroupStateFault"
        }
      ],
      "documentation": "<p>Deletes an existing option group.</p>"
    },
    "DeregisterDBProxyTargets": {
      "name": "DeregisterDBProxyTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterDBProxyTargetsRequest"
      },
      "output": {
        "shape": "DeregisterDBProxyTargetsResponse",
        "resultWrapper": "DeregisterDBProxyTargetsResult"
      },
      "errors": [
        {
          "shape": "DBProxyTargetNotFoundFault"
        },
        {
          "shape": "DBProxyTargetGroupNotFoundFault"
        },
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "InvalidDBProxyStateFault"
        }
      ],
      "documentation": "<p>Remove the association between one or more <code>DBProxyTarget</code> data structures and a <code>DBProxyTargetGroup</code>.</p>"
    },
    "DescribeAccountAttributes": {
      "name": "DescribeAccountAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAccountAttributesMessage"
      },
      "output": {
        "shape": "AccountAttributesMessage",
        "resultWrapper": "DescribeAccountAttributesResult"
      },
      "documentation": "<p>Lists all of the attributes for a customer account. The attributes include Amazon RDS quotas for the account, such as the number of DB instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value.</p> <p>This command doesn't take any parameters.</p>"
    },
    "DescribeCertificates": {
      "name": "DescribeCertificates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCertificatesMessage"
      },
      "output": {
        "shape": "CertificateMessage",
        "resultWrapper": "DescribeCertificatesResult"
      },
      "errors": [
        {
          "shape": "CertificateNotFoundFault"
        }
      ],
      "documentation": "<p>Lists the set of CA certificates provided by Amazon RDS for this AWS account.</p>"
    },
    "DescribeCustomAvailabilityZones": {
      "name": "DescribeCustomAvailabilityZones",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCustomAvailabilityZonesMessage"
      },
      "output": {
        "shape": "CustomAvailabilityZoneMessage",
        "resultWrapper": "DescribeCustomAvailabilityZonesResult"
      },
      "errors": [
        {
          "shape": "CustomAvailabilityZoneNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about custom Availability Zones (AZs).</p> <p>A custom AZ is an on-premises AZ that is integrated with a VMware vSphere cluster.</p> <p>For more information about RDS on VMware, see the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\"> <i>RDS on VMware User Guide.</i> </a> </p>"
    },
    "DescribeDBClusterBacktracks": {
      "name": "DescribeDBClusterBacktracks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterBacktracksMessage"
      },
      "output": {
        "shape": "DBClusterBacktrackMessage",
        "resultWrapper": "DescribeDBClusterBacktracksResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBClusterBacktrackNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about backtracks for a DB cluster.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora MySQL DB clusters.</p> </note>"
    },
    "DescribeDBClusterEndpoints": {
      "name": "DescribeDBClusterEndpoints",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterEndpointsMessage"
      },
      "output": {
        "shape": "DBClusterEndpointMessage",
        "resultWrapper": "DescribeDBClusterEndpointsResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about endpoints for an Amazon Aurora DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DescribeDBClusterParameterGroups": {
      "name": "DescribeDBClusterParameterGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterParameterGroupsMessage"
      },
      "output": {
        "shape": "DBClusterParameterGroupsMessage",
        "resultWrapper": "DescribeDBClusterParameterGroupsResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p> Returns a list of <code>DBClusterParameterGroup</code> descriptions. If a <code>DBClusterParameterGroupName</code> parameter is specified, the list will contain only the description of the specified DB cluster parameter group. </p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DescribeDBClusterParameters": {
      "name": "DescribeDBClusterParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterParametersMessage"
      },
      "output": {
        "shape": "DBClusterParameterGroupDetails",
        "resultWrapper": "DescribeDBClusterParametersResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Returns the detailed parameter list for a particular DB cluster parameter group.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DescribeDBClusterSnapshotAttributes": {
      "name": "DescribeDBClusterSnapshotAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterSnapshotAttributesMessage"
      },
      "output": {
        "shape": "DescribeDBClusterSnapshotAttributesResult",
        "resultWrapper": "DescribeDBClusterSnapshotAttributesResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot.</p> <p>When sharing snapshots with other AWS accounts, <code>DescribeDBClusterSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts.</p> <p>To add or remove access for an AWS account to copy or restore a manual DB cluster snapshot, or to make the manual DB cluster snapshot public or private, use the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DescribeDBClusterSnapshots": {
      "name": "DescribeDBClusterSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClusterSnapshotsMessage"
      },
      "output": {
        "shape": "DBClusterSnapshotMessage",
        "resultWrapper": "DescribeDBClusterSnapshotsResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about DB cluster snapshots. This API action supports pagination.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DescribeDBClusters": {
      "name": "DescribeDBClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBClustersMessage"
      },
      "output": {
        "shape": "DBClusterMessage",
        "resultWrapper": "DescribeDBClustersResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about provisioned Aurora DB clusters. This API supports pagination.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This operation can also return information for Amazon Neptune DB instances and Amazon DocumentDB instances.</p> </note>"
    },
    "DescribeDBEngineVersions": {
      "name": "DescribeDBEngineVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBEngineVersionsMessage"
      },
      "output": {
        "shape": "DBEngineVersionMessage",
        "resultWrapper": "DescribeDBEngineVersionsResult"
      },
      "documentation": "<p>Returns a list of the available DB engines.</p>"
    },
    "DescribeDBInstanceAutomatedBackups": {
      "name": "DescribeDBInstanceAutomatedBackups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBInstanceAutomatedBackupsMessage"
      },
      "output": {
        "shape": "DBInstanceAutomatedBackupMessage",
        "resultWrapper": "DescribeDBInstanceAutomatedBackupsResult"
      },
      "errors": [
        {
          "shape": "DBInstanceAutomatedBackupNotFoundFault"
        }
      ],
      "documentation": "<p>Displays backups for both current and deleted instances. For example, use this operation to find details about automated backups for previously deleted instances. Current instances with retention periods greater than zero (0) are returned for both the <code>DescribeDBInstanceAutomatedBackups</code> and <code>DescribeDBInstances</code> operations.</p> <p>All parameters are optional.</p>"
    },
    "DescribeDBInstances": {
      "name": "DescribeDBInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBInstancesMessage"
      },
      "output": {
        "shape": "DBInstanceMessage",
        "resultWrapper": "DescribeDBInstancesResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about provisioned RDS instances. This API supports pagination.</p> <note> <p>This operation can also return information for Amazon Neptune DB instances and Amazon DocumentDB instances.</p> </note>"
    },
    "DescribeDBLogFiles": {
      "name": "DescribeDBLogFiles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBLogFilesMessage"
      },
      "output": {
        "shape": "DescribeDBLogFilesResponse",
        "resultWrapper": "DescribeDBLogFilesResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of DB log files for the DB instance.</p>"
    },
    "DescribeDBParameterGroups": {
      "name": "DescribeDBParameterGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBParameterGroupsMessage"
      },
      "output": {
        "shape": "DBParameterGroupsMessage",
        "resultWrapper": "DescribeDBParameterGroupsResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p> Returns a list of <code>DBParameterGroup</code> descriptions. If a <code>DBParameterGroupName</code> is specified, the list will contain only the description of the specified DB parameter group. </p>"
    },
    "DescribeDBParameters": {
      "name": "DescribeDBParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBParametersMessage"
      },
      "output": {
        "shape": "DBParameterGroupDetails",
        "resultWrapper": "DescribeDBParametersResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Returns the detailed parameter list for a particular DB parameter group.</p>"
    },
    "DescribeDBProxies": {
      "name": "DescribeDBProxies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBProxiesRequest"
      },
      "output": {
        "shape": "DescribeDBProxiesResponse",
        "resultWrapper": "DescribeDBProxiesResult"
      },
      "errors": [
        {
          "shape": "DBProxyNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about DB proxies.</p>"
    },
    "DescribeDBProxyTargetGroups": {
      "name": "DescribeDBProxyTargetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBProxyTargetGroupsRequest"
      },
      "output": {
        "shape": "DescribeDBProxyTargetGroupsResponse",
        "resultWrapper": "DescribeDBProxyTargetGroupsResult"
      },
      "errors": [
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "DBProxyTargetGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBProxyStateFault"
        }
      ],
      "documentation": "<p>Returns information about DB proxy target groups, represented by <code>DBProxyTargetGroup</code> data structures.</p>"
    },
    "DescribeDBProxyTargets": {
      "name": "DescribeDBProxyTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBProxyTargetsRequest"
      },
      "output": {
        "shape": "DescribeDBProxyTargetsResponse",
        "resultWrapper": "DescribeDBProxyTargetsResult"
      },
      "errors": [
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "DBProxyTargetNotFoundFault"
        },
        {
          "shape": "DBProxyTargetGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBProxyStateFault"
        }
      ],
      "documentation": "<p>Returns information about <code>DBProxyTarget</code> objects. This API supports pagination.</p>"
    },
    "DescribeDBSecurityGroups": {
      "name": "DescribeDBSecurityGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBSecurityGroupsMessage"
      },
      "output": {
        "shape": "DBSecurityGroupMessage",
        "resultWrapper": "DescribeDBSecurityGroupsResult"
      },
      "errors": [
        {
          "shape": "DBSecurityGroupNotFoundFault"
        }
      ],
      "documentation": "<p> Returns a list of <code>DBSecurityGroup</code> descriptions. If a <code>DBSecurityGroupName</code> is specified, the list will contain only the descriptions of the specified DB security group. </p>"
    },
    "DescribeDBSnapshotAttributes": {
      "name": "DescribeDBSnapshotAttributes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBSnapshotAttributesMessage"
      },
      "output": {
        "shape": "DescribeDBSnapshotAttributesResult",
        "resultWrapper": "DescribeDBSnapshotAttributesResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of DB snapshot attribute names and values for a manual DB snapshot.</p> <p>When sharing snapshots with other AWS accounts, <code>DescribeDBSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual DB snapshot is public and can be copied or restored by all AWS accounts.</p> <p>To add or remove access for an AWS account to copy or restore a manual DB snapshot, or to make the manual DB snapshot public or private, use the <code>ModifyDBSnapshotAttribute</code> API action.</p>"
    },
    "DescribeDBSnapshots": {
      "name": "DescribeDBSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBSnapshotsMessage"
      },
      "output": {
        "shape": "DBSnapshotMessage",
        "resultWrapper": "DescribeDBSnapshotsResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about DB snapshots. This API action supports pagination.</p>"
    },
    "DescribeDBSubnetGroups": {
      "name": "DescribeDBSubnetGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDBSubnetGroupsMessage"
      },
      "output": {
        "shape": "DBSubnetGroupMessage",
        "resultWrapper": "DescribeDBSubnetGroupsResult"
      },
      "errors": [
        {
          "shape": "DBSubnetGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.</p> <p>For an overview of CIDR ranges, go to the <a href=\"http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\">Wikipedia Tutorial</a>. </p>"
    },
    "DescribeEngineDefaultClusterParameters": {
      "name": "DescribeEngineDefaultClusterParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEngineDefaultClusterParametersMessage"
      },
      "output": {
        "shape": "DescribeEngineDefaultClusterParametersResult",
        "resultWrapper": "DescribeEngineDefaultClusterParametersResult"
      },
      "documentation": "<p>Returns the default engine and system parameter information for the cluster database engine.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p>"
    },
    "DescribeEngineDefaultParameters": {
      "name": "DescribeEngineDefaultParameters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEngineDefaultParametersMessage"
      },
      "output": {
        "shape": "DescribeEngineDefaultParametersResult",
        "resultWrapper": "DescribeEngineDefaultParametersResult"
      },
      "documentation": "<p>Returns the default engine and system parameter information for the specified database engine.</p>"
    },
    "DescribeEventCategories": {
      "name": "DescribeEventCategories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventCategoriesMessage"
      },
      "output": {
        "shape": "EventCategoriesMessage",
        "resultWrapper": "DescribeEventCategoriesResult"
      },
      "documentation": "<p>Displays a list of categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html\"> Events</a> in the <i>Amazon RDS User Guide.</i> </p>"
    },
    "DescribeEventSubscriptions": {
      "name": "DescribeEventSubscriptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventSubscriptionsMessage"
      },
      "output": {
        "shape": "EventSubscriptionsMessage",
        "resultWrapper": "DescribeEventSubscriptionsResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        }
      ],
      "documentation": "<p>Lists all the subscription descriptions for a customer account. The description for a subscription includes <code>SubscriptionName</code>, <code>SNSTopicARN</code>, <code>CustomerID</code>, <code>SourceType</code>, <code>SourceID</code>, <code>CreationTime</code>, and <code>Status</code>.</p> <p>If you specify a <code>SubscriptionName</code>, lists the description for that subscription.</p>"
    },
    "DescribeEvents": {
      "name": "DescribeEvents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEventsMessage"
      },
      "output": {
        "shape": "EventsMessage",
        "resultWrapper": "DescribeEventsResult"
      },
      "documentation": "<p>Returns events related to DB instances, DB clusters, DB parameter groups, DB security groups, DB snapshots, and DB cluster snapshots for the past 14 days. Events specific to a particular DB instances, DB clusters, DB parameter groups, DB security groups, DB snapshots, and DB cluster snapshots group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.</p>"
    },
    "DescribeExportTasks": {
      "name": "DescribeExportTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeExportTasksMessage"
      },
      "output": {
        "shape": "ExportTasksMessage",
        "resultWrapper": "DescribeExportTasksResult"
      },
      "errors": [
        {
          "shape": "ExportTaskNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about a snapshot export to Amazon S3. This API operation supports pagination. </p>"
    },
    "DescribeGlobalClusters": {
      "name": "DescribeGlobalClusters",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeGlobalClustersMessage"
      },
      "output": {
        "shape": "GlobalClustersMessage",
        "resultWrapper": "DescribeGlobalClustersResult"
      },
      "errors": [
        {
          "shape": "GlobalClusterNotFoundFault"
        }
      ],
      "documentation": "<p> Returns information about Aurora global database clusters. This API supports pagination. </p> <p> For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "DescribeInstallationMedia": {
      "name": "DescribeInstallationMedia",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeInstallationMediaMessage"
      },
      "output": {
        "shape": "InstallationMediaMessage",
        "resultWrapper": "DescribeInstallationMediaResult"
      },
      "errors": [
        {
          "shape": "InstallationMediaNotFoundFault"
        }
      ],
      "documentation": "<p>Describes the available installation media for a DB engine that requires an on-premises customer provided license, such as Microsoft SQL Server.</p>"
    },
    "DescribeOptionGroupOptions": {
      "name": "DescribeOptionGroupOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOptionGroupOptionsMessage"
      },
      "output": {
        "shape": "OptionGroupOptionsMessage",
        "resultWrapper": "DescribeOptionGroupOptionsResult"
      },
      "documentation": "<p>Describes all available options.</p>"
    },
    "DescribeOptionGroups": {
      "name": "DescribeOptionGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOptionGroupsMessage"
      },
      "output": {
        "shape": "OptionGroups",
        "resultWrapper": "DescribeOptionGroupsResult"
      },
      "errors": [
        {
          "shape": "OptionGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Describes the available option groups.</p>"
    },
    "DescribeOrderableDBInstanceOptions": {
      "name": "DescribeOrderableDBInstanceOptions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrderableDBInstanceOptionsMessage"
      },
      "output": {
        "shape": "OrderableDBInstanceOptionsMessage",
        "resultWrapper": "DescribeOrderableDBInstanceOptionsResult"
      },
      "documentation": "<p>Returns a list of orderable DB instance options for the specified engine.</p>"
    },
    "DescribePendingMaintenanceActions": {
      "name": "DescribePendingMaintenanceActions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePendingMaintenanceActionsMessage"
      },
      "output": {
        "shape": "PendingMaintenanceActionsMessage",
        "resultWrapper": "DescribePendingMaintenanceActionsResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.</p>"
    },
    "DescribeReservedDBInstances": {
      "name": "DescribeReservedDBInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReservedDBInstancesMessage"
      },
      "output": {
        "shape": "ReservedDBInstanceMessage",
        "resultWrapper": "DescribeReservedDBInstancesResult"
      },
      "errors": [
        {
          "shape": "ReservedDBInstanceNotFoundFault"
        }
      ],
      "documentation": "<p>Returns information about reserved DB instances for this account, or about a specified reserved DB instance.</p>"
    },
    "DescribeReservedDBInstancesOfferings": {
      "name": "DescribeReservedDBInstancesOfferings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReservedDBInstancesOfferingsMessage"
      },
      "output": {
        "shape": "ReservedDBInstancesOfferingMessage",
        "resultWrapper": "DescribeReservedDBInstancesOfferingsResult"
      },
      "errors": [
        {
          "shape": "ReservedDBInstancesOfferingNotFoundFault"
        }
      ],
      "documentation": "<p>Lists available reserved DB instance offerings.</p>"
    },
    "DescribeSourceRegions": {
      "name": "DescribeSourceRegions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeSourceRegionsMessage"
      },
      "output": {
        "shape": "SourceRegionMessage",
        "resultWrapper": "DescribeSourceRegionsResult"
      },
      "documentation": "<p>Returns a list of the source AWS Regions where the current AWS Region can create a read replica or copy a DB snapshot from. This API action supports pagination.</p>"
    },
    "DescribeValidDBInstanceModifications": {
      "name": "DescribeValidDBInstanceModifications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeValidDBInstanceModificationsMessage"
      },
      "output": {
        "shape": "DescribeValidDBInstanceModificationsResult",
        "resultWrapper": "DescribeValidDBInstanceModificationsResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>You can call <code>DescribeValidDBInstanceModifications</code> to learn what modifications you can make to your DB instance. You can use this information when you call <code>ModifyDBInstance</code>. </p>"
    },
    "DownloadDBLogFilePortion": {
      "name": "DownloadDBLogFilePortion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DownloadDBLogFilePortionMessage"
      },
      "output": {
        "shape": "DownloadDBLogFilePortionDetails",
        "resultWrapper": "DownloadDBLogFilePortionResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBLogFileNotFoundFault"
        }
      ],
      "documentation": "<p>Downloads all or a portion of the specified log file, up to 1 MB in size.</p>"
    },
    "FailoverDBCluster": {
      "name": "FailoverDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "FailoverDBClusterMessage"
      },
      "output": {
        "shape": "FailoverDBClusterResult",
        "resultWrapper": "FailoverDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Forces a failover for a DB cluster.</p> <p>A failover for a DB cluster promotes one of the Aurora Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer).</p> <p>Amazon Aurora will automatically fail over to an Aurora Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "ImportInstallationMedia": {
      "name": "ImportInstallationMedia",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportInstallationMediaMessage"
      },
      "output": {
        "shape": "InstallationMedia",
        "resultWrapper": "ImportInstallationMediaResult"
      },
      "errors": [
        {
          "shape": "CustomAvailabilityZoneNotFoundFault"
        },
        {
          "shape": "InstallationMediaAlreadyExistsFault"
        }
      ],
      "documentation": "<p>Imports the installation media for a DB engine that requires an on-premises customer provided license, such as SQL Server.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceMessage"
      },
      "output": {
        "shape": "TagListMessage",
        "resultWrapper": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "DBProxyTargetGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Lists all tags on an Amazon RDS resource.</p> <p>For an overview on tagging an Amazon RDS resource, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html\">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide</i>.</p>"
    },
    "ModifyCertificates": {
      "name": "ModifyCertificates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyCertificatesMessage"
      },
      "output": {
        "shape": "ModifyCertificatesResult",
        "resultWrapper": "ModifyCertificatesResult"
      },
      "errors": [
        {
          "shape": "CertificateNotFoundFault"
        }
      ],
      "documentation": "<p>Override the system-default Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificate for Amazon RDS for new DB instances temporarily, or remove the override.</p> <p>By using this operation, you can specify an RDS-approved SSL/TLS certificate for new DB instances that is different from the default certificate provided by RDS. You can also use this operation to remove the override, so that new DB instances use the default certificate provided by RDS.</p> <p>You might need to override the default certificate in the following situations:</p> <ul> <li> <p>You already migrated your applications to support the latest certificate authority (CA) certificate, but the new CA certificate is not yet the RDS default CA certificate for the specified AWS Region.</p> </li> <li> <p>RDS has already moved to a new default CA certificate for the specified AWS Region, but you are still in the process of supporting the new CA certificate. In this case, you temporarily need additional time to finish your application changes.</p> </li> </ul> <p>For more information about rotating your SSL/TLS certificate for RDS DB engines, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html\"> Rotating Your SSL/TLS Certificate</a> in the <i>Amazon RDS User Guide</i>.</p> <p>For more information about rotating your SSL/TLS certificate for Aurora DB engines, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html\"> Rotating Your SSL/TLS Certificate</a> in the <i>Amazon Aurora User Guide</i>.</p>"
    },
    "ModifyCurrentDBClusterCapacity": {
      "name": "ModifyCurrentDBClusterCapacity",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyCurrentDBClusterCapacityMessage"
      },
      "output": {
        "shape": "DBClusterCapacityInfo",
        "resultWrapper": "ModifyCurrentDBClusterCapacityResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBClusterCapacityFault"
        }
      ],
      "documentation": "<p>Set the capacity of an Aurora Serverless DB cluster to a specific value.</p> <p>Aurora Serverless scales seamlessly based on the workload on the DB cluster. In some cases, the capacity might not scale fast enough to meet a sudden change in workload, such as a large number of new transactions. Call <code>ModifyCurrentDBClusterCapacity</code> to set the capacity explicitly.</p> <p>After this call sets the DB cluster capacity, Aurora Serverless can automatically scale the DB cluster based on the cooldown period for scaling up and the cooldown period for scaling down.</p> <p>For more information about Aurora Serverless, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html\">Using Amazon Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p> <important> <p>If you call <code>ModifyCurrentDBClusterCapacity</code> with the default <code>TimeoutAction</code>, connections that prevent Aurora Serverless from finding a scaling point might be dropped. For more information about scaling points, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling\"> Autoscaling for Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p> </important> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "ModifyDBCluster": {
      "name": "ModifyDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBClusterMessage"
      },
      "output": {
        "shape": "ModifyDBClusterResult",
        "resultWrapper": "ModifyDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidDBSubnetGroupStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "DBClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBClusterAlreadyExistsFault"
        },
        {
          "shape": "DomainNotFoundFault"
        }
      ],
      "documentation": "<p>Modify a setting for an Amazon Aurora DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "ModifyDBClusterEndpoint": {
      "name": "ModifyDBClusterEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBClusterEndpointMessage"
      },
      "output": {
        "shape": "DBClusterEndpoint",
        "resultWrapper": "ModifyDBClusterEndpointResult"
      },
      "errors": [
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBClusterEndpointStateFault"
        },
        {
          "shape": "DBClusterEndpointNotFoundFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Modifies the properties of an endpoint in an Amazon Aurora DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "ModifyDBClusterParameterGroup": {
      "name": "ModifyDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBClusterParameterGroupMessage"
      },
      "output": {
        "shape": "DBClusterParameterGroupNameMessage",
        "resultWrapper": "ModifyDBClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBParameterGroupStateFault"
        }
      ],
      "documentation": "<p> Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request. </p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.</p> </note> <important> <p>After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href=\"https://console.aws.amazon.com/rds/\">Amazon RDS console</a> or the <code>DescribeDBClusterParameters</code> action to verify that your DB cluster parameter group has been created or modified.</p> <p>If the modified DB cluster parameter group is used by an Aurora Serverless cluster, Aurora applies the update immediately. The cluster restart might interrupt your workload. In that case, your application must reopen any connections and retry any transactions that were active when the parameter changes took effect.</p> </important> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "ModifyDBClusterSnapshotAttribute": {
      "name": "ModifyDBClusterSnapshotAttribute",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBClusterSnapshotAttributeMessage"
      },
      "output": {
        "shape": "ModifyDBClusterSnapshotAttributeResult",
        "resultWrapper": "ModifyDBClusterSnapshotAttributeResult"
      },
      "errors": [
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "SharedSnapshotQuotaExceededFault"
        }
      ],
      "documentation": "<p>Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot.</p> <p>To share a manual DB cluster snapshot with other AWS accounts, specify <code>restore</code> as the <code>AttributeName</code> and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value <code>all</code> to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts.</p> <note> <p>Don't add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.</p> </note> <p>If a manual DB cluster snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that parameter in this case.</p> <p>To view which AWS accounts have access to copy or restore a manual DB cluster snapshot, or whether a manual DB cluster snapshot is public or private, use the <a>DescribeDBClusterSnapshotAttributes</a> API action. The accounts are returned as values for the <code>restore</code> attribute.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "ModifyDBInstance": {
      "name": "ModifyDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBInstanceMessage"
      },
      "output": {
        "shape": "ModifyDBInstanceResult",
        "resultWrapper": "ModifyDBInstanceResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        },
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "DBUpgradeDependencyFailureFault"
        },
        {
          "shape": "StorageTypeNotSupportedFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "CertificateNotFoundFault"
        },
        {
          "shape": "DomainNotFoundFault"
        },
        {
          "shape": "BackupPolicyNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        }
      ],
      "documentation": "<p>Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. To learn what modifications you can make to your DB instance, call <code>DescribeValidDBInstanceModifications</code> before you call <code>ModifyDBInstance</code>. </p>"
    },
    "ModifyDBParameterGroup": {
      "name": "ModifyDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBParameterGroupMessage"
      },
      "output": {
        "shape": "DBParameterGroupNameMessage",
        "resultWrapper": "ModifyDBParameterGroupResult"
      },
      "errors": [
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBParameterGroupStateFault"
        }
      ],
      "documentation": "<p> Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request. </p> <note> <p>Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.</p> </note> <important> <p>After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href=\"https://console.aws.amazon.com/rds/\">Amazon RDS console</a> or the <i>DescribeDBParameters</i> command to verify that your DB parameter group has been created or modified.</p> </important>"
    },
    "ModifyDBProxy": {
      "name": "ModifyDBProxy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBProxyRequest"
      },
      "output": {
        "shape": "ModifyDBProxyResponse",
        "resultWrapper": "ModifyDBProxyResult"
      },
      "errors": [
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "DBProxyAlreadyExistsFault"
        },
        {
          "shape": "InvalidDBProxyStateFault"
        }
      ],
      "documentation": "<p>Changes the settings for an existing DB proxy.</p>"
    },
    "ModifyDBProxyTargetGroup": {
      "name": "ModifyDBProxyTargetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBProxyTargetGroupRequest"
      },
      "output": {
        "shape": "ModifyDBProxyTargetGroupResponse",
        "resultWrapper": "ModifyDBProxyTargetGroupResult"
      },
      "errors": [
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "DBProxyTargetGroupNotFoundFault"
        },
        {
          "shape": "InvalidDBProxyStateFault"
        }
      ],
      "documentation": "<p>Modifies the properties of a <code>DBProxyTargetGroup</code>.</p>"
    },
    "ModifyDBSnapshot": {
      "name": "ModifyDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBSnapshotMessage"
      },
      "output": {
        "shape": "ModifyDBSnapshotResult",
        "resultWrapper": "ModifyDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotNotFoundFault"
        }
      ],
      "documentation": "<p>Updates a manual DB snapshot with a new engine version. The snapshot can be encrypted or unencrypted, but not shared or public. </p> <p>Amazon RDS supports upgrading DB snapshots for MySQL, Oracle, and PostgreSQL. </p>"
    },
    "ModifyDBSnapshotAttribute": {
      "name": "ModifyDBSnapshotAttribute",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBSnapshotAttributeMessage"
      },
      "output": {
        "shape": "ModifyDBSnapshotAttributeResult",
        "resultWrapper": "ModifyDBSnapshotAttributeResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "SharedSnapshotQuotaExceededFault"
        }
      ],
      "documentation": "<p>Adds an attribute and values to, or removes an attribute and values from, a manual DB snapshot.</p> <p>To share a manual DB snapshot with other AWS accounts, specify <code>restore</code> as the <code>AttributeName</code> and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB snapshot. Uses the value <code>all</code> to make the manual DB snapshot public, which means it can be copied or restored by all AWS accounts.</p> <note> <p>Don't add the <code>all</code> value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts.</p> </note> <p>If the manual DB snapshot is encrypted, it can be shared, but only by specifying a list of authorized AWS account IDs for the <code>ValuesToAdd</code> parameter. You can't use <code>all</code> as a value for that parameter in this case.</p> <p>To view which AWS accounts have access to copy or restore a manual DB snapshot, or whether a manual DB snapshot public or private, use the <a>DescribeDBSnapshotAttributes</a> API action. The accounts are returned as values for the <code>restore</code> attribute.</p>"
    },
    "ModifyDBSubnetGroup": {
      "name": "ModifyDBSubnetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyDBSubnetGroupMessage"
      },
      "output": {
        "shape": "ModifyDBSubnetGroupResult",
        "resultWrapper": "ModifyDBSubnetGroupResult"
      },
      "errors": [
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetQuotaExceededFault"
        },
        {
          "shape": "SubnetAlreadyInUse"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        }
      ],
      "documentation": "<p>Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.</p>"
    },
    "ModifyEventSubscription": {
      "name": "ModifyEventSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyEventSubscriptionMessage"
      },
      "output": {
        "shape": "ModifyEventSubscriptionResult",
        "resultWrapper": "ModifyEventSubscriptionResult"
      },
      "errors": [
        {
          "shape": "EventSubscriptionQuotaExceededFault"
        },
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "SNSInvalidTopicFault"
        },
        {
          "shape": "SNSNoAuthorizationFault"
        },
        {
          "shape": "SNSTopicArnNotFoundFault"
        },
        {
          "shape": "SubscriptionCategoryNotFoundFault"
        }
      ],
      "documentation": "<p>Modifies an existing RDS event notification subscription. You can't modify the source identifiers using this call. To change source identifiers for a subscription, use the <code>AddSourceIdentifierToSubscription</code> and <code>RemoveSourceIdentifierFromSubscription</code> calls.</p> <p>You can see a list of the event categories for a given source type (<code>SourceType</code>) in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html\">Events</a> in the <i>Amazon RDS User Guide</i> or by using the <code>DescribeEventCategories</code> operation.</p>"
    },
    "ModifyGlobalCluster": {
      "name": "ModifyGlobalCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyGlobalClusterMessage"
      },
      "output": {
        "shape": "ModifyGlobalClusterResult",
        "resultWrapper": "ModifyGlobalClusterResult"
      },
      "errors": [
        {
          "shape": "GlobalClusterNotFoundFault"
        },
        {
          "shape": "InvalidGlobalClusterStateFault"
        }
      ],
      "documentation": "<p> Modify a setting for an Amazon Aurora global cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "ModifyOptionGroup": {
      "name": "ModifyOptionGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyOptionGroupMessage"
      },
      "output": {
        "shape": "ModifyOptionGroupResult",
        "resultWrapper": "ModifyOptionGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidOptionGroupStateFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Modifies an existing option group.</p>"
    },
    "PromoteReadReplica": {
      "name": "PromoteReadReplica",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PromoteReadReplicaMessage"
      },
      "output": {
        "shape": "PromoteReadReplicaResult",
        "resultWrapper": "PromoteReadReplicaResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ],
      "documentation": "<p>Promotes a read replica DB instance to a standalone DB instance.</p> <note> <ul> <li> <p>Backup duration is a function of the amount of changes to the database since the previous backup. If you plan to promote a read replica to a standalone instance, we recommend that you enable backups and complete at least one backup prior to promotion. In addition, a read replica cannot be promoted to a standalone instance when it is in the <code>backing-up</code> status. If you have enabled backups on your read replica, configure the automated backup window so that daily backups do not interfere with read replica promotion.</p> </li> <li> <p>This command doesn't apply to Aurora MySQL and Aurora PostgreSQL.</p> </li> </ul> </note>"
    },
    "PromoteReadReplicaDBCluster": {
      "name": "PromoteReadReplicaDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PromoteReadReplicaDBClusterMessage"
      },
      "output": {
        "shape": "PromoteReadReplicaDBClusterResult",
        "resultWrapper": "PromoteReadReplicaDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        }
      ],
      "documentation": "<p>Promotes a read replica DB cluster to a standalone DB cluster.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "PurchaseReservedDBInstancesOffering": {
      "name": "PurchaseReservedDBInstancesOffering",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PurchaseReservedDBInstancesOfferingMessage"
      },
      "output": {
        "shape": "PurchaseReservedDBInstancesOfferingResult",
        "resultWrapper": "PurchaseReservedDBInstancesOfferingResult"
      },
      "errors": [
        {
          "shape": "ReservedDBInstancesOfferingNotFoundFault"
        },
        {
          "shape": "ReservedDBInstanceAlreadyExistsFault"
        },
        {
          "shape": "ReservedDBInstanceQuotaExceededFault"
        }
      ],
      "documentation": "<p>Purchases a reserved DB instance offering.</p>"
    },
    "RebootDBInstance": {
      "name": "RebootDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebootDBInstanceMessage"
      },
      "output": {
        "shape": "RebootDBInstanceResult",
        "resultWrapper": "RebootDBInstanceResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ],
      "documentation": "<p>You might need to reboot your DB instance, usually for maintenance reasons. For example, if you make certain modifications, or if you change the DB parameter group associated with the DB instance, you must reboot the instance for the changes to take effect. </p> <p>Rebooting a DB instance restarts the database engine service. Rebooting a DB instance results in a momentary outage, during which the DB instance status is set to rebooting. </p> <p>For more information about rebooting, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html\">Rebooting a DB Instance</a> in the <i>Amazon RDS User Guide.</i> </p>"
    },
    "RegisterDBProxyTargets": {
      "name": "RegisterDBProxyTargets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterDBProxyTargetsRequest"
      },
      "output": {
        "shape": "RegisterDBProxyTargetsResponse",
        "resultWrapper": "RegisterDBProxyTargetsResult"
      },
      "errors": [
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "DBProxyTargetGroupNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBProxyTargetAlreadyRegisteredFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBProxyStateFault"
        }
      ],
      "documentation": "<p>Associate one or more <code>DBProxyTarget</code> data structures with a <code>DBProxyTargetGroup</code>.</p>"
    },
    "RemoveFromGlobalCluster": {
      "name": "RemoveFromGlobalCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveFromGlobalClusterMessage"
      },
      "output": {
        "shape": "RemoveFromGlobalClusterResult",
        "resultWrapper": "RemoveFromGlobalClusterResult"
      },
      "errors": [
        {
          "shape": "GlobalClusterNotFoundFault"
        },
        {
          "shape": "InvalidGlobalClusterStateFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        }
      ],
      "documentation": "<p> Detaches an Aurora secondary cluster from an Aurora global database cluster. The cluster becomes a standalone cluster with read-write capability instead of being read-only and receiving data from a primary cluster in a different region. </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "RemoveRoleFromDBCluster": {
      "name": "RemoveRoleFromDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveRoleFromDBClusterMessage"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBClusterRoleNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        }
      ],
      "documentation": "<p>Disassociates an AWS Identity and Access Management (IAM) role from an Amazon Aurora DB cluster. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html\">Authorizing Amazon Aurora MySQL to Access Other AWS Services on Your Behalf </a> in the <i>Amazon Aurora User Guide</i>.</p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "RemoveRoleFromDBInstance": {
      "name": "RemoveRoleFromDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveRoleFromDBInstanceMessage"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBInstanceRoleNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Disassociates an AWS Identity and Access Management (IAM) role from a DB instance.</p>"
    },
    "RemoveSourceIdentifierFromSubscription": {
      "name": "RemoveSourceIdentifierFromSubscription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveSourceIdentifierFromSubscriptionMessage"
      },
      "output": {
        "shape": "RemoveSourceIdentifierFromSubscriptionResult",
        "resultWrapper": "RemoveSourceIdentifierFromSubscriptionResult"
      },
      "errors": [
        {
          "shape": "SubscriptionNotFoundFault"
        },
        {
          "shape": "SourceNotFoundFault"
        }
      ],
      "documentation": "<p>Removes a source identifier from an existing RDS event notification subscription.</p>"
    },
    "RemoveTagsFromResource": {
      "name": "RemoveTagsFromResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveTagsFromResourceMessage"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBProxyNotFoundFault"
        },
        {
          "shape": "DBProxyTargetGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Removes metadata tags from an Amazon RDS resource.</p> <p>For an overview on tagging an Amazon RDS resource, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html\">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i> </p>"
    },
    "ResetDBClusterParameterGroup": {
      "name": "ResetDBClusterParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetDBClusterParameterGroupMessage"
      },
      "output": {
        "shape": "DBClusterParameterGroupNameMessage",
        "resultWrapper": "ResetDBClusterParameterGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidDBParameterGroupStateFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p> Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. To reset the entire DB cluster parameter group, specify the <code>DBClusterParameterGroupName</code> and <code>ResetAllParameters</code> parameters. </p> <p> When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to <code>pending-reboot</code> to take effect on the next DB instance restart or <code>RebootDBInstance</code> request. You must call <code>RebootDBInstance</code> for every DB instance in your DB cluster that you want the updated static parameter to apply to.</p> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "ResetDBParameterGroup": {
      "name": "ResetDBParameterGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetDBParameterGroupMessage"
      },
      "output": {
        "shape": "DBParameterGroupNameMessage",
        "resultWrapper": "ResetDBParameterGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidDBParameterGroupStateFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Modifies the parameters of a DB parameter group to the engine/system default value. To reset specific parameters, provide a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to <code>pending-reboot</code> to take effect on the next DB instance restart or <code>RebootDBInstance</code> request. </p>"
    },
    "RestoreDBClusterFromS3": {
      "name": "RestoreDBClusterFromS3",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBClusterFromS3Message"
      },
      "output": {
        "shape": "RestoreDBClusterFromS3Result",
        "resultWrapper": "RestoreDBClusterFromS3Result"
      },
      "errors": [
        {
          "shape": "DBClusterAlreadyExistsFault"
        },
        {
          "shape": "DBClusterQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBSubnetGroupStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidS3BucketFault"
        },
        {
          "shape": "DBClusterParameterGroupNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DomainNotFoundFault"
        },
        {
          "shape": "InsufficientStorageClusterCapacityFault"
        }
      ],
      "documentation": "<p>Creates an Amazon Aurora DB cluster from MySQL data stored in an Amazon S3 bucket. Amazon RDS must be authorized to access the Amazon S3 bucket and the data must be created using the Percona XtraBackup utility as described in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Migrating.ExtMySQL.html#AuroraMySQL.Migrating.ExtMySQL.S3\"> Migrating Data from MySQL by Using an Amazon S3 Bucket</a> in the <i>Amazon Aurora User Guide</i>.</p> <note> <p>This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the <code>CreateDBInstance</code> action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in <code>DBClusterIdentifier</code>. You can create DB instances only after the <code>RestoreDBClusterFromS3</code> action has completed and the DB cluster is available.</p> </note> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters. The source DB engine must be MySQL.</p> </note>"
    },
    "RestoreDBClusterFromSnapshot": {
      "name": "RestoreDBClusterFromSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBClusterFromSnapshotMessage"
      },
      "output": {
        "shape": "RestoreDBClusterFromSnapshotResult",
        "resultWrapper": "RestoreDBClusterFromSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBClusterAlreadyExistsFault"
        },
        {
          "shape": "DBClusterQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "InsufficientDBClusterCapacityFault"
        },
        {
          "shape": "InsufficientStorageClusterCapacityFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidRestoreFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "DomainNotFoundFault"
        },
        {
          "shape": "DBClusterParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Creates a new DB cluster from a DB snapshot or DB cluster snapshot. This action only applies to Aurora DB clusters.</p> <p>The target DB cluster is created from the source snapshot with a default configuration. If you don't specify a security group, the new DB cluster is associated with the default security group.</p> <note> <p>This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the <code>CreateDBInstance</code> action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in <code>DBClusterIdentifier</code>. You can create DB instances only after the <code>RestoreDBClusterFromSnapshot</code> action has completed and the DB cluster is available.</p> </note> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "RestoreDBClusterToPointInTime": {
      "name": "RestoreDBClusterToPointInTime",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBClusterToPointInTimeMessage"
      },
      "output": {
        "shape": "RestoreDBClusterToPointInTimeResult",
        "resultWrapper": "RestoreDBClusterToPointInTimeResult"
      },
      "errors": [
        {
          "shape": "DBClusterAlreadyExistsFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBClusterQuotaExceededFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "InsufficientDBClusterCapacityFault"
        },
        {
          "shape": "InsufficientStorageClusterCapacityFault"
        },
        {
          "shape": "InvalidDBClusterSnapshotStateFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "InvalidRestoreFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DomainNotFoundFault"
        },
        {
          "shape": "DBClusterParameterGroupNotFoundFault"
        }
      ],
      "documentation": "<p>Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before <code>LatestRestorableTime</code> for up to <code>BackupRetentionPeriod</code> days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group. </p> <note> <p>This action only restores the DB cluster, not the DB instances for that DB cluster. You must invoke the <code>CreateDBInstance</code> action to create DB instances for the restored DB cluster, specifying the identifier of the restored DB cluster in <code>DBClusterIdentifier</code>. You can create DB instances only after the <code>RestoreDBClusterToPointInTime</code> action has completed and the DB cluster is available.</p> </note> <p>For more information on Amazon Aurora, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html\"> What Is Amazon Aurora?</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "RestoreDBInstanceFromDBSnapshot": {
      "name": "RestoreDBInstanceFromDBSnapshot",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBInstanceFromDBSnapshotMessage"
      },
      "output": {
        "shape": "RestoreDBInstanceFromDBSnapshotResult",
        "resultWrapper": "RestoreDBInstanceFromDBSnapshotResult"
      },
      "errors": [
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "InstanceQuotaExceededFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "InvalidDBSnapshotStateFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidRestoreFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "StorageTypeNotSupportedFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "DomainNotFoundFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "BackupPolicyNotFoundFault"
        }
      ],
      "documentation": "<p>Creates a new DB instance from a DB snapshot. The target database is created from the source database restore point with the most of original configuration with the default security group and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored AZ deployment and not a single-AZ deployment.</p> <p>If your intent is to replace your original DB instance with the new, restored DB instance, then rename your original DB instance before you call the RestoreDBInstanceFromDBSnapshot action. RDS doesn't allow two DB instances with the same name. Once you have renamed your original DB instance with a different identifier, then you can pass the original name of the DB instance as the DBInstanceIdentifier in the call to the RestoreDBInstanceFromDBSnapshot action. The result is that you will replace the original DB instance with the DB instance created from the snapshot.</p> <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code> must be the ARN of the shared DB snapshot.</p> <note> <p>This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora, use <code>RestoreDBClusterFromSnapshot</code>.</p> </note>"
    },
    "RestoreDBInstanceFromS3": {
      "name": "RestoreDBInstanceFromS3",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBInstanceFromS3Message"
      },
      "output": {
        "shape": "RestoreDBInstanceFromS3Result",
        "resultWrapper": "RestoreDBInstanceFromS3Result"
      },
      "errors": [
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "InstanceQuotaExceededFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidS3BucketFault"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "StorageTypeNotSupportedFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "BackupPolicyNotFoundFault"
        }
      ],
      "documentation": "<p>Amazon Relational Database Service (Amazon RDS) supports importing MySQL databases by using backup files. You can create a backup of your on-premises database, store it on Amazon Simple Storage Service (Amazon S3), and then restore the backup file onto a new Amazon RDS DB instance running MySQL. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MySQL.Procedural.Importing.html\">Importing Data into an Amazon RDS MySQL DB Instance</a> in the <i>Amazon RDS User Guide.</i> </p>"
    },
    "RestoreDBInstanceToPointInTime": {
      "name": "RestoreDBInstanceToPointInTime",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreDBInstanceToPointInTimeMessage"
      },
      "output": {
        "shape": "RestoreDBInstanceToPointInTimeResult",
        "resultWrapper": "RestoreDBInstanceToPointInTimeResult"
      },
      "errors": [
        {
          "shape": "DBInstanceAlreadyExistsFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InstanceQuotaExceededFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "PointInTimeRestoreNotEnabledFault"
        },
        {
          "shape": "StorageQuotaExceededFault"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "InvalidRestoreFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "ProvisionedIopsNotAvailableInAZFault"
        },
        {
          "shape": "OptionGroupNotFoundFault"
        },
        {
          "shape": "StorageTypeNotSupportedFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "DomainNotFoundFault"
        },
        {
          "shape": "BackupPolicyNotFoundFault"
        },
        {
          "shape": "DBParameterGroupNotFoundFault"
        },
        {
          "shape": "DBInstanceAutomatedBackupNotFoundFault"
        }
      ],
      "documentation": "<p>Restores a DB instance to an arbitrary point in time. You can restore to any point in time before the time identified by the LatestRestorableTime property. You can restore to a point up to the number of days specified by the BackupRetentionPeriod property.</p> <p>The target database is created with most of the original configuration, but in a system-selected Availability Zone, with the default security group, the default subnet group, and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored deployment and not a single-AZ deployment.</p> <note> <p>This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora, use <code>RestoreDBClusterToPointInTime</code>.</p> </note>"
    },
    "RevokeDBSecurityGroupIngress": {
      "name": "RevokeDBSecurityGroupIngress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RevokeDBSecurityGroupIngressMessage"
      },
      "output": {
        "shape": "RevokeDBSecurityGroupIngressResult",
        "resultWrapper": "RevokeDBSecurityGroupIngressResult"
      },
      "errors": [
        {
          "shape": "DBSecurityGroupNotFoundFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "InvalidDBSecurityGroupStateFault"
        }
      ],
      "documentation": "<p>Revokes ingress from a DBSecurityGroup for previously authorized IP ranges or EC2 or VPC Security Groups. Required parameters for this API are one of CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId).</p>"
    },
    "StartActivityStream": {
      "name": "StartActivityStream",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartActivityStreamRequest"
      },
      "output": {
        "shape": "StartActivityStreamResponse",
        "resultWrapper": "StartActivityStreamResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p>Starts a database activity stream to monitor activity on the database. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html\">Database Activity Streams</a> in the <i>Amazon Aurora User Guide</i>.</p>"
    },
    "StartDBCluster": {
      "name": "StartDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartDBClusterMessage"
      },
      "output": {
        "shape": "StartDBClusterResult",
        "resultWrapper": "StartDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p>Starts an Amazon Aurora DB cluster that was stopped using the AWS console, the stop-db-cluster AWS CLI command, or the StopDBCluster action.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html\"> Stopping and Starting an Aurora Cluster</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "StartDBInstance": {
      "name": "StartDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartDBInstanceMessage"
      },
      "output": {
        "shape": "StartDBInstanceResult",
        "resultWrapper": "StartDBInstanceResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "InsufficientDBInstanceCapacityFault"
        },
        {
          "shape": "DBSubnetGroupNotFoundFault"
        },
        {
          "shape": "DBSubnetGroupDoesNotCoverEnoughAZs"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidSubnet"
        },
        {
          "shape": "InvalidVPCNetworkStateFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "AuthorizationNotFoundFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        }
      ],
      "documentation": "<p> Starts an Amazon RDS DB instance that was stopped using the AWS console, the stop-db-instance AWS CLI command, or the StopDBInstance action. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StartInstance.html\"> Starting an Amazon RDS DB instance That Was Previously Stopped</a> in the <i>Amazon RDS User Guide.</i> </p> <note> <p> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora DB clusters, use <code>StartDBCluster</code> instead. </p> </note>"
    },
    "StartExportTask": {
      "name": "StartExportTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartExportTaskMessage"
      },
      "output": {
        "shape": "ExportTask",
        "resultWrapper": "StartExportTaskResult"
      },
      "errors": [
        {
          "shape": "DBSnapshotNotFoundFault"
        },
        {
          "shape": "DBClusterSnapshotNotFoundFault"
        },
        {
          "shape": "ExportTaskAlreadyExistsFault"
        },
        {
          "shape": "InvalidS3BucketFault"
        },
        {
          "shape": "IamRoleNotFoundFault"
        },
        {
          "shape": "IamRoleMissingPermissionsFault"
        },
        {
          "shape": "InvalidExportOnlyFault"
        },
        {
          "shape": "KMSKeyNotAccessibleFault"
        },
        {
          "shape": "InvalidExportSourceStateFault"
        }
      ],
      "documentation": "<p>Starts an export of a snapshot to Amazon S3. The provided IAM role must have access to the S3 bucket. </p>"
    },
    "StopActivityStream": {
      "name": "StopActivityStream",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopActivityStreamRequest"
      },
      "output": {
        "shape": "StopActivityStreamResponse",
        "resultWrapper": "StopActivityStreamResult"
      },
      "errors": [
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "ResourceNotFoundFault"
        },
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "DBInstanceNotFoundFault"
        }
      ],
      "documentation": "<p>Stops a database activity stream that was started using the AWS console, the <code>start-activity-stream</code> AWS CLI command, or the <code>StartActivityStream</code> action.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html\">Database Activity Streams</a> in the <i>Amazon Aurora User Guide</i>.</p>"
    },
    "StopDBCluster": {
      "name": "StopDBCluster",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopDBClusterMessage"
      },
      "output": {
        "shape": "StopDBClusterResult",
        "resultWrapper": "StopDBClusterResult"
      },
      "errors": [
        {
          "shape": "DBClusterNotFoundFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        }
      ],
      "documentation": "<p> Stops an Amazon Aurora DB cluster. When you stop a DB cluster, Aurora retains the DB cluster's metadata, including its endpoints and DB parameter groups. Aurora also retains the transaction logs so you can do a point-in-time restore if necessary. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html\"> Stopping and Starting an Aurora Cluster</a> in the <i>Amazon Aurora User Guide.</i> </p> <note> <p>This action only applies to Aurora DB clusters.</p> </note>"
    },
    "StopDBInstance": {
      "name": "StopDBInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopDBInstanceMessage"
      },
      "output": {
        "shape": "StopDBInstanceResult",
        "resultWrapper": "StopDBInstanceResult"
      },
      "errors": [
        {
          "shape": "DBInstanceNotFoundFault"
        },
        {
          "shape": "InvalidDBInstanceStateFault"
        },
        {
          "shape": "DBSnapshotAlreadyExistsFault"
        },
        {
          "shape": "SnapshotQuotaExceededFault"
        },
        {
          "shape": "InvalidDBClusterStateFault"
        }
      ],
      "documentation": "<p> Stops an Amazon RDS DB instance. When you stop a DB instance, Amazon RDS retains the DB instance's metadata, including its endpoint, DB parameter group, and option group membership. Amazon RDS also retains the transaction logs so you can do a point-in-time restore if necessary. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_StopInstance.html\"> Stopping an Amazon RDS DB Instance Temporarily</a> in the <i>Amazon RDS User Guide.</i> </p> <note> <p> This command doesn't apply to Aurora MySQL and Aurora PostgreSQL. For Aurora clusters, use <code>StopDBCluster</code> instead. </p> </note>"
    }
  },
  "shapes": {
    "AccountAttributesMessage": {
      "type": "structure",
      "members": {
        "AccountQuotas": {
          "shape": "AccountQuotaList",
          "documentation": "<p>A list of <code>AccountQuota</code> objects. Within this list, each quota has a name, a count of usage toward the quota maximum, and a maximum value for the quota.</p>"
        }
      },
      "documentation": "<p>Data returned by the <b>DescribeAccountAttributes</b> action.</p>"
    },
    "AccountQuota": {
      "type": "structure",
      "members": {
        "AccountQuotaName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon RDS quota for this AWS account.</p>"
        },
        "Used": {
          "shape": "Long",
          "documentation": "<p>The amount currently used toward the quota maximum.</p>"
        },
        "Max": {
          "shape": "Long",
          "documentation": "<p>The maximum allowed value for the quota.</p>"
        }
      },
      "documentation": "<p>Describes a quota for an AWS account.</p> <p>The following are account quotas:</p> <ul> <li> <p> <code>AllocatedStorage</code> - The total allocated storage per account, in GiB. The used value is the total allocated storage in the account, in GiB.</p> </li> <li> <p> <code>AuthorizationsPerDBSecurityGroup</code> - The number of ingress rules per DB security group. The used value is the highest number of ingress rules in a DB security group in the account. Other DB security groups in the account might have a lower number of ingress rules.</p> </li> <li> <p> <code>CustomEndpointsPerDBCluster</code> - The number of custom endpoints per DB cluster. The used value is the highest number of custom endpoints in a DB clusters in the account. Other DB clusters in the account might have a lower number of custom endpoints.</p> </li> <li> <p> <code>DBClusterParameterGroups</code> - The number of DB cluster parameter groups per account, excluding default parameter groups. The used value is the count of nondefault DB cluster parameter groups in the account.</p> </li> <li> <p> <code>DBClusterRoles</code> - The number of associated AWS Identity and Access Management (IAM) roles per DB cluster. The used value is the highest number of associated IAM roles for a DB cluster in the account. Other DB clusters in the account might have a lower number of associated IAM roles.</p> </li> <li> <p> <code>DBClusters</code> - The number of DB clusters per account. The used value is the count of DB clusters in the account.</p> </li> <li> <p> <code>DBInstanceRoles</code> - The number of associated IAM roles per DB instance. The used value is the highest number of associated IAM roles for a DB instance in the account. Other DB instances in the account might have a lower number of associated IAM roles.</p> </li> <li> <p> <code>DBInstances</code> - The number of DB instances per account. The used value is the count of the DB instances in the account.</p> <p>Amazon RDS DB instances, Amazon Aurora DB instances, Amazon Neptune instances, and Amazon DocumentDB instances apply to this quota.</p> </li> <li> <p> <code>DBParameterGroups</code> - The number of DB parameter groups per account, excluding default parameter groups. The used value is the count of nondefault DB parameter groups in the account.</p> </li> <li> <p> <code>DBSecurityGroups</code> - The number of DB security groups (not VPC security groups) per account, excluding the default security group. The used value is the count of nondefault DB security groups in the account.</p> </li> <li> <p> <code>DBSubnetGroups</code> - The number of DB subnet groups per account. The used value is the count of the DB subnet groups in the account.</p> </li> <li> <p> <code>EventSubscriptions</code> - The number of event subscriptions per account. The used value is the count of the event subscriptions in the account.</p> </li> <li> <p> <code>ManualClusterSnapshots</code> - The number of manual DB cluster snapshots per account. The used value is the count of the manual DB cluster snapshots in the account.</p> </li> <li> <p> <code>ManualSnapshots</code> - The number of manual DB instance snapshots per account. The used value is the count of the manual DB instance snapshots in the account.</p> </li> <li> <p> <code>OptionGroups</code> - The number of DB option groups per account, excluding default option groups. The used value is the count of nondefault DB option groups in the account.</p> </li> <li> <p> <code>ReadReplicasPerMaster</code> - The number of read replicas per DB instance. The used value is the highest number of read replicas for a DB instance in the account. Other DB instances in the account might have a lower number of read replicas.</p> </li> <li> <p> <code>ReservedDBInstances</code> - The number of reserved DB instances per account. The used value is the count of the active reserved DB instances in the account.</p> </li> <li> <p> <code>SubnetsPerDBSubnetGroup</code> - The number of subnets per DB subnet group. The used value is highest number of subnets for a DB subnet group in the account. Other DB subnet groups in the account might have a lower number of subnets.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html\">Quotas for Amazon RDS</a> in the <i>Amazon RDS User Guide</i> and <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Limits.html\">Quotas for Amazon Aurora</a> in the <i>Amazon Aurora User Guide</i>.</p>",
      "wrapper": true
    },
    "AccountQuotaList": {
      "type": "list",
      "member": {
        "shape": "AccountQuota",
        "locationName": "AccountQuota"
      }
    },
    "ActivityStreamMode": {
      "type": "string",
      "enum": [
        "sync",
        "async"
      ]
    },
    "ActivityStreamStatus": {
      "type": "string",
      "enum": [
        "stopped",
        "starting",
        "started",
        "stopping"
      ]
    },
    "AddRoleToDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "RoleArn"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster to associate the IAM role with.</p>"
        },
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role to associate with the Aurora DB cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>"
        },
        "FeatureName": {
          "shape": "String",
          "documentation": "<p>The name of the feature for the DB cluster that the IAM role is to be associated with. For the list of supported feature names, see <a>DBEngineVersion</a>.</p>"
        }
      }
    },
    "AddRoleToDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "RoleArn",
        "FeatureName"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the DB instance to associate the IAM role with.</p>"
        },
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role to associate with the DB instance, for example <code>arn:aws:iam::123456789012:role/AccessRole</code>. </p>"
        },
        "FeatureName": {
          "shape": "String",
          "documentation": "<p>The name of the feature for the DB instance that the IAM role is to be associated with. For the list of supported feature names, see <a>DBEngineVersion</a>. </p>"
        }
      }
    },
    "AddSourceIdentifierToSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName",
        "SourceIdentifier"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the RDS event notification subscription you want to add a source identifier to.</p>"
        },
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the event source to be added.</p> <p>Constraints:</p> <ul> <li> <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "AddSourceIdentifierToSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "AddTagsToResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceName",
        "Tags"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon RDS resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the Amazon RDS resource.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ApplyMethod": {
      "type": "string",
      "enum": [
        "immediate",
        "pending-reboot"
      ]
    },
    "ApplyPendingMaintenanceActionMessage": {
      "type": "structure",
      "required": [
        "ResourceIdentifier",
        "ApplyAction",
        "OptInType"
      ],
      "members": {
        "ResourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The RDS Amazon Resource Name (ARN) of the resource that the pending maintenance action applies to. For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\"> Constructing an RDS Amazon Resource Name (ARN)</a>.</p>"
        },
        "ApplyAction": {
          "shape": "String",
          "documentation": "<p>The pending maintenance action to apply to this resource.</p> <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>, <code>hardware-maintenance</code>, <code>ca-certificate-rotation</code> </p>"
        },
        "OptInType": {
          "shape": "String",
          "documentation": "<p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type <code>immediate</code> can't be undone.</p> <p>Valid values:</p> <ul> <li> <p> <code>immediate</code> - Apply the maintenance action immediately.</p> </li> <li> <p> <code>next-maintenance</code> - Apply the maintenance action during the next maintenance window for the resource.</p> </li> <li> <p> <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in requests.</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "ApplyPendingMaintenanceActionResult": {
      "type": "structure",
      "members": {
        "ResourcePendingMaintenanceActions": {
          "shape": "ResourcePendingMaintenanceActions"
        }
      }
    },
    "AttributeValueList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "AttributeValue"
      }
    },
    "AuthScheme": {
      "type": "string",
      "enum": [
        "SECRETS"
      ]
    },
    "AuthorizeDBSecurityGroupIngressMessage": {
      "type": "structure",
      "required": [
        "DBSecurityGroupName"
      ],
      "members": {
        "DBSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB security group to add authorization to.</p>"
        },
        "CIDRIP": {
          "shape": "String",
          "documentation": "<p>The IP range to authorize.</p>"
        },
        "EC2SecurityGroupName": {
          "shape": "String",
          "documentation": "<p> Name of the EC2 security group to authorize. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>"
        },
        "EC2SecurityGroupId": {
          "shape": "String",
          "documentation": "<p> Id of the EC2 security group to authorize. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String",
          "documentation": "<p> AWS account number of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS access key ID isn't an acceptable value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "AuthorizeDBSecurityGroupIngressResult": {
      "type": "structure",
      "members": {
        "DBSecurityGroup": {
          "shape": "DBSecurityGroup"
        }
      }
    },
    "AvailabilityZone": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the Availability Zone.</p>"
        }
      },
      "documentation": "<p>Contains Availability Zone information.</p> <p> This data type is used as an element in the <code>OrderableDBInstanceOption</code> data type.</p>",
      "wrapper": true
    },
    "AvailabilityZoneList": {
      "type": "list",
      "member": {
        "shape": "AvailabilityZone",
        "locationName": "AvailabilityZone"
      }
    },
    "AvailabilityZones": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "AvailabilityZone"
      }
    },
    "AvailableProcessorFeature": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>"
        },
        "DefaultValue": {
          "shape": "String",
          "documentation": "<p>The default value for the processor feature of the DB instance class.</p>"
        },
        "AllowedValues": {
          "shape": "String",
          "documentation": "<p>The allowed values for the processor feature of the DB instance class.</p>"
        }
      },
      "documentation": "<p>Contains the available processor feature information for the DB instance class of a DB instance.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor\">Configuring the Processor of the DB Instance Class</a> in the <i>Amazon RDS User Guide. </i> </p>"
    },
    "AvailableProcessorFeatureList": {
      "type": "list",
      "member": {
        "shape": "AvailableProcessorFeature",
        "locationName": "AvailableProcessorFeature"
      }
    },
    "BacktrackDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "BacktrackTo"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier of the DB cluster to be backtracked. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>"
        },
        "BacktrackTo": {
          "shape": "TStamp",
          "documentation": "<p>The timestamp of the time to backtrack the DB cluster to, specified in ISO 8601 format. For more information about ISO 8601, see the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a> </p> <note> <p>If the specified time isn't a consistent time for the DB cluster, Aurora automatically chooses the nearest possible consistent time for the DB cluster.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must contain a valid ISO 8601 timestamp.</p> </li> <li> <p>Can't contain a timestamp set in the future.</p> </li> </ul> <p>Example: <code>2017-07-08T18:00Z</code> </p>"
        },
        "Force": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to force the DB cluster to backtrack when binary logging is enabled. Otherwise, an error occurs when binary logging is enabled.</p>"
        },
        "UseEarliestTimeOnPointInTimeUnavailable": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to backtrack the DB cluster to the earliest possible backtrack time when <i>BacktrackTo</i> is set to a timestamp earlier than the earliest backtrack time. When this parameter is disabled and <i>BacktrackTo</i> is set to a timestamp earlier than the earliest backtrack time, an error occurs.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BooleanOptional": {
      "type": "boolean"
    },
    "CancelExportTaskMessage": {
      "type": "structure",
      "required": [
        "ExportTaskIdentifier"
      ],
      "members": {
        "ExportTaskIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the snapshot export task to cancel.</p>"
        }
      }
    },
    "Certificate": {
      "type": "structure",
      "members": {
        "CertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The unique key that identifies a certificate.</p>"
        },
        "CertificateType": {
          "shape": "String",
          "documentation": "<p>The type of the certificate.</p>"
        },
        "Thumbprint": {
          "shape": "String",
          "documentation": "<p>The thumbprint of the certificate.</p>"
        },
        "ValidFrom": {
          "shape": "TStamp",
          "documentation": "<p>The starting date from which the certificate is valid.</p>"
        },
        "ValidTill": {
          "shape": "TStamp",
          "documentation": "<p>The final date that the certificate continues to be valid.</p>"
        },
        "CertificateArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the certificate.</p>"
        },
        "CustomerOverride": {
          "shape": "BooleanOptional",
          "documentation": "<p>Whether there is an override for the default certificate identifier.</p>"
        },
        "CustomerOverrideValidTill": {
          "shape": "TStamp",
          "documentation": "<p>If there is an override for the default certificate identifier, when the override expires.</p>"
        }
      },
      "documentation": "<p>A CA certificate for an AWS account.</p>",
      "wrapper": true
    },
    "CertificateList": {
      "type": "list",
      "member": {
        "shape": "Certificate",
        "locationName": "Certificate"
      }
    },
    "CertificateMessage": {
      "type": "structure",
      "members": {
        "Certificates": {
          "shape": "CertificateList",
          "documentation": "<p>The list of <code>Certificate</code> objects for the AWS account.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeCertificates</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        }
      },
      "documentation": "<p>Data returned by the <b>DescribeCertificates</b> action.</p>"
    },
    "CharacterSet": {
      "type": "structure",
      "members": {
        "CharacterSetName": {
          "shape": "String",
          "documentation": "<p>The name of the character set.</p>"
        },
        "CharacterSetDescription": {
          "shape": "String",
          "documentation": "<p>The description of the character set.</p>"
        }
      },
      "documentation": "<p> This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>. </p>"
    },
    "CloudwatchLogsExportConfiguration": {
      "type": "structure",
      "members": {
        "EnableLogTypes": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of log types to enable.</p>"
        },
        "DisableLogTypes": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of log types to disable.</p>"
        }
      },
      "documentation": "<p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance or DB cluster.</p> <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which logs will be exported (or not exported) to CloudWatch Logs. The values within these arrays depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon RDS User Guide</i>.</p>"
    },
    "ConnectionPoolConfiguration": {
      "type": "structure",
      "members": {
        "MaxConnectionsPercent": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.</p> <p>Default: 100</p> <p>Constraints: between 1 and 100</p>"
        },
        "MaxIdleConnectionsPercent": {
          "shape": "IntegerOptional",
          "documentation": "<p> Controls how actively the proxy closes idle database connections in the connection pool. A high value enables the proxy to leave a high percentage of idle connections open. A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group. </p> <p>Default: 50</p> <p>Constraints: between 0 and <code>MaxConnectionsPercent</code> </p>"
        },
        "ConnectionBorrowTimeout": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the proxy has opened its maximum number of connections and all connections are busy with client sessions.</p> <p>Default: 120</p> <p>Constraints: between 1 and 3600, or 0 representing unlimited</p>"
        },
        "SessionPinningFilters": {
          "shape": "StringList",
          "documentation": "<p>Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection. Including an item in the list exempts that class of SQL operations from the pinning behavior.</p> <p>Default: no session pinning filters</p>"
        },
        "InitQuery": {
          "shape": "String",
          "documentation": "<p> One or more SQL statements for the proxy to run when opening each new database connection. Typically used with <code>SET</code> statements to make sure that each connection has identical settings such as time zone and character set. For multiple statements, use semicolons as the separator. You can also include multiple variables in a single <code>SET</code> statement, such as <code>SET x=1, y=2</code>. </p> <p>Default: no initialization query</p>"
        }
      },
      "documentation": "<p>Specifies the settings that control the size and behavior of the connection pool associated with a <code>DBProxyTargetGroup</code>.</p>"
    },
    "ConnectionPoolConfigurationInfo": {
      "type": "structure",
      "members": {
        "MaxConnectionsPercent": {
          "shape": "Integer",
          "documentation": "<p>The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.</p>"
        },
        "MaxIdleConnectionsPercent": {
          "shape": "Integer",
          "documentation": "<p> Controls how actively the proxy closes idle database connections in the connection pool. A high value enables the proxy to leave a high percentage of idle connections open. A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group. </p>"
        },
        "ConnectionBorrowTimeout": {
          "shape": "Integer",
          "documentation": "<p>The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the proxy has opened its maximum number of connections and all connections are busy with client sessions.</p>"
        },
        "SessionPinningFilters": {
          "shape": "StringList",
          "documentation": "<p>Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection. Including an item in the list exempts that class of SQL operations from the pinning behavior. Currently, the only allowed value is <code>EXCLUDE_VARIABLE_SETS</code>.</p>"
        },
        "InitQuery": {
          "shape": "String",
          "documentation": "<p> One or more SQL statements for the proxy to run when opening each new database connection. Typically used with <code>SET</code> statements to make sure that each connection has identical settings such as time zone and character set. This setting is empty by default. For multiple statements, use semicolons as the separator. You can also include multiple variables in a single <code>SET</code> statement, such as <code>SET x=1, y=2</code>. </p>"
        }
      },
      "documentation": "<p>Displays the settings that control the size and behavior of the connection pool associated with a <code>DBProxyTarget</code>.</p>"
    },
    "CopyDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "SourceDBClusterParameterGroupIdentifier",
        "TargetDBClusterParameterGroupIdentifier",
        "TargetDBClusterParameterGroupDescription"
      ],
      "members": {
        "SourceDBClusterParameterGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group. For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\"> Constructing an ARN for Amazon RDS</a> in the <i>Amazon Aurora User Guide</i>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB cluster parameter group.</p> </li> <li> <p>If the source DB cluster parameter group is in the same AWS Region as the copy, specify a valid DB parameter group identifier, for example <code>my-db-cluster-param-group</code>, or a valid ARN.</p> </li> <li> <p>If the source DB parameter group is in a different AWS Region than the copy, specify a valid DB cluster parameter group ARN, for example <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p> </li> </ul>"
        },
        "TargetDBClusterParameterGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the copied DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Can't be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster-param-group1</code> </p>"
        },
        "TargetDBClusterParameterGroupDescription": {
          "shape": "String",
          "documentation": "<p>A description for the copied DB cluster parameter group.</p>"
        },
        "Tags": {
          "shape": "TagList"
        }
      }
    },
    "CopyDBClusterParameterGroupResult": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroup": {
          "shape": "DBClusterParameterGroup"
        }
      }
    },
    "CopyDBClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "SourceDBClusterSnapshotIdentifier",
        "TargetDBClusterSnapshotIdentifier"
      ],
      "members": {
        "SourceDBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB cluster snapshot to copy. This parameter isn't case-sensitive.</p> <p>You can't copy an encrypted, shared DB cluster snapshot from one AWS Region to another.</p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid system snapshot in the \"available\" state.</p> </li> <li> <p>If the source snapshot is in the same AWS Region as the copy, specify a valid DB snapshot identifier.</p> </li> <li> <p>If the source snapshot is in a different AWS Region than the copy, specify a valid DB cluster snapshot ARN. For more information, go to <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html#USER_CopySnapshot.AcrossRegions\"> Copying Snapshots Across AWS Regions</a> in the <i>Amazon Aurora User Guide.</i> </p> </li> </ul> <p>Example: <code>my-cluster-snapshot1</code> </p>"
        },
        "TargetDBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster-snapshot2</code> </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is encrypted with the same KMS key as the source DB cluster snapshot. </p> <p>If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for <code>KmsKeyId</code>. </p> <p>To copy an encrypted DB cluster snapshot to another AWS Region, you must set <code>KmsKeyId</code> to the KMS key ID you want to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region.</p> <p>If you copy an unencrypted DB cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, an error is returned.</p>"
        },
        "PreSignedUrl": {
          "shape": "String",
          "documentation": "<p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> API action in the AWS Region that contains the source DB cluster snapshot to copy. The <code>PreSignedUrl</code> parameter must be used when copying an encrypted DB cluster snapshot from another AWS Region. Don't specify <code>PreSignedUrl</code> when you are copying an encrypted DB cluster snapshot in the same AWS Region.</p> <p>The pre-signed URL must be a valid request for the <code>CopyDBClusterSnapshot</code> API action that can be executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied. The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster snapshot in the destination AWS Region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the AWS Region that the DB cluster snapshot is to be created in.</p> </li> <li> <p> <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your <code>SourceDBClusterSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\"> Signature Version 4 Signing Process</a>.</p> <note> <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI) instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid request for the operation that can be executed in the source AWS Region.</p> </note><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>"
        },
        "CopyTags": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot. By default, tags are not copied.</p>"
        },
        "Tags": {
          "shape": "TagList"
        },
        "SourceRegion": {
          "shape": "String",
          "documentation": "<p>The ID of the region that contains the snapshot to be copied.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CopyDBClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshot": {
          "shape": "DBClusterSnapshot"
        }
      }
    },
    "CopyDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "SourceDBParameterGroupIdentifier",
        "TargetDBParameterGroupIdentifier",
        "TargetDBParameterGroupDescription"
      ],
      "members": {
        "SourceDBParameterGroupIdentifier": {
          "shape": "String",
          "documentation": "<p> The identifier or ARN for the source DB parameter group. For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\"> Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid DB parameter group.</p> </li> <li> <p>Must specify a valid DB parameter group identifier, for example <code>my-db-param-group</code>, or a valid ARN.</p> </li> </ul>"
        },
        "TargetDBParameterGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the copied DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Can't be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-parameter-group</code> </p>"
        },
        "TargetDBParameterGroupDescription": {
          "shape": "String",
          "documentation": "<p>A description for the copied DB parameter group.</p>"
        },
        "Tags": {
          "shape": "TagList"
        }
      },
      "documentation": "<p/>"
    },
    "CopyDBParameterGroupResult": {
      "type": "structure",
      "members": {
        "DBParameterGroup": {
          "shape": "DBParameterGroup"
        }
      }
    },
    "CopyDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "SourceDBSnapshotIdentifier",
        "TargetDBSnapshotIdentifier"
      ],
      "members": {
        "SourceDBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the source DB snapshot.</p> <p>If the source snapshot is in the same AWS Region as the copy, specify a valid DB snapshot identifier. For example, you might specify <code>rds:mysql-instance1-snapshot-20130805</code>. </p> <p>If the source snapshot is in a different AWS Region than the copy, specify a valid DB snapshot ARN. For example, you might specify <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code>. </p> <p>If you are copying from a shared manual DB snapshot, this parameter must be the Amazon Resource Name (ARN) of the shared DB snapshot. </p> <p>If you are copying an encrypted snapshot this parameter must be in the ARN format for the source AWS Region, and must match the <code>SourceDBSnapshotIdentifier</code> in the <code>PreSignedUrl</code> parameter. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid system snapshot in the \"available\" state.</p> </li> </ul> <p>Example: <code>rds:mydb-2012-04-02-00-01</code> </p> <p>Example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code> </p>"
        },
        "TargetDBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the copy of the snapshot. </p> <p>Constraints:</p> <ul> <li> <p>Can't be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-db-snapshot</code> </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you copy an encrypted DB snapshot from your AWS account, you can specify a value for this parameter to encrypt the copy with a new KMS encryption key. If you don't specify a value for this parameter, then the copy of the DB snapshot is encrypted with the same KMS key as the source DB snapshot. </p> <p>If you copy an encrypted DB snapshot that is shared from another AWS account, then you must specify a value for this parameter. </p> <p>If you specify this parameter when you copy an unencrypted snapshot, the copy is encrypted. </p> <p>If you copy an encrypted snapshot to a different AWS Region, then you must specify a KMS key for the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region. </p>"
        },
        "Tags": {
          "shape": "TagList"
        },
        "CopyTags": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the source DB snapshot to the target DB snapshot. By default, tags are not copied.</p>"
        },
        "PreSignedUrl": {
          "shape": "String",
          "documentation": "<p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBSnapshot</code> API action in the source AWS Region that contains the source DB snapshot to copy. </p> <p>You must specify this parameter when you copy an encrypted DB snapshot from another AWS Region by using the Amazon RDS API. Don't specify <code>PreSignedUrl</code> when you are copying an encrypted DB snapshot in the same AWS Region.</p> <p>The presigned URL must be a valid request for the <code>CopyDBSnapshot</code> API action that can be executed in the source AWS Region that contains the encrypted DB snapshot to be copied. The presigned URL request must contain the following parameter values: </p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the encrypted DB snapshot is copied to. This AWS Region is the same one where the <code>CopyDBSnapshot</code> action is called that contains this presigned URL. </p> <p>For example, if you copy an encrypted DB snapshot from the us-west-2 AWS Region to the us-east-1 AWS Region, then you call the <code>CopyDBSnapshot</code> action in the us-east-1 AWS Region and provide a presigned URL that contains a call to the <code>CopyDBSnapshot</code> action in the us-west-2 AWS Region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 AWS Region. </p> </li> <li> <p> <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the copy of the DB snapshot in the destination AWS Region. This is the same identifier for both the <code>CopyDBSnapshot</code> action that is called in the destination AWS Region, and the action contained in the presigned URL. </p> </li> <li> <p> <code>SourceDBSnapshotIdentifier</code> - The DB snapshot identifier for the encrypted snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB snapshot from the us-west-2 AWS Region, then your <code>SourceDBSnapshotIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115</code>. </p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\">Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a>. </p> <note> <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI) instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid request for the operation that can be executed in the source AWS Region.</p> </note><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of an option group to associate with the copy of the snapshot.</p> <p>Specify this option if you are copying a snapshot from one AWS Region to another, and your DB instance uses a nondefault option group. If your source DB instance uses Transparent Data Encryption for Oracle or Microsoft SQL Server, you must specify this option when copying across AWS Regions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options\">Option Group Considerations</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "SourceRegion": {
          "shape": "String",
          "documentation": "<p>The ID of the region that contains the snapshot to be copied.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CopyDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBSnapshot": {
          "shape": "DBSnapshot"
        }
      }
    },
    "CopyOptionGroupMessage": {
      "type": "structure",
      "required": [
        "SourceOptionGroupIdentifier",
        "TargetOptionGroupIdentifier",
        "TargetOptionGroupDescription"
      ],
      "members": {
        "SourceOptionGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier or ARN for the source option group. For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\"> Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>. </p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid option group.</p> </li> <li> <p>If the source option group is in the same AWS Region as the copy, specify a valid option group identifier, for example <code>my-option-group</code>, or a valid ARN.</p> </li> <li> <p>If the source option group is in a different AWS Region than the copy, specify a valid option group ARN, for example <code>arn:aws:rds:us-west-2:123456789012:og:special-options</code>.</p> </li> </ul>"
        },
        "TargetOptionGroupIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the copied option group.</p> <p>Constraints:</p> <ul> <li> <p>Can't be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-option-group</code> </p>"
        },
        "TargetOptionGroupDescription": {
          "shape": "String",
          "documentation": "<p>The description for the copied option group.</p>"
        },
        "Tags": {
          "shape": "TagList"
        }
      },
      "documentation": "<p/>"
    },
    "CopyOptionGroupResult": {
      "type": "structure",
      "members": {
        "OptionGroup": {
          "shape": "OptionGroup"
        }
      }
    },
    "CreateCustomAvailabilityZoneMessage": {
      "type": "structure",
      "required": [
        "CustomAvailabilityZoneName"
      ],
      "members": {
        "CustomAvailabilityZoneName": {
          "shape": "String",
          "documentation": "<p>The name of the custom Availability Zone (AZ).</p>"
        },
        "ExistingVpnId": {
          "shape": "String",
          "documentation": "<p>The ID of an existing virtual private network (VPN) between the Amazon RDS website and the VMware vSphere cluster.</p>"
        },
        "NewVpnTunnelName": {
          "shape": "String",
          "documentation": "<p>The name of a new VPN tunnel between the Amazon RDS website and the VMware vSphere cluster.</p> <p>Specify this parameter only if <code>ExistingVpnId</code> isn't specified.</p>"
        },
        "VpnTunnelOriginatorIP": {
          "shape": "String",
          "documentation": "<p>The IP address of network traffic from your on-premises data center. A custom AZ receives the network traffic.</p> <p>Specify this parameter only if <code>ExistingVpnId</code> isn't specified.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateCustomAvailabilityZoneResult": {
      "type": "structure",
      "members": {
        "CustomAvailabilityZone": {
          "shape": "CustomAvailabilityZone"
        }
      }
    },
    "CreateDBClusterEndpointMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "DBClusterEndpointIdentifier",
        "EndpointType"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.</p>"
        },
        "DBClusterEndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier to use for the new endpoint. This parameter is stored as a lowercase string.</p>"
        },
        "EndpointType": {
          "shape": "String",
          "documentation": "<p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>"
        },
        "StaticMembers": {
          "shape": "StringList",
          "documentation": "<p>List of DB instance identifiers that are part of the custom endpoint group.</p>"
        },
        "ExcludedMembers": {
          "shape": "StringList",
          "documentation": "<p>List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the Amazon RDS resource.</p>"
        }
      }
    },
    "CreateDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "Engine"
      ],
      "members": {
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>A list of Availability Zones (AZs) where instances in the DB cluster can be created. For information on AWS Regions and Availability Zones, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html\">Choosing the Regions and Availability Zones</a> in the <i>Amazon Aurora User Guide</i>. </p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days for which automated backups are retained.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>"
        },
        "CharacterSetName": {
          "shape": "String",
          "documentation": "<p>A value that indicates that the DB cluster should be associated with the specified CharacterSet.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>The name for your database of up to 64 alphanumeric characters. If you do not provide a name, Amazon RDS doesn't create a database in the DB cluster you are creating.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>"
        },
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p> The name of the DB cluster parameter group to associate with this DB cluster. If you do not specify a value, then the default DB cluster parameter group for the specified DB engine and version is used. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DB cluster parameter group.</p> </li> </ul>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of EC2 VPC security groups to associate with this DB cluster.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>A DB subnet group to associate with this DB cluster.</p> <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine to be used for this DB cluster.</p> <p>Valid Values: <code>aurora</code> (for MySQL 5.6-compatible Aurora), <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), and <code>aurora-postgresql</code> </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine to use.</p> <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora-mysql --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p> <b>Aurora MySQL</b> </p> <p>Example: <code>5.6.10a</code>, <code>5.6.mysql_aurora.1.19.2</code>, <code>5.7.12</code>, <code>5.7.mysql_aurora.2.04.5</code> </p> <p> <b>Aurora PostgreSQL</b> </p> <p>Example: <code>9.6.3</code>, <code>10.7</code> </p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the instances in the DB cluster accept connections.</p> <p> Default: <code>3306</code> if engine is set as aurora or <code>5432</code> if set to aurora-postgresql. </p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The name of the master user for the DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 letters or numbers.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't be a reserved word for the chosen database engine.</p> </li> </ul>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>A value that indicates that the DB cluster should be associated with the specified option group.</p> <p>Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\"> Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\"> Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "ReplicationSourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster is created as a read replica.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to assign to the DB cluster.</p>"
        },
        "StorageEncrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB cluster is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If an encryption key isn't specified in <code>KmsKeyId</code>:</p> <ul> <li> <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted source, then Amazon RDS will use the encryption key used to encrypt the source. Otherwise, Amazon RDS will use your default encryption key. </p> </li> <li> <p>If the <code>StorageEncrypted</code> parameter is enabled and <code>ReplicationSourceIdentifier</code> isn't specified, then Amazon RDS will use your default encryption key.</p> </li> </ul> <p>AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p> <p>If you create a read replica of an encrypted DB cluster in another AWS Region, you must set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination AWS Region. This key is used to encrypt the read replica in that AWS Region.</p>"
        },
        "PreSignedUrl": {
          "shape": "String",
          "documentation": "<p>A URL that contains a Signature Version 4 signed request for the <code>CreateDBCluster</code> action to be called in the source AWS Region where the DB cluster is replicated from. You only need to specify <code>PreSignedUrl</code> when you are performing cross-region replication from an encrypted DB cluster.</p> <p>The pre-signed URL must be a valid request for the <code>CreateDBCluster</code> API action that can be executed in the source AWS Region that contains the encrypted DB cluster to be copied.</p> <p>The pre-signed URL request must contain the following parameter values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the copy of the DB cluster in the destination AWS Region. This should refer to the same KMS key for both the <code>CreateDBCluster</code> action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p> </li> <li> <p> <code>DestinationRegion</code> - The name of the AWS Region that Aurora read replica will be created in.</p> </li> <li> <p> <code>ReplicationSourceIdentifier</code> - The DB cluster identifier for the encrypted DB cluster to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an encrypted DB cluster from the us-west-2 AWS Region, then your <code>ReplicationSourceIdentifier</code> would look like Example: <code>arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\"> Signature Version 4 Signing Process</a>.</p> <note> <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI) instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid request for the operation that can be executed in the source AWS Region.</p> </note><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i> </p>"
        },
        "BacktrackWindow": {
          "shape": "LongOptional",
          "documentation": "<p>The target backtrack window, in seconds. To disable backtracking, set this value to 0. </p> <note> <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p> </note> <p>Default: 0</p> <p>Constraints:</p> <ul> <li> <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p> </li> </ul>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of log types that need to be enabled for exporting to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "EngineMode": {
          "shape": "String",
          "documentation": "<p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>, <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p> <note> <p> <code>global</code> engine mode only applies for global database clusters created with Aurora MySQL version 5.6.10a. For higher Aurora MySQL versions, the clusters in a global database use <code>provisioned</code> engine mode. </p> </note> <p>Limitations and requirements apply to some DB engine modes. For more information, see the following sections in the <i>Amazon Aurora User Guide</i>:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations\"> Limitations of Aurora Serverless</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-parallel-query.html#aurora-mysql-parallel-query-limitations\"> Limitations of Parallel Query</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database.limitations\"> Requirements for Aurora Global Databases</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-multi-master.html#aurora-multi-master-limitations\"> Limitations of Multi-Master Clusters</a> </p> </li> </ul>"
        },
        "ScalingConfiguration": {
          "shape": "ScalingConfiguration",
          "documentation": "<p>For DB clusters in <code>serverless</code> DB engine mode, the scaling properties of the DB cluster.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.</p>"
        },
        "GlobalClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> The global cluster ID of an Aurora cluster that becomes the primary cluster in the new global database cluster. </p>"
        },
        "EnableHttpEndpoint": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable the HTTP endpoint for an Aurora Serverless DB cluster. By default, the HTTP endpoint is disabled.</p> <p>When enabled, the HTTP endpoint provides a connectionless web service API for running SQL queries on the Aurora Serverless DB cluster. You can also query your database from inside the RDS console with the query editor.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html\">Using the Data API for Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster. The default is not to copy them.</p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>The Active Directory directory ID to create the DB cluster in.</p> <p> For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html\">Kerberos Authentication</a> in the <i>Amazon Aurora User Guide</i>. </p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        },
        "EnableGlobalWriteForwarding": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable write operations to be forwarded from this cluster to the primary cluster in an Aurora global database. The resulting changes are replicated back to this cluster. This parameter only applies to DB clusters that are secondary clusters in an Aurora global database. By default, Aurora disallows write operations for secondary clusters.</p>"
        },
        "SourceRegion": {
          "shape": "String",
          "documentation": "<p>The ID of the region that contains the source for the read replica.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName",
        "DBParameterGroupFamily",
        "Description"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must match the name of an existing DB cluster parameter group.</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.</p> <p> <b>Aurora MySQL</b> </p> <p>Example: <code>aurora5.6</code>, <code>aurora-mysql5.7</code> </p> <p> <b>Aurora PostgreSQL</b> </p> <p>Example: <code>aurora-postgresql9.6</code> </p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description for the DB cluster parameter group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to assign to the DB cluster parameter group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDBClusterParameterGroupResult": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroup": {
          "shape": "DBClusterParameterGroup"
        }
      }
    },
    "CreateDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "CreateDBClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBClusterSnapshotIdentifier",
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1-snapshot1</code> </p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB cluster to create a snapshot for. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBCluster.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the DB cluster snapshot.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDBClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshot": {
          "shape": "DBClusterSnapshot"
        }
      }
    },
    "CreateDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "DBInstanceClass",
        "Engine"
      ],
      "members": {
        "DBName": {
          "shape": "String",
          "documentation": "<p>The meaning of this parameter differs according to the database engine you use.</p> <p> <b>MySQL</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 letters or numbers.</p> </li> <li> <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p> </li> <li> <p>Can't be a word reserved by the specified database engine</p> </li> </ul> <p> <b>MariaDB</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 letters or numbers.</p> </li> <li> <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p> </li> <li> <p>Can't be a word reserved by the specified database engine</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, the default \"postgres\" database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 63 letters, numbers, or underscores.</p> </li> <li> <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p> </li> <li> <p>Can't be a word reserved by the specified database engine</p> </li> </ul> <p> <b>Oracle</b> </p> <p>The Oracle System ID (SID) of the created DB instance. If you specify <code>null</code>, the default value <code>ORCL</code> is used. You can't specify the string NULL, or any other reserved word, for <code>DBName</code>. </p> <p>Default: <code>ORCL</code> </p> <p>Constraints:</p> <ul> <li> <p>Can't be longer than 8 characters</p> </li> </ul> <p> <b>SQL Server</b> </p> <p>Not applicable. Must be null.</p> <p> <b>Amazon Aurora</b> </p> <p>The name of the database to create when the primary instance of the DB cluster is created. If this parameter isn't specified, no database is created in the DB instance.</p> <p>Constraints:</p> <ul> <li> <p>Must contain 1 to 64 letters or numbers.</p> </li> <li> <p>Can't be a word reserved by the specified database engine</p> </li> </ul>"
        },
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of storage (in gibibytes) to allocate for the DB instance.</p> <p>Type: Integer</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. Aurora cluster volumes automatically grow as the amount of data in your database increases, though you are only charged for the space that you use in an Aurora cluster volume.</p> <p> <b>MySQL</b> </p> <p>Constraints to the amount of storage for each storage type are the following: </p> <ul> <li> <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p> </li> <li> <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p> </li> <li> <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p> </li> </ul> <p> <b>MariaDB</b> </p> <p>Constraints to the amount of storage for each storage type are the following: </p> <ul> <li> <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p> </li> <li> <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p> </li> <li> <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>Constraints to the amount of storage for each storage type are the following: </p> <ul> <li> <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p> </li> <li> <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p> </li> <li> <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p> </li> </ul> <p> <b>Oracle</b> </p> <p>Constraints to the amount of storage for each storage type are the following: </p> <ul> <li> <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p> </li> <li> <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p> </li> <li> <p>Magnetic storage (standard): Must be an integer from 10 to 3072.</p> </li> </ul> <p> <b>SQL Server</b> </p> <p>Constraints to the amount of storage for each storage type are the following: </p> <ul> <li> <p>General Purpose (SSD) storage (gp2):</p> <ul> <li> <p>Enterprise and Standard editions: Must be an integer from 200 to 16384.</p> </li> <li> <p>Web and Express editions: Must be an integer from 20 to 16384.</p> </li> </ul> </li> <li> <p>Provisioned IOPS storage (io1):</p> <ul> <li> <p>Enterprise and Standard editions: Must be an integer from 200 to 16384.</p> </li> <li> <p>Web and Express editions: Must be an integer from 100 to 16384.</p> </li> </ul> </li> <li> <p>Magnetic storage (standard):</p> <ul> <li> <p>Enterprise and Standard editions: Must be an integer from 200 to 1024.</p> </li> <li> <p>Web and Express editions: Must be an integer from 20 to 1024.</p> </li> </ul> </li> </ul>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine to be used for this instance. </p> <p>Not every database engine is available for every AWS Region. </p> <p>Valid Values: </p> <ul> <li> <p> <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p> </li> <li> <p> <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora)</p> </li> <li> <p> <code>aurora-postgresql</code> </p> </li> <li> <p> <code>mariadb</code> </p> </li> <li> <p> <code>mysql</code> </p> </li> <li> <p> <code>oracle-ee</code> </p> </li> <li> <p> <code>oracle-se2</code> </p> </li> <li> <p> <code>oracle-se1</code> </p> </li> <li> <p> <code>oracle-se</code> </p> </li> <li> <p> <code>postgres</code> </p> </li> <li> <p> <code>sqlserver-ee</code> </p> </li> <li> <p> <code>sqlserver-se</code> </p> </li> <li> <p> <code>sqlserver-ex</code> </p> </li> <li> <p> <code>sqlserver-web</code> </p> </li> </ul>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The name for the master user.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The name for the master user is managed by the DB cluster. </p> <p> <b>MariaDB</b> </p> <p>Constraints:</p> <ul> <li> <p>Required for MariaDB.</p> </li> <li> <p>Must be 1 to 16 letters or numbers.</p> </li> <li> <p>Can't be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints:</p> <ul> <li> <p>Required for SQL Server.</p> </li> <li> <p>Must be 1 to 128 letters or numbers.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Can't be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>MySQL</b> </p> <p>Constraints:</p> <ul> <li> <p>Required for MySQL.</p> </li> <li> <p>Must be 1 to 16 letters or numbers.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>Oracle</b> </p> <p>Constraints:</p> <ul> <li> <p>Required for Oracle.</p> </li> <li> <p>Must be 1 to 30 letters or numbers.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't be a reserved word for the chosen database engine.</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>Constraints:</p> <ul> <li> <p>Required for PostgreSQL.</p> </li> <li> <p>Must be 1 to 63 letters or numbers.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't be a reserved word for the chosen database engine.</p> </li> </ul>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The password for the master user. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\".</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The password for the master user is managed by the DB cluster.</p> <p> <b>MariaDB</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p> <p> <b>MySQL</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Oracle</b> </p> <p>Constraints: Must contain from 8 to 30 characters.</p> <p> <b>PostgreSQL</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p>"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroupNameList",
          "documentation": "<p>A list of DB security groups to associate with this DB instance.</p> <p>Default: The default DB security group for the database engine.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of Amazon EC2 VPC security groups to associate with this DB instance.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster.</p> <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p> The Availability Zone (AZ) where the database will be created. For information on AWS Regions and Availability Zones, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html\">Regions and Availability Zones</a>. </p> <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.</p> <p> Example: <code>us-east-1d</code> </p> <p> Constraint: The <code>AvailabilityZone</code> parameter can't be specified if the DB instance is a Multi-AZ deployment. The specified Availability Zone must be in the same AWS Region as the current endpoint. </p> <note> <p>If you're creating a DB instance in an RDS on VMware environment, specify the identifier of the custom Availability Zone to create the DB instance in.</p> <p>For more information about RDS on VMware, see the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\"> <i>RDS on VMware User Guide.</i> </a> </p> </note>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>A DB subnet group to associate with this DB instance.</p> <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC). For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance\">Amazon RDS Maintenance Window</a>. </p> <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group to associate with this DB instance. If you do not specify a value, then the default DB parameter group for the specified DB engine and version is used.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The retention period for automated backups is managed by the DB cluster.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Can't be set to 0 if the DB instance is a source to read replicas</p> </li> </ul>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p> The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow\">The Backup Window</a> in the <i>Amazon RDS User Guide</i>. </p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The daily time range for creating automated backups is managed by the DB cluster.</p> <p> The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow\"> Adjusting the Preferred DB Instance Maintenance Window</a> in the <i>Amazon RDS User Guide</i>. </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the database accepts connections.</p> <p> <b>MySQL</b> </p> <p> Default: <code>3306</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>MariaDB</b> </p> <p> Default: <code>3306</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>PostgreSQL</b> </p> <p> Default: <code>5432</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p> Default: <code>1521</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p> <b>SQL Server</b> </p> <p> Default: <code>1433</code> </p> <p> Valid values: <code>1150-65535</code> except <code>1234</code>, <code>1434</code>, <code>3260</code>, <code>3343</code>, <code>3389</code>, <code>47001</code>, and <code>49152-49156</code>.</p> <p> <b>Amazon Aurora</b> </p> <p> Default: <code>3306</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p>Type: Integer</p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine to use.</p> <p>For a list of valid engine versions, use the <code>DescribeDBEngineVersions</code> action.</p> <p>The following are the database engines and links to information about the major and minor versions that are available with Amazon RDS. Not every database engine is available for every AWS Region.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The version number of the database engine to be used by the DB instance is managed by the DB cluster.</p> <p> <b>MariaDB</b> </p> <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt\">MariaDB on Amazon RDS Versions</a> in the <i>Amazon RDS User Guide.</i> </p> <p> <b>Microsoft SQL Server</b> </p> <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport\">Version and Feature Support on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p> <p> <b>MySQL</b> </p> <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt\">MySQL on Amazon RDS Versions</a> in the <i>Amazon RDS User Guide.</i> </p> <p> <b>Oracle</b> </p> <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html\">Oracle Database Engine Release Notes</a> in the <i>Amazon RDS User Guide.</i> </p> <p> <b>PostgreSQL</b> </p> <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts.General.DBVersions\">Supported PostgreSQL Database Versions</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether minor engine upgrades are applied automatically to the DB instance during the maintenance window. By default, minor engine upgrades are applied automatically.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>License model information for this DB instance.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance. For information about valid Iops values, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS\">Amazon RDS Provisioned IOPS Storage to Improve Performance</a> in the <i>Amazon RDS User Guide</i>. </p> <p>Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL DB instances, must be a multiple between .5 and 50 of the storage amount for the DB instance. For SQL Server DB instances, must be a multiple between 1 and 50 of the storage amount for the DB instance. </p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>Indicates that the DB instance should be associated with the specified option group.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group. Also, that option group can't be removed from a DB instance once it is associated with a DB instance</p>"
        },
        "CharacterSetName": {
          "shape": "String",
          "documentation": "<p>For supported engines, indicates that the DB instance should be associated with the specified CharacterSet.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The character set is managed by the DB cluster. For more information, see <code>CreateDBCluster</code>.</p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is publicly accessible.</p> <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p> <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p> <p>Default: The default behavior varies depending on whether <code>DBSubnetGroupName</code> is specified.</p> <p>If <code>DBSubnetGroupName</code> isn't specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p> <ul> <li> <p>If the default VPC in the target region doesn’t have an Internet gateway attached to it, the DB instance is private.</p> </li> <li> <p>If the default VPC in the target region has an Internet gateway attached to it, the DB instance is public.</p> </li> </ul> <p>If <code>DBSubnetGroupName</code> is specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p> <ul> <li> <p>If the subnets are part of a VPC that doesn’t have an Internet gateway attached to it, the DB instance is private.</p> </li> <li> <p>If the subnets are part of a VPC that has an Internet gateway attached to it, the DB instance is public.</p> </li> </ul>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to assign to the DB instance.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB cluster that the instance will belong to.</p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified, otherwise <code>gp2</code> </p>"
        },
        "TdeCredentialArn": {
          "shape": "String",
          "documentation": "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
        },
        "TdeCredentialPassword": {
          "shape": "String",
          "documentation": "<p>The password for the given ARN from the key store in order to access the device.</p>"
        },
        "StorageEncrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is encrypted. By default, it isn't encrypted.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The encryption for DB instances is managed by the DB cluster.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for an encrypted DB instance.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The KMS key identifier is managed by the DB cluster. For more information, see <code>CreateDBCluster</code>.</p> <p>If <code>StorageEncrypted</code> is enabled, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>The Active Directory directory ID to create the DB instance in. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\"> Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this value for an Aurora DB instance has no effect on the DB cluster setting.</p>"
        },
        "MonitoringInterval": {
          "shape": "IntegerOptional",
          "documentation": "<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>"
        },
        "MonitoringRoleArn": {
          "shape": "String",
          "documentation": "<p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling\">Setting Up and Enabling Enhanced Monitoring</a> in the <i>Amazon RDS User Guide</i>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        },
        "PromotionTier": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance\"> Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>"
        },
        "Timezone": {
          "shape": "String",
          "documentation": "<p>The time zone of the DB instance. The time zone parameter is currently supported only by <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone\">Microsoft SQL Server</a>. </p>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled.</p> <p>You can enable IAM database authentication for the following database engines:</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. Mapping AWS IAM accounts to database accounts is managed by the DB cluster.</p> <p> <b>MySQL</b> </p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>For MySQL 8.0, minor version 8.0.16 or higher</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <ul> <li> <p>For PostgreSQL 9.5, minor version 9.5.15 or higher</p> </li> <li> <p>For PostgreSQL 9.6, minor version 9.6.11 or higher</p> </li> <li> <p>PostgreSQL 10.6, 10.7, and 10.9</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "EnablePerformanceInsights": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable Performance Insights for the DB instance. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using Amazon Performance Insights</a> in the <i>Amazon Relational Database Service User Guide</i>. </p>"
        },
        "PerformanceInsightsKMSKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p> <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "PerformanceInsightsRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of log types that need to be enabled for exporting to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon Relational Database Service User Guide</i>.</p>"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\"> Deleting a DB Instance</a>. </p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. You can enable or disable deletion protection for the DB cluster. For more information, see <code>CreateDBCluster</code>. DB instances in a DB cluster can be deleted even when deletion protection is enabled for the DB cluster. </p>"
        },
        "MaxAllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDBInstanceReadReplicaMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "SourceDBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB instance identifier of the read replica. This identifier is the unique key that identifies a DB instance. This parameter is stored as a lowercase string.</p>"
        },
        "SourceDBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB instance that will act as the source for the read replica. Each DB instance can have up to five read replicas.</p> <p>Constraints:</p> <ul> <li> <p>Must be the identifier of an existing MySQL, MariaDB, Oracle, PostgreSQL, or SQL Server DB instance.</p> </li> <li> <p>Can specify a DB instance that is a MySQL read replica only if the source is running MySQL 5.6 or later.</p> </li> <li> <p>For the limitations of Oracle read replicas, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html\">Read Replica Limitations with Oracle</a> in the <i>Amazon RDS User Guide</i>.</p> </li> <li> <p>For the limitations of SQL Server read replicas, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.ReadReplicas.Limitations.html\">Read Replica Limitations with Microsoft SQL Server</a> in the <i>Amazon RDS User Guide</i>.</p> </li> <li> <p>Can specify a PostgreSQL DB instance only if the source is running PostgreSQL 9.3.5 or later (9.4.7 and higher for cross-region replication).</p> </li> <li> <p>The specified DB instance must have automatic backups enabled, that is, its backup retention period must be greater than 0.</p> </li> <li> <p>If the source DB instance is in the same AWS Region as the read replica, specify a valid DB instance identifier.</p> </li> <li> <p>If the source DB instance is in a different AWS Region from the read replica, specify a valid DB instance ARN. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\">Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>. This doesn't apply to SQL Server, which doesn't support cross-region replicas.</p> </li> </ul>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the read replica, for example, <code>db.m4.large</code>. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Default: Inherits from the source DB instance.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone (AZ) where the read replica will be created.</p> <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.</p> <p> Example: <code>us-east-1d</code> </p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number that the DB instance uses for connections.</p> <p>Default: Inherits from the source DB instance</p> <p>Valid Values: <code>1150-65535</code> </p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the read replica is in a Multi-AZ deployment. </p> <p>You can create a read replica as a Multi-AZ DB instance. RDS creates a standby of your replica in another Availability Zone for failover support for the replica. Creating your read replica as a Multi-AZ DB instance is independent of whether the source database is a Multi-AZ DB instance. </p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether minor engine upgrades are applied automatically to the read replica during the maintenance window.</p> <p>Default: Inherits from the source DB instance</p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The option group the DB instance is associated with. If omitted, the option group associated with the source instance is used.</p> <note> <p>For SQL Server, you must use the option group associated with the source instance.</p> </note>"
        },
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group to associate with this DB instance.</p> <p>If you do not specify a value for <code>DBParameterGroupName</code>, then Amazon RDS uses the <code>DBParameterGroup</code> of source DB instance for a same region read replica, or the default <code>DBParameterGroup</code> for the specified DB engine for a cross region read replica.</p> <note> <p>Currently, specifying a parameter group for this operation is only supported for Oracle DB instances.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is publicly accessible.</p> <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p> <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p> <p>For more information, see <a>CreateDBInstance</a>.</p>"
        },
        "Tags": {
          "shape": "TagList"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>Specifies a DB subnet group for the DB instance. The new DB instance is created in the VPC associated with the DB subnet group. If no DB subnet group is specified, then the new DB instance isn't created in a VPC.</p> <p>Constraints:</p> <ul> <li> <p>Can only be specified if the source DB instance identifier specifies a DB instance in another AWS Region.</p> </li> <li> <p>If supplied, must match the name of an existing DBSubnetGroup.</p> </li> <li> <p>The specified DB subnet group must be in the same AWS Region in which the operation is running.</p> </li> <li> <p>All read replicas in one AWS Region that are created from the same source DB instance must either:&gt;</p> <ul> <li> <p>Specify DB subnet groups from the same VPC. All these read replicas are created in the same VPC.</p> </li> <li> <p>Not specify a DB subnet group. All these read replicas are created outside of any VPC.</p> </li> </ul> </li> </ul> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p> A list of EC2 VPC security groups to associate with the read replica. </p> <p> Default: The default EC2 VPC security group for the DB subnet group's VPC. </p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type to be associated with the read replica.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified, otherwise <code>gp2</code> </p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the read replica to snapshots of the read replica. By default, tags are not copied.</p>"
        },
        "MonitoringInterval": {
          "shape": "IntegerOptional",
          "documentation": "<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the read replica. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>"
        },
        "MonitoringRoleArn": {
          "shape": "String",
          "documentation": "<p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole\">To create an IAM role for Amazon RDS Enhanced Monitoring</a> in the <i>Amazon RDS User Guide</i>.</p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key ID for an encrypted read replica. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p> <p>If you create an encrypted read replica in the same AWS Region as the source DB instance, then you do not have to specify a value for this parameter. The read replica is encrypted with the same KMS key as the source DB instance.</p> <p>If you create an encrypted read replica in a different AWS Region, then you must specify a KMS key for the destination AWS Region. KMS encryption keys are specific to the AWS Region that they are created in, and you can't use encryption keys from one AWS Region in another AWS Region.</p> <p>You can't create an encrypted read replica from an unencrypted DB instance.</p>"
        },
        "PreSignedUrl": {
          "shape": "String",
          "documentation": "<p>The URL that contains a Signature Version 4 signed request for the <code>CreateDBInstanceReadReplica</code> API action in the source AWS Region that contains the source DB instance. </p> <p>You must specify this parameter when you create an encrypted read replica from another AWS Region by using the Amazon RDS API. Don't specify <code>PreSignedUrl</code> when you are creating an encrypted read replica in the same AWS Region.</p> <p>The presigned URL must be a valid request for the <code>CreateDBInstanceReadReplica</code> API action that can be executed in the source AWS Region that contains the encrypted source DB instance. The presigned URL request must contain the following parameter values: </p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the encrypted read replica is created in. This AWS Region is the same one where the <code>CreateDBInstanceReadReplica</code> action is called that contains this presigned URL.</p> <p>For example, if you create an encrypted DB instance in the us-west-1 AWS Region, from a source DB instance in the us-east-2 AWS Region, then you call the <code>CreateDBInstanceReadReplica</code> action in the us-east-1 AWS Region and provide a presigned URL that contains a call to the <code>CreateDBInstanceReadReplica</code> action in the us-west-2 AWS Region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 AWS Region. </p> </li> <li> <p> <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the read replica in the destination AWS Region. This is the same identifier for both the <code>CreateDBInstanceReadReplica</code> action that is called in the destination AWS Region, and the action contained in the presigned URL. </p> </li> <li> <p> <code>SourceDBInstanceIdentifier</code> - The DB instance identifier for the encrypted DB instance to be replicated. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are creating an encrypted read replica from a DB instance in the us-west-2 AWS Region, then your <code>SourceDBInstanceIdentifier</code> looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115</code>. </p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\">Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a>. </p> <note> <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI) instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a presigned URL that is a valid request for the operation that can be executed in the source AWS Region.</p> <p> <code>SourceRegion</code> isn't supported for SQL Server, because SQL Server on Amazon RDS doesn't support cross-region read replicas.</p> </note><note><p>If you supply a value for this operation's <code>SourceRegion</code> parameter, a pre-signed URL will be calculated on your behalf.</p></note>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For information about the supported DB engines, see <a>CreateDBInstance</a>.</p> <p>For more information about IAM database authentication, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "EnablePerformanceInsights": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable Performance Insights for the read replica. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using Amazon Performance Insights</a> in the <i>Amazon RDS User Guide</i>. </p>"
        },
        "PerformanceInsightsKMSKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p> <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "PerformanceInsightsRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of logs that the new DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
        },
        "UseDefaultProcessorFeatures": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance class of the DB instance uses its default processor features.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\"> Deleting a DB Instance</a>. </p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>The Active Directory directory ID to create the DB instance in. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\"> Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        },
        "ReplicaMode": {
          "shape": "ReplicaMode",
          "documentation": "<p>The open mode of the replica database: mounted or read-only.</p> <note> <p>This parameter is only supported for Oracle DB instances.</p> </note> <p>Mounted DB replicas are included in Oracle Enterprise Edition. The main use case for mounted replicas is cross-Region disaster recovery. The primary database doesn't use Active Data Guard to transmit information to the mounted replica. Because it doesn't accept user connections, a mounted replica can't serve a read-only workload.</p> <p>You can create a combination of mounted and read-only DB replicas for the same primary DB instance. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html\">Working with Oracle Read Replicas for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "SourceRegion": {
          "shape": "String",
          "documentation": "<p>The ID of the region that contains the source for the read replica.</p>"
        }
      }
    },
    "CreateDBInstanceReadReplicaResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "CreateDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "CreateDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName",
        "DBParameterGroupFamily",
        "Description"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.</p> <p>To list all of the available parameter group families, use the following command:</p> <p> <code>aws rds describe-db-engine-versions --query \"DBEngineVersions[].DBParameterGroupFamily\"</code> </p> <note> <p>The output contains duplicates.</p> </note>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description for the DB parameter group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to assign to the DB parameter group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDBParameterGroupResult": {
      "type": "structure",
      "members": {
        "DBParameterGroup": {
          "shape": "DBParameterGroup"
        }
      }
    },
    "CreateDBProxyRequest": {
      "type": "structure",
      "required": [
        "DBProxyName",
        "EngineFamily",
        "Auth",
        "RoleArn",
        "VpcSubnetIds"
      ],
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>"
        },
        "EngineFamily": {
          "shape": "EngineFamily",
          "documentation": "<p>The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. The engine family applies to MySQL and PostgreSQL for both RDS and Aurora.</p>"
        },
        "Auth": {
          "shape": "UserAuthConfigList",
          "documentation": "<p>The authorization mechanism that the proxy uses.</p>"
        },
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.</p>"
        },
        "VpcSubnetIds": {
          "shape": "StringList",
          "documentation": "<p>One or more VPC subnet IDs to associate with the new proxy.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "StringList",
          "documentation": "<p>One or more VPC security group IDs to associate with the new proxy.</p>"
        },
        "RequireTLS": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.</p>"
        },
        "IdleClientTimeout": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.</p>"
        },
        "DebugLogging": {
          "shape": "Boolean",
          "documentation": "<p>Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>An optional set of key-value pairs to associate arbitrary data of your choosing with the proxy.</p>"
        }
      }
    },
    "CreateDBProxyResponse": {
      "type": "structure",
      "members": {
        "DBProxy": {
          "shape": "DBProxy",
          "documentation": "<p>The <code>DBProxy</code> structure corresponding to the new proxy.</p>"
        }
      }
    },
    "CreateDBSecurityGroupMessage": {
      "type": "structure",
      "required": [
        "DBSecurityGroupName",
        "DBSecurityGroupDescription"
      ],
      "members": {
        "DBSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name for the DB security group. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Must not be \"Default\"</p> </li> </ul> <p>Example: <code>mysecuritygroup</code> </p>"
        },
        "DBSecurityGroupDescription": {
          "shape": "String",
          "documentation": "<p>The description for the DB security group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to assign to the DB security group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDBSecurityGroupResult": {
      "type": "structure",
      "members": {
        "DBSecurityGroup": {
          "shape": "DBSecurityGroup"
        }
      }
    },
    "CreateDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBSnapshotIdentifier",
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the DB snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Can't be null, empty, or blank</p> </li> <li> <p>Must contain from 1 to 255 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>"
        },
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB instance that you want to create the snapshot of.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBInstance.</p> </li> </ul>"
        },
        "Tags": {
          "shape": "TagList"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBSnapshot": {
          "shape": "DBSnapshot"
        }
      }
    },
    "CreateDBSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "DBSubnetGroupName",
        "DBSubnetGroupDescription",
        "SubnetIds"
      ],
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name for the DB subnet group. This value is stored as a lowercase string.</p> <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "DBSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>The description for the DB subnet group.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>The EC2 Subnet IDs for the DB subnet group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to assign to the DB subnet group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateDBSubnetGroupResult": {
      "type": "structure",
      "members": {
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup"
        }
      }
    },
    "CreateEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName",
        "SnsTopicArn"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the subscription.</p> <p>Constraints: The name must be less than 255 characters.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you set this parameter to <code>db-instance</code>. If this value isn't specified, all events are returned.</p> <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> </p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p> A list of event categories for a particular source type (<code>SourceType</code>) that you want to subscribe to. You can see a list of the categories for a given source type in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html\">Events</a> in the <i>Amazon RDS User Guide</i> or by using the <code>DescribeEventCategories</code> operation. </p>"
        },
        "SourceIds": {
          "shape": "SourceIdsList",
          "documentation": "<p>The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens. It can't end with a hyphen or contain two consecutive hyphens.</p> <p>Constraints:</p> <ul> <li> <p>If a <code>SourceIds</code> value is supplied, <code>SourceType</code> must also be provided.</p> </li> <li> <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p> </li> </ul>"
        },
        "Enabled": {
          "shape": "BooleanOptional",
          "documentation": "<p> A value that indicates whether to activate the subscription. If the event notification subscription isn't activated, the subscription is created but not active. </p>"
        },
        "Tags": {
          "shape": "TagList"
        }
      },
      "documentation": "<p/>"
    },
    "CreateEventSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "CreateGlobalClusterMessage": {
      "type": "structure",
      "members": {
        "GlobalClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The cluster identifier of the new global database cluster.</p>"
        },
        "SourceDBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) to use as the primary cluster of the global database. This parameter is optional. </p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>Provides the name of the database engine to be used for this DB cluster.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version of the Aurora global database.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p> The deletion protection setting for the new global database. The global database can't be deleted when deletion protection is enabled. </p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p> The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon Aurora will not create a database in the global database cluster you are creating. </p>"
        },
        "StorageEncrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p> The storage encryption setting for the new global database cluster. </p>"
        }
      }
    },
    "CreateGlobalClusterResult": {
      "type": "structure",
      "members": {
        "GlobalCluster": {
          "shape": "GlobalCluster"
        }
      }
    },
    "CreateOptionGroupMessage": {
      "type": "structure",
      "required": [
        "OptionGroupName",
        "EngineName",
        "MajorEngineVersion",
        "OptionGroupDescription"
      ],
      "members": {
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the option group to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>myoptiongroup</code> </p>"
        },
        "EngineName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the engine that this option group should be associated with.</p>"
        },
        "MajorEngineVersion": {
          "shape": "String",
          "documentation": "<p>Specifies the major version of the engine that this option group should be associated with.</p>"
        },
        "OptionGroupDescription": {
          "shape": "String",
          "documentation": "<p>The description of the option group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to assign to the option group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "CreateOptionGroupResult": {
      "type": "structure",
      "members": {
        "OptionGroup": {
          "shape": "OptionGroup"
        }
      }
    },
    "CustomAvailabilityZone": {
      "type": "structure",
      "members": {
        "CustomAvailabilityZoneId": {
          "shape": "String",
          "documentation": "<p>The identifier of the custom AZ.</p> <p>Amazon RDS generates a unique identifier when a custom AZ is created.</p>"
        },
        "CustomAvailabilityZoneName": {
          "shape": "String",
          "documentation": "<p>The name of the custom AZ.</p>"
        },
        "CustomAvailabilityZoneStatus": {
          "shape": "String",
          "documentation": "<p>The status of the custom AZ.</p>"
        },
        "VpnDetails": {
          "shape": "VpnDetails",
          "documentation": "<p>Information about the virtual private network (VPN) between the VMware vSphere cluster and the AWS website.</p>"
        }
      },
      "documentation": "<p>A custom Availability Zone (AZ) is an on-premises AZ that is integrated with a VMware vSphere cluster.</p> <p>For more information about RDS on VMware, see the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\"> <i>RDS on VMware User Guide.</i> </a> </p>",
      "wrapper": true
    },
    "CustomAvailabilityZoneList": {
      "type": "list",
      "member": {
        "shape": "CustomAvailabilityZone",
        "locationName": "CustomAvailabilityZone"
      }
    },
    "CustomAvailabilityZoneMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous <code>DescribeCustomAvailabilityZones</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "CustomAvailabilityZones": {
          "shape": "CustomAvailabilityZoneList",
          "documentation": "<p>The list of <a>CustomAvailabilityZone</a> objects for the AWS account.</p>"
        }
      }
    },
    "DBCluster": {
      "type": "structure",
      "members": {
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>For all database engines except Amazon Aurora, <code>AllocatedStorage</code> specifies the allocated storage size in gibibytes (GiB). For Aurora, <code>AllocatedStorage</code> always returns 1, because Aurora DB cluster storage size isn't fixed, but instead automatically adjusts as needed.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>Provides the list of Availability Zones (AZs) where instances in the DB cluster can be created.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the number of days for which automatic DB snapshots are retained.</p>"
        },
        "CharacterSetName": {
          "shape": "String",
          "documentation": "<p>If present, specifies the name of the character set that this cluster is associated with.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>"
        },
        "DBClusterParameterGroup": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>"
        },
        "DBSubnetGroup": {
          "shape": "String",
          "documentation": "<p>Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Specifies the current state of this DB cluster.</p>"
        },
        "PercentProgress": {
          "shape": "String",
          "documentation": "<p>Specifies the progress of the operation as a percentage.</p>"
        },
        "EarliestRestorableTime": {
          "shape": "TStamp",
          "documentation": "<p>The earliest time to which a database can be restored with point-in-time restore.</p>"
        },
        "Endpoint": {
          "shape": "String",
          "documentation": "<p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>"
        },
        "ReaderEndpoint": {
          "shape": "String",
          "documentation": "<p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster. </p> <p>If a failover occurs, and the Aurora Replica that you are connected to is promoted to be the primary instance, your connection is dropped. To continue sending your read workload to other Aurora Replicas in the cluster, you can then reconnect to the reader endpoint.</p>"
        },
        "CustomEndpoints": {
          "shape": "StringList",
          "documentation": "<p>Identifies all custom endpoints associated with the cluster.</p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>Provides the name of the database engine to be used for this DB cluster.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the database engine version.</p>"
        },
        "LatestRestorableTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the port that the database engine is listening on.</p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>Contains the master username for the DB cluster.</p>"
        },
        "DBClusterOptionGroupMemberships": {
          "shape": "DBClusterOptionGroupMemberships",
          "documentation": "<p>Provides the list of option group memberships for this DB cluster.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p>Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>"
        },
        "ReplicationSourceIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains the identifier of the source DB cluster if this DB cluster is a read replica.</p>"
        },
        "ReadReplicaIdentifiers": {
          "shape": "ReadReplicaIdentifierList",
          "documentation": "<p>Contains one or more identifiers of the read replicas associated with this DB cluster.</p>"
        },
        "DBClusterMembers": {
          "shape": "DBClusterMemberList",
          "documentation": "<p>Provides the list of instances that make up the DB cluster.</p>"
        },
        "VpcSecurityGroups": {
          "shape": "VpcSecurityGroupMembershipList",
          "documentation": "<p>Provides a list of VPC security groups that the DB cluster belongs to.</p>"
        },
        "HostedZoneId": {
          "shape": "String",
          "documentation": "<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>"
        },
        "StorageEncrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the DB cluster is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>If <code>StorageEncrypted</code> is enabled, the AWS KMS key identifier for the encrypted DB cluster.</p>"
        },
        "DbClusterResourceId": {
          "shape": "String",
          "documentation": "<p>The AWS Region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed.</p>"
        },
        "DBClusterArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB cluster.</p>"
        },
        "AssociatedRoles": {
          "shape": "DBClusterRoles",
          "documentation": "<p>Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services on your behalf.</p>"
        },
        "IAMDatabaseAuthenticationEnabled": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.</p>"
        },
        "CloneGroupId": {
          "shape": "String",
          "documentation": "<p>Identifies the clone group to which the DB cluster is associated.</p>"
        },
        "ClusterCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>"
        },
        "EarliestBacktrackTime": {
          "shape": "TStamp",
          "documentation": "<p>The earliest time to which a DB cluster can be backtracked.</p>"
        },
        "BacktrackWindow": {
          "shape": "LongOptional",
          "documentation": "<p>The target backtrack window, in seconds. If this value is set to 0, backtracking is disabled for the DB cluster. Otherwise, backtracking is enabled.</p>"
        },
        "BacktrackConsumedChangeRecords": {
          "shape": "LongOptional",
          "documentation": "<p>The number of change records stored for Backtrack.</p>"
        },
        "EnabledCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>A list of log types that this DB cluster is configured to export to CloudWatch Logs.</p> <p>Log types vary by DB engine. For information about the log types for each DB engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html\">Amazon RDS Database Log Files</a> in the <i>Amazon Aurora User Guide.</i> </p>"
        },
        "Capacity": {
          "shape": "IntegerOptional",
          "documentation": "<p>The current capacity of an Aurora Serverless DB cluster. The capacity is 0 (zero) when the cluster is paused.</p> <p>For more information about Aurora Serverless, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html\">Using Amazon Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "EngineMode": {
          "shape": "String",
          "documentation": "<p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>, <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p> <note> <p> <code>global</code> engine mode only applies for global database clusters created with Aurora MySQL version 5.6.10a. For higher Aurora MySQL versions, the clusters in a global database use <code>provisioned</code> engine mode. To check if a DB cluster is part of a global database, use <code>DescribeGlobalClusters</code> instead of checking the <code>EngineMode</code> return value from <code>DescribeDBClusters</code>. </p> </note>"
        },
        "ScalingConfigurationInfo": {
          "shape": "ScalingConfigurationInfo"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>Indicates if the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. </p>"
        },
        "HttpEndpointEnabled": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the HTTP endpoint for an Aurora Serverless DB cluster is enabled.</p> <p>When enabled, the HTTP endpoint provides a connectionless web service API for running SQL queries on the Aurora Serverless DB cluster. You can also query your database from inside the RDS console with the query editor.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html\">Using the Data API for Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "ActivityStreamMode": {
          "shape": "ActivityStreamMode",
          "documentation": "<p>The mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. </p>"
        },
        "ActivityStreamStatus": {
          "shape": "ActivityStreamStatus",
          "documentation": "<p>The status of the database activity stream.</p>"
        },
        "ActivityStreamKmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier used for encrypting messages in the database activity stream.</p>"
        },
        "ActivityStreamKinesisStreamName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Kinesis data stream used for the database activity stream.</p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether tags are copied from the DB cluster to snapshots of the DB cluster.</p>"
        },
        "CrossAccountClone": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether the DB cluster is a clone of a DB cluster owned by a different AWS account.</p>"
        },
        "DomainMemberships": {
          "shape": "DomainMembershipList",
          "documentation": "<p>The Active Directory Domain membership records associated with the DB cluster.</p>"
        },
        "GlobalWriteForwardingStatus": {
          "shape": "WriteForwardingStatus",
          "documentation": "<p>Specifies whether a secondary cluster in an Aurora global database has write forwarding enabled, not enabled, or is in the process of enabling it.</p>"
        },
        "GlobalWriteForwardingRequested": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether you have requested to enable write forwarding for a secondary cluster in an Aurora global database. Because write forwarding takes time to enable, check the value of <code>GlobalWriteForwardingStatus</code> to confirm that the request has completed before using the write forwarding feature for this cluster.</p>"
        }
      },
      "documentation": "<p>Contains the details of an Amazon Aurora DB cluster. </p> <p>This data type is used as a response element in the <code>DescribeDBClusters</code>, <code>StopDBCluster</code>, and <code>StartDBCluster</code> actions. </p>",
      "wrapper": true
    },
    "DBClusterBacktrack": {
      "type": "structure",
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>"
        },
        "BacktrackIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains the backtrack identifier.</p>"
        },
        "BacktrackTo": {
          "shape": "TStamp",
          "documentation": "<p>The timestamp of the time to which the DB cluster was backtracked.</p>"
        },
        "BacktrackedFrom": {
          "shape": "TStamp",
          "documentation": "<p>The timestamp of the time from which the DB cluster was backtracked.</p>"
        },
        "BacktrackRequestCreationTime": {
          "shape": "TStamp",
          "documentation": "<p>The timestamp of the time at which the backtrack was requested.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the backtrack. This property returns one of the following values:</p> <ul> <li> <p> <code>applying</code> - The backtrack is currently being applied to or rolled back from the DB cluster.</p> </li> <li> <p> <code>completed</code> - The backtrack has successfully been applied to or rolled back from the DB cluster.</p> </li> <li> <p> <code>failed</code> - An error occurred while the backtrack was applied to or rolled back from the DB cluster.</p> </li> <li> <p> <code>pending</code> - The backtrack is currently pending application to or rollback from the DB cluster.</p> </li> </ul>"
        }
      },
      "documentation": "<p>This data type is used as a response element in the <code>DescribeDBClusterBacktracks</code> action.</p>"
    },
    "DBClusterBacktrackList": {
      "type": "list",
      "member": {
        "shape": "DBClusterBacktrack",
        "locationName": "DBClusterBacktrack"
      }
    },
    "DBClusterBacktrackMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a later <code>DescribeDBClusterBacktracks</code> request.</p>"
        },
        "DBClusterBacktracks": {
          "shape": "DBClusterBacktrackList",
          "documentation": "<p>Contains a list of backtracks for the user.</p>"
        }
      },
      "documentation": "<p>Contains the result of a successful invocation of the <code>DescribeDBClusterBacktracks</code> action.</p>"
    },
    "DBClusterCapacityInfo": {
      "type": "structure",
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>A user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster. </p>"
        },
        "PendingCapacity": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the capacity that the DB cluster scales to next.</p>"
        },
        "CurrentCapacity": {
          "shape": "IntegerOptional",
          "documentation": "<p>The current capacity of the DB cluster.</p>"
        },
        "SecondsBeforeTimeout": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of seconds before a call to <code>ModifyCurrentDBClusterCapacity</code> times out.</p>"
        },
        "TimeoutAction": {
          "shape": "String",
          "documentation": "<p>The timeout action of a call to <code>ModifyCurrentDBClusterCapacity</code>, either <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>"
        }
      }
    },
    "DBClusterEndpoint": {
      "type": "structure",
      "members": {
        "DBClusterEndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.</p>"
        },
        "DBClusterEndpointResourceIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.</p>"
        },
        "Endpoint": {
          "shape": "String",
          "documentation": "<p>The DNS address of the endpoint.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that can't be used for a certain kind of cluster, such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>"
        },
        "EndpointType": {
          "shape": "String",
          "documentation": "<p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>CUSTOM</code>.</p>"
        },
        "CustomEndpointType": {
          "shape": "String",
          "documentation": "<p>The type associated with a custom endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>"
        },
        "StaticMembers": {
          "shape": "StringList",
          "documentation": "<p>List of DB instance identifiers that are part of the custom endpoint group.</p>"
        },
        "ExcludedMembers": {
          "shape": "StringList",
          "documentation": "<p>List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.</p>"
        },
        "DBClusterEndpointArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the endpoint.</p>"
        }
      },
      "documentation": "<p>This data type represents the information you need to connect to an Amazon Aurora DB cluster. This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>CreateDBClusterEndpoint</code> </p> </li> <li> <p> <code>DescribeDBClusterEndpoints</code> </p> </li> <li> <p> <code>ModifyDBClusterEndpoint</code> </p> </li> <li> <p> <code>DeleteDBClusterEndpoint</code> </p> </li> </ul> <p>For the data structure that represents Amazon RDS DB instance endpoints, see <code>Endpoint</code>.</p>"
    },
    "DBClusterEndpointList": {
      "type": "list",
      "member": {
        "shape": "DBClusterEndpoint",
        "locationName": "DBClusterEndpointList"
      }
    },
    "DBClusterEndpointMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBClusterEndpoints</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DBClusterEndpoints": {
          "shape": "DBClusterEndpointList",
          "documentation": "<p>Contains the details of the endpoints associated with the cluster and matching any filter conditions.</p>"
        }
      }
    },
    "DBClusterList": {
      "type": "list",
      "member": {
        "shape": "DBCluster",
        "locationName": "DBCluster"
      }
    },
    "DBClusterMember": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the instance identifier for this member of the DB cluster.</p>"
        },
        "IsClusterWriter": {
          "shape": "Boolean",
          "documentation": "<p>Value that is <code>true</code> if the cluster member is the primary instance for the DB cluster and <code>false</code> otherwise.</p>"
        },
        "DBClusterParameterGroupStatus": {
          "shape": "String",
          "documentation": "<p>Specifies the status of the DB cluster parameter group for this member of the DB cluster.</p>"
        },
        "PromotionTier": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance\"> Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>. </p>"
        }
      },
      "documentation": "<p>Contains information about an instance that is part of a DB cluster.</p>",
      "wrapper": true
    },
    "DBClusterMemberList": {
      "type": "list",
      "member": {
        "shape": "DBClusterMember",
        "locationName": "DBClusterMember"
      }
    },
    "DBClusterMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a later DescribeDBClusters request.</p>"
        },
        "DBClusters": {
          "shape": "DBClusterList",
          "documentation": "<p>Contains a list of DB clusters for the user.</p>"
        }
      },
      "documentation": "<p>Contains the result of a successful invocation of the <code>DescribeDBClusters</code> action.</p>"
    },
    "DBClusterOptionGroupMemberships": {
      "type": "list",
      "member": {
        "shape": "DBClusterOptionGroupStatus",
        "locationName": "DBClusterOptionGroup"
      }
    },
    "DBClusterOptionGroupStatus": {
      "type": "structure",
      "members": {
        "DBClusterOptionGroupName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the DB cluster option group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Specifies the status of the DB cluster option group.</p>"
        }
      },
      "documentation": "<p>Contains status information for a DB cluster option group.</p>"
    },
    "DBClusterParameterGroup": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>Provides the name of the DB cluster parameter group.</p>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>Provides the name of the DB parameter group family that this DB cluster parameter group is compatible with.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>Provides the customer-specified description for this DB cluster parameter group.</p>"
        },
        "DBClusterParameterGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB cluster parameter group.</p>"
        }
      },
      "documentation": "<p>Contains the details of an Amazon RDS DB cluster parameter group. </p> <p>This data type is used as a response element in the <code>DescribeDBClusterParameterGroups</code> action. </p>",
      "wrapper": true
    },
    "DBClusterParameterGroupDetails": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>Provides a list of parameters for the DB cluster parameter group.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous DescribeDBClusterParameters request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        }
      },
      "documentation": "<p>Provides details about a DB cluster parameter group including the parameters in the DB cluster parameter group.</p>"
    },
    "DBClusterParameterGroupList": {
      "type": "list",
      "member": {
        "shape": "DBClusterParameterGroup",
        "locationName": "DBClusterParameterGroup"
      }
    },
    "DBClusterParameterGroupNameMessage": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters or numbers.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <note> <p>This value is stored as a lowercase string.</p> </note>"
        }
      },
      "documentation": "<p/>"
    },
    "DBClusterParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DBClusterParameterGroups": {
          "shape": "DBClusterParameterGroupList",
          "documentation": "<p>A list of DB cluster parameter groups.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DBClusterRole": {
      "type": "structure",
      "members": {
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following values:</p> <ul> <li> <p> <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be used to access other AWS services on your behalf.</p> </li> <li> <p> <code>PENDING</code> - the IAM role ARN is being associated with the DB cluster.</p> </li> <li> <p> <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable to assume the IAM role in order to access other AWS services on your behalf.</p> </li> </ul>"
        },
        "FeatureName": {
          "shape": "String",
          "documentation": "<p>The name of the feature associated with the AWS Identity and Access Management (IAM) role. For the list of supported feature names, see <a>DBEngineVersion</a>. </p>"
        }
      },
      "documentation": "<p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB cluster.</p>"
    },
    "DBClusterRoles": {
      "type": "list",
      "member": {
        "shape": "DBClusterRole",
        "locationName": "DBClusterRole"
      }
    },
    "DBClusterSnapshot": {
      "type": "structure",
      "members": {
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>Provides the list of Availability Zones (AZs) where instances in the DB cluster snapshot can be restored.</p>"
        },
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the identifier for the DB cluster snapshot.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.</p>"
        },
        "SnapshotCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the database engine.</p>"
        },
        "AllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>Specifies the allocated storage size in gibibytes (GiB).</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Specifies the status of this DB cluster snapshot.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>Specifies the port that the DB cluster was listening on at the time of the snapshot.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>Provides the VPC ID associated with the DB cluster snapshot.</p>"
        },
        "ClusterCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>Provides the master username for the DB cluster snapshot.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Provides the version of the database engine for this DB cluster snapshot.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>Provides the license model information for this DB cluster snapshot.</p>"
        },
        "SnapshotType": {
          "shape": "String",
          "documentation": "<p>Provides the type of the DB cluster snapshot.</p>"
        },
        "PercentProgress": {
          "shape": "Integer",
          "documentation": "<p>Specifies the percentage of the estimated data that has been transferred.</p>"
        },
        "StorageEncrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the DB cluster snapshot is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>If <code>StorageEncrypted</code> is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.</p>"
        },
        "DBClusterSnapshotArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB cluster snapshot.</p>"
        },
        "SourceDBClusterSnapshotArn": {
          "shape": "String",
          "documentation": "<p>If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon Resource Name (ARN) for the source DB cluster snapshot, otherwise, a null value.</p>"
        },
        "IAMDatabaseAuthenticationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>"
        }
      },
      "documentation": "<p>Contains the details for an Amazon RDS DB cluster snapshot </p> <p>This data type is used as a response element in the <code>DescribeDBClusterSnapshots</code> action. </p>",
      "wrapper": true
    },
    "DBClusterSnapshotAttribute": {
      "type": "structure",
      "members": {
        "AttributeName": {
          "shape": "String",
          "documentation": "<p>The name of the manual DB cluster snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p>"
        },
        "AttributeValues": {
          "shape": "AttributeValueList",
          "documentation": "<p>The value(s) for the manual DB cluster snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster snapshot is public and available for any AWS account to copy or restore.</p>"
        }
      },
      "documentation": "<p>Contains the name and values of a manual DB cluster snapshot attribute.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p>"
    },
    "DBClusterSnapshotAttributeList": {
      "type": "list",
      "member": {
        "shape": "DBClusterSnapshotAttribute",
        "locationName": "DBClusterSnapshotAttribute"
      }
    },
    "DBClusterSnapshotAttributesResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the manual DB cluster snapshot that the attributes apply to.</p>"
        },
        "DBClusterSnapshotAttributes": {
          "shape": "DBClusterSnapshotAttributeList",
          "documentation": "<p>The list of attributes and values for the manual DB cluster snapshot.</p>"
        }
      },
      "documentation": "<p>Contains the results of a successful call to the <code>DescribeDBClusterSnapshotAttributes</code> API action.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p>",
      "wrapper": true
    },
    "DBClusterSnapshotList": {
      "type": "list",
      "member": {
        "shape": "DBClusterSnapshot",
        "locationName": "DBClusterSnapshot"
      }
    },
    "DBClusterSnapshotMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DBClusterSnapshots": {
          "shape": "DBClusterSnapshotList",
          "documentation": "<p>Provides a list of DB cluster snapshots for the user.</p>"
        }
      },
      "documentation": "<p> Provides a list of DB cluster snapshots for the user as the result of a call to the <code>DescribeDBClusterSnapshots</code> action. </p>"
    },
    "DBEngineVersion": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine.</p>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group family for the database engine.</p>"
        },
        "DBEngineDescription": {
          "shape": "String",
          "documentation": "<p>The description of the database engine.</p>"
        },
        "DBEngineVersionDescription": {
          "shape": "String",
          "documentation": "<p>The description of the database engine version.</p>"
        },
        "DefaultCharacterSet": {
          "shape": "CharacterSet",
          "documentation": "<p> The default character set for new instances of this engine version, if the <code>CharacterSetName</code> parameter of the CreateDBInstance API isn't specified. </p>"
        },
        "SupportedCharacterSets": {
          "shape": "SupportedCharacterSetsList",
          "documentation": "<p> A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> action. </p>"
        },
        "ValidUpgradeTarget": {
          "shape": "ValidUpgradeTargetList",
          "documentation": "<p>A list of engine versions that this database engine version can be upgraded to.</p>"
        },
        "SupportedTimezones": {
          "shape": "SupportedTimezonesList",
          "documentation": "<p>A list of the time zones supported by this engine for the <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action. </p>"
        },
        "ExportableLogTypes": {
          "shape": "LogTypeList",
          "documentation": "<p>The types of logs that the database engine has available for export to CloudWatch Logs.</p>"
        },
        "SupportsLogExportsToCloudwatchLogs": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.</p>"
        },
        "SupportsReadReplica": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the database engine version supports read replicas.</p>"
        },
        "SupportedEngineModes": {
          "shape": "EngineModeList",
          "documentation": "<p>A list of the supported DB engine modes.</p> <note> <p> <code>global</code> engine mode only applies for global database clusters created with Aurora MySQL version 5.6.10a. For higher Aurora MySQL versions, the clusters in a global database use <code>provisioned</code> engine mode. </p> </note>"
        },
        "SupportedFeatureNames": {
          "shape": "FeatureNameList",
          "documentation": "<p> A list of features supported by the DB engine. Supported feature names include the following. </p> <ul> <li> <p>s3Import</p> </li> </ul>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the DB engine version, either <code>available</code> or <code>deprecated</code>.</p>"
        },
        "SupportsParallelQuery": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether you can use Aurora parallel query with a specific DB engine version.</p>"
        },
        "SupportsGlobalDatabases": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether you can use Aurora global databases with a specific DB engine version.</p>"
        }
      },
      "documentation": "<p> This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>. </p>"
    },
    "DBEngineVersionList": {
      "type": "list",
      "member": {
        "shape": "DBEngineVersion",
        "locationName": "DBEngineVersion"
      }
    },
    "DBEngineVersionMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DBEngineVersions": {
          "shape": "DBEngineVersionList",
          "documentation": "<p> A list of <code>DBEngineVersion</code> elements. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeDBEngineVersions</code> action. </p>"
    },
    "DBInstance": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>Contains the name of the compute and memory capacity class of the DB instance.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>Provides the name of the database engine to be used for this DB instance.</p>"
        },
        "DBInstanceStatus": {
          "shape": "String",
          "documentation": "<p>Specifies the current state of this database.</p> <p>For information about DB instance statuses, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html\">DB Instance Status</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>Contains the master username for the DB instance.</p>"
        },
        "DBName": {
          "shape": "String",
          "documentation": "<p>The meaning of this parameter differs according to the database engine you use.</p> <p> <b>MySQL, MariaDB, SQL Server, PostgreSQL</b> </p> <p>Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.</p> <p>Type: String</p> <p> <b>Oracle</b> </p> <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.</p>"
        },
        "Endpoint": {
          "shape": "Endpoint",
          "documentation": "<p>Specifies the connection endpoint.</p>"
        },
        "AllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>Specifies the allocated storage size specified in gibibytes.</p>"
        },
        "InstanceCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Provides the date and time the DB instance was created.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p> Specifies the daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code>. </p>"
        },
        "BackupRetentionPeriod": {
          "shape": "Integer",
          "documentation": "<p>Specifies the number of days for which automatic DB snapshots are retained.</p>"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroupMembershipList",
          "documentation": "<p> A list of DB security group elements containing <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements. </p>"
        },
        "VpcSecurityGroups": {
          "shape": "VpcSecurityGroupMembershipList",
          "documentation": "<p>Provides a list of VPC security group elements that the DB instance belongs to.</p>"
        },
        "DBParameterGroups": {
          "shape": "DBParameterGroupStatusList",
          "documentation": "<p>Provides the list of DB parameter groups applied to this DB instance.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Availability Zone the DB instance is located in.</p>"
        },
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup",
          "documentation": "<p>Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>"
        },
        "PendingModifiedValues": {
          "shape": "PendingModifiedValues",
          "documentation": "<p>Specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.</p>"
        },
        "LatestRestorableTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>"
        },
        "MultiAZ": {
          "shape": "Boolean",
          "documentation": "<p>Specifies if the DB instance is a Multi-AZ deployment.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the database engine version.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>Indicates that minor version patches are applied automatically.</p>"
        },
        "ReadReplicaSourceDBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>Contains the identifier of the source DB instance if this DB instance is a read replica.</p>"
        },
        "ReadReplicaDBInstanceIdentifiers": {
          "shape": "ReadReplicaDBInstanceIdentifierList",
          "documentation": "<p>Contains one or more identifiers of the read replicas associated with this DB instance.</p>"
        },
        "ReadReplicaDBClusterIdentifiers": {
          "shape": "ReadReplicaDBClusterIdentifierList",
          "documentation": "<p>Contains one or more identifiers of Aurora DB clusters to which the RDS DB instance is replicated as a read replica. For example, when you create an Aurora read replica of an RDS MySQL DB instance, the Aurora MySQL DB cluster for the Aurora read replica is shown. This output does not contain information about cross region Aurora read replicas.</p> <note> <p>Currently, each RDS DB instance can have only one Aurora read replica.</p> </note>"
        },
        "ReplicaMode": {
          "shape": "ReplicaMode",
          "documentation": "<p>The open mode of an Oracle read replica. The default is <code>open-read-only</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html\">Working with Oracle Read Replicas for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>.</p> <note> <p>This attribute is only supported in RDS for Oracle.</p> </note>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>License model information for this DB instance.</p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>"
        },
        "OptionGroupMemberships": {
          "shape": "OptionGroupMembershipList",
          "documentation": "<p>Provides the list of option group memberships for this DB instance.</p>"
        },
        "CharacterSetName": {
          "shape": "String",
          "documentation": "<p>If present, specifies the name of the character set that this instance is associated with.</p>"
        },
        "SecondaryAvailabilityZone": {
          "shape": "String",
          "documentation": "<p>If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.</p>"
        },
        "PubliclyAccessible": {
          "shape": "Boolean",
          "documentation": "<p>Specifies the accessibility options for the DB instance.</p> <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p> <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p> <p>For more information, see <a>CreateDBInstance</a>.</p>"
        },
        "StatusInfos": {
          "shape": "DBInstanceStatusInfoList",
          "documentation": "<p>The status of a read replica. If the instance isn't a read replica, this is blank.</p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type associated with DB instance.</p>"
        },
        "TdeCredentialArn": {
          "shape": "String",
          "documentation": "<p>The ARN from the key store with which the instance is associated for TDE encryption.</p>"
        },
        "DbInstancePort": {
          "shape": "Integer",
          "documentation": "<p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.</p>"
        },
        "StorageEncrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the DB instance is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p> If <code>StorageEncrypted</code> is true, the AWS KMS key identifier for the encrypted DB instance. </p>"
        },
        "DbiResourceId": {
          "shape": "String",
          "documentation": "<p>The AWS Region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB instance is accessed.</p>"
        },
        "CACertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the CA certificate for this DB instance.</p>"
        },
        "DomainMemberships": {
          "shape": "DomainMembershipList",
          "documentation": "<p>The Active Directory Domain membership records associated with the DB instance.</p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether tags are copied from the DB instance to snapshots of the DB instance.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this value for an Aurora DB instance has no effect on the DB cluster setting. For more information, see <code>DBCluster</code>.</p>"
        },
        "MonitoringInterval": {
          "shape": "IntegerOptional",
          "documentation": "<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.</p>"
        },
        "EnhancedMonitoringResourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.</p>"
        },
        "MonitoringRoleArn": {
          "shape": "String",
          "documentation": "<p>The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.</p>"
        },
        "PromotionTier": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance\"> Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>. </p>"
        },
        "DBInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB instance.</p>"
        },
        "Timezone": {
          "shape": "String",
          "documentation": "<p>The time zone of the DB instance. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for Microsoft SQL Server DB instances that were created with a time zone specified. </p>"
        },
        "IAMDatabaseAuthenticationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p> <p>IAM database authentication can be enabled for the following database engines</p> <ul> <li> <p>For MySQL 5.6, minor version 5.6.34 or higher</p> </li> <li> <p>For MySQL 5.7, minor version 5.7.16 or higher</p> </li> <li> <p>Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.</p> </li> </ul>"
        },
        "PerformanceInsightsEnabled": {
          "shape": "BooleanOptional",
          "documentation": "<p>True if Performance Insights is enabled for the DB instance, and otherwise false.</p>"
        },
        "PerformanceInsightsKMSKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>"
        },
        "PerformanceInsightsRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
        },
        "EnabledCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>A list of log types that this DB instance is configured to export to CloudWatch Logs.</p> <p>Log types vary by DB engine. For information about the log types for each DB engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html\">Amazon RDS Database Log Files</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
        },
        "DeletionProtection": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\"> Deleting a DB Instance</a>. </p>"
        },
        "AssociatedRoles": {
          "shape": "DBInstanceRoles",
          "documentation": "<p> The AWS Identity and Access Management (IAM) roles associated with the DB instance. </p>"
        },
        "ListenerEndpoint": {
          "shape": "Endpoint",
          "documentation": "<p>Specifies the listener connection endpoint for SQL Server Always On.</p>"
        },
        "MaxAllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>"
        }
      },
      "documentation": "<p>Contains the details of an Amazon RDS DB instance. </p> <p>This data type is used as a response element in the <code>DescribeDBInstances</code> action. </p>",
      "wrapper": true
    },
    "DBInstanceAutomatedBackup": {
      "type": "structure",
      "members": {
        "DBInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the automated backup.</p>"
        },
        "DbiResourceId": {
          "shape": "String",
          "documentation": "<p>The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.</p>"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The AWS Region associated with the automated backup.</p>"
        },
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The customer id of the instance that is/was associated with the automated backup. </p>"
        },
        "RestoreWindow": {
          "shape": "RestoreWindow",
          "documentation": "<p>Earliest and latest time an instance can be restored to.</p>"
        },
        "AllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>Specifies the allocated storage size in gibibytes (GiB).</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Provides a list of status information for an automated backup:</p> <ul> <li> <p> <code>active</code> - automated backups for current instances</p> </li> <li> <p> <code>retained</code> - automated backups for deleted instances</p> </li> <li> <p> <code>creating</code> - automated backups that are waiting for the first automated snapshot to be available.</p> </li> </ul>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>The port number that the automated backup used for connections.</p> <p>Default: Inherits from the source DB instance</p> <p>Valid Values: <code>1150-65535</code> </p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone that the automated backup was created in. For information on AWS Regions and Availability Zones, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html\">Regions and Availability Zones</a>.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>Provides the VPC ID associated with the DB instance</p>"
        },
        "InstanceCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Provides the date and time that the DB instance was created. </p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The license model of an automated backup.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine for this automated backup.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version of the database engine for the automated backup.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>License model information for the automated backup.</p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>The IOPS (I/O operations per second) value for the automated backup. </p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The option group the automated backup is associated with. If omitted, the default option group for the engine specified is used.</p>"
        },
        "TdeCredentialArn": {
          "shape": "String",
          "documentation": "<p>The ARN from the key store with which the automated backup is associated for TDE encryption.</p>"
        },
        "Encrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the automated backup is encrypted.</p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type associated with the automated backup.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key ID for an automated backup. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key. </p>"
        },
        "Timezone": {
          "shape": "String",
          "documentation": "<p>The time zone of the automated backup. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for Microsoft SQL Server DB instances that were created with a time zone specified.</p>"
        },
        "IAMDatabaseAuthenticationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>"
        }
      },
      "documentation": "<p>An automated backup of a DB instance. It it consists of system backups, transaction logs, and the database instance properties that existed at the time you deleted the source instance. </p>",
      "wrapper": true
    },
    "DBInstanceAutomatedBackupList": {
      "type": "list",
      "member": {
        "shape": "DBInstanceAutomatedBackup",
        "locationName": "DBInstanceAutomatedBackup"
      }
    },
    "DBInstanceAutomatedBackupMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        },
        "DBInstanceAutomatedBackups": {
          "shape": "DBInstanceAutomatedBackupList",
          "documentation": "<p> A list of <code>DBInstanceAutomatedBackup</code> instances. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeDBInstanceAutomatedBackups</code> action. </p>"
    },
    "DBInstanceList": {
      "type": "list",
      "member": {
        "shape": "DBInstance",
        "locationName": "DBInstance"
      }
    },
    "DBInstanceMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        },
        "DBInstances": {
          "shape": "DBInstanceList",
          "documentation": "<p> A list of <code>DBInstance</code> instances. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeDBInstances</code> action. </p>"
    },
    "DBInstanceRole": {
      "type": "structure",
      "members": {
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB instance.</p>"
        },
        "FeatureName": {
          "shape": "String",
          "documentation": "<p>The name of the feature associated with the AWS Identity and Access Management (IAM) role. For the list of supported feature names, see <code>DBEngineVersion</code>. </p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Describes the state of association between the IAM role and the DB instance. The Status property returns one of the following values:</p> <ul> <li> <p> <code>ACTIVE</code> - the IAM role ARN is associated with the DB instance and can be used to access other AWS services on your behalf.</p> </li> <li> <p> <code>PENDING</code> - the IAM role ARN is being associated with the DB instance.</p> </li> <li> <p> <code>INVALID</code> - the IAM role ARN is associated with the DB instance, but the DB instance is unable to assume the IAM role in order to access other AWS services on your behalf.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB instance.</p>"
    },
    "DBInstanceRoles": {
      "type": "list",
      "member": {
        "shape": "DBInstanceRole",
        "locationName": "DBInstanceRole"
      }
    },
    "DBInstanceStatusInfo": {
      "type": "structure",
      "members": {
        "StatusType": {
          "shape": "String",
          "documentation": "<p>This value is currently \"read replication.\"</p>"
        },
        "Normal": {
          "shape": "Boolean",
          "documentation": "<p>Boolean value that is true if the instance is operating normally, or false if the instance is in an error state.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Status of the DB instance. For a StatusType of read replica, the values can be replicating, replication stop point set, replication stop point reached, error, stopped, or terminated.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>Details of the error if there is an error for the instance. If the instance isn't in an error state, this value is blank.</p>"
        }
      },
      "documentation": "<p>Provides a list of status information for a DB instance.</p>"
    },
    "DBInstanceStatusInfoList": {
      "type": "list",
      "member": {
        "shape": "DBInstanceStatusInfo",
        "locationName": "DBInstanceStatusInfo"
      }
    },
    "DBParameterGroup": {
      "type": "structure",
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>Provides the name of the DB parameter group.</p>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>Provides the name of the DB parameter group family that this DB parameter group is compatible with.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>Provides the customer-specified description for this DB parameter group.</p>"
        },
        "DBParameterGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB parameter group.</p>"
        }
      },
      "documentation": "<p>Contains the details of an Amazon RDS DB parameter group. </p> <p>This data type is used as a response element in the <code>DescribeDBParameterGroups</code> action. </p>",
      "wrapper": true
    },
    "DBParameterGroupDetails": {
      "type": "structure",
      "members": {
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p> A list of <code>Parameter</code> values. </p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeDBParameters</code> action. </p>"
    },
    "DBParameterGroupList": {
      "type": "list",
      "member": {
        "shape": "DBParameterGroup",
        "locationName": "DBParameterGroup"
      }
    },
    "DBParameterGroupNameMessage": {
      "type": "structure",
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>Provides the name of the DB parameter group.</p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>ModifyDBParameterGroup</code> or <code>ResetDBParameterGroup</code> action. </p>"
    },
    "DBParameterGroupStatus": {
      "type": "structure",
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group.</p>"
        },
        "ParameterApplyStatus": {
          "shape": "String",
          "documentation": "<p>The status of parameter updates.</p>"
        }
      },
      "documentation": "<p>The status of the DB parameter group.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>CreateDBInstance</code> </p> </li> <li> <p> <code>CreateDBInstanceReadReplica</code> </p> </li> <li> <p> <code>DeleteDBInstance</code> </p> </li> <li> <p> <code>ModifyDBInstance</code> </p> </li> <li> <p> <code>RebootDBInstance</code> </p> </li> <li> <p> <code>RestoreDBInstanceFromDBSnapshot</code> </p> </li> </ul>"
    },
    "DBParameterGroupStatusList": {
      "type": "list",
      "member": {
        "shape": "DBParameterGroupStatus",
        "locationName": "DBParameterGroup"
      }
    },
    "DBParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DBParameterGroups": {
          "shape": "DBParameterGroupList",
          "documentation": "<p> A list of <code>DBParameterGroup</code> instances. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeDBParameterGroups</code> action. </p>"
    },
    "DBProxy": {
      "type": "structure",
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region.</p>"
        },
        "DBProxyArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the proxy.</p>"
        },
        "Status": {
          "shape": "DBProxyStatus",
          "documentation": "<p>The current status of this proxy. A status of <code>available</code> means the proxy is ready to handle requests. Other values indicate that you must wait for the proxy to be ready, or take some action to resolve an issue.</p>"
        },
        "EngineFamily": {
          "shape": "String",
          "documentation": "<p>The engine family applies to MySQL and PostgreSQL for both RDS and Aurora.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "StringList",
          "documentation": "<p>Provides a list of VPC security groups that the proxy belongs to.</p>"
        },
        "VpcSubnetIds": {
          "shape": "StringList",
          "documentation": "<p>The EC2 subnet IDs for the proxy.</p>"
        },
        "Auth": {
          "shape": "UserAuthConfigInfoList",
          "documentation": "<p>One or more data structures specifying the authorization mechanism to connect to the associated RDS DB instance or Aurora DB cluster.</p>"
        },
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the IAM role that the proxy uses to access Amazon Secrets Manager.</p>"
        },
        "Endpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.</p>"
        },
        "RequireTLS": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether Transport Layer Security (TLS) encryption is required for connections to the proxy.</p>"
        },
        "IdleClientTimeout": {
          "shape": "Integer",
          "documentation": "<p>The number of seconds a connection to the proxy can have no activity before the proxy drops the client connection. The proxy keeps the underlying database connection open and puts it back into the connection pool for reuse by later connection requests.</p> <p>Default: 1800 (30 minutes)</p> <p>Constraints: 1 to 28,800</p>"
        },
        "DebugLogging": {
          "shape": "Boolean",
          "documentation": "<p>Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.</p>"
        },
        "CreatedDate": {
          "shape": "TStamp",
          "documentation": "<p>The date and time when the proxy was first created.</p>"
        },
        "UpdatedDate": {
          "shape": "TStamp",
          "documentation": "<p>The date and time when the proxy was last updated.</p>"
        }
      },
      "documentation": "<p>The data structure representing a proxy managed by the RDS Proxy.</p> <p>This data type is used as a response element in the <code>DescribeDBProxies</code> action.</p>"
    },
    "DBProxyList": {
      "type": "list",
      "member": {
        "shape": "DBProxy"
      }
    },
    "DBProxyStatus": {
      "type": "string",
      "enum": [
        "available",
        "modifying",
        "incompatible-network",
        "insufficient-resource-limits",
        "creating",
        "deleting",
        "suspended",
        "suspending",
        "reactivating"
      ]
    },
    "DBProxyTarget": {
      "type": "structure",
      "members": {
        "TargetArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the RDS DB instance or Aurora DB cluster.</p>"
        },
        "Endpoint": {
          "shape": "String",
          "documentation": "<p>The writer endpoint for the RDS DB instance or Aurora DB cluster.</p>"
        },
        "TrackedClusterId": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier when the target represents an Aurora DB cluster. This field is blank when the target represents an RDS DB instance.</p>"
        },
        "RdsResourceId": {
          "shape": "String",
          "documentation": "<p>The identifier representing the target. It can be the instance identifier for an RDS DB instance, or the cluster identifier for an Aurora DB cluster.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>The port that the RDS Proxy uses to connect to the target RDS DB instance or Aurora DB cluster.</p>"
        },
        "Type": {
          "shape": "TargetType",
          "documentation": "<p>Specifies the kind of database, such as an RDS DB instance or an Aurora DB cluster, that the target represents.</p>"
        },
        "TargetHealth": {
          "shape": "TargetHealth",
          "documentation": "<p>Information about the connection health of the RDS Proxy target.</p>"
        }
      },
      "documentation": "<p>Contains the details for an RDS Proxy target. It represents an RDS DB instance or Aurora DB cluster that the proxy can connect to. One or more targets are associated with an RDS Proxy target group.</p> <p>This data type is used as a response element in the <code>DescribeDBProxyTargets</code> action.</p>"
    },
    "DBProxyTargetGroup": {
      "type": "structure",
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The identifier for the RDS proxy associated with this target group.</p>"
        },
        "TargetGroupName": {
          "shape": "String",
          "documentation": "<p>The identifier for the target group. This name must be unique for all target groups owned by your AWS account in the specified AWS Region.</p>"
        },
        "TargetGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) representing the target group.</p>"
        },
        "IsDefault": {
          "shape": "Boolean",
          "documentation": "<p>Whether this target group is the first one used for connection requests by the associated proxy. Because each proxy is currently associated with a single target group, currently this setting is always <code>true</code>.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The current status of this target group. A status of <code>available</code> means the target group is correctly associated with a database. Other values indicate that you must wait for the target group to be ready, or take some action to resolve an issue.</p>"
        },
        "ConnectionPoolConfig": {
          "shape": "ConnectionPoolConfigurationInfo",
          "documentation": "<p>The settings that determine the size and behavior of the connection pool for the target group.</p>"
        },
        "CreatedDate": {
          "shape": "TStamp",
          "documentation": "<p>The date and time when the target group was first created.</p>"
        },
        "UpdatedDate": {
          "shape": "TStamp",
          "documentation": "<p>The date and time when the target group was last updated.</p>"
        }
      },
      "documentation": "<p>Represents a set of RDS DB instances, Aurora DB clusters, or both that a proxy can connect to. Currently, each target group is associated with exactly one RDS DB instance or Aurora DB cluster.</p> <p>This data type is used as a response element in the <code>DescribeDBProxyTargetGroups</code> action.</p>"
    },
    "DBSecurityGroup": {
      "type": "structure",
      "members": {
        "OwnerId": {
          "shape": "String",
          "documentation": "<p>Provides the AWS ID of the owner of a specific DB security group.</p>"
        },
        "DBSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the DB security group.</p>"
        },
        "DBSecurityGroupDescription": {
          "shape": "String",
          "documentation": "<p>Provides the description of the DB security group.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>Provides the VpcId of the DB security group.</p>"
        },
        "EC2SecurityGroups": {
          "shape": "EC2SecurityGroupList",
          "documentation": "<p> Contains a list of <code>EC2SecurityGroup</code> elements. </p>"
        },
        "IPRanges": {
          "shape": "IPRangeList",
          "documentation": "<p> Contains a list of <code>IPRange</code> elements. </p>"
        },
        "DBSecurityGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB security group.</p>"
        }
      },
      "documentation": "<p>Contains the details for an Amazon RDS DB security group. </p> <p>This data type is used as a response element in the <code>DescribeDBSecurityGroups</code> action. </p>",
      "wrapper": true
    },
    "DBSecurityGroupMembership": {
      "type": "structure",
      "members": {
        "DBSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB security group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the DB security group.</p>"
        }
      },
      "documentation": "<p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>ModifyDBInstance</code> </p> </li> <li> <p> <code>RebootDBInstance</code> </p> </li> <li> <p> <code>RestoreDBInstanceFromDBSnapshot</code> </p> </li> <li> <p> <code>RestoreDBInstanceToPointInTime</code> </p> </li> </ul>"
    },
    "DBSecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "DBSecurityGroupMembership",
        "locationName": "DBSecurityGroup"
      }
    },
    "DBSecurityGroupMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroups",
          "documentation": "<p> A list of <code>DBSecurityGroup</code> instances. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeDBSecurityGroups</code> action. </p>"
    },
    "DBSecurityGroupNameList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "DBSecurityGroupName"
      }
    },
    "DBSecurityGroups": {
      "type": "list",
      "member": {
        "shape": "DBSecurityGroup",
        "locationName": "DBSecurityGroup"
      }
    },
    "DBSnapshot": {
      "type": "structure",
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the identifier for the DB snapshot.</p>"
        },
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the DB instance identifier of the DB instance this DB snapshot was created from.</p>"
        },
        "SnapshotCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies when the snapshot was taken in Coodinated Universal Time (UTC).</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the database engine.</p>"
        },
        "AllocatedStorage": {
          "shape": "Integer",
          "documentation": "<p>Specifies the allocated storage size in gibibytes (GiB).</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Specifies the status of this DB snapshot.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>Specifies the port that the database engine was listening on at the time of the snapshot.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>Provides the VPC ID associated with the DB snapshot.</p>"
        },
        "InstanceCreateTime": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from which the snapshot was taken, was created.</p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>Provides the master username for the DB snapshot.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Specifies the version of the database engine.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>License model information for the restored DB instance.</p>"
        },
        "SnapshotType": {
          "shape": "String",
          "documentation": "<p>Provides the type of the DB snapshot.</p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>Provides the option group name for the DB snapshot.</p>"
        },
        "PercentProgress": {
          "shape": "Integer",
          "documentation": "<p>The percentage of the estimated data that has been transferred.</p>"
        },
        "SourceRegion": {
          "shape": "String",
          "documentation": "<p>The AWS Region that the DB snapshot was created in or copied from.</p>"
        },
        "SourceDBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was copied from. It only has value in case of cross-customer or cross-region copy.</p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type associated with DB snapshot.</p>"
        },
        "TdeCredentialArn": {
          "shape": "String",
          "documentation": "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
        },
        "Encrypted": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the DB snapshot is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p> If <code>Encrypted</code> is true, the AWS KMS key identifier for the encrypted DB snapshot. </p>"
        },
        "DBSnapshotArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB snapshot.</p>"
        },
        "Timezone": {
          "shape": "String",
          "documentation": "<p>The time zone of the DB snapshot. In most cases, the <code>Timezone</code> element is empty. <code>Timezone</code> content appears only for snapshots taken from Microsoft SQL Server DB instances that were created with a time zone specified. </p>"
        },
        "IAMDatabaseAuthenticationEnabled": {
          "shape": "Boolean",
          "documentation": "<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance when the DB snapshot was created.</p>"
        },
        "DbiResourceId": {
          "shape": "String",
          "documentation": "<p>The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.</p>"
        }
      },
      "documentation": "<p>Contains the details of an Amazon RDS DB snapshot. </p> <p>This data type is used as a response element in the <code>DescribeDBSnapshots</code> action. </p>",
      "wrapper": true
    },
    "DBSnapshotAttribute": {
      "type": "structure",
      "members": {
        "AttributeName": {
          "shape": "String",
          "documentation": "<p>The name of the manual DB snapshot attribute.</p> <p>The attribute named <code>restore</code> refers to the list of AWS accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code> API action.</p>"
        },
        "AttributeValues": {
          "shape": "AttributeValueList",
          "documentation": "<p>The value or values for the manual DB snapshot attribute.</p> <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual DB snapshot. If a value of <code>all</code> is in the list, then the manual DB snapshot is public and available for any AWS account to copy or restore.</p>"
        }
      },
      "documentation": "<p>Contains the name and values of a manual DB snapshot attribute</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code> API.</p>",
      "wrapper": true
    },
    "DBSnapshotAttributeList": {
      "type": "list",
      "member": {
        "shape": "DBSnapshotAttribute",
        "locationName": "DBSnapshotAttribute"
      }
    },
    "DBSnapshotAttributesResult": {
      "type": "structure",
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the manual DB snapshot that the attributes apply to.</p>"
        },
        "DBSnapshotAttributes": {
          "shape": "DBSnapshotAttributeList",
          "documentation": "<p>The list of attributes and values for the manual DB snapshot.</p>"
        }
      },
      "documentation": "<p>Contains the results of a successful call to the <code>DescribeDBSnapshotAttributes</code> API action.</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code> API action.</p>",
      "wrapper": true
    },
    "DBSnapshotList": {
      "type": "list",
      "member": {
        "shape": "DBSnapshot",
        "locationName": "DBSnapshot"
      }
    },
    "DBSnapshotMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DBSnapshots": {
          "shape": "DBSnapshotList",
          "documentation": "<p> A list of <code>DBSnapshot</code> instances. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeDBSnapshots</code> action. </p>"
    },
    "DBSubnetGroup": {
      "type": "structure",
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB subnet group.</p>"
        },
        "DBSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>Provides the description of the DB subnet group.</p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>Provides the VpcId of the DB subnet group.</p>"
        },
        "SubnetGroupStatus": {
          "shape": "String",
          "documentation": "<p>Provides the status of the DB subnet group.</p>"
        },
        "Subnets": {
          "shape": "SubnetList",
          "documentation": "<p> Contains a list of <code>Subnet</code> elements. </p>"
        },
        "DBSubnetGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the DB subnet group.</p>"
        }
      },
      "documentation": "<p>Contains the details of an Amazon RDS DB subnet group. </p> <p>This data type is used as a response element in the <code>DescribeDBSubnetGroups</code> action. </p>",
      "wrapper": true
    },
    "DBSubnetGroupMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DBSubnetGroups": {
          "shape": "DBSubnetGroups",
          "documentation": "<p> A list of <code>DBSubnetGroup</code> instances. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeDBSubnetGroups</code> action. </p>"
    },
    "DBSubnetGroups": {
      "type": "list",
      "member": {
        "shape": "DBSubnetGroup",
        "locationName": "DBSubnetGroup"
      }
    },
    "DeleteCustomAvailabilityZoneMessage": {
      "type": "structure",
      "required": [
        "CustomAvailabilityZoneId"
      ],
      "members": {
        "CustomAvailabilityZoneId": {
          "shape": "String",
          "documentation": "<p>The custom AZ identifier.</p>"
        }
      }
    },
    "DeleteCustomAvailabilityZoneResult": {
      "type": "structure",
      "members": {
        "CustomAvailabilityZone": {
          "shape": "CustomAvailabilityZone"
        }
      }
    },
    "DeleteDBClusterEndpointMessage": {
      "type": "structure",
      "required": [
        "DBClusterEndpointIdentifier"
      ],
      "members": {
        "DBClusterEndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.</p>"
        }
      }
    },
    "DeleteDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match an existing DBClusterIdentifier.</p> </li> </ul>"
        },
        "SkipFinalSnapshot": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to skip the creation of a final DB cluster snapshot before the DB cluster is deleted. If skip is specified, no DB cluster snapshot is created. If skip isn't specified, a DB cluster snapshot is created before the DB cluster is deleted. By default, skip isn't specified, and the DB cluster snapshot is created. By default, this parameter is disabled.</p> <note> <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if <code>SkipFinalSnapshot</code> is disabled.</p> </note>"
        },
        "FinalDBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p> The DB cluster snapshot identifier of the new DB cluster snapshot created when <code>SkipFinalSnapshot</code> is disabled. </p> <note> <p> Specifying this parameter and also skipping the creation of a final DB cluster snapshot with the <code>SkipFinalShapshot</code> parameter results in an error.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB cluster parameter group.</p> </li> <li> <p>You can't delete a default DB cluster parameter group.</p> </li> <li> <p>Can't be associated with any DB clusters.</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "DeleteDBClusterSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBClusterSnapshotIdentifier"
      ],
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB cluster snapshot to delete.</p> <p>Constraints: Must be the name of an existing DB cluster snapshot in the <code>available</code> state.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteDBClusterSnapshotResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshot": {
          "shape": "DBClusterSnapshot"
        }
      }
    },
    "DeleteDBInstanceAutomatedBackupMessage": {
      "type": "structure",
      "required": [
        "DbiResourceId"
      ],
      "members": {
        "DbiResourceId": {
          "shape": "String",
          "documentation": "<p>The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.</p>"
        }
      },
      "documentation": "<p>Parameter input for the <code>DeleteDBInstanceAutomatedBackup</code> operation. </p>"
    },
    "DeleteDBInstanceAutomatedBackupResult": {
      "type": "structure",
      "members": {
        "DBInstanceAutomatedBackup": {
          "shape": "DBInstanceAutomatedBackup"
        }
      }
    },
    "DeleteDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the name of an existing DB instance.</p> </li> </ul>"
        },
        "SkipFinalSnapshot": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to skip the creation of a final DB snapshot before the DB instance is deleted. If skip is specified, no DB snapshot is created. If skip isn't specified, a DB snapshot is created before the DB instance is deleted. By default, skip isn't specified, and the DB snapshot is created.</p> <p>When a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when skip is specified.</p> <p>Specify skip when deleting a read replica.</p> <note> <p>The FinalDBSnapshotIdentifier parameter must be specified if skip isn't specified.</p> </note>"
        },
        "FinalDBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p> The <code>DBSnapshotIdentifier</code> of the new <code>DBSnapshot</code> created when the <code>SkipFinalSnapshot</code> parameter is disabled. </p> <note> <p>Specifying this parameter and also specifying to skip final DB snapshot creation in SkipFinalShapshot results in an error.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters or numbers.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> <li> <p>Can't be specified when deleting a read replica.</p> </li> </ul>"
        },
        "DeleteAutomatedBackups": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to remove automated backups immediately after the DB instance is deleted. This parameter isn't case-sensitive. The default is to remove automated backups immediately after the DB instance is deleted.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "DeleteDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must be the name of an existing DB parameter group</p> </li> <li> <p>You can't delete a default DB parameter group</p> </li> <li> <p>Can't be associated with any DB instances</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteDBProxyRequest": {
      "type": "structure",
      "required": [
        "DBProxyName"
      ],
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The name of the DB proxy to delete.</p>"
        }
      }
    },
    "DeleteDBProxyResponse": {
      "type": "structure",
      "members": {
        "DBProxy": {
          "shape": "DBProxy",
          "documentation": "<p>The data structure representing the details of the DB proxy that you delete.</p>"
        }
      }
    },
    "DeleteDBSecurityGroupMessage": {
      "type": "structure",
      "required": [
        "DBSecurityGroupName"
      ],
      "members": {
        "DBSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB security group to delete.</p> <note> <p>You can't delete the default DB security group.</p> </note> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> <li> <p>Must not be \"Default\"</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBSnapshotIdentifier"
      ],
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB snapshot identifier.</p> <p>Constraints: Must be the name of an existing DB snapshot in the <code>available</code> state.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBSnapshot": {
          "shape": "DBSnapshot"
        }
      }
    },
    "DeleteDBSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "DBSubnetGroupName"
      ],
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the database subnet group to delete.</p> <note> <p>You can't delete the default subnet group.</p> </note> <p>Constraints:</p> <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the RDS event notification subscription you want to delete.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteEventSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "DeleteGlobalClusterMessage": {
      "type": "structure",
      "required": [
        "GlobalClusterIdentifier"
      ],
      "members": {
        "GlobalClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> The cluster identifier of the global database cluster being deleted. </p>"
        }
      }
    },
    "DeleteGlobalClusterResult": {
      "type": "structure",
      "members": {
        "GlobalCluster": {
          "shape": "GlobalCluster"
        }
      }
    },
    "DeleteInstallationMediaMessage": {
      "type": "structure",
      "required": [
        "InstallationMediaId"
      ],
      "members": {
        "InstallationMediaId": {
          "shape": "String",
          "documentation": "<p>The installation medium ID.</p>"
        }
      }
    },
    "DeleteOptionGroupMessage": {
      "type": "structure",
      "required": [
        "OptionGroupName"
      ],
      "members": {
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group to be deleted.</p> <note> <p>You can't delete default option groups.</p> </note>"
        }
      },
      "documentation": "<p/>"
    },
    "DeregisterDBProxyTargetsRequest": {
      "type": "structure",
      "required": [
        "DBProxyName"
      ],
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The identifier of the <code>DBProxy</code> that is associated with the <code>DBProxyTargetGroup</code>.</p>"
        },
        "TargetGroupName": {
          "shape": "String",
          "documentation": "<p>The identifier of the <code>DBProxyTargetGroup</code>.</p>"
        },
        "DBInstanceIdentifiers": {
          "shape": "StringList",
          "documentation": "<p>One or more DB instance identifiers.</p>"
        },
        "DBClusterIdentifiers": {
          "shape": "StringList",
          "documentation": "<p>One or more DB cluster identifiers.</p>"
        }
      }
    },
    "DeregisterDBProxyTargetsResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeAccountAttributesMessage": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "DescribeCertificatesMessage": {
      "type": "structure",
      "members": {
        "CertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match an existing CertificateIdentifier.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeCertificates</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeCustomAvailabilityZonesMessage": {
      "type": "structure",
      "members": {
        "CustomAvailabilityZoneId": {
          "shape": "String",
          "documentation": "<p>The custom AZ identifier. If this parameter is specified, information from only the specific custom AZ is returned.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more custom AZs to describe.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results.</p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous <code>DescribeCustomAvailabilityZones</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "DescribeDBClusterBacktracksMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier of the DB cluster to be described. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>"
        },
        "BacktrackIdentifier": {
          "shape": "String",
          "documentation": "<p>If specified, this value is the backtrack identifier of the backtrack to be described.</p> <p>Constraints:</p> <ul> <li> <p>Must contain a valid universally unique identifier (UUID). For more information about UUIDs, see <a href=\"http://www.ietf.org/rfc/rfc4122.txt\">A Universally Unique Identifier (UUID) URN Namespace</a>.</p> </li> </ul> <p>Example: <code>123e4567-e89b-12d3-a456-426655440000</code> </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more DB clusters to describe. Supported filters include the following:</p> <ul> <li> <p> <code>db-cluster-backtrack-id</code> - Accepts backtrack identifiers. The results list includes information about only the backtracks identified by these identifiers.</p> </li> <li> <p> <code>db-cluster-backtrack-status</code> - Accepts any of the following backtrack status values:</p> <ul> <li> <p> <code>applying</code> </p> </li> <li> <p> <code>completed</code> </p> </li> <li> <p> <code>failed</code> </p> </li> <li> <p> <code>pending</code> </p> </li> </ul> <p>The results list includes information about only the backtracks identified by these values.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBClusterBacktracks</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBClusterEndpointsMessage": {
      "type": "structure",
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is stored as a lowercase string.</p>"
        },
        "DBClusterEndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the endpoint to describe. This parameter is stored as a lowercase string.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A set of name-value pairs that define which endpoints to include in the output. The filters are specified as name-value pairs, in the format <code>Name=<i>endpoint_type</i>,Values=<i>endpoint_type1</i>,<i>endpoint_type2</i>,...</code>. <code>Name</code> can be one of: <code>db-cluster-endpoint-type</code>, <code>db-cluster-endpoint-custom-type</code>, <code>db-cluster-endpoint-id</code>, <code>db-cluster-endpoint-status</code>. <code>Values</code> for the <code> db-cluster-endpoint-type</code> filter can be one or more of: <code>reader</code>, <code>writer</code>, <code>custom</code>. <code>Values</code> for the <code>db-cluster-endpoint-custom-type</code> filter can be one or more of: <code>reader</code>, <code>any</code>. <code>Values</code> for the <code>db-cluster-endpoint-status</code> filter can be one or more of: <code>available</code>, <code>creating</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBClusterEndpoints</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      }
    },
    "DescribeDBClusterParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a specific DB cluster parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBClusterParametersMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a specific DB cluster parameter group to return parameter details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p> </li> </ul>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p> A value that indicates to return only parameters for a specific source. Parameter sources can be <code>engine</code>, <code>service</code>, or <code>customer</code>. </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBClusterSnapshotAttributesMessage": {
      "type": "structure",
      "required": [
        "DBClusterSnapshotIdentifier"
      ],
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the DB cluster snapshot to describe the attributes for.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBClusterSnapshotAttributesResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshotAttributesResult": {
          "shape": "DBClusterSnapshotAttributesResult"
        }
      }
    },
    "DescribeDBClusterSnapshotsMessage": {
      "type": "structure",
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter can't be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This parameter isn't case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the identifier of an existing DBCluster.</p> </li> </ul>"
        },
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>A specific DB cluster snapshot identifier to describe. This parameter can't be used in conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>"
        },
        "SnapshotType": {
          "shape": "String",
          "documentation": "<p>The type of DB cluster snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB cluster snapshots that have been automatically taken by Amazon RDS for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB cluster snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB cluster snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB cluster snapshots that have been marked as public.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB cluster snapshots are returned. You can include shared DB cluster snapshots with these results by enabling the <code>IncludeShared</code> parameter. You can include public DB cluster snapshots with these results by enabling the <code>IncludePublic</code> parameter.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more DB cluster snapshots to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs).</p> </li> <li> <p> <code>db-cluster-snapshot-id</code> - Accepts DB cluster snapshot identifiers.</p> </li> <li> <p> <code>snapshot-type</code> - Accepts types of DB cluster snapshots.</p> </li> <li> <p> <code>engine</code> - Accepts names of database engines.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "IncludeShared": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore. By default, these snapshots are not included.</p> <p>You can give an AWS account permission to restore a manual DB cluster snapshot from another AWS account by the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p>"
        },
        "IncludePublic": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account. By default, the public snapshots are not included.</p> <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBClustersMessage": {
      "type": "structure",
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match an existing DBClusterIdentifier.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more DB clusters to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous <code>DescribeDBClusters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "IncludeShared": {
          "shape": "Boolean",
          "documentation": "<p>Optional Boolean parameter that specifies whether the output includes information about clusters shared from other AWS accounts.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBEngineVersionsMessage": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The database engine to return.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The database engine version to return.</p> <p>Example: <code>5.1.49</code> </p>"
        },
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of a specific DB parameter group family to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match an existing DBParameterGroupFamily.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "DefaultOnly": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether only the default version of the specified engine or engine and major version combination is returned.</p>"
        },
        "ListSupportedCharacterSets": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to list the supported character sets for each engine version.</p> <p>If this parameter is enabled and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported character sets for each engine version. </p>"
        },
        "ListSupportedTimezones": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to list the supported time zones for each engine version.</p> <p>If this parameter is enabled and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, the response includes a list of supported time zones for each engine version. </p>"
        },
        "IncludeAll": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to include engine versions that aren't available in the list. The default is to list only available engine versions.</p>"
        }
      }
    },
    "DescribeDBInstanceAutomatedBackupsMessage": {
      "type": "structure",
      "members": {
        "DbiResourceId": {
          "shape": "String",
          "documentation": "<p>The resource ID of the DB instance that is the source of the automated backup. This parameter isn't case-sensitive. </p>"
        },
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>(Optional) The user-supplied instance identifier. If this parameter is specified, it must match the identifier of an existing DB instance. It returns information from the specific DB instance' automated backup. This parameter isn't case-sensitive. </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies which resources to return based on status.</p> <p>Supported filters are the following:</p> <ul> <li> <p> <code>status</code> </p> <ul> <li> <p> <code>active</code> - automated backups for current instances</p> </li> <li> <p> <code>retained</code> - automated backups for deleted instances</p> </li> <li> <p> <code>creating</code> - automated backups that are waiting for the first automated snapshot to be available</p> </li> </ul> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and Amazon Resource Names (ARNs) for DB instances. The results list includes only information about the DB instance automated backupss identified by these ARNs.</p> </li> <li> <p> <code>dbi-resource-id</code> - Accepts DB instance resource identifiers and DB Amazon Resource Names (ARNs) for DB instances. The results list includes only information about the DB instance resources identified by these ARNs.</p> </li> </ul> <p>Returns all resources by default. The status for each resource is specified in the response.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p>Parameter input for DescribeDBInstanceAutomatedBackups. </p>"
    },
    "DescribeDBInstancesMessage": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the identifier of an existing DBInstance.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more DB instances to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB instances associated with the DB clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs). The results list will only include information about the DB instances identified by these ARNs.</p> </li> <li> <p> <code>dbi-resource-id</code> - Accepts DB instance resource identifiers. The results list will only include information about the DB instances identified by these DB instance resource identifiers.</p> </li> <li> <p> <code>domain</code> - Accepts Active Directory directory IDs. The results list will only include information about the DB instances associated with these domains.</p> </li> <li> <p> <code>engine</code> - Accepts engine names. The results list will only include information about the DB instances for these engines.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBInstances</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBLogFilesDetails": {
      "type": "structure",
      "members": {
        "LogFileName": {
          "shape": "String",
          "documentation": "<p>The name of the log file for the specified DB instance.</p>"
        },
        "LastWritten": {
          "shape": "Long",
          "documentation": "<p>A POSIX timestamp when the last log entry was written.</p>"
        },
        "Size": {
          "shape": "Long",
          "documentation": "<p>The size, in bytes, of the log file for the specified DB instance.</p>"
        }
      },
      "documentation": "<p>This data type is used as a response element to <code>DescribeDBLogFiles</code>.</p>"
    },
    "DescribeDBLogFilesList": {
      "type": "list",
      "member": {
        "shape": "DescribeDBLogFilesDetails",
        "locationName": "DescribeDBLogFilesDetails"
      }
    },
    "DescribeDBLogFilesMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The customer-assigned name of the DB instance that contains the log files you want to list.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBInstance.</p> </li> </ul>"
        },
        "FilenameContains": {
          "shape": "String",
          "documentation": "<p>Filters the available log files for log file names that contain the specified string.</p>"
        },
        "FileLastWritten": {
          "shape": "Long",
          "documentation": "<p>Filters the available log files for files written since the specified date, in POSIX timestamp format with milliseconds.</p>"
        },
        "FileSize": {
          "shape": "Long",
          "documentation": "<p>Filters the available log files for files larger than the specified size.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to MaxRecords.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBLogFilesResponse": {
      "type": "structure",
      "members": {
        "DescribeDBLogFiles": {
          "shape": "DescribeDBLogFilesList",
          "documentation": "<p>The DB log files returned.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a later DescribeDBLogFiles request.</p>"
        }
      },
      "documentation": "<p> The response from a call to <code>DescribeDBLogFiles</code>. </p>"
    },
    "DescribeDBParameterGroupsMessage": {
      "type": "structure",
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBParametersMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of a specific DB parameter group to return details for.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBParameterGroup.</p> </li> </ul>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>The parameter types to return.</p> <p>Default: All parameter types returned</p> <p>Valid Values: <code>user | system | engine-default</code> </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      }
    },
    "DescribeDBProxiesRequest": {
      "type": "structure",
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The name of the DB proxy.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        }
      }
    },
    "DescribeDBProxiesResponse": {
      "type": "structure",
      "members": {
        "DBProxies": {
          "shape": "DBProxyList",
          "documentation": "<p>A return value representing an arbitrary number of <code>DBProxy</code> data structures.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      }
    },
    "DescribeDBProxyTargetGroupsRequest": {
      "type": "structure",
      "required": [
        "DBProxyName"
      ],
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The identifier of the <code>DBProxy</code> associated with the target group.</p>"
        },
        "TargetGroupName": {
          "shape": "String",
          "documentation": "<p>The identifier of the <code>DBProxyTargetGroup</code> to describe.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        }
      }
    },
    "DescribeDBProxyTargetGroupsResponse": {
      "type": "structure",
      "members": {
        "TargetGroups": {
          "shape": "TargetGroupList",
          "documentation": "<p>An arbitrary number of <code>DBProxyTargetGroup</code> objects, containing details of the corresponding target groups.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      }
    },
    "DescribeDBProxyTargetsRequest": {
      "type": "structure",
      "required": [
        "DBProxyName"
      ],
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The identifier of the <code>DBProxyTarget</code> to describe.</p>"
        },
        "TargetGroupName": {
          "shape": "String",
          "documentation": "<p>The identifier of the <code>DBProxyTargetGroup</code> to describe.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter is not currently supported.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that the remaining results can be retrieved. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        }
      }
    },
    "DescribeDBProxyTargetsResponse": {
      "type": "structure",
      "members": {
        "Targets": {
          "shape": "TargetList",
          "documentation": "<p>An arbitrary number of <code>DBProxyTarget</code> objects, containing details of the corresponding targets.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      }
    },
    "DescribeDBSecurityGroupsMessage": {
      "type": "structure",
      "members": {
        "DBSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB security group to return details for.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBSecurityGroups</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBSnapshotAttributesMessage": {
      "type": "structure",
      "required": [
        "DBSnapshotIdentifier"
      ],
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the DB snapshot to describe the attributes for.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBSnapshotAttributesResult": {
      "type": "structure",
      "members": {
        "DBSnapshotAttributesResult": {
          "shape": "DBSnapshotAttributesResult"
        }
      }
    },
    "DescribeDBSnapshotsMessage": {
      "type": "structure",
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The ID of the DB instance to retrieve the list of DB snapshots for. This parameter can't be used in conjunction with <code>DBSnapshotIdentifier</code>. This parameter isn't case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the identifier of an existing DBInstance.</p> </li> </ul>"
        },
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p> A specific DB snapshot identifier to describe. This parameter can't be used in conjunction with <code>DBInstanceIdentifier</code>. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the identifier of an existing DBSnapshot.</p> </li> <li> <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p> </li> </ul>"
        },
        "SnapshotType": {
          "shape": "String",
          "documentation": "<p>The type of snapshots to be returned. You can specify one of the following values:</p> <ul> <li> <p> <code>automated</code> - Return all DB snapshots that have been automatically taken by Amazon RDS for my AWS account.</p> </li> <li> <p> <code>manual</code> - Return all DB snapshots that have been taken by my AWS account.</p> </li> <li> <p> <code>shared</code> - Return all manual DB snapshots that have been shared to my AWS account.</p> </li> <li> <p> <code>public</code> - Return all DB snapshots that have been marked as public.</p> </li> <li> <p> <code>awsbackup</code> - Return the DB snapshots managed by the AWS Backup service.</p> <p>For information about AWS Backup, see the <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html\"> <i>AWS Backup Developer Guide.</i> </a> </p> <p>The <code>awsbackup</code> type does not apply to Aurora.</p> </li> </ul> <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual snapshots are returned. Shared and public DB snapshots are not included in the returned results by default. You can include shared snapshots with these results by enabling the <code>IncludeShared</code> parameter. You can include public snapshots with these results by enabling the <code>IncludePublic</code> parameter.</p> <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to <code>public</code>.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more DB snapshots to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance Amazon Resource Names (ARNs).</p> </li> <li> <p> <code>db-snapshot-id</code> - Accepts DB snapshot identifiers.</p> </li> <li> <p> <code>dbi-resource-id</code> - Accepts identifiers of source DB instances.</p> </li> <li> <p> <code>snapshot-type</code> - Accepts types of DB snapshots.</p> </li> <li> <p> <code>engine</code> - Accepts names of database engines.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeDBSnapshots</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "IncludeShared": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to include shared manual DB cluster snapshots from other AWS accounts that this AWS account has been given permission to copy or restore. By default, these snapshots are not included.</p> <p>You can give an AWS account permission to restore a manual DB snapshot from another AWS account by using the <code>ModifyDBSnapshotAttribute</code> API action.</p>"
        },
        "IncludePublic": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to include manual DB cluster snapshots that are public and can be copied or restored by any AWS account. By default, the public snapshots are not included.</p> <p>You can share a manual DB snapshot as public by using the <a>ModifyDBSnapshotAttribute</a> API.</p>"
        },
        "DbiResourceId": {
          "shape": "String",
          "documentation": "<p>A specific DB resource ID to describe.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeDBSubnetGroupsMessage": {
      "type": "structure",
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB subnet group to return details for.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEngineDefaultClusterParametersMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupFamily"
      ],
      "members": {
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group family to return engine parameter information for.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEngineDefaultClusterParametersResult": {
      "type": "structure",
      "members": {
        "EngineDefaults": {
          "shape": "EngineDefaults"
        }
      }
    },
    "DescribeEngineDefaultParametersMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupFamily"
      ],
      "members": {
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group family.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEngineDefaultParametersResult": {
      "type": "structure",
      "members": {
        "EngineDefaults": {
          "shape": "EngineDefaults"
        }
      }
    },
    "DescribeEventCategoriesMessage": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The type of source that is generating the events.</p> <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> </p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventSubscriptionsMessage": {
      "type": "structure",
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the RDS event notification subscription you want to describe.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeEventsMessage": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.</p> <p>Constraints:</p> <ul> <li> <p>If <code>SourceIdentifier</code> is supplied, <code>SourceType</code> must also be provided.</p> </li> <li> <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p> </li> <li> <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>The event source to retrieve events for. If no value is specified, all events are returned.</p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>"
        },
        "EndTime": {
          "shape": "TStamp",
          "documentation": "<p> The end of the time interval for which to retrieve events, specified in ISO 8601 format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a> </p> <p>Example: 2009-07-08T18:00Z</p>"
        },
        "Duration": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of minutes to retrieve events for.</p> <p>Default: 60</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>A list of event categories that trigger notifications for a event notification subscription.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous DescribeEvents request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeExportTasksMessage": {
      "type": "structure",
      "members": {
        "ExportTaskIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the snapshot export task to be described.</p>"
        },
        "SourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>Filters specify one or more snapshot exports to describe. The filters are specified as name-value pairs that define what to include in the output.</p> <p>Supported filters include the following: </p> <ul> <li> <p> <code>export-task-identifier</code> - An identifier for the snapshot export task.</p> </li> <li> <p> <code>s3-bucket</code> - The Amazon S3 bucket the snapshot is exported to.</p> </li> <li> <p> <code>source-arn</code> - The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3</p> </li> <li> <p> <code>status</code> - The status of the export task.</p> </li> </ul>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeExportTasks</code> request. If you specify this parameter, the response includes only records beyond the marker, up to the value specified by the <code>MaxRecords</code> parameter. </p>"
        },
        "MaxRecords": {
          "shape": "MaxRecords",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified value, a pagination token called a marker is included in the response. You can use the marker in a later <code>DescribeExportTasks</code> request to retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        }
      }
    },
    "DescribeGlobalClustersMessage": {
      "type": "structure",
      "members": {
        "GlobalClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match an existing DBClusterIdentifier.</p> </li> </ul>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more global DB clusters to describe.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include information about the DB clusters identified by these ARNs.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      }
    },
    "DescribeInstallationMediaMessage": {
      "type": "structure",
      "members": {
        "InstallationMediaId": {
          "shape": "String",
          "documentation": "<p>The installation medium ID.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more installation media to describe. Supported filters include the following:</p> <ul> <li> <p> <code>custom-availability-zone-id</code> - Accepts custom Availability Zone (AZ) identifiers. The results list includes information about only the custom AZs identified by these identifiers.</p> </li> <li> <p> <code>engine</code> - Accepts database engines. The results list includes information about only the database engines identified by these identifiers.</p> <p>For more information about the valid engines for installation media, see <a>ImportInstallationMedia</a>.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>An optional pagination token provided by a previous DescribeInstallationMedia request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      }
    },
    "DescribeOptionGroupOptionsMessage": {
      "type": "structure",
      "required": [
        "EngineName"
      ],
      "members": {
        "EngineName": {
          "shape": "String",
          "documentation": "<p>A required parameter. Options available for the given engine name are described.</p>"
        },
        "MajorEngineVersion": {
          "shape": "String",
          "documentation": "<p>If specified, filters the results to include only options for the specified major engine version.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeOptionGroupsMessage": {
      "type": "structure",
      "members": {
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group to describe. Can't be supplied together with EngineName or MajorEngineVersion.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous DescribeOptionGroups request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "EngineName": {
          "shape": "String",
          "documentation": "<p>Filters the list of option groups to only include groups associated with a specific database engine.</p>"
        },
        "MajorEngineVersion": {
          "shape": "String",
          "documentation": "<p>Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeOrderableDBInstanceOptionsMessage": {
      "type": "structure",
      "required": [
        "Engine"
      ],
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the engine to retrieve DB instance options for.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.</p>"
        },
        "AvailabilityZoneGroup": {
          "shape": "String",
          "documentation": "<p>The Availability Zone group associated with a Local Zone. Specify this parameter to retrieve available offerings for the Local Zones in the group.</p> <p>Omit this parameter to show the available offerings in the specified AWS Region.</p>"
        },
        "Vpc": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to show only VPC or non-VPC offerings.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribePendingMaintenanceActionsMessage": {
      "type": "structure",
      "members": {
        "ResourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The ARN of a resource to return pending maintenance actions for.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>A filter that specifies one or more resources to return pending maintenance actions for.</p> <p>Supported filters:</p> <ul> <li> <p> <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance actions for the DB clusters identified by these ARNs.</p> </li> <li> <p> <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs. The results list will only include pending maintenance actions for the DB instances identified by these ARNs.</p> </li> </ul>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReservedDBInstancesMessage": {
      "type": "structure",
      "members": {
        "ReservedDBInstanceId": {
          "shape": "String",
          "documentation": "<p>The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.</p>"
        },
        "ReservedDBInstancesOfferingId": {
          "shape": "String",
          "documentation": "<p>The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.</p>"
        },
        "Duration": {
          "shape": "String",
          "documentation": "<p>The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>"
        },
        "ProductDescription": {
          "shape": "String",
          "documentation": "<p>The product description filter value. Specify this parameter to show only those reservations matching the specified product description.</p>"
        },
        "OfferingType": {
          "shape": "String",
          "documentation": "<p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>\"Partial Upfront\" | \"All Upfront\" | \"No Upfront\" </code> </p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to show only those reservations that support Multi-AZ.</p>"
        },
        "LeaseId": {
          "shape": "String",
          "documentation": "<p>The lease identifier filter value. Specify this parameter to show only the reservation that matches the specified lease ID.</p> <note> <p>AWS Support might request the lease ID for an issue related to a reserved DB instance.</p> </note>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeReservedDBInstancesOfferingsMessage": {
      "type": "structure",
      "members": {
        "ReservedDBInstancesOfferingId": {
          "shape": "String",
          "documentation": "<p>The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier.</p> <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code> </p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>"
        },
        "Duration": {
          "shape": "String",
          "documentation": "<p>Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p> <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code> </p>"
        },
        "ProductDescription": {
          "shape": "String",
          "documentation": "<p>Product description filter value. Specify this parameter to show only the available offerings that contain the specified product description.</p> <note> <p>The results show offerings that partially match the filter value.</p> </note>"
        },
        "OfferingType": {
          "shape": "String",
          "documentation": "<p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p> <p>Valid Values: <code>\"Partial Upfront\" | \"All Upfront\" | \"No Upfront\" </code> </p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to show only those reservations that support Multi-AZ.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p> The maximum number of records to include in the response. If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeSourceRegionsMessage": {
      "type": "structure",
      "members": {
        "RegionName": {
          "shape": "String",
          "documentation": "<p>The source AWS Region name. For example, <code>us-east-1</code>.</p> <p>Constraints:</p> <ul> <li> <p>Must specify a valid AWS Region name.</p> </li> </ul>"
        },
        "MaxRecords": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum number of records to include in the response. If more records exist than the specified <code>MaxRecords</code> value, a pagination token called a marker is included in the response so you can retrieve the remaining results. </p> <p>Default: 100</p> <p>Constraints: Minimum 20, maximum 100.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous <code>DescribeSourceRegions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeValidDBInstanceModificationsMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The customer identifier or the ARN of your DB instance. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeValidDBInstanceModificationsResult": {
      "type": "structure",
      "members": {
        "ValidDBInstanceModificationsMessage": {
          "shape": "ValidDBInstanceModificationsMessage"
        }
      }
    },
    "DomainMembership": {
      "type": "structure",
      "members": {
        "Domain": {
          "shape": "String",
          "documentation": "<p>The identifier of the Active Directory Domain.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the Active Directory Domain membership for the DB instance or cluster. Values include joined, pending-join, failed, and so on.</p>"
        },
        "FQDN": {
          "shape": "String",
          "documentation": "<p>The fully qualified domain name of the Active Directory Domain.</p>"
        },
        "IAMRoleName": {
          "shape": "String",
          "documentation": "<p>The name of the IAM role to be used when making API calls to the Directory Service.</p>"
        }
      },
      "documentation": "<p>An Active Directory Domain membership record associated with the DB instance or cluster.</p>"
    },
    "DomainMembershipList": {
      "type": "list",
      "member": {
        "shape": "DomainMembership",
        "locationName": "DomainMembership"
      },
      "documentation": "<p>List of Active Directory Domain membership records associated with a DB instance or cluster.</p>"
    },
    "Double": {
      "type": "double"
    },
    "DoubleOptional": {
      "type": "double"
    },
    "DoubleRange": {
      "type": "structure",
      "members": {
        "From": {
          "shape": "Double",
          "documentation": "<p>The minimum value in the range.</p>"
        },
        "To": {
          "shape": "Double",
          "documentation": "<p>The maximum value in the range.</p>"
        }
      },
      "documentation": "<p>A range of double values.</p>"
    },
    "DoubleRangeList": {
      "type": "list",
      "member": {
        "shape": "DoubleRange",
        "locationName": "DoubleRange"
      }
    },
    "DownloadDBLogFilePortionDetails": {
      "type": "structure",
      "members": {
        "LogFileData": {
          "shape": "String",
          "documentation": "<p>Entries from the specified log file.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a later DownloadDBLogFilePortion request.</p>"
        },
        "AdditionalDataPending": {
          "shape": "Boolean",
          "documentation": "<p>Boolean value that if true, indicates there is more data to be downloaded.</p>"
        }
      },
      "documentation": "<p>This data type is used as a response element to <code>DownloadDBLogFilePortion</code>.</p>"
    },
    "DownloadDBLogFilePortionMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "LogFileName"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The customer-assigned name of the DB instance that contains the log files you want to list.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBInstance.</p> </li> </ul>"
        },
        "LogFileName": {
          "shape": "String",
          "documentation": "<p>The name of the log file to be downloaded.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>The pagination token provided in the previous request or \"0\". If the Marker parameter is specified the response includes only records beyond the marker until the end of the file or up to NumberOfLines.</p>"
        },
        "NumberOfLines": {
          "shape": "Integer",
          "documentation": "<p>The number of lines to download. If the number of lines specified results in a file over 1 MB in size, the file is truncated at 1 MB in size.</p> <p>If the NumberOfLines parameter is specified, then the block of lines returned can be from the beginning or the end of the log file, depending on the value of the Marker parameter.</p> <ul> <li> <p>If neither Marker or NumberOfLines are specified, the entire log file is returned up to a maximum of 10000 lines, starting with the most recent log entries first.</p> </li> <li> <p>If NumberOfLines is specified and Marker isn't specified, then the most recent lines from the end of the log file are returned.</p> </li> <li> <p>If Marker is specified as \"0\", then the specified number of lines from the beginning of the log file are returned.</p> </li> <li> <p>You can download the log file in blocks of lines by specifying the size of the block using the NumberOfLines parameter, and by specifying a value of \"0\" for the Marker parameter in your first request. Include the Marker value returned in the response as the Marker value for the next request, continuing until the AdditionalDataPending response element returns false.</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "EC2SecurityGroup": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "String",
          "documentation": "<p>Provides the status of the EC2 security group. Status can be \"authorizing\", \"authorized\", \"revoking\", and \"revoked\".</p>"
        },
        "EC2SecurityGroupName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the EC2 security group.</p>"
        },
        "EC2SecurityGroupId": {
          "shape": "String",
          "documentation": "<p>Specifies the id of the EC2 security group.</p>"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String",
          "documentation": "<p> Specifies the AWS ID of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> field. </p>"
        }
      },
      "documentation": "<p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>AuthorizeDBSecurityGroupIngress</code> </p> </li> <li> <p> <code>DescribeDBSecurityGroups</code> </p> </li> <li> <p> <code>RevokeDBSecurityGroupIngress</code> </p> </li> </ul>"
    },
    "EC2SecurityGroupList": {
      "type": "list",
      "member": {
        "shape": "EC2SecurityGroup",
        "locationName": "EC2SecurityGroup"
      }
    },
    "Endpoint": {
      "type": "structure",
      "members": {
        "Address": {
          "shape": "String",
          "documentation": "<p>Specifies the DNS address of the DB instance.</p>"
        },
        "Port": {
          "shape": "Integer",
          "documentation": "<p>Specifies the port that the database engine is listening on.</p>"
        },
        "HostedZoneId": {
          "shape": "String",
          "documentation": "<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>"
        }
      },
      "documentation": "<p>This data type represents the information you need to connect to an Amazon RDS DB instance. This data type is used as a response element in the following actions:</p> <ul> <li> <p> <code>CreateDBInstance</code> </p> </li> <li> <p> <code>DescribeDBInstances</code> </p> </li> <li> <p> <code>DeleteDBInstance</code> </p> </li> </ul> <p>For the data structure that represents Amazon Aurora DB cluster endpoints, see <code>DBClusterEndpoint</code>.</p>"
    },
    "EngineDefaults": {
      "type": "structure",
      "members": {
        "DBParameterGroupFamily": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the DB parameter group family that the engine default parameters apply to.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous EngineDefaults request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>Contains a list of engine default parameters.</p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeEngineDefaultParameters</code> action. </p>",
      "wrapper": true
    },
    "EngineFamily": {
      "type": "string",
      "enum": [
        "MYSQL",
        "POSTGRESQL"
      ]
    },
    "EngineModeList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Event": {
      "type": "structure",
      "members": {
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p>Provides the identifier for the source of the event.</p>"
        },
        "SourceType": {
          "shape": "SourceType",
          "documentation": "<p>Specifies the source type for this event.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>Provides the text of this event.</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>Specifies the category for the event.</p>"
        },
        "Date": {
          "shape": "TStamp",
          "documentation": "<p>Specifies the date and time of the event.</p>"
        },
        "SourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the event.</p>"
        }
      },
      "documentation": "<p> This data type is used as a response element in the <code>DescribeEvents</code> action. </p>"
    },
    "EventCategoriesList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "EventCategory"
      }
    },
    "EventCategoriesMap": {
      "type": "structure",
      "members": {
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The source type that the returned categories belong to</p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p>The event categories for the specified source type</p>"
        }
      },
      "documentation": "<p>Contains the results of a successful invocation of the <code>DescribeEventCategories</code> operation.</p>",
      "wrapper": true
    },
    "EventCategoriesMapList": {
      "type": "list",
      "member": {
        "shape": "EventCategoriesMap",
        "locationName": "EventCategoriesMap"
      }
    },
    "EventCategoriesMessage": {
      "type": "structure",
      "members": {
        "EventCategoriesMapList": {
          "shape": "EventCategoriesMapList",
          "documentation": "<p>A list of EventCategoriesMap data types.</p>"
        }
      },
      "documentation": "<p>Data returned from the <code>DescribeEventCategories</code> operation.</p>"
    },
    "EventList": {
      "type": "list",
      "member": {
        "shape": "Event",
        "locationName": "Event"
      }
    },
    "EventSubscription": {
      "type": "structure",
      "members": {
        "CustomerAwsId": {
          "shape": "String",
          "documentation": "<p>The AWS customer account associated with the RDS event notification subscription.</p>"
        },
        "CustSubscriptionId": {
          "shape": "String",
          "documentation": "<p>The RDS event notification subscription Id.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>The topic ARN of the RDS event notification subscription.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the RDS event notification subscription.</p> <p>Constraints:</p> <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p> <p>The status \"no-permission\" indicates that RDS no longer has permission to post to the SNS topic. The status \"topic-not-exist\" indicates that the topic was deleted after the subscription was created.</p>"
        },
        "SubscriptionCreationTime": {
          "shape": "String",
          "documentation": "<p>The time the RDS event notification subscription was created.</p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The source type for the RDS event notification subscription.</p>"
        },
        "SourceIdsList": {
          "shape": "SourceIdsList",
          "documentation": "<p>A list of source IDs for the RDS event notification subscription.</p>"
        },
        "EventCategoriesList": {
          "shape": "EventCategoriesList",
          "documentation": "<p>A list of event categories for the RDS event notification subscription.</p>"
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.</p>"
        },
        "EventSubscriptionArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the event subscription.</p>"
        }
      },
      "documentation": "<p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>",
      "wrapper": true
    },
    "EventSubscriptionsList": {
      "type": "list",
      "member": {
        "shape": "EventSubscription",
        "locationName": "EventSubscription"
      }
    },
    "EventSubscriptionsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "EventSubscriptionsList": {
          "shape": "EventSubscriptionsList",
          "documentation": "<p>A list of EventSubscriptions data types.</p>"
        }
      },
      "documentation": "<p>Data returned by the <b>DescribeEventSubscriptions</b> action.</p>"
    },
    "EventsMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous Events request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        },
        "Events": {
          "shape": "EventList",
          "documentation": "<p> A list of <code>Event</code> instances. </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeEvents</code> action. </p>"
    },
    "ExportTask": {
      "type": "structure",
      "members": {
        "ExportTaskIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the snapshot export task. This ID isn't an identifier for the Amazon S3 bucket where the snapshot is exported to. </p>"
        },
        "SourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.</p>"
        },
        "ExportOnly": {
          "shape": "StringList",
          "documentation": "<p>The data exported from the snapshot. Valid values are the following:</p> <ul> <li> <p> <code>database</code> - Export all the data from a specified database.</p> </li> <li> <p> <code>database.table</code> <i>table-name</i> - Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p> </li> <li> <p> <code>database.schema</code> <i>schema-name</i> - Export a database schema of the snapshot. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p> </li> <li> <p> <code>database.schema.table</code> <i>table-name</i> - Export a table of the database schema. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p> </li> </ul>"
        },
        "SnapshotTime": {
          "shape": "TStamp",
          "documentation": "<p>The time that the snapshot was created.</p>"
        },
        "TaskStartTime": {
          "shape": "TStamp",
          "documentation": "<p>The time that the snapshot export task started.</p>"
        },
        "TaskEndTime": {
          "shape": "TStamp",
          "documentation": "<p>The time that the snapshot export task completed.</p>"
        },
        "S3Bucket": {
          "shape": "String",
          "documentation": "<p>The Amazon S3 bucket that the snapshot is exported to.</p>"
        },
        "S3Prefix": {
          "shape": "String",
          "documentation": "<p>The Amazon S3 bucket prefix that is the file name and path of the exported snapshot.</p>"
        },
        "IamRoleArn": {
          "shape": "String",
          "documentation": "<p>The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot. </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The ID of the AWS KMS key that is used to encrypt the snapshot when it's exported to Amazon S3. The KMS key ID is the Amazon Resource Name (ARN), the KMS key identifier, or the KMS key alias for the KMS encryption key. The IAM role used for the snapshot export must have encryption and decryption permissions to use this KMS key. </p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The progress status of the export task.</p>"
        },
        "PercentProgress": {
          "shape": "Integer",
          "documentation": "<p>The progress of the snapshot export task as a percentage.</p>"
        },
        "TotalExtractedDataInGB": {
          "shape": "Integer",
          "documentation": "<p>The total amount of data exported, in gigabytes.</p>"
        },
        "FailureCause": {
          "shape": "String",
          "documentation": "<p>The reason the export failed, if it failed.</p>"
        },
        "WarningMessage": {
          "shape": "String",
          "documentation": "<p>A warning about the snapshot export task.</p>"
        }
      },
      "documentation": "<p>Contains the details of a snapshot export to Amazon S3. </p> <p>This data type is used as a response element in the <code>DescribeExportTasks</code> action. </p>"
    },
    "ExportTasksList": {
      "type": "list",
      "member": {
        "shape": "ExportTask",
        "locationName": "ExportTask"
      }
    },
    "ExportTasksMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a later <code>DescribeExportTasks</code> request. A marker is used for pagination to identify the location to begin output for the next response of <code>DescribeExportTasks</code>.</p>"
        },
        "ExportTasks": {
          "shape": "ExportTasksList",
          "documentation": "<p>Information about an export of a snapshot to Amazon S3.</p>"
        }
      }
    },
    "FailoverDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>A DB cluster identifier to force a failover for. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBCluster.</p> </li> </ul>"
        },
        "TargetDBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the instance to promote to the primary instance.</p> <p>You must specify the instance identifier for an Aurora Replica in the DB cluster. For example, <code>mydbcluster-replica1</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "FailoverDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "FeatureNameList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Filter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the filter. Filter names are case-sensitive.</p>"
        },
        "Values": {
          "shape": "FilterValueList",
          "documentation": "<p>One or more filter values. Filter values are case-sensitive.</p>"
        }
      },
      "documentation": "<p>A filter name and value pair that is used to return a more specific list of results from a describe operation. Filters can be used to match a set of resources by specific criteria, such as IDs. The filters supported by a describe operation are documented with the describe operation.</p> <note> <p>Currently, wildcards are not supported in filters.</p> </note> <p>The following actions can be filtered:</p> <ul> <li> <p> <code>DescribeDBClusterBacktracks</code> </p> </li> <li> <p> <code>DescribeDBClusterEndpoints</code> </p> </li> <li> <p> <code>DescribeDBClusters</code> </p> </li> <li> <p> <code>DescribeDBInstances</code> </p> </li> <li> <p> <code>DescribePendingMaintenanceActions</code> </p> </li> </ul>"
    },
    "FilterList": {
      "type": "list",
      "member": {
        "shape": "Filter",
        "locationName": "Filter"
      }
    },
    "FilterValueList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "Value"
      }
    },
    "GlobalCluster": {
      "type": "structure",
      "members": {
        "GlobalClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> Contains a user-supplied global database cluster identifier. This identifier is the unique key that identifies a global database cluster. </p>"
        },
        "GlobalClusterResourceId": {
          "shape": "String",
          "documentation": "<p> The AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed. </p>"
        },
        "GlobalClusterArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the global database cluster.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Specifies the current state of this global database cluster.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p> The Aurora database engine used by the global database cluster. </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the database engine version.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p> The default database name within the new global database cluster. </p>"
        },
        "StorageEncrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p> The storage encryption setting for the global database cluster. </p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p> The deletion protection setting for the new global database cluster. </p>"
        },
        "GlobalClusterMembers": {
          "shape": "GlobalClusterMemberList",
          "documentation": "<p> The list of cluster IDs for secondary clusters within the global database cluster. Currently limited to 1 item. </p>"
        }
      },
      "documentation": "<p>A data type representing an Aurora global database.</p>",
      "wrapper": true
    },
    "GlobalClusterList": {
      "type": "list",
      "member": {
        "shape": "GlobalCluster",
        "locationName": "GlobalClusterMember"
      }
    },
    "GlobalClusterMember": {
      "type": "structure",
      "members": {
        "DBClusterArn": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) for each Aurora cluster. </p>"
        },
        "Readers": {
          "shape": "ReadersArnList",
          "documentation": "<p> The Amazon Resource Name (ARN) for each read-only secondary cluster associated with the Aurora global database. </p>"
        },
        "IsWriter": {
          "shape": "Boolean",
          "documentation": "<p> Specifies whether the Aurora cluster is the primary cluster (that is, has read-write capability) for the Aurora global database with which it is associated. </p>"
        },
        "GlobalWriteForwardingStatus": {
          "shape": "WriteForwardingStatus",
          "documentation": "<p>Specifies whether a secondary cluster in an Aurora global database has write forwarding enabled, not enabled, or is in the process of enabling it.</p>"
        }
      },
      "documentation": "<p> A data structure with information about any primary and secondary clusters associated with an Aurora global database. </p>",
      "wrapper": true
    },
    "GlobalClusterMemberList": {
      "type": "list",
      "member": {
        "shape": "GlobalClusterMember",
        "locationName": "GlobalClusterMember"
      }
    },
    "GlobalClustersMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "GlobalClusters": {
          "shape": "GlobalClusterList",
          "documentation": "<p> The list of global clusters returned by this request. </p>"
        }
      }
    },
    "IAMAuthMode": {
      "type": "string",
      "enum": [
        "DISABLED",
        "REQUIRED"
      ]
    },
    "IPRange": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "String",
          "documentation": "<p>Specifies the status of the IP range. Status can be \"authorizing\", \"authorized\", \"revoking\", and \"revoked\".</p>"
        },
        "CIDRIP": {
          "shape": "String",
          "documentation": "<p>Specifies the IP range.</p>"
        }
      },
      "documentation": "<p> This data type is used as a response element in the <code>DescribeDBSecurityGroups</code> action. </p>"
    },
    "IPRangeList": {
      "type": "list",
      "member": {
        "shape": "IPRange",
        "locationName": "IPRange"
      }
    },
    "ImportInstallationMediaMessage": {
      "type": "structure",
      "required": [
        "CustomAvailabilityZoneId",
        "Engine",
        "EngineVersion",
        "EngineInstallationMediaPath",
        "OSInstallationMediaPath"
      ],
      "members": {
        "CustomAvailabilityZoneId": {
          "shape": "String",
          "documentation": "<p>The identifier of the custom Availability Zone (AZ) to import the installation media to.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine to be used for this instance. </p> <p>The list only includes supported DB engines that require an on-premises customer provided license. </p> <p>Valid Values: </p> <ul> <li> <p> <code>sqlserver-ee</code> </p> </li> <li> <p> <code>sqlserver-se</code> </p> </li> <li> <p> <code>sqlserver-ex</code> </p> </li> <li> <p> <code>sqlserver-web</code> </p> </li> </ul>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine to use.</p> <p>For a list of valid engine versions, call <a>DescribeDBEngineVersions</a>.</p> <p>The following are the database engines and links to information about the major and minor versions. The list only includes DB engines that require an on-premises customer provided license.</p> <p> <b>Microsoft SQL Server</b> </p> <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport\">Version and Feature Support on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "EngineInstallationMediaPath": {
          "shape": "String",
          "documentation": "<p>The path to the installation medium for the specified DB engine.</p> <p>Example: <code>SQLServerISO/en_sql_server_2016_enterprise_x64_dvd_8701793.iso</code> </p>"
        },
        "OSInstallationMediaPath": {
          "shape": "String",
          "documentation": "<p>The path to the installation medium for the operating system associated with the specified DB engine.</p> <p>Example: <code>WindowsISO/en_windows_server_2016_x64_dvd_9327751.iso</code> </p>"
        }
      }
    },
    "InstallationMedia": {
      "type": "structure",
      "members": {
        "InstallationMediaId": {
          "shape": "String",
          "documentation": "<p>The installation medium ID.</p>"
        },
        "CustomAvailabilityZoneId": {
          "shape": "String",
          "documentation": "<p>The custom Availability Zone (AZ) that contains the installation media.</p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The DB engine.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version of the DB engine.</p>"
        },
        "EngineInstallationMediaPath": {
          "shape": "String",
          "documentation": "<p>The path to the installation medium for the DB engine.</p>"
        },
        "OSInstallationMediaPath": {
          "shape": "String",
          "documentation": "<p>The path to the installation medium for the operating system associated with the DB engine.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the installation medium.</p>"
        },
        "FailureCause": {
          "shape": "InstallationMediaFailureCause",
          "documentation": "<p>If an installation media failure occurred, the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains the installation media for a DB engine that requires an on-premises customer provided license, such as Microsoft SQL Server.</p>"
    },
    "InstallationMediaFailureCause": {
      "type": "structure",
      "members": {
        "Message": {
          "shape": "String",
          "documentation": "<p>The reason that an installation media import failed.</p>"
        }
      },
      "documentation": "<p>Contains the cause of an installation media failure. Installation media is used for a DB engine that requires an on-premises customer provided license, such as Microsoft SQL Server.</p>"
    },
    "InstallationMediaList": {
      "type": "list",
      "member": {
        "shape": "InstallationMedia",
        "locationName": "InstallationMedia"
      }
    },
    "InstallationMediaMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous <a>DescribeInstallationMedia</a> request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        },
        "InstallationMedia": {
          "shape": "InstallationMediaList",
          "documentation": "<p>The list of <a>InstallationMedia</a> objects for the AWS account.</p>"
        }
      }
    },
    "Integer": {
      "type": "integer"
    },
    "IntegerOptional": {
      "type": "integer"
    },
    "KeyList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ListTagsForResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceName"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon RDS resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\"> Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "Filters": {
          "shape": "FilterList",
          "documentation": "<p>This parameter isn't currently supported.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "LogTypeList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Long": {
      "type": "long"
    },
    "LongOptional": {
      "type": "long"
    },
    "MaxRecords": {
      "type": "integer",
      "max": 100,
      "min": 20
    },
    "MinimumEngineVersionPerAllowedValue": {
      "type": "structure",
      "members": {
        "AllowedValue": {
          "shape": "String",
          "documentation": "<p>The allowed value for an option setting.</p>"
        },
        "MinimumEngineVersion": {
          "shape": "String",
          "documentation": "<p>The minimum DB engine version required for the allowed value.</p>"
        }
      },
      "documentation": "<p>The minimum DB engine version required for each corresponding allowed value for an option setting.</p>"
    },
    "MinimumEngineVersionPerAllowedValueList": {
      "type": "list",
      "member": {
        "shape": "MinimumEngineVersionPerAllowedValue",
        "locationName": "MinimumEngineVersionPerAllowedValue"
      }
    },
    "ModifyCertificatesMessage": {
      "type": "structure",
      "members": {
        "CertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>The new default certificate identifier to override the current one with.</p> <p>To determine the valid values, use the <code>describe-certificates</code> AWS CLI command or the <code>DescribeCertificates</code> API operation.</p>"
        },
        "RemoveCustomerOverride": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to remove the override for the default certificate. If the override is removed, the default certificate is the system default.</p>"
        }
      }
    },
    "ModifyCertificatesResult": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "Certificate"
        }
      }
    },
    "ModifyCurrentDBClusterCapacityMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier for the cluster being modified. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DB cluster.</p> </li> </ul>"
        },
        "Capacity": {
          "shape": "IntegerOptional",
          "documentation": "<p>The DB cluster capacity.</p> <p>When you change the capacity of a paused Aurora Serverless DB cluster, it automatically resumes.</p> <p>Constraints:</p> <ul> <li> <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p> </li> <li> <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p> </li> </ul>"
        },
        "SecondsBeforeTimeout": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of time, in seconds, that Aurora Serverless tries to find a scaling point to perform seamless scaling before enforcing the timeout action. The default is 300.</p> <ul> <li> <p>Value must be from 10 through 600.</p> </li> </ul>"
        },
        "TimeoutAction": {
          "shape": "String",
          "documentation": "<p>The action to take when the timeout is reached, either <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p> <p> <code>ForceApplyCapacityChange</code>, the default, sets the capacity to the specified value as soon as possible.</p> <p> <code>RollbackCapacityChange</code> ignores the capacity change if a scaling point isn't found in the timeout period.</p>"
        }
      }
    },
    "ModifyDBClusterEndpointMessage": {
      "type": "structure",
      "required": [
        "DBClusterEndpointIdentifier"
      ],
      "members": {
        "DBClusterEndpointIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the endpoint to modify. This parameter is stored as a lowercase string.</p>"
        },
        "EndpointType": {
          "shape": "String",
          "documentation": "<p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>"
        },
        "StaticMembers": {
          "shape": "StringList",
          "documentation": "<p>List of DB instance identifiers that are part of the custom endpoint group.</p>"
        },
        "ExcludedMembers": {
          "shape": "StringList",
          "documentation": "<p>List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty.</p>"
        }
      }
    },
    "ModifyDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier for the cluster being modified. This parameter isn't case-sensitive.</p> <p>Constraints: This identifier must match the identifier of an existing DB cluster.</p>"
        },
        "NewDBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens</p> </li> <li> <p>The first character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster2</code> </p>"
        },
        "ApplyImmediately": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is disabled, changes to the DB cluster are applied during the next maintenance window.</p> <p>The <code>ApplyImmediately</code> parameter only affects the <code>EnableIAMDatabaseAuthentication</code>, <code>MasterUserPassword</code>, and <code>NewDBClusterIdentifier</code> values. If the <code>ApplyImmediately</code> parameter is disabled, then changes to the <code>EnableIAMDatabaseAuthentication</code>, <code>MasterUserPassword</code>, and <code>NewDBClusterIdentifier</code> values are applied during the next maintenance window. All other changes are applied immediately, regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p>By default, this parameter is disabled.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>"
        },
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group to use for the DB cluster.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of VPC security groups that the DB cluster will belong to.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the DB cluster accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The new password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>A value that indicates that the DB cluster should be associated with the specified option group. Changing this parameter doesn't result in an outage except in the following case, and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> is enabled for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p>The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\"> Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\"> Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i> </p>"
        },
        "BacktrackWindow": {
          "shape": "LongOptional",
          "documentation": "<p>The target backtrack window, in seconds. To disable backtracking, set this value to 0.</p> <note> <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p> </note> <p>Default: 0</p> <p>Constraints:</p> <ul> <li> <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p> </li> </ul>"
        },
        "CloudwatchLogsExportConfiguration": {
          "shape": "CloudwatchLogsExportConfiguration",
          "documentation": "<p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB cluster.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine to which you want to upgrade. Changing this parameter results in an outage. The change is applied during the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p> <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora-mysql --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query \"DBEngineVersions[].EngineVersion\"</code> </p>"
        },
        "AllowMajorVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether major version upgrades are allowed.</p> <p>Constraints: You must allow major version upgrades when specifying a value for the <code>EngineVersion</code> parameter that is a different major version than the DB cluster's current version.</p>"
        },
        "DBInstanceParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group to apply to all instances of the DB cluster. </p> <note> <p>When you apply a parameter group using the <code>DBInstanceParameterGroupName</code> parameter, the DB cluster isn't rebooted automatically. Also, parameter changes aren't applied during the next maintenance window but instead are applied immediately.</p> </note> <p>Default: The existing name setting</p> <p>Constraints:</p> <ul> <li> <p>The DB parameter group must be in the same DB parameter group family as this DB cluster.</p> </li> <li> <p>The <code>DBInstanceParameterGroupName</code> parameter is only valid in combination with the <code>AllowMajorVersionUpgrade</code> parameter.</p> </li> </ul>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>The Active Directory directory ID to move the DB cluster to. Specify <code>none</code> to remove the cluster from its current domain. The domain must be created prior to this operation. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html\">Kerberos Authentication</a> in the <i>Amazon Aurora User Guide</i>. </p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        },
        "ScalingConfiguration": {
          "shape": "ScalingConfiguration",
          "documentation": "<p>The scaling properties of the DB cluster. You can only modify scaling properties for DB clusters in <code>serverless</code> DB engine mode.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. </p>"
        },
        "EnableHttpEndpoint": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable the HTTP endpoint for an Aurora Serverless DB cluster. By default, the HTTP endpoint is disabled.</p> <p>When enabled, the HTTP endpoint provides a connectionless web service API for running SQL queries on the Aurora Serverless DB cluster. You can also query your database from inside the RDS console with the query editor.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html\">Using the Data API for Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster. The default is not to copy them.</p>"
        },
        "EnableGlobalWriteForwarding": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable write operations to be forwarded from this cluster to the primary cluster in an Aurora global database. The resulting changes are replicated back to this cluster. This parameter only applies to DB clusters that are secondary clusters in an Aurora global database. By default, Aurora disallows write operations for secondary clusters.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName",
        "Parameters"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group to modify.</p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>A list of parameters in the DB cluster parameter group to modify.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "ModifyDBClusterSnapshotAttributeMessage": {
      "type": "structure",
      "required": [
        "DBClusterSnapshotIdentifier",
        "AttributeName"
      ],
      "members": {
        "DBClusterSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the DB cluster snapshot to modify the attributes for.</p>"
        },
        "AttributeName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this value to <code>restore</code>.</p> <note> <p>To view the list of attributes available to modify, use the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p> </note>"
        },
        "ValuesToAdd": {
          "shape": "AttributeValueList",
          "documentation": "<p>A list of DB cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB cluster snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.</p>"
        },
        "ValuesToRemove": {
          "shape": "AttributeValueList",
          "documentation": "<p>A list of DB cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB cluster snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyDBClusterSnapshotAttributeResult": {
      "type": "structure",
      "members": {
        "DBClusterSnapshotAttributesResult": {
          "shape": "DBClusterSnapshotAttributesResult"
        }
      }
    },
    "ModifyDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBInstance.</p> </li> </ul>"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The new amount of storage (in gibibytes) to allocate for the DB instance. </p> <p>For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value. </p> <p>For the valid values for allocated storage for each engine, see <code>CreateDBInstance</code>. </p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The new compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i> </p> <p>If you modify the DB instance class, an outage occurs during the change. The change is applied during the next maintenance window, unless <code>ApplyImmediately</code> is enabled for this request. </p> <p>Default: Uses existing setting</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The new DB subnet group for the DB instance. You can use this parameter to move your DB instance to a different VPC. If your DB instance isn't in a VPC, you can also use this parameter to move your DB instance into a VPC. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC\">Updating the VPC for a DB Instance</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Changing the subnet group causes an outage during the change. The change is applied during the next maintenance window, unless you enable <code>ApplyImmediately</code>. </p> <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p> <p>Example: <code>mySubnetGroup</code> </p>"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroupNameList",
          "documentation": "<p>A list of DB security groups to authorize on this DB instance. Changing this setting doesn't result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match existing DBSecurityGroups.</p> </li> </ul>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB cluster. For more information, see <code>ModifyDBCluster</code>.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match existing VpcSecurityGroupIds.</p> </li> </ul>"
        },
        "ApplyImmediately": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the modifications in this request and any pending modifications are asynchronously applied as soon as possible, regardless of the <code>PreferredMaintenanceWindow</code> setting for the DB instance. By default, this parameter is disabled. </p> <p> If this parameter is disabled, changes to the DB instance are applied during the next maintenance window. Some parameter changes can cause an outage and are applied on the next call to <a>RebootDBInstance</a>, or the next failure reboot. Review the table of parameters in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html\">Modifying a DB Instance</a> in the <i>Amazon RDS User Guide.</i> to see the impact of enabling or disabling <code>ApplyImmediately</code> for each modified parameter and to determine when the changes are applied. </p>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The new password for the master user. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\".</p> <p> Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible. Between the time of the request and the completion of the request, the <code>MasterUserPassword</code> element exists in the <code>PendingModifiedValues</code> element of the operation response. </p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The password for the master user is managed by the DB cluster. For more information, see <code>ModifyDBCluster</code>. </p> <p>Default: Uses existing setting</p> <p> <b>MariaDB</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Microsoft SQL Server</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p> <p> <b>MySQL</b> </p> <p>Constraints: Must contain from 8 to 41 characters.</p> <p> <b>Oracle</b> </p> <p>Constraints: Must contain from 8 to 30 characters.</p> <p> <b>PostgreSQL</b> </p> <p>Constraints: Must contain from 8 to 128 characters.</p> <note> <p>Amazon RDS API actions never return the password, so this action provides a way to regain access to a primary instance user if the password is lost. This includes restoring privileges that might have been accidentally revoked. </p> </note>"
        },
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group to apply to the DB instance. Changing this setting doesn't result in an outage. The parameter group name itself is changed immediately, but the actual parameter changes are not applied until you reboot the instance without failover. In this case, the DB instance isn't rebooted automatically and the parameter changes isn't applied during the next maintenance window.</p> <p>Default: Uses existing setting</p> <p>Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Changing this parameter can result in an outage if you change from 0 to a non-zero value or from a non-zero value to 0. These changes are applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is enabled for this request. If you change the parameter from one non-zero value to another non-zero value, the change is asynchronously applied as soon as possible.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The retention period for automated backups is managed by the DB cluster. For more information, see <code>ModifyDBCluster</code>.</p> <p>Default: Uses existing setting</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35</p> </li> <li> <p>Can be specified for a MySQL read replica only if the source is running MySQL 5.6 or later</p> </li> <li> <p>Can be specified for a PostgreSQL read replica only if the source is running PostgreSQL 9.3.5</p> </li> <li> <p>Can't be set to 0 if the DB instance is a source to read replicas</p> </li> </ul>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p> The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>BackupRetentionPeriod</code> parameter. Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible. </p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. The daily time range for creating automated backups is managed by the DB cluster. For more information, see <code>ModifyDBCluster</code>.</p> <p>Constraints:</p> <ul> <li> <p>Must be in the format hh24:mi-hh24:mi</p> </li> <li> <p>Must be in Universal Time Coordinated (UTC)</p> </li> <li> <p>Must not conflict with the preferred maintenance window</p> </li> <li> <p>Must be at least 30 minutes</p> </li> </ul>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range (in UTC) during which system maintenance can occur, which might result in an outage. Changing this parameter doesn't result in an outage, except in the following situation, and the change is asynchronously applied as soon as possible. If there are pending actions that cause a reboot, and the maintenance window is changed to include the current time, then changing this parameter will cause a reboot of the DB instance. If moving this window to the current time, there must be at least 30 minutes between the current time and end of the window to ensure pending changes are applied.</p> <p>Default: Uses existing setting</p> <p>Format: ddd:hh24:mi-ddd:hh24:mi</p> <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p> <p>Constraints: Must be at least 30 minutes</p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is a Multi-AZ deployment. Changing this parameter doesn't result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is enabled for this request. </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p> The version number of the database engine to upgrade to. Changing this parameter results in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is eanbled for this request. </p> <p>For major version upgrades, if a nondefault DB parameter group is currently in use, a new DB parameter group in the DB parameter group family for the new engine version must be specified. The new DB parameter group can be the default for that DB parameter group family.</p> <p>For information about valid engine versions, see <code>CreateDBInstance</code>, or call <code>DescribeDBEngineVersions</code>.</p>"
        },
        "AllowMajorVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether major version upgrades are allowed. Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.</p> <p>Constraints: Major version upgrades must be allowed when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p> A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window. Changing this parameter doesn't result in an outage except in the following case and the change is asynchronously applied as soon as possible. An outage results if this parameter is enabled during the maintenance window, and a newer minor version is available, and RDS has enabled auto patching for that engine version. </p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>The new Provisioned IOPS (I/O operations per second) value for the RDS instance. </p> <p>Changing this setting doesn't result in an outage and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is enabled for this request. If you are migrating from Provisioned IOPS to standard storage, set this value to 0. The DB instance will require a reboot for the change in storage type to take effect. </p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance is available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance are suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a read replica for the instance, and creating a DB snapshot of the instance. </p> <p>Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must be at least 10% greater than the current value. Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value. </p> <p>Default: Uses existing setting</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p> Indicates that the DB instance should be associated with the specified option group. Changing this parameter doesn't result in an outage except in the following case and the change is applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is enabled for this request. If the parameter change results in an option group that enables OEM, this change can cause a brief (sub-second) period during which new connections are rejected but existing connections are not interrupted. </p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>"
        },
        "NewDBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p> The new DB instance identifier for the DB instance when renaming a DB instance. When you change the DB instance identifier, an instance reboot occurs immediately if you enable <code>ApplyImmediately</code>, or will occur during the next maintenance window if you disable Apply Immediately. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>The first character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type to be associated with the DB instance. </p> <p>If you specify Provisioned IOPS (<code>io1</code>), you must also include a value for the <code>Iops</code> parameter. </p> <p>If you choose to migrate your DB instance from using standard storage to using Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process can take time. The duration of the migration depends on several factors such as database load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS provisioned (if any), and the number of prior scale storage operations. Typical migration times are under 24 hours, but the process can take up to several days in some cases. During the migration, the DB instance is available for use, but might experience performance degradation. While the migration takes place, nightly backups for the instance are suspended. No other Amazon RDS operations can take place for the instance, including modifying the instance, rebooting the instance, deleting the instance, creating a read replica for the instance, and creating a DB snapshot of the instance. </p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p>Default: <code>io1</code> if the <code>Iops</code> parameter is specified, otherwise <code>gp2</code> </p>"
        },
        "TdeCredentialArn": {
          "shape": "String",
          "documentation": "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
        },
        "TdeCredentialPassword": {
          "shape": "String",
          "documentation": "<p>The password for the given ARN from the key store in order to access the device.</p>"
        },
        "CACertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>Indicates the certificate that needs to be associated with the instance.</p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>The Active Directory directory ID to move the DB instance to. Specify <code>none</code> to remove the instance from its current domain. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\"> Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p> <p> <b>Amazon Aurora</b> </p> <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this value for an Aurora DB instance has no effect on the DB cluster setting. For more information, see <code>ModifyDBCluster</code>.</p>"
        },
        "MonitoringInterval": {
          "shape": "IntegerOptional",
          "documentation": "<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0.</p> <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code> </p>"
        },
        "DBPortNumber": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the database accepts connections.</p> <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values specified for options in the option group for the DB instance.</p> <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless of the value of the <code>ApplyImmediately</code> parameter.</p> <p> <b>MySQL</b> </p> <p> Default: <code>3306</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p> <b>MariaDB</b> </p> <p> Default: <code>3306</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p> <b>PostgreSQL</b> </p> <p> Default: <code>5432</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p>Type: Integer</p> <p> <b>Oracle</b> </p> <p> Default: <code>1521</code> </p> <p> Valid values: <code>1150-65535</code> </p> <p> <b>SQL Server</b> </p> <p> Default: <code>1433</code> </p> <p> Valid values: <code>1150-65535</code> except <code>1234</code>, <code>1434</code>, <code>3260</code>, <code>3343</code>, <code>3389</code>, <code>47001</code>, and <code>49152-49156</code>.</p> <p> <b>Amazon Aurora</b> </p> <p> Default: <code>3306</code> </p> <p> Valid values: <code>1150-65535</code> </p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is publicly accessible. </p> <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p> <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p> <p> <code>PubliclyAccessible</code> only applies to DB instances in a VPC. The DB instance must be part of a public subnet and <code>PubliclyAccessible</code> must be enabled for it to be publicly accessible. </p> <p>Changes to the <code>PubliclyAccessible</code> parameter are applied immediately regardless of the value of the <code>ApplyImmediately</code> parameter.</p>"
        },
        "MonitoringRoleArn": {
          "shape": "String",
          "documentation": "<p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, go to <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole\">To create an IAM role for Amazon RDS Enhanced Monitoring</a> in the <i>Amazon RDS User Guide.</i> </p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>The name of the IAM role to use when making API calls to the Directory Service.</p>"
        },
        "PromotionTier": {
          "shape": "IntegerOptional",
          "documentation": "<p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance\"> Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>. </p> <p>Default: 1</p> <p>Valid Values: 0 - 15</p>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For information about the supported DB engines, see <a>CreateDBInstance</a>.</p> <p>For more information about IAM database authentication, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "EnablePerformanceInsights": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable Performance Insights for the DB instance.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using Amazon Performance Insights</a> in the <i>Amazon Relational Database Service User Guide</i>. </p>"
        },
        "PerformanceInsightsKMSKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p> <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "PerformanceInsightsRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
        },
        "CloudwatchLogsExportConfiguration": {
          "shape": "CloudwatchLogsExportConfiguration",
          "documentation": "<p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance.</p> <p>A change to the <code>CloudwatchLogsExportConfiguration</code> parameter is always applied to the DB instance immediately. Therefore, the <code>ApplyImmediately</code> parameter has no effect.</p>"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
        },
        "UseDefaultProcessorFeatures": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance class of the DB instance uses its default processor features.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\"> Deleting a DB Instance</a>. </p>"
        },
        "MaxAllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>"
        },
        "CertificateRotationRestart": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is restarted when you rotate your SSL/TLS certificate.</p> <p>By default, the DB instance is restarted when you rotate your SSL/TLS certificate. The certificate is not updated until the DB instance is restarted.</p> <important> <p>Set this parameter only if you are <i>not</i> using SSL/TLS to connect to the DB instance.</p> </important> <p>If you are using SSL/TLS to connect to the DB instance, follow the appropriate instructions for your DB engine to rotate your SSL/TLS certificate:</p> <ul> <li> <p>For more information about rotating your SSL/TLS certificate for RDS DB engines, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html\"> Rotating Your SSL/TLS Certificate.</a> in the <i>Amazon RDS User Guide.</i> </p> </li> <li> <p>For more information about rotating your SSL/TLS certificate for Aurora DB engines, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html\"> Rotating Your SSL/TLS Certificate</a> in the <i>Amazon Aurora User Guide.</i> </p> </li> </ul>"
        },
        "ReplicaMode": {
          "shape": "ReplicaMode",
          "documentation": "<p>A value that sets the open mode of a replica database to either mounted or read-only.</p> <note> <p>Currently, this parameter is only supported for Oracle DB instances.</p> </note> <p>Mounted DB replicas are included in Oracle Enterprise Edition. The main use case for mounted replicas is cross-Region disaster recovery. The primary database doesn't use Active Data Guard to transmit information to the mounted replica. Because it doesn't accept user connections, a mounted replica can't serve a read-only workload. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html\">Working with Oracle Read Replicas for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "ModifyDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName",
        "Parameters"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing <code>DBParameterGroup</code>.</p> </li> </ul>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; later arguments are optional. A maximum of 20 parameters can be modified in a single request.</p> <p>Valid Values (for the application method): <code>immediate | pending-reboot</code> </p> <note> <p>You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover.</p> </note>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyDBProxyRequest": {
      "type": "structure",
      "required": [
        "DBProxyName"
      ],
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The identifier for the <code>DBProxy</code> to modify.</p>"
        },
        "NewDBProxyName": {
          "shape": "String",
          "documentation": "<p>The new identifier for the <code>DBProxy</code>. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>"
        },
        "Auth": {
          "shape": "UserAuthConfigList",
          "documentation": "<p>The new authentication settings for the <code>DBProxy</code>.</p>"
        },
        "RequireTLS": {
          "shape": "BooleanOptional",
          "documentation": "<p>Whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy, even if the associated database doesn't use TLS.</p>"
        },
        "IdleClientTimeout": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.</p>"
        },
        "DebugLogging": {
          "shape": "BooleanOptional",
          "documentation": "<p>Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.</p>"
        },
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.</p>"
        },
        "SecurityGroups": {
          "shape": "StringList",
          "documentation": "<p>The new list of security groups for the <code>DBProxy</code>.</p>"
        }
      }
    },
    "ModifyDBProxyResponse": {
      "type": "structure",
      "members": {
        "DBProxy": {
          "shape": "DBProxy",
          "documentation": "<p>The <code>DBProxy</code> object representing the new settings for the proxy.</p>"
        }
      }
    },
    "ModifyDBProxyTargetGroupRequest": {
      "type": "structure",
      "required": [
        "TargetGroupName",
        "DBProxyName"
      ],
      "members": {
        "TargetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the new target group to assign to the proxy.</p>"
        },
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The name of the new proxy to which to assign the target group.</p>"
        },
        "ConnectionPoolConfig": {
          "shape": "ConnectionPoolConfiguration",
          "documentation": "<p>The settings that determine the size and behavior of the connection pool for the target group.</p>"
        },
        "NewName": {
          "shape": "String",
          "documentation": "<p>The new name for the modified <code>DBProxyTarget</code>. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>"
        }
      }
    },
    "ModifyDBProxyTargetGroupResponse": {
      "type": "structure",
      "members": {
        "DBProxyTargetGroup": {
          "shape": "DBProxyTargetGroup",
          "documentation": "<p>The settings of the modified <code>DBProxyTarget</code>.</p>"
        }
      }
    },
    "ModifyDBSnapshotAttributeMessage": {
      "type": "structure",
      "required": [
        "DBSnapshotIdentifier",
        "AttributeName"
      ],
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the DB snapshot to modify the attributes for.</p>"
        },
        "AttributeName": {
          "shape": "String",
          "documentation": "<p>The name of the DB snapshot attribute to modify.</p> <p>To manage authorization for other AWS accounts to copy or restore a manual DB snapshot, set this value to <code>restore</code>.</p> <note> <p>To view the list of attributes available to modify, use the <a>DescribeDBSnapshotAttributes</a> API action.</p> </note>"
        },
        "ValuesToAdd": {
          "shape": "AttributeValueList",
          "documentation": "<p>A list of DB snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p> <p>To authorize other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account IDs, or <code>all</code> to make the manual DB snapshot restorable by any AWS account. Do not add the <code>all</code> value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts.</p>"
        },
        "ValuesToRemove": {
          "shape": "AttributeValueList",
          "documentation": "<p>A list of DB snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p> <p>To remove authorization for other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account identifiers, or <code>all</code> to remove authorization for any AWS account to copy or restore the DB snapshot. If you specify <code>all</code>, an AWS account whose account ID is explicitly added to the <code>restore</code> attribute can still copy or restore the manual DB snapshot.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyDBSnapshotAttributeResult": {
      "type": "structure",
      "members": {
        "DBSnapshotAttributesResult": {
          "shape": "DBSnapshotAttributesResult"
        }
      }
    },
    "ModifyDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBSnapshotIdentifier"
      ],
      "members": {
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB snapshot to modify.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version to upgrade the DB snapshot to. </p> <p>The following are the database engines and engine versions that are available when you upgrade a DB snapshot. </p> <p> <b>MySQL</b> </p> <ul> <li> <p> <code>5.5.46</code> (supported for 5.1 DB snapshots)</p> </li> </ul> <p> <b>Oracle</b> </p> <ul> <li> <p> <code>12.1.0.2.v8</code> (supported for 12.1.0.1 DB snapshots)</p> </li> <li> <p> <code>11.2.0.4.v12</code> (supported for 11.2.0.2 DB snapshots)</p> </li> <li> <p> <code>11.2.0.4.v11</code> (supported for 11.2.0.3 DB snapshots)</p> </li> </ul> <p> <b>PostgreSQL</b> </p> <p>For the list of engine versions that are available for upgrading a DB snapshot, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.PostgreSQL.html#USER_UpgradeDBInstance.PostgreSQL.MajorVersion\"> Upgrading the PostgreSQL DB Engine for Amazon RDS</a>. </p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The option group to identify with the upgraded DB snapshot. </p> <p>You can specify this parameter when you upgrade an Oracle DB snapshot. The same option group considerations apply when upgrading a DB snapshot as when upgrading a DB instance. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG\">Option Group Considerations</a> in the <i>Amazon RDS User Guide.</i> </p>"
        }
      }
    },
    "ModifyDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBSnapshot": {
          "shape": "DBSnapshot"
        }
      }
    },
    "ModifyDBSubnetGroupMessage": {
      "type": "structure",
      "required": [
        "DBSubnetGroupName",
        "SubnetIds"
      ],
      "members": {
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name for the DB subnet group. This value is stored as a lowercase string. You can't modify the default subnet group. </p> <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "DBSubnetGroupDescription": {
          "shape": "String",
          "documentation": "<p>The description for the DB subnet group.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIdentifierList",
          "documentation": "<p>The EC2 subnet IDs for the DB subnet group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyDBSubnetGroupResult": {
      "type": "structure",
      "members": {
        "DBSubnetGroup": {
          "shape": "DBSubnetGroup"
        }
      }
    },
    "ModifyEventSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the RDS event notification subscription.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>"
        },
        "SourceType": {
          "shape": "String",
          "documentation": "<p>The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. If this value isn't specified, all events are returned.</p> <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> </p>"
        },
        "EventCategories": {
          "shape": "EventCategoriesList",
          "documentation": "<p> A list of event categories for a source type (<code>SourceType</code>) that you want to subscribe to. You can see a list of the categories for a given source type in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html\">Events</a> in the <i>Amazon RDS User Guide</i> or by using the <code>DescribeEventCategories</code> operation. </p>"
        },
        "Enabled": {
          "shape": "BooleanOptional",
          "documentation": "<p> A value that indicates whether to activate the subscription. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyEventSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "ModifyGlobalClusterMessage": {
      "type": "structure",
      "members": {
        "GlobalClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> The DB cluster identifier for the global cluster being modified. This parameter isn't case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing global database cluster.</p> </li> </ul>"
        },
        "NewGlobalClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> The new cluster identifier for the global database cluster when modifying a global database cluster. This value is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens</p> </li> <li> <p>The first character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-cluster2</code> </p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p> Indicates if the global database cluster has deletion protection enabled. The global database cluster can't be deleted when deletion protection is enabled. </p>"
        }
      }
    },
    "ModifyGlobalClusterResult": {
      "type": "structure",
      "members": {
        "GlobalCluster": {
          "shape": "GlobalCluster"
        }
      }
    },
    "ModifyOptionGroupMessage": {
      "type": "structure",
      "required": [
        "OptionGroupName"
      ],
      "members": {
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group to be modified.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>"
        },
        "OptionsToInclude": {
          "shape": "OptionConfigurationList",
          "documentation": "<p>Options in this list are added to the option group or, if already present, the specified configuration is used to update the existing configuration.</p>"
        },
        "OptionsToRemove": {
          "shape": "OptionNamesList",
          "documentation": "<p>Options in this list are removed from the option group.</p>"
        },
        "ApplyImmediately": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to apply the change immediately or during the next maintenance window for each instance associated with the option group.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ModifyOptionGroupResult": {
      "type": "structure",
      "members": {
        "OptionGroup": {
          "shape": "OptionGroup"
        }
      }
    },
    "Option": {
      "type": "structure",
      "members": {
        "OptionName": {
          "shape": "String",
          "documentation": "<p>The name of the option.</p>"
        },
        "OptionDescription": {
          "shape": "String",
          "documentation": "<p>The description of the option.</p>"
        },
        "Persistent": {
          "shape": "Boolean",
          "documentation": "<p>Indicate if this option is persistent.</p>"
        },
        "Permanent": {
          "shape": "Boolean",
          "documentation": "<p>Indicate if this option is permanent.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>If required, the port configured for this option to use.</p>"
        },
        "OptionVersion": {
          "shape": "String",
          "documentation": "<p>The version of the option.</p>"
        },
        "OptionSettings": {
          "shape": "OptionSettingConfigurationList",
          "documentation": "<p>The option settings for this option.</p>"
        },
        "DBSecurityGroupMemberships": {
          "shape": "DBSecurityGroupMembershipList",
          "documentation": "<p>If the option requires access to a port, then this DB security group allows access to the port.</p>"
        },
        "VpcSecurityGroupMemberships": {
          "shape": "VpcSecurityGroupMembershipList",
          "documentation": "<p>If the option requires access to a port, then this VPC security group allows access to the port.</p>"
        }
      },
      "documentation": "<p>Option details.</p>"
    },
    "OptionConfiguration": {
      "type": "structure",
      "required": [
        "OptionName"
      ],
      "members": {
        "OptionName": {
          "shape": "String",
          "documentation": "<p>The configuration of options to include in a group.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The optional port for the option.</p>"
        },
        "OptionVersion": {
          "shape": "String",
          "documentation": "<p>The version for the option.</p>"
        },
        "DBSecurityGroupMemberships": {
          "shape": "DBSecurityGroupNameList",
          "documentation": "<p>A list of DBSecurityGroupMembership name strings used for this option.</p>"
        },
        "VpcSecurityGroupMemberships": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of VpcSecurityGroupMembership name strings used for this option.</p>"
        },
        "OptionSettings": {
          "shape": "OptionSettingsList",
          "documentation": "<p>The option settings to include in an option group.</p>"
        }
      },
      "documentation": "<p>A list of all available options</p>"
    },
    "OptionConfigurationList": {
      "type": "list",
      "member": {
        "shape": "OptionConfiguration",
        "locationName": "OptionConfiguration"
      }
    },
    "OptionGroup": {
      "type": "structure",
      "members": {
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the option group.</p>"
        },
        "OptionGroupDescription": {
          "shape": "String",
          "documentation": "<p>Provides a description of the option group.</p>"
        },
        "EngineName": {
          "shape": "String",
          "documentation": "<p>Indicates the name of the engine that this option group can be applied to.</p>"
        },
        "MajorEngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the major engine version associated with this option group.</p>"
        },
        "Options": {
          "shape": "OptionsList",
          "documentation": "<p>Indicates what options are available in the option group.</p>"
        },
        "AllowsVpcAndNonVpcInstanceMemberships": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether this option group can be applied to both VPC and non-VPC instances. The value <code>true</code> indicates the option group can be applied to both VPC and non-VPC instances. </p>"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>false</code>, this field is blank. If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>true</code> and this field is blank, then this option group can be applied to both VPC and non-VPC instances. If this field contains a value, then this option group can only be applied to instances that are in the VPC indicated by this field. </p>"
        },
        "OptionGroupArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the option group.</p>"
        }
      },
      "documentation": "<p/>",
      "wrapper": true
    },
    "OptionGroupMembership": {
      "type": "structure",
      "members": {
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group that the instance belongs to.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the DB instance's option group membership. Valid values are: <code>in-sync</code>, <code>pending-apply</code>, <code>pending-removal</code>, <code>pending-maintenance-apply</code>, <code>pending-maintenance-removal</code>, <code>applying</code>, <code>removing</code>, and <code>failed</code>. </p>"
        }
      },
      "documentation": "<p>Provides information on the option groups the DB instance is a member of.</p>"
    },
    "OptionGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "OptionGroupMembership",
        "locationName": "OptionGroupMembership"
      }
    },
    "OptionGroupOption": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the option.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the option.</p>"
        },
        "EngineName": {
          "shape": "String",
          "documentation": "<p>The name of the engine that this option can be applied to.</p>"
        },
        "MajorEngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the major engine version that the option is available for.</p>"
        },
        "MinimumRequiredMinorEngineVersion": {
          "shape": "String",
          "documentation": "<p>The minimum required engine version for the option to be applied.</p>"
        },
        "PortRequired": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the option requires a port.</p>"
        },
        "DefaultPort": {
          "shape": "IntegerOptional",
          "documentation": "<p>If the option requires a port, specifies the default port for the option.</p>"
        },
        "OptionsDependedOn": {
          "shape": "OptionsDependedOn",
          "documentation": "<p>The options that are prerequisites for this option.</p>"
        },
        "OptionsConflictsWith": {
          "shape": "OptionsConflictsWith",
          "documentation": "<p>The options that conflict with this option.</p>"
        },
        "Persistent": {
          "shape": "Boolean",
          "documentation": "<p>Persistent options can't be removed from an option group while DB instances are associated with the option group. If you disassociate all DB instances from the option group, your can remove the persistent option from the option group.</p>"
        },
        "Permanent": {
          "shape": "Boolean",
          "documentation": "<p>Permanent options can never be removed from an option group. An option group containing a permanent option can't be removed from a DB instance.</p>"
        },
        "RequiresAutoMinorEngineVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>If true, you must enable the Auto Minor Version Upgrade setting for your DB instance before you can use this option. You can enable Auto Minor Version Upgrade when you first create your DB instance, or by modifying your DB instance later. </p>"
        },
        "VpcOnly": {
          "shape": "Boolean",
          "documentation": "<p>If true, you can only use this option with a DB instance that is in a VPC. </p>"
        },
        "SupportsOptionVersionDowngrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>If true, you can change the option to an earlier version of the option. This only applies to options that have different versions available. </p>"
        },
        "OptionGroupOptionSettings": {
          "shape": "OptionGroupOptionSettingsList",
          "documentation": "<p>The option settings that are available (and the default value) for each option in an option group.</p>"
        },
        "OptionGroupOptionVersions": {
          "shape": "OptionGroupOptionVersionsList",
          "documentation": "<p>The versions that are available for the option.</p>"
        }
      },
      "documentation": "<p>Available option.</p>"
    },
    "OptionGroupOptionSetting": {
      "type": "structure",
      "members": {
        "SettingName": {
          "shape": "String",
          "documentation": "<p>The name of the option group option.</p>"
        },
        "SettingDescription": {
          "shape": "String",
          "documentation": "<p>The description of the option group option.</p>"
        },
        "DefaultValue": {
          "shape": "String",
          "documentation": "<p>The default value for the option group option.</p>"
        },
        "ApplyType": {
          "shape": "String",
          "documentation": "<p>The DB engine specific parameter type for the option group option.</p>"
        },
        "AllowedValues": {
          "shape": "String",
          "documentation": "<p>Indicates the acceptable values for the option group option.</p>"
        },
        "IsModifiable": {
          "shape": "Boolean",
          "documentation": "<p>Boolean value where true indicates that this option group option can be changed from the default value.</p>"
        },
        "IsRequired": {
          "shape": "Boolean",
          "documentation": "<p>Boolean value where true indicates that a value must be specified for this option setting of the option group option.</p>"
        },
        "MinimumEngineVersionPerAllowedValue": {
          "shape": "MinimumEngineVersionPerAllowedValueList",
          "documentation": "<p>The minimum DB engine version required for the corresponding allowed value for this option setting.</p>"
        }
      },
      "documentation": "<p>Option group option settings are used to display settings available for each option with their default values and other information. These values are used with the DescribeOptionGroupOptions action.</p>"
    },
    "OptionGroupOptionSettingsList": {
      "type": "list",
      "member": {
        "shape": "OptionGroupOptionSetting",
        "locationName": "OptionGroupOptionSetting"
      }
    },
    "OptionGroupOptionVersionsList": {
      "type": "list",
      "member": {
        "shape": "OptionVersion",
        "locationName": "OptionVersion"
      }
    },
    "OptionGroupOptionsList": {
      "type": "list",
      "member": {
        "shape": "OptionGroupOption",
        "locationName": "OptionGroupOption"
      },
      "documentation": "<p>List of available option group options.</p>"
    },
    "OptionGroupOptionsMessage": {
      "type": "structure",
      "members": {
        "OptionGroupOptions": {
          "shape": "OptionGroupOptionsList"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "OptionGroups": {
      "type": "structure",
      "members": {
        "OptionGroupsList": {
          "shape": "OptionGroupsList",
          "documentation": "<p>List of option groups.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p>List of option groups.</p>"
    },
    "OptionGroupsList": {
      "type": "list",
      "member": {
        "shape": "OptionGroup",
        "locationName": "OptionGroup"
      }
    },
    "OptionNamesList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "OptionSetting": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the option that has settings that you can set.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The current value of the option setting.</p>"
        },
        "DefaultValue": {
          "shape": "String",
          "documentation": "<p>The default value of the option setting.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the option setting.</p>"
        },
        "ApplyType": {
          "shape": "String",
          "documentation": "<p>The DB engine specific parameter type.</p>"
        },
        "DataType": {
          "shape": "String",
          "documentation": "<p>The data type of the option setting.</p>"
        },
        "AllowedValues": {
          "shape": "String",
          "documentation": "<p>The allowed values of the option setting.</p>"
        },
        "IsModifiable": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean value that, when true, indicates the option setting can be modified from the default.</p>"
        },
        "IsCollection": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the option setting is part of a collection.</p>"
        }
      },
      "documentation": "<p>Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.</p>"
    },
    "OptionSettingConfigurationList": {
      "type": "list",
      "member": {
        "shape": "OptionSetting",
        "locationName": "OptionSetting"
      }
    },
    "OptionSettingsList": {
      "type": "list",
      "member": {
        "shape": "OptionSetting",
        "locationName": "OptionSetting"
      }
    },
    "OptionVersion": {
      "type": "structure",
      "members": {
        "Version": {
          "shape": "String",
          "documentation": "<p>The version of the option.</p>"
        },
        "IsDefault": {
          "shape": "Boolean",
          "documentation": "<p>True if the version is the default version of the option, and otherwise false.</p>"
        }
      },
      "documentation": "<p>The version for an option. Option group option versions are returned by the <code>DescribeOptionGroupOptions</code> action.</p>"
    },
    "OptionsConflictsWith": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "OptionConflictName"
      }
    },
    "OptionsDependedOn": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "OptionName"
      }
    },
    "OptionsList": {
      "type": "list",
      "member": {
        "shape": "Option",
        "locationName": "Option"
      }
    },
    "OrderableDBInstanceOption": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The engine type of a DB instance.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The engine version of a DB instance.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The DB instance class for a DB instance.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>The license model for a DB instance.</p>"
        },
        "AvailabilityZoneGroup": {
          "shape": "String",
          "documentation": "<p>The Availability Zone group for a DB instance.</p>"
        },
        "AvailabilityZones": {
          "shape": "AvailabilityZoneList",
          "documentation": "<p>A list of Availability Zones for a DB instance.</p>"
        },
        "MultiAZCapable": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a DB instance is Multi-AZ capable.</p>"
        },
        "ReadReplicaCapable": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a DB instance can have a read replica.</p>"
        },
        "Vpc": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a DB instance is in a VPC.</p>"
        },
        "SupportsStorageEncryption": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a DB instance supports encrypted storage.</p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Indicates the storage type for a DB instance.</p>"
        },
        "SupportsIops": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a DB instance supports provisioned IOPS.</p>"
        },
        "SupportsEnhancedMonitoring": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.</p>"
        },
        "SupportsIAMDatabaseAuthentication": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether a DB instance supports IAM database authentication.</p>"
        },
        "SupportsPerformanceInsights": {
          "shape": "Boolean",
          "documentation": "<p>True if a DB instance supports Performance Insights, otherwise false.</p>"
        },
        "MinStorageSize": {
          "shape": "IntegerOptional",
          "documentation": "<p>Minimum storage size for a DB instance.</p>"
        },
        "MaxStorageSize": {
          "shape": "IntegerOptional",
          "documentation": "<p>Maximum storage size for a DB instance.</p>"
        },
        "MinIopsPerDbInstance": {
          "shape": "IntegerOptional",
          "documentation": "<p>Minimum total provisioned IOPS for a DB instance.</p>"
        },
        "MaxIopsPerDbInstance": {
          "shape": "IntegerOptional",
          "documentation": "<p>Maximum total provisioned IOPS for a DB instance.</p>"
        },
        "MinIopsPerGib": {
          "shape": "DoubleOptional",
          "documentation": "<p>Minimum provisioned IOPS per GiB for a DB instance.</p>"
        },
        "MaxIopsPerGib": {
          "shape": "DoubleOptional",
          "documentation": "<p>Maximum provisioned IOPS per GiB for a DB instance.</p>"
        },
        "AvailableProcessorFeatures": {
          "shape": "AvailableProcessorFeatureList",
          "documentation": "<p>A list of the available processor features for the DB instance class of a DB instance.</p>"
        },
        "SupportedEngineModes": {
          "shape": "EngineModeList",
          "documentation": "<p>A list of the supported DB engine modes.</p> <note> <p> <code>global</code> engine mode only applies for global database clusters created with Aurora MySQL version 5.6.10a. For higher Aurora MySQL versions, the clusters in a global database use <code>provisioned</code> engine mode. </p> </note>"
        },
        "SupportsStorageAutoscaling": {
          "shape": "BooleanOptional",
          "documentation": "<p>Whether Amazon RDS can automatically scale storage for DB instances that use the specified DB instance class.</p>"
        },
        "SupportsKerberosAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>Whether a DB instance supports Kerberos Authentication.</p>"
        },
        "OutpostCapable": {
          "shape": "Boolean",
          "documentation": "<p>Whether a DB instance supports RDS on Outposts.</p> <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Amazon RDS on AWS Outposts</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "SupportsGlobalDatabases": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether you can use Aurora global databases with a specific combination of other DB engine attributes.</p>"
        }
      },
      "documentation": "<p>Contains a list of available options for a DB instance.</p> <p> This data type is used as a response element in the <code>DescribeOrderableDBInstanceOptions</code> action. </p>",
      "wrapper": true
    },
    "OrderableDBInstanceOptionsList": {
      "type": "list",
      "member": {
        "shape": "OrderableDBInstanceOption",
        "locationName": "OrderableDBInstanceOption"
      }
    },
    "OrderableDBInstanceOptionsMessage": {
      "type": "structure",
      "members": {
        "OrderableDBInstanceOptions": {
          "shape": "OrderableDBInstanceOptionsList",
          "documentation": "<p>An <code>OrderableDBInstanceOption</code> structure containing information about orderable options for the DB instance.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous OrderableDBInstanceOptions request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code> . </p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeOrderableDBInstanceOptions</code> action. </p>"
    },
    "Outpost": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the Outpost.</p>"
        }
      },
      "documentation": "<p>A data type that represents an Outpost.</p> <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Amazon RDS on AWS Outposts</a> in the <i>Amazon RDS User Guide.</i> </p>"
    },
    "Parameter": {
      "type": "structure",
      "members": {
        "ParameterName": {
          "shape": "String",
          "documentation": "<p>Specifies the name of the parameter.</p>"
        },
        "ParameterValue": {
          "shape": "String",
          "documentation": "<p>Specifies the value of the parameter.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>Provides a description of the parameter.</p>"
        },
        "Source": {
          "shape": "String",
          "documentation": "<p>Indicates the source of the parameter value.</p>"
        },
        "ApplyType": {
          "shape": "String",
          "documentation": "<p>Specifies the engine specific parameters type.</p>"
        },
        "DataType": {
          "shape": "String",
          "documentation": "<p>Specifies the valid data type for the parameter.</p>"
        },
        "AllowedValues": {
          "shape": "String",
          "documentation": "<p>Specifies the valid range of values for the parameter.</p>"
        },
        "IsModifiable": {
          "shape": "Boolean",
          "documentation": "<p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified. Some parameters have security or operational implications that prevent them from being changed. </p>"
        },
        "MinimumEngineVersion": {
          "shape": "String",
          "documentation": "<p>The earliest engine version to which the parameter can apply.</p>"
        },
        "ApplyMethod": {
          "shape": "ApplyMethod",
          "documentation": "<p>Indicates when to apply parameter updates.</p>"
        },
        "SupportedEngineModes": {
          "shape": "EngineModeList",
          "documentation": "<p>The valid DB engine modes.</p>"
        }
      },
      "documentation": "<p> This data type is used as a request parameter in the <code>ModifyDBParameterGroup</code> and <code>ResetDBParameterGroup</code> actions. </p> <p>This data type is used as a response element in the <code>DescribeEngineDefaultParameters</code> and <code>DescribeDBParameters</code> actions.</p>"
    },
    "ParametersList": {
      "type": "list",
      "member": {
        "shape": "Parameter",
        "locationName": "Parameter"
      }
    },
    "PendingCloudwatchLogsExports": {
      "type": "structure",
      "members": {
        "LogTypesToEnable": {
          "shape": "LogTypeList",
          "documentation": "<p>Log types that are in the process of being deactivated. After they are deactivated, these log types aren't exported to CloudWatch Logs.</p>"
        },
        "LogTypesToDisable": {
          "shape": "LogTypeList",
          "documentation": "<p>Log types that are in the process of being enabled. After they are enabled, these log types are exported to CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p>A list of the log types whose configuration is still pending. In other words, these log types are in the process of being activated or deactivated.</p>"
    },
    "PendingMaintenanceAction": {
      "type": "structure",
      "members": {
        "Action": {
          "shape": "String",
          "documentation": "<p>The type of pending maintenance action that is available for the resource. Valid actions are <code>system-update</code>, <code>db-upgrade</code>, <code>hardware-maintenance</code>, and <code>ca-certificate-rotation</code>.</p>"
        },
        "AutoAppliedAfterDate": {
          "shape": "TStamp",
          "documentation": "<p>The date of the maintenance window when the action is applied. The maintenance action is applied to the resource during its first maintenance window after this date.</p>"
        },
        "ForcedApplyDate": {
          "shape": "TStamp",
          "documentation": "<p>The date when the maintenance action is automatically applied. The maintenance action is applied to the resource on this date regardless of the maintenance window for the resource.</p>"
        },
        "OptInStatus": {
          "shape": "String",
          "documentation": "<p>Indicates the type of opt-in request that has been received for the resource.</p>"
        },
        "CurrentApplyDate": {
          "shape": "TStamp",
          "documentation": "<p>The effective date when the pending maintenance action is applied to the resource. This date takes into account opt-in requests received from the <code>ApplyPendingMaintenanceAction</code> API, the <code>AutoAppliedAfterDate</code>, and the <code>ForcedApplyDate</code>. This value is blank if an opt-in request has not been received and nothing has been specified as <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description providing more detail about the maintenance action.</p>"
        }
      },
      "documentation": "<p>Provides information about a pending maintenance action for a resource.</p>"
    },
    "PendingMaintenanceActionDetails": {
      "type": "list",
      "member": {
        "shape": "PendingMaintenanceAction",
        "locationName": "PendingMaintenanceAction"
      }
    },
    "PendingMaintenanceActions": {
      "type": "list",
      "member": {
        "shape": "ResourcePendingMaintenanceActions",
        "locationName": "ResourcePendingMaintenanceActions"
      }
    },
    "PendingMaintenanceActionsMessage": {
      "type": "structure",
      "members": {
        "PendingMaintenanceActions": {
          "shape": "PendingMaintenanceActions",
          "documentation": "<p>A list of the pending maintenance actions for the resource.</p>"
        },
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the response includes only records beyond the marker, up to a number of records specified by <code>MaxRecords</code>. </p>"
        }
      },
      "documentation": "<p>Data returned from the <b>DescribePendingMaintenanceActions</b> action.</p>"
    },
    "PendingModifiedValues": {
      "type": "structure",
      "members": {
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p> Contains the new <code>DBInstanceClass</code> for the DB instance that will be applied or is currently being applied. </p>"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p> Contains the new <code>AllocatedStorage</code> size for the DB instance that will be applied or is currently being applied. </p>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>Contains the pending or currently-in-progress change of the master credentials for the DB instance.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the pending port for the DB instance.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the pending number of days for which automated backups are retained.</p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>Indicates that the Single-AZ DB instance is to change to a Multi-AZ deployment.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>Indicates the database engine version.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>The license model for the DB instance.</p> <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the new Provisioned IOPS value for the DB instance that will be applied or is currently being applied.</p>"
        },
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p> Contains the new <code>DBInstanceIdentifier</code> for the DB instance that will be applied or is currently being applied. </p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type to be associated with the DB instance.</p>"
        },
        "CACertificateIdentifier": {
          "shape": "String",
          "documentation": "<p>Specifies the identifier of the CA certificate for the DB instance.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The new DB subnet group for the DB instance. </p>"
        },
        "PendingCloudwatchLogsExports": {
          "shape": "PendingCloudwatchLogsExports"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
        }
      },
      "documentation": "<p> This data type is used as a response element in the <code>ModifyDBInstance</code> action. </p>"
    },
    "ProcessorFeature": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The value of a processor feature name.</p>"
        }
      },
      "documentation": "<p>Contains the processor features of a DB instance class.</p> <p>To specify the number of CPU cores, use the <code>coreCount</code> feature name for the <code>Name</code> parameter. To specify the number of threads per core, use the <code>threadsPerCore</code> feature name for the <code>Name</code> parameter.</p> <p>You can set the processor features of the DB instance class for a DB instance when you call one of the following actions:</p> <ul> <li> <p> <code>CreateDBInstance</code> </p> </li> <li> <p> <code>ModifyDBInstance</code> </p> </li> <li> <p> <code>RestoreDBInstanceFromDBSnapshot</code> </p> </li> <li> <p> <code>RestoreDBInstanceFromS3</code> </p> </li> <li> <p> <code>RestoreDBInstanceToPointInTime</code> </p> </li> </ul> <p>You can view the valid processor values for a particular instance class by calling the <code>DescribeOrderableDBInstanceOptions</code> action and specifying the instance class for the <code>DBInstanceClass</code> parameter.</p> <p>In addition, you can use the following actions for DB instance class processor information:</p> <ul> <li> <p> <code>DescribeDBInstances</code> </p> </li> <li> <p> <code>DescribeDBSnapshots</code> </p> </li> <li> <p> <code>DescribeValidDBInstanceModifications</code> </p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor\">Configuring the Processor of the DB Instance Class</a> in the <i>Amazon RDS User Guide. </i> </p>"
    },
    "ProcessorFeatureList": {
      "type": "list",
      "member": {
        "shape": "ProcessorFeature",
        "locationName": "ProcessorFeature"
      }
    },
    "PromoteReadReplicaDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the DB cluster read replica to promote. This parameter isn't case-sensitive. </p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DB cluster read replica.</p> </li> </ul> <p>Example: <code>my-cluster-replica1</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "PromoteReadReplicaDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "PromoteReadReplicaMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB instance identifier. This value is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing read replica DB instance.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 0 to 35.</p> </li> <li> <p>Can't be set to 0 if the DB instance is a source to read replicas.</p> </li> </ul>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p> The daily time range during which automated backups are created if automated backups are enabled, using the <code>BackupRetentionPeriod</code> parameter. </p> <p> The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html\"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        }
      },
      "documentation": "<p/>"
    },
    "PromoteReadReplicaResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "PurchaseReservedDBInstancesOfferingMessage": {
      "type": "structure",
      "required": [
        "ReservedDBInstancesOfferingId"
      ],
      "members": {
        "ReservedDBInstancesOfferingId": {
          "shape": "String",
          "documentation": "<p>The ID of the Reserved DB instance offering to purchase.</p> <p>Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706</p>"
        },
        "ReservedDBInstanceId": {
          "shape": "String",
          "documentation": "<p>Customer-specified identifier to track this reservation.</p> <p>Example: myreservationID</p>"
        },
        "DBInstanceCount": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of instances to reserve.</p> <p>Default: <code>1</code> </p>"
        },
        "Tags": {
          "shape": "TagList"
        }
      },
      "documentation": "<p/>"
    },
    "PurchaseReservedDBInstancesOfferingResult": {
      "type": "structure",
      "members": {
        "ReservedDBInstance": {
          "shape": "ReservedDBInstance"
        }
      }
    },
    "Range": {
      "type": "structure",
      "members": {
        "From": {
          "shape": "Integer",
          "documentation": "<p>The minimum value in the range.</p>"
        },
        "To": {
          "shape": "Integer",
          "documentation": "<p>The maximum value in the range.</p>"
        },
        "Step": {
          "shape": "IntegerOptional",
          "documentation": "<p>The step value for the range. For example, if you have a range of 5,000 to 10,000, with a step value of 1,000, the valid values start at 5,000 and step up by 1,000. Even though 7,500 is within the range, it isn't a valid value for the range. The valid values are 5,000, 6,000, 7,000, 8,000... </p>"
        }
      },
      "documentation": "<p>A range of integer values.</p>"
    },
    "RangeList": {
      "type": "list",
      "member": {
        "shape": "Range",
        "locationName": "Range"
      }
    },
    "ReadReplicaDBClusterIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "ReadReplicaDBClusterIdentifier"
      }
    },
    "ReadReplicaDBInstanceIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "ReadReplicaDBInstanceIdentifier"
      }
    },
    "ReadReplicaIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "ReadReplicaIdentifier"
      }
    },
    "ReadersArnList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "RebootDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB instance identifier. This parameter is stored as a lowercase string.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBInstance.</p> </li> </ul>"
        },
        "ForceFailover": {
          "shape": "BooleanOptional",
          "documentation": "<p> A value that indicates whether the reboot is conducted through a Multi-AZ failover. </p> <p>Constraint: You can't enable force failover if the instance isn't configured for Multi-AZ.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RebootDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "RecurringCharge": {
      "type": "structure",
      "members": {
        "RecurringChargeAmount": {
          "shape": "Double",
          "documentation": "<p>The amount of the recurring charge.</p>"
        },
        "RecurringChargeFrequency": {
          "shape": "String",
          "documentation": "<p>The frequency of the recurring charge.</p>"
        }
      },
      "documentation": "<p> This data type is used as a response element in the <code>DescribeReservedDBInstances</code> and <code>DescribeReservedDBInstancesOfferings</code> actions. </p>",
      "wrapper": true
    },
    "RecurringChargeList": {
      "type": "list",
      "member": {
        "shape": "RecurringCharge",
        "locationName": "RecurringCharge"
      }
    },
    "RegisterDBProxyTargetsRequest": {
      "type": "structure",
      "required": [
        "DBProxyName"
      ],
      "members": {
        "DBProxyName": {
          "shape": "String",
          "documentation": "<p>The identifier of the <code>DBProxy</code> that is associated with the <code>DBProxyTargetGroup</code>.</p>"
        },
        "TargetGroupName": {
          "shape": "String",
          "documentation": "<p>The identifier of the <code>DBProxyTargetGroup</code>.</p>"
        },
        "DBInstanceIdentifiers": {
          "shape": "StringList",
          "documentation": "<p>One or more DB instance identifiers.</p>"
        },
        "DBClusterIdentifiers": {
          "shape": "StringList",
          "documentation": "<p>One or more DB cluster identifiers.</p>"
        }
      }
    },
    "RegisterDBProxyTargetsResponse": {
      "type": "structure",
      "members": {
        "DBProxyTargets": {
          "shape": "TargetList",
          "documentation": "<p>One or more <code>DBProxyTarget</code> objects that are created when you register targets with a target group.</p>"
        }
      }
    },
    "RemoveFromGlobalClusterMessage": {
      "type": "structure",
      "members": {
        "GlobalClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> The cluster identifier to detach from the Aurora global database cluster. </p>"
        },
        "DbClusterIdentifier": {
          "shape": "String",
          "documentation": "<p> The Amazon Resource Name (ARN) identifying the cluster that was detached from the Aurora global database cluster. </p>"
        }
      }
    },
    "RemoveFromGlobalClusterResult": {
      "type": "structure",
      "members": {
        "GlobalCluster": {
          "shape": "GlobalCluster"
        }
      }
    },
    "RemoveRoleFromDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "RoleArn"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster to disassociate the IAM role from.</p>"
        },
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the Aurora DB cluster, for example <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>"
        },
        "FeatureName": {
          "shape": "String",
          "documentation": "<p>The name of the feature for the DB cluster that the IAM role is to be disassociated from. For the list of supported feature names, see <a>DBEngineVersion</a>.</p>"
        }
      }
    },
    "RemoveRoleFromDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "RoleArn",
        "FeatureName"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the DB instance to disassociate the IAM role from.</p>"
        },
        "RoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB instance, for example <code>arn:aws:iam::123456789012:role/AccessRole</code>.</p>"
        },
        "FeatureName": {
          "shape": "String",
          "documentation": "<p>The name of the feature for the DB instance that the IAM role is to be disassociated from. For the list of supported feature names, see <code>DBEngineVersion</code>. </p>"
        }
      }
    },
    "RemoveSourceIdentifierFromSubscriptionMessage": {
      "type": "structure",
      "required": [
        "SubscriptionName",
        "SourceIdentifier"
      ],
      "members": {
        "SubscriptionName": {
          "shape": "String",
          "documentation": "<p>The name of the RDS event notification subscription you want to remove a source identifier from.</p>"
        },
        "SourceIdentifier": {
          "shape": "String",
          "documentation": "<p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security group. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "RemoveSourceIdentifierFromSubscriptionResult": {
      "type": "structure",
      "members": {
        "EventSubscription": {
          "shape": "EventSubscription"
        }
      }
    },
    "RemoveTagsFromResourceMessage": {
      "type": "structure",
      "required": [
        "ResourceName",
        "TagKeys"
      ],
      "members": {
        "ResourceName": {
          "shape": "String",
          "documentation": "<p>The Amazon RDS resource that the tags are removed from. This value is an Amazon Resource Name (ARN). For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\"> Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "TagKeys": {
          "shape": "KeyList",
          "documentation": "<p>The tag key (name) of the tag to be removed.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ReplicaMode": {
      "type": "string",
      "enum": [
        "open-read-only",
        "mounted"
      ]
    },
    "ReservedDBInstance": {
      "type": "structure",
      "members": {
        "ReservedDBInstanceId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the reservation.</p>"
        },
        "ReservedDBInstancesOfferingId": {
          "shape": "String",
          "documentation": "<p>The offering identifier.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The DB instance class for the reserved DB instance.</p>"
        },
        "StartTime": {
          "shape": "TStamp",
          "documentation": "<p>The time the reservation started.</p>"
        },
        "Duration": {
          "shape": "Integer",
          "documentation": "<p>The duration of the reservation in seconds.</p>"
        },
        "FixedPrice": {
          "shape": "Double",
          "documentation": "<p>The fixed price charged for this reserved DB instance.</p>"
        },
        "UsagePrice": {
          "shape": "Double",
          "documentation": "<p>The hourly price charged for this reserved DB instance.</p>"
        },
        "CurrencyCode": {
          "shape": "String",
          "documentation": "<p>The currency code for the reserved DB instance.</p>"
        },
        "DBInstanceCount": {
          "shape": "Integer",
          "documentation": "<p>The number of reserved DB instances.</p>"
        },
        "ProductDescription": {
          "shape": "String",
          "documentation": "<p>The description of the reserved DB instance.</p>"
        },
        "OfferingType": {
          "shape": "String",
          "documentation": "<p>The offering type of this reserved DB instance.</p>"
        },
        "MultiAZ": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the reservation applies to Multi-AZ deployments.</p>"
        },
        "State": {
          "shape": "String",
          "documentation": "<p>The state of the reserved DB instance.</p>"
        },
        "RecurringCharges": {
          "shape": "RecurringChargeList",
          "documentation": "<p>The recurring price charged to run this reserved DB instance.</p>"
        },
        "ReservedDBInstanceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) for the reserved DB instance.</p>"
        },
        "LeaseId": {
          "shape": "String",
          "documentation": "<p>The unique identifier for the lease associated with the reserved DB instance.</p> <note> <p>AWS Support might request the lease ID for an issue related to a reserved DB instance.</p> </note>"
        }
      },
      "documentation": "<p> This data type is used as a response element in the <code>DescribeReservedDBInstances</code> and <code>PurchaseReservedDBInstancesOffering</code> actions. </p>",
      "wrapper": true
    },
    "ReservedDBInstanceList": {
      "type": "list",
      "member": {
        "shape": "ReservedDBInstance",
        "locationName": "ReservedDBInstance"
      }
    },
    "ReservedDBInstanceMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "ReservedDBInstances": {
          "shape": "ReservedDBInstanceList",
          "documentation": "<p>A list of reserved DB instances.</p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeReservedDBInstances</code> action. </p>"
    },
    "ReservedDBInstancesOffering": {
      "type": "structure",
      "members": {
        "ReservedDBInstancesOfferingId": {
          "shape": "String",
          "documentation": "<p>The offering identifier.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The DB instance class for the reserved DB instance.</p>"
        },
        "Duration": {
          "shape": "Integer",
          "documentation": "<p>The duration of the offering in seconds.</p>"
        },
        "FixedPrice": {
          "shape": "Double",
          "documentation": "<p>The fixed price charged for this offering.</p>"
        },
        "UsagePrice": {
          "shape": "Double",
          "documentation": "<p>The hourly price charged for this offering.</p>"
        },
        "CurrencyCode": {
          "shape": "String",
          "documentation": "<p>The currency code for the reserved DB instance offering.</p>"
        },
        "ProductDescription": {
          "shape": "String",
          "documentation": "<p>The database engine used by the offering.</p>"
        },
        "OfferingType": {
          "shape": "String",
          "documentation": "<p>The offering type.</p>"
        },
        "MultiAZ": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the offering applies to Multi-AZ deployments.</p>"
        },
        "RecurringCharges": {
          "shape": "RecurringChargeList",
          "documentation": "<p>The recurring price charged to run this reserved DB instance.</p>"
        }
      },
      "documentation": "<p> This data type is used as a response element in the <code>DescribeReservedDBInstancesOfferings</code> action. </p>",
      "wrapper": true
    },
    "ReservedDBInstancesOfferingList": {
      "type": "list",
      "member": {
        "shape": "ReservedDBInstancesOffering",
        "locationName": "ReservedDBInstancesOffering"
      }
    },
    "ReservedDBInstancesOfferingMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "ReservedDBInstancesOfferings": {
          "shape": "ReservedDBInstancesOfferingList",
          "documentation": "<p>A list of reserved DB instance offerings.</p>"
        }
      },
      "documentation": "<p> Contains the result of a successful invocation of the <code>DescribeReservedDBInstancesOfferings</code> action. </p>"
    },
    "ResetDBClusterParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBClusterParameterGroupName"
      ],
      "members": {
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group to reset.</p>"
        },
        "ResetAllParameters": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to reset all parameters in the DB cluster parameter group to their default values. You can't use this parameter if there is a list of parameter names specified for the <code>Parameters</code> parameter.</p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>A list of parameter names in the DB cluster parameter group to reset to the default values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is enabled.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ResetDBParameterGroupMessage": {
      "type": "structure",
      "required": [
        "DBParameterGroupName"
      ],
      "members": {
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group.</p> <p>Constraints:</p> <ul> <li> <p>Must match the name of an existing <code>DBParameterGroup</code>.</p> </li> </ul>"
        },
        "ResetAllParameters": {
          "shape": "Boolean",
          "documentation": "<p> A value that indicates whether to reset all parameters in the DB parameter group to default values. By default, all parameters in the DB parameter group are reset to default values. </p>"
        },
        "Parameters": {
          "shape": "ParametersList",
          "documentation": "<p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request.</p> <p> <b>MySQL</b> </p> <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code> </p> <p>You can use the immediate value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic and static parameters, and changes are applied when DB instance reboots.</p> <p> <b>MariaDB</b> </p> <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code> </p> <p>You can use the immediate value with dynamic parameters only. You can use the <code>pending-reboot</code> value for both dynamic and static parameters, and changes are applied when DB instance reboots.</p> <p> <b>Oracle</b> </p> <p>Valid Values (for Apply method): <code>pending-reboot</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "ResourcePendingMaintenanceActions": {
      "type": "structure",
      "members": {
        "ResourceIdentifier": {
          "shape": "String",
          "documentation": "<p>The ARN of the resource that has pending maintenance actions.</p>"
        },
        "PendingMaintenanceActionDetails": {
          "shape": "PendingMaintenanceActionDetails",
          "documentation": "<p>A list that provides details about the pending maintenance actions for the resource.</p>"
        }
      },
      "documentation": "<p>Describes the pending maintenance actions for a resource.</p>",
      "wrapper": true
    },
    "RestoreDBClusterFromS3Message": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "Engine",
        "MasterUsername",
        "MasterUserPassword",
        "SourceEngine",
        "SourceEngineVersion",
        "S3BucketName",
        "S3IngestionRoleArn"
      ],
      "members": {
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>A list of Availability Zones (AZs) where instances in the restored DB cluster can be created.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days for which automated backups of the restored DB cluster are retained. You must specify a minimum value of 1.</p> <p>Default: 1</p> <p>Constraints:</p> <ul> <li> <p>Must be a value from 1 to 35</p> </li> </ul>"
        },
        "CharacterSetName": {
          "shape": "String",
          "documentation": "<p>A value that indicates that the restored DB cluster should be associated with the specified CharacterSet.</p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>The database name for the restored DB cluster.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster to create from the source data in the Amazon S3 bucket. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>my-cluster1</code> </p>"
        },
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group to associate with the restored DB cluster. If this argument is omitted, <code>default.aurora5.6</code> is used. </p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p> </li> </ul>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of EC2 VPC security groups to associate with the restored DB cluster.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>A DB subnet group to associate with the restored DB cluster.</p> <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup. </p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine to be used for this DB cluster.</p> <p>Valid Values: <code>aurora</code> (for MySQL 5.6-compatible Aurora), <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), and <code>aurora-postgresql</code> </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine to use.</p> <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora-mysql --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p> <b>Aurora MySQL</b> </p> <p>Example: <code>5.6.10a</code>, <code>5.6.mysql_aurora.1.19.2</code>, <code>5.7.12</code>, <code>5.7.mysql_aurora.2.04.5</code> </p> <p> <b>Aurora PostgreSQL</b> </p> <p>Example: <code>9.6.3</code>, <code>10.7</code> </p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the instances in the restored DB cluster accept connections.</p> <p> Default: <code>3306</code> </p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The name of the master user for the restored DB cluster.</p> <p>Constraints:</p> <ul> <li> <p>Must be 1 to 16 letters or numbers.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't be a reserved word for the chosen database engine.</p> </li> </ul>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\".</p> <p>Constraints: Must contain from 8 to 41 characters.</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>A value that indicates that the restored DB cluster should be associated with the specified option group.</p> <p>Permanent options can't be removed from an option group. An option group can't be removed from a DB cluster once it is associated with a DB cluster.</p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p>The daily time range during which automated backups are created if automated backups are enabled using the <code>BackupRetentionPeriod</code> parameter. </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p> <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code> </p> <p>The default is a 30-minute window selected at random from an 8-hour block of time for each AWS Region, occurring on a random day of the week. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\"> Adjusting the Preferred Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i> </p> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> <p>Constraints: Minimum 30-minute window.</p>"
        },
        "Tags": {
          "shape": "TagList"
        },
        "StorageEncrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the restored DB cluster is encrypted.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KM encryption key.</p> <p>If the StorageEncrypted parameter is enabled, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i> </p>"
        },
        "SourceEngine": {
          "shape": "String",
          "documentation": "<p>The identifier for the database engine that was backed up to create the files stored in the Amazon S3 bucket. </p> <p>Valid values: <code>mysql</code> </p>"
        },
        "SourceEngineVersion": {
          "shape": "String",
          "documentation": "<p>The version of the database that the backup files were created from.</p> <p>MySQL versions 5.5, 5.6, and 5.7 are supported. </p> <p>Example: <code>5.6.40</code>, <code>5.7.28</code> </p>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon S3 bucket that contains the data used to create the Amazon Aurora DB cluster.</p>"
        },
        "S3Prefix": {
          "shape": "String",
          "documentation": "<p>The prefix for all of the file names that contain the data used to create the Amazon Aurora DB cluster. If you do not specify a <b>SourceS3Prefix</b> value, then the Amazon Aurora DB cluster is created by using all of the files in the Amazon S3 bucket.</p>"
        },
        "S3IngestionRoleArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon RDS to access the Amazon S3 bucket on your behalf.</p>"
        },
        "BacktrackWindow": {
          "shape": "LongOptional",
          "documentation": "<p>The target backtrack window, in seconds. To disable backtracking, set this value to 0.</p> <note> <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p> </note> <p>Default: 0</p> <p>Constraints:</p> <ul> <li> <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p> </li> </ul>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. </p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>Specify the Active Directory directory ID to restore the DB cluster in. The domain must be created prior to this operation. </p> <p> For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html\">Kerberos Authentication</a> in the <i>Amazon Aurora User Guide</i>. </p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        }
      }
    },
    "RestoreDBClusterFromS3Result": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "RestoreDBClusterFromSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "SnapshotIdentifier",
        "Engine"
      ],
      "members": {
        "AvailabilityZones": {
          "shape": "AvailabilityZones",
          "documentation": "<p>Provides the list of Availability Zones (AZs) where instances in the restored DB cluster can be created.</p>"
        },
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>"
        },
        "SnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p> <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster snapshot. However, you can use only the ARN to specify a DB snapshot.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing Snapshot.</p> </li> </ul>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The database engine to use for the new DB cluster.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version of the database engine to use for the new DB cluster.</p> <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora-mysql --query \"DBEngineVersions[].EngineVersion\"</code> </p> <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p> <p> <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query \"DBEngineVersions[].EngineVersion\"</code> </p> <note> <p>If you aren't using the default engine version, then you must specify the engine version.</p> </note> <p> <b>Aurora MySQL</b> </p> <p>Example: <code>5.6.10a</code>, <code>5.6.mysql_aurora.1.19.2</code>, <code>5.7.12</code>, <code>5.7.mysql_aurora.2.04.5</code> </p> <p> <b>Aurora PostgreSQL</b> </p> <p>Example: <code>9.6.3</code>, <code>10.7</code> </p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: This value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB cluster.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB subnet group to use for the new DB cluster.</p> <p>Constraints: If supplied, must match the name of an existing DB subnet group.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "DatabaseName": {
          "shape": "String",
          "documentation": "<p>The database name for the restored DB cluster.</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group to use for the restored DB cluster.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of VPC security groups that the new DB cluster will belong to.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to be assigned to the restored DB cluster.</p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier to use when restoring an encrypted DB cluster from a DB snapshot or DB cluster snapshot.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p> <ul> <li> <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the DB snapshot or DB cluster snapshot.</p> </li> <li> <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> isn't encrypted, then the restored DB cluster isn't encrypted.</p> </li> </ul>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i> </p>"
        },
        "BacktrackWindow": {
          "shape": "LongOptional",
          "documentation": "<p>The target backtrack window, in seconds. To disable backtracking, set this value to 0.</p> <note> <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p> </note> <p>Default: 0</p> <p>Constraints:</p> <ul> <li> <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p> </li> </ul>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "EngineMode": {
          "shape": "String",
          "documentation": "<p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>, <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>"
        },
        "ScalingConfiguration": {
          "shape": "ScalingConfiguration",
          "documentation": "<p>For DB clusters in <code>serverless</code> DB engine mode, the scaling properties of the DB cluster.</p>"
        },
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default DB cluster parameter group for the specified engine is used.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing default DB cluster parameter group.</p> </li> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. </p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>Specify the Active Directory directory ID to restore the DB cluster in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\"> Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>. </p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RestoreDBClusterFromSnapshotResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "RestoreDBClusterToPointInTimeMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier",
        "SourceDBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the new DB cluster to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul>"
        },
        "RestoreType": {
          "shape": "String",
          "documentation": "<p>The type of restore to be performed. You can specify one of the following values:</p> <ul> <li> <p> <code>full-copy</code> - The new DB cluster is restored as a full copy of the source DB cluster.</p> </li> <li> <p> <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source DB cluster.</p> </li> </ul> <p>Constraints: You can't specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p> <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored as a full copy of the source DB cluster.</p>"
        },
        "SourceDBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the source DB cluster from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBCluster.</p> </li> </ul>"
        },
        "RestoreToTime": {
          "shape": "TStamp",
          "documentation": "<p>The date and time to restore the DB cluster to.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Must be specified if <code>UseLatestRestorableTime</code> parameter isn't provided</p> </li> <li> <p>Can't be specified if the <code>UseLatestRestorableTime</code> parameter is enabled</p> </li> <li> <p>Can't be specified if the <code>RestoreType</code> parameter is <code>copy-on-write</code> </p> </li> </ul> <p>Example: <code>2015-03-07T23:45:00Z</code> </p>"
        },
        "UseLatestRestorableTime": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether to restore the DB cluster to the latest restorable backup time. By default, the DB cluster isn't restored to the latest restorable backup time. </p> <p>Constraints: Can't be specified if <code>RestoreToTime</code> parameter is provided.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the new DB cluster accepts connections.</p> <p>Constraints: A value from <code>1150-65535</code>. </p> <p>Default: The default port for the engine.</p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The DB subnet group name to use for the new DB cluster.</p> <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group for the new DB cluster.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of VPC security groups that the new DB cluster belongs to.</p>"
        },
        "Tags": {
          "shape": "TagList"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.</p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are restoring a DB cluster with the same AWS account that owns the KMS encryption key used to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the KMS encryption key.</p> <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is different than the KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p> <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p> <ul> <li> <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the KMS key that was used to encrypt the source DB cluster.</p> </li> <li> <p>If the DB cluster isn't encrypted, then the restored DB cluster isn't encrypted.</p> </li> </ul> <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that isn't encrypted, then the restore request is rejected.</p>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i> </p>"
        },
        "BacktrackWindow": {
          "shape": "LongOptional",
          "documentation": "<p>The target backtrack window, in seconds. To disable backtracking, set this value to 0.</p> <note> <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p> </note> <p>Default: 0</p> <p>Constraints:</p> <ul> <li> <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p> </li> </ul>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "DBClusterParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB cluster parameter group to associate with this DB cluster. If this argument is omitted, the default DB cluster parameter group for the specified engine is used.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DB cluster parameter group.</p> </li> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. </p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>Specify the Active Directory directory ID to restore the DB cluster in. The domain must be created prior to this operation. </p> <p> For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html\">Kerberos Authentication</a> in the <i>Amazon Aurora User Guide</i>. </p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RestoreDBClusterToPointInTimeResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "RestoreDBInstanceFromDBSnapshotMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "DBSnapshotIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 numbers, letters, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul> <p>Example: <code>my-snapshot-id</code> </p>"
        },
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier for the DB snapshot to restore from.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DBSnapshot.</p> </li> <li> <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code> must be the ARN of the shared DB snapshot.</p> </li> </ul>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the Amazon RDS DB instance, for example, <code>db.m4.large</code>. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Default: The same DBInstanceClass as the original DB instance.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the database accepts connections.</p> <p>Default: The same port as the original DB instance</p> <p>Constraints: Value must be <code>1150-65535</code> </p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone (AZ) where the DB instance will be created.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p> <p>Example: <code>us-east-1a</code> </p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The DB subnet group name to use for the new instance.</p> <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is a Multi-AZ deployment.</p> <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is publicly accessible.</p> <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p> <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p> <p>For more information, see <a>CreateDBInstance</a>.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>License model information for the restored DB instance.</p> <p>Default: Same as source.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>"
        },
        "DBName": {
          "shape": "String",
          "documentation": "<p>The database name for the restored DB instance.</p> <note> <p>This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB engines.</p> </note>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The database engine to use for the new instance.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source. For example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot.</p> <p>Valid Values:</p> <ul> <li> <p> <code>mariadb</code> </p> </li> <li> <p> <code>mysql</code> </p> </li> <li> <p> <code>oracle-ee</code> </p> </li> <li> <p> <code>oracle-se2</code> </p> </li> <li> <p> <code>oracle-se1</code> </p> </li> <li> <p> <code>oracle-se</code> </p> </li> <li> <p> <code>postgres</code> </p> </li> <li> <p> <code>sqlserver-ee</code> </p> </li> <li> <p> <code>sqlserver-se</code> </p> </li> <li> <p> <code>sqlserver-ex</code> </p> </li> <li> <p> <code>sqlserver-web</code> </p> </li> </ul>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. If this parameter isn't specified, the IOPS value is taken from the backup. If this parameter is set to 0, the new instance is converted to a non-PIOPS instance. The conversion takes additional time, though your DB instance is available for connections before the conversion starts. </p> <p>The provisioned IOPS value must follow the requirements for your database engine. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS\">Amazon RDS Provisioned IOPS Storage to Improve Performance</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints: Must be an integer greater than 1000.</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group to be used for the restored DB instance.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>"
        },
        "Tags": {
          "shape": "TagList"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified, otherwise <code>gp2</code> </p>"
        },
        "TdeCredentialArn": {
          "shape": "String",
          "documentation": "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
        },
        "TdeCredentialPassword": {
          "shape": "String",
          "documentation": "<p>The password for the given ARN from the key store in order to access the device.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p> A list of EC2 VPC security groups to associate with this DB instance. </p> <p> Default: The default EC2 VPC security group for the DB subnet group's VPC. </p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>Specify the Active Directory directory ID to restore the DB instance in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\"> Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.</p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For information about the supported DB engines, see <a>CreateDBInstance</a>.</p> <p>For more information about IAM database authentication, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
        },
        "UseDefaultProcessorFeatures": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance class of the DB instance uses its default processor features.</p>"
        },
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group to associate with this DB instance.</p> <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code> for the specified DB engine is used.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBParameterGroup.</p> </li> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\"> Deleting a DB Instance</a>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "RestoreDBInstanceFromDBSnapshotResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "RestoreDBInstanceFromS3Message": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier",
        "DBInstanceClass",
        "Engine",
        "SourceEngine",
        "SourceEngineVersion",
        "S3BucketName",
        "S3IngestionRoleArn"
      ],
      "members": {
        "DBName": {
          "shape": "String",
          "documentation": "<p>The name of the database to create when the DB instance is created. Follow the naming rules specified in <code>CreateDBInstance</code>. </p>"
        },
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB instance identifier. This parameter is stored as a lowercase string. </p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul> <p>Example: <code>mydbinstance</code> </p>"
        },
        "AllocatedStorage": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of storage (in gigabytes) to allocate initially for the DB instance. Follow the allocation rules specified in <code>CreateDBInstance</code>. </p> <note> <p>Be sure to allocate enough memory for your new DB instance so that the restore operation can succeed. You can also allocate additional memory for future growth. </p> </note>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Importing from Amazon S3 isn't supported on the db.t2.micro DB instance class. </p>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the database engine to be used for this instance. </p> <p>Valid Values: <code>mysql</code> </p>"
        },
        "MasterUsername": {
          "shape": "String",
          "documentation": "<p>The name for the master user. </p> <p>Constraints: </p> <ul> <li> <p>Must be 1 to 16 letters or numbers.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't be a reserved word for the chosen database engine.</p> </li> </ul>"
        },
        "MasterUserPassword": {
          "shape": "String",
          "documentation": "<p>The password for the master user. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\". </p> <p>Constraints: Must contain from 8 to 41 characters.</p>"
        },
        "DBSecurityGroups": {
          "shape": "DBSecurityGroupNameList",
          "documentation": "<p>A list of DB security groups to associate with this DB instance.</p> <p>Default: The default DB security group for the database engine.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p>A list of VPC security groups to associate with this DB instance. </p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone that the DB instance is created in. For information about AWS Regions and Availability Zones, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html\">Regions and Availability Zones</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region. </p> <p> Example: <code>us-east-1d</code> </p> <p>Constraint: The <code>AvailabilityZone</code> parameter can't be specified if the DB instance is a Multi-AZ deployment. The specified Availability Zone must be in the same AWS Region as the current endpoint. </p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>A DB subnet group to associate with this DB instance.</p>"
        },
        "PreferredMaintenanceWindow": {
          "shape": "String",
          "documentation": "<p>The time range each week during which system maintenance can occur, in Universal Coordinated Time (UTC). For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance\">Amazon RDS Maintenance Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>ddd:hh24:mi-ddd:hh24:mi</code>.</p> </li> <li> <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred backup window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        },
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group to associate with this DB instance.</p> <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code> for the specified DB engine is used.</p>"
        },
        "BackupRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. For more information, see <code>CreateDBInstance</code>. </p>"
        },
        "PreferredBackupWindow": {
          "shape": "String",
          "documentation": "<p>The time range each day during which automated backups are created if automated backups are enabled. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow\">The Backup Window</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Constraints:</p> <ul> <li> <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p> </li> <li> <p>Must be in Universal Coordinated Time (UTC).</p> </li> <li> <p>Must not conflict with the preferred maintenance window.</p> </li> <li> <p>Must be at least 30 minutes.</p> </li> </ul>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the database accepts connections. </p> <p>Type: Integer </p> <p>Valid Values: <code>1150</code>-<code>65535</code> </p> <p>Default: <code>3306</code> </p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is a Multi-AZ deployment. If the DB instance is a Multi-AZ deployment, you can't set the <code>AvailabilityZone</code> parameter. </p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the database engine to use. Choose the latest minor version of your database engine. For information about engine versions, see <code>CreateDBInstance</code>, or call <code>DescribeDBEngineVersions</code>. </p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether minor engine upgrades are applied automatically to the DB instance during the maintenance window. By default, minor engine upgrades are not applied automatically. </p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>The license model for this DB instance. Use <code>general-public-license</code>. </p>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of Provisioned IOPS (input/output operations per second) to allocate initially for the DB instance. For information about valid Iops values, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS\">Amazon RDS Provisioned IOPS Storage to Improve Performance</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group to associate with this DB instance. If this argument is omitted, the default option group for the specified engine is used. </p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is publicly accessible.</p> <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p> <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p> <p>For more information, see <a>CreateDBInstance</a>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags to associate with this DB instance. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html\">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type to be associated with the DB instance. </p> <p>Valid values: <code>standard</code> | <code>gp2</code> | <code>io1</code> </p> <p>If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p>Default: <code>io1</code> if the <code>Iops</code> parameter is specified; otherwise <code>gp2</code> </p>"
        },
        "StorageEncrypted": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the new DB instance is encrypted or not. </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for an encrypted DB instance. </p> <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key. </p> <p>If the <code>StorageEncrypted</code> parameter is enabled, and you do not specify a value for the <code>KmsKeyId</code> parameter, then Amazon RDS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region. </p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied. </p>"
        },
        "MonitoringInterval": {
          "shape": "IntegerOptional",
          "documentation": "<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. </p> <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code> to a value other than 0. </p> <p>Valid Values: 0, 1, 5, 10, 15, 30, 60 </p> <p>Default: <code>0</code> </p>"
        },
        "MonitoringRoleArn": {
          "shape": "String",
          "documentation": "<p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling\">Setting Up and Enabling Enhanced Monitoring</a> in the <i>Amazon RDS User Guide.</i> </p> <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value. </p>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For information about the supported DB engines, see <a>CreateDBInstance</a>.</p> <p>For more information about IAM database authentication, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "SourceEngine": {
          "shape": "String",
          "documentation": "<p>The name of the engine of your source database. </p> <p>Valid Values: <code>mysql</code> </p>"
        },
        "SourceEngineVersion": {
          "shape": "String",
          "documentation": "<p>The version of the database that the backup files were created from.</p> <p>MySQL versions 5.6 and 5.7 are supported. </p> <p>Example: <code>5.6.40</code> </p>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>The name of your Amazon S3 bucket that contains your database backup file. </p>"
        },
        "S3Prefix": {
          "shape": "String",
          "documentation": "<p>The prefix of your Amazon S3 bucket. </p>"
        },
        "S3IngestionRoleArn": {
          "shape": "String",
          "documentation": "<p>An AWS Identity and Access Management (IAM) role to allow Amazon RDS to access your Amazon S3 bucket. </p>"
        },
        "EnablePerformanceInsights": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable Performance Insights for the DB instance. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using Amazon Performance Insights</a> in the <i>Amazon Relational Database Service User Guide</i>. </p>"
        },
        "PerformanceInsightsKMSKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for encryption of Performance Insights data. The KMS key ID is the Amazon Resource Name (ARN), the KMS key identifier, or the KMS key alias for the KMS encryption key. </p> <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS uses your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS Region.</p>"
        },
        "PerformanceInsightsRetentionPeriod": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
        },
        "UseDefaultProcessorFeatures": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance class of the DB instance uses its default processor features.</p>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\"> Deleting a DB Instance</a>. </p>"
        }
      }
    },
    "RestoreDBInstanceFromS3Result": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "RestoreDBInstanceToPointInTimeMessage": {
      "type": "structure",
      "required": [
        "TargetDBInstanceIdentifier"
      ],
      "members": {
        "SourceDBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the source DB instance from which to restore.</p> <p>Constraints:</p> <ul> <li> <p>Must match the identifier of an existing DB instance.</p> </li> </ul>"
        },
        "TargetDBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p>The name of the new DB instance to be created.</p> <p>Constraints:</p> <ul> <li> <p>Must contain from 1 to 63 letters, numbers, or hyphens</p> </li> <li> <p>First character must be a letter</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens</p> </li> </ul>"
        },
        "RestoreTime": {
          "shape": "TStamp",
          "documentation": "<p>The date and time to restore from.</p> <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p> <p>Constraints:</p> <ul> <li> <p>Must be before the latest restorable time for the DB instance</p> </li> <li> <p>Can't be specified if the <code>UseLatestRestorableTime</code> parameter is enabled</p> </li> </ul> <p>Example: <code>2009-09-07T23:45:00Z</code> </p>"
        },
        "UseLatestRestorableTime": {
          "shape": "Boolean",
          "documentation": "<p> A value that indicates whether the DB instance is restored from the latest backup time. By default, the DB instance isn't restored from the latest backup time. </p> <p>Constraints: Can't be specified if the <code>RestoreTime</code> parameter is provided.</p>"
        },
        "DBInstanceClass": {
          "shape": "String",
          "documentation": "<p>The compute and memory capacity of the Amazon RDS DB instance, for example, <code>db.m4.large</code>. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes, and availability for your engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i> </p> <p>Default: The same DBInstanceClass as the original DB instance.</p>"
        },
        "Port": {
          "shape": "IntegerOptional",
          "documentation": "<p>The port number on which the database accepts connections.</p> <p>Constraints: Value must be <code>1150-65535</code> </p> <p>Default: The same port as the original DB instance.</p>"
        },
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone (AZ) where the DB instance will be created.</p> <p>Default: A random, system-chosen Availability Zone.</p> <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p> <p>Example: <code>us-east-1a</code> </p>"
        },
        "DBSubnetGroupName": {
          "shape": "String",
          "documentation": "<p>The DB subnet group name to use for the new instance.</p> <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p> <p>Example: <code>mySubnetgroup</code> </p>"
        },
        "MultiAZ": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is a Multi-AZ deployment.</p> <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>"
        },
        "PubliclyAccessible": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance is publicly accessible.</p> <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p> <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p> <p>For more information, see <a>CreateDBInstance</a>.</p>"
        },
        "AutoMinorVersionUpgrade": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window.</p>"
        },
        "LicenseModel": {
          "shape": "String",
          "documentation": "<p>License model information for the restored DB instance.</p> <p>Default: Same as source.</p> <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code> </p>"
        },
        "DBName": {
          "shape": "String",
          "documentation": "<p>The database name for the restored DB instance.</p> <note> <p>This parameter isn't used for the MySQL or MariaDB engines.</p> </note>"
        },
        "Engine": {
          "shape": "String",
          "documentation": "<p>The database engine to use for the new instance.</p> <p>Default: The same as source</p> <p>Constraint: Must be compatible with the engine of the source</p> <p>Valid Values:</p> <ul> <li> <p> <code>mariadb</code> </p> </li> <li> <p> <code>mysql</code> </p> </li> <li> <p> <code>oracle-ee</code> </p> </li> <li> <p> <code>oracle-se2</code> </p> </li> <li> <p> <code>oracle-se1</code> </p> </li> <li> <p> <code>oracle-se</code> </p> </li> <li> <p> <code>postgres</code> </p> </li> <li> <p> <code>sqlserver-ee</code> </p> </li> <li> <p> <code>sqlserver-se</code> </p> </li> <li> <p> <code>sqlserver-ex</code> </p> </li> <li> <p> <code>sqlserver-web</code> </p> </li> </ul>"
        },
        "Iops": {
          "shape": "IntegerOptional",
          "documentation": "<p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p> <p>Constraints: Must be an integer greater than 1000.</p> <p> <b>SQL Server</b> </p> <p>Setting the IOPS value for the SQL Server database engine isn't supported.</p>"
        },
        "OptionGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the option group to be used for the restored DB instance.</p> <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>"
        },
        "CopyTagsToSnapshot": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.</p>"
        },
        "Tags": {
          "shape": "TagList"
        },
        "StorageType": {
          "shape": "String",
          "documentation": "<p>Specifies the storage type to be associated with the DB instance.</p> <p> Valid values: <code>standard | gp2 | io1</code> </p> <p> If you specify <code>io1</code>, you must also include a value for the <code>Iops</code> parameter. </p> <p> Default: <code>io1</code> if the <code>Iops</code> parameter is specified, otherwise <code>gp2</code> </p>"
        },
        "TdeCredentialArn": {
          "shape": "String",
          "documentation": "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
        },
        "TdeCredentialPassword": {
          "shape": "String",
          "documentation": "<p>The password for the given ARN from the key store in order to access the device.</p>"
        },
        "VpcSecurityGroupIds": {
          "shape": "VpcSecurityGroupIdList",
          "documentation": "<p> A list of EC2 VPC security groups to associate with this DB instance. </p> <p> Default: The default EC2 VPC security group for the DB subnet group's VPC. </p>"
        },
        "Domain": {
          "shape": "String",
          "documentation": "<p>Specify the Active Directory directory ID to restore the DB instance in. The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\"> Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "DomainIAMRoleName": {
          "shape": "String",
          "documentation": "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
        },
        "EnableIAMDatabaseAuthentication": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. By default, mapping is disabled. For information about the supported DB engines, see <a>CreateDBInstance</a>.</p> <p>For more information about IAM database authentication, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\"> IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "EnableCloudwatchLogsExports": {
          "shape": "LogTypeList",
          "documentation": "<p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values in the list depend on the DB engine being used. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>"
        },
        "ProcessorFeatures": {
          "shape": "ProcessorFeatureList",
          "documentation": "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
        },
        "UseDefaultProcessorFeatures": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance class of the DB instance uses its default processor features.</p>"
        },
        "DBParameterGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB parameter group to associate with this DB instance.</p> <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code> for the specified DB engine is used.</p> <p>Constraints:</p> <ul> <li> <p>If supplied, must match the name of an existing DBParameterGroup.</p> </li> <li> <p>Must be 1 to 255 letters, numbers, or hyphens.</p> </li> <li> <p>First character must be a letter.</p> </li> <li> <p>Can't end with a hyphen or contain two consecutive hyphens.</p> </li> </ul>"
        },
        "DeletionProtection": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether the DB instance has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\"> Deleting a DB Instance</a>. </p>"
        },
        "SourceDbiResourceId": {
          "shape": "String",
          "documentation": "<p>The resource ID of the source DB instance from which to restore.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "RestoreDBInstanceToPointInTimeResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "RestoreWindow": {
      "type": "structure",
      "members": {
        "EarliestTime": {
          "shape": "TStamp",
          "documentation": "<p>The earliest time you can restore an instance to.</p>"
        },
        "LatestTime": {
          "shape": "TStamp",
          "documentation": "<p>The latest time you can restore an instance to.</p>"
        }
      },
      "documentation": "<p>Earliest and latest time an instance can be restored to:</p>"
    },
    "RevokeDBSecurityGroupIngressMessage": {
      "type": "structure",
      "required": [
        "DBSecurityGroupName"
      ],
      "members": {
        "DBSecurityGroupName": {
          "shape": "String",
          "documentation": "<p>The name of the DB security group to revoke ingress from.</p>"
        },
        "CIDRIP": {
          "shape": "String",
          "documentation": "<p> The IP range to revoke access from. Must be a valid CIDR range. If <code>CIDRIP</code> is specified, <code>EC2SecurityGroupName</code>, <code>EC2SecurityGroupId</code> and <code>EC2SecurityGroupOwnerId</code> can't be provided. </p>"
        },
        "EC2SecurityGroupName": {
          "shape": "String",
          "documentation": "<p> The name of the EC2 security group to revoke access from. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>"
        },
        "EC2SecurityGroupId": {
          "shape": "String",
          "documentation": "<p> The id of the EC2 security group to revoke access from. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>"
        },
        "EC2SecurityGroupOwnerId": {
          "shape": "String",
          "documentation": "<p> The AWS account number of the owner of the EC2 security group specified in the <code>EC2SecurityGroupName</code> parameter. The AWS access key ID isn't an acceptable value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "RevokeDBSecurityGroupIngressResult": {
      "type": "structure",
      "members": {
        "DBSecurityGroup": {
          "shape": "DBSecurityGroup"
        }
      }
    },
    "ScalingConfiguration": {
      "type": "structure",
      "members": {
        "MinCapacity": {
          "shape": "IntegerOptional",
          "documentation": "<p>The minimum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p> <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p> <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p> <p>The minimum capacity must be less than or equal to the maximum capacity.</p>"
        },
        "MaxCapacity": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p> <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p> <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p> <p>The maximum capacity must be greater than or equal to the minimum capacity.</p>"
        },
        "AutoPause": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether to allow or disallow automatic pause for an Aurora DB cluster in <code>serverless</code> DB engine mode. A DB cluster can be paused only when it's idle (it has no connections).</p> <note> <p>If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot. In this case, the DB cluster is restored when there is a request to connect to it. </p> </note>"
        },
        "SecondsUntilAutoPause": {
          "shape": "IntegerOptional",
          "documentation": "<p>The time, in seconds, before an Aurora DB cluster in <code>serverless</code> mode is paused.</p>"
        },
        "TimeoutAction": {
          "shape": "String",
          "documentation": "<p>The action to take when the timeout is reached, either <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p> <p> <code>ForceApplyCapacityChange</code> sets the capacity to the specified value as soon as possible.</p> <p> <code>RollbackCapacityChange</code>, the default, ignores the capacity change if a scaling point isn't found in the timeout period.</p> <important> <p>If you specify <code>ForceApplyCapacityChange</code>, connections that prevent Aurora Serverless from finding a scaling point might be dropped.</p> </important> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling\"> Autoscaling for Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains the scaling configuration of an Aurora Serverless DB cluster.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html\">Using Amazon Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>"
    },
    "ScalingConfigurationInfo": {
      "type": "structure",
      "members": {
        "MinCapacity": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum capacity for the Aurora DB cluster in <code>serverless</code> DB engine mode.</p>"
        },
        "MaxCapacity": {
          "shape": "IntegerOptional",
          "documentation": "<p>The maximum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>"
        },
        "AutoPause": {
          "shape": "BooleanOptional",
          "documentation": "<p>A value that indicates whether automatic pause is allowed for the Aurora DB cluster in <code>serverless</code> DB engine mode.</p> <p>When the value is set to false for an Aurora Serverless DB cluster, the DB cluster automatically resumes.</p>"
        },
        "SecondsUntilAutoPause": {
          "shape": "IntegerOptional",
          "documentation": "<p>The remaining amount of time, in seconds, before the Aurora DB cluster in <code>serverless</code> mode is paused. A DB cluster can be paused only when it's idle (it has no connections).</p>"
        },
        "TimeoutAction": {
          "shape": "String",
          "documentation": "<p>The timeout action of a call to <code>ModifyCurrentDBClusterCapacity</code>, either <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>"
        }
      },
      "documentation": "<p>Shows the scaling configuration for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html\">Using Amazon Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>"
    },
    "SourceIdsList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "SourceId"
      }
    },
    "SourceRegion": {
      "type": "structure",
      "members": {
        "RegionName": {
          "shape": "String",
          "documentation": "<p>The name of the source AWS Region.</p>"
        },
        "Endpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint for the source AWS Region endpoint.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the source AWS Region.</p>"
        }
      },
      "documentation": "<p>Contains an AWS Region name as the result of a successful call to the <code>DescribeSourceRegions</code> action.</p>"
    },
    "SourceRegionList": {
      "type": "list",
      "member": {
        "shape": "SourceRegion",
        "locationName": "SourceRegion"
      }
    },
    "SourceRegionMessage": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "String",
          "documentation": "<p> An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>"
        },
        "SourceRegions": {
          "shape": "SourceRegionList",
          "documentation": "<p>A list of SourceRegion instances that contains each source AWS Region that the current AWS Region can get a read replica or a DB snapshot from.</p>"
        }
      },
      "documentation": "<p>Contains the result of a successful invocation of the <code>DescribeSourceRegions</code> action.</p>"
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "db-instance",
        "db-parameter-group",
        "db-security-group",
        "db-snapshot",
        "db-cluster",
        "db-cluster-snapshot"
      ]
    },
    "StartActivityStreamRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Mode",
        "KmsKeyId"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the DB cluster, for example <code>arn:aws:rds:us-east-1:12345667890:cluster:das-cluster</code>.</p>"
        },
        "Mode": {
          "shape": "ActivityStreamMode",
          "documentation": "<p>Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for encrypting messages in the database activity stream. The key identifier can be either a key ID, a key ARN, or a key alias.</p>"
        },
        "ApplyImmediately": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether or not the database activity stream is to start as soon as possible, regardless of the maintenance window for the database.</p>"
        }
      }
    },
    "StartActivityStreamResponse": {
      "type": "structure",
      "members": {
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier for encryption of messages in the database activity stream.</p>"
        },
        "KinesisStreamName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Kinesis data stream to be used for the database activity stream.</p>"
        },
        "Status": {
          "shape": "ActivityStreamStatus",
          "documentation": "<p>The status of the database activity stream.</p>"
        },
        "Mode": {
          "shape": "ActivityStreamMode",
          "documentation": "<p>The mode of the database activity stream.</p>"
        },
        "ApplyImmediately": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether or not the database activity stream will start as soon as possible, regardless of the maintenance window for the database.</p>"
        }
      }
    },
    "StartDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier of the Amazon Aurora DB cluster to be started. This parameter is stored as a lowercase string.</p>"
        }
      }
    },
    "StartDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "StartDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p> The user-supplied instance identifier. </p>"
        }
      }
    },
    "StartDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
        }
      }
    },
    "StartExportTaskMessage": {
      "type": "structure",
      "required": [
        "ExportTaskIdentifier",
        "SourceArn",
        "S3BucketName",
        "IamRoleArn",
        "KmsKeyId"
      ],
      "members": {
        "ExportTaskIdentifier": {
          "shape": "String",
          "documentation": "<p>A unique identifier for the snapshot export task. This ID isn't an identifier for the Amazon S3 bucket where the snapshot is to be exported to. </p>"
        },
        "SourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the snapshot to export to Amazon S3.</p>"
        },
        "S3BucketName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon S3 bucket to export the snapshot to.</p>"
        },
        "IamRoleArn": {
          "shape": "String",
          "documentation": "<p>The name of the IAM role to use for writing to the Amazon S3 bucket when exporting a snapshot. </p>"
        },
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The ID of the AWS KMS key to use to encrypt the snapshot exported to Amazon S3. The KMS key ID is the Amazon Resource Name (ARN), the KMS key identifier, or the KMS key alias for the KMS encryption key. The caller of this operation must be authorized to execute the following operations. These can be set in the KMS key policy: </p> <ul> <li> <p>GrantOperation.Encrypt</p> </li> <li> <p>GrantOperation.Decrypt</p> </li> <li> <p>GrantOperation.GenerateDataKey</p> </li> <li> <p>GrantOperation.GenerateDataKeyWithoutPlaintext</p> </li> <li> <p>GrantOperation.ReEncryptFrom</p> </li> <li> <p>GrantOperation.ReEncryptTo</p> </li> <li> <p>GrantOperation.CreateGrant</p> </li> <li> <p>GrantOperation.DescribeKey</p> </li> <li> <p>GrantOperation.RetireGrant</p> </li> </ul>"
        },
        "S3Prefix": {
          "shape": "String",
          "documentation": "<p>The Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.</p>"
        },
        "ExportOnly": {
          "shape": "StringList",
          "documentation": "<p>The data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are the following:</p> <ul> <li> <p> <code>database</code> - Export all the data from a specified database.</p> </li> <li> <p> <code>database.table</code> <i>table-name</i> - Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p> </li> <li> <p> <code>database.schema</code> <i>schema-name</i> - Export a database schema of the snapshot. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p> </li> <li> <p> <code>database.schema.table</code> <i>table-name</i> - Export a table of the database schema. This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p> </li> </ul>"
        }
      }
    },
    "StopActivityStreamRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the DB cluster for the database activity stream. For example, <code>arn:aws:rds:us-east-1:12345667890:cluster:das-cluster</code>. </p>"
        },
        "ApplyImmediately": {
          "shape": "BooleanOptional",
          "documentation": "<p>Specifies whether or not the database activity stream is to stop as soon as possible, regardless of the maintenance window for the database.</p>"
        }
      }
    },
    "StopActivityStreamResponse": {
      "type": "structure",
      "members": {
        "KmsKeyId": {
          "shape": "String",
          "documentation": "<p>The AWS KMS key identifier used for encrypting messages in the database activity stream.</p>"
        },
        "KinesisStreamName": {
          "shape": "String",
          "documentation": "<p>The name of the Amazon Kinesis data stream used for the database activity stream.</p>"
        },
        "Status": {
          "shape": "ActivityStreamStatus",
          "documentation": "<p>The status of the database activity stream.</p>"
        }
      }
    },
    "StopDBClusterMessage": {
      "type": "structure",
      "required": [
        "DBClusterIdentifier"
      ],
      "members": {
        "DBClusterIdentifier": {
          "shape": "String",
          "documentation": "<p>The DB cluster identifier of the Amazon Aurora DB cluster to be stopped. This parameter is stored as a lowercase string.</p>"
        }
      }
    },
    "StopDBClusterResult": {
      "type": "structure",
      "members": {
        "DBCluster": {
          "shape": "DBCluster"
        }
      }
    },
    "StopDBInstanceMessage": {
      "type": "structure",
      "required": [
        "DBInstanceIdentifier"
      ],
      "members": {
        "DBInstanceIdentifier": {
          "shape": "String",
          "documentation": "<p> The user-supplied instance identifier. </p>"
        },
        "DBSnapshotIdentifier": {
          "shape": "String",
          "documentation": "<p> The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped. </p>"
        }
      }
    },
    "StopDBInstanceResult": {
      "type": "structure",
      "members": {
        "DBInstance": {
          "shape": "DBInstance"
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
    "StringSensitive": {
      "type": "string",
      "sensitive": true
    },
    "Subnet": {
      "type": "structure",
      "members": {
        "SubnetIdentifier": {
          "shape": "String",
          "documentation": "<p>The identifier of the subnet.</p>"
        },
        "SubnetAvailabilityZone": {
          "shape": "AvailabilityZone"
        },
        "SubnetOutpost": {
          "shape": "Outpost",
          "documentation": "<p>If the subnet is associated with an Outpost, this value specifies the Outpost.</p> <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Amazon RDS on AWS Outposts</a> in the <i>Amazon RDS User Guide.</i> </p>"
        },
        "SubnetStatus": {
          "shape": "String",
          "documentation": "<p>The status of the subnet.</p>"
        }
      },
      "documentation": "<p> This data type is used as a response element for the <code>DescribeDBSubnetGroups</code> operation. </p>"
    },
    "SubnetIdentifierList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "SubnetIdentifier"
      }
    },
    "SubnetList": {
      "type": "list",
      "member": {
        "shape": "Subnet",
        "locationName": "Subnet"
      }
    },
    "SupportedCharacterSetsList": {
      "type": "list",
      "member": {
        "shape": "CharacterSet",
        "locationName": "CharacterSet"
      }
    },
    "SupportedTimezonesList": {
      "type": "list",
      "member": {
        "shape": "Timezone",
        "locationName": "Timezone"
      }
    },
    "TStamp": {
      "type": "timestamp"
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>"
        }
      },
      "documentation": "<p>Metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag",
        "locationName": "Tag"
      },
      "documentation": "<p>A list of tags. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html\">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i> </p>"
    },
    "TagListMessage": {
      "type": "structure",
      "members": {
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>List of tags returned by the ListTagsForResource operation.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "TargetGroupList": {
      "type": "list",
      "member": {
        "shape": "DBProxyTargetGroup"
      }
    },
    "TargetHealth": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "TargetState",
          "documentation": "<p>The current state of the connection health lifecycle for the RDS Proxy target. The following is a typical lifecycle example for the states of an RDS Proxy target: </p> <p> <code>registering</code> &gt; <code>unavailable</code> &gt; <code>available</code> &gt; <code>unavailable</code> &gt; <code>available</code> </p>"
        },
        "Reason": {
          "shape": "TargetHealthReason",
          "documentation": "<p>The reason for the current health <code>State</code> of the RDS Proxy target.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>A description of the health of the RDS Proxy target. If the <code>State</code> is <code>AVAILABLE</code>, a description is not included.</p>"
        }
      },
      "documentation": "<p>Information about the connection health of an RDS Proxy target.</p>"
    },
    "TargetHealthReason": {
      "type": "string",
      "enum": [
        "UNREACHABLE",
        "CONNECTION_FAILED",
        "AUTH_FAILURE",
        "PENDING_PROXY_CAPACITY"
      ]
    },
    "TargetList": {
      "type": "list",
      "member": {
        "shape": "DBProxyTarget"
      }
    },
    "TargetState": {
      "type": "string",
      "enum": [
        "REGISTERING",
        "AVAILABLE",
        "UNAVAILABLE"
      ]
    },
    "TargetType": {
      "type": "string",
      "enum": [
        "RDS_INSTANCE",
        "RDS_SERVERLESS_ENDPOINT",
        "TRACKED_CLUSTER"
      ]
    },
    "Timezone": {
      "type": "structure",
      "members": {
        "TimezoneName": {
          "shape": "String",
          "documentation": "<p>The name of the time zone.</p>"
        }
      },
      "documentation": "<p>A time zone associated with a <code>DBInstance</code> or a <code>DBSnapshot</code>. This data type is an element in the response to the <code>DescribeDBInstances</code>, the <code>DescribeDBSnapshots</code>, and the <code>DescribeDBEngineVersions</code> actions. </p>"
    },
    "UpgradeTarget": {
      "type": "structure",
      "members": {
        "Engine": {
          "shape": "String",
          "documentation": "<p>The name of the upgrade target database engine.</p>"
        },
        "EngineVersion": {
          "shape": "String",
          "documentation": "<p>The version number of the upgrade target database engine.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The version of the database engine that a DB instance can be upgraded to.</p>"
        },
        "AutoUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether the target version is applied to any source DB instances that have <code>AutoMinorVersionUpgrade</code> set to true.</p>"
        },
        "IsMajorVersionUpgrade": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether a database engine is upgraded to a major version.</p>"
        }
      },
      "documentation": "<p>The version of the database engine that a DB instance can be upgraded to.</p>"
    },
    "UserAuthConfig": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "String",
          "documentation": "<p>A user-specified description about the authentication used by a proxy to log in as a specific database user.</p>"
        },
        "UserName": {
          "shape": "String",
          "documentation": "<p>The name of the database user to which the proxy connects.</p>"
        },
        "AuthScheme": {
          "shape": "AuthScheme",
          "documentation": "<p>The type of authentication that the proxy uses for connections from the proxy to the underlying database.</p>"
        },
        "SecretArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.</p>"
        },
        "IAMAuth": {
          "shape": "IAMAuthMode",
          "documentation": "<p>Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy.</p>"
        }
      },
      "documentation": "<p>Specifies the details of authentication used by a proxy to log in as a specific database user.</p>"
    },
    "UserAuthConfigInfo": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "String",
          "documentation": "<p>A user-specified description about the authentication used by a proxy to log in as a specific database user.</p>"
        },
        "UserName": {
          "shape": "String",
          "documentation": "<p>The name of the database user to which the proxy connects.</p>"
        },
        "AuthScheme": {
          "shape": "AuthScheme",
          "documentation": "<p>The type of authentication that the proxy uses for connections from the proxy to the underlying database.</p>"
        },
        "SecretArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.</p>"
        },
        "IAMAuth": {
          "shape": "IAMAuthMode",
          "documentation": "<p>Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy.</p>"
        }
      },
      "documentation": "<p>Returns the details of authentication used by a proxy to log in as a specific database user.</p>"
    },
    "UserAuthConfigInfoList": {
      "type": "list",
      "member": {
        "shape": "UserAuthConfigInfo"
      }
    },
    "UserAuthConfigList": {
      "type": "list",
      "member": {
        "shape": "UserAuthConfig"
      }
    },
    "ValidDBInstanceModificationsMessage": {
      "type": "structure",
      "members": {
        "Storage": {
          "shape": "ValidStorageOptionsList",
          "documentation": "<p>Valid storage options for your DB instance. </p>"
        },
        "ValidProcessorFeatures": {
          "shape": "AvailableProcessorFeatureList",
          "documentation": "<p>Valid processor features for your DB instance. </p>"
        }
      },
      "documentation": "<p>Information about valid modifications that you can make to your DB instance. Contains the result of a successful call to the <code>DescribeValidDBInstanceModifications</code> action. You can use this information when you call <code>ModifyDBInstance</code>. </p>",
      "wrapper": true
    },
    "ValidStorageOptions": {
      "type": "structure",
      "members": {
        "StorageType": {
          "shape": "String",
          "documentation": "<p>The valid storage types for your DB instance. For example, gp2, io1. </p>"
        },
        "StorageSize": {
          "shape": "RangeList",
          "documentation": "<p>The valid range of storage in gibibytes. For example, 100 to 16384. </p>"
        },
        "ProvisionedIops": {
          "shape": "RangeList",
          "documentation": "<p>The valid range of provisioned IOPS. For example, 1000-20000. </p>"
        },
        "IopsToStorageRatio": {
          "shape": "DoubleRangeList",
          "documentation": "<p>The valid range of Provisioned IOPS to gibibytes of storage multiplier. For example, 3-10, which means that provisioned IOPS can be between 3 and 10 times storage. </p>"
        },
        "SupportsStorageAutoscaling": {
          "shape": "Boolean",
          "documentation": "<p>Whether or not Amazon RDS can automatically scale storage for DB instances that use the new instance class.</p>"
        }
      },
      "documentation": "<p>Information about valid modifications that you can make to your DB instance. Contains the result of a successful call to the <code>DescribeValidDBInstanceModifications</code> action. </p>"
    },
    "ValidStorageOptionsList": {
      "type": "list",
      "member": {
        "shape": "ValidStorageOptions",
        "locationName": "ValidStorageOptions"
      }
    },
    "ValidUpgradeTargetList": {
      "type": "list",
      "member": {
        "shape": "UpgradeTarget",
        "locationName": "UpgradeTarget"
      }
    },
    "VpcSecurityGroupIdList": {
      "type": "list",
      "member": {
        "shape": "String",
        "locationName": "VpcSecurityGroupId"
      }
    },
    "VpcSecurityGroupMembership": {
      "type": "structure",
      "members": {
        "VpcSecurityGroupId": {
          "shape": "String",
          "documentation": "<p>The name of the VPC security group.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>The status of the VPC security group.</p>"
        }
      },
      "documentation": "<p>This data type is used as a response element for queries on VPC security group membership.</p>"
    },
    "VpcSecurityGroupMembershipList": {
      "type": "list",
      "member": {
        "shape": "VpcSecurityGroupMembership",
        "locationName": "VpcSecurityGroupMembership"
      }
    },
    "VpnDetails": {
      "type": "structure",
      "members": {
        "VpnId": {
          "shape": "String",
          "documentation": "<p>The ID of the VPN.</p>"
        },
        "VpnTunnelOriginatorIP": {
          "shape": "String",
          "documentation": "<p>The IP address of network traffic from your on-premises data center. A custom AZ receives the network traffic.</p>"
        },
        "VpnGatewayIp": {
          "shape": "String",
          "documentation": "<p>The IP address of network traffic from AWS to your on-premises data center.</p>"
        },
        "VpnPSK": {
          "shape": "StringSensitive",
          "documentation": "<p>The preshared key (PSK) for the VPN.</p>"
        },
        "VpnName": {
          "shape": "String",
          "documentation": "<p>The name of the VPN.</p>"
        },
        "VpnState": {
          "shape": "String",
          "documentation": "<p>The state of the VPN.</p>"
        }
      },
      "documentation": "<p>Information about the virtual private network (VPN) between the VMware vSphere cluster and the AWS website.</p> <p>For more information about RDS on VMware, see the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\"> <i>RDS on VMware User Guide.</i> </a> </p>"
    },
    "WriteForwardingStatus": {
      "type": "string",
      "enum": [
        "enabled",
        "disabled",
        "enabling",
        "disabling",
        "unknown"
      ]
    }
  },
  "documentation": "<fullname>Amazon Relational Database Service</fullname> <p> </p> <p>Amazon Relational Database Service (Amazon RDS) is a web service that makes it easier to set up, operate, and scale a relational database in the cloud. It provides cost-efficient, resizeable capacity for an industry-standard relational database and manages common database administration tasks, freeing up developers to focus on what makes their applications and businesses unique.</p> <p>Amazon RDS gives you access to the capabilities of a MySQL, MariaDB, PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database server. These capabilities mean that the code, applications, and tools you already use today with your existing databases work with Amazon RDS without modification. Amazon RDS automatically backs up your database and maintains the database software that powers your DB instance. Amazon RDS is flexible: you can scale your DB instance's compute resources and storage capacity to meet your application's demand. As with all Amazon Web Services, there are no up-front investments, and you pay only for the resources you use.</p> <p>This interface reference for Amazon RDS contains documentation for a programming or command line interface you can use to manage Amazon RDS. Amazon RDS is asynchronous, which means that some interfaces might require techniques such as polling or callback functions to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a command is applied immediately, on the next instance reboot, or during the maintenance window. The reference structure is as follows, and we list following some related topics from the user guide.</p> <p> <b>Amazon RDS API Reference</b> </p> <ul> <li> <p>For the alphabetical list of API actions, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html\">API Actions</a>.</p> </li> <li> <p>For the alphabetical list of data types, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html\">Data Types</a>.</p> </li> <li> <p>For a list of common query parameters, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html\">Common Parameters</a>.</p> </li> <li> <p>For descriptions of the error codes, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html\">Common Errors</a>.</p> </li> </ul> <p> <b>Amazon RDS User Guide</b> </p> <ul> <li> <p>For a summary of the Amazon RDS interfaces, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces\">Available RDS Interfaces</a>.</p> </li> <li> <p>For more information about how to use the Query API, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html\">Using the Query API</a>.</p> </li> </ul>"
}
]===]))