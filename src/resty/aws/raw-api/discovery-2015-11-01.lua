local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-11-01",
    "endpointPrefix": "discovery",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Application Discovery Service",
    "serviceId": "Application Discovery Service",
    "signatureVersion": "v4",
    "targetPrefix": "AWSPoseidonService_V2015_11_01",
    "uid": "discovery-2015-11-01"
  },
  "operations": {
    "AssociateConfigurationItemsToApplication": {
      "name": "AssociateConfigurationItemsToApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateConfigurationItemsToApplicationRequest"
      },
      "output": {
        "shape": "AssociateConfigurationItemsToApplicationResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Associates one or more configuration items with an application.</p>"
    },
    "BatchDeleteImportData": {
      "name": "BatchDeleteImportData",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeleteImportDataRequest"
      },
      "output": {
        "shape": "BatchDeleteImportDataResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Deletes one or more import tasks, each identified by their import ID. Each import task has a number of records that can identify servers or applications. </p> <p>AWS Application Discovery Service has built-in matching logic that will identify when discovered servers match existing entries that you've previously discovered, the information for the already-existing discovered server is updated. When you delete an import task that contains records that were used to match, the information in those matched records that comes from the deleted records will also be deleted.</p>"
    },
    "CreateApplication": {
      "name": "CreateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApplicationRequest"
      },
      "output": {
        "shape": "CreateApplicationResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Creates an application with the given name and description.</p>"
    },
    "CreateTags": {
      "name": "CreateTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTagsRequest"
      },
      "output": {
        "shape": "CreateTagsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.</p>"
    },
    "DeleteApplications": {
      "name": "DeleteApplications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationsRequest"
      },
      "output": {
        "shape": "DeleteApplicationsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Deletes a list of applications and their associations with configuration items.</p>"
    },
    "DeleteTags": {
      "name": "DeleteTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTagsRequest"
      },
      "output": {
        "shape": "DeleteTagsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.</p>"
    },
    "DescribeAgents": {
      "name": "DescribeAgents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAgentsRequest"
      },
      "output": {
        "shape": "DescribeAgentsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Lists agents or connectors as specified by ID or other filters. All agents/connectors associated with your user account can be listed if you call <code>DescribeAgents</code> as is without passing any parameters.</p>"
    },
    "DescribeConfigurations": {
      "name": "DescribeConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConfigurationsRequest"
      },
      "output": {
        "shape": "DescribeConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Retrieves attributes for a list of configuration item IDs.</p> <note> <p>All of the supplied IDs must be for the same asset type from one of the following:</p> <ul> <li> <p>server</p> </li> <li> <p>application</p> </li> <li> <p>process</p> </li> <li> <p>connection</p> </li> </ul> <p>Output fields are specific to the asset type specified. For example, the output for a <i>server</i> configuration item includes a list of attributes about the server, such as host name, operating system, number of network cards, etc.</p> <p>For a complete list of outputs for each asset type, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations\">Using the DescribeConfigurations Action</a> in the <i>AWS Application Discovery Service User Guide</i>.</p> </note>"
    },
    "DescribeContinuousExports": {
      "name": "DescribeContinuousExports",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeContinuousExportsRequest"
      },
      "output": {
        "shape": "DescribeContinuousExportsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Lists exports as specified by ID. All continuous exports associated with your user account can be listed if you call <code>DescribeContinuousExports</code> as is without passing any parameters.</p>"
    },
    "DescribeExportConfigurations": {
      "name": "DescribeExportConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeExportConfigurationsRequest"
      },
      "output": {
        "shape": "DescribeExportConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p> <code>DescribeExportConfigurations</code> is deprecated. Use <a href=\"https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html\">DescribeImportTasks</a>, instead.</p>",
      "deprecated": true
    },
    "DescribeExportTasks": {
      "name": "DescribeExportTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeExportTasksRequest"
      },
      "output": {
        "shape": "DescribeExportTasksResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Retrieve status of one or more export tasks. You can retrieve the status of up to 100 export tasks.</p>"
    },
    "DescribeImportTasks": {
      "name": "DescribeImportTasks",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeImportTasksRequest"
      },
      "output": {
        "shape": "DescribeImportTasksResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Returns an array of import tasks for your account, including status information, times, IDs, the Amazon S3 Object URL for the import file, and more.</p>"
    },
    "DescribeTags": {
      "name": "DescribeTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTagsRequest"
      },
      "output": {
        "shape": "DescribeTagsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Retrieves a list of configuration items that have tags as specified by the key-value pairs, name and value, passed to the optional parameter <code>filters</code>.</p> <p>There are three valid tag filter names:</p> <ul> <li> <p>tagKey</p> </li> <li> <p>tagValue</p> </li> <li> <p>configurationId</p> </li> </ul> <p>Also, all configuration items associated with your user account that have tags can be listed if you call <code>DescribeTags</code> as is without passing any parameters.</p>"
    },
    "DisassociateConfigurationItemsFromApplication": {
      "name": "DisassociateConfigurationItemsFromApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateConfigurationItemsFromApplicationRequest"
      },
      "output": {
        "shape": "DisassociateConfigurationItemsFromApplicationResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Disassociates one or more configuration items from an application.</p>"
    },
    "ExportConfigurations": {
      "name": "ExportConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "ExportConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Deprecated. Use <code>StartExportTask</code> instead.</p> <p>Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID that you can query using the <i>DescribeExportConfigurations</i> API. The system imposes a limit of two configuration exports in six hours.</p>",
      "deprecated": true
    },
    "GetDiscoverySummary": {
      "name": "GetDiscoverySummary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDiscoverySummaryRequest"
      },
      "output": {
        "shape": "GetDiscoverySummaryResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Retrieves a short summary of discovered assets.</p> <p>This API operation takes no request parameters and is called as is at the command prompt as shown in the example.</p>"
    },
    "ListConfigurations": {
      "name": "ListConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListConfigurationsRequest"
      },
      "output": {
        "shape": "ListConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Retrieves a list of configuration items as specified by the value passed to the required parameter <code>configurationType</code>. Optional filtering may be applied to refine search results.</p>"
    },
    "ListServerNeighbors": {
      "name": "ListServerNeighbors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServerNeighborsRequest"
      },
      "output": {
        "shape": "ListServerNeighborsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Retrieves a list of servers that are one network hop away from a specified server.</p>"
    },
    "StartContinuousExport": {
      "name": "StartContinuousExport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartContinuousExportRequest"
      },
      "output": {
        "shape": "StartContinuousExportResponse"
      },
      "errors": [
        {
          "shape": "ConflictErrorException"
        },
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Start the continuous flow of agent's discovered data into Amazon Athena.</p>"
    },
    "StartDataCollectionByAgentIds": {
      "name": "StartDataCollectionByAgentIds",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartDataCollectionByAgentIdsRequest"
      },
      "output": {
        "shape": "StartDataCollectionByAgentIdsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Instructs the specified agents or connectors to start collecting data.</p>"
    },
    "StartExportTask": {
      "name": "StartExportTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartExportTaskRequest"
      },
      "output": {
        "shape": "StartExportTaskResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p> Begins the export of discovered data to an S3 bucket.</p> <p> If you specify <code>agentIds</code> in a filter, the task exports up to 72 hours of detailed data collected by the identified Application Discovery Agent, including network, process, and performance details. A time range for exported agent data may be set by using <code>startTime</code> and <code>endTime</code>. Export of detailed agent data is limited to five concurrently running exports. </p> <p> If you do not include an <code>agentIds</code> filter, summary data is exported that includes both AWS Agentless Discovery Connector data and summary data from AWS Discovery Agents. Export of summary data is limited to two exports per day. </p>"
    },
    "StartImportTask": {
      "name": "StartImportTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartImportTaskRequest"
      },
      "output": {
        "shape": "StartImportTaskResponse"
      },
      "errors": [
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Starts an import task, which allows you to import details of your on-premises environment directly into AWS Migration Hub without having to use the Application Discovery Service (ADS) tools such as the Discovery Connector or Discovery Agent. This gives you the option to perform migration assessment and planning directly from your imported data, including the ability to group your devices as applications and track their migration status.</p> <p>To start an import request, do this:</p> <ol> <li> <p>Download the specially formatted comma separated value (CSV) import template, which you can find here: <a href=\"https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv\">https://s3-us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv</a>.</p> </li> <li> <p>Fill out the template with your server and application data.</p> </li> <li> <p>Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL. Your import file must be in the CSV format.</p> </li> <li> <p>Use the console or the <code>StartImportTask</code> command with the AWS CLI or one of the AWS SDKs to import the records from your file.</p> </li> </ol> <p>For more information, including step-by-step procedures, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html\">Migration Hub Import</a> in the <i>AWS Application Discovery Service User Guide</i>.</p> <note> <p>There are limits to the number of import tasks you can create (and delete) in an AWS account. For more information, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html\">AWS Application Discovery Service Limits</a> in the <i>AWS Application Discovery Service User Guide</i>.</p> </note>"
    },
    "StopContinuousExport": {
      "name": "StopContinuousExport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopContinuousExportRequest"
      },
      "output": {
        "shape": "StopContinuousExportResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "OperationNotPermittedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Stop the continuous flow of agent's discovered data into Amazon Athena.</p>"
    },
    "StopDataCollectionByAgentIds": {
      "name": "StopDataCollectionByAgentIds",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopDataCollectionByAgentIdsRequest"
      },
      "output": {
        "shape": "StopDataCollectionByAgentIdsResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Instructs the specified agents or connectors to stop collecting data.</p>"
    },
    "UpdateApplication": {
      "name": "UpdateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApplicationRequest"
      },
      "output": {
        "shape": "UpdateApplicationResponse"
      },
      "errors": [
        {
          "shape": "AuthorizationErrorException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalErrorException"
        },
        {
          "shape": "HomeRegionNotSetException"
        }
      ],
      "documentation": "<p>Updates metadata about an application.</p>"
    }
  },
  "shapes": {
    "AgentConfigurationStatus": {
      "type": "structure",
      "members": {
        "agentId": {
          "shape": "String",
          "documentation": "<p>The agent/connector ID.</p>"
        },
        "operationSucceeded": {
          "shape": "Boolean",
          "documentation": "<p>Information about the status of the <code>StartDataCollection</code> and <code>StopDataCollection</code> operations. The system has recorded the data collection operation. The agent/connector receives this command the next time it polls for a new command. </p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>A description of the operation performed.</p>"
        }
      },
      "documentation": "<p>Information about agents or connectors that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation, and whether the agent/connector configuration was updated.</p>"
    },
    "AgentConfigurationStatusList": {
      "type": "list",
      "member": {
        "shape": "AgentConfigurationStatus"
      }
    },
    "AgentId": {
      "type": "string"
    },
    "AgentIds": {
      "type": "list",
      "member": {
        "shape": "AgentId"
      }
    },
    "AgentInfo": {
      "type": "structure",
      "members": {
        "agentId": {
          "shape": "AgentId",
          "documentation": "<p>The agent or connector ID.</p>"
        },
        "hostName": {
          "shape": "String",
          "documentation": "<p>The name of the host where the agent or connector resides. The host can be a server or virtual machine.</p>"
        },
        "agentNetworkInfoList": {
          "shape": "AgentNetworkInfoList",
          "documentation": "<p>Network details about the host where the agent or connector resides.</p>"
        },
        "connectorId": {
          "shape": "String",
          "documentation": "<p>The ID of the connector.</p>"
        },
        "version": {
          "shape": "String",
          "documentation": "<p>The agent or connector version.</p>"
        },
        "health": {
          "shape": "AgentStatus",
          "documentation": "<p>The health of the agent or connector.</p>"
        },
        "lastHealthPingTime": {
          "shape": "String",
          "documentation": "<p>Time since agent or connector health was reported.</p>"
        },
        "collectionStatus": {
          "shape": "String",
          "documentation": "<p>Status of the collection process for an agent or connector.</p>"
        },
        "agentType": {
          "shape": "String",
          "documentation": "<p>Type of agent.</p>"
        },
        "registeredTime": {
          "shape": "String",
          "documentation": "<p>Agent's first registration timestamp in UTC.</p>"
        }
      },
      "documentation": "<p>Information about agents or connectors associated with the user’s AWS account. Information includes agent or connector IDs, IP addresses, media access control (MAC) addresses, agent or connector health, hostname where the agent or connector resides, and agent version for each agent.</p>"
    },
    "AgentNetworkInfo": {
      "type": "structure",
      "members": {
        "ipAddress": {
          "shape": "String",
          "documentation": "<p>The IP address for the host where the agent/connector resides.</p>"
        },
        "macAddress": {
          "shape": "String",
          "documentation": "<p>The MAC address for the host where the agent/connector resides.</p>"
        }
      },
      "documentation": "<p>Network details about the host where the agent/connector resides.</p>"
    },
    "AgentNetworkInfoList": {
      "type": "list",
      "member": {
        "shape": "AgentNetworkInfo"
      }
    },
    "AgentStatus": {
      "type": "string",
      "enum": [
        "HEALTHY",
        "UNHEALTHY",
        "RUNNING",
        "UNKNOWN",
        "BLACKLISTED",
        "SHUTDOWN"
      ]
    },
    "AgentsInfo": {
      "type": "list",
      "member": {
        "shape": "AgentInfo"
      }
    },
    "ApplicationId": {
      "type": "string"
    },
    "ApplicationIdsList": {
      "type": "list",
      "member": {
        "shape": "ApplicationId"
      }
    },
    "AssociateConfigurationItemsToApplicationRequest": {
      "type": "structure",
      "required": [
        "applicationConfigurationId",
        "configurationIds"
      ],
      "members": {
        "applicationConfigurationId": {
          "shape": "ApplicationId",
          "documentation": "<p>The configuration ID of an application with which items are to be associated.</p>"
        },
        "configurationIds": {
          "shape": "ConfigurationIdList",
          "documentation": "<p>The ID of each configuration item to be associated with an application.</p>"
        }
      }
    },
    "AssociateConfigurationItemsToApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "BatchDeleteImportDataError": {
      "type": "structure",
      "members": {
        "importTaskId": {
          "shape": "ImportTaskIdentifier",
          "documentation": "<p>The unique import ID associated with the error that occurred.</p>"
        },
        "errorCode": {
          "shape": "BatchDeleteImportDataErrorCode",
          "documentation": "<p>The type of error that occurred for a specific import task.</p>"
        },
        "errorDescription": {
          "shape": "BatchDeleteImportDataErrorDescription",
          "documentation": "<p>The description of the error that occurred for a specific import task.</p>"
        }
      },
      "documentation": "<p>Error messages returned for each import task that you deleted as a response for this command.</p>"
    },
    "BatchDeleteImportDataErrorCode": {
      "type": "string",
      "enum": [
        "NOT_FOUND",
        "INTERNAL_SERVER_ERROR",
        "OVER_LIMIT"
      ]
    },
    "BatchDeleteImportDataErrorDescription": {
      "type": "string"
    },
    "BatchDeleteImportDataErrorList": {
      "type": "list",
      "member": {
        "shape": "BatchDeleteImportDataError"
      }
    },
    "BatchDeleteImportDataRequest": {
      "type": "structure",
      "required": [
        "importTaskIds"
      ],
      "members": {
        "importTaskIds": {
          "shape": "ToDeleteIdentifierList",
          "documentation": "<p>The IDs for the import tasks that you want to delete.</p>"
        }
      }
    },
    "BatchDeleteImportDataResponse": {
      "type": "structure",
      "members": {
        "errors": {
          "shape": "BatchDeleteImportDataErrorList",
          "documentation": "<p>Error messages returned for each import task that you deleted as a response for this command.</p>"
        }
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "BoxedInteger": {
      "type": "integer",
      "box": true
    },
    "ClientRequestToken": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "Condition": {
      "type": "string"
    },
    "Configuration": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "ConfigurationId": {
      "type": "string"
    },
    "ConfigurationIdList": {
      "type": "list",
      "member": {
        "shape": "ConfigurationId"
      }
    },
    "ConfigurationItemType": {
      "type": "string",
      "enum": [
        "SERVER",
        "PROCESS",
        "CONNECTION",
        "APPLICATION"
      ]
    },
    "ConfigurationTag": {
      "type": "structure",
      "members": {
        "configurationType": {
          "shape": "ConfigurationItemType",
          "documentation": "<p>A type of IT asset to tag.</p>"
        },
        "configurationId": {
          "shape": "ConfigurationId",
          "documentation": "<p>The configuration ID for the item to tag. You can specify a list of keys and values.</p>"
        },
        "key": {
          "shape": "TagKey",
          "documentation": "<p>A type of tag on which to filter. For example, <i>serverType</i>.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>A value on which to filter. For example <i>key = serverType</i> and <i>value = web server</i>.</p>"
        },
        "timeOfCreation": {
          "shape": "TimeStamp",
          "documentation": "<p>The time the configuration tag was created in Coordinated Universal Time (UTC).</p>"
        }
      },
      "documentation": "<p>Tags for a configuration item. Tags are metadata that help you categorize IT assets.</p>"
    },
    "ConfigurationTagSet": {
      "type": "list",
      "member": {
        "shape": "ConfigurationTag"
      }
    },
    "Configurations": {
      "type": "list",
      "member": {
        "shape": "Configuration"
      }
    },
    "ConfigurationsDownloadUrl": {
      "type": "string"
    },
    "ConfigurationsExportId": {
      "type": "string"
    },
    "ContinuousExportDescription": {
      "type": "structure",
      "members": {
        "exportId": {
          "shape": "ConfigurationsExportId",
          "documentation": "<p>The unique ID assigned to this export.</p>"
        },
        "status": {
          "shape": "ContinuousExportStatus",
          "documentation": "<p>Describes the status of the export. Can be one of the following values:</p> <ul> <li> <p>START_IN_PROGRESS - setting up resources to start continuous export.</p> </li> <li> <p>START_FAILED - an error occurred setting up continuous export. To recover, call start-continuous-export again.</p> </li> <li> <p>ACTIVE - data is being exported to the customer bucket.</p> </li> <li> <p>ERROR - an error occurred during export. To fix the issue, call stop-continuous-export and start-continuous-export.</p> </li> <li> <p>STOP_IN_PROGRESS - stopping the export.</p> </li> <li> <p>STOP_FAILED - an error occurred stopping the export. To recover, call stop-continuous-export again.</p> </li> <li> <p>INACTIVE - the continuous export has been stopped. Data is no longer being exported to the customer bucket.</p> </li> </ul>"
        },
        "statusDetail": {
          "shape": "StringMax255",
          "documentation": "<p>Contains information about any errors that have occurred. This data type can have the following values:</p> <ul> <li> <p>ACCESS_DENIED - You don’t have permission to start Data Exploration in Amazon Athena. Contact your AWS administrator for help. For more information, see <a href=\"http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html\">Setting Up AWS Application Discovery Service</a> in the Application Discovery Service User Guide.</p> </li> <li> <p>DELIVERY_STREAM_LIMIT_FAILURE - You reached the limit for Amazon Kinesis Data Firehose delivery streams. Reduce the number of streams or request a limit increase and try again. For more information, see <a href=\"http://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html\">Kinesis Data Streams Limits</a> in the Amazon Kinesis Data Streams Developer Guide.</p> </li> <li> <p>FIREHOSE_ROLE_MISSING - The Data Exploration feature is in an error state because your IAM User is missing the AWSApplicationDiscoveryServiceFirehose role. Turn on Data Exploration in Amazon Athena and try again. For more information, see <a href=\"http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html#setting-up-user-policy\">Step 3: Provide Application Discovery Service Access to Non-Administrator Users by Attaching Policies</a> in the Application Discovery Service User Guide.</p> </li> <li> <p>FIREHOSE_STREAM_DOES_NOT_EXIST - The Data Exploration feature is in an error state because your IAM User is missing one or more of the Kinesis data delivery streams.</p> </li> <li> <p>INTERNAL_FAILURE - The Data Exploration feature is in an error state because of an internal failure. Try again later. If this problem persists, contact AWS Support.</p> </li> <li> <p>S3_BUCKET_LIMIT_FAILURE - You reached the limit for Amazon S3 buckets. Reduce the number of Amazon S3 buckets or request a limit increase and try again. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html\">Bucket Restrictions and Limitations</a> in the Amazon Simple Storage Service Developer Guide.</p> </li> <li> <p>S3_NOT_SIGNED_UP - Your account is not signed up for the Amazon S3 service. You must sign up before you can use Amazon S3. You can sign up at the following URL: <a href=\"https://aws.amazon.com/s3\">https://aws.amazon.com/s3</a>.</p> </li> </ul>"
        },
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The name of the s3 bucket where the export data parquet files are stored.</p>"
        },
        "startTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The timestamp representing when the continuous export was started.</p>"
        },
        "stopTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The timestamp that represents when this continuous export was stopped.</p>"
        },
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The type of data collector used to gather this data (currently only offered for AGENT).</p>"
        },
        "schemaStorageConfig": {
          "shape": "SchemaStorageConfig",
          "documentation": "<p>An object which describes how the data is stored.</p> <ul> <li> <p> <code>databaseName</code> - the name of the Glue database used to store the schema.</p> </li> </ul>"
        }
      },
      "documentation": "<p>A list of continuous export descriptions.</p>"
    },
    "ContinuousExportDescriptions": {
      "type": "list",
      "member": {
        "shape": "ContinuousExportDescription"
      }
    },
    "ContinuousExportIds": {
      "type": "list",
      "member": {
        "shape": "ConfigurationsExportId"
      }
    },
    "ContinuousExportStatus": {
      "type": "string",
      "enum": [
        "START_IN_PROGRESS",
        "START_FAILED",
        "ACTIVE",
        "ERROR",
        "STOP_IN_PROGRESS",
        "STOP_FAILED",
        "INACTIVE"
      ]
    },
    "CreateApplicationRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>Name of the application to be created.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>Description of the application to be created.</p>"
        }
      }
    },
    "CreateApplicationResponse": {
      "type": "structure",
      "members": {
        "configurationId": {
          "shape": "String",
          "documentation": "<p>Configuration ID of an application to be created.</p>"
        }
      }
    },
    "CreateTagsRequest": {
      "type": "structure",
      "required": [
        "configurationIds",
        "tags"
      ],
      "members": {
        "configurationIds": {
          "shape": "ConfigurationIdList",
          "documentation": "<p>A list of configuration items that you want to tag.</p>"
        },
        "tags": {
          "shape": "TagSet",
          "documentation": "<p>Tags that you want to associate with one or more configuration items. Specify the tags that you want to create in a <i>key</i>-<i>value</i> format. For example:</p> <p> <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code> </p>"
        }
      }
    },
    "CreateTagsResponse": {
      "type": "structure",
      "members": {}
    },
    "CustomerAgentInfo": {
      "type": "structure",
      "required": [
        "activeAgents",
        "healthyAgents",
        "blackListedAgents",
        "shutdownAgents",
        "unhealthyAgents",
        "totalAgents",
        "unknownAgents"
      ],
      "members": {
        "activeAgents": {
          "shape": "Integer",
          "documentation": "<p>Number of active discovery agents.</p>"
        },
        "healthyAgents": {
          "shape": "Integer",
          "documentation": "<p>Number of healthy discovery agents</p>"
        },
        "blackListedAgents": {
          "shape": "Integer",
          "documentation": "<p>Number of blacklisted discovery agents.</p>"
        },
        "shutdownAgents": {
          "shape": "Integer",
          "documentation": "<p>Number of discovery agents with status SHUTDOWN.</p>"
        },
        "unhealthyAgents": {
          "shape": "Integer",
          "documentation": "<p>Number of unhealthy discovery agents.</p>"
        },
        "totalAgents": {
          "shape": "Integer",
          "documentation": "<p>Total number of discovery agents.</p>"
        },
        "unknownAgents": {
          "shape": "Integer",
          "documentation": "<p>Number of unknown discovery agents.</p>"
        }
      },
      "documentation": "<p>Inventory data for installed discovery agents.</p>"
    },
    "CustomerConnectorInfo": {
      "type": "structure",
      "required": [
        "activeConnectors",
        "healthyConnectors",
        "blackListedConnectors",
        "shutdownConnectors",
        "unhealthyConnectors",
        "totalConnectors",
        "unknownConnectors"
      ],
      "members": {
        "activeConnectors": {
          "shape": "Integer",
          "documentation": "<p>Number of active discovery connectors.</p>"
        },
        "healthyConnectors": {
          "shape": "Integer",
          "documentation": "<p>Number of healthy discovery connectors.</p>"
        },
        "blackListedConnectors": {
          "shape": "Integer",
          "documentation": "<p>Number of blacklisted discovery connectors.</p>"
        },
        "shutdownConnectors": {
          "shape": "Integer",
          "documentation": "<p>Number of discovery connectors with status SHUTDOWN,</p>"
        },
        "unhealthyConnectors": {
          "shape": "Integer",
          "documentation": "<p>Number of unhealthy discovery connectors.</p>"
        },
        "totalConnectors": {
          "shape": "Integer",
          "documentation": "<p>Total number of discovery connectors.</p>"
        },
        "unknownConnectors": {
          "shape": "Integer",
          "documentation": "<p>Number of unknown discovery connectors.</p>"
        }
      },
      "documentation": "<p>Inventory data for installed discovery connectors.</p>"
    },
    "DataSource": {
      "type": "string",
      "enum": [
        "AGENT"
      ]
    },
    "DatabaseName": {
      "type": "string",
      "max": 252,
      "min": 1
    },
    "DeleteApplicationsRequest": {
      "type": "structure",
      "required": [
        "configurationIds"
      ],
      "members": {
        "configurationIds": {
          "shape": "ApplicationIdsList",
          "documentation": "<p>Configuration ID of an application to be deleted.</p>"
        }
      }
    },
    "DeleteApplicationsResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteTagsRequest": {
      "type": "structure",
      "required": [
        "configurationIds"
      ],
      "members": {
        "configurationIds": {
          "shape": "ConfigurationIdList",
          "documentation": "<p>A list of configuration items with tags that you want to delete.</p>"
        },
        "tags": {
          "shape": "TagSet",
          "documentation": "<p>Tags that you want to delete from one or more configuration items. Specify the tags that you want to delete in a <i>key</i>-<i>value</i> format. For example:</p> <p> <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code> </p>"
        }
      }
    },
    "DeleteTagsResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeAgentsRequest": {
      "type": "structure",
      "members": {
        "agentIds": {
          "shape": "AgentIds",
          "documentation": "<p>The agent or the Connector IDs for which you want information. If you specify no IDs, the system returns information about all agents/Connectors associated with your AWS user account.</p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>You can filter the request using various logical operators and a <i>key</i>-<i>value</i> format. For example: </p> <p> <code>{\"key\": \"collectionStatus\", \"value\": \"STARTED\"}</code> </p>"
        },
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>The total number of agents/Connectors to return in a single page of output. The maximum value is 100.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>Token to retrieve the next set of results. For example, if you previously specified 100 IDs for <code>DescribeAgentsRequest$agentIds</code> but set <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>"
        }
      }
    },
    "DescribeAgentsResponse": {
      "type": "structure",
      "members": {
        "agentsInfo": {
          "shape": "AgentsInfo",
          "documentation": "<p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an agent/Connector ID. The output includes agent/Connector IDs, IP addresses, media access control (MAC) addresses, agent/Connector health, host name where the agent/Connector resides, and the version number of each agent/Connector.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>Token to retrieve the next set of results. For example, if you specified 100 IDs for <code>DescribeAgentsRequest$agentIds</code> but set <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>"
        }
      }
    },
    "DescribeConfigurationsAttribute": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "String"
      }
    },
    "DescribeConfigurationsAttributes": {
      "type": "list",
      "member": {
        "shape": "DescribeConfigurationsAttribute"
      }
    },
    "DescribeConfigurationsRequest": {
      "type": "structure",
      "required": [
        "configurationIds"
      ],
      "members": {
        "configurationIds": {
          "shape": "ConfigurationIdList",
          "documentation": "<p>One or more configuration IDs.</p>"
        }
      }
    },
    "DescribeConfigurationsResponse": {
      "type": "structure",
      "members": {
        "configurations": {
          "shape": "DescribeConfigurationsAttributes",
          "documentation": "<p>A key in the response map. The value is an array of data.</p>"
        }
      }
    },
    "DescribeContinuousExportsMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "DescribeContinuousExportsRequest": {
      "type": "structure",
      "members": {
        "exportIds": {
          "shape": "ContinuousExportIds",
          "documentation": "<p>The unique IDs assigned to the exports.</p>"
        },
        "maxResults": {
          "shape": "DescribeContinuousExportsMaxResults",
          "documentation": "<p>A number between 1 and 100 specifying the maximum number of continuous export descriptions returned.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token from the previous call to <code>DescribeExportTasks</code>.</p>"
        }
      }
    },
    "DescribeContinuousExportsResponse": {
      "type": "structure",
      "members": {
        "descriptions": {
          "shape": "ContinuousExportDescriptions",
          "documentation": "<p>A list of continuous export descriptions.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token from the previous call to <code>DescribeExportTasks</code>.</p>"
        }
      }
    },
    "DescribeExportConfigurationsRequest": {
      "type": "structure",
      "members": {
        "exportIds": {
          "shape": "ExportIds",
          "documentation": "<p>A list of continuous export IDs to search for.</p>"
        },
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>A number between 1 and 100 specifying the maximum number of continuous export descriptions returned.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token from the previous call to describe-export-tasks.</p>"
        }
      }
    },
    "DescribeExportConfigurationsResponse": {
      "type": "structure",
      "members": {
        "exportsInfo": {
          "shape": "ExportsInfo",
          "documentation": "<p/>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token from the previous call to describe-export-tasks.</p>"
        }
      }
    },
    "DescribeExportTasksRequest": {
      "type": "structure",
      "members": {
        "exportIds": {
          "shape": "ExportIds",
          "documentation": "<p>One or more unique identifiers used to query the status of an export request.</p>"
        },
        "filters": {
          "shape": "ExportFilters",
          "documentation": "<p>One or more filters.</p> <ul> <li> <p> <code>AgentId</code> - ID of the agent whose collected data will be exported</p> </li> </ul>"
        },
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "DescribeExportTasksResponse": {
      "type": "structure",
      "members": {
        "exportsInfo": {
          "shape": "ExportsInfo",
          "documentation": "<p>Contains one or more sets of export request details. When the status of a request is <code>SUCCEEDED</code>, the response includes a URL for an Amazon S3 bucket where you can view the data in a CSV file.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>DescribeExportTasks</code> request. When the results of a <code>DescribeExportTasks</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "DescribeImportTasksFilterList": {
      "type": "list",
      "member": {
        "shape": "ImportTaskFilter"
      }
    },
    "DescribeImportTasksMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "DescribeImportTasksRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "DescribeImportTasksFilterList",
          "documentation": "<p>An array of name-value pairs that you provide to filter the results for the <code>DescribeImportTask</code> request to a specific subset of results. Currently, wildcard values aren't supported for filters.</p>"
        },
        "maxResults": {
          "shape": "DescribeImportTasksMaxResults",
          "documentation": "<p>The maximum number of results that you want this request to return, up to 100.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to request a specific page of results.</p>"
        }
      }
    },
    "DescribeImportTasksResponse": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        },
        "tasks": {
          "shape": "ImportTaskList",
          "documentation": "<p>A returned array of import tasks that match any applied filters, up to the specified number of maximum results.</p>"
        }
      }
    },
    "DescribeTagsRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "TagFilters",
          "documentation": "<p>You can filter the list using a <i>key</i>-<i>value</i> format. You can separate these items by using logical operators. Allowed filters include <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>"
        },
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>The total number of items to return in a single page of output. The maximum value is 100.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to start the list. Use this token to get the next set of results.</p>"
        }
      }
    },
    "DescribeTagsResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "ConfigurationTagSet",
          "documentation": "<p>Depending on the input, this is a list of configuration items tagged with a specific tag, or a list of tags for a specific configuration item.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The call returns a token. Use this token to get the next set of results.</p>"
        }
      }
    },
    "DisassociateConfigurationItemsFromApplicationRequest": {
      "type": "structure",
      "required": [
        "applicationConfigurationId",
        "configurationIds"
      ],
      "members": {
        "applicationConfigurationId": {
          "shape": "ApplicationId",
          "documentation": "<p>Configuration ID of an application from which each item is disassociated.</p>"
        },
        "configurationIds": {
          "shape": "ConfigurationIdList",
          "documentation": "<p>Configuration ID of each item to be disassociated from an application.</p>"
        }
      }
    },
    "DisassociateConfigurationItemsFromApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "ExportConfigurationsResponse": {
      "type": "structure",
      "members": {
        "exportId": {
          "shape": "ConfigurationsExportId",
          "documentation": "<p>A unique identifier that you can use to query the export status.</p>"
        }
      }
    },
    "ExportDataFormat": {
      "type": "string",
      "enum": [
        "CSV",
        "GRAPHML"
      ]
    },
    "ExportDataFormats": {
      "type": "list",
      "member": {
        "shape": "ExportDataFormat"
      }
    },
    "ExportFilter": {
      "type": "structure",
      "required": [
        "name",
        "values",
        "condition"
      ],
      "members": {
        "name": {
          "shape": "FilterName",
          "documentation": "<p>A single <code>ExportFilter</code> name. Supported filters: <code>agentId</code>.</p>"
        },
        "values": {
          "shape": "FilterValues",
          "documentation": "<p>A single <code>agentId</code> for a Discovery Agent. An <code>agentId</code> can be found using the <a href=\"http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html\">DescribeAgents</a> action. Typically an ADS <code>agentId</code> is in the form <code>o-0123456789abcdef0</code>.</p>"
        },
        "condition": {
          "shape": "Condition",
          "documentation": "<p>Supported condition: <code>EQUALS</code> </p>"
        }
      },
      "documentation": "<p>Used to select which agent's data is to be exported. A single agent ID may be selected for export using the <a href=\"http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html\">StartExportTask</a> action.</p>"
    },
    "ExportFilters": {
      "type": "list",
      "member": {
        "shape": "ExportFilter"
      }
    },
    "ExportIds": {
      "type": "list",
      "member": {
        "shape": "ConfigurationsExportId"
      }
    },
    "ExportInfo": {
      "type": "structure",
      "required": [
        "exportId",
        "exportStatus",
        "statusMessage",
        "exportRequestTime"
      ],
      "members": {
        "exportId": {
          "shape": "ConfigurationsExportId",
          "documentation": "<p>A unique identifier used to query an export.</p>"
        },
        "exportStatus": {
          "shape": "ExportStatus",
          "documentation": "<p>The status of the data export job.</p>"
        },
        "statusMessage": {
          "shape": "ExportStatusMessage",
          "documentation": "<p>A status message provided for API callers.</p>"
        },
        "configurationsDownloadUrl": {
          "shape": "ConfigurationsDownloadUrl",
          "documentation": "<p>A URL for an Amazon S3 bucket where you can review the exported data. The URL is displayed only if the export succeeded.</p>"
        },
        "exportRequestTime": {
          "shape": "ExportRequestTime",
          "documentation": "<p>The time that the data export was initiated.</p>"
        },
        "isTruncated": {
          "shape": "Boolean",
          "documentation": "<p>If true, the export of agent information exceeded the size limit for a single export and the exported data is incomplete for the requested time range. To address this, select a smaller time range for the export by using <code>startDate</code> and <code>endDate</code>.</p>"
        },
        "requestedStartTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The value of <code>startTime</code> parameter in the <code>StartExportTask</code> request. If no <code>startTime</code> was requested, this result does not appear in <code>ExportInfo</code>.</p>"
        },
        "requestedEndTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The <code>endTime</code> used in the <code>StartExportTask</code> request. If no <code>endTime</code> was requested, this result does not appear in <code>ExportInfo</code>.</p>"
        }
      },
      "documentation": "<p>Information regarding the export status of discovered data. The value is an array of objects.</p>"
    },
    "ExportRequestTime": {
      "type": "timestamp"
    },
    "ExportStatus": {
      "type": "string",
      "enum": [
        "FAILED",
        "SUCCEEDED",
        "IN_PROGRESS"
      ]
    },
    "ExportStatusMessage": {
      "type": "string"
    },
    "ExportsInfo": {
      "type": "list",
      "member": {
        "shape": "ExportInfo"
      }
    },
    "Filter": {
      "type": "structure",
      "required": [
        "name",
        "values",
        "condition"
      ],
      "members": {
        "name": {
          "shape": "String",
          "documentation": "<p>The name of the filter.</p>"
        },
        "values": {
          "shape": "FilterValues",
          "documentation": "<p>A string value on which to filter. For example, if you choose the <code>destinationServer.osVersion</code> filter name, you could specify <code>Ubuntu</code> for the value.</p>"
        },
        "condition": {
          "shape": "Condition",
          "documentation": "<p>A conditional operator. The following operators are valid: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS. If you specify multiple filters, the system utilizes all filters as though concatenated by <i>AND</i>. If you specify multiple values for a particular filter, the system differentiates the values using <i>OR</i>. Calling either <i>DescribeConfigurations</i> or <i>ListConfigurations</i> returns attributes of matching configuration items.</p>"
        }
      },
      "documentation": "<p>A filter that can use conditional operators.</p> <p>For more information about filters, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html\">Querying Discovered Configuration Items</a> in the <i>AWS Application Discovery Service User Guide</i>. </p>"
    },
    "FilterName": {
      "type": "string"
    },
    "FilterValue": {
      "type": "string"
    },
    "FilterValues": {
      "type": "list",
      "member": {
        "shape": "FilterValue"
      }
    },
    "Filters": {
      "type": "list",
      "member": {
        "shape": "Filter"
      }
    },
    "GetDiscoverySummaryRequest": {
      "type": "structure",
      "members": {}
    },
    "GetDiscoverySummaryResponse": {
      "type": "structure",
      "members": {
        "servers": {
          "shape": "Long",
          "documentation": "<p>The number of servers discovered.</p>"
        },
        "applications": {
          "shape": "Long",
          "documentation": "<p>The number of applications discovered.</p>"
        },
        "serversMappedToApplications": {
          "shape": "Long",
          "documentation": "<p>The number of servers mapped to applications.</p>"
        },
        "serversMappedtoTags": {
          "shape": "Long",
          "documentation": "<p>The number of servers mapped to tags.</p>"
        },
        "agentSummary": {
          "shape": "CustomerAgentInfo",
          "documentation": "<p>Details about discovered agents, including agent status and health.</p>"
        },
        "connectorSummary": {
          "shape": "CustomerConnectorInfo",
          "documentation": "<p>Details about discovered connectors, including connector status and health.</p>"
        }
      }
    },
    "ImportStatus": {
      "type": "string",
      "enum": [
        "IMPORT_IN_PROGRESS",
        "IMPORT_COMPLETE",
        "IMPORT_COMPLETE_WITH_ERRORS",
        "IMPORT_FAILED",
        "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED",
        "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED",
        "DELETE_IN_PROGRESS",
        "DELETE_COMPLETE",
        "DELETE_FAILED",
        "DELETE_FAILED_LIMIT_EXCEEDED",
        "INTERNAL_ERROR"
      ]
    },
    "ImportTask": {
      "type": "structure",
      "members": {
        "importTaskId": {
          "shape": "ImportTaskIdentifier",
          "documentation": "<p>The unique ID for a specific import task. These IDs aren't globally unique, but they are unique within an AWS account.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A unique token used to prevent the same import request from occurring more than once. If you didn't provide a token, a token was automatically generated when the import task request was sent.</p>"
        },
        "name": {
          "shape": "ImportTaskName",
          "documentation": "<p>A descriptive name for an import task. You can use this name to filter future requests related to this import task, such as identifying applications and servers that were included in this import task. We recommend that you use a meaningful name for each import task.</p>"
        },
        "importUrl": {
          "shape": "ImportURL",
          "documentation": "<p>The URL for your import file that you've uploaded to Amazon S3.</p>"
        },
        "status": {
          "shape": "ImportStatus",
          "documentation": "<p>The status of the import task. An import can have the status of <code>IMPORT_COMPLETE</code> and still have some records fail to import from the overall request. More information can be found in the downloadable archive defined in the <code>errorsAndFailedEntriesZip</code> field, or in the Migration Hub management console.</p>"
        },
        "importRequestTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time that the import task request was made, presented in the Unix time stamp format.</p>"
        },
        "importCompletionTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time that the import task request finished, presented in the Unix time stamp format.</p>"
        },
        "importDeletedTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The time that the import task request was deleted, presented in the Unix time stamp format.</p>"
        },
        "serverImportSuccess": {
          "shape": "Integer",
          "documentation": "<p>The total number of server records in the import file that were successfully imported.</p>"
        },
        "serverImportFailure": {
          "shape": "Integer",
          "documentation": "<p>The total number of server records in the import file that failed to be imported.</p>"
        },
        "applicationImportSuccess": {
          "shape": "Integer",
          "documentation": "<p>The total number of application records in the import file that were successfully imported.</p>"
        },
        "applicationImportFailure": {
          "shape": "Integer",
          "documentation": "<p>The total number of application records in the import file that failed to be imported.</p>"
        },
        "errorsAndFailedEntriesZip": {
          "shape": "S3PresignedUrl",
          "documentation": "<p>A link to a compressed archive folder (in the ZIP format) that contains an error log and a file of failed records. You can use these two files to quickly identify records that failed, why they failed, and correct those records. Afterward, you can upload the corrected file to your Amazon S3 bucket and create another import task request.</p> <p>This field also includes authorization information so you can confirm the authenticity of the compressed archive before you download it.</p> <p>If some records failed to be imported we recommend that you correct the records in the failed entries file and then imports that failed entries file. This prevents you from having to correct and update the larger original file and attempt importing it again.</p>"
        }
      },
      "documentation": "<p>An array of information related to the import task request that includes status information, times, IDs, the Amazon S3 Object URL for the import file, and more.</p>"
    },
    "ImportTaskFilter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ImportTaskFilterName",
          "documentation": "<p>The name, status, or import task ID for a specific import task.</p>"
        },
        "values": {
          "shape": "ImportTaskFilterValueList",
          "documentation": "<p>An array of strings that you can provide to match against a specific name, status, or import task ID to filter the results for your import task queries.</p>"
        }
      },
      "documentation": "<p>A name-values pair of elements you can use to filter the results when querying your import tasks. Currently, wildcards are not supported for filters.</p> <note> <p>When filtering by import status, all other filter values are ignored.</p> </note>"
    },
    "ImportTaskFilterName": {
      "type": "string",
      "enum": [
        "IMPORT_TASK_ID",
        "STATUS",
        "NAME"
      ]
    },
    "ImportTaskFilterValue": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ImportTaskFilterValueList": {
      "type": "list",
      "member": {
        "shape": "ImportTaskFilterValue"
      },
      "max": 100,
      "min": 1
    },
    "ImportTaskIdentifier": {
      "type": "string"
    },
    "ImportTaskList": {
      "type": "list",
      "member": {
        "shape": "ImportTask"
      }
    },
    "ImportTaskName": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ImportURL": {
      "type": "string",
      "max": 4000,
      "min": 1
    },
    "Integer": {
      "type": "integer"
    },
    "ListConfigurationsRequest": {
      "type": "structure",
      "required": [
        "configurationType"
      ],
      "members": {
        "configurationType": {
          "shape": "ConfigurationItemType",
          "documentation": "<p>A valid configuration identified by Application Discovery Service. </p>"
        },
        "filters": {
          "shape": "Filters",
          "documentation": "<p>You can filter the request using various logical operators and a <i>key</i>-<i>value</i> format. For example: </p> <p> <code>{\"key\": \"serverType\", \"value\": \"webServer\"}</code> </p> <p>For a complete list of filter options and guidance about using them with this action, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations\">Using the ListConfigurations Action</a> in the <i>AWS Application Discovery Service User Guide</i>.</p>"
        },
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>The total number of items to return. The maximum value is 100.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>Token to retrieve the next set of results. For example, if a previous call to ListConfigurations returned 100 items, but you set <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>"
        },
        "orderBy": {
          "shape": "OrderByList",
          "documentation": "<p>Certain filter criteria return output that can be sorted in ascending or descending order. For a list of output characteristics for each filter, see <a href=\"https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations\">Using the ListConfigurations Action</a> in the <i>AWS Application Discovery Service User Guide</i>.</p>"
        }
      }
    },
    "ListConfigurationsResponse": {
      "type": "structure",
      "members": {
        "configurations": {
          "shape": "Configurations",
          "documentation": "<p>Returns configuration details, including the configuration ID, attribute names, and attribute values.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>Token to retrieve the next set of results. For example, if your call to ListConfigurations returned 100 items, but you set <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>"
        }
      }
    },
    "ListServerNeighborsRequest": {
      "type": "structure",
      "required": [
        "configurationId"
      ],
      "members": {
        "configurationId": {
          "shape": "ConfigurationId",
          "documentation": "<p>Configuration ID of the server for which neighbors are being listed.</p>"
        },
        "portInformationNeeded": {
          "shape": "Boolean",
          "documentation": "<p>Flag to indicate if port and protocol information is needed as part of the response.</p>"
        },
        "neighborConfigurationIds": {
          "shape": "ConfigurationIdList",
          "documentation": "<p>List of configuration IDs to test for one-hop-away.</p>"
        },
        "maxResults": {
          "shape": "Integer",
          "documentation": "<p>Maximum number of results to return in a single page of output.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Token to retrieve the next set of results. For example, if you previously specified 100 IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results along with a token. Use that token in this query to get the next set of 10.</p>"
        }
      }
    },
    "ListServerNeighborsResponse": {
      "type": "structure",
      "required": [
        "neighbors"
      ],
      "members": {
        "neighbors": {
          "shape": "NeighborDetailsList",
          "documentation": "<p>List of distinct servers that are one hop away from the given server.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>Token to retrieve the next set of results. For example, if you specified 100 IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results along with this token. Use this token in the next query to retrieve the next set of 10.</p>"
        },
        "knownDependencyCount": {
          "shape": "Long",
          "documentation": "<p>Count of distinct servers that are one hop away from the given server.</p>"
        }
      }
    },
    "Long": {
      "type": "long"
    },
    "NeighborConnectionDetail": {
      "type": "structure",
      "required": [
        "sourceServerId",
        "destinationServerId",
        "connectionsCount"
      ],
      "members": {
        "sourceServerId": {
          "shape": "ConfigurationId",
          "documentation": "<p>The ID of the server that opened the network connection.</p>"
        },
        "destinationServerId": {
          "shape": "ConfigurationId",
          "documentation": "<p>The ID of the server that accepted the network connection.</p>"
        },
        "destinationPort": {
          "shape": "BoxedInteger",
          "documentation": "<p>The destination network port for the connection.</p>"
        },
        "transportProtocol": {
          "shape": "String",
          "documentation": "<p>The network protocol used for the connection.</p>"
        },
        "connectionsCount": {
          "shape": "Long",
          "documentation": "<p>The number of open network connections with the neighboring server.</p>"
        }
      },
      "documentation": "<p>Details about neighboring servers.</p>"
    },
    "NeighborDetailsList": {
      "type": "list",
      "member": {
        "shape": "NeighborConnectionDetail"
      }
    },
    "NextToken": {
      "type": "string"
    },
    "OrderByElement": {
      "type": "structure",
      "required": [
        "fieldName"
      ],
      "members": {
        "fieldName": {
          "shape": "String",
          "documentation": "<p>The field on which to order.</p>"
        },
        "sortOrder": {
          "shape": "orderString",
          "documentation": "<p>Ordering direction.</p>"
        }
      },
      "documentation": "<p>A field and direction for ordered output.</p>"
    },
    "OrderByList": {
      "type": "list",
      "member": {
        "shape": "OrderByElement"
      }
    },
    "S3Bucket": {
      "type": "string"
    },
    "S3PresignedUrl": {
      "type": "string"
    },
    "SchemaStorageConfig": {
      "type": "map",
      "key": {
        "shape": "DatabaseName"
      },
      "value": {
        "shape": "String"
      }
    },
    "StartContinuousExportRequest": {
      "type": "structure",
      "members": {}
    },
    "StartContinuousExportResponse": {
      "type": "structure",
      "members": {
        "exportId": {
          "shape": "ConfigurationsExportId",
          "documentation": "<p>The unique ID assigned to this export.</p>"
        },
        "s3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The name of the s3 bucket where the export data parquet files are stored.</p>"
        },
        "startTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The timestamp representing when the continuous export was started.</p>"
        },
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The type of data collector used to gather this data (currently only offered for AGENT).</p>"
        },
        "schemaStorageConfig": {
          "shape": "SchemaStorageConfig",
          "documentation": "<p>A dictionary which describes how the data is stored.</p> <ul> <li> <p> <code>databaseName</code> - the name of the Glue database used to store the schema.</p> </li> </ul>"
        }
      }
    },
    "StartDataCollectionByAgentIdsRequest": {
      "type": "structure",
      "required": [
        "agentIds"
      ],
      "members": {
        "agentIds": {
          "shape": "AgentIds",
          "documentation": "<p>The IDs of the agents or connectors from which to start collecting data. If you send a request to an agent/connector ID that you do not have permission to contact, according to your AWS account, the service does not throw an exception. Instead, it returns the error in the <i>Description</i> field. If you send a request to multiple agents/connectors and you do not have permission to contact some of those agents/connectors, the system does not throw an exception. Instead, the system shows <code>Failed</code> in the <i>Description</i> field.</p>"
        }
      }
    },
    "StartDataCollectionByAgentIdsResponse": {
      "type": "structure",
      "members": {
        "agentsConfigurationStatus": {
          "shape": "AgentConfigurationStatusList",
          "documentation": "<p>Information about agents or the connector that were instructed to start collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.</p>"
        }
      }
    },
    "StartExportTaskRequest": {
      "type": "structure",
      "members": {
        "exportDataFormat": {
          "shape": "ExportDataFormats",
          "documentation": "<p>The file format for the returned export data. Default value is <code>CSV</code>. <b>Note:</b> <i>The</i> <code>GRAPHML</code> <i>option has been deprecated.</i> </p>"
        },
        "filters": {
          "shape": "ExportFilters",
          "documentation": "<p>If a filter is present, it selects the single <code>agentId</code> of the Application Discovery Agent for which data is exported. The <code>agentId</code> can be found in the results of the <code>DescribeAgents</code> API or CLI. If no filter is present, <code>startTime</code> and <code>endTime</code> are ignored and exported data includes both Agentless Discovery Connector data and summary data from Application Discovery agents. </p>"
        },
        "startTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The start timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, data is exported starting from the first data collected by the agent.</p>"
        },
        "endTime": {
          "shape": "TimeStamp",
          "documentation": "<p>The end timestamp for exported data from the single Application Discovery Agent selected in the filters. If no value is specified, exported data includes the most recent data collected by the agent.</p>"
        }
      }
    },
    "StartExportTaskResponse": {
      "type": "structure",
      "members": {
        "exportId": {
          "shape": "ConfigurationsExportId",
          "documentation": "<p>A unique identifier used to query the status of an export request.</p>"
        }
      }
    },
    "StartImportTaskRequest": {
      "type": "structure",
      "required": [
        "name",
        "importUrl"
      ],
      "members": {
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Optional. A unique token that you can provide to prevent the same import request from occurring more than once. If you don't provide a token, a token is automatically generated.</p> <p>Sending more than one <code>StartImportTask</code> request with the same client request token will return information about the original import task with that client request token.</p>",
          "idempotencyToken": true
        },
        "name": {
          "shape": "ImportTaskName",
          "documentation": "<p>A descriptive name for this request. You can use this name to filter future requests related to this import task, such as identifying applications and servers that were included in this import task. We recommend that you use a meaningful name for each import task.</p>"
        },
        "importUrl": {
          "shape": "ImportURL",
          "documentation": "<p>The URL for your import file that you've uploaded to Amazon S3.</p> <note> <p>If you're using the AWS CLI, this URL is structured as follows: <code>s3://BucketName/ImportFileName.CSV</code> </p> </note>"
        }
      }
    },
    "StartImportTaskResponse": {
      "type": "structure",
      "members": {
        "task": {
          "shape": "ImportTask",
          "documentation": "<p>An array of information related to the import task request including status information, times, IDs, the Amazon S3 Object URL for the import file, and more. </p>"
        }
      }
    },
    "StopContinuousExportRequest": {
      "type": "structure",
      "required": [
        "exportId"
      ],
      "members": {
        "exportId": {
          "shape": "ConfigurationsExportId",
          "documentation": "<p>The unique ID assigned to this export.</p>"
        }
      }
    },
    "StopContinuousExportResponse": {
      "type": "structure",
      "members": {
        "startTime": {
          "shape": "TimeStamp",
          "documentation": "<p>Timestamp that represents when this continuous export started collecting data.</p>"
        },
        "stopTime": {
          "shape": "TimeStamp",
          "documentation": "<p>Timestamp that represents when this continuous export was stopped.</p>"
        }
      }
    },
    "StopDataCollectionByAgentIdsRequest": {
      "type": "structure",
      "required": [
        "agentIds"
      ],
      "members": {
        "agentIds": {
          "shape": "AgentIds",
          "documentation": "<p>The IDs of the agents or connectors from which to stop collecting data.</p>"
        }
      }
    },
    "StopDataCollectionByAgentIdsResponse": {
      "type": "structure",
      "members": {
        "agentsConfigurationStatus": {
          "shape": "AgentConfigurationStatusList",
          "documentation": "<p>Information about the agents or connector that were instructed to stop collecting data. Information includes the agent/connector ID, a description of the operation performed, and whether the agent/connector configuration was updated.</p>"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "StringMax255": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "Tag": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "TagKey",
          "documentation": "<p>The type of tag on which to filter.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>A value for a tag key on which to filter.</p>"
        }
      },
      "documentation": "<p>Metadata that help you categorize IT assets.</p>"
    },
    "TagFilter": {
      "type": "structure",
      "required": [
        "name",
        "values"
      ],
      "members": {
        "name": {
          "shape": "FilterName",
          "documentation": "<p>A name of the tag filter.</p>"
        },
        "values": {
          "shape": "FilterValues",
          "documentation": "<p>Values for the tag filter.</p>"
        }
      },
      "documentation": "<p>The tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>, <code>configurationId</code>.</p>"
    },
    "TagFilters": {
      "type": "list",
      "member": {
        "shape": "TagFilter"
      }
    },
    "TagKey": {
      "type": "string"
    },
    "TagSet": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagValue": {
      "type": "string"
    },
    "TimeStamp": {
      "type": "timestamp"
    },
    "ToDeleteIdentifierList": {
      "type": "list",
      "member": {
        "shape": "ImportTaskIdentifier"
      },
      "max": 10,
      "min": 1
    },
    "UpdateApplicationRequest": {
      "type": "structure",
      "required": [
        "configurationId"
      ],
      "members": {
        "configurationId": {
          "shape": "ApplicationId",
          "documentation": "<p>Configuration ID of the application to be updated.</p>"
        },
        "name": {
          "shape": "String",
          "documentation": "<p>New name of the application to be updated.</p>"
        },
        "description": {
          "shape": "String",
          "documentation": "<p>New description of the application to be updated.</p>"
        }
      }
    },
    "UpdateApplicationResponse": {
      "type": "structure",
      "members": {}
    },
    "orderString": {
      "type": "string",
      "enum": [
        "ASC",
        "DESC"
      ]
    }
  },
  "documentation": "<fullname>AWS Application Discovery Service</fullname> <p>AWS Application Discovery Service helps you plan application migration projects. It automatically identifies servers, virtual machines (VMs), and network dependencies in your on-premises data centers. For more information, see the <a href=\"http://aws.amazon.com/application-discovery/faqs/\">AWS Application Discovery Service FAQ</a>. Application Discovery Service offers three ways of performing discovery and collecting data about your on-premises servers:</p> <ul> <li> <p> <b>Agentless discovery</b> is recommended for environments that use VMware vCenter Server. This mode doesn't require you to install an agent on each host. It does not work in non-VMware environments.</p> <ul> <li> <p>Agentless discovery gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment.</p> </li> <li> <p>Agentless discovery doesn't collect information about network dependencies, only agent-based discovery collects that information.</p> </li> </ul> </li> </ul> <ul> <li> <p> <b>Agent-based discovery</b> collects a richer set of data than agentless discovery by using the AWS Application Discovery Agent, which you install on one or more hosts in your data center.</p> <ul> <li> <p> The agent captures infrastructure and application information, including an inventory of running processes, system performance information, resource utilization, and network dependencies.</p> </li> <li> <p>The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the cloud. </p> </li> </ul> </li> </ul> <ul> <li> <p> <b>AWS Partner Network (APN) solutions</b> integrate with Application Discovery Service, enabling you to import details of your on-premises environment directly into Migration Hub without using the discovery connector or discovery agent.</p> <ul> <li> <p>Third-party application discovery tools can query AWS Application Discovery Service, and they can write to the Application Discovery Service database using the public API.</p> </li> <li> <p>In this way, you can import data into Migration Hub and view it, so that you can associate applications with servers and track migrations.</p> </li> </ul> </li> </ul> <p> <b>Recommendations</b> </p> <p>We recommend that you use agent-based discovery for non-VMware environments, and whenever you want to collect information about network dependencies. You can run agent-based and agentless discovery simultaneously. Use agentless discovery to complete the initial infrastructure assessment quickly, and then install agents on select hosts to collect additional information.</p> <p> <b>Working With This Guide</b> </p> <p>This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see <a href=\"http://aws.amazon.com/tools/#SDKs\">AWS SDKs</a>.</p> <note> <ul> <li> <p>Remember that you must set your Migration Hub home region before you call any of these APIs.</p> </li> <li> <p>You must make API calls for write actions (create, notify, associate, disassociate, import, or put) while in your home region, or a <code>HomeRegionNotSetException</code> error is returned.</p> </li> <li> <p>API calls for read actions (list, describe, stop, and delete) are permitted outside of your home region.</p> </li> <li> <p>Although it is unlikely, the Migration Hub home region could change. If you call APIs outside the home region, an <code>InvalidInputException</code> is returned.</p> </li> <li> <p>You must call <code>GetHomeRegion</code> to obtain the latest Migration Hub home region.</p> </li> </ul> </note> <p>This guide is intended for use with the <a href=\"http://docs.aws.amazon.com/application-discovery/latest/userguide/\">AWS Application Discovery Service User Guide</a>.</p> <important> <p>All data is handled according to the <a href=\"http://aws.amazon.com/privacy/\">AWS Privacy Policy</a>. You can operate Application Discovery Service offline to inspect collected data before it is shared with the service.</p> </important>"
}
]===]))