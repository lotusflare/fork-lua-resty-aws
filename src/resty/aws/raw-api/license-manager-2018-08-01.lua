local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-08-01",
    "endpointPrefix": "license-manager",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS License Manager",
    "serviceId": "License Manager",
    "signatureVersion": "v4",
    "targetPrefix": "AWSLicenseManager",
    "uid": "license-manager-2018-08-01"
  },
  "operations": {
    "CreateLicenseConfiguration": {
      "name": "CreateLicenseConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLicenseConfigurationRequest"
      },
      "output": {
        "shape": "CreateLicenseConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Creates a license configuration.</p> <p>A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), license affinity to host (how long a license must be associated with a host), and the number of licenses purchased and used.</p>"
    },
    "DeleteLicenseConfiguration": {
      "name": "DeleteLicenseConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLicenseConfigurationRequest"
      },
      "output": {
        "shape": "DeleteLicenseConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Deletes the specified license configuration.</p> <p>You cannot delete a license configuration that is in use.</p>"
    },
    "GetLicenseConfiguration": {
      "name": "GetLicenseConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetLicenseConfigurationRequest"
      },
      "output": {
        "shape": "GetLicenseConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Gets detailed information about the specified license configuration.</p>"
    },
    "GetServiceSettings": {
      "name": "GetServiceSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServiceSettingsRequest"
      },
      "output": {
        "shape": "GetServiceSettingsResponse"
      },
      "errors": [
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Gets the License Manager settings for the current Region.</p>"
    },
    "ListAssociationsForLicenseConfiguration": {
      "name": "ListAssociationsForLicenseConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAssociationsForLicenseConfigurationRequest"
      },
      "output": {
        "shape": "ListAssociationsForLicenseConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "FilterLimitExceededException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Lists the resource associations for the specified license configuration.</p> <p>Resource associations need not consume licenses from a license configuration. For example, an AMI or a stopped instance might not consume a license (depending on the license rules).</p>"
    },
    "ListFailuresForLicenseConfigurationOperations": {
      "name": "ListFailuresForLicenseConfigurationOperations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListFailuresForLicenseConfigurationOperationsRequest"
      },
      "output": {
        "shape": "ListFailuresForLicenseConfigurationOperationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Lists the license configuration operations that failed.</p>"
    },
    "ListLicenseConfigurations": {
      "name": "ListLicenseConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListLicenseConfigurationsRequest"
      },
      "output": {
        "shape": "ListLicenseConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "FilterLimitExceededException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Lists the license configurations for your account.</p>"
    },
    "ListLicenseSpecificationsForResource": {
      "name": "ListLicenseSpecificationsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListLicenseSpecificationsForResourceRequest"
      },
      "output": {
        "shape": "ListLicenseSpecificationsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Describes the license configurations for the specified resource.</p>"
    },
    "ListResourceInventory": {
      "name": "ListResourceInventory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourceInventoryRequest"
      },
      "output": {
        "shape": "ListResourceInventoryResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "FilterLimitExceededException"
        },
        {
          "shape": "FailedDependencyException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Lists resources managed using Systems Manager inventory.</p>"
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
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Lists the tags for the specified license configuration.</p>"
    },
    "ListUsageForLicenseConfiguration": {
      "name": "ListUsageForLicenseConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListUsageForLicenseConfigurationRequest"
      },
      "output": {
        "shape": "ListUsageForLicenseConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "FilterLimitExceededException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time. Use this action to audit the current license consumption for any license inventory and configuration.</p>"
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
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Adds the specified tags to the specified license configuration.</p>"
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
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Removes the specified tags from the specified license configuration.</p>"
    },
    "UpdateLicenseConfiguration": {
      "name": "UpdateLicenseConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateLicenseConfigurationRequest"
      },
      "output": {
        "shape": "UpdateLicenseConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Modifies the attributes of an existing license configuration.</p>"
    },
    "UpdateLicenseSpecificationsForResource": {
      "name": "UpdateLicenseSpecificationsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateLicenseSpecificationsForResourceRequest"
      },
      "output": {
        "shape": "UpdateLicenseSpecificationsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "LicenseUsageException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Adds or removes the specified license configurations for the specified AWS resource.</p> <p>You can update the license specifications of AMIs, instances, and hosts. You cannot update the license specifications for launch templates and AWS CloudFormation templates, as they send license configurations to the operation that creates the resource.</p>"
    },
    "UpdateServiceSettings": {
      "name": "UpdateServiceSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServiceSettingsRequest"
      },
      "output": {
        "shape": "UpdateServiceSettingsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ServerInternalException"
        },
        {
          "shape": "AuthorizationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "RateLimitExceededException"
        }
      ],
      "documentation": "<p>Updates License Manager settings for the current Region.</p>"
    }
  },
  "shapes": {
    "AutomatedDiscoveryInformation": {
      "type": "structure",
      "members": {
        "LastRunTime": {
          "shape": "DateTime",
          "documentation": "<p>Time that automated discovery last ran.</p>"
        }
      },
      "documentation": "<p>Describes automated discovery.</p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BoxBoolean": {
      "type": "boolean"
    },
    "BoxInteger": {
      "type": "integer"
    },
    "BoxLong": {
      "type": "long"
    },
    "ConsumedLicenseSummary": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>Resource type of the resource consuming a license.</p>"
        },
        "ConsumedLicenses": {
          "shape": "BoxLong",
          "documentation": "<p>Number of licenses consumed by the resource.</p>"
        }
      },
      "documentation": "<p>Details about license consumption.</p>"
    },
    "ConsumedLicenseSummaryList": {
      "type": "list",
      "member": {
        "shape": "ConsumedLicenseSummary"
      }
    },
    "CreateLicenseConfigurationRequest": {
      "type": "structure",
      "required": [
        "Name",
        "LicenseCountingType"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Name of the license configuration.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>Description of the license configuration.</p>"
        },
        "LicenseCountingType": {
          "shape": "LicenseCountingType",
          "documentation": "<p>Dimension used to track the license inventory.</p>"
        },
        "LicenseCount": {
          "shape": "BoxLong",
          "documentation": "<p>Number of licenses managed by the license configuration.</p>"
        },
        "LicenseCountHardLimit": {
          "shape": "BoxBoolean",
          "documentation": "<p>Indicates whether hard or soft license enforcement is used. Exceeding a hard limit blocks the launch of new instances.</p>"
        },
        "LicenseRules": {
          "shape": "StringList",
          "documentation": "<p>License rules. The syntax is #name=value (for example, #allowedTenancy=EC2-DedicatedHost). The available rules vary by dimension, as follows.</p> <ul> <li> <p> <code>Cores</code> dimension: <code>allowedTenancy</code> | <code>licenseAffinityToHost</code> | <code>maximumCores</code> | <code>minimumCores</code> </p> </li> <li> <p> <code>Instances</code> dimension: <code>allowedTenancy</code> | <code>maximumCores</code> | <code>minimumCores</code> | <code>maximumSockets</code> | <code>minimumSockets</code> | <code>maximumVcpus</code> | <code>minimumVcpus</code> </p> </li> <li> <p> <code>Sockets</code> dimension: <code>allowedTenancy</code> | <code>licenseAffinityToHost</code> | <code>maximumSockets</code> | <code>minimumSockets</code> </p> </li> <li> <p> <code>vCPUs</code> dimension: <code>allowedTenancy</code> | <code>honorVcpuOptimization</code> | <code>maximumVcpus</code> | <code>minimumVcpus</code> </p> </li> </ul> <p>The unit for <code>licenseAffinityToHost</code> is days and the range is 1 to 180. The possible values for <code>allowedTenancy</code> are <code>EC2-Default</code>, <code>EC2-DedicatedHost</code>, and <code>EC2-DedicatedInstance</code>. The possible values for <code>honorVcpuOptimization</code> are <code>True</code> and <code>False</code>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to add to the license configuration.</p>"
        },
        "ProductInformationList": {
          "shape": "ProductInformationList",
          "documentation": "<p>Product information.</p>"
        }
      }
    },
    "CreateLicenseConfigurationResponse": {
      "type": "structure",
      "members": {
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        }
      }
    },
    "DateTime": {
      "type": "timestamp"
    },
    "DeleteLicenseConfigurationRequest": {
      "type": "structure",
      "required": [
        "LicenseConfigurationArn"
      ],
      "members": {
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>ID of the license configuration.</p>"
        }
      }
    },
    "DeleteLicenseConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "Filter": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "FilterName",
          "documentation": "<p>Name of the filter. Filter names are case-sensitive.</p>"
        },
        "Values": {
          "shape": "FilterValues",
          "documentation": "<p>Filter values. Filter values are case-sensitive.</p>"
        }
      },
      "documentation": "<p>A filter name and value pair that is used to return more specific results from a describe operation. Filters can be used to match a set of resources by specific criteria, such as tags, attributes, or IDs.</p>"
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
    "GetLicenseConfigurationRequest": {
      "type": "structure",
      "required": [
        "LicenseConfigurationArn"
      ],
      "members": {
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        }
      }
    },
    "GetLicenseConfigurationResponse": {
      "type": "structure",
      "members": {
        "LicenseConfigurationId": {
          "shape": "String",
          "documentation": "<p>Unique ID for the license configuration.</p>"
        },
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>Name of the license configuration.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>Description of the license configuration.</p>"
        },
        "LicenseCountingType": {
          "shape": "LicenseCountingType",
          "documentation": "<p>Dimension on which the licenses are counted.</p>"
        },
        "LicenseRules": {
          "shape": "StringList",
          "documentation": "<p>License rules.</p>"
        },
        "LicenseCount": {
          "shape": "BoxLong",
          "documentation": "<p>Number of available licenses.</p>"
        },
        "LicenseCountHardLimit": {
          "shape": "BoxBoolean",
          "documentation": "<p>Sets the number of available licenses as a hard limit.</p>"
        },
        "ConsumedLicenses": {
          "shape": "BoxLong",
          "documentation": "<p>Number of licenses assigned to resources.</p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>License configuration status.</p>"
        },
        "OwnerAccountId": {
          "shape": "String",
          "documentation": "<p>Account ID of the owner of the license configuration.</p>"
        },
        "ConsumedLicenseSummaryList": {
          "shape": "ConsumedLicenseSummaryList",
          "documentation": "<p>Summaries of the licenses consumed by resources.</p>"
        },
        "ManagedResourceSummaryList": {
          "shape": "ManagedResourceSummaryList",
          "documentation": "<p>Summaries of the managed resources.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Tags for the license configuration.</p>"
        },
        "ProductInformationList": {
          "shape": "ProductInformationList",
          "documentation": "<p>Product information.</p>"
        },
        "AutomatedDiscoveryInformation": {
          "shape": "AutomatedDiscoveryInformation",
          "documentation": "<p>Automated discovery information.</p>"
        }
      }
    },
    "GetServiceSettingsRequest": {
      "type": "structure",
      "members": {}
    },
    "GetServiceSettingsResponse": {
      "type": "structure",
      "members": {
        "S3BucketArn": {
          "shape": "String",
          "documentation": "<p>Regional S3 bucket path for storing reports, license trail event data, discovery data, and so on.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>SNS topic configured to receive notifications from License Manager.</p>"
        },
        "OrganizationConfiguration": {
          "shape": "OrganizationConfiguration",
          "documentation": "<p>Indicates whether AWS Organizations has been integrated with License Manager for cross-account discovery.</p>"
        },
        "EnableCrossAccountsDiscovery": {
          "shape": "BoxBoolean",
          "documentation": "<p>Indicates whether cross-account discovery has been enabled.</p>"
        },
        "LicenseManagerResourceShareArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the AWS resource share. The License Manager master account will provide member accounts with access to this share.</p>"
        }
      }
    },
    "InventoryFilter": {
      "type": "structure",
      "required": [
        "Name",
        "Condition"
      ],
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Name of the filter.</p>"
        },
        "Condition": {
          "shape": "InventoryFilterCondition",
          "documentation": "<p>Condition of the filter.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>Value of the filter.</p>"
        }
      },
      "documentation": "<p>An inventory filter.</p>"
    },
    "InventoryFilterCondition": {
      "type": "string",
      "enum": [
        "EQUALS",
        "NOT_EQUALS",
        "BEGINS_WITH",
        "CONTAINS"
      ]
    },
    "InventoryFilterList": {
      "type": "list",
      "member": {
        "shape": "InventoryFilter"
      }
    },
    "LicenseConfiguration": {
      "type": "structure",
      "members": {
        "LicenseConfigurationId": {
          "shape": "String",
          "documentation": "<p>Unique ID of the license configuration.</p>"
        },
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>Name of the license configuration.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>Description of the license configuration.</p>"
        },
        "LicenseCountingType": {
          "shape": "LicenseCountingType",
          "documentation": "<p>Dimension to use to track the license inventory.</p>"
        },
        "LicenseRules": {
          "shape": "StringList",
          "documentation": "<p>License rules.</p>"
        },
        "LicenseCount": {
          "shape": "BoxLong",
          "documentation": "<p>Number of licenses managed by the license configuration.</p>"
        },
        "LicenseCountHardLimit": {
          "shape": "BoxBoolean",
          "documentation": "<p>Number of available licenses as a hard limit.</p>"
        },
        "ConsumedLicenses": {
          "shape": "BoxLong",
          "documentation": "<p>Number of licenses consumed. </p>"
        },
        "Status": {
          "shape": "String",
          "documentation": "<p>Status of the license configuration.</p>"
        },
        "OwnerAccountId": {
          "shape": "String",
          "documentation": "<p>Account ID of the license configuration's owner.</p>"
        },
        "ConsumedLicenseSummaryList": {
          "shape": "ConsumedLicenseSummaryList",
          "documentation": "<p>Summaries for licenses consumed by various resources.</p>"
        },
        "ManagedResourceSummaryList": {
          "shape": "ManagedResourceSummaryList",
          "documentation": "<p>Summaries for managed resources.</p>"
        },
        "ProductInformationList": {
          "shape": "ProductInformationList",
          "documentation": "<p>Product information.</p>"
        },
        "AutomatedDiscoveryInformation": {
          "shape": "AutomatedDiscoveryInformation",
          "documentation": "<p>Automated discovery information.</p>"
        }
      },
      "documentation": "<p>A license configuration is an abstraction of a customer license agreement that can be consumed and enforced by License Manager. Components include specifications for the license type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or all of these), host affinity (how long a VM must be associated with a host), and the number of licenses purchased and used.</p>"
    },
    "LicenseConfigurationAssociation": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the resource.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>Type of server resource.</p>"
        },
        "ResourceOwnerId": {
          "shape": "String",
          "documentation": "<p>ID of the AWS account that owns the resource consuming licenses.</p>"
        },
        "AssociationTime": {
          "shape": "DateTime",
          "documentation": "<p>Time when the license configuration was associated with the resource.</p>"
        }
      },
      "documentation": "<p>Describes an association with a license configuration.</p>"
    },
    "LicenseConfigurationAssociations": {
      "type": "list",
      "member": {
        "shape": "LicenseConfigurationAssociation"
      }
    },
    "LicenseConfigurationStatus": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "DISABLED"
      ]
    },
    "LicenseConfigurationUsage": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the resource.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>Type of resource.</p>"
        },
        "ResourceStatus": {
          "shape": "String",
          "documentation": "<p>Status of the resource.</p>"
        },
        "ResourceOwnerId": {
          "shape": "String",
          "documentation": "<p>ID of the account that owns the resource.</p>"
        },
        "AssociationTime": {
          "shape": "DateTime",
          "documentation": "<p>Time when the license configuration was initially associated with the resource.</p>"
        },
        "ConsumedLicenses": {
          "shape": "BoxLong",
          "documentation": "<p>Number of licenses consumed by the resource.</p>"
        }
      },
      "documentation": "<p>Details about the usage of a resource associated with a license configuration.</p>"
    },
    "LicenseConfigurationUsageList": {
      "type": "list",
      "member": {
        "shape": "LicenseConfigurationUsage"
      }
    },
    "LicenseConfigurations": {
      "type": "list",
      "member": {
        "shape": "LicenseConfiguration"
      }
    },
    "LicenseCountingType": {
      "type": "string",
      "enum": [
        "vCPU",
        "Instance",
        "Core",
        "Socket"
      ]
    },
    "LicenseOperationFailure": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the resource.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>Resource type.</p>"
        },
        "ErrorMessage": {
          "shape": "String",
          "documentation": "<p>Error message.</p>"
        },
        "FailureTime": {
          "shape": "DateTime",
          "documentation": "<p>Failure time.</p>"
        },
        "OperationName": {
          "shape": "String",
          "documentation": "<p>Name of the operation.</p>"
        },
        "ResourceOwnerId": {
          "shape": "String",
          "documentation": "<p>ID of the AWS account that owns the resource.</p>"
        },
        "OperationRequestedBy": {
          "shape": "String",
          "documentation": "<p>The requester is \"License Manager Automated Discovery\".</p>"
        },
        "MetadataList": {
          "shape": "MetadataList",
          "documentation": "<p>Reserved.</p>"
        }
      },
      "documentation": "<p>Describes the failure of a license operation.</p>"
    },
    "LicenseOperationFailureList": {
      "type": "list",
      "member": {
        "shape": "LicenseOperationFailure"
      }
    },
    "LicenseSpecification": {
      "type": "structure",
      "required": [
        "LicenseConfigurationArn"
      ],
      "members": {
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        }
      },
      "documentation": "<p>Details for associating a license configuration with a resource.</p>"
    },
    "LicenseSpecifications": {
      "type": "list",
      "member": {
        "shape": "LicenseSpecification"
      }
    },
    "ListAssociationsForLicenseConfigurationRequest": {
      "type": "structure",
      "required": [
        "LicenseConfigurationArn"
      ],
      "members": {
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of a license configuration.</p>"
        },
        "MaxResults": {
          "shape": "BoxInteger",
          "documentation": "<p>Maximum number of results to return in a single call.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ListAssociationsForLicenseConfigurationResponse": {
      "type": "structure",
      "members": {
        "LicenseConfigurationAssociations": {
          "shape": "LicenseConfigurationAssociations",
          "documentation": "<p>Information about the associations for the license configuration.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ListFailuresForLicenseConfigurationOperationsRequest": {
      "type": "structure",
      "required": [
        "LicenseConfigurationArn"
      ],
      "members": {
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name of the license configuration.</p>"
        },
        "MaxResults": {
          "shape": "BoxInteger",
          "documentation": "<p>Maximum number of results to return in a single call.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ListFailuresForLicenseConfigurationOperationsResponse": {
      "type": "structure",
      "members": {
        "LicenseOperationFailureList": {
          "shape": "LicenseOperationFailureList",
          "documentation": "<p>License configuration operations that failed.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ListLicenseConfigurationsRequest": {
      "type": "structure",
      "members": {
        "LicenseConfigurationArns": {
          "shape": "StringList",
          "documentation": "<p>Amazon Resource Names (ARN) of the license configurations.</p>"
        },
        "MaxResults": {
          "shape": "BoxInteger",
          "documentation": "<p>Maximum number of results to return in a single call.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>Filters to scope the results. The following filters and logical operators are supported:</p> <ul> <li> <p> <code>licenseCountingType</code> - The dimension on which licenses are counted. Possible values are <code>vCPU</code> | <code>Instance</code> | <code>Core</code> | <code>Socket</code>. Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p> </li> <li> <p> <code>enforceLicenseCount</code> - A Boolean value that indicates whether hard license enforcement is used. Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p> </li> <li> <p> <code>usagelimitExceeded</code> - A Boolean value that indicates whether the available licenses have been exceeded. Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p> </li> </ul>"
        }
      }
    },
    "ListLicenseConfigurationsResponse": {
      "type": "structure",
      "members": {
        "LicenseConfigurations": {
          "shape": "LicenseConfigurations",
          "documentation": "<p>Information about the license configurations.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ListLicenseSpecificationsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of a resource that has an associated license configuration.</p>"
        },
        "MaxResults": {
          "shape": "BoxInteger",
          "documentation": "<p>Maximum number of results to return in a single call.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ListLicenseSpecificationsForResourceResponse": {
      "type": "structure",
      "members": {
        "LicenseSpecifications": {
          "shape": "LicenseSpecifications",
          "documentation": "<p>License configurations associated with a resource.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ListResourceInventoryRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "BoxInteger",
          "documentation": "<p>Maximum number of results to return in a single call.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        },
        "Filters": {
          "shape": "InventoryFilterList",
          "documentation": "<p>Filters to scope the results. The following filters and logical operators are supported:</p> <ul> <li> <p> <code>account_id</code> - The ID of the AWS account that owns the resource. Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p> </li> <li> <p> <code>application_name</code> - The name of the application. Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p> </li> <li> <p> <code>license_included</code> - The type of license included. Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>. Possible values are <code>sql-server-enterprise</code> | <code>sql-server-standard</code> | <code>sql-server-web</code> | <code>windows-server-datacenter</code>.</p> </li> <li> <p> <code>platform</code> - The platform of the resource. Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p> </li> <li> <p> <code>resource_id</code> - The ID of the resource. Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p> </li> </ul>"
        }
      }
    },
    "ListResourceInventoryResponse": {
      "type": "structure",
      "members": {
        "ResourceInventoryList": {
          "shape": "ResourceInventoryList",
          "documentation": "<p>Information about the resources.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Information about the tags.</p>"
        }
      }
    },
    "ListUsageForLicenseConfigurationRequest": {
      "type": "structure",
      "required": [
        "LicenseConfigurationArn"
      ],
      "members": {
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        },
        "MaxResults": {
          "shape": "BoxInteger",
          "documentation": "<p>Maximum number of results to return in a single call.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>Filters to scope the results. The following filters and logical operators are supported:</p> <ul> <li> <p> <code>resourceArn</code> - The ARN of the license configuration resource. Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p> </li> <li> <p> <code>resourceType</code> - The resource type (EC2_INSTANCE | EC2_HOST | EC2_AMI | SYSTEMS_MANAGER_MANAGED_INSTANCE). Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p> </li> <li> <p> <code>resourceAccount</code> - The ID of the account that owns the resource. Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p> </li> </ul>"
        }
      }
    },
    "ListUsageForLicenseConfigurationResponse": {
      "type": "structure",
      "members": {
        "LicenseConfigurationUsageList": {
          "shape": "LicenseConfigurationUsageList",
          "documentation": "<p>Information about the license configurations.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>Token for the next set of results.</p>"
        }
      }
    },
    "ManagedResourceSummary": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>Type of resource associated with a license.</p>"
        },
        "AssociationCount": {
          "shape": "BoxLong",
          "documentation": "<p>Number of resources associated with licenses.</p>"
        }
      },
      "documentation": "<p>Summary information about a managed resource.</p>"
    },
    "ManagedResourceSummaryList": {
      "type": "list",
      "member": {
        "shape": "ManagedResourceSummary"
      }
    },
    "Metadata": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>Reserved.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>Reserved.</p>"
        }
      },
      "documentation": "<p>Reserved.</p>"
    },
    "MetadataList": {
      "type": "list",
      "member": {
        "shape": "Metadata"
      }
    },
    "OrganizationConfiguration": {
      "type": "structure",
      "required": [
        "EnableIntegration"
      ],
      "members": {
        "EnableIntegration": {
          "shape": "Boolean",
          "documentation": "<p>Enables AWS Organization integration.</p>"
        }
      },
      "documentation": "<p>Configuration information for AWS Organizations.</p>"
    },
    "ProductInformation": {
      "type": "structure",
      "required": [
        "ResourceType",
        "ProductInformationFilterList"
      ],
      "members": {
        "ResourceType": {
          "shape": "String",
          "documentation": "<p>Resource type. The possible values are <code>SSM_MANAGED</code> | <code>RDS</code>.</p>"
        },
        "ProductInformationFilterList": {
          "shape": "ProductInformationFilterList",
          "documentation": "<p>Product information filters.</p> <p>The following filters and logical operators are supported when the resource type is <code>SSM_MANAGED</code>:</p> <ul> <li> <p> <code>Application Name</code> - The name of the application. Logical operator is <code>EQUALS</code>.</p> </li> <li> <p> <code>Application Publisher</code> - The publisher of the application. Logical operator is <code>EQUALS</code>.</p> </li> <li> <p> <code>Application Version</code> - The version of the application. Logical operator is <code>EQUALS</code>.</p> </li> <li> <p> <code>Platform Name</code> - The name of the platform. Logical operator is <code>EQUALS</code>.</p> </li> <li> <p> <code>Platform Type</code> - The platform type. Logical operator is <code>EQUALS</code>.</p> </li> <li> <p> <code>License Included</code> - The type of license included. Logical operators are <code>EQUALS</code> and <code>NOT_EQUALS</code>. Possible values are: <code>sql-server-enterprise</code> | <code>sql-server-standard</code> | <code>sql-server-web</code> | <code>windows-server-datacenter</code>.</p> </li> </ul> <p>The following filters and logical operators are supported when the resource type is <code>RDS</code>:</p> <ul> <li> <p> <code>Engine Edition</code> - The edition of the database engine. Logical operator is <code>EQUALS</code>. Possible values are: <code>oracle-ee</code> | <code>oracle-se</code> | <code>oracle-se1</code> | <code>oracle-se2</code>.</p> </li> <li> <p> <code>License Pack</code> - The license pack. Logical operator is <code>EQUALS</code>. Possible values are: <code>data guard</code> | <code>diagnostic pack sqlt</code> | <code>tuning pack sqlt</code> | <code>ols</code> | <code>olap</code>.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes product information for a license configuration.</p>"
    },
    "ProductInformationFilter": {
      "type": "structure",
      "required": [
        "ProductInformationFilterName",
        "ProductInformationFilterValue",
        "ProductInformationFilterComparator"
      ],
      "members": {
        "ProductInformationFilterName": {
          "shape": "String",
          "documentation": "<p>Filter name.</p>"
        },
        "ProductInformationFilterValue": {
          "shape": "StringList",
          "documentation": "<p>Filter value.</p>"
        },
        "ProductInformationFilterComparator": {
          "shape": "String",
          "documentation": "<p>Logical operator.</p>"
        }
      },
      "documentation": "<p>Describes product information filters.</p>"
    },
    "ProductInformationFilterList": {
      "type": "list",
      "member": {
        "shape": "ProductInformationFilter"
      }
    },
    "ProductInformationList": {
      "type": "list",
      "member": {
        "shape": "ProductInformation"
      }
    },
    "ResourceInventory": {
      "type": "structure",
      "members": {
        "ResourceId": {
          "shape": "String",
          "documentation": "<p>ID of the resource.</p>"
        },
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>Type of resource.</p>"
        },
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the resource.</p>"
        },
        "Platform": {
          "shape": "String",
          "documentation": "<p>Platform of the resource.</p>"
        },
        "PlatformVersion": {
          "shape": "String",
          "documentation": "<p>Platform version of the resource in the inventory.</p>"
        },
        "ResourceOwningAccountId": {
          "shape": "String",
          "documentation": "<p>ID of the account that owns the resource.</p>"
        }
      },
      "documentation": "<p>Details about a resource.</p>"
    },
    "ResourceInventoryList": {
      "type": "list",
      "member": {
        "shape": "ResourceInventory"
      }
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "EC2_INSTANCE",
        "EC2_HOST",
        "EC2_AMI",
        "RDS",
        "SYSTEMS_MANAGER_MANAGED_INSTANCE"
      ]
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
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>Tag key.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>Tag value.</p>"
        }
      },
      "documentation": "<p>Details about a tag for a license configuration.</p>"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
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
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>One or more tags.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>Keys identifying the tags to remove.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateLicenseConfigurationRequest": {
      "type": "structure",
      "required": [
        "LicenseConfigurationArn"
      ],
      "members": {
        "LicenseConfigurationArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the license configuration.</p>"
        },
        "LicenseConfigurationStatus": {
          "shape": "LicenseConfigurationStatus",
          "documentation": "<p>New status of the license configuration.</p>"
        },
        "LicenseRules": {
          "shape": "StringList",
          "documentation": "<p>New license rule. The only rule that you can add after you create a license configuration is licenseAffinityToHost.</p>"
        },
        "LicenseCount": {
          "shape": "BoxLong",
          "documentation": "<p>New number of licenses managed by the license configuration.</p>"
        },
        "LicenseCountHardLimit": {
          "shape": "BoxBoolean",
          "documentation": "<p>New hard limit of the number of available licenses.</p>"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>New name of the license configuration.</p>"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>New description of the license configuration.</p>"
        },
        "ProductInformationList": {
          "shape": "ProductInformationList",
          "documentation": "<p>New product information.</p>"
        }
      }
    },
    "UpdateLicenseConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateLicenseSpecificationsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the AWS resource.</p>"
        },
        "AddLicenseSpecifications": {
          "shape": "LicenseSpecifications",
          "documentation": "<p>ARNs of the license configurations to add.</p>"
        },
        "RemoveLicenseSpecifications": {
          "shape": "LicenseSpecifications",
          "documentation": "<p>ARNs of the license configurations to remove.</p>"
        }
      }
    },
    "UpdateLicenseSpecificationsForResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateServiceSettingsRequest": {
      "type": "structure",
      "members": {
        "S3BucketArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored.</p>"
        },
        "SnsTopicArn": {
          "shape": "String",
          "documentation": "<p>Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts.</p>"
        },
        "OrganizationConfiguration": {
          "shape": "OrganizationConfiguration",
          "documentation": "<p>Enables integration with AWS Organizations for cross-account discovery.</p>"
        },
        "EnableCrossAccountsDiscovery": {
          "shape": "BoxBoolean",
          "documentation": "<p>Activates cross-account discovery.</p>"
        }
      }
    },
    "UpdateServiceSettingsResponse": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<fullname> AWS License Manager </fullname> <p>AWS License Manager makes it easier to manage licenses from software vendors across multiple AWS accounts and on-premises servers.</p>"
}
]===]))
