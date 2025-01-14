local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-06-24",
    "endpointPrefix": "servicequotas",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Service Quotas",
    "serviceId": "Service Quotas",
    "signatureVersion": "v4",
    "targetPrefix": "ServiceQuotasV20190624",
    "uid": "service-quotas-2019-06-24"
  },
  "operations": {
    "AssociateServiceQuotaTemplate": {
      "name": "AssociateServiceQuotaTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateServiceQuotaTemplateRequest"
      },
      "output": {
        "shape": "AssociateServiceQuotaTemplateResponse"
      },
      "errors": [
        {
          "shape": "DependencyAccessDeniedException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "AWSServiceAccessNotEnabledException"
        },
        {
          "shape": "OrganizationNotInAllFeaturesModeException"
        },
        {
          "shape": "TemplatesNotAvailableInRegionException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        }
      ],
      "documentation": "<p>Associates the Service Quotas template with your organization so that when new accounts are created in your organization, the template submits increase requests for the specified service quotas. Use the Service Quotas template to request an increase for any adjustable quota value. After you define the Service Quotas template, use this operation to associate, or enable, the template. </p>"
    },
    "DeleteServiceQuotaIncreaseRequestFromTemplate": {
      "name": "DeleteServiceQuotaIncreaseRequestFromTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServiceQuotaIncreaseRequestFromTemplateRequest"
      },
      "output": {
        "shape": "DeleteServiceQuotaIncreaseRequestFromTemplateResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "DependencyAccessDeniedException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "AWSServiceAccessNotEnabledException"
        },
        {
          "shape": "TemplatesNotAvailableInRegionException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        }
      ],
      "documentation": "<p>Removes a service quota increase request from the Service Quotas template. </p>"
    },
    "DisassociateServiceQuotaTemplate": {
      "name": "DisassociateServiceQuotaTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateServiceQuotaTemplateRequest"
      },
      "output": {
        "shape": "DisassociateServiceQuotaTemplateResponse"
      },
      "errors": [
        {
          "shape": "DependencyAccessDeniedException"
        },
        {
          "shape": "ServiceQuotaTemplateNotInUseException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "AWSServiceAccessNotEnabledException"
        },
        {
          "shape": "TemplatesNotAvailableInRegionException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        }
      ],
      "documentation": "<p>Disables the Service Quotas template. Once the template is disabled, it does not request quota increases for new accounts in your organization. Disabling the quota template does not apply the quota increase requests from the template. </p> <p> <b>Related operations</b> </p> <ul> <li> <p>To enable the quota template, call <a>AssociateServiceQuotaTemplate</a>. </p> </li> <li> <p>To delete a specific service quota from the template, use <a>DeleteServiceQuotaIncreaseRequestFromTemplate</a>.</p> </li> </ul>"
    },
    "GetAWSDefaultServiceQuota": {
      "name": "GetAWSDefaultServiceQuota",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAWSDefaultServiceQuotaRequest"
      },
      "output": {
        "shape": "GetAWSDefaultServiceQuotaResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves the default service quotas values. The Value returned for each quota is the AWS default value, even if the quotas have been increased.. </p>"
    },
    "GetAssociationForServiceQuotaTemplate": {
      "name": "GetAssociationForServiceQuotaTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAssociationForServiceQuotaTemplateRequest"
      },
      "output": {
        "shape": "GetAssociationForServiceQuotaTemplateResponse"
      },
      "errors": [
        {
          "shape": "DependencyAccessDeniedException"
        },
        {
          "shape": "ServiceQuotaTemplateNotInUseException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "AWSServiceAccessNotEnabledException"
        },
        {
          "shape": "TemplatesNotAvailableInRegionException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        }
      ],
      "documentation": "<p>Retrieves the <code>ServiceQuotaTemplateAssociationStatus</code> value from the service. Use this action to determine if the Service Quota template is associated, or enabled. </p>"
    },
    "GetRequestedServiceQuotaChange": {
      "name": "GetRequestedServiceQuotaChange",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRequestedServiceQuotaChangeRequest"
      },
      "output": {
        "shape": "GetRequestedServiceQuotaChangeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves the details for a particular increase request. </p>"
    },
    "GetServiceQuota": {
      "name": "GetServiceQuota",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServiceQuotaRequest"
      },
      "output": {
        "shape": "GetServiceQuotaResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Returns the details for the specified service quota. This operation provides a different Value than the <code>GetAWSDefaultServiceQuota</code> operation. This operation returns the applied value for each quota. <code>GetAWSDefaultServiceQuota</code> returns the default AWS value for each quota. </p>"
    },
    "GetServiceQuotaIncreaseRequestFromTemplate": {
      "name": "GetServiceQuotaIncreaseRequestFromTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServiceQuotaIncreaseRequestFromTemplateRequest"
      },
      "output": {
        "shape": "GetServiceQuotaIncreaseRequestFromTemplateResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "DependencyAccessDeniedException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "AWSServiceAccessNotEnabledException"
        },
        {
          "shape": "TemplatesNotAvailableInRegionException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        }
      ],
      "documentation": "<p>Returns the details of the service quota increase request in your template.</p>"
    },
    "ListAWSDefaultServiceQuotas": {
      "name": "ListAWSDefaultServiceQuotas",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAWSDefaultServiceQuotasRequest"
      },
      "output": {
        "shape": "ListAWSDefaultServiceQuotasResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists all default service quotas for the specified AWS service or all AWS services. ListAWSDefaultServiceQuotas is similar to <a>ListServiceQuotas</a> except for the Value object. The Value object returned by <code>ListAWSDefaultServiceQuotas</code> is the default value assigned by AWS. This request returns a list of all service quotas for the specified service. The listing of each you'll see the default values are the values that AWS provides for the quotas. </p> <note> <p>Always check the <code>NextToken</code> response parameter when calling any of the <code>List*</code> operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the <code>NextToken</code> response parameter contains a value to pass the next call to the same API to request the next part of the list.</p> </note>"
    },
    "ListRequestedServiceQuotaChangeHistory": {
      "name": "ListRequestedServiceQuotaChangeHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRequestedServiceQuotaChangeHistoryRequest"
      },
      "output": {
        "shape": "ListRequestedServiceQuotaChangeHistoryResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Requests a list of the changes to quotas for a service.</p>"
    },
    "ListRequestedServiceQuotaChangeHistoryByQuota": {
      "name": "ListRequestedServiceQuotaChangeHistoryByQuota",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRequestedServiceQuotaChangeHistoryByQuotaRequest"
      },
      "output": {
        "shape": "ListRequestedServiceQuotaChangeHistoryByQuotaResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Requests a list of the changes to specific service quotas. This command provides additional granularity over the <code>ListRequestedServiceQuotaChangeHistory</code> command. Once a quota change request has reached <code>CASE_CLOSED, APPROVED,</code> or <code>DENIED</code>, the history has been kept for 90 days.</p>"
    },
    "ListServiceQuotaIncreaseRequestsInTemplate": {
      "name": "ListServiceQuotaIncreaseRequestsInTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServiceQuotaIncreaseRequestsInTemplateRequest"
      },
      "output": {
        "shape": "ListServiceQuotaIncreaseRequestsInTemplateResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "DependencyAccessDeniedException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "AWSServiceAccessNotEnabledException"
        },
        {
          "shape": "TemplatesNotAvailableInRegionException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        }
      ],
      "documentation": "<p>Returns a list of the quota increase requests in the template. </p>"
    },
    "ListServiceQuotas": {
      "name": "ListServiceQuotas",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServiceQuotasRequest"
      },
      "output": {
        "shape": "ListServiceQuotasResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists all service quotas for the specified AWS service. This request returns a list of the service quotas for the specified service. you'll see the default values are the values that AWS provides for the quotas. </p> <note> <p>Always check the <code>NextToken</code> response parameter when calling any of the <code>List*</code> operations. These operations can return an unexpected list of results, even when there are more results available. When this happens, the <code>NextToken</code> response parameter contains a value to pass the next call to the same API to request the next part of the list.</p> </note>"
    },
    "ListServices": {
      "name": "ListServices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServicesRequest"
      },
      "output": {
        "shape": "ListServicesResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "InvalidPaginationTokenException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists the AWS services available in Service Quotas. Not all AWS services are available in Service Quotas. To list the see the list of the service quotas for a specific service, use <a>ListServiceQuotas</a>.</p>"
    },
    "PutServiceQuotaIncreaseRequestIntoTemplate": {
      "name": "PutServiceQuotaIncreaseRequestIntoTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutServiceQuotaIncreaseRequestIntoTemplateRequest"
      },
      "output": {
        "shape": "PutServiceQuotaIncreaseRequestIntoTemplateResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "DependencyAccessDeniedException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "QuotaExceededException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "AWSServiceAccessNotEnabledException"
        },
        {
          "shape": "TemplatesNotAvailableInRegionException"
        },
        {
          "shape": "NoAvailableOrganizationException"
        }
      ],
      "documentation": "<p>Defines and adds a quota to the service quota template. To add a quota to the template, you must provide the <code>ServiceCode</code>, <code>QuotaCode</code>, <code>AwsRegion</code>, and <code>DesiredValue</code>. Once you add a quota to the template, use <a>ListServiceQuotaIncreaseRequestsInTemplate</a> to see the list of quotas in the template.</p>"
    },
    "RequestServiceQuotaIncrease": {
      "name": "RequestServiceQuotaIncrease",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RequestServiceQuotaIncreaseRequest"
      },
      "output": {
        "shape": "RequestServiceQuotaIncreaseResponse"
      },
      "errors": [
        {
          "shape": "DependencyAccessDeniedException"
        },
        {
          "shape": "QuotaExceededException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "NoSuchResourceException"
        },
        {
          "shape": "IllegalArgumentException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves the details of a service quota increase request. The response to this command provides the details in the <a>RequestedServiceQuotaChange</a> object. </p>"
    }
  },
  "shapes": {
    "AssociateServiceQuotaTemplateRequest": {
      "type": "structure",
      "members": {}
    },
    "AssociateServiceQuotaTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "AwsRegion": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[a-zA-Z][a-zA-Z0-9-]{1,128}"
    },
    "CustomerServiceEngagementId": {
      "type": "string"
    },
    "DateTime": {
      "type": "timestamp"
    },
    "DeleteServiceQuotaIncreaseRequestFromTemplateRequest": {
      "type": "structure",
      "required": [
        "ServiceCode",
        "QuotaCode",
        "AwsRegion"
      ],
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the code for the service that you want to delete.</p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>Specifies the code for the quota that you want to delete.</p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>Specifies the AWS Region for the quota that you want to delete.</p>"
        }
      }
    },
    "DeleteServiceQuotaIncreaseRequestFromTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateServiceQuotaTemplateRequest": {
      "type": "structure",
      "members": {}
    },
    "DisassociateServiceQuotaTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "ErrorCode": {
      "type": "string",
      "enum": [
        "DEPENDENCY_ACCESS_DENIED_ERROR",
        "DEPENDENCY_THROTTLING_ERROR",
        "DEPENDENCY_SERVICE_ERROR",
        "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
      ]
    },
    "ErrorMessage": {
      "type": "string"
    },
    "ErrorReason": {
      "type": "structure",
      "members": {
        "ErrorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>Service Quotas returns the following error values. </p> <p> <code>DEPENDENCY_ACCESS_DENIED_ERROR</code> is returned when the caller does not have permission to call the service or service quota. To resolve the error, you need permission to access the service or service quota.</p> <p> <code>DEPENDENCY_THROTTLING_ERROR</code> is returned when the service being called is throttling Service Quotas.</p> <p> <code>DEPENDENCY_SERVICE_ERROR</code> is returned when the service being called has availability issues.</p> <p> <code>SERVICE_QUOTA_NOT_AVAILABLE_ERROR</code> is returned when there was an error in Service Quotas.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message that provides more detail.</p>"
        }
      },
      "documentation": "<p>Returns an error that explains why the action did not succeed.</p>"
    },
    "GetAWSDefaultServiceQuotaRequest": {
      "type": "structure",
      "required": [
        "ServiceCode",
        "QuotaCode"
      ],
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>Identifies the service quota you want to select.</p>"
        }
      }
    },
    "GetAWSDefaultServiceQuotaResponse": {
      "type": "structure",
      "members": {
        "Quota": {
          "shape": "ServiceQuota",
          "documentation": "<p>Returns the <a>ServiceQuota</a> object which contains all values for a quota.</p>"
        }
      }
    },
    "GetAssociationForServiceQuotaTemplateRequest": {
      "type": "structure",
      "members": {}
    },
    "GetAssociationForServiceQuotaTemplateResponse": {
      "type": "structure",
      "members": {
        "ServiceQuotaTemplateAssociationStatus": {
          "shape": "ServiceQuotaTemplateAssociationStatus",
          "documentation": "<p>Specifies whether the template is <code>ASSOCIATED</code> or <code>DISASSOCIATED</code>. If the template is <code>ASSOCIATED</code>, then it requests service quota increases for all new accounts created in your organization. </p>"
        }
      }
    },
    "GetRequestedServiceQuotaChangeRequest": {
      "type": "structure",
      "required": [
        "RequestId"
      ],
      "members": {
        "RequestId": {
          "shape": "RequestId",
          "documentation": "<p>Identifies the quota increase request.</p>"
        }
      }
    },
    "GetRequestedServiceQuotaChangeResponse": {
      "type": "structure",
      "members": {
        "RequestedQuota": {
          "shape": "RequestedServiceQuotaChange",
          "documentation": "<p>Returns the <code>RequestedServiceQuotaChange</code> object for the specific increase request.</p>"
        }
      }
    },
    "GetServiceQuotaIncreaseRequestFromTemplateRequest": {
      "type": "structure",
      "required": [
        "ServiceCode",
        "QuotaCode",
        "AwsRegion"
      ],
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>Specifies the quota you want.</p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>Specifies the AWS Region for the quota that you want to use.</p>"
        }
      }
    },
    "GetServiceQuotaIncreaseRequestFromTemplateResponse": {
      "type": "structure",
      "members": {
        "ServiceQuotaIncreaseRequestInTemplate": {
          "shape": "ServiceQuotaIncreaseRequestInTemplate",
          "documentation": "<p>This object contains the details about the quota increase request.</p>"
        }
      }
    },
    "GetServiceQuotaRequest": {
      "type": "structure",
      "required": [
        "ServiceCode",
        "QuotaCode"
      ],
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>Identifies the service quota you want to select.</p>"
        }
      }
    },
    "GetServiceQuotaResponse": {
      "type": "structure",
      "members": {
        "Quota": {
          "shape": "ServiceQuota",
          "documentation": "<p>Returns the <a>ServiceQuota</a> object which contains all values for a quota.</p>"
        }
      }
    },
    "GlobalQuota": {
      "type": "boolean"
    },
    "ListAWSDefaultServiceQuotasRequest": {
      "type": "structure",
      "required": [
        "ServiceCode"
      ],
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from. If additional items exist beyond the specified maximum, the <code>NextToken</code> element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the call to the operation to get the next part of the results. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the <code>NextToken</code> element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the call to the operation to get the next part of the results. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListAWSDefaultServiceQuotasResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "Quotas": {
          "shape": "ServiceQuotaListDefinition",
          "documentation": "<p>A list of the quotas in the account with the AWS default values. </p>"
        }
      }
    },
    "ListRequestedServiceQuotaChangeHistoryByQuotaRequest": {
      "type": "structure",
      "required": [
        "ServiceCode",
        "QuotaCode"
      ],
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>Specifies the service quota that you want to use</p>"
        },
        "Status": {
          "shape": "RequestStatus",
          "documentation": "<p>Specifies the status value of the quota increase request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the <code>NextToken</code> element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the call to the operation to get the next part of the results. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListRequestedServiceQuotaChangeHistoryByQuotaResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present in the response, this value indicates there's more output available that what's included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back empty (as <code>null</code>).</p>"
        },
        "RequestedQuotas": {
          "shape": "RequestedServiceQuotaChangeHistoryListDefinition",
          "documentation": "<p>Returns a list of service quota requests.</p>"
        }
      }
    },
    "ListRequestedServiceQuotaChangeHistoryRequest": {
      "type": "structure",
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "Status": {
          "shape": "RequestStatus",
          "documentation": "<p>Specifies the status value of the quota increase request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the <code>NextToken</code> element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the call to the operation to get the next part of the results. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListRequestedServiceQuotaChangeHistoryResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present in the response, this value indicates there's more output available that what's included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back empty (as <code>null</code>).</p>"
        },
        "RequestedQuotas": {
          "shape": "RequestedServiceQuotaChangeHistoryListDefinition",
          "documentation": "<p>Returns a list of service quota requests.</p>"
        }
      }
    },
    "ListServiceQuotaIncreaseRequestsInTemplateRequest": {
      "type": "structure",
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>The identifier for a service. When performing an operation, use the <code>ServiceCode</code> to specify a particular service. </p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>Specifies the AWS Region for the quota that you want to use.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the <code>NextToken</code> element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the call to the operation to get the next part of the results. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListServiceQuotaIncreaseRequestsInTemplateResponse": {
      "type": "structure",
      "members": {
        "ServiceQuotaIncreaseRequestInTemplateList": {
          "shape": "ServiceQuotaIncreaseRequestInTemplateList",
          "documentation": "<p>Returns the list of values of the quota increase request in the template.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present in the response, this value indicates there's more output available that what's included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back empty (as <code>null</code>).</p>"
        }
      }
    },
    "ListServiceQuotasRequest": {
      "type": "structure",
      "required": [
        "ServiceCode"
      ],
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>The identifier for a service. When performing an operation, use the <code>ServiceCode</code> to specify a particular service. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the <code>NextToken</code> element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the call to the operation to get the next part of the results. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListServiceQuotasResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present in the response, this value indicates there's more output available that what's included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back empty (as <code>null</code>).</p>"
        },
        "Quotas": {
          "shape": "ServiceQuotaListDefinition",
          "documentation": "<p>The response information for a quota lists all attribute information for the quota. </p>"
        }
      }
    },
    "ListServicesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>(Optional) Use this parameter in a request if you receive a <code>NextToken</code> response in a previous request that indicates that there's more output available. In a subsequent call, set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>(Optional) Limits the number of results that you want to include in the response. If you don't include this parameter, the response defaults to a value that's specific to the operation. If additional items exist beyond the specified maximum, the <code>NextToken</code> element is present and has a value (isn't null). Include that value as the <code>NextToken</code> request parameter in the call to the operation to get the next part of the results. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListServicesResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present in the response, this value indicates there's more output available that what's included in the current response. This can occur even when the response includes no values at all, such as when you ask for a filtered view of a very long list. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to continue processing and get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back empty (as <code>null</code>).</p>"
        },
        "Services": {
          "shape": "ServiceInfoListDefinition",
          "documentation": "<p>Returns a list of services. </p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MetricDimensionName": {
      "type": "string"
    },
    "MetricDimensionValue": {
      "type": "string"
    },
    "MetricDimensionsMapDefinition": {
      "type": "map",
      "key": {
        "shape": "MetricDimensionName"
      },
      "value": {
        "shape": "MetricDimensionValue"
      },
      "max": 10
    },
    "MetricInfo": {
      "type": "structure",
      "members": {
        "MetricNamespace": {
          "shape": "QuotaMetricNamespace",
          "documentation": "<p>The namespace of the metric. The namespace is a container for CloudWatch metrics. You can specify a name for the namespace when you create a metric.</p>"
        },
        "MetricName": {
          "shape": "QuotaMetricName",
          "documentation": "<p>The name of the CloudWatch metric that measures usage of a service quota. This is a required field.</p>"
        },
        "MetricDimensions": {
          "shape": "MetricDimensionsMapDefinition",
          "documentation": "<p>A dimension is a name/value pair that is part of the identity of a metric. Every metric has specific characteristics that describe it, and you can think of dimensions as categories for those characteristics. These dimensions are part of the CloudWatch Metric Identity that measures usage against a particular service quota.</p>"
        },
        "MetricStatisticRecommendation": {
          "shape": "Statistic",
          "documentation": "<p>Statistics are metric data aggregations over specified periods of time. This is the recommended statistic to use when comparing usage in the CloudWatch Metric against your Service Quota.</p>"
        }
      },
      "documentation": "<p>A structure that uses CloudWatch metrics to gather data about the service quota.</p>"
    },
    "NextToken": {
      "type": "string",
      "max": 2048,
      "pattern": "^[a-zA-Z0-9/+]*={0,2}$"
    },
    "PeriodUnit": {
      "type": "string",
      "enum": [
        "MICROSECOND",
        "MILLISECOND",
        "SECOND",
        "MINUTE",
        "HOUR",
        "DAY",
        "WEEK"
      ]
    },
    "PeriodValue": {
      "type": "integer"
    },
    "PutServiceQuotaIncreaseRequestIntoTemplateRequest": {
      "type": "structure",
      "required": [
        "QuotaCode",
        "ServiceCode",
        "AwsRegion",
        "DesiredValue"
      ],
      "members": {
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>Specifies the service quota that you want to use.</p>"
        },
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>Specifies the AWS Region for the quota. </p>"
        },
        "DesiredValue": {
          "shape": "QuotaValue",
          "documentation": "<p>Specifies the new, increased value for the quota. </p>"
        }
      }
    },
    "PutServiceQuotaIncreaseRequestIntoTemplateResponse": {
      "type": "structure",
      "members": {
        "ServiceQuotaIncreaseRequestInTemplate": {
          "shape": "ServiceQuotaIncreaseRequestInTemplate",
          "documentation": "<p>A structure that contains information about one service quota increase request.</p>"
        }
      }
    },
    "QuotaAdjustable": {
      "type": "boolean"
    },
    "QuotaArn": {
      "type": "string"
    },
    "QuotaCode": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z][a-zA-Z0-9-]{1,128}"
    },
    "QuotaMetricName": {
      "type": "string"
    },
    "QuotaMetricNamespace": {
      "type": "string"
    },
    "QuotaName": {
      "type": "string"
    },
    "QuotaPeriod": {
      "type": "structure",
      "members": {
        "PeriodValue": {
          "shape": "PeriodValue",
          "documentation": "<p>The value of a period.</p>"
        },
        "PeriodUnit": {
          "shape": "PeriodUnit",
          "documentation": "<p>The time unit of a period.</p>"
        }
      },
      "documentation": "<p>A structure that contains information about the quota period.</p>"
    },
    "QuotaUnit": {
      "type": "string"
    },
    "QuotaValue": {
      "type": "double",
      "max": 10000000000,
      "min": 0
    },
    "RequestId": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[0-9a-zA-Z][a-zA-Z0-9-]{1,128}"
    },
    "RequestServiceQuotaIncreaseRequest": {
      "type": "structure",
      "required": [
        "ServiceCode",
        "QuotaCode",
        "DesiredValue"
      ],
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>Specifies the service quota that you want to use.</p>"
        },
        "DesiredValue": {
          "shape": "QuotaValue",
          "documentation": "<p>Specifies the value submitted in the service quota increase request. </p>"
        }
      }
    },
    "RequestServiceQuotaIncreaseResponse": {
      "type": "structure",
      "members": {
        "RequestedQuota": {
          "shape": "RequestedServiceQuotaChange",
          "documentation": "<p>Returns a list of service quota requests.</p>"
        }
      }
    },
    "RequestStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "CASE_OPENED",
        "APPROVED",
        "DENIED",
        "CASE_CLOSED"
      ]
    },
    "RequestedServiceQuotaChange": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "RequestId",
          "documentation": "<p>The unique identifier of a requested service quota change.</p>"
        },
        "CaseId": {
          "shape": "CustomerServiceEngagementId",
          "documentation": "<p>The case Id for the service quota increase request.</p>"
        },
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the AWS service specified in the increase request. </p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>Specifies the service quota that you want to use.</p>"
        },
        "QuotaName": {
          "shape": "QuotaName",
          "documentation": "<p>Name of the service quota.</p>"
        },
        "DesiredValue": {
          "shape": "QuotaValue",
          "documentation": "<p>New increased value for the service quota.</p>"
        },
        "Status": {
          "shape": "RequestStatus",
          "documentation": "<p>State of the service quota increase request.</p>"
        },
        "Created": {
          "shape": "DateTime",
          "documentation": "<p>The date and time when the service quota increase request was received and the case Id was created. </p>"
        },
        "LastUpdated": {
          "shape": "DateTime",
          "documentation": "<p>The date and time of the most recent change in the service quota increase request.</p>"
        },
        "Requester": {
          "shape": "Requester",
          "documentation": "<p>The IAM identity who submitted the service quota increase request.</p>"
        },
        "QuotaArn": {
          "shape": "QuotaArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the service quota.</p>"
        },
        "GlobalQuota": {
          "shape": "GlobalQuota",
          "documentation": "<p>Identifies if the quota is global.</p>"
        },
        "Unit": {
          "shape": "QuotaUnit",
          "documentation": "<p>Specifies the unit used for the quota.</p>"
        }
      },
      "documentation": "<p>A structure that contains information about a requested change for a quota.</p>"
    },
    "RequestedServiceQuotaChangeHistoryListDefinition": {
      "type": "list",
      "member": {
        "shape": "RequestedServiceQuotaChange"
      }
    },
    "Requester": {
      "type": "string"
    },
    "ServiceCode": {
      "type": "string",
      "max": 63,
      "min": 1,
      "pattern": "[a-zA-Z][a-zA-Z0-9-]{1,63}"
    },
    "ServiceInfo": {
      "type": "structure",
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the AWS service specified in the increase request. </p>"
        }
      },
      "documentation": "<p>A structure that contains the <code>ServiceName</code> and <code>ServiceCode</code>. It does not include all details of the service quota. To get those values, use the <a>ListServiceQuotas</a> operation. </p>"
    },
    "ServiceInfoListDefinition": {
      "type": "list",
      "member": {
        "shape": "ServiceInfo"
      }
    },
    "ServiceName": {
      "type": "string"
    },
    "ServiceQuota": {
      "type": "structure",
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>Specifies the service that you want to use.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the AWS service specified in the increase request. </p>"
        },
        "QuotaArn": {
          "shape": "QuotaArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the service quota.</p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>The code identifier for the service quota specified.</p>"
        },
        "QuotaName": {
          "shape": "QuotaName",
          "documentation": "<p>The name identifier of the service quota.</p>"
        },
        "Value": {
          "shape": "QuotaValue",
          "documentation": "<p>The value of service quota.</p>"
        },
        "Unit": {
          "shape": "QuotaUnit",
          "documentation": "<p>The unit of measurement for the value of the service quota.</p>"
        },
        "Adjustable": {
          "shape": "QuotaAdjustable",
          "documentation": "<p>Specifies if the quota value can be increased.</p>"
        },
        "GlobalQuota": {
          "shape": "GlobalQuota",
          "documentation": "<p>Specifies if the quota is global.</p>"
        },
        "UsageMetric": {
          "shape": "MetricInfo",
          "documentation": "<p>Specifies the details about the measurement. </p>"
        },
        "Period": {
          "shape": "QuotaPeriod",
          "documentation": "<p>Identifies the unit and value of how time is measured.</p>"
        },
        "ErrorReason": {
          "shape": "ErrorReason",
          "documentation": "<p>Specifies the <code>ErrorCode</code> and <code>ErrorMessage</code> when success isn't achieved.</p>"
        }
      },
      "documentation": "<p>A structure that contains the full set of details that define the service quota.</p>"
    },
    "ServiceQuotaIncreaseRequestInTemplate": {
      "type": "structure",
      "members": {
        "ServiceCode": {
          "shape": "ServiceCode",
          "documentation": "<p>The code identifier for the AWS service specified in the increase request.</p>"
        },
        "ServiceName": {
          "shape": "ServiceName",
          "documentation": "<p>The name of the AWS service specified in the increase request. </p>"
        },
        "QuotaCode": {
          "shape": "QuotaCode",
          "documentation": "<p>The code identifier for the service quota specified in the increase request.</p>"
        },
        "QuotaName": {
          "shape": "QuotaName",
          "documentation": "<p>The name of the service quota in the increase request.</p>"
        },
        "DesiredValue": {
          "shape": "QuotaValue",
          "documentation": "<p>Identifies the new, increased value of the service quota in the increase request. </p>"
        },
        "AwsRegion": {
          "shape": "AwsRegion",
          "documentation": "<p>The AWS Region where the increase request occurs.</p>"
        },
        "Unit": {
          "shape": "QuotaUnit",
          "documentation": "<p>The unit of measure for the increase request.</p>"
        },
        "GlobalQuota": {
          "shape": "GlobalQuota",
          "documentation": "<p>Specifies if the quota is a global quota.</p>"
        }
      },
      "documentation": "<p>A structure that contains information about one service quota increase request.</p>"
    },
    "ServiceQuotaIncreaseRequestInTemplateList": {
      "type": "list",
      "member": {
        "shape": "ServiceQuotaIncreaseRequestInTemplate"
      }
    },
    "ServiceQuotaListDefinition": {
      "type": "list",
      "member": {
        "shape": "ServiceQuota"
      }
    },
    "ServiceQuotaTemplateAssociationStatus": {
      "type": "string",
      "enum": [
        "ASSOCIATED",
        "DISASSOCIATED"
      ]
    },
    "Statistic": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "(Sum|Maximum)"
    }
  },
  "documentation": "<p> Service Quotas is a web service that you can use to manage many of your AWS service quotas. Quotas, also referred to as limits, are the maximum values for a resource, item, or operation. This guide provide descriptions of the Service Quotas actions that you can call from an API. For the Service Quotas user guide, which explains how to use Service Quotas from the console, see <a href=\"https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html\">What is Service Quotas</a>. </p> <note> <p>AWS provides SDKs that consist of libraries and sample code for programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc...,). The SDKs provide a convenient way to create programmatic access to Service Quotas and AWS. For information about the AWS SDKs, including how to download and install them, see the <a href=\"https://docs.aws.amazon.com/aws.amazon.com/tools\">Tools for Amazon Web Services</a> page.</p> </note>"
}
]===]))
