local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-01-26",
    "endpointPrefix": "tagging",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Resource Groups Tagging API",
    "serviceId": "Resource Groups Tagging API",
    "signatureVersion": "v4",
    "targetPrefix": "ResourceGroupsTaggingAPI_20170126",
    "uid": "resourcegroupstaggingapi-2017-01-26"
  },
  "operations": {
    "DescribeReportCreation": {
      "name": "DescribeReportCreation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeReportCreationInput"
      },
      "output": {
        "shape": "DescribeReportCreationOutput"
      },
      "errors": [
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Describes the status of the <code>StartReportCreation</code> operation. </p> <p>You can call this operation only from the organization's master account and from the us-east-1 Region.</p>"
    },
    "GetComplianceSummary": {
      "name": "GetComplianceSummary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetComplianceSummaryInput"
      },
      "output": {
        "shape": "GetComplianceSummaryOutput"
      },
      "errors": [
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Returns a table that shows counts of resources that are noncompliant with their tag policies.</p> <p>For more information on tag policies, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">Tag Policies</a> in the <i>AWS Organizations User Guide.</i> </p> <p>You can call this operation only from the organization's master account and from the us-east-1 Region.</p>"
    },
    "GetResources": {
      "name": "GetResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResourcesInput"
      },
      "output": {
        "shape": "GetResourcesOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottledException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "PaginationTokenExpiredException"
        }
      ],
      "documentation": "<p>Returns all the tagged or previously tagged resources that are located in the specified Region for the AWS account.</p> <p>Depending on what information you want returned, you can also specify the following:</p> <ul> <li> <p> <i>Filters</i> that specify what tags and resource types you want returned. The response includes all tags that are associated with the requested resources.</p> </li> <li> <p>Information about compliance with the account's effective tag policy. For more information on tag policies, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">Tag Policies</a> in the <i>AWS Organizations User Guide.</i> </p> </li> </ul> <note> <p>You can check the <code>PaginationToken</code> response parameter to determine if a query is complete. Queries occasionally return fewer results on a page than allowed. The <code>PaginationToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display. </p> </note>"
    },
    "GetTagKeys": {
      "name": "GetTagKeys",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTagKeysInput"
      },
      "output": {
        "shape": "GetTagKeysOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottledException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "PaginationTokenExpiredException"
        }
      ],
      "documentation": "<p>Returns all tag keys in the specified Region for the AWS account.</p>"
    },
    "GetTagValues": {
      "name": "GetTagValues",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTagValuesInput"
      },
      "output": {
        "shape": "GetTagValuesOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottledException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "PaginationTokenExpiredException"
        }
      ],
      "documentation": "<p>Returns all tag values for the specified key in the specified Region for the AWS account.</p>"
    },
    "StartReportCreation": {
      "name": "StartReportCreation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartReportCreationInput"
      },
      "output": {
        "shape": "StartReportCreationOutput"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottledException"
        }
      ],
      "documentation": "<p>Generates a report that lists all tagged resources in accounts across your organization and tells whether each resource is compliant with the effective tag policy. Compliance data is refreshed daily. </p> <p>The generated report is saved to the following location:</p> <p> <code>s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv</code> </p> <p>You can call this operation only from the organization's master account and from the us-east-1 Region.</p>"
    },
    "TagResources": {
      "name": "TagResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourcesInput"
      },
      "output": {
        "shape": "TagResourcesOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottledException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Applies one or more tags to the specified resources. Note the following:</p> <ul> <li> <p>Not all resources can have tags. For a list of services that support tagging, see <a href=\"http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html\">this list</a>.</p> </li> <li> <p>Each resource can have up to 50 tags. For other limits, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions\">Tag Naming and Usage Conventions</a> in the <i>AWS General Reference.</i> </p> </li> <li> <p>You can only tag resources that are located in the specified Region for the AWS account.</p> </li> <li> <p>To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see <a href=\"http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html\">this list</a>.</p> </li> </ul> <important> <p>Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data.</p> </important>"
    },
    "UntagResources": {
      "name": "UntagResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourcesInput"
      },
      "output": {
        "shape": "UntagResourcesOutput"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ThrottledException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from a resource that were already removed. Note the following:</p> <ul> <li> <p>To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, see <a href=\"http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html\">this list</a>.</p> </li> <li> <p>You can only tag resources that are located in the specified Region for the AWS account.</p> </li> </ul>"
    }
  },
  "shapes": {
    "AmazonResourceType": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "[\\s\\S]*"
    },
    "ComplianceDetails": {
      "type": "structure",
      "members": {
        "NoncompliantKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>These tag keys on the resource are noncompliant with the effective tag policy.</p>"
        },
        "KeysWithNoncompliantValues": {
          "shape": "TagKeyList",
          "documentation": "<p>These are keys defined in the effective policy that are on the resource with either incorrect case treatment or noncompliant values. </p>"
        },
        "ComplianceStatus": {
          "shape": "ComplianceStatus",
          "documentation": "<p>Whether a resource is compliant with the effective tag policy.</p>"
        }
      },
      "documentation": "<p>Information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.</p>"
    },
    "ComplianceStatus": {
      "type": "boolean"
    },
    "DescribeReportCreationInput": {
      "type": "structure",
      "members": {}
    },
    "DescribeReportCreationOutput": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "Status",
          "documentation": "<p>Reports the status of the operation.</p> <p>The operation status can be one of the following:</p> <ul> <li> <p> <code>RUNNING</code> - Report creation is in progress.</p> </li> <li> <p> <code>SUCCEEDED</code> - Report creation is complete. You can open the report from the Amazon S3 bucket that you specified when you ran <code>StartReportCreation</code>.</p> </li> <li> <p> <code>FAILED</code> - Report creation timed out or the Amazon S3 bucket is not accessible. </p> </li> <li> <p> <code>NO REPORT</code> - No report was generated in the last 90 days.</p> </li> </ul>"
        },
        "S3Location": {
          "shape": "S3Location",
          "documentation": "<p>The path to the Amazon S3 bucket where the report was stored on creation.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>Details of the common errors that all operations return.</p>"
        }
      }
    },
    "ErrorCode": {
      "type": "string",
      "enum": [
        "InternalServiceException",
        "InvalidParameterException"
      ]
    },
    "ErrorMessage": {
      "type": "string"
    },
    "ExcludeCompliantResources": {
      "type": "boolean"
    },
    "FailedResourcesMap": {
      "type": "map",
      "key": {
        "shape": "ResourceARN"
      },
      "value": {
        "shape": "FailureInfo"
      }
    },
    "FailureInfo": {
      "type": "structure",
      "members": {
        "StatusCode": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status code of the common error.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The code of the common error. Valid values include <code>InternalServiceException</code>, <code>InvalidParameterException</code>, and any valid error code returned by the AWS service that hosts the resource that you want to tag.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The message of the common error.</p>"
        }
      },
      "documentation": "<p>Information about the errors that are returned for each failed resource. This information can include <code>InternalServiceException</code> and <code>InvalidParameterException</code> errors. It can also include any valid error code returned by the AWS service that hosts the resource that the ARN key represents.</p> <p>The following are common error codes that you might receive from other AWS services:</p> <ul> <li> <p> <b>InternalServiceException</b> – This can mean that the Resource Groups Tagging API didn't receive a response from another AWS service. It can also mean the the resource type in the request is not supported by the Resource Groups Tagging API. In these cases, it's safe to retry the request and then call <a href=\"http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html\">GetResources</a> to verify the changes.</p> </li> <li> <p> <b>AccessDeniedException</b> – This can mean that you need permission to calling tagging operations in the AWS service that contains the resource. For example, to use the Resource Groups Tagging API to tag a CloudWatch alarm resource, you need permission to call <a href=\"http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_TagResources.html\"> <code>TagResources</code> </a> <i>and</i> <a href=\"http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html\"> <code>TagResource</code> </a> in the CloudWatch API. </p> </li> </ul> <p>For more information on errors that are generated from other AWS services, see the documentation for that service. </p>"
    },
    "GetComplianceSummaryInput": {
      "type": "structure",
      "members": {
        "TargetIdFilters": {
          "shape": "TargetIdFilterList",
          "documentation": "<p>The target identifiers (usually, specific account IDs) to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources with the specified target IDs.</p>"
        },
        "RegionFilters": {
          "shape": "RegionFilterList",
          "documentation": "<p>A list of Regions to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources in the specified Regions.</p>"
        },
        "ResourceTypeFilters": {
          "shape": "ResourceTypeFilterList",
          "documentation": "<p>The constraints on the resources that you want returned. The format of each resource type is <code>service[:resourceType]</code>. For example, specifying a resource type of <code>ec2</code> returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of <code>ec2:instance</code> returns only EC2 instances. </p> <p>The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the <i>AWS General Reference</i> for the following:</p> <ul> <li> <p>For a list of service name strings, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">AWS Service Namespaces</a>.</p> </li> <li> <p>For resource type strings, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax\">Example ARNs</a>.</p> </li> <li> <p>For more information about ARNs, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p> </li> </ul> <p>You can specify multiple resource types by using an array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter. </p>"
        },
        "TagKeyFilters": {
          "shape": "TagKeyFilterList",
          "documentation": "<p>A list of tag keys to limit the output by. If you use this parameter, the count of returned noncompliant resources includes only resources that have the specified tag keys.</p>"
        },
        "GroupBy": {
          "shape": "GroupBy",
          "documentation": "<p>A list of attributes to group the counts of noncompliant resources by. If supplied, the counts are sorted by those attributes.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsGetComplianceSummary",
          "documentation": "<p>A limit that restricts the number of results that are returned per page.</p>"
        },
        "PaginationToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a <code>PaginationToken</code>, use that string for this value to request an additional page of data.</p>"
        }
      }
    },
    "GetComplianceSummaryOutput": {
      "type": "structure",
      "members": {
        "SummaryList": {
          "shape": "SummaryList",
          "documentation": "<p>A table that shows counts of noncompliant resources.</p>"
        },
        "PaginationToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the <code>PaginationToken</code> value in a subsequent request.</p>"
        }
      }
    },
    "GetResourcesInput": {
      "type": "structure",
      "members": {
        "PaginationToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a <code>PaginationToken</code>, use that string for this value to request an additional page of data.</p>"
        },
        "TagFilters": {
          "shape": "TagFilterList",
          "documentation": "<p>A list of TagFilters (keys and values). Each TagFilter specified must contain a key with values as optional. A request can include up to 50 keys, and each key can include up to 20 values. </p> <p>Note the following when deciding how to use TagFilters:</p> <ul> <li> <p>If you <i>do</i> specify a TagFilter, the response returns only those resources that are currently associated with the specified tag. </p> </li> <li> <p>If you <i>don't</i> specify a TagFilter, the response includes all resources that were ever associated with tags. Resources that currently don't have associated tags are shown with an empty tag set, like this: <code>\"Tags\": []</code>.</p> </li> <li> <p>If you specify more than one filter in a single request, the response returns only those resources that satisfy all specified filters.</p> </li> <li> <p>If you specify a filter that contains more than one value for a key, the response returns resources that match any of the specified values for that key.</p> </li> <li> <p>If you don't specify any values for a key, the response returns resources that are tagged with that key irrespective of the value.</p> <p>For example, for filters: filter1 = {key1, {value1}}, filter2 = {key2, {value2,value3,value4}} , filter3 = {key3}:</p> <ul> <li> <p>GetResources( {filter1} ) returns resources tagged with key1=value1</p> </li> <li> <p>GetResources( {filter2} ) returns resources tagged with key2=value2 or key2=value3 or key2=value4</p> </li> <li> <p>GetResources( {filter3} ) returns resources tagged with any tag containing key3 as its tag key, irrespective of its value</p> </li> <li> <p>GetResources( {filter1,filter2,filter3} ) returns resources tagged with ( key1=value1) and ( key2=value2 or key2=value3 or key2=value4) and (key3, irrespective of the value)</p> </li> </ul> </li> </ul>"
        },
        "ResourcesPerPage": {
          "shape": "ResourcesPerPage",
          "documentation": "<p>A limit that restricts the number of resources returned by GetResources in paginated output. You can set ResourcesPerPage to a minimum of 1 item and the maximum of 100 items. </p>"
        },
        "TagsPerPage": {
          "shape": "TagsPerPage",
          "documentation": "<p>AWS recommends using <code>ResourcesPerPage</code> instead of this parameter.</p> <p>A limit that restricts the number of tags (key and value pairs) returned by GetResources in paginated output. A resource with no tags is counted as having one tag (one key and value pair).</p> <p> <code>GetResources</code> does not split a resource and its associated tags across pages. If the specified <code>TagsPerPage</code> would cause such a break, a <code>PaginationToken</code> is returned in place of the affected resource and its tags. Use that token in another request to get the remaining data. For example, if you specify a <code>TagsPerPage</code> of <code>100</code> and the account has 22 resources with 10 tags each (meaning that each resource has 10 key and value pairs), the output will consist of three pages. The first page displays the first 10 resources, each with its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The third page displays the remaining 2 resources, each with its 10 tags.</p> <p>You can set <code>TagsPerPage</code> to a minimum of 100 items and the maximum of 500 items.</p>"
        },
        "ResourceTypeFilters": {
          "shape": "ResourceTypeFilterList",
          "documentation": "<p>The constraints on the resources that you want returned. The format of each resource type is <code>service[:resourceType]</code>. For example, specifying a resource type of <code>ec2</code> returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of <code>ec2:instance</code> returns only EC2 instances. </p> <p>The string for each service name and resource type is the same as that embedded in a resource's Amazon Resource Name (ARN). Consult the <i>AWS General Reference</i> for the following:</p> <ul> <li> <p>For a list of service name strings, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">AWS Service Namespaces</a>.</p> </li> <li> <p>For resource type strings, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax\">Example ARNs</a>.</p> </li> <li> <p>For more information about ARNs, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a>.</p> </li> </ul> <p>You can specify multiple resource types by using an array. The array can include up to 100 items. Note that the length constraint requirement applies to each resource type filter. </p>"
        },
        "IncludeComplianceDetails": {
          "shape": "IncludeComplianceDetails",
          "documentation": "<p>Specifies whether to include details regarding the compliance with the effective tag policy. Set this to <code>true</code> to determine whether resources are compliant with the tag policy and to get details.</p>"
        },
        "ExcludeCompliantResources": {
          "shape": "ExcludeCompliantResources",
          "documentation": "<p>Specifies whether to exclude resources that are compliant with the tag policy. Set this to <code>true</code> if you are interested in retrieving information on noncompliant resources only.</p> <p>You can use this parameter only if the <code>IncludeComplianceDetails</code> parameter is also set to <code>true</code>.</p>"
        }
      }
    },
    "GetResourcesOutput": {
      "type": "structure",
      "members": {
        "PaginationToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the <code>PaginationToken</code> value in a subsequent request.</p>"
        },
        "ResourceTagMappingList": {
          "shape": "ResourceTagMappingList",
          "documentation": "<p>A list of resource ARNs and the tags (keys and values) associated with each.</p>"
        }
      }
    },
    "GetTagKeysInput": {
      "type": "structure",
      "members": {
        "PaginationToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a <code>PaginationToken</code>, use that string for this value to request an additional page of data.</p>"
        }
      }
    },
    "GetTagKeysOutput": {
      "type": "structure",
      "members": {
        "PaginationToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the <code>PaginationToken</code> value in a subsequent request.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of all tag keys in the AWS account.</p>"
        }
      }
    },
    "GetTagValuesInput": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "PaginationToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A string that indicates that additional data is available. Leave this value empty for your initial request. If the response includes a <code>PaginationToken</code>, use that string for this value to request an additional page of data.</p>"
        },
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key for which you want to list all existing values in the specified Region for the AWS account.</p>"
        }
      }
    },
    "GetTagValuesOutput": {
      "type": "structure",
      "members": {
        "PaginationToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A string that indicates that the response contains more data than can be returned in a single response. To receive additional data, specify this string for the <code>PaginationToken</code> value in a subsequent request.</p>"
        },
        "TagValues": {
          "shape": "TagValuesOutputList",
          "documentation": "<p>A list of all tag values for the specified key in the AWS account.</p>"
        }
      }
    },
    "GroupBy": {
      "type": "list",
      "member": {
        "shape": "GroupByAttribute"
      }
    },
    "GroupByAttribute": {
      "type": "string",
      "enum": [
        "TARGET_ID",
        "REGION",
        "RESOURCE_TYPE"
      ]
    },
    "IncludeComplianceDetails": {
      "type": "boolean"
    },
    "LastUpdated": {
      "type": "string"
    },
    "MaxResultsGetComplianceSummary": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "NonCompliantResources": {
      "type": "long"
    },
    "PaginationToken": {
      "type": "string",
      "max": 2048,
      "min": 0,
      "pattern": "[\\s\\S]*"
    },
    "Region": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\s\\S]*"
    },
    "RegionFilterList": {
      "type": "list",
      "member": {
        "shape": "Region"
      },
      "max": 100,
      "min": 1
    },
    "ResourceARN": {
      "type": "string",
      "max": 1011,
      "min": 1,
      "pattern": "[\\s\\S]*"
    },
    "ResourceARNList": {
      "type": "list",
      "member": {
        "shape": "ResourceARN"
      },
      "max": 20,
      "min": 1
    },
    "ResourceTagMapping": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the resource.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags that have been applied to one or more AWS resources.</p>"
        },
        "ComplianceDetails": {
          "shape": "ComplianceDetails",
          "documentation": "<p>Information that shows whether a resource is compliant with the effective tag policy, including details on any noncompliant tag keys.</p>"
        }
      },
      "documentation": "<p>A list of resource ARNs and the tags (keys and values) that are associated with each.</p>"
    },
    "ResourceTagMappingList": {
      "type": "list",
      "member": {
        "shape": "ResourceTagMapping"
      }
    },
    "ResourceTypeFilterList": {
      "type": "list",
      "member": {
        "shape": "AmazonResourceType"
      }
    },
    "ResourcesPerPage": {
      "type": "integer"
    },
    "S3Bucket": {
      "type": "string",
      "max": 63,
      "min": 3,
      "pattern": "[a-z0-9.-]*"
    },
    "S3Location": {
      "type": "string"
    },
    "StartReportCreationInput": {
      "type": "structure",
      "required": [
        "S3Bucket"
      ],
      "members": {
        "S3Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>The name of the Amazon S3 bucket where the report will be stored; for example:</p> <p> <code>awsexamplebucket</code> </p> <p>For more information on S3 bucket requirements, including an example bucket policy, see the example S3 bucket policy on this page.</p>"
        }
      }
    },
    "StartReportCreationOutput": {
      "type": "structure",
      "members": {}
    },
    "Status": {
      "type": "string"
    },
    "StatusCode": {
      "type": "integer"
    },
    "Summary": {
      "type": "structure",
      "members": {
        "LastUpdated": {
          "shape": "LastUpdated",
          "documentation": "<p>The timestamp that shows when this summary was generated in this Region. </p>"
        },
        "TargetId": {
          "shape": "TargetId",
          "documentation": "<p>The account identifier or the root identifier of the organization. If you don't know the root ID, you can call the AWS Organizations <a href=\"http://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html\">ListRoots</a> API.</p>"
        },
        "TargetIdType": {
          "shape": "TargetIdType",
          "documentation": "<p>Whether the target is an account, an OU, or the organization root.</p>"
        },
        "Region": {
          "shape": "Region",
          "documentation": "<p>The AWS Region that the summary applies to.</p>"
        },
        "ResourceType": {
          "shape": "AmazonResourceType",
          "documentation": "<p>The AWS resource type.</p>"
        },
        "NonCompliantResources": {
          "shape": "NonCompliantResources",
          "documentation": "<p>The count of noncompliant resources.</p>"
        }
      },
      "documentation": "<p>A count of noncompliant resources.</p>"
    },
    "SummaryList": {
      "type": "list",
      "member": {
        "shape": "Summary"
      }
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
          "documentation": "<p>One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>One part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.</p>"
        }
      },
      "documentation": "<p>The metadata that you apply to AWS resources to help you categorize and organize them. Each tag consists of a key and a value, both of which you define. For more information, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_tagging.html\">Tagging AWS Resources</a> in the <i>AWS General Reference</i>.</p>"
    },
    "TagFilter": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>One part of a key-value pair that makes up a tag. A key is a general label that acts like a category for more specific tag values.</p>"
        },
        "Values": {
          "shape": "TagValueList",
          "documentation": "<p>One part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key). The value can be empty or null.</p>"
        }
      },
      "documentation": "<p>A list of tags (keys and values) that are used to specify the associated resources.</p>"
    },
    "TagFilterList": {
      "type": "list",
      "member": {
        "shape": "TagFilter"
      },
      "max": 50,
      "min": 0
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\s\\S]*"
    },
    "TagKeyFilterList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagKeyListForUntag": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 1
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
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
    "TagResourcesInput": {
      "type": "structure",
      "required": [
        "ResourceARNList",
        "Tags"
      ],
      "members": {
        "ResourceARNList": {
          "shape": "ResourceARNList",
          "documentation": "<p>A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags that you want to add to the specified resources. A tag consists of a key and a value that you define.</p>"
        }
      }
    },
    "TagResourcesOutput": {
      "type": "structure",
      "members": {
        "FailedResourcesMap": {
          "shape": "FailedResourcesMap",
          "documentation": "<p>A map containing a key-value pair for each failed item that couldn't be tagged. The key is the ARN of the failed resource. The value is a <code>FailureInfo</code> object that contains an error code, a status code, and an error message. If there are no errors, the <code>FailedResourcesMap</code> is empty.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "[\\s\\S]*"
    },
    "TagValueList": {
      "type": "list",
      "member": {
        "shape": "TagValue"
      },
      "max": 20,
      "min": 0
    },
    "TagValuesOutputList": {
      "type": "list",
      "member": {
        "shape": "TagValue"
      }
    },
    "TagsPerPage": {
      "type": "integer"
    },
    "TargetId": {
      "type": "string",
      "max": 68,
      "min": 6,
      "pattern": "[a-zA-Z0-9-]*"
    },
    "TargetIdFilterList": {
      "type": "list",
      "member": {
        "shape": "TargetId"
      },
      "max": 100,
      "min": 1
    },
    "TargetIdType": {
      "type": "string",
      "enum": [
        "ACCOUNT",
        "OU",
        "ROOT"
      ]
    },
    "UntagResourcesInput": {
      "type": "structure",
      "required": [
        "ResourceARNList",
        "TagKeys"
      ],
      "members": {
        "ResourceARNList": {
          "shape": "ResourceARNList",
          "documentation": "<p>A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a resource. For more information, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyListForUntag",
          "documentation": "<p>A list of the tag keys that you want to remove from the specified resources.</p>"
        }
      }
    },
    "UntagResourcesOutput": {
      "type": "structure",
      "members": {
        "FailedResourcesMap": {
          "shape": "FailedResourcesMap",
          "documentation": "<p>Details of resources that could not be untagged. An error code, status code, and error message are returned for each failed item. </p>"
        }
      }
    }
  },
  "documentation": "<fullname>Resource Groups Tagging API</fullname> <p>This guide describes the API operations for the resource groups tagging.</p> <p>A tag is a label that you assign to an AWS resource. A tag consists of a key and a value, both of which you define. For example, if you have two Amazon EC2 instances, you might assign both a tag key of \"Stack.\" But the value of \"Stack\" might be \"Testing\" for one and \"Production\" for the other.</p> <important> <p>Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be used for private or sensitive data.</p> </important> <p>Tagging can help you organize your resources and enables you to simplify resource management, access management and cost allocation. </p> <p>You can use the resource groups tagging API operations to complete the following tasks:</p> <ul> <li> <p>Tag and untag supported resources located in the specified Region for the AWS account.</p> </li> <li> <p>Use tag-based filters to search for resources located in the specified Region for the AWS account.</p> </li> <li> <p>List all existing tag keys in the specified Region for the AWS account.</p> </li> <li> <p>List all existing values for the specified key in the specified Region for the AWS account.</p> </li> </ul> <p>To use resource groups tagging API operations, you must add the following permissions to your IAM policy:</p> <ul> <li> <p> <code>tag:GetResources</code> </p> </li> <li> <p> <code>tag:TagResources</code> </p> </li> <li> <p> <code>tag:UntagResources</code> </p> </li> <li> <p> <code>tag:GetTagKeys</code> </p> </li> <li> <p> <code>tag:GetTagValues</code> </p> </li> </ul> <p>You'll also need permissions to access the resources of individual services so that you can tag and untag those resources.</p> <p>For more information on IAM policies, see <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage.html\">Managing IAM Policies</a> in the <i>IAM User Guide</i>.</p> <p> <i> <b>Services that support the Resource Groups Tagging API</b> </i> </p> <p>You can use the Resource Groups Tagging API to tag resources for the following AWS services.</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/a4b\">Alexa for Business (a4b)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/apigateway\">API Gateway</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/appstream2\">Amazon AppStream</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/appsync\">AWS AppSync</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/app-mesh\">AWS App Mesh</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/athena\">Amazon Athena</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide\">Amazon Aurora</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/aws-backup\">AWS Backup</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/acm\">AWS Certificate Manager</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/acm\">AWS Certificate Manager Private CA</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/clouddirectory\">Amazon Cloud Directory</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloud-map\">AWS Cloud Map</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloudformation\">AWS CloudFormation</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloudfront\">Amazon CloudFront</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloudhsm\">AWS CloudHSM</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloudtrail\">AWS CloudTrail</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloudwatch\">Amazon CloudWatch (alarms only)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloudwatch/?id=docs_gateway#amazon-cloudwatch-events\">Amazon CloudWatch Events</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloudwatch/?id=docs_gateway#amazon-cloudwatch-logs\">Amazon CloudWatch Logs</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cloudwatch\">Amazon Cloudwatch Synthetics</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/codebuild\">AWS CodeBuild</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/codecommit\">AWS CodeCommit</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/codepipeline\">AWS CodePipeline</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/codestar\">AWS CodeStar</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/codestar-connections/latest/APIReference/\">AWS CodeStar Connections</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cognito\">Amazon Cognito Identity</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/cognito\">Amazon Cognito User Pools</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/comprehend\">Amazon Comprehend</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/config\">AWS Config</a> </p> </li> <li> <p> <a href=\"http://aws.amazon.com/connect/resources/?whats-new-cards#Documentation\">Amazon Connect</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/data-exchange\">AWS Data Exchange</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/data-pipeline\">AWS Data Pipeline</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/dms\">AWS Database Migration Service</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/datasync\">AWS DataSync</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/devicefarm\">AWS Device Farm</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/directconnect\">AWS Direct Connect</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/directory-service\">AWS Directory Service</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/dynamodb\">Amazon DynamoDB</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/ebs\">Amazon EBS</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/ec2\">Amazon EC2</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/imagebuilder\">EC2 Image Builder</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/ecr\">Amazon ECR</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/ecs\">Amazon ECS</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/eks\">Amazon EKS</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/elastic-beanstalk\">AWS Elastic Beanstalk</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/efs\">Amazon Elastic File System</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/elasticloadbalancing\">Elastic Load Balancing</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/elasticache\">Amazon ElastiCache</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/elasticsearch-service\">Amazon Elasticsearch Service</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/medialive\">AWS Elemental MediaLive</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/mediapackage\">AWS Elemental MediaPackage</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/mediapackage\">AWS Elemental MediaPackage VoD</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/mediatailor\">AWS Elemental MediaTailor</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/emr\">Amazon EMR</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/eventbridge\">Amazon EventBridge Schema</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/firewall-manager\">AWS Firewall Manager</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/fsx\">Amazon FSx</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/s3/?id=docs_gateway#amazon-s3-glacier\">Amazon S3 Glacier</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/global-accelerator\">AWS Global Accelerator</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/ground-station\">AWS Ground Station</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/glue\">AWS Glue</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/guardduty\">Amazon GuardDuty</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/inspector\">Amazon Inspector</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/iotanalytics\">AWS IoT Analytics</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/iot\">AWS IoT Core</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/iot-device-defender\">AWS IoT Device Defender</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/iot-device-management\">AWS IoT Device Management</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/iotevents\">AWS IoT Events</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/greengrass\">AWS IoT Greengrass</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/iot-1-click\">AWS IoT 1-Click</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/iot-sitewise\">AWS IoT Sitewise</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/thingsgraph\">AWS IoT Things Graph</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/kendra\">Amazon Kendra</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/kms\">AWS Key Management Service</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/kinesis\">Amazon Kinesis</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/kinesis/?id=docs_gateway#amazon-kinesis-data-analytics\">Amazon Kinesis Data Analytics</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/kinesis/?id=docs_gateway#amazon-kinesis-data-firehose\">Amazon Kinesis Data Firehose</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/lambda\">AWS Lambda</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/lex\">Amazon Lex</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/license-manager\">AWS License Manager</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/macie\">Amazon Macie</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/machine-learning\">Amazon Machine Learning</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/amazon-mq\">Amazon MQ</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/msk\">Amazon MSK</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/neptune\">Amazon Neptune</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/opsworks\">AWS OpsWorks</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/opsworks\">AWS OpsWorks CM</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/organizations\">AWS Organizations</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/pinpoint\">Amazon Pinpoint</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/qldb\">Amazon Quantum Ledger Database (QLDB)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/rds\">Amazon RDS</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/redshift\">Amazon Redshift</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/ram\">AWS Resource Access Manager</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/ARG\">AWS Resource Groups</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/robomaker\">AWS RoboMaker</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/route53\">Amazon Route 53</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/route53\">Amazon Route 53 Resolver</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/s3\">Amazon S3 (buckets only)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/sagemaker\">Amazon SageMaker</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/savingsplans\">Savings Plans</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/secretsmanager\">AWS Secrets Manager</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/securityhub\">AWS Security Hub</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/servicecatalog\">AWS Service Catalog</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/ses\">Amazon Simple Email Service (SES)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/sns\">Amazon Simple Notification Service (SNS)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/sqs\">Amazon Simple Queue Service (SQS)</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/swf\">Amazon Simple Workflow Service</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/step-functions\">AWS Step Functions</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/storagegateway\">AWS Storage Gateway</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/systems-manager\">AWS Systems Manager</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/transfer\">AWS Transfer for SFTP</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/vpc\">Amazon VPC</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/waf\">AWS WAFv2</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/waf\">AWS WAF Regional</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/worklink\">Amazon WorkLink</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/workspaces\">Amazon WorkSpaces</a> </p> </li> </ul>"
}
]===]))
