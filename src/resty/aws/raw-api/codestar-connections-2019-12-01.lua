local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-12-01",
    "endpointPrefix": "codestar-connections",
    "jsonVersion": "1.0",
    "protocol": "json",
    "serviceFullName": "AWS CodeStar connections",
    "serviceId": "CodeStar connections",
    "signatureVersion": "v4",
    "signingName": "codestar-connections",
    "targetPrefix": "com.amazonaws.codestar.connections.CodeStar_connections_20191201",
    "uid": "codestar-connections-2019-12-01"
  },
  "operations": {
    "CreateConnection": {
      "name": "CreateConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateConnectionInput"
      },
      "output": {
        "shape": "CreateConnectionOutput"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Creates a connection that can then be given to other AWS services like CodePipeline so that it can access third-party code repositories. The connection is in pending status until the third-party connection handshake is completed from the console.</p>"
    },
    "CreateHost": {
      "name": "CreateHost",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateHostInput"
      },
      "output": {
        "shape": "CreateHostOutput"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a resource that represents the infrastructure where a third-party provider is installed. The host is used when you create connections to an installed third-party provider type, such as GitHub Enterprise Server. You create one host for all connections to that provider.</p> <note> <p>A host created through the CLI or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by setting up the host in the console.</p> </note>"
    },
    "DeleteConnection": {
      "name": "DeleteConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConnectionInput"
      },
      "output": {
        "shape": "DeleteConnectionOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>The connection to be deleted.</p>"
    },
    "DeleteHost": {
      "name": "DeleteHost",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteHostInput"
      },
      "output": {
        "shape": "DeleteHostOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>The host to be deleted. Before you delete a host, all connections associated to the host must be deleted.</p> <note> <p>A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or VPC_CONFIG_DELETING state.</p> </note>"
    },
    "GetConnection": {
      "name": "GetConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConnectionInput"
      },
      "output": {
        "shape": "GetConnectionOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Returns the connection ARN and details such as status, owner, and provider type.</p>"
    },
    "GetHost": {
      "name": "GetHost",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetHostInput"
      },
      "output": {
        "shape": "GetHostOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Returns the host ARN and details such as status, provider type, endpoint, and, if applicable, the VPC configuration.</p>"
    },
    "ListConnections": {
      "name": "ListConnections",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListConnectionsInput"
      },
      "output": {
        "shape": "ListConnectionsOutput"
      },
      "documentation": "<p>Lists the connections associated with your account.</p>"
    },
    "ListHosts": {
      "name": "ListHosts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListHostsInput"
      },
      "output": {
        "shape": "ListHostsOutput"
      },
      "documentation": "<p>Lists the hosts associated with your account.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceInput"
      },
      "output": {
        "shape": "ListTagsForResourceOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Gets the set of key-value pairs (metadata) that are used to manage the resource.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceInput"
      },
      "output": {
        "shape": "TagResourceOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceInput"
      },
      "output": {
        "shape": "UntagResourceOutput"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes tags from an AWS resource.</p>"
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string",
      "max": 12,
      "min": 12,
      "pattern": "[0-9]{12}"
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "Connection": {
      "type": "structure",
      "members": {
        "ConnectionName": {
          "shape": "ConnectionName",
          "documentation": "<p>The name of the connection. Connection names must be unique in an AWS user account.</p>"
        },
        "ConnectionArn": {
          "shape": "ConnectionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the connection. The ARN is used as the connection reference when the connection is shared between AWS services.</p> <note> <p>The ARN is never reused if the connection is deleted.</p> </note>"
        },
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p>The name of the external provider where your third-party code repository is configured. The valid provider type is Bitbucket.</p>"
        },
        "OwnerAccountId": {
          "shape": "AccountId",
          "documentation": "<p>The identifier of the external provider where your third-party code repository is configured. For Bitbucket, this is the account ID of the owner of the Bitbucket repository.</p>"
        },
        "ConnectionStatus": {
          "shape": "ConnectionStatus",
          "documentation": "<p>The current status of the connection. </p>"
        },
        "HostArn": {
          "shape": "HostArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the host associated with the connection.</p>"
        }
      },
      "documentation": "<p>A resource that is used to connect third-party source providers with services like AWS CodePipeline.</p> <p>Note: A connection created through CloudFormation, the CLI, or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by updating the connection in the console.</p>"
    },
    "ConnectionArn": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+"
    },
    "ConnectionList": {
      "type": "list",
      "member": {
        "shape": "Connection"
      }
    },
    "ConnectionName": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "ConnectionStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "ERROR"
      ]
    },
    "CreateConnectionInput": {
      "type": "structure",
      "required": [
        "ConnectionName"
      ],
      "members": {
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p>The name of the external provider where your third-party code repository is configured. The valid provider type is Bitbucket.</p>"
        },
        "ConnectionName": {
          "shape": "ConnectionName",
          "documentation": "<p>The name of the connection to be created. The name must be unique in the calling AWS account.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The key-value pair to use when tagging the resource.</p>"
        },
        "HostArn": {
          "shape": "HostArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the host associated with the connection to be created.</p>"
        }
      }
    },
    "CreateConnectionOutput": {
      "type": "structure",
      "required": [
        "ConnectionArn"
      ],
      "members": {
        "ConnectionArn": {
          "shape": "ConnectionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the connection to be created. The ARN is used as the connection reference when the connection is shared between AWS services.</p> <note> <p>The ARN is never reused if the connection is deleted.</p> </note>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Specifies the tags applied to the resource.</p>"
        }
      }
    },
    "CreateHostInput": {
      "type": "structure",
      "required": [
        "Name",
        "ProviderType",
        "ProviderEndpoint"
      ],
      "members": {
        "Name": {
          "shape": "HostName",
          "documentation": "<p>The name of the host to be created. The name must be unique in the calling AWS account.</p>"
        },
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p>The name of the installed provider to be associated with your connection. The host resource represents the infrastructure where your provider type is installed. The valid provider type is GitHub Enterprise Server.</p>"
        },
        "ProviderEndpoint": {
          "shape": "Url",
          "documentation": "<p>The endpoint of the infrastructure to be represented by the host after it is created.</p>"
        },
        "VpcConfiguration": {
          "shape": "VpcConfiguration",
          "documentation": "<p>The VPC configuration to be provisioned for the host. A VPC must be configured and the infrastructure to be represented by the host must already be connected to the VPC.</p>"
        }
      }
    },
    "CreateHostOutput": {
      "type": "structure",
      "members": {
        "HostArn": {
          "shape": "HostArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the host to be created.</p>"
        }
      }
    },
    "DeleteConnectionInput": {
      "type": "structure",
      "required": [
        "ConnectionArn"
      ],
      "members": {
        "ConnectionArn": {
          "shape": "ConnectionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the connection to be deleted.</p> <note> <p>The ARN is never reused if the connection is deleted.</p> </note>"
        }
      }
    },
    "DeleteConnectionOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteHostInput": {
      "type": "structure",
      "required": [
        "HostArn"
      ],
      "members": {
        "HostArn": {
          "shape": "HostArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the host to be deleted.</p>"
        }
      }
    },
    "DeleteHostOutput": {
      "type": "structure",
      "members": {}
    },
    "GetConnectionInput": {
      "type": "structure",
      "required": [
        "ConnectionArn"
      ],
      "members": {
        "ConnectionArn": {
          "shape": "ConnectionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a connection.</p>"
        }
      }
    },
    "GetConnectionOutput": {
      "type": "structure",
      "members": {
        "Connection": {
          "shape": "Connection",
          "documentation": "<p>The connection details, such as status, owner, and provider type.</p>"
        }
      }
    },
    "GetHostInput": {
      "type": "structure",
      "required": [
        "HostArn"
      ],
      "members": {
        "HostArn": {
          "shape": "HostArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the requested host.</p>"
        }
      }
    },
    "GetHostOutput": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "HostName",
          "documentation": "<p>The name of the requested host.</p>"
        },
        "Status": {
          "shape": "HostStatus",
          "documentation": "<p>The status of the requested host.</p>"
        },
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p>The provider type of the requested host, such as GitHub Enterprise Server.</p>"
        },
        "ProviderEndpoint": {
          "shape": "Url",
          "documentation": "<p>The endpoint of the infrastructure represented by the requested host.</p>"
        },
        "VpcConfiguration": {
          "shape": "VpcConfiguration",
          "documentation": "<p>The VPC configuration of the requested host.</p>"
        }
      }
    },
    "Host": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "HostName",
          "documentation": "<p>The name of the host.</p>"
        },
        "HostArn": {
          "shape": "HostArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the host.</p>"
        },
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p>The name of the installed provider to be associated with your connection. The host resource represents the infrastructure where your provider type is installed. The valid provider type is GitHub Enterprise Server.</p>"
        },
        "ProviderEndpoint": {
          "shape": "Url",
          "documentation": "<p>The endpoint of the infrastructure where your provider type is installed.</p>"
        },
        "VpcConfiguration": {
          "shape": "VpcConfiguration",
          "documentation": "<p>The VPC configuration provisioned for the host.</p>"
        },
        "Status": {
          "shape": "HostStatus",
          "documentation": "<p>The status of the host, such as PENDING, AVAILABLE, VPC_CONFIG_DELETING, VPC_CONFIG_INITIALIZING, and VPC_CONFIG_FAILED_INITIALIZATION.</p>"
        },
        "StatusMessage": {
          "shape": "HostStatusMessage",
          "documentation": "<p>The status description for the host.</p>"
        }
      },
      "documentation": "<p>A resource that represents the infrastructure where a third-party provider is installed. The host is used when you create connections to an installed third-party provider type, such as GitHub Enterprise Server. You create one host for all connections to that provider.</p> <note> <p>A host created through the CLI or the SDK is in `PENDING` status by default. You can make its status `AVAILABLE` by setting up the host in the console.</p> </note>"
    },
    "HostArn": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "arn:aws(-[\\w]+)*:codestar-connections:.+:[0-9]{12}:host\\/.+"
    },
    "HostList": {
      "type": "list",
      "member": {
        "shape": "Host"
      }
    },
    "HostName": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "HostStatus": {
      "type": "string"
    },
    "HostStatusMessage": {
      "type": "string"
    },
    "ListConnectionsInput": {
      "type": "structure",
      "members": {
        "ProviderTypeFilter": {
          "shape": "ProviderType",
          "documentation": "<p>Filters the list of connections to those associated with a specified provider, such as Bitbucket.</p>"
        },
        "HostArnFilter": {
          "shape": "HostArn",
          "documentation": "<p>Filters the list of connections to those associated with a specified host.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token that was returned from the previous <code>ListConnections</code> call, which can be used to return the next set of connections in the list.</p>"
        }
      }
    },
    "ListConnectionsOutput": {
      "type": "structure",
      "members": {
        "Connections": {
          "shape": "ConnectionList",
          "documentation": "<p>A list of connections and the details for each connection, such as status, owner, and provider type.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that can be used in the next <code>ListConnections</code> call. To view all items in the list, continue to call this operation with each subsequent token until no more <code>nextToken</code> values are returned.</p>"
        }
      }
    },
    "ListHostsInput": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token that was returned from the previous <code>ListHosts</code> call, which can be used to return the next set of hosts in the list.</p>"
        }
      }
    },
    "ListHostsOutput": {
      "type": "structure",
      "members": {
        "Hosts": {
          "shape": "HostList",
          "documentation": "<p>A list of hosts and the details for each host, such as status, endpoint, and provider type.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token that can be used in the next <code>ListHosts</code> call. To view all items in the list, continue to call this operation with each subsequent token until no more <code>nextToken</code> values are returned.</p>"
        }
      }
    },
    "ListTagsForResourceInput": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.</p>"
        }
      }
    },
    "ListTagsForResourceOutput": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tag key and value pairs associated with the specified resource.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "NextToken": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ProviderType": {
      "type": "string",
      "enum": [
        "Bitbucket",
        "GitHubEnterpriseServer"
      ]
    },
    "SecurityGroupId": {
      "type": "string",
      "pattern": "sg-\\w{8}(\\w{9})?"
    },
    "SecurityGroupIds": {
      "type": "list",
      "member": {
        "shape": "SecurityGroupId"
      },
      "max": 10,
      "min": 1
    },
    "SubnetId": {
      "type": "string",
      "pattern": "subnet-\\w{8}(\\w{9})?"
    },
    "SubnetIds": {
      "type": "list",
      "member": {
        "shape": "SubnetId"
      },
      "max": 10,
      "min": 1
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
          "documentation": "<p>The tag's key.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The tag's value.</p>"
        }
      },
      "documentation": "<p>A tag is a key-value pair that is used to manage the resource.</p> <p>This tag is available for use by AWS services that support tags.</p>"
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
      "max": 200,
      "min": 0
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 0
    },
    "TagResourceInput": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags you want to modify or add to the resource.</p>"
        }
      }
    },
    "TagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "TlsCertificate": {
      "type": "string",
      "max": 16384,
      "min": 1
    },
    "UntagResourceInput": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The list of keys for the tags to be removed from the resource.</p>"
        }
      }
    },
    "UntagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "Url": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "VpcConfiguration": {
      "type": "structure",
      "required": [
        "VpcId",
        "SubnetIds",
        "SecurityGroupIds"
      ],
      "members": {
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The ID of the Amazon VPC connected to the infrastructure where your provider type is installed.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The ID of the subnet or subnets associated with the Amazon VPC connected to the infrastructure where your provider type is installed.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The ID of the security group or security groups associated with the Amazon VPC connected to the infrastructure where your provider type is installed.</p>"
        },
        "TlsCertificate": {
          "shape": "TlsCertificate",
          "documentation": "<p>The value of the Transport Layer Security (TLS) certificate associated with the infrastructure where your provider type is installed.</p>"
        }
      },
      "documentation": "<p>The VPC configuration provisioned for the host.</p>"
    },
    "VpcId": {
      "type": "string",
      "pattern": "vpc-\\w{8}(\\w{9})?"
    }
  },
  "documentation": "<fullname>AWS CodeStar Connections</fullname> <important> <p>The CodeStar Connections feature is in preview release and is subject to change.</p> </important> <p>This AWS CodeStar Connections API Reference provides descriptions and usage examples of the operations and data types for the AWS CodeStar Connections API. You can use the connections API to work with connections and installations.</p> <p> <i>Connections</i> are configurations that you use to connect AWS resources to external code repositories. Each connection is a resource that can be given to services such as CodePipeline to connect to a third-party repository such as Bitbucket. For example, you can add the connection in CodePipeline so that it triggers your pipeline when a code change is made to your third-party code repository. Each connection is named and associated with a unique ARN that is used to reference the connection.</p> <p>When you create a connection, the console initiates a third-party connection handshake. <i>Installations</i> are the apps that are used to conduct this handshake. For example, the installation for the Bitbucket provider type is the Bitbucket Cloud app. When you create a connection, you can choose an existing installation or create one.</p> <p>When you want to create a connection to an installed provider type such as GitHub Enterprise Server, you create a <i>host</i> for your connections.</p> <p>You can work with connections by calling:</p> <ul> <li> <p> <a>CreateConnection</a>, which creates a uniquely named connection that can be referenced by services such as CodePipeline.</p> </li> <li> <p> <a>DeleteConnection</a>, which deletes the specified connection.</p> </li> <li> <p> <a>GetConnection</a>, which returns information about the connection, including the connection status.</p> </li> <li> <p> <a>ListConnections</a>, which lists the connections associated with your account.</p> </li> </ul> <p>You can work with hosts by calling:</p> <ul> <li> <p> <a>CreateHost</a>, which creates a host that represents the infrastructure where your provider is installed.</p> </li> <li> <p> <a>DeleteHost</a>, which deletes the specified host.</p> </li> <li> <p> <a>GetHost</a>, which returns information about the host, including the setup status.</p> </li> <li> <p> <a>ListHosts</a>, which lists the hosts associated with your account.</p> </li> </ul> <p>You can work with tags in AWS CodeStar Connections by calling the following:</p> <ul> <li> <p> <a>ListTagsForResource</a>, which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeStar Connections.</p> </li> <li> <p> <a>TagResource</a>, which adds or updates tags for a resource in AWS CodeStar Connections.</p> </li> <li> <p> <a>UntagResource</a>, which removes tags for a resource in AWS CodeStar Connections.</p> </li> </ul> <p>For information about how to use AWS CodeStar Connections, see the <a href=\"https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html\">Developer Tools User Guide</a>.</p>"
}
]===]))
