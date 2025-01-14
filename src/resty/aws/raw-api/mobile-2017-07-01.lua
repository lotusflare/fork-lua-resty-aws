local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version":"2.0",
  "metadata":{
    "apiVersion":"2017-07-01",
    "endpointPrefix":"mobile",
    "jsonVersion":"1.1",
    "protocol":"rest-json",
    "serviceFullName":"AWS Mobile",
    "serviceId":"Mobile",
    "signatureVersion":"v4",
    "signingName":"AWSMobileHubService",
    "uid":"mobile-2017-07-01"
  },
  "operations":{
    "CreateProject":{
      "name":"CreateProject",
      "http":{
        "method":"POST",
        "requestUri":"/projects"
      },
      "input":{"shape":"CreateProjectRequest"},
      "output":{"shape":"CreateProjectResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"BadRequestException"},
        {"shape":"NotFoundException"},
        {"shape":"LimitExceededException"}
      ],
      "documentation":"<p> Creates an AWS Mobile Hub project. </p>"
    },
    "DeleteProject":{
      "name":"DeleteProject",
      "http":{
        "method":"DELETE",
        "requestUri":"/projects/{projectId}"
      },
      "input":{"shape":"DeleteProjectRequest"},
      "output":{"shape":"DeleteProjectResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"NotFoundException"}
      ],
      "documentation":"<p> Delets a project in AWS Mobile Hub. </p>"
    },
    "DescribeBundle":{
      "name":"DescribeBundle",
      "http":{
        "method":"GET",
        "requestUri":"/bundles/{bundleId}"
      },
      "input":{"shape":"DescribeBundleRequest"},
      "output":{"shape":"DescribeBundleResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"BadRequestException"},
        {"shape":"NotFoundException"}
      ],
      "documentation":"<p> Get the bundle details for the requested bundle id. </p>"
    },
    "DescribeProject":{
      "name":"DescribeProject",
      "http":{
        "method":"GET",
        "requestUri":"/project"
      },
      "input":{"shape":"DescribeProjectRequest"},
      "output":{"shape":"DescribeProjectResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"BadRequestException"},
        {"shape":"NotFoundException"}
      ],
      "documentation":"<p> Gets details about a project in AWS Mobile Hub. </p>"
    },
    "ExportBundle":{
      "name":"ExportBundle",
      "http":{
        "method":"POST",
        "requestUri":"/bundles/{bundleId}"
      },
      "input":{"shape":"ExportBundleRequest"},
      "output":{"shape":"ExportBundleResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"BadRequestException"},
        {"shape":"NotFoundException"}
      ],
      "documentation":"<p> Generates customized software development kit (SDK) and or tool packages used to integrate mobile web or mobile app clients with backend AWS resources. </p>"
    },
    "ExportProject":{
      "name":"ExportProject",
      "http":{
        "method":"POST",
        "requestUri":"/exports/{projectId}"
      },
      "input":{"shape":"ExportProjectRequest"},
      "output":{"shape":"ExportProjectResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"BadRequestException"},
        {"shape":"NotFoundException"}
      ],
      "documentation":"<p> Exports project configuration to a snapshot which can be downloaded and shared. Note that mobile app push credentials are encrypted in exported projects, so they can only be shared successfully within the same AWS account. </p>"
    },
    "ListBundles":{
      "name":"ListBundles",
      "http":{
        "method":"GET",
        "requestUri":"/bundles"
      },
      "input":{"shape":"ListBundlesRequest"},
      "output":{"shape":"ListBundlesResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"BadRequestException"}
      ],
      "documentation":"<p> List all available bundles. </p>"
    },
    "ListProjects":{
      "name":"ListProjects",
      "http":{
        "method":"GET",
        "requestUri":"/projects"
      },
      "input":{"shape":"ListProjectsRequest"},
      "output":{"shape":"ListProjectsResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"BadRequestException"}
      ],
      "documentation":"<p> Lists projects in AWS Mobile Hub. </p>"
    },
    "UpdateProject":{
      "name":"UpdateProject",
      "http":{
        "method":"POST",
        "requestUri":"/update"
      },
      "input":{"shape":"UpdateProjectRequest"},
      "output":{"shape":"UpdateProjectResult"},
      "errors":[
        {"shape":"InternalFailureException"},
        {"shape":"ServiceUnavailableException"},
        {"shape":"UnauthorizedException"},
        {"shape":"TooManyRequestsException"},
        {"shape":"BadRequestException"},
        {"shape":"NotFoundException"},
        {"shape":"AccountActionRequiredException"},
        {"shape":"LimitExceededException"}
      ],
      "documentation":"<p> Update an existing project. </p>"
    }
  },
  "shapes":{
    "AccountActionRequiredException":{
      "type":"structure",
      "members":{
        "message":{"shape":"ErrorMessage"}
      },
      "documentation":"<p> Account Action is required in order to continue the request. </p>",
      "error":{"httpStatusCode":403},
      "exception":true
    },
    "AttributeKey":{
      "type":"string",
      "documentation":"<p> Key part of key-value attribute pairs. </p>"
    },
    "AttributeValue":{
      "type":"string",
      "documentation":"<p> Value part of key-value attribute pairs. </p>"
    },
    "Attributes":{
      "type":"map",
      "key":{"shape":"AttributeKey"},
      "value":{"shape":"AttributeValue"},
      "documentation":"<p> Key-value attribute pairs. </p>"
    },
    "BadRequestException":{
      "type":"structure",
      "members":{
        "message":{"shape":"ErrorMessage"}
      },
      "documentation":"<p> The request cannot be processed because some parameter is not valid or the project state prevents the operation from being performed. </p>",
      "error":{"httpStatusCode":400},
      "exception":true
    },
    "Boolean":{"type":"boolean"},
    "BundleDescription":{
      "type":"string",
      "documentation":"<p> Description of the download bundle. </p>"
    },
    "BundleDetails":{
      "type":"structure",
      "members":{
        "bundleId":{"shape":"BundleId"},
        "title":{"shape":"BundleTitle"},
        "version":{"shape":"BundleVersion"},
        "description":{"shape":"BundleDescription"},
        "iconUrl":{"shape":"IconUrl"},
        "availablePlatforms":{"shape":"Platforms"}
      },
      "documentation":"<p> The details of the bundle. </p>"
    },
    "BundleId":{
      "type":"string",
      "documentation":"<p> Unique bundle identifier. </p>"
    },
    "BundleList":{
      "type":"list",
      "member":{"shape":"BundleDetails"},
      "documentation":"<p> A list of bundles. </p>"
    },
    "BundleTitle":{
      "type":"string",
      "documentation":"<p> Title of the download bundle. </p>"
    },
    "BundleVersion":{
      "type":"string",
      "documentation":"<p> Version of the download bundle. </p>"
    },
    "ConsoleUrl":{"type":"string"},
    "Contents":{
      "type":"blob",
      "documentation":"<p> Binary file data. </p>"
    },
    "CreateProjectRequest":{
      "type":"structure",
      "members":{
        "name":{
          "shape":"ProjectName",
          "documentation":"<p> Name of the project. </p>",
          "location":"querystring",
          "locationName":"name"
        },
        "region":{
          "shape":"ProjectRegion",
          "documentation":"<p> Default region where project resources should be created. </p>",
          "location":"querystring",
          "locationName":"region"
        },
        "contents":{
          "shape":"Contents",
          "documentation":"<p> ZIP or YAML file which contains configuration settings to be used when creating the project. This may be the contents of the file downloaded from the URL provided in an export project operation. </p>"
        },
        "snapshotId":{
          "shape":"SnapshotId",
          "documentation":"<p> Unique identifier for an exported snapshot of project configuration. This snapshot identifier is included in the share URL when a project is exported. </p>",
          "location":"querystring",
          "locationName":"snapshotId"
        }
      },
      "documentation":"<p> Request structure used to request a project be created. </p>",
      "payload":"contents"
    },
    "CreateProjectResult":{
      "type":"structure",
      "members":{
        "details":{
          "shape":"ProjectDetails",
          "documentation":"<p> Detailed information about the created AWS Mobile Hub project. </p>"
        }
      },
      "documentation":"<p> Result structure used in response to a request to create a project. </p>"
    },
    "Date":{"type":"timestamp"},
    "DeleteProjectRequest":{
      "type":"structure",
      "required":["projectId"],
      "members":{
        "projectId":{
          "shape":"ProjectId",
          "documentation":"<p> Unique project identifier. </p>",
          "location":"uri",
          "locationName":"projectId"
        }
      },
      "documentation":"<p> Request structure used to request a project be deleted. </p>"
    },
    "DeleteProjectResult":{
      "type":"structure",
      "members":{
        "deletedResources":{
          "shape":"Resources",
          "documentation":"<p> Resources which were deleted. </p>"
        },
        "orphanedResources":{
          "shape":"Resources",
          "documentation":"<p> Resources which were not deleted, due to a risk of losing potentially important data or files. </p>"
        }
      },
      "documentation":"<p> Result structure used in response to request to delete a project. </p>"
    },
    "DescribeBundleRequest":{
      "type":"structure",
      "required":["bundleId"],
      "members":{
        "bundleId":{
          "shape":"BundleId",
          "documentation":"<p> Unique bundle identifier. </p>",
          "location":"uri",
          "locationName":"bundleId"
        }
      },
      "documentation":"<p> Request structure to request the details of a specific bundle. </p>"
    },
    "DescribeBundleResult":{
      "type":"structure",
      "members":{
        "details":{
          "shape":"BundleDetails",
          "documentation":"<p> The details of the bundle. </p>"
        }
      },
      "documentation":"<p> Result structure contains the details of the bundle. </p>"
    },
    "DescribeProjectRequest":{
      "type":"structure",
      "required":["projectId"],
      "members":{
        "projectId":{
          "shape":"ProjectId",
          "documentation":"<p> Unique project identifier. </p>",
          "location":"querystring",
          "locationName":"projectId"
        },
        "syncFromResources":{
          "shape":"Boolean",
          "documentation":"<p> If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project. </p>",
          "location":"querystring",
          "locationName":"syncFromResources"
        }
      },
      "documentation":"<p> Request structure used to request details about a project. </p>"
    },
    "DescribeProjectResult":{
      "type":"structure",
      "members":{
        "details":{"shape":"ProjectDetails"}
      },
      "documentation":"<p> Result structure used for requests of project details. </p>"
    },
    "DownloadUrl":{
      "type":"string",
      "documentation":"<p> The download Url. </p>"
    },
    "ErrorMessage":{
      "type":"string",
      "documentation":"<p> The Exception Error Message. </p>"
    },
    "ExportBundleRequest":{
      "type":"structure",
      "required":["bundleId"],
      "members":{
        "bundleId":{
          "shape":"BundleId",
          "documentation":"<p> Unique bundle identifier. </p>",
          "location":"uri",
          "locationName":"bundleId"
        },
        "projectId":{
          "shape":"ProjectId",
          "documentation":"<p> Unique project identifier. </p>",
          "location":"querystring",
          "locationName":"projectId"
        },
        "platform":{
          "shape":"Platform",
          "documentation":"<p> Developer desktop or target application platform. </p>",
          "location":"querystring",
          "locationName":"platform"
        }
      },
      "documentation":"<p> Request structure used to request generation of custom SDK and tool packages required to integrate mobile web or app clients with backed AWS resources. </p>"
    },
    "ExportBundleResult":{
      "type":"structure",
      "members":{
        "downloadUrl":{
          "shape":"DownloadUrl",
          "documentation":"<p> URL which contains the custom-generated SDK and tool packages used to integrate the client mobile app or web app with the AWS resources created by the AWS Mobile Hub project. </p>"
        }
      },
      "documentation":"<p> Result structure which contains link to download custom-generated SDK and tool packages used to integrate mobile web or app clients with backed AWS resources. </p>"
    },
    "ExportProjectRequest":{
      "type":"structure",
      "required":["projectId"],
      "members":{
        "projectId":{
          "shape":"ProjectId",
          "documentation":"<p> Unique project identifier. </p>",
          "location":"uri",
          "locationName":"projectId"
        }
      },
      "documentation":"<p> Request structure used in requests to export project configuration details. </p>"
    },
    "ExportProjectResult":{
      "type":"structure",
      "members":{
        "downloadUrl":{
          "shape":"DownloadUrl",
          "documentation":"<p> URL which can be used to download the exported project configuation file(s). </p>"
        },
        "shareUrl":{
          "shape":"ShareUrl",
          "documentation":"<p> URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. </p>"
        },
        "snapshotId":{
          "shape":"SnapshotId",
          "documentation":"<p> Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. </p>"
        }
      },
      "documentation":"<p> Result structure used for requests to export project configuration details. </p>"
    },
    "Feature":{
      "type":"string",
      "documentation":"<p> Identifies which feature in AWS Mobile Hub is associated with this AWS resource. </p>"
    },
    "IconUrl":{
      "type":"string",
      "documentation":"<p> Icon for the download bundle. </p>"
    },
    "InternalFailureException":{
      "type":"structure",
      "members":{
        "message":{"shape":"ErrorMessage"}
      },
      "documentation":"<p> The service has encountered an unexpected error condition which prevents it from servicing the request. </p>",
      "error":{"httpStatusCode":500},
      "exception":true,
      "fault":true
    },
    "LimitExceededException":{
      "type":"structure",
      "members":{
        "retryAfterSeconds":{
          "shape":"ErrorMessage",
          "location":"header",
          "locationName":"Retry-After"
        },
        "message":{"shape":"ErrorMessage"}
      },
      "documentation":"<p> There are too many AWS Mobile Hub projects in the account or the account has exceeded the maximum number of resources in some AWS service. You should create another sub-account using AWS Organizations or remove some resources and retry your request. </p>",
      "error":{"httpStatusCode":429},
      "exception":true
    },
    "ListBundlesRequest":{
      "type":"structure",
      "members":{
        "maxResults":{
          "shape":"MaxResults",
          "documentation":"<p> Maximum number of records to list in a single response. </p>",
          "location":"querystring",
          "locationName":"maxResults"
        },
        "nextToken":{
          "shape":"NextToken",
          "documentation":"<p> Pagination token. Set to null to start listing bundles from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more bundles. </p>",
          "location":"querystring",
          "locationName":"nextToken"
        }
      },
      "documentation":"<p> Request structure to request all available bundles. </p>"
    },
    "ListBundlesResult":{
      "type":"structure",
      "members":{
        "bundleList":{
          "shape":"BundleList",
          "documentation":"<p> A list of bundles. </p>"
        },
        "nextToken":{
          "shape":"NextToken",
          "documentation":"<p> Pagination token. If non-null pagination token is returned in a result, then pass its value in another request to fetch more entries. </p>"
        }
      },
      "documentation":"<p> Result structure contains a list of all available bundles with details. </p>"
    },
    "ListProjectsRequest":{
      "type":"structure",
      "members":{
        "maxResults":{
          "shape":"MaxResults",
          "documentation":"<p> Maximum number of records to list in a single response. </p>",
          "location":"querystring",
          "locationName":"maxResults"
        },
        "nextToken":{
          "shape":"NextToken",
          "documentation":"<p> Pagination token. Set to null to start listing projects from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more projects. </p>",
          "location":"querystring",
          "locationName":"nextToken"
        }
      },
      "documentation":"<p> Request structure used to request projects list in AWS Mobile Hub. </p>"
    },
    "ListProjectsResult":{
      "type":"structure",
      "members":{
        "projects":{"shape":"ProjectSummaries"},
        "nextToken":{"shape":"NextToken"}
      },
      "documentation":"<p> Result structure used for requests to list projects in AWS Mobile Hub. </p>"
    },
    "MaxResults":{
      "type":"integer",
      "documentation":"<p> Maximum number of records to list in a single response. </p>"
    },
    "NextToken":{
      "type":"string",
      "documentation":"<p> Pagination token. Set to null to start listing records from start. If non-null pagination token is returned in a result, then pass its value in here in another request to list more entries. </p>"
    },
    "NotFoundException":{
      "type":"structure",
      "members":{
        "message":{"shape":"ErrorMessage"}
      },
      "documentation":"<p> No entity can be found with the specified identifier. </p>",
      "error":{"httpStatusCode":404},
      "exception":true
    },
    "Platform":{
      "type":"string",
      "documentation":"<p> Developer desktop or target mobile app or website platform. </p>",
      "enum":[
        "OSX",
        "WINDOWS",
        "LINUX",
        "OBJC",
        "SWIFT",
        "ANDROID",
        "JAVASCRIPT"
      ]
    },
    "Platforms":{
      "type":"list",
      "member":{"shape":"Platform"},
      "documentation":"<p> Developer desktop or mobile app or website platforms. </p>"
    },
    "ProjectDetails":{
      "type":"structure",
      "members":{
        "name":{"shape":"ProjectName"},
        "projectId":{"shape":"ProjectId"},
        "region":{"shape":"ProjectRegion"},
        "state":{"shape":"ProjectState"},
        "createdDate":{
          "shape":"Date",
          "documentation":"<p> Date the project was created. </p>"
        },
        "lastUpdatedDate":{
          "shape":"Date",
          "documentation":"<p> Date of the last modification of the project. </p>"
        },
        "consoleUrl":{
          "shape":"ConsoleUrl",
          "documentation":"<p> Website URL for this project in the AWS Mobile Hub console. </p>"
        },
        "resources":{"shape":"Resources"}
      },
      "documentation":"<p> Detailed information about an AWS Mobile Hub project. </p>"
    },
    "ProjectId":{
      "type":"string",
      "documentation":"<p> Unique project identifier. </p>"
    },
    "ProjectName":{
      "type":"string",
      "documentation":"<p> Name of the project. </p>"
    },
    "ProjectRegion":{
      "type":"string",
      "documentation":"<p> Default region to use for AWS resource creation in the AWS Mobile Hub project. </p>"
    },
    "ProjectState":{
      "type":"string",
      "documentation":"<p> Synchronization state for a project. </p>",
      "enum":[
        "NORMAL",
        "SYNCING",
        "IMPORTING"
      ]
    },
    "ProjectSummaries":{
      "type":"list",
      "member":{"shape":"ProjectSummary"},
      "documentation":"<p> List of projects. </p>"
    },
    "ProjectSummary":{
      "type":"structure",
      "members":{
        "name":{
          "shape":"ProjectName",
          "documentation":"<p> Name of the project. </p>"
        },
        "projectId":{
          "shape":"ProjectId",
          "documentation":"<p> Unique project identifier. </p>"
        }
      },
      "documentation":"<p> Summary information about an AWS Mobile Hub project. </p>"
    },
    "Resource":{
      "type":"structure",
      "members":{
        "type":{"shape":"ResourceType"},
        "name":{"shape":"ResourceName"},
        "arn":{"shape":"ResourceArn"},
        "feature":{"shape":"Feature"},
        "attributes":{"shape":"Attributes"}
      },
      "documentation":"<p> Information about an instance of an AWS resource associated with a project. </p>"
    },
    "ResourceArn":{
      "type":"string",
      "documentation":"<p> AWS resource name which uniquely identifies the resource in AWS systems. </p>"
    },
    "ResourceName":{
      "type":"string",
      "documentation":"<p> Name of the AWS resource (e.g., for an Amazon S3 bucket this is the name of the bucket). </p>"
    },
    "ResourceType":{
      "type":"string",
      "documentation":"<p> Simplified name for type of AWS resource (e.g., bucket is an Amazon S3 bucket). </p>"
    },
    "Resources":{
      "type":"list",
      "member":{"shape":"Resource"},
      "documentation":"<p> List of AWS resources associated with a project. </p>"
    },
    "ServiceUnavailableException":{
      "type":"structure",
      "members":{
        "retryAfterSeconds":{
          "shape":"ErrorMessage",
          "location":"header",
          "locationName":"Retry-After"
        },
        "message":{"shape":"ErrorMessage"}
      },
      "documentation":"<p> The service is temporarily unavailable. The request should be retried after some time delay. </p>",
      "error":{"httpStatusCode":503},
      "exception":true,
      "fault":true
    },
    "ShareUrl":{
      "type":"string",
      "documentation":"<p> URL which can be shared to allow other AWS users to create their own project in AWS Mobile Hub with the same configuration as the specified project. This URL pertains to a snapshot in time of the project configuration that is created when this API is called. If you want to share additional changes to your project configuration, then you will need to create and share a new snapshot by calling this method again. </p>"
    },
    "SnapshotId":{
      "type":"string",
      "documentation":"<p> Unique identifier for the exported snapshot of the project configuration. This snapshot identifier is included in the share URL. </p>"
    },
    "TooManyRequestsException":{
      "type":"structure",
      "members":{
        "retryAfterSeconds":{
          "shape":"ErrorMessage",
          "location":"header",
          "locationName":"Retry-After"
        },
        "message":{"shape":"ErrorMessage"}
      },
      "documentation":"<p> Too many requests have been received for this AWS account in too short a time. The request should be retried after some time delay. </p>",
      "error":{"httpStatusCode":429},
      "exception":true
    },
    "UnauthorizedException":{
      "type":"structure",
      "members":{
        "message":{"shape":"ErrorMessage"}
      },
      "documentation":"<p> Credentials of the caller are insufficient to authorize the request. </p>",
      "error":{"httpStatusCode":401},
      "exception":true
    },
    "UpdateProjectRequest":{
      "type":"structure",
      "required":["projectId"],
      "members":{
        "contents":{
          "shape":"Contents",
          "documentation":"<p> ZIP or YAML file which contains project configuration to be updated. This should be the contents of the file downloaded from the URL provided in an export project operation. </p>"
        },
        "projectId":{
          "shape":"ProjectId",
          "documentation":"<p> Unique project identifier. </p>",
          "location":"querystring",
          "locationName":"projectId"
        }
      },
      "documentation":"<p> Request structure used for requests to update project configuration. </p>",
      "payload":"contents"
    },
    "UpdateProjectResult":{
      "type":"structure",
      "members":{
        "details":{
          "shape":"ProjectDetails",
          "documentation":"<p> Detailed information about the updated AWS Mobile Hub project. </p>"
        }
      },
      "documentation":"<p> Result structure used for requests to updated project configuration. </p>"
    }
  },
  "documentation":"<p> AWS Mobile Service provides mobile app and website developers with capabilities required to configure AWS resources and bootstrap their developer desktop projects with the necessary SDKs, constants, tools and samples to make use of those resources. </p>"
}

]===]))
