local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-10-24",
    "endpointPrefix": "sms",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "SMS",
    "serviceFullName": "AWS Server Migration Service",
    "serviceId": "SMS",
    "signatureVersion": "v4",
    "targetPrefix": "AWSServerMigrationService_V2016_10_24",
    "uid": "sms-2016-10-24"
  },
  "operations": {
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
        "shape": "CreateAppResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Creates an application. An application consists of one or more server groups. Each server group contain one or more servers.</p>"
    },
    "CreateReplicationJob": {
      "name": "CreateReplicationJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateReplicationJobRequest"
      },
      "output": {
        "shape": "CreateReplicationJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "ServerCannotBeReplicatedException"
        },
        {
          "shape": "ReplicationJobAlreadyExistsException"
        },
        {
          "shape": "NoConnectorsAvailableException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "TemporarilyUnavailableException"
        }
      ],
      "documentation": "<p>Creates a replication job. The replication job schedules periodic replication runs to replicate your server to AWS. Each replication run creates an Amazon Machine Image (AMI).</p>"
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
      "output": {
        "shape": "DeleteAppResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Deletes the specified application. Optionally deletes the launched stack associated with the application and all AWS SMS replication jobs for servers in the application.</p>"
    },
    "DeleteAppLaunchConfiguration": {
      "name": "DeleteAppLaunchConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAppLaunchConfigurationRequest"
      },
      "output": {
        "shape": "DeleteAppLaunchConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Deletes the launch configuration for the specified application.</p>"
    },
    "DeleteAppReplicationConfiguration": {
      "name": "DeleteAppReplicationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAppReplicationConfigurationRequest"
      },
      "output": {
        "shape": "DeleteAppReplicationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Deletes the replication configuration for the specified application.</p>"
    },
    "DeleteAppValidationConfiguration": {
      "name": "DeleteAppValidationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAppValidationConfigurationRequest"
      },
      "output": {
        "shape": "DeleteAppValidationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Deletes the validation configuration for the specified application.</p>"
    },
    "DeleteReplicationJob": {
      "name": "DeleteReplicationJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteReplicationJobRequest"
      },
      "output": {
        "shape": "DeleteReplicationJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "ReplicationJobNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the specified replication job.</p> <p>After you delete a replication job, there are no further replication runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS SMS artifacts. The AMIs created by the replication runs are not deleted.</p>"
    },
    "DeleteServerCatalog": {
      "name": "DeleteServerCatalog",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServerCatalogRequest"
      },
      "output": {
        "shape": "DeleteServerCatalogResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        }
      ],
      "documentation": "<p>Deletes all servers from your server catalog.</p>"
    },
    "DisassociateConnector": {
      "name": "DisassociateConnector",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateConnectorRequest"
      },
      "output": {
        "shape": "DisassociateConnectorResponse"
      },
      "errors": [
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Disassociates the specified connector from AWS SMS.</p> <p>After you disassociate a connector, it is no longer available to support replication jobs.</p>"
    },
    "GenerateChangeSet": {
      "name": "GenerateChangeSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GenerateChangeSetRequest"
      },
      "output": {
        "shape": "GenerateChangeSetResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Generates a target change set for a currently launched stack and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.</p>"
    },
    "GenerateTemplate": {
      "name": "GenerateTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GenerateTemplateRequest"
      },
      "output": {
        "shape": "GenerateTemplateResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Generates an AWS CloudFormation template based on the current launch configuration and writes it to an Amazon S3 object in the customer’s Amazon S3 bucket.</p>"
    },
    "GetApp": {
      "name": "GetApp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAppRequest"
      },
      "output": {
        "shape": "GetAppResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Retrieve information about the specified application.</p>"
    },
    "GetAppLaunchConfiguration": {
      "name": "GetAppLaunchConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAppLaunchConfigurationRequest"
      },
      "output": {
        "shape": "GetAppLaunchConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Retrieves the application launch configuration associated with the specified application.</p>"
    },
    "GetAppReplicationConfiguration": {
      "name": "GetAppReplicationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAppReplicationConfigurationRequest"
      },
      "output": {
        "shape": "GetAppReplicationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Retrieves the application replication configuration associated with the specified application.</p>"
    },
    "GetAppValidationConfiguration": {
      "name": "GetAppValidationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAppValidationConfigurationRequest"
      },
      "output": {
        "shape": "GetAppValidationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Retrieves information about a configuration for validating an application.</p>"
    },
    "GetAppValidationOutput": {
      "name": "GetAppValidationOutput",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAppValidationOutputRequest"
      },
      "output": {
        "shape": "GetAppValidationOutputResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Retrieves output from validating an application.</p>"
    },
    "GetConnectors": {
      "name": "GetConnectors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConnectorsRequest"
      },
      "output": {
        "shape": "GetConnectorsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        }
      ],
      "documentation": "<p>Describes the connectors registered with the AWS SMS.</p>"
    },
    "GetReplicationJobs": {
      "name": "GetReplicationJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetReplicationJobsRequest"
      },
      "output": {
        "shape": "GetReplicationJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "UnauthorizedOperationException"
        }
      ],
      "documentation": "<p>Describes the specified replication job or all of your replication jobs.</p>"
    },
    "GetReplicationRuns": {
      "name": "GetReplicationRuns",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetReplicationRunsRequest"
      },
      "output": {
        "shape": "GetReplicationRunsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "UnauthorizedOperationException"
        }
      ],
      "documentation": "<p>Describes the replication runs for the specified replication job.</p>"
    },
    "GetServers": {
      "name": "GetServers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServersRequest"
      },
      "output": {
        "shape": "GetServersResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        }
      ],
      "documentation": "<p>Describes the servers in your server catalog.</p> <p>Before you can describe your servers, you must import them using <a>ImportServerCatalog</a>.</p>"
    },
    "ImportAppCatalog": {
      "name": "ImportAppCatalog",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportAppCatalogRequest"
      },
      "output": {
        "shape": "ImportAppCatalogResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Allows application import from AWS Migration Hub.</p>"
    },
    "ImportServerCatalog": {
      "name": "ImportServerCatalog",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportServerCatalogRequest"
      },
      "output": {
        "shape": "ImportServerCatalogResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "NoConnectorsAvailableException"
        }
      ],
      "documentation": "<p>Gathers a complete list of on-premises servers. Connectors must be installed and monitoring all servers to import.</p> <p>This call returns immediately, but might take additional time to retrieve all the servers.</p>"
    },
    "LaunchApp": {
      "name": "LaunchApp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "LaunchAppRequest"
      },
      "output": {
        "shape": "LaunchAppResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Launches the specified application as a stack in AWS CloudFormation.</p>"
    },
    "ListApps": {
      "name": "ListApps",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAppsRequest"
      },
      "output": {
        "shape": "ListAppsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Retrieves summaries for all applications.</p>"
    },
    "NotifyAppValidationOutput": {
      "name": "NotifyAppValidationOutput",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "NotifyAppValidationOutputRequest"
      },
      "output": {
        "shape": "NotifyAppValidationOutputResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Provides information to AWS SMS about whether application validation is successful.</p>"
    },
    "PutAppLaunchConfiguration": {
      "name": "PutAppLaunchConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAppLaunchConfigurationRequest"
      },
      "output": {
        "shape": "PutAppLaunchConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Creates or updates the launch configuration for the specified application.</p>"
    },
    "PutAppReplicationConfiguration": {
      "name": "PutAppReplicationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAppReplicationConfigurationRequest"
      },
      "output": {
        "shape": "PutAppReplicationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Creates or updates the replication configuration for the specified application.</p>"
    },
    "PutAppValidationConfiguration": {
      "name": "PutAppValidationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutAppValidationConfigurationRequest"
      },
      "output": {
        "shape": "PutAppValidationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Creates or updates a validation configuration for the specified application.</p>"
    },
    "StartAppReplication": {
      "name": "StartAppReplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartAppReplicationRequest"
      },
      "output": {
        "shape": "StartAppReplicationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Starts replicating the specified application by creating replication jobs for each server in the application.</p>"
    },
    "StartOnDemandAppReplication": {
      "name": "StartOnDemandAppReplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartOnDemandAppReplicationRequest"
      },
      "output": {
        "shape": "StartOnDemandAppReplicationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Starts an on-demand replication run for the specified application.</p>"
    },
    "StartOnDemandReplicationRun": {
      "name": "StartOnDemandReplicationRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartOnDemandReplicationRunRequest"
      },
      "output": {
        "shape": "StartOnDemandReplicationRunResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "ReplicationRunLimitExceededException"
        },
        {
          "shape": "DryRunOperationException"
        }
      ],
      "documentation": "<p>Starts an on-demand replication run for the specified replication job. This replication run starts immediately. This replication run is in addition to the ones already scheduled.</p> <p>There is a limit on the number of on-demand replications runs that you can request in a 24-hour period.</p>"
    },
    "StopAppReplication": {
      "name": "StopAppReplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopAppReplicationRequest"
      },
      "output": {
        "shape": "StopAppReplicationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Stops replicating the specified application by deleting the replication job for each server in the application.</p>"
    },
    "TerminateApp": {
      "name": "TerminateApp",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TerminateAppRequest"
      },
      "output": {
        "shape": "TerminateAppResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Terminates the stack for the specified application.</p>"
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
      "output": {
        "shape": "UpdateAppResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "OperationNotPermittedException"
        }
      ],
      "documentation": "<p>Updates the specified application.</p>"
    },
    "UpdateReplicationJob": {
      "name": "UpdateReplicationJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateReplicationJobRequest"
      },
      "output": {
        "shape": "UpdateReplicationJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "MissingRequiredParameterException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "UnauthorizedOperationException"
        },
        {
          "shape": "ServerCannotBeReplicatedException"
        },
        {
          "shape": "ReplicationJobNotFoundException"
        },
        {
          "shape": "InternalError"
        },
        {
          "shape": "TemporarilyUnavailableException"
        }
      ],
      "documentation": "<p>Updates the specified settings for the specified replication job.</p>"
    }
  },
  "shapes": {
    "AmiId": {
      "type": "string"
    },
    "AppDescription": {
      "type": "string"
    },
    "AppId": {
      "type": "string"
    },
    "AppIdWithValidation": {
      "type": "string",
      "pattern": "^app-[0-9a-f]{17}$"
    },
    "AppIds": {
      "type": "list",
      "member": {
        "shape": "AppId"
      }
    },
    "AppLaunchConfigurationStatus": {
      "type": "string",
      "enum": [
        "NOT_CONFIGURED",
        "CONFIGURED"
      ]
    },
    "AppLaunchStatus": {
      "type": "string",
      "enum": [
        "READY_FOR_CONFIGURATION",
        "CONFIGURATION_IN_PROGRESS",
        "CONFIGURATION_INVALID",
        "READY_FOR_LAUNCH",
        "VALIDATION_IN_PROGRESS",
        "LAUNCH_PENDING",
        "LAUNCH_IN_PROGRESS",
        "LAUNCHED",
        "PARTIALLY_LAUNCHED",
        "DELTA_LAUNCH_IN_PROGRESS",
        "DELTA_LAUNCH_FAILED",
        "LAUNCH_FAILED",
        "TERMINATE_IN_PROGRESS",
        "TERMINATE_FAILED",
        "TERMINATED"
      ]
    },
    "AppLaunchStatusMessage": {
      "type": "string"
    },
    "AppName": {
      "type": "string"
    },
    "AppReplicationConfigurationStatus": {
      "type": "string",
      "enum": [
        "NOT_CONFIGURED",
        "CONFIGURED"
      ]
    },
    "AppReplicationStatus": {
      "type": "string",
      "enum": [
        "READY_FOR_CONFIGURATION",
        "CONFIGURATION_IN_PROGRESS",
        "CONFIGURATION_INVALID",
        "READY_FOR_REPLICATION",
        "VALIDATION_IN_PROGRESS",
        "REPLICATION_PENDING",
        "REPLICATION_IN_PROGRESS",
        "REPLICATED",
        "PARTIALLY_REPLICATED",
        "DELTA_REPLICATION_IN_PROGRESS",
        "DELTA_REPLICATED",
        "DELTA_REPLICATION_FAILED",
        "REPLICATION_FAILED",
        "REPLICATION_STOPPING",
        "REPLICATION_STOP_FAILED",
        "REPLICATION_STOPPED"
      ]
    },
    "AppReplicationStatusMessage": {
      "type": "string"
    },
    "AppStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "UPDATING",
        "DELETING",
        "DELETED",
        "DELETE_FAILED"
      ]
    },
    "AppStatusMessage": {
      "type": "string"
    },
    "AppSummary": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The unique ID of the application.</p>"
        },
        "importedAppId": {
          "shape": "ImportedAppId",
          "documentation": "<p>The ID of the application.</p>"
        },
        "name": {
          "shape": "AppName",
          "documentation": "<p>The name of the application.</p>"
        },
        "description": {
          "shape": "AppDescription",
          "documentation": "<p>The description of the application.</p>"
        },
        "status": {
          "shape": "AppStatus",
          "documentation": "<p>Status of the application.</p>"
        },
        "statusMessage": {
          "shape": "AppStatusMessage",
          "documentation": "<p>A message related to the status of the application</p>"
        },
        "replicationConfigurationStatus": {
          "shape": "AppReplicationConfigurationStatus",
          "documentation": "<p>Status of the replication configuration.</p>"
        },
        "replicationStatus": {
          "shape": "AppReplicationStatus",
          "documentation": "<p>The replication status of the application.</p>"
        },
        "replicationStatusMessage": {
          "shape": "AppReplicationStatusMessage",
          "documentation": "<p>A message related to the replication status of the application.</p>"
        },
        "latestReplicationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp of the application's most recent successful replication.</p>"
        },
        "launchConfigurationStatus": {
          "shape": "AppLaunchConfigurationStatus",
          "documentation": "<p>Status of the launch configuration.</p>"
        },
        "launchStatus": {
          "shape": "AppLaunchStatus",
          "documentation": "<p>The launch status of the application.</p>"
        },
        "launchStatusMessage": {
          "shape": "AppLaunchStatusMessage",
          "documentation": "<p>A message related to the launch status of the application.</p>"
        },
        "launchDetails": {
          "shape": "LaunchDetails",
          "documentation": "<p>Details about the latest launch of the application.</p>"
        },
        "creationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The creation time of the application.</p>"
        },
        "lastModified": {
          "shape": "Timestamp",
          "documentation": "<p>The last modified time of the application.</p>"
        },
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the service role in the customer's account used by AWS SMS.</p>"
        },
        "totalServerGroups": {
          "shape": "TotalServerGroups",
          "documentation": "<p>The number of server groups present in the application.</p>"
        },
        "totalServers": {
          "shape": "TotalServers",
          "documentation": "<p>The number of servers present in the application.</p>"
        }
      },
      "documentation": "<p>Information about the application.</p>"
    },
    "AppValidationConfiguration": {
      "type": "structure",
      "members": {
        "validationId": {
          "shape": "ValidationId",
          "documentation": "<p>The ID of the validation.</p>"
        },
        "name": {
          "shape": "NonEmptyStringWithMaxLen255",
          "documentation": "<p>The name of the configuration.</p>"
        },
        "appValidationStrategy": {
          "shape": "AppValidationStrategy",
          "documentation": "<p>The validation strategy.</p>"
        },
        "ssmValidationParameters": {
          "shape": "SSMValidationParameters",
          "documentation": "<p>The validation parameters.</p>"
        }
      },
      "documentation": "<p>Configuration for validating an application.</p>"
    },
    "AppValidationConfigurations": {
      "type": "list",
      "member": {
        "shape": "AppValidationConfiguration"
      }
    },
    "AppValidationOutput": {
      "type": "structure",
      "members": {
        "ssmOutput": {
          "shape": "SSMOutput",
          "documentation": "<p>Output from using SSM to validate the application.</p>"
        }
      },
      "documentation": "<p>Output from validating an application.</p>"
    },
    "AppValidationStrategy": {
      "type": "string",
      "enum": [
        "SSM"
      ]
    },
    "Apps": {
      "type": "list",
      "member": {
        "shape": "AppSummary"
      }
    },
    "AssociatePublicIpAddress": {
      "type": "boolean"
    },
    "AutoLaunch": {
      "type": "boolean"
    },
    "BucketName": {
      "type": "string"
    },
    "ClientToken": {
      "type": "string"
    },
    "Command": {
      "type": "string",
      "max": 64000,
      "min": 1
    },
    "Connector": {
      "type": "structure",
      "members": {
        "connectorId": {
          "shape": "ConnectorId",
          "documentation": "<p>The ID of the connector.</p>"
        },
        "version": {
          "shape": "ConnectorVersion",
          "documentation": "<p>The connector version.</p>"
        },
        "status": {
          "shape": "ConnectorStatus",
          "documentation": "<p>The status of the connector.</p>"
        },
        "capabilityList": {
          "shape": "ConnectorCapabilityList",
          "documentation": "<p>The capabilities of the connector.</p>"
        },
        "vmManagerName": {
          "shape": "VmManagerName",
          "documentation": "<p>The name of the VM manager.</p>"
        },
        "vmManagerType": {
          "shape": "VmManagerType",
          "documentation": "<p>The VM management product.</p>"
        },
        "vmManagerId": {
          "shape": "VmManagerId",
          "documentation": "<p>The ID of the VM manager.</p>"
        },
        "ipAddress": {
          "shape": "IpAddress",
          "documentation": "<p>The IP address of the connector.</p>"
        },
        "macAddress": {
          "shape": "MacAddress",
          "documentation": "<p>The MAC address of the connector.</p>"
        },
        "associatedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The time the connector was associated.</p>"
        }
      },
      "documentation": "<p>Represents a connector.</p>"
    },
    "ConnectorCapability": {
      "type": "string",
      "enum": [
        "VSPHERE",
        "SCVMM",
        "HYPERV-MANAGER",
        "SNAPSHOT_BATCHING",
        "SMS_OPTIMIZED"
      ]
    },
    "ConnectorCapabilityList": {
      "type": "list",
      "member": {
        "shape": "ConnectorCapability"
      }
    },
    "ConnectorId": {
      "type": "string"
    },
    "ConnectorList": {
      "type": "list",
      "member": {
        "shape": "Connector"
      }
    },
    "ConnectorStatus": {
      "type": "string",
      "enum": [
        "HEALTHY",
        "UNHEALTHY"
      ]
    },
    "ConnectorVersion": {
      "type": "string"
    },
    "CreateAppRequest": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "AppName",
          "documentation": "<p>The name of the new application.</p>"
        },
        "description": {
          "shape": "AppDescription",
          "documentation": "<p>The description of the new application</p>"
        },
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the service role in the customer's account to be used by AWS SMS.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of application creation.</p>"
        },
        "serverGroups": {
          "shape": "ServerGroups",
          "documentation": "<p>The server groups to include in the application.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to be associated with the application.</p>"
        }
      }
    },
    "CreateAppResponse": {
      "type": "structure",
      "members": {
        "appSummary": {
          "shape": "AppSummary",
          "documentation": "<p>A summary description of the application.</p>"
        },
        "serverGroups": {
          "shape": "ServerGroups",
          "documentation": "<p>The server groups included in the application.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the application.</p>"
        }
      }
    },
    "CreateReplicationJobRequest": {
      "type": "structure",
      "required": [
        "serverId",
        "seedReplicationTime"
      ],
      "members": {
        "serverId": {
          "shape": "ServerId",
          "documentation": "<p>The ID of the server.</p>"
        },
        "seedReplicationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The seed replication time.</p>"
        },
        "frequency": {
          "shape": "Frequency",
          "documentation": "<p>The time between consecutive replication runs, in hours.</p>"
        },
        "runOnce": {
          "shape": "RunOnce",
          "documentation": "<p>Indicates whether to run the replication job one time.</p>"
        },
        "licenseType": {
          "shape": "LicenseType",
          "documentation": "<p>The license type to be used for the AMI created by a successful replication run.</p>"
        },
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the IAM role to be used by the AWS SMS.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the replication job.</p>"
        },
        "numberOfRecentAmisToKeep": {
          "shape": "NumberOfRecentAmisToKeep",
          "documentation": "<p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the maximum number is reached and a new AMI is created.</p>"
        },
        "encrypted": {
          "shape": "Encrypted",
          "documentation": "<p>Indicates whether the replication job produces encrypted AMIs.</p>"
        },
        "kmsKeyId": {
          "shape": "KmsKeyId",
          "documentation": "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:</p> <ul> <li> <p>KMS key ID</p> </li> <li> <p>KMS key alias</p> </li> <li> <p>ARN referring to the KMS key ID</p> </li> <li> <p>ARN referring to the KMS key alias</p> </li> </ul> <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used. </p>"
        }
      }
    },
    "CreateReplicationJobResponse": {
      "type": "structure",
      "members": {
        "replicationJobId": {
          "shape": "ReplicationJobId",
          "documentation": "<p>The unique identifier of the replication job.</p>"
        }
      }
    },
    "DeleteAppLaunchConfigurationRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "DeleteAppLaunchConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteAppReplicationConfigurationRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "DeleteAppReplicationConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteAppRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        },
        "forceStopAppReplication": {
          "shape": "ForceStopAppReplication",
          "documentation": "<p>Indicates whether to stop all replication jobs corresponding to the servers in the application while deleting the application.</p>"
        },
        "forceTerminateApp": {
          "shape": "ForceTerminateApp",
          "documentation": "<p>Indicates whether to terminate the stack corresponding to the application while deleting the application.</p>"
        }
      }
    },
    "DeleteAppResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteAppValidationConfigurationRequest": {
      "type": "structure",
      "required": [
        "appId"
      ],
      "members": {
        "appId": {
          "shape": "AppIdWithValidation",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "DeleteAppValidationConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteReplicationJobRequest": {
      "type": "structure",
      "required": [
        "replicationJobId"
      ],
      "members": {
        "replicationJobId": {
          "shape": "ReplicationJobId",
          "documentation": "<p>The ID of the replication job.</p>"
        }
      }
    },
    "DeleteReplicationJobResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteServerCatalogRequest": {
      "type": "structure",
      "members": {}
    },
    "DeleteServerCatalogResponse": {
      "type": "structure",
      "members": {}
    },
    "Description": {
      "type": "string"
    },
    "DisassociateConnectorRequest": {
      "type": "structure",
      "required": [
        "connectorId"
      ],
      "members": {
        "connectorId": {
          "shape": "ConnectorId",
          "documentation": "<p>The ID of the connector.</p>"
        }
      }
    },
    "DisassociateConnectorResponse": {
      "type": "structure",
      "members": {}
    },
    "EC2KeyName": {
      "type": "string"
    },
    "Encrypted": {
      "type": "boolean"
    },
    "ExecutionTimeoutSeconds": {
      "type": "integer",
      "max": 28800,
      "min": 60
    },
    "ForceStopAppReplication": {
      "type": "boolean"
    },
    "ForceTerminateApp": {
      "type": "boolean"
    },
    "Frequency": {
      "type": "integer"
    },
    "GenerateChangeSetRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application associated with the change set.</p>"
        },
        "changesetFormat": {
          "shape": "OutputFormat",
          "documentation": "<p>The format for the change set.</p>"
        }
      }
    },
    "GenerateChangeSetResponse": {
      "type": "structure",
      "members": {
        "s3Location": {
          "shape": "S3Location",
          "documentation": "<p>The location of the Amazon S3 object.</p>"
        }
      }
    },
    "GenerateTemplateRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application associated with the AWS CloudFormation template.</p>"
        },
        "templateFormat": {
          "shape": "OutputFormat",
          "documentation": "<p>The format for generating the AWS CloudFormation template.</p>"
        }
      }
    },
    "GenerateTemplateResponse": {
      "type": "structure",
      "members": {
        "s3Location": {
          "shape": "S3Location",
          "documentation": "<p>The location of the Amazon S3 object.</p>"
        }
      }
    },
    "GetAppLaunchConfigurationRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "GetAppLaunchConfigurationResponse": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        },
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the service role in the customer's account that AWS CloudFormation uses to launch the application.</p>"
        },
        "autoLaunch": {
          "shape": "AutoLaunch",
          "documentation": "<p>Indicates whether the application is configured to launch automatically after replication is complete.</p>"
        },
        "serverGroupLaunchConfigurations": {
          "shape": "ServerGroupLaunchConfigurations",
          "documentation": "<p>The launch configurations for server groups in this application.</p>"
        }
      }
    },
    "GetAppReplicationConfigurationRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "GetAppReplicationConfigurationResponse": {
      "type": "structure",
      "members": {
        "serverGroupReplicationConfigurations": {
          "shape": "ServerGroupReplicationConfigurations",
          "documentation": "<p>The replication configurations associated with server groups in this application.</p>"
        }
      }
    },
    "GetAppRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "GetAppResponse": {
      "type": "structure",
      "members": {
        "appSummary": {
          "shape": "AppSummary",
          "documentation": "<p>Information about the application.</p>"
        },
        "serverGroups": {
          "shape": "ServerGroups",
          "documentation": "<p>The server groups that belong to the application.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the application.</p>"
        }
      }
    },
    "GetAppValidationConfigurationRequest": {
      "type": "structure",
      "required": [
        "appId"
      ],
      "members": {
        "appId": {
          "shape": "AppIdWithValidation",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "GetAppValidationConfigurationResponse": {
      "type": "structure",
      "members": {
        "appValidationConfigurations": {
          "shape": "AppValidationConfigurations",
          "documentation": "<p>The configuration for application validation.</p>"
        },
        "serverGroupValidationConfigurations": {
          "shape": "ServerGroupValidationConfigurations",
          "documentation": "<p>The configuration for instance validation.</p>"
        }
      }
    },
    "GetAppValidationOutputRequest": {
      "type": "structure",
      "required": [
        "appId"
      ],
      "members": {
        "appId": {
          "shape": "AppIdWithValidation",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "GetAppValidationOutputResponse": {
      "type": "structure",
      "members": {
        "validationOutputList": {
          "shape": "ValidationOutputList",
          "documentation": "<p>The validation output.</p>"
        }
      }
    },
    "GetConnectorsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        }
      }
    },
    "GetConnectorsResponse": {
      "type": "structure",
      "members": {
        "connectorList": {
          "shape": "ConnectorList",
          "documentation": "<p>Information about the registered connectors.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token required to retrieve the next set of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "GetReplicationJobsRequest": {
      "type": "structure",
      "members": {
        "replicationJobId": {
          "shape": "ReplicationJobId",
          "documentation": "<p>The ID of the replication job.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        }
      }
    },
    "GetReplicationJobsResponse": {
      "type": "structure",
      "members": {
        "replicationJobList": {
          "shape": "ReplicationJobList",
          "documentation": "<p>Information about the replication jobs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token required to retrieve the next set of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "GetReplicationRunsRequest": {
      "type": "structure",
      "required": [
        "replicationJobId"
      ],
      "members": {
        "replicationJobId": {
          "shape": "ReplicationJobId",
          "documentation": "<p>The ID of the replication job.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        }
      }
    },
    "GetReplicationRunsResponse": {
      "type": "structure",
      "members": {
        "replicationJob": {
          "shape": "ReplicationJob",
          "documentation": "<p>Information about the replication job.</p>"
        },
        "replicationRunList": {
          "shape": "ReplicationRunList",
          "documentation": "<p>Information about the replication runs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token required to retrieve the next set of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "GetServersRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. The default value is 50. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value.</p>"
        },
        "vmServerAddressList": {
          "shape": "VmServerAddressList",
          "documentation": "<p>The server addresses.</p>"
        }
      }
    },
    "GetServersResponse": {
      "type": "structure",
      "members": {
        "lastModifiedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The time when the server was last modified.</p>"
        },
        "serverCatalogStatus": {
          "shape": "ServerCatalogStatus",
          "documentation": "<p>The status of the server catalog.</p>"
        },
        "serverList": {
          "shape": "ServerList",
          "documentation": "<p>Information about the servers.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token required to retrieve the next set of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "ImportAppCatalogRequest": {
      "type": "structure",
      "members": {
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the service role. If you omit this parameter, we create a service-linked role for AWS Migration Hub in your account. Otherwise, the role that you provide must have the <a href=\"https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed\">policy and trust policy</a> described in the <i>AWS Migration Hub User Guide</i>.</p>"
        }
      }
    },
    "ImportAppCatalogResponse": {
      "type": "structure",
      "members": {}
    },
    "ImportServerCatalogRequest": {
      "type": "structure",
      "members": {}
    },
    "ImportServerCatalogResponse": {
      "type": "structure",
      "members": {}
    },
    "ImportedAppId": {
      "type": "string"
    },
    "InstanceId": {
      "type": "string",
      "pattern": "(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"
    },
    "InstanceType": {
      "type": "string"
    },
    "IpAddress": {
      "type": "string"
    },
    "KmsKeyId": {
      "type": "string"
    },
    "LaunchAppRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "LaunchAppResponse": {
      "type": "structure",
      "members": {}
    },
    "LaunchDetails": {
      "type": "structure",
      "members": {
        "latestLaunchTime": {
          "shape": "Timestamp",
          "documentation": "<p>The latest time that this application was launched successfully.</p>"
        },
        "stackName": {
          "shape": "StackName",
          "documentation": "<p>The name of the latest stack launched for this application.</p>"
        },
        "stackId": {
          "shape": "StackId",
          "documentation": "<p>The ID of the latest stack launched for this application.</p>"
        }
      },
      "documentation": "<p>Details about the latest launch of an application.</p>"
    },
    "LaunchOrder": {
      "type": "integer"
    },
    "LicenseType": {
      "type": "string",
      "enum": [
        "AWS",
        "BYOL"
      ]
    },
    "ListAppsRequest": {
      "type": "structure",
      "members": {
        "appIds": {
          "shape": "AppIds",
          "documentation": "<p>The unique application IDs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. The default value is 100. To retrieve the remaining results, make another call with the returned <code>NextToken</code> value. </p>"
        }
      }
    },
    "ListAppsResponse": {
      "type": "structure",
      "members": {
        "apps": {
          "shape": "Apps",
          "documentation": "<p>The application summaries.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token required to retrieve the next set of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "LogicalId": {
      "type": "string"
    },
    "MacAddress": {
      "type": "string"
    },
    "MaxResults": {
      "type": "integer"
    },
    "NextToken": {
      "type": "string"
    },
    "NonEmptyStringWithMaxLen255": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "^[\\S]+$"
    },
    "NotificationContext": {
      "type": "structure",
      "members": {
        "validationId": {
          "shape": "ValidationId",
          "documentation": "<p>The ID of the validation.</p>"
        },
        "status": {
          "shape": "ValidationStatus",
          "documentation": "<p>The status of the validation.</p>"
        },
        "statusMessage": {
          "shape": "ValidationStatusMessage",
          "documentation": "<p>The status message.</p>"
        }
      },
      "documentation": "<p>Contains the status of validating an application.</p>"
    },
    "NotifyAppValidationOutputRequest": {
      "type": "structure",
      "required": [
        "appId"
      ],
      "members": {
        "appId": {
          "shape": "AppIdWithValidation",
          "documentation": "<p>The ID of the application.</p>"
        },
        "notificationContext": {
          "shape": "NotificationContext",
          "documentation": "<p>The notification information.</p>"
        }
      }
    },
    "NotifyAppValidationOutputResponse": {
      "type": "structure",
      "members": {}
    },
    "NumberOfRecentAmisToKeep": {
      "type": "integer"
    },
    "OutputFormat": {
      "type": "string",
      "enum": [
        "JSON",
        "YAML"
      ]
    },
    "PutAppLaunchConfigurationRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        },
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of service role in the customer's account that AWS CloudFormation uses to launch the application.</p>"
        },
        "autoLaunch": {
          "shape": "AutoLaunch",
          "documentation": "<p>Indicates whether the application is configured to launch automatically after replication is complete.</p>"
        },
        "serverGroupLaunchConfigurations": {
          "shape": "ServerGroupLaunchConfigurations",
          "documentation": "<p>Information about the launch configurations for server groups in the application.</p>"
        }
      }
    },
    "PutAppLaunchConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "PutAppReplicationConfigurationRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        },
        "serverGroupReplicationConfigurations": {
          "shape": "ServerGroupReplicationConfigurations",
          "documentation": "<p>Information about the replication configurations for server groups in the application.</p>"
        }
      }
    },
    "PutAppReplicationConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "PutAppValidationConfigurationRequest": {
      "type": "structure",
      "required": [
        "appId"
      ],
      "members": {
        "appId": {
          "shape": "AppIdWithValidation",
          "documentation": "<p>The ID of the application.</p>"
        },
        "appValidationConfigurations": {
          "shape": "AppValidationConfigurations",
          "documentation": "<p>The configuration for application validation.</p>"
        },
        "serverGroupValidationConfigurations": {
          "shape": "ServerGroupValidationConfigurations",
          "documentation": "<p>The configuration for instance validation.</p>"
        }
      }
    },
    "PutAppValidationConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "ReplicationJob": {
      "type": "structure",
      "members": {
        "replicationJobId": {
          "shape": "ReplicationJobId",
          "documentation": "<p>The ID of the replication job.</p>"
        },
        "serverId": {
          "shape": "ServerId",
          "documentation": "<p>The ID of the server.</p>"
        },
        "serverType": {
          "shape": "ServerType",
          "documentation": "<p>The type of server.</p>"
        },
        "vmServer": {
          "shape": "VmServer",
          "documentation": "<p>Information about the VM server.</p>"
        },
        "seedReplicationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The seed replication time.</p>"
        },
        "frequency": {
          "shape": "Frequency",
          "documentation": "<p>The time between consecutive replication runs, in hours.</p>"
        },
        "runOnce": {
          "shape": "RunOnce",
          "documentation": "<p>Indicates whether to run the replication job one time.</p>"
        },
        "nextReplicationRunStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the next replication run.</p>"
        },
        "licenseType": {
          "shape": "LicenseType",
          "documentation": "<p>The license type to be used for the AMI created by a successful replication run.</p>"
        },
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the IAM role to be used by AWS SMS.</p>"
        },
        "latestAmiId": {
          "shape": "AmiId",
          "documentation": "<p>The ID of the latest Amazon Machine Image (AMI).</p>"
        },
        "state": {
          "shape": "ReplicationJobState",
          "documentation": "<p>The state of the replication job.</p>"
        },
        "statusMessage": {
          "shape": "ReplicationJobStatusMessage",
          "documentation": "<p>The description of the current status of the replication job.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the replication job.</p>"
        },
        "numberOfRecentAmisToKeep": {
          "shape": "NumberOfRecentAmisToKeep",
          "documentation": "<p>The number of recent AMIs to keep in the customer's account for a replication job. By default, the value is set to zero, meaning that all AMIs are kept.</p>"
        },
        "encrypted": {
          "shape": "Encrypted",
          "documentation": "<p>Indicates whether the replication job should produce encrypted AMIs.</p>"
        },
        "kmsKeyId": {
          "shape": "KmsKeyId",
          "documentation": "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following: </p> <ul> <li> <p>KMS key ID</p> </li> <li> <p>KMS key alias</p> </li> <li> <p>ARN referring to the KMS key ID</p> </li> <li> <p>ARN referring to the KMS key alias</p> </li> </ul> <p>If encrypted is enabled but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used.</p>"
        },
        "replicationRunList": {
          "shape": "ReplicationRunList",
          "documentation": "<p>Information about the replication runs.</p>"
        }
      },
      "documentation": "<p>Represents a replication job.</p>"
    },
    "ReplicationJobId": {
      "type": "string"
    },
    "ReplicationJobList": {
      "type": "list",
      "member": {
        "shape": "ReplicationJob"
      }
    },
    "ReplicationJobState": {
      "type": "string",
      "enum": [
        "PENDING",
        "ACTIVE",
        "FAILED",
        "DELETING",
        "DELETED",
        "COMPLETED",
        "PAUSED_ON_FAILURE",
        "FAILING"
      ]
    },
    "ReplicationJobStatusMessage": {
      "type": "string"
    },
    "ReplicationJobTerminated": {
      "type": "boolean"
    },
    "ReplicationRun": {
      "type": "structure",
      "members": {
        "replicationRunId": {
          "shape": "ReplicationRunId",
          "documentation": "<p>The ID of the replication run.</p>"
        },
        "state": {
          "shape": "ReplicationRunState",
          "documentation": "<p>The state of the replication run.</p>"
        },
        "type": {
          "shape": "ReplicationRunType",
          "documentation": "<p>The type of replication run.</p>"
        },
        "stageDetails": {
          "shape": "ReplicationRunStageDetails",
          "documentation": "<p>Details about the current stage of the replication run.</p>"
        },
        "statusMessage": {
          "shape": "ReplicationRunStatusMessage",
          "documentation": "<p>The description of the current status of the replication job.</p>"
        },
        "amiId": {
          "shape": "AmiId",
          "documentation": "<p>The ID of the Amazon Machine Image (AMI) from the replication run.</p>"
        },
        "scheduledStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the next replication run.</p>"
        },
        "completedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The completion time of the last replication run.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the replication run.</p>"
        },
        "encrypted": {
          "shape": "Encrypted",
          "documentation": "<p>Indicates whether the replication run should produce an encrypted AMI.</p>"
        },
        "kmsKeyId": {
          "shape": "KmsKeyId",
          "documentation": "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:</p> <ul> <li> <p>KMS key ID</p> </li> <li> <p>KMS key alias</p> </li> <li> <p>ARN referring to the KMS key ID</p> </li> <li> <p>ARN referring to the KMS key alias</p> </li> </ul> <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used. </p>"
        }
      },
      "documentation": "<p>Represents a replication run.</p>"
    },
    "ReplicationRunId": {
      "type": "string"
    },
    "ReplicationRunList": {
      "type": "list",
      "member": {
        "shape": "ReplicationRun"
      }
    },
    "ReplicationRunStage": {
      "type": "string"
    },
    "ReplicationRunStageDetails": {
      "type": "structure",
      "members": {
        "stage": {
          "shape": "ReplicationRunStage",
          "documentation": "<p>The current stage of a replication run.</p>"
        },
        "stageProgress": {
          "shape": "ReplicationRunStageProgress",
          "documentation": "<p>The progress of the current stage of a replication run.</p>"
        }
      },
      "documentation": "<p>Details of the current stage of a replication run.</p>"
    },
    "ReplicationRunStageProgress": {
      "type": "string"
    },
    "ReplicationRunState": {
      "type": "string",
      "enum": [
        "PENDING",
        "MISSED",
        "ACTIVE",
        "FAILED",
        "COMPLETED",
        "DELETING",
        "DELETED"
      ]
    },
    "ReplicationRunStatusMessage": {
      "type": "string"
    },
    "ReplicationRunType": {
      "type": "string",
      "enum": [
        "ON_DEMAND",
        "AUTOMATIC"
      ]
    },
    "RoleName": {
      "type": "string"
    },
    "RunOnce": {
      "type": "boolean"
    },
    "S3BucketName": {
      "type": "string",
      "max": 63,
      "min": 3
    },
    "S3KeyName": {
      "type": "string",
      "max": 1024
    },
    "S3Location": {
      "type": "structure",
      "members": {
        "bucket": {
          "shape": "S3BucketName",
          "documentation": "<p>The Amazon S3 bucket name.</p>"
        },
        "key": {
          "shape": "S3KeyName",
          "documentation": "<p>The Amazon S3 bucket key.</p>"
        }
      },
      "documentation": "<p>Location of an Amazon S3 object.</p>"
    },
    "SSMOutput": {
      "type": "structure",
      "members": {
        "s3Location": {
          "shape": "S3Location"
        }
      },
      "documentation": "<p>Contains the location of validation output.</p>"
    },
    "SSMValidationParameters": {
      "type": "structure",
      "members": {
        "source": {
          "shape": "Source",
          "documentation": "<p>The location of the validation script.</p>"
        },
        "instanceId": {
          "shape": "InstanceId",
          "documentation": "<p>The ID of the instance. The instance must have the following tag: UserForSMSApplicationValidation=true.</p>"
        },
        "scriptType": {
          "shape": "ScriptType",
          "documentation": "<p>The type of validation script.</p>"
        },
        "command": {
          "shape": "Command",
          "documentation": "<p>The command to run the validation script</p>"
        },
        "executionTimeoutSeconds": {
          "shape": "ExecutionTimeoutSeconds",
          "documentation": "<p>The timeout interval, in seconds.</p>"
        },
        "outputS3BucketName": {
          "shape": "BucketName",
          "documentation": "<p>The name of the S3 bucket for output.</p>"
        }
      },
      "documentation": "<p>Contains validation parameters.</p>"
    },
    "ScriptType": {
      "type": "string",
      "enum": [
        "SHELL_SCRIPT",
        "POWERSHELL_SCRIPT"
      ]
    },
    "SecurityGroup": {
      "type": "string"
    },
    "Server": {
      "type": "structure",
      "members": {
        "serverId": {
          "shape": "ServerId",
          "documentation": "<p>The ID of the server.</p>"
        },
        "serverType": {
          "shape": "ServerType",
          "documentation": "<p>The type of server.</p>"
        },
        "vmServer": {
          "shape": "VmServer",
          "documentation": "<p>Information about the VM server.</p>"
        },
        "replicationJobId": {
          "shape": "ReplicationJobId",
          "documentation": "<p>The ID of the replication job.</p>"
        },
        "replicationJobTerminated": {
          "shape": "ReplicationJobTerminated",
          "documentation": "<p>Indicates whether the replication job is deleted or failed.</p>"
        }
      },
      "documentation": "<p>Represents a server.</p>"
    },
    "ServerCatalogStatus": {
      "type": "string",
      "enum": [
        "NOT_IMPORTED",
        "IMPORTING",
        "AVAILABLE",
        "DELETED",
        "EXPIRED"
      ]
    },
    "ServerGroup": {
      "type": "structure",
      "members": {
        "serverGroupId": {
          "shape": "ServerGroupId",
          "documentation": "<p>The ID of a server group.</p>"
        },
        "name": {
          "shape": "ServerGroupName",
          "documentation": "<p>The name of a server group.</p>"
        },
        "serverList": {
          "shape": "ServerList",
          "documentation": "<p>The servers that belong to a server group.</p>"
        }
      },
      "documentation": "<p>Logical grouping of servers.</p>"
    },
    "ServerGroupId": {
      "type": "string"
    },
    "ServerGroupLaunchConfiguration": {
      "type": "structure",
      "members": {
        "serverGroupId": {
          "shape": "ServerGroupId",
          "documentation": "<p>The ID of the server group with which the launch configuration is associated.</p>"
        },
        "launchOrder": {
          "shape": "LaunchOrder",
          "documentation": "<p>The launch order of servers in the server group.</p>"
        },
        "serverLaunchConfigurations": {
          "shape": "ServerLaunchConfigurations",
          "documentation": "<p>The launch configuration for servers in the server group.</p>"
        }
      },
      "documentation": "<p>Launch configuration for a server group.</p>"
    },
    "ServerGroupLaunchConfigurations": {
      "type": "list",
      "member": {
        "shape": "ServerGroupLaunchConfiguration"
      }
    },
    "ServerGroupName": {
      "type": "string"
    },
    "ServerGroupReplicationConfiguration": {
      "type": "structure",
      "members": {
        "serverGroupId": {
          "shape": "ServerGroupId",
          "documentation": "<p>The ID of the server group with which this replication configuration is associated.</p>"
        },
        "serverReplicationConfigurations": {
          "shape": "ServerReplicationConfigurations",
          "documentation": "<p>The replication configuration for servers in the server group.</p>"
        }
      },
      "documentation": "<p>Replication configuration for a server group.</p>"
    },
    "ServerGroupReplicationConfigurations": {
      "type": "list",
      "member": {
        "shape": "ServerGroupReplicationConfiguration"
      }
    },
    "ServerGroupValidationConfiguration": {
      "type": "structure",
      "members": {
        "serverGroupId": {
          "shape": "ServerGroupId",
          "documentation": "<p>The ID of the server group.</p>"
        },
        "serverValidationConfigurations": {
          "shape": "ServerValidationConfigurations",
          "documentation": "<p>The validation configuration.</p>"
        }
      },
      "documentation": "<p>Configuration for validating an instance.</p>"
    },
    "ServerGroupValidationConfigurations": {
      "type": "list",
      "member": {
        "shape": "ServerGroupValidationConfiguration"
      }
    },
    "ServerGroups": {
      "type": "list",
      "member": {
        "shape": "ServerGroup"
      }
    },
    "ServerId": {
      "type": "string"
    },
    "ServerLaunchConfiguration": {
      "type": "structure",
      "members": {
        "server": {
          "shape": "Server",
          "documentation": "<p>The ID of the server with which the launch configuration is associated.</p>"
        },
        "logicalId": {
          "shape": "LogicalId",
          "documentation": "<p>The logical ID of the server in the AWS CloudFormation template.</p>"
        },
        "vpc": {
          "shape": "VPC",
          "documentation": "<p>The ID of the VPC into which the server should be launched.</p>"
        },
        "subnet": {
          "shape": "Subnet",
          "documentation": "<p>The ID of the subnet the server should be launched into.</p>"
        },
        "securityGroup": {
          "shape": "SecurityGroup",
          "documentation": "<p>The ID of the security group that applies to the launched server.</p>"
        },
        "ec2KeyName": {
          "shape": "EC2KeyName",
          "documentation": "<p>The name of the Amazon EC2 SSH key to be used for connecting to the launched server.</p>"
        },
        "userData": {
          "shape": "UserData",
          "documentation": "<p>Location of the user-data script to be executed when launching the server.</p>"
        },
        "instanceType": {
          "shape": "InstanceType",
          "documentation": "<p>The instance type to use when launching the server.</p>"
        },
        "associatePublicIpAddress": {
          "shape": "AssociatePublicIpAddress",
          "documentation": "<p>Indicates whether a publicly accessible IP address is created when launching the server.</p>"
        },
        "iamInstanceProfileName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the IAM instance profile.</p>"
        },
        "configureScript": {
          "shape": "S3Location"
        },
        "configureScriptType": {
          "shape": "ScriptType",
          "documentation": "<p>The type of configuration script.</p>"
        }
      },
      "documentation": "<p>Launch configuration for a server.</p>"
    },
    "ServerLaunchConfigurations": {
      "type": "list",
      "member": {
        "shape": "ServerLaunchConfiguration"
      }
    },
    "ServerList": {
      "type": "list",
      "member": {
        "shape": "Server"
      }
    },
    "ServerReplicationConfiguration": {
      "type": "structure",
      "members": {
        "server": {
          "shape": "Server",
          "documentation": "<p>The ID of the server with which this replication configuration is associated.</p>"
        },
        "serverReplicationParameters": {
          "shape": "ServerReplicationParameters",
          "documentation": "<p>The parameters for replicating the server.</p>"
        }
      },
      "documentation": "<p>Replication configuration of a server.</p>"
    },
    "ServerReplicationConfigurations": {
      "type": "list",
      "member": {
        "shape": "ServerReplicationConfiguration"
      }
    },
    "ServerReplicationParameters": {
      "type": "structure",
      "members": {
        "seedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The seed time for creating a replication job for the server.</p>"
        },
        "frequency": {
          "shape": "Frequency",
          "documentation": "<p>The frequency of creating replication jobs for the server.</p>"
        },
        "runOnce": {
          "shape": "RunOnce",
          "documentation": "<p>Indicates whether to run the replication job one time.</p>"
        },
        "licenseType": {
          "shape": "LicenseType",
          "documentation": "<p>The license type for creating a replication job for the server.</p>"
        },
        "numberOfRecentAmisToKeep": {
          "shape": "NumberOfRecentAmisToKeep",
          "documentation": "<p>The number of recent AMIs to keep when creating a replication job for this server.</p>"
        },
        "encrypted": {
          "shape": "Encrypted",
          "documentation": "<p>Indicates whether the replication job produces encrypted AMIs.</p>"
        },
        "kmsKeyId": {
          "shape": "KmsKeyId",
          "documentation": "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:</p> <ul> <li> <p>KMS key ID</p> </li> <li> <p>KMS key alias</p> </li> <li> <p>ARN referring to the KMS key ID</p> </li> <li> <p>ARN referring to the KMS key alias</p> </li> </ul> <p>If encrypted is enabled but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used.</p>"
        }
      },
      "documentation": "<p>The replication parameters for replicating a server.</p>"
    },
    "ServerType": {
      "type": "string",
      "enum": [
        "VIRTUAL_MACHINE"
      ]
    },
    "ServerValidationConfiguration": {
      "type": "structure",
      "members": {
        "server": {
          "shape": "Server"
        },
        "validationId": {
          "shape": "ValidationId",
          "documentation": "<p>The ID of the validation.</p>"
        },
        "name": {
          "shape": "NonEmptyStringWithMaxLen255",
          "documentation": "<p>The name of the configuration.</p>"
        },
        "serverValidationStrategy": {
          "shape": "ServerValidationStrategy",
          "documentation": "<p>The validation strategy.</p>"
        },
        "userDataValidationParameters": {
          "shape": "UserDataValidationParameters",
          "documentation": "<p>The validation parameters.</p>"
        }
      },
      "documentation": "<p>Configuration for validating an instance.</p>"
    },
    "ServerValidationConfigurations": {
      "type": "list",
      "member": {
        "shape": "ServerValidationConfiguration"
      }
    },
    "ServerValidationOutput": {
      "type": "structure",
      "members": {
        "server": {
          "shape": "Server"
        }
      },
      "documentation": "<p>Contains output from validating an instance.</p>"
    },
    "ServerValidationStrategy": {
      "type": "string",
      "enum": [
        "USERDATA"
      ]
    },
    "Source": {
      "type": "structure",
      "members": {
        "s3Location": {
          "shape": "S3Location"
        }
      },
      "documentation": "<p>Contains the location of a validation script.</p>"
    },
    "StackId": {
      "type": "string"
    },
    "StackName": {
      "type": "string"
    },
    "StartAppReplicationRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "StartAppReplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "StartOnDemandAppReplicationRequest": {
      "type": "structure",
      "required": [
        "appId"
      ],
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the replication run.</p>"
        }
      }
    },
    "StartOnDemandAppReplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "StartOnDemandReplicationRunRequest": {
      "type": "structure",
      "required": [
        "replicationJobId"
      ],
      "members": {
        "replicationJobId": {
          "shape": "ReplicationJobId",
          "documentation": "<p>The ID of the replication job.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the replication run.</p>"
        }
      }
    },
    "StartOnDemandReplicationRunResponse": {
      "type": "structure",
      "members": {
        "replicationRunId": {
          "shape": "ReplicationRunId",
          "documentation": "<p>The ID of the replication run.</p>"
        }
      }
    },
    "StopAppReplicationRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "StopAppReplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "Subnet": {
      "type": "string"
    },
    "Tag": {
      "type": "structure",
      "members": {
        "key": {
          "shape": "TagKey",
          "documentation": "<p>The tag key.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>The tag value.</p>"
        }
      },
      "documentation": "<p>Key/value pair that can be assigned to an application.</p>"
    },
    "TagKey": {
      "type": "string"
    },
    "TagValue": {
      "type": "string"
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TerminateAppRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        }
      }
    },
    "TerminateAppResponse": {
      "type": "structure",
      "members": {}
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TotalServerGroups": {
      "type": "integer"
    },
    "TotalServers": {
      "type": "integer"
    },
    "UpdateAppRequest": {
      "type": "structure",
      "members": {
        "appId": {
          "shape": "AppId",
          "documentation": "<p>The ID of the application.</p>"
        },
        "name": {
          "shape": "AppName",
          "documentation": "<p>The new name of the application.</p>"
        },
        "description": {
          "shape": "AppDescription",
          "documentation": "<p>The new description of the application.</p>"
        },
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the service role in the customer's account used by AWS SMS.</p>"
        },
        "serverGroups": {
          "shape": "ServerGroups",
          "documentation": "<p>The server groups in the application to update.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags to associate with the application.</p>"
        }
      }
    },
    "UpdateAppResponse": {
      "type": "structure",
      "members": {
        "appSummary": {
          "shape": "AppSummary",
          "documentation": "<p>A summary description of the application.</p>"
        },
        "serverGroups": {
          "shape": "ServerGroups",
          "documentation": "<p>The updated server groups in the application.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags associated with the application.</p>"
        }
      }
    },
    "UpdateReplicationJobRequest": {
      "type": "structure",
      "required": [
        "replicationJobId"
      ],
      "members": {
        "replicationJobId": {
          "shape": "ReplicationJobId",
          "documentation": "<p>The ID of the replication job.</p>"
        },
        "frequency": {
          "shape": "Frequency",
          "documentation": "<p>The time between consecutive replication runs, in hours.</p>"
        },
        "nextReplicationRunStartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The start time of the next replication run.</p>"
        },
        "licenseType": {
          "shape": "LicenseType",
          "documentation": "<p>The license type to be used for the AMI created by a successful replication run.</p>"
        },
        "roleName": {
          "shape": "RoleName",
          "documentation": "<p>The name of the IAM role to be used by AWS SMS.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The description of the replication job.</p>"
        },
        "numberOfRecentAmisToKeep": {
          "shape": "NumberOfRecentAmisToKeep",
          "documentation": "<p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the maximum number is reached and a new AMI is created.</p>"
        },
        "encrypted": {
          "shape": "Encrypted",
          "documentation": "<p>When true, the replication job produces encrypted AMIs. For more information, <code>KmsKeyId</code>.</p>"
        },
        "kmsKeyId": {
          "shape": "KmsKeyId",
          "documentation": "<p>The ID of the KMS key for replication jobs that produce encrypted AMIs. This value can be any of the following:</p> <ul> <li> <p>KMS key ID</p> </li> <li> <p>KMS key alias</p> </li> <li> <p>ARN referring to the KMS key ID</p> </li> <li> <p>ARN referring to the KMS key alias</p> </li> </ul> <p>If encrypted is enabled but a KMS key ID is not specified, the customer's default KMS key for Amazon EBS is used.</p>"
        }
      }
    },
    "UpdateReplicationJobResponse": {
      "type": "structure",
      "members": {}
    },
    "UserData": {
      "type": "structure",
      "members": {
        "s3Location": {
          "shape": "S3Location",
          "documentation": "<p>Amazon S3 location of the user-data script.</p>"
        }
      },
      "documentation": "<p>A script that runs on first launch of an Amazon EC2 instance. Used for configuring the server during launch.</p>"
    },
    "UserDataValidationParameters": {
      "type": "structure",
      "members": {
        "source": {
          "shape": "Source",
          "documentation": "<p>The location of the validation script.</p>"
        },
        "scriptType": {
          "shape": "ScriptType",
          "documentation": "<p>The type of validation script.</p>"
        }
      },
      "documentation": "<p>Contains validation parameters.</p>"
    },
    "VPC": {
      "type": "string"
    },
    "ValidationId": {
      "type": "string",
      "pattern": "^val-[0-9a-f]{17}$"
    },
    "ValidationOutput": {
      "type": "structure",
      "members": {
        "validationId": {
          "shape": "ValidationId",
          "documentation": "<p>The ID of the validation.</p>"
        },
        "name": {
          "shape": "NonEmptyStringWithMaxLen255",
          "documentation": "<p>The name of the validation.</p>"
        },
        "status": {
          "shape": "ValidationStatus",
          "documentation": "<p>The status of the validation.</p>"
        },
        "statusMessage": {
          "shape": "ValidationStatusMessage",
          "documentation": "<p>The status message.</p>"
        },
        "latestValidationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The latest time that the validation was performed.</p>"
        },
        "appValidationOutput": {
          "shape": "AppValidationOutput",
          "documentation": "<p>The output from validating an application.</p>"
        },
        "serverValidationOutput": {
          "shape": "ServerValidationOutput",
          "documentation": "<p>The output from validation an instance.</p>"
        }
      },
      "documentation": "<p>Contains validation output.</p>"
    },
    "ValidationOutputList": {
      "type": "list",
      "member": {
        "shape": "ValidationOutput"
      }
    },
    "ValidationStatus": {
      "type": "string",
      "enum": [
        "READY_FOR_VALIDATION",
        "PENDING",
        "IN_PROGRESS",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "ValidationStatusMessage": {
      "type": "string",
      "max": 2500
    },
    "VmId": {
      "type": "string"
    },
    "VmManagerId": {
      "type": "string"
    },
    "VmManagerName": {
      "type": "string"
    },
    "VmManagerType": {
      "type": "string",
      "enum": [
        "VSPHERE",
        "SCVMM",
        "HYPERV-MANAGER"
      ]
    },
    "VmName": {
      "type": "string"
    },
    "VmPath": {
      "type": "string"
    },
    "VmServer": {
      "type": "structure",
      "members": {
        "vmServerAddress": {
          "shape": "VmServerAddress",
          "documentation": "<p>The VM server location.</p>"
        },
        "vmName": {
          "shape": "VmName",
          "documentation": "<p>The name of the VM.</p>"
        },
        "vmManagerName": {
          "shape": "VmManagerName",
          "documentation": "<p>The name of the VM manager.</p>"
        },
        "vmManagerType": {
          "shape": "VmManagerType",
          "documentation": "<p>The type of VM management product.</p>"
        },
        "vmPath": {
          "shape": "VmPath",
          "documentation": "<p>The VM folder path in the vCenter Server virtual machine inventory tree.</p>"
        }
      },
      "documentation": "<p>Represents a VM server.</p>"
    },
    "VmServerAddress": {
      "type": "structure",
      "members": {
        "vmManagerId": {
          "shape": "VmManagerId",
          "documentation": "<p>The ID of the VM manager.</p>"
        },
        "vmId": {
          "shape": "VmId",
          "documentation": "<p>The ID of the VM.</p>"
        }
      },
      "documentation": "<p>Represents a VM server location.</p>"
    },
    "VmServerAddressList": {
      "type": "list",
      "member": {
        "shape": "VmServerAddress"
      }
    }
  },
  "documentation": "<fullname>AWS Server Migration Service</fullname> <p>AWS Server Migration Service (AWS SMS) makes it easier and faster for you to migrate your on-premises workloads to AWS. To learn more about AWS SMS, see the following resources:</p> <ul> <li> <p> <a href=\"http://aws.amazon.com/server-migration-service/\">AWS Server Migration Service product page</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/server-migration-service/latest/userguide/\">AWS Server Migration Service User Guide</a> </p> </li> </ul>"
}
]===]))
