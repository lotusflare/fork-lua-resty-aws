local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2017-09-08",
    "endpointPrefix": "serverlessrepo",
    "signingName": "serverlessrepo",
    "serviceFullName": "AWSServerlessApplicationRepository",
    "serviceId": "ServerlessApplicationRepository",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "serverlessrepo-2017-09-08",
    "signatureVersion": "v4"
  },
  "operations": {
    "CreateApplication": {
      "name": "CreateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/applications",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateApplicationRequest"
      },
      "output": {
        "shape": "CreateApplicationResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Creates an application, optionally including an AWS SAM file to create the first application version in the same call.</p>"
    },
    "CreateApplicationVersion": {
      "name": "CreateApplicationVersion",
      "http": {
        "method": "PUT",
        "requestUri": "/applications/{applicationId}/versions/{semanticVersion}",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateApplicationVersionRequest"
      },
      "output": {
        "shape": "CreateApplicationVersionResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Creates an application version.</p>"
    },
    "CreateCloudFormationChangeSet": {
      "name": "CreateCloudFormationChangeSet",
      "http": {
        "method": "POST",
        "requestUri": "/applications/{applicationId}/changesets",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateCloudFormationChangeSetRequest"
      },
      "output": {
        "shape": "CreateCloudFormationChangeSetResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Creates an AWS CloudFormation change set for the given application.</p>"
    },
    "CreateCloudFormationTemplate": {
      "name": "CreateCloudFormationTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/applications/{applicationId}/templates",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateCloudFormationTemplateRequest"
      },
      "output": {
        "shape": "CreateCloudFormationTemplateResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Creates an AWS CloudFormation template.</p>"
    },
    "DeleteApplication": {
      "name": "DeleteApplication",
      "http": {
        "method": "DELETE",
        "requestUri": "/applications/{applicationId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteApplicationRequest"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        },
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Deletes the specified application.</p>"
    },
    "GetApplication": {
      "name": "GetApplication",
      "http": {
        "method": "GET",
        "requestUri": "/applications/{applicationId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetApplicationRequest"
      },
      "output": {
        "shape": "GetApplicationResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Gets the specified application.</p>"
    },
    "GetApplicationPolicy": {
      "name": "GetApplicationPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/applications/{applicationId}/policy",
        "responseCode": 200
      },
      "input": {
        "shape": "GetApplicationPolicyRequest"
      },
      "output": {
        "shape": "GetApplicationPolicyResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Retrieves the policy for the application.</p>"
    },
    "GetCloudFormationTemplate": {
      "name": "GetCloudFormationTemplate",
      "http": {
        "method": "GET",
        "requestUri": "/applications/{applicationId}/templates/{templateId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetCloudFormationTemplateRequest"
      },
      "output": {
        "shape": "GetCloudFormationTemplateResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Gets the specified AWS CloudFormation template.</p>"
    },
    "ListApplicationDependencies": {
      "name": "ListApplicationDependencies",
      "http": {
        "method": "GET",
        "requestUri": "/applications/{applicationId}/dependencies",
        "responseCode": 200
      },
      "input": {
        "shape": "ListApplicationDependenciesRequest"
      },
      "output": {
        "shape": "ListApplicationDependenciesResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Retrieves the list of applications nested in the containing application.</p>"
    },
    "ListApplicationVersions": {
      "name": "ListApplicationVersions",
      "http": {
        "method": "GET",
        "requestUri": "/applications/{applicationId}/versions",
        "responseCode": 200
      },
      "input": {
        "shape": "ListApplicationVersionsRequest"
      },
      "output": {
        "shape": "ListApplicationVersionsResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Lists versions for the specified application.</p>"
    },
    "ListApplications": {
      "name": "ListApplications",
      "http": {
        "method": "GET",
        "requestUri": "/applications",
        "responseCode": 200
      },
      "input": {
        "shape": "ListApplicationsRequest"
      },
      "output": {
        "shape": "ListApplicationsResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Lists applications owned by the requester.</p>"
    },
    "PutApplicationPolicy": {
      "name": "PutApplicationPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/applications/{applicationId}/policy",
        "responseCode": 200
      },
      "input": {
        "shape": "PutApplicationPolicyRequest"
      },
      "output": {
        "shape": "PutApplicationPolicyResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Sets the permission policy for an application. For the list of actions supported for this operation, see\n <a href=\"https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions\">Application \n Permissions</a>\n .</p>"
    },
    "UnshareApplication": {
      "name": "UnshareApplication",
      "http": {
        "method": "POST",
        "requestUri": "/applications/{applicationId}/unshare",
        "responseCode": 204
      },
      "input": {
        "shape": "UnshareApplicationRequest"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        }
      ],
      "documentation": "<p>Unshares an application from an AWS Organization.</p><p>This operation can be called only from the organization's master account.</p>"
    },
    "UpdateApplication": {
      "name": "UpdateApplication",
      "http": {
        "method": "PATCH",
        "requestUri": "/applications/{applicationId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateApplicationRequest"
      },
      "output": {
        "shape": "UpdateApplicationResponse",
        "documentation": "<p>Success</p>"
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "<p>One of the parameters in the request is invalid.</p>"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "<p>The AWS Serverless Application Repository service encountered an internal error.</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>The client is not authenticated.</p>"
        },
        {
          "shape": "NotFoundException",
          "documentation": "<p>The resource (for example, an access policy statement) specified in the request doesn't exist.</p>"
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "<p>The client is sending more than the allowed number of requests per unit of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The resource already exists.</p>"
        }
      ],
      "documentation": "<p>Updates the specified application.</p>"
    }
  },
  "shapes": {
    "ApplicationDependencySummary": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the nested application.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the nested application.</p>"
        }
      },
      "documentation": "<p>A nested application summary.</p>",
      "required": [
        "ApplicationId",
        "SemanticVersion"
      ]
    },
    "ApplicationPolicyStatement": {
      "type": "structure",
      "members": {
        "Actions": {
          "shape": "__listOf__string",
          "locationName": "actions",
          "documentation": "<p>For the list of actions supported for this operation, see <a href=\"https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions\">Application \n Permissions</a>.</p>"
        },
        "PrincipalOrgIDs": {
          "shape": "__listOf__string",
          "locationName": "principalOrgIDs",
          "documentation": "<p>An array of PrinciplalOrgIDs, which corresponds to AWS IAM <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_condition-keys.html#principal-org-id\">aws:PrincipalOrgID</a> global condition key.</p>"
        },
        "Principals": {
          "shape": "__listOf__string",
          "locationName": "principals",
          "documentation": "<p>An array of AWS account IDs, or * to make the application public.</p>"
        },
        "StatementId": {
          "shape": "__string",
          "locationName": "statementId",
          "documentation": "<p>A unique ID for the statement.</p>"
        }
      },
      "documentation": "<p>Policy statement applied to the application.</p>",
      "required": [
        "Principals",
        "Actions"
      ]
    },
    "ApplicationSummary": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "Author": {
          "shape": "__string",
          "locationName": "author",
          "documentation": "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
        },
        "HomePageUrl": {
          "shape": "__string",
          "locationName": "homePageUrl",
          "documentation": "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
        },
        "Labels": {
          "shape": "__listOf__string",
          "locationName": "labels",
          "documentation": "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
        },
        "SpdxLicenseId": {
          "shape": "__string",
          "locationName": "spdxLicenseId",
          "documentation": "<p>A valid identifier from <a href=\"https://spdx.org/licenses/\">https://spdx.org/licenses/</a>.</p>"
        }
      },
      "documentation": "<p>Summary of details about the application.</p>",
      "required": [
        "Description",
        "Author",
        "ApplicationId",
        "Name"
      ]
    },
    "Capability": {
      "type": "string",
      "documentation": "<p>Values that must be specified in order to deploy some applications.</p>",
      "enum": [
        "CAPABILITY_IAM",
        "CAPABILITY_NAMED_IAM",
        "CAPABILITY_AUTO_EXPAND",
        "CAPABILITY_RESOURCE_POLICY"
      ]
    },
    "CreateApplicationRequest": {
      "type": "structure",
      "members": {
        "Author": {
          "shape": "__string",
          "locationName": "author",
          "documentation": "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
        },
        "HomePageUrl": {
          "shape": "__string",
          "locationName": "homePageUrl",
          "documentation": "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
        },
        "Labels": {
          "shape": "__listOf__string",
          "locationName": "labels",
          "documentation": "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
        },
        "LicenseBody": {
          "shape": "__string",
          "locationName": "licenseBody",
          "documentation": "<p>A local text file that contains the license of the app that matches the spdxLicenseID value of your application.\n The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>"
        },
        "LicenseUrl": {
          "shape": "__string",
          "locationName": "licenseUrl",
          "documentation": "<p>A link to the S3 object that contains the license of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p><p>You can specify only one of licenseBody and licenseUrl; otherwise, an error results.</p>"
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the application that you want to publish.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
        },
        "ReadmeBody": {
          "shape": "__string",
          "locationName": "readmeBody",
          "documentation": "<p>A local text readme file in Markdown language that contains a more detailed description of the application and how it works.\n The file has the format file://&lt;path>/&lt;filename>.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>"
        },
        "ReadmeUrl": {
          "shape": "__string",
          "locationName": "readmeUrl",
          "documentation": "<p>A link to the S3 object in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p><p>You can specify only one of readmeBody and readmeUrl; otherwise, an error results.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        },
        "SourceCodeArchiveUrl": {
          "shape": "__string",
          "locationName": "sourceCodeArchiveUrl",
          "documentation": "<p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>"
        },
        "SourceCodeUrl": {
          "shape": "__string",
          "locationName": "sourceCodeUrl",
          "documentation": "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
        },
        "SpdxLicenseId": {
          "shape": "__string",
          "locationName": "spdxLicenseId",
          "documentation": "<p>A valid identifier from <a href=\"https://spdx.org/licenses/\">https://spdx.org/licenses/</a>.</p>"
        },
        "TemplateBody": {
          "shape": "__string",
          "locationName": "templateBody",
          "documentation": "<p>The local raw packaged AWS SAM template file of your application.\n The file has the format file://&lt;path>/&lt;filename>.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>"
        },
        "TemplateUrl": {
          "shape": "__string",
          "locationName": "templateUrl",
          "documentation": "<p>A link to the S3 object containing the packaged AWS SAM template of your application.</p><p>You can specify only one of templateBody and templateUrl; otherwise an error results.</p>"
        }
      },
      "required": [
        "Description",
        "Name",
        "Author"
      ]
    },
    "CreateApplicationResponse": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "Author": {
          "shape": "__string",
          "locationName": "author",
          "documentation": "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
        },
        "HomePageUrl": {
          "shape": "__string",
          "locationName": "homePageUrl",
          "documentation": "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
        },
        "IsVerifiedAuthor": {
          "shape": "__boolean",
          "locationName": "isVerifiedAuthor",
          "documentation": "<p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>"
        },
        "Labels": {
          "shape": "__listOf__string",
          "locationName": "labels",
          "documentation": "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
        },
        "LicenseUrl": {
          "shape": "__string",
          "locationName": "licenseUrl",
          "documentation": "<p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>"
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
        },
        "ReadmeUrl": {
          "shape": "__string",
          "locationName": "readmeUrl",
          "documentation": "<p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
        },
        "SpdxLicenseId": {
          "shape": "__string",
          "locationName": "spdxLicenseId",
          "documentation": "<p>A valid identifier from https://spdx.org/licenses/.</p>"
        },
        "VerifiedAuthorUrl": {
          "shape": "__string",
          "locationName": "verifiedAuthorUrl",
          "documentation": "<p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>"
        },
        "Version": {
          "shape": "Version",
          "locationName": "version",
          "documentation": "<p>Version information about the application.</p>"
        }
      }
    },
    "CreateApplicationVersionRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "location": "uri",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the new version.</p>"
        },
        "SourceCodeArchiveUrl": {
          "shape": "__string",
          "locationName": "sourceCodeArchiveUrl",
          "documentation": "<p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>"
        },
        "SourceCodeUrl": {
          "shape": "__string",
          "locationName": "sourceCodeUrl",
          "documentation": "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
        },
        "TemplateBody": {
          "shape": "__string",
          "locationName": "templateBody",
          "documentation": "<p>The raw packaged AWS SAM template of your application.</p>"
        },
        "TemplateUrl": {
          "shape": "__string",
          "locationName": "templateUrl",
          "documentation": "<p>A link to the packaged AWS SAM template of your application.</p>"
        }
      },
      "required": [
        "ApplicationId",
        "SemanticVersion"
      ]
    },
    "CreateApplicationVersionResponse": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "ParameterDefinitions": {
          "shape": "__listOfParameterDefinition",
          "locationName": "parameterDefinitions",
          "documentation": "<p>An array of parameter types supported by the application.</p>"
        },
        "RequiredCapabilities": {
          "shape": "__listOfCapability",
          "locationName": "requiredCapabilities",
          "documentation": "<p>A list of values that you must specify before you can deploy certain applications.\n Some applications might include resources that can affect permissions in your AWS\n account, for example, by creating new AWS Identity and Access Management (IAM) users.\n For those applications, you must explicitly acknowledge their capabilities by\n specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,\n CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or\n CAPABILITY_NAMED_IAM:\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">AWS::IAM::Group</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\">AWS::IAM::InstanceProfile</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM::Policy</a>, and\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">AWS::IAM::Role</a>.\n If the application contains IAM resources, you can specify either CAPABILITY_IAM\n or CAPABILITY_NAMED_IAM. If the application contains IAM resources\n with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html\">AWS::Lambda::Permission</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM:Policy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html\">AWS::ApplicationAutoScaling::ScalingPolicy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html\">AWS::S3::BucketPolicy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html\">AWS::SQS::QueuePolicy</a>, and\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html\">AWS::SNS::TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify\n CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review\n all permissions associated with the application before deploying. If you don't specify\n this parameter for an application that requires capabilities, the call will fail.</p>"
        },
        "ResourcesSupported": {
          "shape": "__boolean",
          "locationName": "resourcesSupported",
          "documentation": "<p>Whether all of the AWS resources contained in this application are supported in the region\n in which it is being retrieved.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        },
        "SourceCodeArchiveUrl": {
          "shape": "__string",
          "locationName": "sourceCodeArchiveUrl",
          "documentation": "<p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>"
        },
        "SourceCodeUrl": {
          "shape": "__string",
          "locationName": "sourceCodeUrl",
          "documentation": "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
        },
        "TemplateUrl": {
          "shape": "__string",
          "locationName": "templateUrl",
          "documentation": "<p>A link to the packaged AWS SAM template of your application.</p>"
        }
      }
    },
    "CreateCloudFormationChangeSetRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "Capabilities": {
          "shape": "__listOf__string",
          "locationName": "capabilities",
          "documentation": "<p>A list of values that you must specify before you can deploy certain applications.\n Some applications might include resources that can affect permissions in your AWS\n account, for example, by creating new AWS Identity and Access Management (IAM) users.\n For those applications, you must explicitly acknowledge their capabilities by\n specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,\n CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or\n CAPABILITY_NAMED_IAM:\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">AWS::IAM::Group</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\">AWS::IAM::InstanceProfile</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM::Policy</a>, and\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">AWS::IAM::Role</a>.\n If the application contains IAM resources, you can specify either CAPABILITY_IAM\n or CAPABILITY_NAMED_IAM. If the application contains IAM resources\n with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html\">AWS::Lambda::Permission</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM:Policy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html\">AWS::ApplicationAutoScaling::ScalingPolicy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html\">AWS::S3::BucketPolicy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html\">AWS::SQS::QueuePolicy</a>, and\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html\">AWS::SNS:TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify\n CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review\n all permissions associated with the application before deploying. If you don't specify\n this parameter for an application that requires capabilities, the call will fail.</p>"
        },
        "ChangeSetName": {
          "shape": "__string",
          "locationName": "changeSetName",
          "documentation": "<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>\n </i> API.</p>"
        },
        "ClientToken": {
          "shape": "__string",
          "locationName": "clientToken",
          "documentation": "<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>\n </i> API.</p>"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>\n </i> API.</p>"
        },
        "NotificationArns": {
          "shape": "__listOf__string",
          "locationName": "notificationArns",
          "documentation": "<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>\n </i> API.</p>"
        },
        "ParameterOverrides": {
          "shape": "__listOfParameterValue",
          "locationName": "parameterOverrides",
          "documentation": "<p>A list of parameter values for the parameters of the application.</p>"
        },
        "ResourceTypes": {
          "shape": "__listOf__string",
          "locationName": "resourceTypes",
          "documentation": "<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>\n </i> API.</p>"
        },
        "RollbackConfiguration": {
          "shape": "RollbackConfiguration",
          "locationName": "rollbackConfiguration",
          "documentation": "<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>\n </i> API.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        },
        "StackName": {
          "shape": "__string",
          "locationName": "stackName",
          "documentation": "<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>\n </i> API.</p>"
        },
        "Tags": {
          "shape": "__listOfTag",
          "locationName": "tags",
          "documentation": "<p>This property corresponds to the parameter of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/CreateChangeSet\">CreateChangeSet</a>\n </i> API.</p>"
        },
        "TemplateId": {
          "shape": "__string",
          "locationName": "templateId",
          "documentation": "<p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}</p>"
        }
      },
      "required": [
        "ApplicationId",
        "StackName"
      ]
    },
    "CreateCloudFormationChangeSetResponse": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "ChangeSetId": {
          "shape": "__string",
          "locationName": "changeSetId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the change set.</p><p>Length constraints: Minimum length of 1.</p><p>Pattern: ARN:[-a-zA-Z0-9:/]*</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        },
        "StackId": {
          "shape": "__string",
          "locationName": "stackId",
          "documentation": "<p>The unique ID of the stack.</p>"
        }
      }
    },
    "CreateCloudFormationTemplateRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        }
      },
      "required": [
        "ApplicationId"
      ]
    },
    "CreateCloudFormationTemplateResponse": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "ExpirationTime": {
          "shape": "__string",
          "locationName": "expirationTime",
          "documentation": "<p>The date and time this template expires. Templates\n expire 1 hour after creation.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        },
        "Status": {
          "shape": "Status",
          "locationName": "status",
          "documentation": "<p>Status of the template creation workflow.</p><p>Possible values: PREPARING | ACTIVE | EXPIRED\n </p>"
        },
        "TemplateId": {
          "shape": "__string",
          "locationName": "templateId",
          "documentation": "<p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}</p>"
        },
        "TemplateUrl": {
          "shape": "__string",
          "locationName": "templateUrl",
          "documentation": "<p>A link to the template that can be used to deploy the application using\n AWS CloudFormation.</p>"
        }
      }
    },
    "DeleteApplicationRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        }
      },
      "required": [
        "ApplicationId"
      ]
    },
    "GetApplicationPolicyRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        }
      },
      "required": [
        "ApplicationId"
      ]
    },
    "GetApplicationPolicyResponse": {
      "type": "structure",
      "members": {
        "Statements": {
          "shape": "__listOfApplicationPolicyStatement",
          "locationName": "statements",
          "documentation": "<p>An array of policy statements applied to the application.</p>"
        }
      }
    },
    "GetApplicationRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application to get.</p>"
        }
      },
      "required": [
        "ApplicationId"
      ]
    },
    "GetApplicationResponse": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "Author": {
          "shape": "__string",
          "locationName": "author",
          "documentation": "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
        },
        "HomePageUrl": {
          "shape": "__string",
          "locationName": "homePageUrl",
          "documentation": "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
        },
        "IsVerifiedAuthor": {
          "shape": "__boolean",
          "locationName": "isVerifiedAuthor",
          "documentation": "<p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>"
        },
        "Labels": {
          "shape": "__listOf__string",
          "locationName": "labels",
          "documentation": "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
        },
        "LicenseUrl": {
          "shape": "__string",
          "locationName": "licenseUrl",
          "documentation": "<p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>"
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
        },
        "ReadmeUrl": {
          "shape": "__string",
          "locationName": "readmeUrl",
          "documentation": "<p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
        },
        "SpdxLicenseId": {
          "shape": "__string",
          "locationName": "spdxLicenseId",
          "documentation": "<p>A valid identifier from https://spdx.org/licenses/.</p>"
        },
        "VerifiedAuthorUrl": {
          "shape": "__string",
          "locationName": "verifiedAuthorUrl",
          "documentation": "<p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>"
        },
        "Version": {
          "shape": "Version",
          "locationName": "version",
          "documentation": "<p>Version information about the application.</p>"
        }
      }
    },
    "GetCloudFormationTemplateRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "TemplateId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "templateId",
          "documentation": "<p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}</p>"
        }
      },
      "required": [
        "ApplicationId",
        "TemplateId"
      ]
    },
    "GetCloudFormationTemplateResponse": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "ExpirationTime": {
          "shape": "__string",
          "locationName": "expirationTime",
          "documentation": "<p>The date and time this template expires. Templates\n expire 1 hour after creation.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        },
        "Status": {
          "shape": "Status",
          "locationName": "status",
          "documentation": "<p>Status of the template creation workflow.</p><p>Possible values: PREPARING | ACTIVE | EXPIRED\n </p>"
        },
        "TemplateId": {
          "shape": "__string",
          "locationName": "templateId",
          "documentation": "<p>The UUID returned by CreateCloudFormationTemplate.</p><p>Pattern: [0-9a-fA-F]{8}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{4}\\-[0-9a-fA-F]{12}</p>"
        },
        "TemplateUrl": {
          "shape": "__string",
          "locationName": "templateUrl",
          "documentation": "<p>A link to the template that can be used to deploy the application using\n AWS CloudFormation.</p>"
        }
      }
    },
    "ListApplicationDependenciesRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "MaxItems": {
          "shape": "MaxItems",
          "location": "querystring",
          "locationName": "maxItems",
          "documentation": "<p>The total number of items to return.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>A token to specify where to start paginating.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application to get.</p>"
        }
      },
      "required": [
        "ApplicationId"
      ]
    },
    "ListApplicationDependenciesResponse": {
      "type": "structure",
      "members": {
        "Dependencies": {
          "shape": "__listOfApplicationDependencySummary",
          "locationName": "dependencies",
          "documentation": "<p>An array of application summaries nested in the application.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        }
      }
    },
    "ListApplicationVersionsRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "MaxItems": {
          "shape": "MaxItems",
          "location": "querystring",
          "locationName": "maxItems",
          "documentation": "<p>The total number of items to return.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>A token to specify where to start paginating.</p>"
        }
      },
      "required": [
        "ApplicationId"
      ]
    },
    "ListApplicationVersionsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        },
        "Versions": {
          "shape": "__listOfVersionSummary",
          "locationName": "versions",
          "documentation": "<p>An array of version summaries for the application.</p>"
        }
      }
    },
    "ListApplicationsRequest": {
      "type": "structure",
      "members": {
        "MaxItems": {
          "shape": "MaxItems",
          "location": "querystring",
          "locationName": "maxItems",
          "documentation": "<p>The total number of items to return.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>A token to specify where to start paginating.</p>"
        }
      }
    },
    "ListApplicationsResponse": {
      "type": "structure",
      "members": {
        "Applications": {
          "shape": "__listOfApplicationSummary",
          "locationName": "applications",
          "documentation": "<p>An array of application summaries.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        }
      }
    },
    "MaxItems": {
      "type": "integer",
      "min": 1,
      "max": 100
    },
    "ParameterDefinition": {
      "type": "structure",
      "members": {
        "AllowedPattern": {
          "shape": "__string",
          "locationName": "allowedPattern",
          "documentation": "<p>A regular expression that represents the patterns to allow for String types.</p>"
        },
        "AllowedValues": {
          "shape": "__listOf__string",
          "locationName": "allowedValues",
          "documentation": "<p>An array containing the list of values allowed for the parameter.</p>"
        },
        "ConstraintDescription": {
          "shape": "__string",
          "locationName": "constraintDescription",
          "documentation": "<p>A string that explains a constraint when the constraint is violated. For example, without a constraint description,\n a parameter that has an allowed pattern of [A-Za-z0-9]+ displays the following error message when the user\n specifies an invalid value:</p><p>\n Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+\n </p><p>By adding a constraint description, such as \"must contain only uppercase and lowercase letters and numbers,\" you can display\n the following customized error message:</p><p>\n Malformed input-Parameter MyParameter must contain only uppercase and lowercase letters and numbers.\n </p>"
        },
        "DefaultValue": {
          "shape": "__string",
          "locationName": "defaultValue",
          "documentation": "<p>A value of the appropriate type for the template to use if no value is specified when a stack is created.\n If you define constraints for the parameter, you must specify a value that adheres to those constraints.</p>"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>A string of up to 4,000 characters that describes the parameter.</p>"
        },
        "MaxLength": {
          "shape": "__integer",
          "locationName": "maxLength",
          "documentation": "<p>An integer value that determines the largest number of characters that you want to allow for String types.</p>"
        },
        "MaxValue": {
          "shape": "__integer",
          "locationName": "maxValue",
          "documentation": "<p>A numeric value that determines the largest numeric value that you want to allow for Number types.</p>"
        },
        "MinLength": {
          "shape": "__integer",
          "locationName": "minLength",
          "documentation": "<p>An integer value that determines the smallest number of characters that you want to allow for String types.</p>"
        },
        "MinValue": {
          "shape": "__integer",
          "locationName": "minValue",
          "documentation": "<p>A numeric value that determines the smallest numeric value that you want to allow for Number types.</p>"
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the parameter.</p>"
        },
        "NoEcho": {
          "shape": "__boolean",
          "locationName": "noEcho",
          "documentation": "<p>Whether to mask the parameter value whenever anyone makes a call that describes the stack. If you set the\n value to true, the parameter value is masked with asterisks (*****).</p>"
        },
        "ReferencedByResources": {
          "shape": "__listOf__string",
          "locationName": "referencedByResources",
          "documentation": "<p>A list of AWS SAM resources that use this parameter.</p>"
        },
        "Type": {
          "shape": "__string",
          "locationName": "type",
          "documentation": "<p>The type of the parameter.</p><p>Valid values: String | Number | List&lt;Number> | CommaDelimitedList\n </p><p>\n String: A literal string.</p><p>For example, users can specify \"MyUserName\".</p><p>\n Number: An integer or float. AWS CloudFormation validates the parameter value as a number. However, when you use the\n parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a string.</p><p>For example, users might specify \"8888\".</p><p>\n List&lt;Number>: An array of integers or floats that are separated by commas. AWS CloudFormation validates the parameter value as numbers. However, when\n you use the parameter elsewhere in your template (for example, by using the Ref intrinsic function), the parameter value becomes a list of strings.</p><p>For example, users might specify \"80,20\", and then Ref results in [\"80\",\"20\"].</p><p>\n CommaDelimitedList: An array of literal strings that are separated by commas. The total number of strings should be one more than the total number of commas.\n Also, each member string is space-trimmed.</p><p>For example, users might specify \"test,dev,prod\", and then Ref results in [\"test\",\"dev\",\"prod\"].</p>"
        }
      },
      "documentation": "<p>Parameters supported by the application.</p>",
      "required": [
        "ReferencedByResources",
        "Name"
      ]
    },
    "ParameterValue": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation\n uses the default value that is specified in your template.</p>"
        },
        "Value": {
          "shape": "__string",
          "locationName": "value",
          "documentation": "<p>The input value associated with the parameter.</p>"
        }
      },
      "documentation": "<p>Parameter value of the application.</p>",
      "required": [
        "Value",
        "Name"
      ]
    },
    "PutApplicationPolicyRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "Statements": {
          "shape": "__listOfApplicationPolicyStatement",
          "locationName": "statements",
          "documentation": "<p>An array of policy statements applied to the application.</p>"
        }
      },
      "required": [
        "ApplicationId",
        "Statements"
      ]
    },
    "PutApplicationPolicyResponse": {
      "type": "structure",
      "members": {
        "Statements": {
          "shape": "__listOfApplicationPolicyStatement",
          "locationName": "statements",
          "documentation": "<p>An array of policy statements applied to the application.</p>"
        }
      }
    },
    "RollbackConfiguration": {
      "type": "structure",
      "members": {
        "MonitoringTimeInMinutes": {
          "shape": "__integer",
          "locationName": "monitoringTimeInMinutes",
          "documentation": "<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration\">RollbackConfiguration</a>\n </i> Data Type.</p>"
        },
        "RollbackTriggers": {
          "shape": "__listOfRollbackTrigger",
          "locationName": "rollbackTriggers",
          "documentation": "<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration\">RollbackConfiguration</a>\n </i> Data Type.</p>"
        }
      },
      "documentation": "<p>This property corresponds to the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackConfiguration\">RollbackConfiguration</a>\n </i> Data Type.</p>"
    },
    "RollbackTrigger": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger\">RollbackTrigger</a>\n </i> Data Type.</p>"
        },
        "Type": {
          "shape": "__string",
          "locationName": "type",
          "documentation": "<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger\">RollbackTrigger</a>\n </i> Data Type.</p>"
        }
      },
      "documentation": "<p>This property corresponds to the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/RollbackTrigger\">RollbackTrigger</a>\n </i> Data Type.</p>",
      "required": [
        "Type",
        "Arn"
      ]
    },
    "Status": {
      "type": "string",
      "enum": [
        "PREPARING",
        "ACTIVE",
        "EXPIRED"
      ]
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "__string",
          "locationName": "key",
          "documentation": "<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag\">Tag</a>\n </i> Data Type.</p>"
        },
        "Value": {
          "shape": "__string",
          "locationName": "value",
          "documentation": "<p>This property corresponds to the content of the same name for the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag\">\n Tag</a>\n </i>\n Data Type.</p>"
        }
      },
      "documentation": "<p>This property corresponds to the <i>AWS CloudFormation <a href=\"https://docs.aws.amazon.com/goto/WebAPI/cloudformation-2010-05-15/Tag\">Tag</a>\n </i> Data Type.</p>",
      "required": [
        "Value",
        "Key"
      ]
    },
    "UnshareApplicationRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "OrganizationId": {
          "shape": "__string",
          "locationName": "organizationId",
          "documentation": "<p>The AWS Organization ID to unshare the application from.</p>"
        }
      },
      "required": [
        "ApplicationId",
        "OrganizationId"
      ]
    },
    "UpdateApplicationRequest": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "applicationId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the application.</p>"
        },
        "Author": {
          "shape": "__string",
          "locationName": "author",
          "documentation": "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
        },
        "HomePageUrl": {
          "shape": "__string",
          "locationName": "homePageUrl",
          "documentation": "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
        },
        "Labels": {
          "shape": "__listOf__string",
          "locationName": "labels",
          "documentation": "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
        },
        "ReadmeBody": {
          "shape": "__string",
          "locationName": "readmeBody",
          "documentation": "<p>A text readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
        },
        "ReadmeUrl": {
          "shape": "__string",
          "locationName": "readmeUrl",
          "documentation": "<p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
        }
      },
      "required": [
        "ApplicationId"
      ]
    },
    "UpdateApplicationResponse": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "Author": {
          "shape": "__string",
          "locationName": "author",
          "documentation": "<p>The name of the author publishing the app.</p><p>Minimum length=1. Maximum length=127.</p><p>Pattern \"^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$\";</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The description of the application.</p><p>Minimum length=1. Maximum length=256</p>"
        },
        "HomePageUrl": {
          "shape": "__string",
          "locationName": "homePageUrl",
          "documentation": "<p>A URL with more information about the application, for example the location of your GitHub repository for the application.</p>"
        },
        "IsVerifiedAuthor": {
          "shape": "__boolean",
          "locationName": "isVerifiedAuthor",
          "documentation": "<p>Whether the author of this application has been verified. This means means that AWS has made a good faith review, as a reasonable and prudent service provider, of the information provided by the requester and has confirmed that the requester's identity is as claimed.</p>"
        },
        "Labels": {
          "shape": "__listOf__string",
          "locationName": "labels",
          "documentation": "<p>Labels to improve discovery of apps in search results.</p><p>Minimum length=1. Maximum length=127. Maximum number of labels: 10</p><p>Pattern: \"^[a-zA-Z0-9+\\\\-_:\\\\/@]+$\";</p>"
        },
        "LicenseUrl": {
          "shape": "__string",
          "locationName": "licenseUrl",
          "documentation": "<p>A link to a license file of the app that matches the spdxLicenseID value of your application.</p><p>Maximum size 5 MB</p>"
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the application.</p><p>Minimum length=1. Maximum length=140</p><p>Pattern: \"[a-zA-Z0-9\\\\-]+\";</p>"
        },
        "ReadmeUrl": {
          "shape": "__string",
          "locationName": "readmeUrl",
          "documentation": "<p>A link to the readme file in Markdown language that contains a more detailed description of the application and how it works.</p><p>Maximum size 5 MB</p>"
        },
        "SpdxLicenseId": {
          "shape": "__string",
          "locationName": "spdxLicenseId",
          "documentation": "<p>A valid identifier from https://spdx.org/licenses/.</p>"
        },
        "VerifiedAuthorUrl": {
          "shape": "__string",
          "locationName": "verifiedAuthorUrl",
          "documentation": "<p>The URL to the public profile of a verified author. This URL is submitted by the author.</p>"
        },
        "Version": {
          "shape": "Version",
          "locationName": "version",
          "documentation": "<p>Version information about the application.</p>"
        }
      }
    },
    "Version": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "ParameterDefinitions": {
          "shape": "__listOfParameterDefinition",
          "locationName": "parameterDefinitions",
          "documentation": "<p>An array of parameter types supported by the application.</p>"
        },
        "RequiredCapabilities": {
          "shape": "__listOfCapability",
          "locationName": "requiredCapabilities",
          "documentation": "<p>A list of values that you must specify before you can deploy certain applications.\n Some applications might include resources that can affect permissions in your AWS\n account, for example, by creating new AWS Identity and Access Management (IAM) users.\n For those applications, you must explicitly acknowledge their capabilities by\n specifying this parameter.</p><p>The only valid values are CAPABILITY_IAM, CAPABILITY_NAMED_IAM,\n CAPABILITY_RESOURCE_POLICY, and CAPABILITY_AUTO_EXPAND.</p><p>The following resources require you to specify CAPABILITY_IAM or\n CAPABILITY_NAMED_IAM:\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html\">AWS::IAM::Group</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html\">AWS::IAM::InstanceProfile</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM::Policy</a>, and\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html\">AWS::IAM::Role</a>.\n If the application contains IAM resources, you can specify either CAPABILITY_IAM\n or CAPABILITY_NAMED_IAM. If the application contains IAM resources\n with custom names, you must specify CAPABILITY_NAMED_IAM.</p><p>The following resources require you to specify CAPABILITY_RESOURCE_POLICY:\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-permission.html\">AWS::Lambda::Permission</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html\">AWS::IAM:Policy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html\">AWS::ApplicationAutoScaling::ScalingPolicy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html\">AWS::S3::BucketPolicy</a>,\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html\">AWS::SQS::QueuePolicy</a>, and\n <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html\">AWS::SNS::TopicPolicy</a>.</p><p>Applications that contain one or more nested applications require you to specify\n CAPABILITY_AUTO_EXPAND.</p><p>If your application template contains any of the above resources, we recommend that you review\n all permissions associated with the application before deploying. If you don't specify\n this parameter for an application that requires capabilities, the call will fail.</p>"
        },
        "ResourcesSupported": {
          "shape": "__boolean",
          "locationName": "resourcesSupported",
          "documentation": "<p>Whether all of the AWS resources contained in this application are supported in the region\n in which it is being retrieved.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        },
        "SourceCodeArchiveUrl": {
          "shape": "__string",
          "locationName": "sourceCodeArchiveUrl",
          "documentation": "<p>A link to the S3 object that contains the ZIP archive of the source code for this version of your application.</p><p>Maximum size 50 MB</p>"
        },
        "SourceCodeUrl": {
          "shape": "__string",
          "locationName": "sourceCodeUrl",
          "documentation": "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
        },
        "TemplateUrl": {
          "shape": "__string",
          "locationName": "templateUrl",
          "documentation": "<p>A link to the packaged AWS SAM template of your application.</p>"
        }
      },
      "documentation": "<p>Application version details.</p>",
      "required": [
        "TemplateUrl",
        "ParameterDefinitions",
        "ResourcesSupported",
        "CreationTime",
        "RequiredCapabilities",
        "ApplicationId",
        "SemanticVersion"
      ]
    },
    "VersionSummary": {
      "type": "structure",
      "members": {
        "ApplicationId": {
          "shape": "__string",
          "locationName": "applicationId",
          "documentation": "<p>The application Amazon Resource Name (ARN).</p>"
        },
        "CreationTime": {
          "shape": "__string",
          "locationName": "creationTime",
          "documentation": "<p>The date and time this resource was created.</p>"
        },
        "SemanticVersion": {
          "shape": "__string",
          "locationName": "semanticVersion",
          "documentation": "<p>The semantic version of the application:</p><p>\n <a href=\"https://semver.org/\">https://semver.org/</a>\n </p>"
        },
        "SourceCodeUrl": {
          "shape": "__string",
          "locationName": "sourceCodeUrl",
          "documentation": "<p>A link to a public repository for the source code of your application, for example the URL of a specific GitHub commit.</p>"
        }
      },
      "documentation": "<p>An application version summary.</p>",
      "required": [
        "CreationTime",
        "ApplicationId",
        "SemanticVersion"
      ]
    },
    "__boolean": {
      "type": "boolean"
    },
    "__integer": {
      "type": "integer"
    },
    "__listOfApplicationDependencySummary": {
      "type": "list",
      "member": {
        "shape": "ApplicationDependencySummary"
      }
    },
    "__listOfApplicationPolicyStatement": {
      "type": "list",
      "member": {
        "shape": "ApplicationPolicyStatement"
      }
    },
    "__listOfApplicationSummary": {
      "type": "list",
      "member": {
        "shape": "ApplicationSummary"
      }
    },
    "__listOfCapability": {
      "type": "list",
      "member": {
        "shape": "Capability"
      }
    },
    "__listOfParameterDefinition": {
      "type": "list",
      "member": {
        "shape": "ParameterDefinition"
      }
    },
    "__listOfParameterValue": {
      "type": "list",
      "member": {
        "shape": "ParameterValue"
      }
    },
    "__listOfRollbackTrigger": {
      "type": "list",
      "member": {
        "shape": "RollbackTrigger"
      }
    },
    "__listOfTag": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "__listOfVersionSummary": {
      "type": "list",
      "member": {
        "shape": "VersionSummary"
      }
    },
    "__listOf__string": {
      "type": "list",
      "member": {
        "shape": "__string"
      }
    },
    "__string": {
      "type": "string"
    }
  },
  "documentation": "<p>The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find\n and deploy serverless applications in the AWS Cloud. For more information about serverless applications,\n see Serverless Computing and Applications on the AWS website.</p><p>The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of \n all levels can get started with serverless computing without needing to learn anything new. You can use category \n keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. \n You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, \n configure any required fields, and deploy it with a few clicks. </p><p>You can also easily publish applications, sharing them publicly with the community at large, or privately\n within your team or across your organization. To publish a serverless application (or app), you can use the\n AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the\n code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template.\n For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs\n GitHub repository.</p><p>The AWS Serverless Application Repository Developer Guide contains more information about the two developer\n experiences available:</p><ul>\n <li>\n <p>Consuming Applications – Browse for applications and view information about them, including\n source code and readme files. Also install, configure, and deploy applications of your choosing. </p>\n <p>Publishing Applications – Configure and upload applications to make them available to other\n developers, and publish new versions of applications. </p>\n </li>\n </ul>"
}
]===]))