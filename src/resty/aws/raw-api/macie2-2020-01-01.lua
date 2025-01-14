local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2020-01-01",
    "endpointPrefix": "macie2",
    "signingName": "macie2",
    "serviceFullName": "Amazon Macie 2",
    "serviceId": "Macie2",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "macie2-2020-01-01",
    "signatureVersion": "v4"
  },
  "operations": {
    "AcceptInvitation": {
      "name": "AcceptInvitation",
      "http": {
        "method": "POST",
        "requestUri": "/invitations/accept",
        "responseCode": 200
      },
      "input": {
        "shape": "AcceptInvitationRequest"
      },
      "output": {
        "shape": "AcceptInvitationResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Accepts an Amazon Macie membership invitation that was received from a specific account.</p>"
    },
    "BatchGetCustomDataIdentifiers": {
      "name": "BatchGetCustomDataIdentifiers",
      "http": {
        "method": "POST",
        "requestUri": "/custom-data-identifiers/get",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchGetCustomDataIdentifiersRequest"
      },
      "output": {
        "shape": "BatchGetCustomDataIdentifiersResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about one or more custom data identifiers.</p>"
    },
    "CreateClassificationJob": {
      "name": "CreateClassificationJob",
      "http": {
        "method": "POST",
        "requestUri": "/jobs",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateClassificationJobRequest"
      },
      "output": {
        "shape": "CreateClassificationJobResponse",
        "documentation": "<p>The request succeeded. The specified job was created.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Creates and defines the settings for a classification job.</p>"
    },
    "CreateCustomDataIdentifier": {
      "name": "CreateCustomDataIdentifier",
      "http": {
        "method": "POST",
        "requestUri": "/custom-data-identifiers",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateCustomDataIdentifierRequest"
      },
      "output": {
        "shape": "CreateCustomDataIdentifierResponse",
        "documentation": "<p>The request succeeded. The specified custom data identifier was created.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Creates and defines the criteria and other settings for a custom data identifier.</p>"
    },
    "CreateFindingsFilter": {
      "name": "CreateFindingsFilter",
      "http": {
        "method": "POST",
        "requestUri": "/findingsfilters",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateFindingsFilterRequest"
      },
      "output": {
        "shape": "CreateFindingsFilterResponse"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Creates and defines the criteria and other settings for a findings filter.</p>"
    },
    "CreateInvitations": {
      "name": "CreateInvitations",
      "http": {
        "method": "POST",
        "requestUri": "/invitations",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateInvitationsRequest"
      },
      "output": {
        "shape": "CreateInvitationsResponse",
        "documentation": "<p>The request succeeded. Processing might not be complete.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Sends an Amazon Macie membership invitation to one or more accounts.</p>"
    },
    "CreateMember": {
      "name": "CreateMember",
      "http": {
        "method": "POST",
        "requestUri": "/members",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateMemberRequest"
      },
      "output": {
        "shape": "CreateMemberResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Associates an account with an Amazon Macie master account.</p>"
    },
    "CreateSampleFindings": {
      "name": "CreateSampleFindings",
      "http": {
        "method": "POST",
        "requestUri": "/findings/sample",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateSampleFindingsRequest"
      },
      "output": {
        "shape": "CreateSampleFindingsResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Creates sample findings.</p>"
    },
    "DeclineInvitations": {
      "name": "DeclineInvitations",
      "http": {
        "method": "POST",
        "requestUri": "/invitations/decline",
        "responseCode": 200
      },
      "input": {
        "shape": "DeclineInvitationsRequest"
      },
      "output": {
        "shape": "DeclineInvitationsResponse",
        "documentation": "<p>The request succeeded. Processing might not be complete.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Declines Amazon Macie membership invitations that were received from specific accounts.</p>"
    },
    "DeleteCustomDataIdentifier": {
      "name": "DeleteCustomDataIdentifier",
      "http": {
        "method": "DELETE",
        "requestUri": "/custom-data-identifiers/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteCustomDataIdentifierRequest"
      },
      "output": {
        "shape": "DeleteCustomDataIdentifierResponse",
        "documentation": "<p>The request succeeded. The specified custom data identifier was deleted and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Soft deletes a custom data identifier.</p>"
    },
    "DeleteFindingsFilter": {
      "name": "DeleteFindingsFilter",
      "http": {
        "method": "DELETE",
        "requestUri": "/findingsfilters/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteFindingsFilterRequest"
      },
      "output": {
        "shape": "DeleteFindingsFilterResponse",
        "documentation": "<p>The request succeeded. The specified findings filter was deleted and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Deletes a findings filter.</p>"
    },
    "DeleteInvitations": {
      "name": "DeleteInvitations",
      "http": {
        "method": "POST",
        "requestUri": "/invitations/delete",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteInvitationsRequest"
      },
      "output": {
        "shape": "DeleteInvitationsResponse",
        "documentation": "<p>The request succeeded. Processing might not be complete.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Deletes Amazon Macie membership invitations that were received from specific accounts.</p>"
    },
    "DeleteMember": {
      "name": "DeleteMember",
      "http": {
        "method": "DELETE",
        "requestUri": "/members/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteMemberRequest"
      },
      "output": {
        "shape": "DeleteMemberResponse",
        "documentation": "<p>The request succeeded. The association was deleted and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Deletes the association between an Amazon Macie master account and an account.</p>"
    },
    "DescribeBuckets": {
      "name": "DescribeBuckets",
      "http": {
        "method": "POST",
        "requestUri": "/datasources/s3",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeBucketsRequest"
      },
      "output": {
        "shape": "DescribeBucketsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Retrieves (queries) statistical data and other information about one or more S3 buckets that Amazon Macie monitors and analyzes.</p>"
    },
    "DescribeClassificationJob": {
      "name": "DescribeClassificationJob",
      "http": {
        "method": "GET",
        "requestUri": "/jobs/{jobId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeClassificationJobRequest"
      },
      "output": {
        "shape": "DescribeClassificationJobResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about the status and settings for a classification job.</p>"
    },
    "DescribeOrganizationConfiguration": {
      "name": "DescribeOrganizationConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/admin/configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeOrganizationConfigurationRequest"
      },
      "output": {
        "shape": "DescribeOrganizationConfigurationResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about the Amazon Macie configuration settings for an AWS organization.</p>"
    },
    "DisableMacie": {
      "name": "DisableMacie",
      "http": {
        "method": "DELETE",
        "requestUri": "/macie",
        "responseCode": 200
      },
      "input": {
        "shape": "DisableMacieRequest"
      },
      "output": {
        "shape": "DisableMacieResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Disables an Amazon Macie account and deletes Macie resources for the account.</p>"
    },
    "DisableOrganizationAdminAccount": {
      "name": "DisableOrganizationAdminAccount",
      "http": {
        "method": "DELETE",
        "requestUri": "/admin",
        "responseCode": 200
      },
      "input": {
        "shape": "DisableOrganizationAdminAccountRequest"
      },
      "output": {
        "shape": "DisableOrganizationAdminAccountResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Disables an account as a delegated administrator of Amazon Macie for an AWS organization.</p>"
    },
    "DisassociateFromMasterAccount": {
      "name": "DisassociateFromMasterAccount",
      "http": {
        "method": "POST",
        "requestUri": "/master/disassociate",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociateFromMasterAccountRequest"
      },
      "output": {
        "shape": "DisassociateFromMasterAccountResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Disassociates a member account from its Amazon Macie master account.</p>"
    },
    "DisassociateMember": {
      "name": "DisassociateMember",
      "http": {
        "method": "POST",
        "requestUri": "/members/disassociate/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociateMemberRequest"
      },
      "output": {
        "shape": "DisassociateMemberResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Disassociates an Amazon Macie master account from a member account.</p>"
    },
    "EnableMacie": {
      "name": "EnableMacie",
      "http": {
        "method": "POST",
        "requestUri": "/macie",
        "responseCode": 200
      },
      "input": {
        "shape": "EnableMacieRequest"
      },
      "output": {
        "shape": "EnableMacieResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Enables Amazon Macie and specifies the configuration settings for a Macie account.</p>"
    },
    "EnableOrganizationAdminAccount": {
      "name": "EnableOrganizationAdminAccount",
      "http": {
        "method": "POST",
        "requestUri": "/admin",
        "responseCode": 200
      },
      "input": {
        "shape": "EnableOrganizationAdminAccountRequest"
      },
      "output": {
        "shape": "EnableOrganizationAdminAccountResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Enables an account as a delegated administrator of Amazon Macie for an AWS organization.</p>"
    },
    "GetBucketStatistics": {
      "name": "GetBucketStatistics",
      "http": {
        "method": "POST",
        "requestUri": "/datasources/s3/statistics",
        "responseCode": 200
      },
      "input": {
        "shape": "GetBucketStatisticsRequest"
      },
      "output": {
        "shape": "GetBucketStatisticsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Retrieves (queries) aggregated statistical data for all the S3 buckets that Amazon Macie monitors and analyzes.</p>"
    },
    "GetClassificationExportConfiguration": {
      "name": "GetClassificationExportConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/classification-export-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "GetClassificationExportConfigurationRequest"
      },
      "output": {
        "shape": "GetClassificationExportConfigurationResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves the configuration settings for storing data classification results.</p>"
    },
    "GetCustomDataIdentifier": {
      "name": "GetCustomDataIdentifier",
      "http": {
        "method": "GET",
        "requestUri": "/custom-data-identifiers/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetCustomDataIdentifierRequest"
      },
      "output": {
        "shape": "GetCustomDataIdentifierResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about the criteria and other settings for a custom data identifier.</p>"
    },
    "GetFindingStatistics": {
      "name": "GetFindingStatistics",
      "http": {
        "method": "POST",
        "requestUri": "/findings/statistics",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFindingStatisticsRequest"
      },
      "output": {
        "shape": "GetFindingStatisticsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Retrieves (queries) aggregated statistical data about findings.</p>"
    },
    "GetFindings": {
      "name": "GetFindings",
      "http": {
        "method": "POST",
        "requestUri": "/findings/describe",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFindingsRequest"
      },
      "output": {
        "shape": "GetFindingsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about one or more findings.</p>"
    },
    "GetFindingsFilter": {
      "name": "GetFindingsFilter",
      "http": {
        "method": "GET",
        "requestUri": "/findingsfilters/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFindingsFilterRequest"
      },
      "output": {
        "shape": "GetFindingsFilterResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about the criteria and other settings for a findings filter.</p>"
    },
    "GetInvitationsCount": {
      "name": "GetInvitationsCount",
      "http": {
        "method": "GET",
        "requestUri": "/invitations/count",
        "responseCode": 200
      },
      "input": {
        "shape": "GetInvitationsCountRequest"
      },
      "output": {
        "shape": "GetInvitationsCountResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves the count of Amazon Macie membership invitations that were received by an account.</p>"
    },
    "GetMacieSession": {
      "name": "GetMacieSession",
      "http": {
        "method": "GET",
        "requestUri": "/macie",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMacieSessionRequest"
      },
      "output": {
        "shape": "GetMacieSessionResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about the current status and configuration settings for an Amazon Macie account.</p>"
    },
    "GetMasterAccount": {
      "name": "GetMasterAccount",
      "http": {
        "method": "GET",
        "requestUri": "/master",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMasterAccountRequest"
      },
      "output": {
        "shape": "GetMasterAccountResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about the Amazon Macie master account for an account.</p>"
    },
    "GetMember": {
      "name": "GetMember",
      "http": {
        "method": "GET",
        "requestUri": "/members/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMemberRequest"
      },
      "output": {
        "shape": "GetMemberResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about a member account that's associated with an Amazon Macie master account.</p>"
    },
    "GetUsageStatistics": {
      "name": "GetUsageStatistics",
      "http": {
        "method": "POST",
        "requestUri": "/usage/statistics",
        "responseCode": 200
      },
      "input": {
        "shape": "GetUsageStatisticsRequest"
      },
      "output": {
        "shape": "GetUsageStatisticsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves (queries) quotas and aggregated usage data for one or more accounts.</p>"
    },
    "GetUsageTotals": {
      "name": "GetUsageTotals",
      "http": {
        "method": "GET",
        "requestUri": "/usage",
        "responseCode": 200
      },
      "input": {
        "shape": "GetUsageTotalsRequest"
      },
      "output": {
        "shape": "GetUsageTotalsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves (queries) aggregated usage data for an account.</p>"
    },
    "ListClassificationJobs": {
      "name": "ListClassificationJobs",
      "http": {
        "method": "POST",
        "requestUri": "/jobs/list",
        "responseCode": 200
      },
      "input": {
        "shape": "ListClassificationJobsRequest"
      },
      "output": {
        "shape": "ListClassificationJobsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves a subset of information about one or more classification jobs.</p>"
    },
    "ListCustomDataIdentifiers": {
      "name": "ListCustomDataIdentifiers",
      "http": {
        "method": "POST",
        "requestUri": "/custom-data-identifiers/list",
        "responseCode": 200
      },
      "input": {
        "shape": "ListCustomDataIdentifiersRequest"
      },
      "output": {
        "shape": "ListCustomDataIdentifiersResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves a subset of information about all the custom data identifiers for an account.</p>"
    },
    "ListFindings": {
      "name": "ListFindings",
      "http": {
        "method": "POST",
        "requestUri": "/findings",
        "responseCode": 200
      },
      "input": {
        "shape": "ListFindingsRequest"
      },
      "output": {
        "shape": "ListFindingsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Retrieves a subset of information about one or more findings.</p>"
    },
    "ListFindingsFilters": {
      "name": "ListFindingsFilters",
      "http": {
        "method": "GET",
        "requestUri": "/findingsfilters",
        "responseCode": 200
      },
      "input": {
        "shape": "ListFindingsFiltersRequest"
      },
      "output": {
        "shape": "ListFindingsFiltersResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves a subset of information about all the findings filters for an account.</p>"
    },
    "ListInvitations": {
      "name": "ListInvitations",
      "http": {
        "method": "GET",
        "requestUri": "/invitations",
        "responseCode": 200
      },
      "input": {
        "shape": "ListInvitationsRequest"
      },
      "output": {
        "shape": "ListInvitationsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about all the Amazon Macie membership invitations that were received by an account.</p>"
    },
    "ListMembers": {
      "name": "ListMembers",
      "http": {
        "method": "GET",
        "requestUri": "/members",
        "responseCode": 200
      },
      "input": {
        "shape": "ListMembersRequest"
      },
      "output": {
        "shape": "ListMembersResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about the accounts that are associated with an Amazon Macie master account.</p>"
    },
    "ListOrganizationAdminAccounts": {
      "name": "ListOrganizationAdminAccounts",
      "http": {
        "method": "GET",
        "requestUri": "/admin",
        "responseCode": 200
      },
      "input": {
        "shape": "ListOrganizationAdminAccountsRequest"
      },
      "output": {
        "shape": "ListOrganizationAdminAccountsResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Retrieves information about the account that's designated as the delegated administrator of Amazon Macie for an AWS organization.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [],
      "documentation": "<p>Retrieves the tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.</p>"
    },
    "PutClassificationExportConfiguration": {
      "name": "PutClassificationExportConfiguration",
      "http": {
        "method": "PUT",
        "requestUri": "/classification-export-configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "PutClassificationExportConfigurationRequest"
      },
      "output": {
        "shape": "PutClassificationExportConfigurationResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Creates or updates the configuration settings for storing data classification results.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [],
      "documentation": "<p>Adds or updates one or more tags (keys and values) that are associated with a classification job, custom data identifier, findings filter, or member account.</p>"
    },
    "TestCustomDataIdentifier": {
      "name": "TestCustomDataIdentifier",
      "http": {
        "method": "POST",
        "requestUri": "/custom-data-identifiers/test",
        "responseCode": 200
      },
      "input": {
        "shape": "TestCustomDataIdentifierRequest"
      },
      "output": {
        "shape": "TestCustomDataIdentifierResponse",
        "documentation": "<p>The request succeeded.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Tests a custom data identifier.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resourceArn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [],
      "documentation": "<p>Removes one or more tags (keys and values) from a classification job, custom data identifier, findings filter, or member account.</p>"
    },
    "UpdateClassificationJob": {
      "name": "UpdateClassificationJob",
      "http": {
        "method": "PATCH",
        "requestUri": "/jobs/{jobId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateClassificationJobRequest"
      },
      "output": {
        "shape": "UpdateClassificationJobResponse",
        "documentation": "<p>The request succeeded. The job's status was changed and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Cancels a classification job.</p>"
    },
    "UpdateFindingsFilter": {
      "name": "UpdateFindingsFilter",
      "http": {
        "method": "PATCH",
        "requestUri": "/findingsfilters/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateFindingsFilterRequest"
      },
      "output": {
        "shape": "UpdateFindingsFilterResponse",
        "documentation": "<p>The request succeeded. The specified findings filter was updated.</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Updates the criteria and other settings for a findings filter.</p>"
    },
    "UpdateMacieSession": {
      "name": "UpdateMacieSession",
      "http": {
        "method": "PATCH",
        "requestUri": "/macie",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateMacieSessionRequest"
      },
      "output": {
        "shape": "UpdateMacieSessionResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Suspends or re-enables an Amazon Macie account, or updates the configuration settings for a Macie account.</p>"
    },
    "UpdateMemberSession": {
      "name": "UpdateMemberSession",
      "http": {
        "method": "PATCH",
        "requestUri": "/macie/members/{id}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateMemberSessionRequest"
      },
      "output": {
        "shape": "UpdateMemberSessionResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": " <p>Enables an Amazon Macie master account to suspend or re-enable a member account.</p>"
    },
    "UpdateOrganizationConfiguration": {
      "name": "UpdateOrganizationConfiguration",
      "http": {
        "method": "PATCH",
        "requestUri": "/admin/configuration",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateOrganizationConfigurationRequest"
      },
      "output": {
        "shape": "UpdateOrganizationConfigurationResponse",
        "documentation": "<p>The request succeeded and there isn't any content to include in the body of the response (No Content).</p>"
      },
      "errors": [
        {
          "shape": "ValidationException",
          "documentation": "<p>The request failed because it contains a syntax error.</p>"
        },
        {
          "shape": "InternalServerException",
          "documentation": "<p>The request failed due to an unknown internal server error, exception, or failure.</p>"
        },
        {
          "shape": "ServiceQuotaExceededException",
          "documentation": "<p>The request failed because fulfilling the request would exceed one or more service quotas for your account.</p>"
        },
        {
          "shape": "AccessDeniedException",
          "documentation": "<p>The request was denied because you don't have sufficient access to the specified resource.</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>The request failed because the specified resource wasn't found.</p>"
        },
        {
          "shape": "ThrottlingException",
          "documentation": "<p>The request failed because you sent too many requests during a certain amount of time.</p>"
        },
        {
          "shape": "ConflictException",
          "documentation": "<p>The request failed because it conflicts with the current state of the specified resource.</p>"
        }
      ],
      "documentation": "<p>Updates Amazon Macie configuration settings for an AWS organization.</p>"
    }
  },
  "shapes": {
    "AcceptInvitationRequest": {
      "type": "structure",
      "members": {
        "invitationId": {
          "shape": "__string",
          "locationName": "invitationId",
          "documentation": "<p>The unique identifier for the invitation to accept.</p>"
        },
        "masterAccount": {
          "shape": "__string",
          "locationName": "masterAccount",
          "documentation": "<p>The AWS account ID for the account that sent the invitation.</p>"
        }
      },
      "required": [
        "masterAccount",
        "invitationId"
      ]
    },
    "AcceptInvitationResponse": {
      "type": "structure",
      "members": {}
    },
    "AccessControlList": {
      "type": "structure",
      "members": {
        "allowsPublicReadAccess": {
          "shape": "__boolean",
          "locationName": "allowsPublicReadAccess",
          "documentation": "<p>Specifies whether the ACL grants the general public with read access permissions for the bucket.</p>"
        },
        "allowsPublicWriteAccess": {
          "shape": "__boolean",
          "locationName": "allowsPublicWriteAccess",
          "documentation": "<p>Specifies whether the ACL grants the general public with write access permissions for the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about the permissions settings of the bucket-level access control list (ACL) for an S3 bucket.</p>"
    },
    "AccountDetail": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The AWS account ID for the account.</p>"
        },
        "email": {
          "shape": "__string",
          "locationName": "email",
          "documentation": "<p>The email address for the account.</p>"
        }
      },
      "documentation": "<p>Specifies details for an account to associate with an Amazon Macie master account.</p>",
      "required": [
        "email",
        "accountId"
      ]
    },
    "AccountLevelPermissions": {
      "type": "structure",
      "members": {
        "blockPublicAccess": {
          "shape": "BlockPublicAccess",
          "locationName": "blockPublicAccess",
          "documentation": "<p>The block public access settings for the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about account-level permissions settings that apply to an S3 bucket.</p>"
    },
    "AdminAccount": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The AWS account ID for the account.</p>"
        },
        "status": {
          "shape": "AdminStatus",
          "locationName": "status",
          "documentation": "<p>The current status of the account as a delegated administrator of Amazon Macie for the organization.</p>"
        }
      },
      "documentation": "<p>Provides information about an account that's designated as a delegated administrator of Amazon Macie for an AWS organization.</p>"
    },
    "AdminStatus": {
      "type": "string",
      "documentation": "<p>The current status of an account as a delegated administrator of Amazon Macie for an AWS organization.</p>",
      "enum": [
        "ENABLED",
        "DISABLING_IN_PROGRESS"
      ]
    },
    "ApiCallDetails": {
      "type": "structure",
      "members": {
        "api": {
          "shape": "__string",
          "locationName": "api",
          "documentation": "<p>The name of the operation that was invoked most recently and produced the finding.</p>"
        },
        "apiServiceName": {
          "shape": "__string",
          "locationName": "apiServiceName",
          "documentation": "<p>The URL of the AWS service that provides the operation, for example: s3.amazonaws.com.</p>"
        },
        "firstSeen": {
          "shape": "__timestampIso8601",
          "locationName": "firstSeen",
          "documentation": "<p>The first date and time, in UTC and extended ISO 8601 format, when any operation was invoked and produced the finding.</p>"
        },
        "lastSeen": {
          "shape": "__timestampIso8601",
          "locationName": "lastSeen",
          "documentation": "<p>The most recent date and time, in UTC and extended ISO 8601 format, when the specified operation (api) was invoked and produced the finding.</p>"
        }
      },
      "documentation": "<p>Provides information about an API operation that an entity invoked for an affected resource.</p>"
    },
    "AssumedRole": {
      "type": "structure",
      "members": {
        "accessKeyId": {
          "shape": "__string",
          "locationName": "accessKeyId",
          "documentation": "<p>The AWS access key ID that identifies the credentials.</p>"
        },
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account that owns the entity that was used to get the credentials.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity that was used to get the credentials.</p>"
        },
        "principalId": {
          "shape": "__string",
          "locationName": "principalId",
          "documentation": "<p>The unique identifier for the entity that was used to get the credentials.</p>"
        },
        "sessionContext": {
          "shape": "SessionContext",
          "locationName": "sessionContext",
          "documentation": "<p>The details of the session that was created for the credentials, including the entity that issued the session.</p>"
        }
      },
      "documentation": "<p>Provides information about an identity that performed an action on an affected resource by using temporary security credentials. The credentials were obtained using the AssumeRole operation of the AWS Security Token Service (AWS STS) API.</p>"
    },
    "AwsAccount": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account.</p>"
        },
        "principalId": {
          "shape": "__string",
          "locationName": "principalId",
          "documentation": "<p>The unique identifier for the entity that performed the action.</p>"
        }
      },
      "documentation": "<p>Provides information about an AWS account and entity that performed an action on an affected resource. The action was performed using the credentials for an AWS account other than your own account.</p>"
    },
    "AwsService": {
      "type": "structure",
      "members": {
        "invokedBy": {
          "shape": "__string",
          "locationName": "invokedBy",
          "documentation": "<p>The name of the AWS service that performed the action.</p>"
        }
      },
      "documentation": "<p>Provides information about an AWS service that performed an action on an affected resource.</p>"
    },
    "BatchGetCustomDataIdentifierSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>"
        },
        "createdAt": {
          "shape": "__timestampIso8601",
          "locationName": "createdAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>"
        },
        "deleted": {
          "shape": "__boolean",
          "locationName": "deleted",
          "documentation": "<p>Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier.</p>"
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The custom description of the custom data identifier.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the custom data identifier.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The custom name of the custom data identifier.</p>"
        }
      },
      "documentation": "<p>Provides information about a custom data identifier.</p>"
    },
    "BatchGetCustomDataIdentifiersRequest": {
      "type": "structure",
      "members": {
        "ids": {
          "shape": "__listOf__string",
          "locationName": "ids",
          "documentation": "<p>An array of strings that lists the unique identifiers for the custom data identifiers to retrieve information about.</p>"
        }
      }
    },
    "BatchGetCustomDataIdentifiersResponse": {
      "type": "structure",
      "members": {
        "customDataIdentifiers": {
          "shape": "__listOfBatchGetCustomDataIdentifierSummary",
          "locationName": "customDataIdentifiers",
          "documentation": "<p>An array of objects, one for each custom data identifier that meets the criteria specified in the request.</p>"
        },
        "notFoundIdentifierIds": {
          "shape": "__listOf__string",
          "locationName": "notFoundIdentifierIds",
          "documentation": "<p>An array of identifiers, one for each identifier that was specified in the request, but doesn't correlate to an existing custom data identifier.</p>"
        }
      }
    },
    "BlockPublicAccess": {
      "type": "structure",
      "members": {
        "blockPublicAcls": {
          "shape": "__boolean",
          "locationName": "blockPublicAcls",
          "documentation": "<p>Specifies whether Amazon S3 blocks public access control lists (ACLs) for the bucket and objects in the bucket.</p>"
        },
        "blockPublicPolicy": {
          "shape": "__boolean",
          "locationName": "blockPublicPolicy",
          "documentation": "<p>Specifies whether Amazon S3 blocks public bucket policies for the bucket.</p>"
        },
        "ignorePublicAcls": {
          "shape": "__boolean",
          "locationName": "ignorePublicAcls",
          "documentation": "<p>Specifies whether Amazon S3 ignores public ACLs for the bucket and objects in the bucket.</p>"
        },
        "restrictPublicBuckets": {
          "shape": "__boolean",
          "locationName": "restrictPublicBuckets",
          "documentation": "<p>Specifies whether Amazon S3 restricts public bucket policies for the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about the block public access settings for an S3 bucket. These settings can apply to a bucket at the account level or bucket level. For detailed information about each setting, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html\">Using Amazon S3 block public access</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>"
    },
    "BucketCountByEffectivePermission": {
      "type": "structure",
      "members": {
        "publiclyAccessible": {
          "shape": "__long",
          "locationName": "publiclyAccessible",
          "documentation": "<p>The total number of buckets that allow the general public to have read or write access to the bucket.</p>"
        },
        "publiclyReadable": {
          "shape": "__long",
          "locationName": "publiclyReadable",
          "documentation": "<p>The total number of buckets that allow the general public to have read access to the bucket.</p>"
        },
        "publiclyWritable": {
          "shape": "__long",
          "locationName": "publiclyWritable",
          "documentation": "<p>The total number of buckets that allow the general public to have write access to the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about the number of S3 buckets that are publicly accessible based on a combination of permissions settings for each bucket.</p>"
    },
    "BucketCountByEncryptionType": {
      "type": "structure",
      "members": {
        "kmsManaged": {
          "shape": "__long",
          "locationName": "kmsManaged",
          "documentation": " <p>The total number of buckets that use an AWS Key Management Service (AWS KMS) customer master key (CMK) to encrypt objects. These buckets use AWS KMS AWS-managed (AWS-KMS) encryption or AWS KMS customer-managed (SSE-KMS) encryption.</p>"
        },
        "s3Managed": {
          "shape": "__long",
          "locationName": "s3Managed",
          "documentation": "<p>The total number of buckets that use an Amazon S3-managed key to encrypt objects. These buckets use Amazon S3-managed (SSE-S3) encryption.</p>"
        },
        "unencrypted": {
          "shape": "__long",
          "locationName": "unencrypted",
          "documentation": "<p>The total number of buckets that don't encrypt objects by default. Default encryption is disabled for these buckets.</p>"
        }
      },
      "documentation": "<p>Provides information about the number of S3 buckets that use certain types of server-side encryption or don't encrypt objects by default.</p>"
    },
    "BucketCountBySharedAccessType": {
      "type": "structure",
      "members": {
        "external": {
          "shape": "__long",
          "locationName": "external",
          "documentation": "<p>The total number of buckets that are shared with an AWS account that isn't part of the same Amazon Macie organization.</p>"
        },
        "internal": {
          "shape": "__long",
          "locationName": "internal",
          "documentation": "<p>The total number of buckets that are shared with an AWS account that's part of the same Amazon Macie organization.</p>"
        },
        "notShared": {
          "shape": "__long",
          "locationName": "notShared",
          "documentation": "<p>The total number of buckets that aren't shared with any other AWS accounts.</p>"
        }
      },
      "documentation": "<p>Provides information about the number of S3 buckets that are shared with other AWS accounts.</p>"
    },
    "BucketCriteria": {
      "type": "map",
      "documentation": "<p>Specifies, as a map, one or more attribute-based conditions that filter the results of a query for information about S3 buckets.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "BucketCriteriaAdditionalProperties"
      }
    },
    "BucketCriteriaAdditionalProperties": {
      "type": "structure",
      "members": {
        "eq": {
          "shape": "__listOf__string",
          "locationName": "eq",
          "documentation": "<p>An equal to condition to apply to a specified attribute value for buckets.</p>"
        },
        "gt": {
          "shape": "__long",
          "locationName": "gt",
          "documentation": "<p>A greater than condition to apply to a specified attribute value for buckets.</p>"
        },
        "gte": {
          "shape": "__long",
          "locationName": "gte",
          "documentation": "<p>A greater than or equal to condition to apply to a specified attribute value for buckets.</p>"
        },
        "lt": {
          "shape": "__long",
          "locationName": "lt",
          "documentation": "<p>A less than condition to apply to a specified attribute value for buckets.</p>"
        },
        "lte": {
          "shape": "__long",
          "locationName": "lte",
          "documentation": "<p>A less than or equal to condition to apply to a specified attribute value for buckets.</p>"
        },
        "neq": {
          "shape": "__listOf__string",
          "locationName": "neq",
          "documentation": "<p>A not equal to condition to apply to a specified attribute value for buckets.</p>"
        },
        "prefix": {
          "shape": "__string",
          "locationName": "prefix",
          "documentation": "<p>The prefix of the buckets to include in the results.</p>"
        }
      },
      "documentation": "<p>Specifies the operator to use in an attribute-based condition that filters the results of a query for information about S3 buckets.</p>"
    },
    "BucketLevelPermissions": {
      "type": "structure",
      "members": {
        "accessControlList": {
          "shape": "AccessControlList",
          "locationName": "accessControlList",
          "documentation": "<p>The permissions settings of the access control list (ACL) for the bucket. This value is null if an ACL hasn't been defined for the bucket.</p>"
        },
        "blockPublicAccess": {
          "shape": "BlockPublicAccess",
          "locationName": "blockPublicAccess",
          "documentation": "<p>The block public access settings for the bucket.</p>"
        },
        "bucketPolicy": {
          "shape": "BucketPolicy",
          "locationName": "bucketPolicy",
          "documentation": "<p>The permissions settings of the bucket policy for the bucket. This value is null if a bucket policy hasn't been defined for the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about the bucket-level permissions settings for an S3 bucket.</p>"
    },
    "BucketMetadata": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account that owns the bucket.</p>"
        },
        "bucketArn": {
          "shape": "__string",
          "locationName": "bucketArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the bucket.</p>"
        },
        "bucketCreatedAt": {
          "shape": "__timestampIso8601",
          "locationName": "bucketCreatedAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the bucket was created.</p>"
        },
        "bucketName": {
          "shape": "__string",
          "locationName": "bucketName",
          "documentation": "<p>The name of the bucket.</p>"
        },
        "classifiableObjectCount": {
          "shape": "__long",
          "locationName": "classifiableObjectCount",
          "documentation": "<p>The total number of objects that Amazon Macie can analyze in the bucket. These objects use a supported file or storage format and storage class.</p>"
        },
        "classifiableSizeInBytes": {
          "shape": "__long",
          "locationName": "classifiableSizeInBytes",
          "documentation": "<p>The total storage size, in bytes, of the objects that Amazon Macie can analyze in the bucket. These objects use a supported file or storage format and storage class.</p>"
        },
        "lastUpdated": {
          "shape": "__timestampIso8601",
          "locationName": "lastUpdated",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently retrieved data about the bucket from Amazon S3.</p>"
        },
        "objectCount": {
          "shape": "__long",
          "locationName": "objectCount",
          "documentation": "<p>The total number of objects in the bucket.</p>"
        },
        "objectCountByEncryptionType": {
          "shape": "ObjectCountByEncryptionType",
          "locationName": "objectCountByEncryptionType",
          "documentation": "<p>The total number of objects that are in the bucket, grouped by server-side encryption type. This includes a grouping that reports the total number of objects that aren't encrypted or use client-side encryption.</p>"
        },
        "publicAccess": {
          "shape": "BucketPublicAccess",
          "locationName": "publicAccess",
          "documentation": "<p>Specifies whether the bucket is publicly accessible. If this value is true, an access control list (ACL), bucket policy, or block public access settings allow the bucket to be accessed by the general public.</p>"
        },
        "region": {
          "shape": "__string",
          "locationName": "region",
          "documentation": "<p>The AWS Region that hosts the bucket.</p>"
        },
        "replicationDetails": {
          "shape": "ReplicationDetails",
          "locationName": "replicationDetails",
          "documentation": "<p>Specifies whether the bucket is configured to replicate one or more objects to buckets for other AWS accounts and, if so, which accounts.</p>"
        },
        "sharedAccess": {
          "shape": "SharedAccess",
          "locationName": "sharedAccess",
          "documentation": " <p>Specifies whether the bucket is shared with another AWS account. Possible values are:</p> <ul><li><p>EXTERNAL - The bucket is shared with an AWS account that isn’t part of the same Amazon Macie organization.</p></li> <li><p>INTERNAL - The bucket is shared with an AWS account that's part of the same Amazon Macie organization.</p></li> <li><p>NOT_SHARED - The bucket isn't shared with other AWS accounts.</p></li> <li><p>UNKNOWN - Amazon Macie wasn't able to evaluate the shared access settings for the bucket.</p></li></ul>"
        },
        "sizeInBytes": {
          "shape": "__long",
          "locationName": "sizeInBytes",
          "documentation": "<p>The total storage size, in bytes, of the bucket.</p>"
        },
        "sizeInBytesCompressed": {
          "shape": "__long",
          "locationName": "sizeInBytesCompressed",
          "documentation": "<p>The total compressed storage size, in bytes, of the bucket.</p>"
        },
        "tags": {
          "shape": "__listOfKeyValuePair",
          "locationName": "tags",
          "documentation": "<p>An array that specifies the tags (keys and values) that are associated with the bucket.</p>"
        },
        "unclassifiableObjectCount": {
          "shape": "ObjectLevelStatistics",
          "locationName": "unclassifiableObjectCount",
          "documentation": "<p>The total number of objects that Amazon Macie can't analyze in the bucket. These objects use an unsupported file or storage format or storage class.</p>"
        },
        "unclassifiableObjectSizeInBytes": {
          "shape": "ObjectLevelStatistics",
          "locationName": "unclassifiableObjectSizeInBytes",
          "documentation": "<p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the bucket. These objects use an unsupported file or storage format or storage class.</p>"
        },
        "versioning": {
          "shape": "__boolean",
          "locationName": "versioning",
          "documentation": "<p>Specifies whether versioning is enabled for the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about an S3 bucket that Amazon Macie monitors and analyzes.</p>"
    },
    "BucketPermissionConfiguration": {
      "type": "structure",
      "members": {
        "accountLevelPermissions": {
          "shape": "AccountLevelPermissions",
          "locationName": "accountLevelPermissions",
          "documentation": "<p>The account-level permissions settings that apply to the bucket.</p>"
        },
        "bucketLevelPermissions": {
          "shape": "BucketLevelPermissions",
          "locationName": "bucketLevelPermissions",
          "documentation": "<p>The bucket-level permissions settings for the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about the account-level and bucket-level permissions settings for an S3 bucket.</p>"
    },
    "BucketPolicy": {
      "type": "structure",
      "members": {
        "allowsPublicReadAccess": {
          "shape": "__boolean",
          "locationName": "allowsPublicReadAccess",
          "documentation": "<p>Specifies whether the bucket policy allows the general public to have read access to the bucket.</p>"
        },
        "allowsPublicWriteAccess": {
          "shape": "__boolean",
          "locationName": "allowsPublicWriteAccess",
          "documentation": "<p>Specifies whether the bucket policy allows the general public to have write access to the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about the permissions settings of a bucket policy for an S3 bucket.</p>"
    },
    "BucketPublicAccess": {
      "type": "structure",
      "members": {
        "effectivePermission": {
          "shape": "EffectivePermission",
          "locationName": "effectivePermission",
          "documentation": " <p>Specifies whether the bucket is publicly accessible due to the combination of permissions settings that apply to the bucket. Possible values are:</p> <ul><li><p>NOT_PUBLIC - The bucket isn't publicly accessible.</p></li> <li><p>PUBLIC - The bucket is publicly accessible.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket is publicly accessible.</p></li></ul>"
        },
        "permissionConfiguration": {
          "shape": "BucketPermissionConfiguration",
          "locationName": "permissionConfiguration",
          "documentation": "<p>The account-level and bucket-level permissions for the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about the permissions settings that determine whether an S3 bucket is publicly accessible.</p>"
    },
    "BucketSortCriteria": {
      "type": "structure",
      "members": {
        "attributeName": {
          "shape": "__string",
          "locationName": "attributeName",
          "documentation": "<p>The name of the attribute to sort the results by. This value can be the name of any property that Amazon Macie defines as bucket metadata, such as bucketName or accountId.</p>"
        },
        "orderBy": {
          "shape": "OrderBy",
          "locationName": "orderBy",
          "documentation": "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
        }
      },
      "documentation": "<p>Specifies criteria for sorting the results of a query for information about S3 buckets.</p>"
    },
    "ClassificationDetails": {
      "type": "structure",
      "members": {
        "detailedResultsLocation": {
          "shape": "__string",
          "locationName": "detailedResultsLocation",
          "documentation": "<p>The path to the folder or file (in Amazon S3) that contains the corresponding sensitive data discovery results for the finding. If a finding applies to a large archive or compressed file, this is a path to a folder. Otherwise, this is a path to a file.</p>"
        },
        "jobArn": {
          "shape": "__string",
          "locationName": "jobArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the classification job that produced the finding.</p>"
        },
        "jobId": {
          "shape": "__string",
          "locationName": "jobId",
          "documentation": "<p>The unique identifier for the classification job that produced the finding.</p>"
        },
        "result": {
          "shape": "ClassificationResult",
          "locationName": "result",
          "documentation": "<p>The status and other details for the finding.</p>"
        }
      },
      "documentation": "<p>Provides information about a sensitive data finding, including the classification job that produced the finding.</p>"
    },
    "ClassificationExportConfiguration": {
      "type": "structure",
      "members": {
        "s3Destination": {
          "shape": "S3Destination",
          "locationName": "s3Destination",
          "documentation": "<p>The S3 bucket to store data classification results in, and the encryption settings to use when storing results in that bucket.</p>"
        }
      },
      "documentation": "<p>Specifies where to store data classification results, and the encryption settings to use when storing results in that location. Currently, you can store classification results only in an S3 bucket.</p>"
    },
    "ClassificationResult": {
      "type": "structure",
      "members": {
        "customDataIdentifiers": {
          "shape": "CustomDataIdentifiers",
          "locationName": "customDataIdentifiers",
          "documentation": "<p>The number of occurrences of the data that produced the finding, and the custom data identifiers that detected the data.</p>"
        },
        "mimeType": {
          "shape": "__string",
          "locationName": "mimeType",
          "documentation": "<p>The type of content, expressed as a MIME type, that the finding applies to. For example, application/gzip, for a GNU Gzip compressed archive file, or application/pdf, for an Adobe PDF file.</p>"
        },
        "sensitiveData": {
          "shape": "SensitiveData",
          "locationName": "sensitiveData",
          "documentation": "<p>The category and number of occurrences of the sensitive data that produced the finding.</p>"
        },
        "sizeClassified": {
          "shape": "__long",
          "locationName": "sizeClassified",
          "documentation": "<p>The total size, in bytes, of the data that the finding applies to.</p>"
        },
        "status": {
          "shape": "ClassificationResultStatus",
          "locationName": "status",
          "documentation": "<p>The status of the finding.</p>"
        }
      },
      "documentation": "<p>Provides detailed information about a sensitive data finding, including the types and number of occurrences of the sensitive data that was found.</p>"
    },
    "ClassificationResultStatus": {
      "type": "structure",
      "members": {
        "code": {
          "shape": "__string",
          "locationName": "code",
          "documentation": " <p>The status of the finding. Possible values are:</p> <ul><li><p>COMPLETE - Amazon Macie successfully completed its analysis of the object that the finding applies to.</p></li> <li><p>PARTIAL - Macie was able to analyze only a subset of the data in the object that the finding applies to. For example, the object is a compressed or archive file that contains files in an unsupported format.</p></li> <li><p>SKIPPED - Macie wasn't able to analyze the object that the finding applies to. For example, the object is a malformed file or a file that's in an unsupported format.</p></li></ul>"
        },
        "reason": {
          "shape": "__string",
          "locationName": "reason",
          "documentation": "<p>A brief description of the status of the finding. Amazon Macie uses this value to notify you of any errors, warnings, or considerations that might impact your analysis of the finding.</p>"
        }
      },
      "documentation": "<p>Provides information about the status of a sensitive data finding.</p>"
    },
    "CreateClassificationJobRequest": {
      "type": "structure",
      "members": {
        "clientToken": {
          "shape": "__string",
          "locationName": "clientToken",
          "documentation": "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "customDataIdentifierIds": {
          "shape": "__listOf__string",
          "locationName": "customDataIdentifierIds",
          "documentation": "<p>The custom data identifiers to use for data analysis and classification.</p>"
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>A custom description of the job. The description can contain as many as 200 characters.</p>"
        },
        "initialRun": {
          "shape": "__boolean",
          "locationName": "initialRun",
          "documentation": "<p>Specifies whether to analyze all existing, eligible objects immediately after the job is created.</p>"
        },
        "jobType": {
          "shape": "JobType",
          "locationName": "jobType",
          "documentation": "<p>The schedule for running the job. Valid values are:</p> <ul><li><p>ONE_TIME - Run the job only once. If you specify this value, don't specify a value for the scheduleFrequency property.</p></li> <li><p>SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the scheduleFrequency property to define the recurrence pattern for the job.</p></li></ul>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>A custom name for the job. The name can contain as many as 500 characters.</p>"
        },
        "s3JobDefinition": {
          "shape": "S3JobDefinition",
          "locationName": "s3JobDefinition",
          "documentation": "<p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>"
        },
        "samplingPercentage": {
          "shape": "__integer",
          "locationName": "samplingPercentage",
          "documentation": "<p>The sampling depth, as a percentage, to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.</p>"
        },
        "scheduleFrequency": {
          "shape": "JobScheduleFrequency",
          "locationName": "scheduleFrequency",
          "documentation": "<p>The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value of the jobType property to ONE_TIME.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that specifies the tags to associate with the job.</p> <p>A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
        }
      },
      "required": [
        "s3JobDefinition",
        "jobType",
        "clientToken",
        "name"
      ]
    },
    "CreateClassificationJobResponse": {
      "type": "structure",
      "members": {
        "jobArn": {
          "shape": "__string",
          "locationName": "jobArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the job.</p>"
        },
        "jobId": {
          "shape": "__string",
          "locationName": "jobId",
          "documentation": "<p>The unique identifier for the job.</p>"
        }
      }
    },
    "CreateCustomDataIdentifierRequest": {
      "type": "structure",
      "members": {
        "clientToken": {
          "shape": "__string",
          "locationName": "clientToken",
          "documentation": "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>A custom description of the custom data identifier. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a custom data identifier. Other users of your account might be able to see the identifier's description, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
        },
        "ignoreWords": {
          "shape": "__listOf__string",
          "locationName": "ignoreWords",
          "documentation": "<p>An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.</p>"
        },
        "keywords": {
          "shape": "__listOf__string",
          "locationName": "keywords",
          "documentation": "<p>An array that lists specific character sequences (keywords), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 4 - 90 characters. Keywords aren't case sensitive.</p>"
        },
        "maximumMatchDistance": {
          "shape": "__integer",
          "locationName": "maximumMatchDistance",
          "documentation": "<p>The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>A custom name for the custom data identifier. The name can contain as many as 128 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a custom data identifier. Other users of your account might be able to see the identifier's name, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
        },
        "regex": {
          "shape": "__string",
          "locationName": "regex",
          "documentation": "<p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that specifies the tags to associate with the custom data identifier.</p> <p>A custom data identifier can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
        }
      }
    },
    "CreateCustomDataIdentifierResponse": {
      "type": "structure",
      "members": {
        "customDataIdentifierId": {
          "shape": "__string",
          "locationName": "customDataIdentifierId",
          "documentation": "<p>The unique identifier for the custom data identifier that was created.</p>"
        }
      }
    },
    "CreateFindingsFilterRequest": {
      "type": "structure",
      "members": {
        "action": {
          "shape": "FindingsFilterAction",
          "locationName": "action",
          "documentation": "<p>The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>"
        },
        "clientToken": {
          "shape": "__string",
          "locationName": "clientToken",
          "documentation": "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see the filter's description, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
        },
        "findingCriteria": {
          "shape": "FindingCriteria",
          "locationName": "findingCriteria",
          "documentation": "<p>The criteria to use to filter findings.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see the filter's name, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
        },
        "position": {
          "shape": "__integer",
          "locationName": "position",
          "documentation": "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that specifies the tags to associate with the filter.</p> <p>A findings filter can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
        }
      },
      "required": [
        "action",
        "findingCriteria",
        "name"
      ]
    },
    "CreateFindingsFilterResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the filter that was created.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the filter that was created.</p>"
        }
      }
    },
    "CreateInvitationsRequest": {
      "type": "structure",
      "members": {
        "accountIds": {
          "shape": "__listOf__string",
          "locationName": "accountIds",
          "documentation": "<p>An array that lists AWS account IDs, one for each account to send the invitation to.</p>"
        },
        "disableEmailNotification": {
          "shape": "__boolean",
          "locationName": "disableEmailNotification",
          "documentation": "<p>Specifies whether to send an email notification to the root user of each account that the invitation will be sent to. This notification is in addition to an alert that the root user receives in AWS Personal Health Dashboard. To send an email notification to the root user of each account, set this value to true.</p>"
        },
        "message": {
          "shape": "__string",
          "locationName": "message",
          "documentation": "<p>A custom message to include in the invitation. Amazon Macie adds this message to the standard content that it sends for an invitation.</p>"
        }
      },
      "required": [
        "accountIds"
      ]
    },
    "CreateInvitationsResponse": {
      "type": "structure",
      "members": {
        "unprocessedAccounts": {
          "shape": "__listOfUnprocessedAccount",
          "locationName": "unprocessedAccounts",
          "documentation": "<p>An array of objects, one for each account whose invitation hasn't been processed. Each object identifies the account and explains why the invitation hasn't been processed for the account.</p>"
        }
      }
    },
    "CreateMemberRequest": {
      "type": "structure",
      "members": {
        "account": {
          "shape": "AccountDetail",
          "locationName": "account",
          "documentation": "<p>The details for the account to associate with the master account.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie.</p> <p>An account can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
        }
      },
      "required": [
        "account"
      ]
    },
    "CreateMemberResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the account that was associated with the master account.</p>"
        }
      }
    },
    "CreateSampleFindingsRequest": {
      "type": "structure",
      "members": {
        "findingTypes": {
          "shape": "__listOfFindingType",
          "locationName": "findingTypes",
          "documentation": "<p>An array that lists one or more types of findings to include in the set of sample findings. Currently, the only supported value is Policy:IAMUser/S3BucketEncryptionDisabled.</p> "
        }
      }
    },
    "CreateSampleFindingsResponse": {
      "type": "structure",
      "members": {}
    },
    "Criterion": {
      "type": "map",
      "documentation": "<p>Specifies a condition that defines a property, operator, and value to use to filter the results of a query for findings.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "CriterionAdditionalProperties"
      }
    },
    "CriterionAdditionalProperties": {
      "type": "structure",
      "members": {
        "eq": {
          "shape": "__listOf__string",
          "locationName": "eq",
          "documentation": "<p>An equal to condition to apply to a specified property value for findings.</p>"
        },
        "gt": {
          "shape": "__long",
          "locationName": "gt",
          "documentation": "<p>A greater than condition to apply to a specified property value for findings.</p>"
        },
        "gte": {
          "shape": "__long",
          "locationName": "gte",
          "documentation": "<p>A greater than or equal to condition to apply to a specified property value for findings.</p>"
        },
        "lt": {
          "shape": "__long",
          "locationName": "lt",
          "documentation": "<p>A less than condition to apply to a specified property value for findings.</p>"
        },
        "lte": {
          "shape": "__long",
          "locationName": "lte",
          "documentation": "<p>A less than or equal to condition to apply to a specified property value for findings.</p>"
        },
        "neq": {
          "shape": "__listOf__string",
          "locationName": "neq",
          "documentation": "<p>A not equal to condition to apply to a specified property value for findings.</p>"
        }
      },
      "documentation": "<p>Specifies the operator to use in a property-based condition that filters the results of a query for findings.</p>"
    },
    "Currency": {
      "type": "string",
      "documentation": "<p>The type of currency that data for a usage metric is reported in. Possible values are:</p>",
      "enum": [
        "USD"
      ]
    },
    "CustomDataIdentifierSummary": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>"
        },
        "createdAt": {
          "shape": "__timestampIso8601",
          "locationName": "createdAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>"
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The custom description of the custom data identifier.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the custom data identifier.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The custom name of the custom data identifier.</p>"
        }
      },
      "documentation": "<p>Provides information about a custom data identifier.</p>"
    },
    "CustomDataIdentifiers": {
      "type": "structure",
      "members": {
        "detections": {
          "shape": "CustomDetections",
          "locationName": "detections",
          "documentation": "<p>The custom data identifiers that detected the data, and the number of occurrences of the data that each identifier detected.</p>"
        },
        "totalCount": {
          "shape": "__long",
          "locationName": "totalCount",
          "documentation": "<p>The total number of occurrences of the data that was detected by the custom data identifiers and produced the finding.</p>"
        }
      },
      "documentation": "<p>Provides information about the number of occurrences of the data that produced a sensitive data finding, and the custom data identifiers that detected the data for the finding.</p>"
    },
    "CustomDetection": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>"
        },
        "count": {
          "shape": "__long",
          "locationName": "count",
          "documentation": "<p>The total number of occurrences of the data that the custom data identifier detected for the finding.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the custom data identifier.</p>"
        }
      },
      "documentation": "<p>Provides information about a custom data identifier that produced a sensitive data finding, and the number of occurrences of the data that it detected for the finding.</p>"
    },
    "CustomDetections": {
      "type": "list",
      "documentation": "<p>Provides information about custom data identifiers that produced a sensitive data finding, and the number of occurrences of the data that each identifier detected.</p>",
      "member": {
        "shape": "CustomDetection"
      }
    },
    "DailySchedule": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Specifies that a classification job runs once a day, every day. This is an empty object.</p>"
    },
    "DayOfWeek": {
      "type": "string",
      "enum": [
        "SUNDAY",
        "MONDAY",
        "TUESDAY",
        "WEDNESDAY",
        "THURSDAY",
        "FRIDAY",
        "SATURDAY"
      ]
    },
    "DeclineInvitationsRequest": {
      "type": "structure",
      "members": {
        "accountIds": {
          "shape": "__listOf__string",
          "locationName": "accountIds",
          "documentation": "<p>An array that lists AWS account IDs, one for each account that sent an invitation to decline.</p>"
        }
      },
      "required": [
        "accountIds"
      ]
    },
    "DeclineInvitationsResponse": {
      "type": "structure",
      "members": {
        "unprocessedAccounts": {
          "shape": "__listOfUnprocessedAccount",
          "locationName": "unprocessedAccounts",
          "documentation": "<p>An array of objects, one for each account whose invitation hasn't been declined. Each object identifies the account and explains why the request hasn't been processed for that account.</p>"
        }
      }
    },
    "DefaultDetection": {
      "type": "structure",
      "members": {
        "count": {
          "shape": "__long",
          "locationName": "count",
          "documentation": "<p>The total number of occurrences of the type of data that was detected.</p>"
        },
        "type": {
          "shape": "__string",
          "locationName": "type",
          "documentation": "<p>The type of data that was detected. For example, AWS_CREDENTIALS, PHONE_NUMBER, or ADDRESS.</p>"
        }
      },
      "documentation": "<p>Provides information about sensitive data that was detected by managed data identifiers and produced a sensitive data finding.</p>"
    },
    "DefaultDetections": {
      "type": "list",
      "documentation": "<p>Provides information about sensitive data that was detected by managed data identifiers and produced a sensitive data finding, and the number of occurrences of each type of sensitive data that was detected.</p>",
      "member": {
        "shape": "DefaultDetection"
      }
    },
    "DeleteCustomDataIdentifierRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        }
      },
      "required": [
        "id"
      ]
    },
    "DeleteCustomDataIdentifierResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteFindingsFilterRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        }
      },
      "required": [
        "id"
      ]
    },
    "DeleteFindingsFilterResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteInvitationsRequest": {
      "type": "structure",
      "members": {
        "accountIds": {
          "shape": "__listOf__string",
          "locationName": "accountIds",
          "documentation": "<p>An array that lists AWS account IDs, one for each account that sent an invitation to delete.</p>"
        }
      },
      "required": [
        "accountIds"
      ]
    },
    "DeleteInvitationsResponse": {
      "type": "structure",
      "members": {
        "unprocessedAccounts": {
          "shape": "__listOfUnprocessedAccount",
          "locationName": "unprocessedAccounts",
          "documentation": "<p>An array of objects, one for each account whose invitation hasn't been deleted. Each object identifies the account and explains why the request hasn't been processed for that account.</p>"
        }
      }
    },
    "DeleteMemberRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        }
      },
      "required": [
        "id"
      ]
    },
    "DeleteMemberResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeBucketsRequest": {
      "type": "structure",
      "members": {
        "criteria": {
          "shape": "BucketCriteria",
          "locationName": "criteria",
          "documentation": "<p>The criteria to use to filter the query results.</p>"
        },
        "maxResults": {
          "shape": "__integer",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of the response. The default value is 50.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        },
        "sortCriteria": {
          "shape": "BucketSortCriteria",
          "locationName": "sortCriteria",
          "documentation": "<p>The criteria to use to sort the query results.</p>"
        }
      }
    },
    "DescribeBucketsResponse": {
      "type": "structure",
      "members": {
        "buckets": {
          "shape": "__listOfBucketMetadata",
          "locationName": "buckets",
          "documentation": "<p>An array of objects, one for each bucket that meets the filter criteria specified in the request.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        }
      }
    },
    "DescribeClassificationJobRequest": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "jobId",
          "documentation": "<p>The unique identifier for the classification job.</p>"
        }
      },
      "required": [
        "jobId"
      ]
    },
    "DescribeClassificationJobResponse": {
      "type": "structure",
      "members": {
        "clientToken": {
          "shape": "__string",
          "locationName": "clientToken",
          "documentation": "<p>The token that was provided to ensure the idempotency of the request to create the job.</p>",
          "idempotencyToken": true
        },
        "createdAt": {
          "shape": "__timestampIso8601",
          "locationName": "createdAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>"
        },
        "customDataIdentifierIds": {
          "shape": "__listOf__string",
          "locationName": "customDataIdentifierIds",
          "documentation": "<p>The custom data identifiers that the job uses to analyze data.</p>"
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The custom description of the job.</p>"
        },
        "initialRun": {
          "shape": "__boolean",
          "locationName": "initialRun",
          "documentation": "<p>Specifies whether the job is configured to analyze all existing, eligible objects immediately after it's created.</p>"
        },
        "jobArn": {
          "shape": "__string",
          "locationName": "jobArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the job.</p>"
        },
        "jobId": {
          "shape": "__string",
          "locationName": "jobId",
          "documentation": "<p>The unique identifier for the job.</p>"
        },
        "jobStatus": {
          "shape": "JobStatus",
          "locationName": "jobStatus",
          "documentation": "<p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job. A job might also be cancelled if ownership of an S3 bucket changed while the job was running, and that change affected the job's access to the bucket.</p></li> <li><p>COMPLETE - Amazon Macie finished processing all the data specified for the job.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to jobs that occur only once.</p></li> <li><p>PAUSED - Amazon Macie started the job, but completion of the job would exceed one or more quotas for your account.</p></li> <li><p>RUNNING - The job is in progress.</p></li></ul>"
        },
        "jobType": {
          "shape": "JobType",
          "locationName": "jobType",
          "documentation": "<p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job ran or will run only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis. The scheduleFrequency property indicates the recurrence pattern for the job.</p></li></ul>"
        },
        "lastRunTime": {
          "shape": "__timestampIso8601",
          "locationName": "lastRunTime",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the job last ran.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The custom name of the job.</p>"
        },
        "s3JobDefinition": {
          "shape": "S3JobDefinition",
          "locationName": "s3JobDefinition",
          "documentation": "<p>The S3 buckets that the job is configured to analyze, and the scope of that analysis.</p>"
        },
        "samplingPercentage": {
          "shape": "__integer",
          "locationName": "samplingPercentage",
          "documentation": "<p>The sampling depth, as a percentage, that determines the percentage of eligible objects that the job analyzes.</p>"
        },
        "scheduleFrequency": {
          "shape": "JobScheduleFrequency",
          "locationName": "scheduleFrequency",
          "documentation": "<p>The recurrence pattern for running the job. If the job is configured to run only once, this value is null.</p>"
        },
        "statistics": {
          "shape": "Statistics",
          "locationName": "statistics",
          "documentation": "<p>The number of times that the job has run and processing statistics for the job's most recent run.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the classification job.</p>"
        }
      }
    },
    "DescribeOrganizationConfigurationRequest": {
      "type": "structure",
      "members": {}
    },
    "DescribeOrganizationConfigurationResponse": {
      "type": "structure",
      "members": {
        "autoEnable": {
          "shape": "__boolean",
          "locationName": "autoEnable",
          "documentation": "<p>Specifies whether Amazon Macie is enabled automatically for accounts that are added to the AWS organization.</p>"
        },
        "maxAccountLimitReached": {
          "shape": "__boolean",
          "locationName": "maxAccountLimitReached",
          "documentation": "<p>Specifies whether the maximum number of Amazon Macie member accounts are already associated with the AWS organization.</p>"
        }
      }
    },
    "DisableMacieRequest": {
      "type": "structure",
      "members": {}
    },
    "DisableMacieResponse": {
      "type": "structure",
      "members": {}
    },
    "DisableOrganizationAdminAccountRequest": {
      "type": "structure",
      "members": {
        "adminAccountId": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "adminAccountId",
          "documentation": "<p>The AWS account ID of the delegated administrator account.</p>"
        }
      },
      "required": [
        "adminAccountId"
      ]
    },
    "DisableOrganizationAdminAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateFromMasterAccountRequest": {
      "type": "structure",
      "members": {}
    },
    "DisassociateFromMasterAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateMemberRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        }
      },
      "required": [
        "id"
      ]
    },
    "DisassociateMemberResponse": {
      "type": "structure",
      "members": {}
    },
    "DomainDetails": {
      "type": "structure",
      "members": {
        "domainName": {
          "shape": "__string",
          "locationName": "domainName",
          "documentation": "<p>The name of the domain.</p>"
        }
      },
      "documentation": "<p>Provides information about the domain name of the device that an entity used to perform an action on an affected resource.</p>"
    },
    "EffectivePermission": {
      "type": "string",
      "enum": [
        "PUBLIC",
        "NOT_PUBLIC",
        "UNKNOWN"
      ]
    },
    "EnableMacieRequest": {
      "type": "structure",
      "members": {
        "clientToken": {
          "shape": "__string",
          "locationName": "clientToken",
          "documentation": "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "findingPublishingFrequency": {
          "shape": "FindingPublishingFrequency",
          "locationName": "findingPublishingFrequency",
          "documentation": "Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events)."
        },
        "status": {
          "shape": "MacieStatus",
          "locationName": "status",
          "documentation": "<p>Specifies the status for the account. To enable Amazon Macie and start all Amazon Macie activities for the account, set this value to ENABLED.</p>"
        }
      }
    },
    "EnableMacieResponse": {
      "type": "structure",
      "members": {}
    },
    "EnableOrganizationAdminAccountRequest": {
      "type": "structure",
      "members": {
        "adminAccountId": {
          "shape": "__string",
          "locationName": "adminAccountId",
          "documentation": "<p>The AWS account ID for the account.</p>"
        },
        "clientToken": {
          "shape": "__string",
          "locationName": "clientToken",
          "documentation": "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        }
      },
      "required": [
        "adminAccountId"
      ]
    },
    "EnableOrganizationAdminAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "EncryptionType": {
      "type": "string",
      "documentation": "<p>The type of server-side encryption that's used to encrypt objects in the S3 bucket. Valid values are:</p>",
      "enum": [
        "NONE",
        "AES256",
        "aws:kms",
        "UNKNOWN"
      ]
    },
    "ErrorCode": {
      "type": "string",
      "documentation": "<p>The source of an error, issue, or delay. Possible values are:</p>",
      "enum": [
        "ClientError",
        "InternalError"
      ]
    },
    "FederatedUser": {
      "type": "structure",
      "members": {
        "accessKeyId": {
          "shape": "__string",
          "locationName": "accessKeyId",
          "documentation": "<p>The AWS access key ID that identifies the credentials.</p>"
        },
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account that owns the entity that was used to get the credentials.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the entity that was used to get the credentials.</p>"
        },
        "principalId": {
          "shape": "__string",
          "locationName": "principalId",
          "documentation": "<p>The unique identifier for the entity that was used to get the credentials.</p>"
        },
        "sessionContext": {
          "shape": "SessionContext",
          "locationName": "sessionContext",
          "documentation": "<p>The details of the session that was created for the credentials, including the entity that issued the session.</p>"
        }
      },
      "documentation": "<p>Provides information about an identity that performed an action on an affected resource by using temporary security credentials. The credentials were obtained using the GetFederationToken operation of the AWS Security Token Service (AWS STS) API.</p>"
    },
    "Finding": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account that the finding applies to. This is typically the account that owns the affected resource.</p>"
        },
        "archived": {
          "shape": "__boolean",
          "locationName": "archived",
          "documentation": "<p>Specifies whether the finding is archived.</p>"
        },
        "category": {
          "shape": "FindingCategory",
          "locationName": "category",
          "documentation": "<p>The category of the finding. Possible values are: CLASSIFICATION, for a sensitive data finding; and, POLICY, for a policy finding.</p>"
        },
        "classificationDetails": {
          "shape": "ClassificationDetails",
          "locationName": "classificationDetails",
          "documentation": "<p>The details of a sensitive data finding. This value is null for a policy finding.</p>"
        },
        "count": {
          "shape": "__long",
          "locationName": "count",
          "documentation": "<p>The total number of occurrences of this finding.</p>"
        },
        "createdAt": {
          "shape": "__timestampIso8601",
          "locationName": "createdAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the finding was created.</p>"
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The description of the finding.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the finding. This is a random string that Amazon Macie generates and assigns to a finding when it creates the finding.</p>"
        },
        "partition": {
          "shape": "__string",
          "locationName": "partition",
          "documentation": "<p>The AWS partition that Amazon Macie created the finding in.</p>"
        },
        "policyDetails": {
          "shape": "PolicyDetails",
          "locationName": "policyDetails",
          "documentation": "<p>The details of a policy finding. This value is null for a sensitive data finding.</p>"
        },
        "region": {
          "shape": "__string",
          "locationName": "region",
          "documentation": "<p>The AWS Region that Amazon Macie created the finding in.</p>"
        },
        "resourcesAffected": {
          "shape": "ResourcesAffected",
          "locationName": "resourcesAffected",
          "documentation": "<p>The resources that the finding applies to.</p>"
        },
        "sample": {
          "shape": "__boolean",
          "locationName": "sample",
          "documentation": "<p>Specifies whether the finding is a sample finding. A <i>sample finding</i> is a finding that uses example data to demonstrate what a finding might contain.</p>"
        },
        "schemaVersion": {
          "shape": "__string",
          "locationName": "schemaVersion",
          "documentation": "<p>The version of the schema that was used to define the data structures in the finding.</p>"
        },
        "severity": {
          "shape": "Severity",
          "locationName": "severity",
          "documentation": "<p>The severity of the finding.</p>"
        },
        "title": {
          "shape": "__string",
          "locationName": "title",
          "documentation": "<p>The brief description of the finding.</p>"
        },
        "type": {
          "shape": "FindingType",
          "locationName": "type",
          "documentation": "<p>The type of the finding.</p>"
        },
        "updatedAt": {
          "shape": "__timestampIso8601",
          "locationName": "updatedAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the finding was last updated. For sensitive data findings, this value is the same as the value for the createdAt property. Sensitive data findings aren't updated.</p>"
        }
      },
      "documentation": "<p>Provides information about a finding.</p>"
    },
    "FindingAction": {
      "type": "structure",
      "members": {
        "actionType": {
          "shape": "FindingActionType",
          "locationName": "actionType",
          "documentation": "<p>The type of action that occurred for the affected resource. This value is typically AWS_API_CALL, which indicates that an entity invoked an API operation for the resource.</p>"
        },
        "apiCallDetails": {
          "shape": "ApiCallDetails",
          "locationName": "apiCallDetails",
          "documentation": "<p>The invocation details of the API operation that an entity invoked for the affected resource, if the value for the actionType property is AWS_API_CALL.</p>"
        }
      },
      "documentation": "<p>Provides information about an action that occurred for a resource and produced a policy finding.</p>"
    },
    "FindingActionType": {
      "type": "string",
      "documentation": "<p>The type of action that occurred for the resource and produced the policy finding:</p>",
      "enum": [
        "AWS_API_CALL"
      ]
    },
    "FindingActor": {
      "type": "structure",
      "members": {
        "domainDetails": {
          "shape": "DomainDetails",
          "locationName": "domainDetails",
          "documentation": "<p>The domain name of the device that the entity used to perform the action on the affected resource.</p>"
        },
        "ipAddressDetails": {
          "shape": "IpAddressDetails",
          "locationName": "ipAddressDetails",
          "documentation": "<p>The IP address of the device that the entity used to perform the action on the affected resource. This object also provides information such as the owner and geographic location for the IP address.</p>"
        },
        "userIdentity": {
          "shape": "UserIdentity",
          "locationName": "userIdentity",
          "documentation": "<p>The type and other characteristics of the entity that performed the action on the affected resource.</p>"
        }
      },
      "documentation": "<p>Provides information about an entity that performed an action that produced a policy finding for a resource.</p>"
    },
    "FindingCategory": {
      "type": "string",
      "documentation": "<p>The category of the finding. Valid values are:</p>",
      "enum": [
        "CLASSIFICATION",
        "POLICY"
      ]
    },
    "FindingCriteria": {
      "type": "structure",
      "members": {
        "criterion": {
          "shape": "Criterion",
          "locationName": "criterion",
          "documentation": "<p>A condition that specifies the property, operator, and value to use to filter the results.</p>"
        }
      },
      "documentation": "<p>Specifies, as a map, one or more property-based conditions that filter the results of a query for findings.</p>"
    },
    "FindingPublishingFrequency": {
      "type": "string",
      "documentation": "<p>The frequency with which Amazon Macie publishes updates to policy findings for an account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events). Valid values are:</p>",
      "enum": [
        "FIFTEEN_MINUTES",
        "ONE_HOUR",
        "SIX_HOURS"
      ]
    },
    "FindingStatisticsSortAttributeName": {
      "type": "string",
      "documentation": "<p>The grouping to sort the results by. Valid values are:</p>",
      "enum": [
        "groupKey",
        "count"
      ]
    },
    "FindingStatisticsSortCriteria": {
      "type": "structure",
      "members": {
        "attributeName": {
          "shape": "FindingStatisticsSortAttributeName",
          "locationName": "attributeName",
          "documentation": "<p>The grouping to sort the results by. Valid values are: count, sort the results by the number of findings in each group of results; and, groupKey, sort the results by the name of each group of results.</p>"
        },
        "orderBy": {
          "shape": "OrderBy",
          "locationName": "orderBy",
          "documentation": "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
        }
      },
      "documentation": "<p>Specifies criteria for sorting the results of a query that retrieves aggregated statistical data about findings.</p>"
    },
    "FindingType": {
      "type": "string",
      "documentation": "<p>The type of finding. Valid values are:</p>",
      "enum": [
        "SensitiveData:S3Object/Multiple",
        "SensitiveData:S3Object/Financial",
        "SensitiveData:S3Object/Personal",
        "SensitiveData:S3Object/Credentials",
        "SensitiveData:S3Object/CustomIdentifier",
        "Policy:IAMUser/S3BucketPublic",
        "Policy:IAMUser/S3BucketSharedExternally",
        "Policy:IAMUser/S3BucketReplicatedExternally",
        "Policy:IAMUser/S3BucketEncryptionDisabled",
        "Policy:IAMUser/S3BlockPublicAccessDisabled"
      ]
    },
    "FindingsFilterAction": {
      "type": "string",
      "documentation": "<p>The action to perform on findings that meet the filter criteria. To suppress (automatically archive) findings that meet the criteria, set this value to ARCHIVE. Valid values are:</p>",
      "enum": [
        "ARCHIVE",
        "NOOP"
      ]
    },
    "FindingsFilterListItem": {
      "type": "structure",
      "members": {
        "action": {
          "shape": "FindingsFilterAction",
          "locationName": "action",
          "documentation": "<p>The action that's performed on findings that meet the filter criteria. Possible values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the filter.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the filter.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The custom name of the filter.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the filter.</p>"
        }
      },
      "documentation": "<p>Provides information about a findings filter.</p>"
    },
    "GetBucketStatisticsRequest": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account.</p>"
        }
      }
    },
    "GetBucketStatisticsResponse": {
      "type": "structure",
      "members": {
        "bucketCount": {
          "shape": "__long",
          "locationName": "bucketCount",
          "documentation": "<p>The total number of buckets.</p>"
        },
        "bucketCountByEffectivePermission": {
          "shape": "BucketCountByEffectivePermission",
          "locationName": "bucketCountByEffectivePermission",
          "documentation": "<p>The total number of buckets that are publicly accessible based on a combination of permissions settings for each bucket.</p>"
        },
        "bucketCountByEncryptionType": {
          "shape": "BucketCountByEncryptionType",
          "locationName": "bucketCountByEncryptionType",
          "documentation": "<p>The total number of buckets, grouped by server-side encryption type. This object also reports the total number of buckets that don't encrypt objects by default.</p>"
        },
        "bucketCountBySharedAccessType": {
          "shape": "BucketCountBySharedAccessType",
          "locationName": "bucketCountBySharedAccessType",
          "documentation": "<p>The total number of buckets that are shared with another AWS account.</p>"
        },
        "classifiableObjectCount": {
          "shape": "__long",
          "locationName": "classifiableObjectCount",
          "documentation": "<p>The total number of objects that Amazon Macie can analyze in the buckets. These objects use a supported file or storage format and storage class.</p>"
        },
        "classifiableSizeInBytes": {
          "shape": "__long",
          "locationName": "classifiableSizeInBytes",
          "documentation": "<p>The total storage size, in bytes, of all the objects that Amazon Macie can analyze in the buckets. These objects use a supported file or storage format and storage class.</p>"
        },
        "lastUpdated": {
          "shape": "__timestampIso8601",
          "locationName": "lastUpdated",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently retrieved data about the buckets from Amazon S3.</p>"
        },
        "objectCount": {
          "shape": "__long",
          "locationName": "objectCount",
          "documentation": "<p>The total number of objects in the buckets.</p>"
        },
        "sizeInBytes": {
          "shape": "__long",
          "locationName": "sizeInBytes",
          "documentation": "<p>The total storage size, in bytes, of the buckets.</p>"
        },
        "sizeInBytesCompressed": {
          "shape": "__long",
          "locationName": "sizeInBytesCompressed",
          "documentation": "<p>The total compressed storage size, in bytes, of the buckets.</p>"
        },
        "unclassifiableObjectCount": {
          "shape": "ObjectLevelStatistics",
          "locationName": "unclassifiableObjectCount",
          "documentation": "<p>The total number of objects that Amazon Macie can't analyze in the buckets. These objects use an unsupported file or storage format or storage class.</p>"
        },
        "unclassifiableObjectSizeInBytes": {
          "shape": "ObjectLevelStatistics",
          "locationName": "unclassifiableObjectSizeInBytes",
          "documentation": "<p>The total storage size, in bytes, of all the objects that Amazon Macie can't analyze in the buckets. These objects use an unsupported file or storage format or storage class.</p>"
        }
      }
    },
    "GetClassificationExportConfigurationRequest": {
      "type": "structure",
      "members": {}
    },
    "GetClassificationExportConfigurationResponse": {
      "type": "structure",
      "members": {
        "configuration": {
          "shape": "ClassificationExportConfiguration",
          "locationName": "configuration",
          "documentation": "<p>The location where data classification results are stored, and the encryption settings that are used when storing results in that location.</p>"
        }
      }
    },
    "GetCustomDataIdentifierRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        }
      },
      "required": [
        "id"
      ]
    },
    "GetCustomDataIdentifierResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>"
        },
        "createdAt": {
          "shape": "__timestampIso8601",
          "locationName": "createdAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>"
        },
        "deleted": {
          "shape": "__boolean",
          "locationName": "deleted",
          "documentation": "<p>Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier.</p>"
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The custom description of the custom data identifier.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the custom data identifier.</p>"
        },
        "ignoreWords": {
          "shape": "__listOf__string",
          "locationName": "ignoreWords",
          "documentation": "<p>An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. Ignore words are case sensitive.</p>"
        },
        "keywords": {
          "shape": "__listOf__string",
          "locationName": "keywords",
          "documentation": "<p>An array that lists specific character sequences (keywords), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. Keywords aren't case sensitive.</p>"
        },
        "maximumMatchDistance": {
          "shape": "__integer",
          "locationName": "maximumMatchDistance",
          "documentation": "<p>The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The custom name of the custom data identifier.</p>"
        },
        "regex": {
          "shape": "__string",
          "locationName": "regex",
          "documentation": "<p>The regular expression (<i>regex</i>) that defines the pattern to match.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the custom data identifier.</p>"
        }
      }
    },
    "GetFindingStatisticsRequest": {
      "type": "structure",
      "members": {
        "findingCriteria": {
          "shape": "FindingCriteria",
          "locationName": "findingCriteria",
          "documentation": "<p>The criteria to use to filter the query results.</p>"
        },
        "groupBy": {
          "shape": "GroupBy",
          "locationName": "groupBy",
          "documentation": "<p>The finding property to use to group the query results. Valid values are:</p> <ul><li><p>classificationDetails.jobId - The unique identifier for the classification job that produced the finding.</p></li> <li><p>resourcesAffected.s3Bucket.name - The name of the S3 bucket that the finding applies to.</p></li> <li><p>severity.description - The severity of the finding, such as High or Medium.</p></li> <li><p>type - The type of finding, such as Policy:IAMUser/S3BucketPublic and SensitiveData:S3Object/Personal.</p></li></ul>"
        },
        "size": {
          "shape": "__integer",
          "locationName": "size",
          "documentation": "<p>The maximum number of items to include in each page of the response.</p>"
        },
        "sortCriteria": {
          "shape": "FindingStatisticsSortCriteria",
          "locationName": "sortCriteria",
          "documentation": "<p>The criteria to use to sort the query results.</p>"
        }
      },
      "required": [
        "groupBy"
      ]
    },
    "GetFindingStatisticsResponse": {
      "type": "structure",
      "members": {
        "countsByGroup": {
          "shape": "__listOfGroupCount",
          "locationName": "countsByGroup",
          "documentation": "<p>An array of objects, one for each group of findings that meet the filter criteria specified in the request.</p>"
        }
      }
    },
    "GetFindingsFilterRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        }
      },
      "required": [
        "id"
      ]
    },
    "GetFindingsFilterResponse": {
      "type": "structure",
      "members": {
        "action": {
          "shape": "FindingsFilterAction",
          "locationName": "action",
          "documentation": "<p>The action that's performed on findings that meet the filter criteria (findingCriteria). Possible values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the filter.</p>"
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>The custom description of the filter.</p>"
        },
        "findingCriteria": {
          "shape": "FindingCriteria",
          "locationName": "findingCriteria",
          "documentation": "<p>The criteria that's used to filter findings.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the filter.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The custom name of the filter.</p>"
        },
        "position": {
          "shape": "__integer",
          "locationName": "position",
          "documentation": "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the filter.</p>"
        }
      }
    },
    "GetFindingsRequest": {
      "type": "structure",
      "members": {
        "findingIds": {
          "shape": "__listOf__string",
          "locationName": "findingIds",
          "documentation": "<p>An array of strings that lists the unique identifiers for the findings to retrieve information about.</p>"
        },
        "sortCriteria": {
          "shape": "SortCriteria",
          "locationName": "sortCriteria",
          "documentation": "<p>The criteria for sorting the results of the request.</p>"
        }
      },
      "required": [
        "findingIds"
      ]
    },
    "GetFindingsResponse": {
      "type": "structure",
      "members": {
        "findings": {
          "shape": "__listOfFinding",
          "locationName": "findings",
          "documentation": "<p>An array of objects, one for each finding that meets the criteria specified in the request.</p>"
        }
      }
    },
    "GetInvitationsCountRequest": {
      "type": "structure",
      "members": {}
    },
    "GetInvitationsCountResponse": {
      "type": "structure",
      "members": {
        "invitationsCount": {
          "shape": "__long",
          "locationName": "invitationsCount",
          "documentation": "<p>The total number of invitations that were received by the account, not including the currently accepted invitation.</p>"
        }
      }
    },
    "GetMacieSessionRequest": {
      "type": "structure",
      "members": {}
    },
    "GetMacieSessionResponse": {
      "type": "structure",
      "members": {
        "createdAt": {
          "shape": "__timestampIso8601",
          "locationName": "createdAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the Amazon Macie account was created.</p>"
        },
        "findingPublishingFrequency": {
          "shape": "FindingPublishingFrequency",
          "locationName": "findingPublishingFrequency",
          "documentation": "<p>The frequency with which Amazon Macie publishes updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events).</p>"
        },
        "serviceRole": {
          "shape": "__string",
          "locationName": "serviceRole",
          "documentation": "<p>The Amazon Resource Name (ARN) of the service-linked role that allows Amazon Macie to monitor and analyze data in AWS resources for the account.</p>"
        },
        "status": {
          "shape": "MacieStatus",
          "locationName": "status",
          "documentation": "<p>The current status of the Amazon Macie account. Possible values are: PAUSED, the account is enabled but all Amazon Macie activities are suspended (paused) for the account; and, ENABLED, the account is enabled and all Amazon Macie activities are enabled for the account.</p>"
        },
        "updatedAt": {
          "shape": "__timestampIso8601",
          "locationName": "updatedAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the Amazon Macie account.</p>"
        }
      }
    },
    "GetMasterAccountRequest": {
      "type": "structure",
      "members": {}
    },
    "GetMasterAccountResponse": {
      "type": "structure",
      "members": {
        "master": {
          "shape": "Invitation",
          "locationName": "master",
          "documentation": "<p>The AWS account ID for the master account. If the accounts are associated by a Macie membership invitation, this object also provides details about the invitation that was sent and accepted to establish the relationship between the accounts.</p>"
        }
      }
    },
    "GetMemberRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        }
      },
      "required": [
        "id"
      ]
    },
    "GetMemberResponse": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The AWS account ID for the account.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the account.</p>"
        },
        "email": {
          "shape": "__string",
          "locationName": "email",
          "documentation": "<p>The email address for the account.</p>"
        },
        "invitedAt": {
          "shape": "__timestampIso8601",
          "locationName": "invitedAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.</p>"
        },
        "masterAccountId": {
          "shape": "__string",
          "locationName": "masterAccountId",
          "documentation": "<p>The AWS account ID for the master account.</p>"
        },
        "relationshipStatus": {
          "shape": "RelationshipStatus",
          "locationName": "relationshipStatus",
          "documentation": "<p>The current status of the relationship between the account and the master account.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the member account in Amazon Macie.</p>"
        },
        "updatedAt": {
          "shape": "__timestampIso8601",
          "locationName": "updatedAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the relationship between the account and the master account.</p>"
        }
      }
    },
    "GetUsageStatisticsRequest": {
      "type": "structure",
      "members": {
        "filterBy": {
          "shape": "__listOfUsageStatisticsFilter",
          "locationName": "filterBy",
          "documentation": "<p>An array of objects, one for each condition to use to filter the query results. If the array contains more than one object, Amazon Macie uses an AND operator to join the conditions specified by the objects.</p>"
        },
        "maxResults": {
          "shape": "__integer",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of the response.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        },
        "sortBy": {
          "shape": "UsageStatisticsSortBy",
          "locationName": "sortBy",
          "documentation": "<p>The criteria to use to sort the query results.</p>"
        }
      }
    },
    "GetUsageStatisticsResponse": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        },
        "records": {
          "shape": "__listOfUsageRecord",
          "locationName": "records",
          "documentation": "<p>An array of objects that contains the results of the query. Each object contains the data for an account that meets the filter criteria specified in the request.</p>"
        }
      }
    },
    "GetUsageTotalsRequest": {
      "type": "structure",
      "members": {}
    },
    "GetUsageTotalsResponse": {
      "type": "structure",
      "members": {
        "usageTotals": {
          "shape": "__listOfUsageTotal",
          "locationName": "usageTotals",
          "documentation": "<p>An array of objects that contains the results of the query. Each object contains the data for a specific usage metric.</p>"
        }
      }
    },
    "GroupBy": {
      "type": "string",
      "enum": [
        "resourcesAffected.s3Bucket.name",
        "type",
        "classificationDetails.jobId",
        "severity.description"
      ]
    },
    "GroupCount": {
      "type": "structure",
      "members": {
        "count": {
          "shape": "__long",
          "locationName": "count",
          "documentation": "<p>The total number of findings in the group of query results.</p>"
        },
        "groupKey": {
          "shape": "__string",
          "locationName": "groupKey",
          "documentation": "<p>The name of the property that defines the group in the query results, as specified by the groupBy property in the query request.</p>"
        }
      },
      "documentation": "<p>Provides a group of results for a query that retrieved aggregated statistical data about findings.</p>"
    },
    "IamUser": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account that's associated with the IAM user who performed the action.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user who performed the action.</p>"
        },
        "principalId": {
          "shape": "__string",
          "locationName": "principalId",
          "documentation": "<p>The unique identifier for the IAM user who performed the action.</p>"
        },
        "userName": {
          "shape": "__string",
          "locationName": "userName",
          "documentation": "<p>The user name of the IAM user who performed the action.</p>"
        }
      },
      "documentation": "<p>Provides information about an AWS Identity and Access Management (IAM) user who performed an action on an affected resource.</p>"
    },
    "Invitation": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The AWS account ID for the account that sent the invitation.</p>"
        },
        "invitationId": {
          "shape": "__string",
          "locationName": "invitationId",
          "documentation": "<p>The unique identifier for the invitation. Amazon Macie uses this identifier to validate the inviter account with the invitee account.</p>"
        },
        "invitedAt": {
          "shape": "__timestampIso8601",
          "locationName": "invitedAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the invitation was sent.</p>"
        },
        "relationshipStatus": {
          "shape": "RelationshipStatus",
          "locationName": "relationshipStatus",
          "documentation": "<p>The status of the relationship between the account that sent the invitation (<i>inviter account</i>) and the account that received the invitation (<i>invitee account</i>).</p>"
        }
      },
      "documentation": "<p>Provides information about an Amazon Macie membership invitation that was received by an account.</p>"
    },
    "IpAddressDetails": {
      "type": "structure",
      "members": {
        "ipAddressV4": {
          "shape": "__string",
          "locationName": "ipAddressV4",
          "documentation": "<p>The Internet Protocol version 4 (IPv4) address of the device.</p>"
        },
        "ipCity": {
          "shape": "IpCity",
          "locationName": "ipCity",
          "documentation": "<p>The city that the IP address originated from.</p>"
        },
        "ipCountry": {
          "shape": "IpCountry",
          "locationName": "ipCountry",
          "documentation": "<p>The country that the IP address originated from.</p>"
        },
        "ipGeoLocation": {
          "shape": "IpGeoLocation",
          "locationName": "ipGeoLocation",
          "documentation": "<p>The geographic coordinates of the location that the IP address originated from.</p>"
        },
        "ipOwner": {
          "shape": "IpOwner",
          "locationName": "ipOwner",
          "documentation": "<p>The registered owner of the IP address.</p>"
        }
      },
      "documentation": "<p>Provides information about the IP address of the device that an entity used to perform an action on an affected resource.</p>"
    },
    "IpCity": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the city.</p>"
        }
      },
      "documentation": "<p>Provides information about the city that an IP address originated from.</p>"
    },
    "IpCountry": {
      "type": "structure",
      "members": {
        "code": {
          "shape": "__string",
          "locationName": "code",
          "documentation": "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country that the IP address originated from. For example, US for the United States.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the country that the IP address originated from.</p>"
        }
      },
      "documentation": "<p>Provides information about the country that an IP address originated from.</p>"
    },
    "IpGeoLocation": {
      "type": "structure",
      "members": {
        "lat": {
          "shape": "__double",
          "locationName": "lat",
          "documentation": "<p>The latitude coordinate of the location, rounded to four decimal places.</p>"
        },
        "lon": {
          "shape": "__double",
          "locationName": "lon",
          "documentation": "<p>The longitude coordinate of the location, rounded to four decimal places.</p>"
        }
      },
      "documentation": "<p>Provides geographic coordinates that indicate where a specified IP address originated from.</p>"
    },
    "IpOwner": {
      "type": "structure",
      "members": {
        "asn": {
          "shape": "__string",
          "locationName": "asn",
          "documentation": "<p>The autonomous system number (ASN) for the autonomous system that included the IP address.</p>"
        },
        "asnOrg": {
          "shape": "__string",
          "locationName": "asnOrg",
          "documentation": "<p>The organization identifier that's associated with the autonomous system number (ASN) for the autonomous system that included the IP address.</p>"
        },
        "isp": {
          "shape": "__string",
          "locationName": "isp",
          "documentation": "<p>The name of the internet service provider (ISP) that owned the IP address.</p>"
        },
        "org": {
          "shape": "__string",
          "locationName": "org",
          "documentation": "<p>The name of the organization that owned the IP address.</p>"
        }
      },
      "documentation": "<p>Provides information about the registered owner of an IP address.</p>"
    },
    "JobComparator": {
      "type": "string",
      "documentation": "<p>The operator to use in a condition. Valid values are:</p>",
      "enum": [
        "EQ",
        "GT",
        "GTE",
        "LT",
        "LTE",
        "NE",
        "CONTAINS"
      ]
    },
    "JobScheduleFrequency": {
      "type": "structure",
      "members": {
        "dailySchedule": {
          "shape": "DailySchedule",
          "locationName": "dailySchedule",
          "documentation": "<p>Specifies a daily recurrence pattern for running the job.</p>"
        },
        "monthlySchedule": {
          "shape": "MonthlySchedule",
          "locationName": "monthlySchedule",
          "documentation": "<p>Specifies a monthly recurrence pattern for running the job.</p>"
        },
        "weeklySchedule": {
          "shape": "WeeklySchedule",
          "locationName": "weeklySchedule",
          "documentation": "<p>Specifies a weekly recurrence pattern for running the job.</p>"
        }
      },
      "documentation": "<p>Specifies the recurrence pattern for running a classification job.</p>"
    },
    "JobScopeTerm": {
      "type": "structure",
      "members": {
        "simpleScopeTerm": {
          "shape": "SimpleScopeTerm",
          "locationName": "simpleScopeTerm",
          "documentation": "<p>A property-based condition that defines a property, operator, and one or more values for including or excluding an object from the job.</p>"
        },
        "tagScopeTerm": {
          "shape": "TagScopeTerm",
          "locationName": "tagScopeTerm",
          "documentation": "<p>A tag-based condition that defines the operator and a tag key or tag keys and values for including or excluding an object from the job.</p>"
        }
      },
      "documentation": "<p>Specifies a property- or tag-based condition that defines criteria for including or excluding objects from a classification job.</p>"
    },
    "JobScopingBlock": {
      "type": "structure",
      "members": {
        "and": {
          "shape": "__listOfJobScopeTerm",
          "locationName": "and",
          "documentation": "<p>An array of conditions, one for each condition that determines which objects to include or exclude from the job.</p>"
        }
      },
      "documentation": "<p>Specifies one or more property- and tag-based conditions that define criteria for including or excluding objects from a classification job.</p>"
    },
    "JobStatus": {
      "type": "string",
      "documentation": "<p>The current status of a classification job. Possible values are:</p>",
      "enum": [
        "RUNNING",
        "PAUSED",
        "CANCELLED",
        "COMPLETE",
        "IDLE"
      ]
    },
    "JobSummary": {
      "type": "structure",
      "members": {
        "bucketDefinitions": {
          "shape": "__listOfS3BucketDefinitionForJob",
          "locationName": "bucketDefinitions",
          "documentation": "<p>The S3 buckets that the job is configured to analyze.</p>"
        },
        "createdAt": {
          "shape": "__timestampIso8601",
          "locationName": "createdAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>"
        },
        "jobId": {
          "shape": "__string",
          "locationName": "jobId",
          "documentation": "<p>The unique identifier for the job.</p>"
        },
        "jobStatus": {
          "shape": "JobStatus",
          "locationName": "jobStatus",
          "documentation": "<p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job. A job might also be cancelled if ownership of an S3 bucket changed while the job was running, and that change affected the job's access to the bucket.</p></li> <li><p>COMPLETE - Amazon Macie finished processing all the data specified for the job.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to jobs that occur only once.</p></li> <li><p>PAUSED - Amazon Macie started the job, but completion of the job would exceed one or more quotas for your account.</p></li> <li><p>RUNNING - The job is in progress.</p></li></ul>"
        },
        "jobType": {
          "shape": "JobType",
          "locationName": "jobType",
          "documentation": "<p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job ran or will run only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis.</p></li></ul>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The custom name of the job.</p>"
        }
      },
      "documentation": "<p>Provides information about a classification job, including the current status of the job.</p>"
    },
    "JobType": {
      "type": "string",
      "documentation": "<p>The schedule for running a classification job. Valid values are:</p>",
      "enum": [
        "ONE_TIME",
        "SCHEDULED"
      ]
    },
    "KeyValuePair": {
      "type": "structure",
      "members": {
        "key": {
          "shape": "__string",
          "locationName": "key",
          "documentation": "<p>One part of a key-value pair that comprises a tag. A tag key is a general label that acts as a category for more specific tag values.</p>"
        },
        "value": {
          "shape": "__string",
          "locationName": "value",
          "documentation": "<p>One part of a key-value pair that comprises a tag. A tag value acts as a descriptor for a tag key. A tag value can be empty or null.</p>"
        }
      },
      "documentation": "<p>Provides information about the tags that are associated with an S3 bucket or object. Each tag consists of a required tag key and an associated tag value.</p>"
    },
    "KeyValuePairList": {
      "type": "list",
      "documentation": "<p>Provides information about the tags that are associated with an S3 bucket or object. Each tag consists of a required tag key and an associated tag value.</p>",
      "member": {
        "shape": "KeyValuePair"
      }
    },
    "ListClassificationJobsRequest": {
      "type": "structure",
      "members": {
        "filterCriteria": {
          "shape": "ListJobsFilterCriteria",
          "locationName": "filterCriteria",
          "documentation": "<p>The criteria to use to filter the results.</p>"
        },
        "maxResults": {
          "shape": "__integer",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of the response.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        },
        "sortCriteria": {
          "shape": "ListJobsSortCriteria",
          "locationName": "sortCriteria",
          "documentation": "<p>The criteria to use to sort the results.</p>"
        }
      }
    },
    "ListClassificationJobsResponse": {
      "type": "structure",
      "members": {
        "items": {
          "shape": "__listOfJobSummary",
          "locationName": "items",
          "documentation": "<p>An array of objects, one for each job that meets the filter criteria specified in the request.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        }
      }
    },
    "ListCustomDataIdentifiersRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "__integer",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of the response.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        }
      }
    },
    "ListCustomDataIdentifiersResponse": {
      "type": "structure",
      "members": {
        "items": {
          "shape": "__listOfCustomDataIdentifierSummary",
          "locationName": "items",
          "documentation": "<p>An array of objects, one for each custom data identifier.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        }
      }
    },
    "ListFindingsFiltersRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of a paginated response.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        }
      }
    },
    "ListFindingsFiltersResponse": {
      "type": "structure",
      "members": {
        "findingsFilterListItems": {
          "shape": "__listOfFindingsFilterListItem",
          "locationName": "findingsFilterListItems",
          "documentation": "<p>An array of objects, one for each filter that's associated with the account.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        }
      }
    },
    "ListFindingsRequest": {
      "type": "structure",
      "members": {
        "findingCriteria": {
          "shape": "FindingCriteria",
          "locationName": "findingCriteria",
          "documentation": "<p>The criteria to use to filter the results.</p>"
        },
        "maxResults": {
          "shape": "__integer",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of the response.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        },
        "sortCriteria": {
          "shape": "SortCriteria",
          "locationName": "sortCriteria",
          "documentation": "<p>The criteria to use to sort the results.</p>"
        }
      }
    },
    "ListFindingsResponse": {
      "type": "structure",
      "members": {
        "findingIds": {
          "shape": "__listOf__string",
          "locationName": "findingIds",
          "documentation": "<p>An array of strings, where each string is the unique identifier for a finding that meets the filter criteria specified in the request.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        }
      }
    },
    "ListInvitationsRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of a paginated response.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        }
      }
    },
    "ListInvitationsResponse": {
      "type": "structure",
      "members": {
        "invitations": {
          "shape": "__listOfInvitation",
          "locationName": "invitations",
          "documentation": "<p>An array of objects, one for each invitation that was received by the account.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        }
      }
    },
    "ListJobsFilterCriteria": {
      "type": "structure",
      "members": {
        "excludes": {
          "shape": "__listOfListJobsFilterTerm",
          "locationName": "excludes",
          "documentation": "<p>An array of objects, one for each condition that determines which jobs to exclude from the results.</p>"
        },
        "includes": {
          "shape": "__listOfListJobsFilterTerm",
          "locationName": "includes",
          "documentation": "<p>An array of objects, one for each condition that determines which jobs to include in the results.</p>"
        }
      },
      "documentation": "<p>Specifies criteria for filtering the results of a request for information about classification jobs.</p>"
    },
    "ListJobsFilterKey": {
      "type": "string",
      "documentation": "<p>The property to use to filter the results. Valid values are:</p>",
      "enum": [
        "jobType",
        "jobStatus",
        "createdAt",
        "name"
      ]
    },
    "ListJobsFilterTerm": {
      "type": "structure",
      "members": {
        "comparator": {
          "shape": "JobComparator",
          "locationName": "comparator",
          "documentation": "<p>The operator to use to filter the results.</p>"
        },
        "key": {
          "shape": "ListJobsFilterKey",
          "locationName": "key",
          "documentation": "<p>The property to use to filter the results.</p>"
        },
        "values": {
          "shape": "__listOf__string",
          "locationName": "values",
          "documentation": "<p>An array that lists one or more values to use to filter the results.</p>"
        }
      },
      "documentation": "<p>Specifies a condition that filters the results of a request for information about classification jobs. Each condition consists of a property, an operator, and one or more values.</p>"
    },
    "ListJobsSortAttributeName": {
      "type": "string",
      "documentation": "<p>The property to sort the results by. Valid values are:</p>",
      "enum": [
        "createdAt",
        "jobStatus",
        "name",
        "jobType"
      ]
    },
    "ListJobsSortCriteria": {
      "type": "structure",
      "members": {
        "attributeName": {
          "shape": "ListJobsSortAttributeName",
          "locationName": "attributeName",
          "documentation": "<p>The property to sort the results by.</p>"
        },
        "orderBy": {
          "shape": "OrderBy",
          "locationName": "orderBy",
          "documentation": "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
        }
      },
      "documentation": "<p>Specifies criteria for sorting the results of a request for information about classification jobs.</p>"
    },
    "ListMembersRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of a paginated response.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        },
        "onlyAssociated": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "onlyAssociated",
          "documentation": "<p>Specifies which accounts to include in the response, based on the status of an account's relationship with the master account. By default, the response includes only current member accounts. To include all accounts, set the value for this parameter to false.</p>"
        }
      }
    },
    "ListMembersResponse": {
      "type": "structure",
      "members": {
        "members": {
          "shape": "__listOfMember",
          "locationName": "members",
          "documentation": "<p>An array of objects, one for each account that's associated with the master account and meets the criteria specified by the onlyAssociated request parameter.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        }
      }
    },
    "ListOrganizationAdminAccountsRequest": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of items to include in each page of a paginated response.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>"
        }
      }
    },
    "ListOrganizationAdminAccountsResponse": {
      "type": "structure",
      "members": {
        "adminAccounts": {
          "shape": "__listOfAdminAccount",
          "locationName": "adminAccounts",
          "documentation": "<p>An array of objects, one for each account that's designated as a delegated administrator of Amazon Macie for the AWS organization. Of those accounts, only one can have a status of ENABLED.</p>"
        },
        "nextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "members": {
        "resourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>"
        }
      },
      "required": [
        "resourceArn"
      ]
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the resource.</p>"
        }
      }
    },
    "MacieStatus": {
      "type": "string",
      "documentation": "<p>The status of an Amazon Macie account. Valid values are:</p>",
      "enum": [
        "PAUSED",
        "ENABLED"
      ]
    },
    "MaxResults": {
      "type": "integer",
      "min": 1,
      "max": 25
    },
    "Member": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The AWS account ID for the account.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the account.</p>"
        },
        "email": {
          "shape": "__string",
          "locationName": "email",
          "documentation": "<p>The email address for the account.</p>"
        },
        "invitedAt": {
          "shape": "__timestampIso8601",
          "locationName": "invitedAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie invitation hasn't been sent to the account.</p>"
        },
        "masterAccountId": {
          "shape": "__string",
          "locationName": "masterAccountId",
          "documentation": "<p>The AWS account ID for the master account.</p>"
        },
        "relationshipStatus": {
          "shape": "RelationshipStatus",
          "locationName": "relationshipStatus",
          "documentation": "<p>The current status of the relationship between the account and the master account.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the account in Amazon Macie.</p>"
        },
        "updatedAt": {
          "shape": "__timestampIso8601",
          "locationName": "updatedAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the relationship between the account and the master account.</p>"
        }
      },
      "documentation": "<p>Provides information about an account that's associated with an Amazon Macie master account.</p>"
    },
    "MonthlySchedule": {
      "type": "structure",
      "members": {
        "dayOfMonth": {
          "shape": "__integer",
          "locationName": "dayOfMonth",
          "documentation": "<p>The numeric day of the month when Amazon Macie runs the job. This value can be an integer from 1 through 30.</p>"
        }
      },
      "documentation": "<p>Specifies a monthly recurrence pattern for running a classification job.</p>"
    },
    "ObjectCountByEncryptionType": {
      "type": "structure",
      "members": {
        "customerManaged": {
          "shape": "__long",
          "locationName": "customerManaged",
          "documentation": "<p>The total number of objects that are encrypted using a customer-managed key. The objects use customer-provided server-side (SSE-C) encryption.</p>"
        },
        "kmsManaged": {
          "shape": "__long",
          "locationName": "kmsManaged",
          "documentation": "<p>The total number of objects that are encrypted using an AWS Key Management Service (AWS KMS) customer master key (CMK). The objects use AWS KMS AWS-managed (AWS-KMS) encryption or AWS KMS customer-managed (SSE-KMS) encryption.</p>"
        },
        "s3Managed": {
          "shape": "__long",
          "locationName": "s3Managed",
          "documentation": "<p>The total number of objects that are encrypted using an Amazon S3-managed key. The objects use Amazon S3-managed (SSE-S3) encryption.</p>"
        },
        "unencrypted": {
          "shape": "__long",
          "locationName": "unencrypted",
          "documentation": "<p>The total number of objects that aren't encrypted or use client-side encryption.</p>"
        }
      },
      "documentation": "<p>Provides information about the number of objects that are in an S3 bucket and use certain types of server-side encryption, use client-side encryption, or aren't encrypted.</p>"
    },
    "ObjectLevelStatistics": {
      "type": "structure",
      "members": {
        "fileType": {
          "shape": "__long",
          "locationName": "fileType",
          "documentation": "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported file or storage format.</p>"
        },
        "storageClass": {
          "shape": "__long",
          "locationName": "storageClass",
          "documentation": "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported storage class.</p>"
        },
        "total": {
          "shape": "__long",
          "locationName": "total",
          "documentation": "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported file or storage format or storage class.</p>"
        }
      },
      "documentation": "<p>Provides information about the total storage size (in bytes) or number of objects that Amazon Macie can't analyze in one or more S3 buckets. In a BucketMetadata object, this data is for a specific bucket. In a GetBucketStatisticsResponse object, this data is aggregated for all the buckets in the query results.</p>"
    },
    "OrderBy": {
      "type": "string",
      "enum": [
        "ASC",
        "DESC"
      ]
    },
    "PolicyDetails": {
      "type": "structure",
      "members": {
        "action": {
          "shape": "FindingAction",
          "locationName": "action",
          "documentation": "<p>The action that produced the finding.</p>"
        },
        "actor": {
          "shape": "FindingActor",
          "locationName": "actor",
          "documentation": "<p>The entity that performed the action that produced the finding.</p>"
        }
      },
      "documentation": "<p>Provides the details of a policy finding.</p>"
    },
    "PutClassificationExportConfigurationRequest": {
      "type": "structure",
      "members": {
        "configuration": {
          "shape": "ClassificationExportConfiguration",
          "locationName": "configuration",
          "documentation": "<p>The location to store data classification results in, and the encryption settings to use when storing results in that location.</p>"
        }
      },
      "required": [
        "configuration"
      ]
    },
    "PutClassificationExportConfigurationResponse": {
      "type": "structure",
      "members": {
        "configuration": {
          "shape": "ClassificationExportConfiguration",
          "locationName": "configuration",
          "documentation": "<p>The location where the data classification results are stored, and the encryption settings that are used when storing results in that location.</p>"
        }
      }
    },
    "RelationshipStatus": {
      "type": "string",
      "documentation": "<p>The current status of the relationship between an account and an associated Amazon Macie master account (<i>inviter account</i>). Possible values are:</p>",
      "enum": [
        "Enabled",
        "Paused",
        "Invited",
        "Created",
        "Removed",
        "Resigned",
        "EmailVerificationInProgress",
        "EmailVerificationFailed",
        "RegionDisabled",
        "AccountSuspended"
      ]
    },
    "ReplicationDetails": {
      "type": "structure",
      "members": {
        "replicated": {
          "shape": "__boolean",
          "locationName": "replicated",
          "documentation": "<p>Specifies whether the bucket is configured to replicate one or more objects to any destination.</p>"
        },
        "replicatedExternally": {
          "shape": "__boolean",
          "locationName": "replicatedExternally",
          "documentation": "<p>Specifies whether the bucket is configured to replicate one or more objects to an AWS account that isn't part of the same Amazon Macie organization.</p>"
        },
        "replicationAccounts": {
          "shape": "__listOf__string",
          "locationName": "replicationAccounts",
          "documentation": "<p>An array of AWS account IDs, one for each AWS account that the bucket is configured to replicate one or more objects to.</p>"
        }
      },
      "documentation": "<p>Provides information about settings that define whether one or more objects in an S3 bucket are replicated to S3 buckets for other AWS accounts and, if so, which accounts.</p>"
    },
    "ResourcesAffected": {
      "type": "structure",
      "members": {
        "s3Bucket": {
          "shape": "S3Bucket",
          "locationName": "s3Bucket",
          "documentation": "<p>An array of objects, one for each S3 bucket that the finding applies to. Each object provides a set of metadata about an affected S3 bucket.</p>"
        },
        "s3Object": {
          "shape": "S3Object",
          "locationName": "s3Object",
          "documentation": "<p>An array of objects, one for each S3 object that the finding applies to. Each object provides a set of metadata about an affected S3 object.</p>"
        }
      },
      "documentation": "<p>Provides information about the resources that a finding applies to.</p>"
    },
    "S3Bucket": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the bucket.</p>"
        },
        "createdAt": {
          "shape": "__timestampIso8601",
          "locationName": "createdAt",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the bucket was created.</p>"
        },
        "defaultServerSideEncryption": {
          "shape": "ServerSideEncryption",
          "locationName": "defaultServerSideEncryption",
          "documentation": "<p>The server-side encryption settings for the bucket.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>The name of the bucket.</p>"
        },
        "owner": {
          "shape": "S3BucketOwner",
          "locationName": "owner",
          "documentation": "<p>The display name and account identifier for the user who owns the bucket.</p>"
        },
        "publicAccess": {
          "shape": "BucketPublicAccess",
          "locationName": "publicAccess",
          "documentation": "<p>The permissions settings that determine whether the bucket is publicly accessible.</p>"
        },
        "tags": {
          "shape": "KeyValuePairList",
          "locationName": "tags",
          "documentation": "<p>The tags that are associated with the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about an S3 bucket that a finding applies to.</p>"
    },
    "S3BucketDefinitionForJob": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account that owns one or more of the buckets. If specified, the job analyzes objects in all the buckets that are owned by the account and meet other conditions specified for the job.</p>"
        },
        "buckets": {
          "shape": "__listOf__string",
          "locationName": "buckets",
          "documentation": "<p>An array that lists the names of the buckets.</p>"
        }
      },
      "documentation": "<p>Specifies which S3 buckets contain the objects that a classification job analyzes.</p>"
    },
    "S3BucketOwner": {
      "type": "structure",
      "members": {
        "displayName": {
          "shape": "__string",
          "locationName": "displayName",
          "documentation": "<p>The display name of the user who owns the bucket.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The AWS account ID for the user who owns the bucket.</p>"
        }
      },
      "documentation": "<p>Provides information about the user who owns an S3 bucket.</p>"
    },
    "S3Destination": {
      "type": "structure",
      "members": {
        "bucketName": {
          "shape": "__string",
          "locationName": "bucketName",
          "documentation": "<p>The name of the bucket.</p>"
        },
        "keyPrefix": {
          "shape": "__string",
          "locationName": "keyPrefix",
          "documentation": "<p>The path prefix to use in the path to the location in the bucket. This prefix specifies where to store classification results in the bucket.</p>"
        },
        "kmsKeyArn": {
          "shape": "__string",
          "locationName": "kmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for encryption of the results. This must be the ARN of an existing CMK that's in the same AWS Region as the bucket.</p>"
        }
      },
      "documentation": "<p>Specifies an S3 bucket to store data classification results in, and the encryption settings to use when storing results in that bucket.</p>",
      "required": [
        "bucketName",
        "kmsKeyArn"
      ]
    },
    "S3JobDefinition": {
      "type": "structure",
      "members": {
        "bucketDefinitions": {
          "shape": "__listOfS3BucketDefinitionForJob",
          "locationName": "bucketDefinitions",
          "documentation": "<p>An array of objects, one for each bucket that contains objects to analyze.</p>"
        },
        "scoping": {
          "shape": "Scoping",
          "locationName": "scoping",
          "documentation": "<p>The property- and tag-based conditions that determine which objects to include or exclude from the analysis.</p>"
        }
      },
      "documentation": "<p>Specifies which S3 buckets contain the objects that a classification job analyzes, and the scope of that analysis.</p>"
    },
    "S3Object": {
      "type": "structure",
      "members": {
        "bucketArn": {
          "shape": "__string",
          "locationName": "bucketArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the bucket that contains the object.</p>"
        },
        "eTag": {
          "shape": "__string",
          "locationName": "eTag",
          "documentation": "<p>The entity tag (ETag) that identifies the affected version of the object. If the object was overwritten or changed after Amazon Macie produced the finding, this value might be different from the current ETag for the object.</p>"
        },
        "extension": {
          "shape": "__string",
          "locationName": "extension",
          "documentation": "<p>The file name extension of the object. If the object doesn't have a file name extension, this value is \"\".</p>"
        },
        "key": {
          "shape": "__string",
          "locationName": "key",
          "documentation": "<p>The full key (name) that's assigned to the object.</p>"
        },
        "lastModified": {
          "shape": "__timestampIso8601",
          "locationName": "lastModified",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the object was last modified.</p>"
        },
        "path": {
          "shape": "__string",
          "locationName": "path",
          "documentation": "<p>The path to the object, including the full key (name).</p>"
        },
        "publicAccess": {
          "shape": "__boolean",
          "locationName": "publicAccess",
          "documentation": "<p>Specifies whether the object is publicly accessible due to the combination of permissions settings that apply to the object.</p>"
        },
        "serverSideEncryption": {
          "shape": "ServerSideEncryption",
          "locationName": "serverSideEncryption",
          "documentation": "<p>The server-side encryption settings for the object.</p>"
        },
        "size": {
          "shape": "__long",
          "locationName": "size",
          "documentation": "<p>The total storage size, in bytes, of the object.</p>"
        },
        "storageClass": {
          "shape": "StorageClass",
          "locationName": "storageClass",
          "documentation": "<p>The storage class of the object.</p>"
        },
        "tags": {
          "shape": "KeyValuePairList",
          "locationName": "tags",
          "documentation": "<p>The tags that are associated with the object.</p>"
        },
        "versionId": {
          "shape": "__string",
          "locationName": "versionId",
          "documentation": "<p>The identifier for the affected version of the object.</p>"
        }
      },
      "documentation": "<p>Provides information about an S3 object that a finding applies to.</p>"
    },
    "ScopeFilterKey": {
      "type": "string",
      "documentation": "<p>The property to use in a condition that determines which objects are analyzed by a classification job. Valid values are:</p>",
      "enum": [
        "BUCKET_CREATION_DATE",
        "OBJECT_EXTENSION",
        "OBJECT_LAST_MODIFIED_DATE",
        "OBJECT_SIZE",
        "TAG"
      ]
    },
    "Scoping": {
      "type": "structure",
      "members": {
        "excludes": {
          "shape": "JobScopingBlock",
          "locationName": "excludes",
          "documentation": "<p>The property- or tag-based conditions that determine which objects to exclude from the analysis.</p>"
        },
        "includes": {
          "shape": "JobScopingBlock",
          "locationName": "includes",
          "documentation": "<p>The property- or tag-based conditions that determine which objects to include in the analysis.</p>"
        }
      },
      "documentation": "<p>Specifies one or more property- and tag-based conditions that refine the scope of a classification job. These conditions define criteria that determine which objects a job analyzes.</p>"
    },
    "SensitiveData": {
      "type": "list",
      "documentation": "<p>Provides information about the category and number of occurrences of sensitive data that produced a finding.</p>",
      "member": {
        "shape": "SensitiveDataItem"
      }
    },
    "SensitiveDataItem": {
      "type": "structure",
      "members": {
        "category": {
          "shape": "SensitiveDataItemCategory",
          "locationName": "category",
          "documentation": "<p>The category of sensitive data that was detected. For example: FINANCIAL_INFORMATION, for financial information such as credit card numbers; PERSONAL_INFORMATION, for personally identifiable information such as full names and mailing addresses; or, CUSTOM_IDENTIFIER, for data that was detected by a custom data identifier.</p>"
        },
        "detections": {
          "shape": "DefaultDetections",
          "locationName": "detections",
          "documentation": "<p>An array of objects, one for each type of sensitive data that was detected. Each object reports the number of occurrences of a specific type of sensitive data that was detected.</p>"
        },
        "totalCount": {
          "shape": "__long",
          "locationName": "totalCount",
          "documentation": "<p>The total number of occurrences of the sensitive data that was detected.</p>"
        }
      },
      "documentation": "<p>Provides information about the category, type, and number of occurrences of sensitive data that produced a finding.</p>"
    },
    "SensitiveDataItemCategory": {
      "type": "string",
      "documentation": "<p>The category of sensitive data that was detected and produced the finding. Possible values are:</p>",
      "enum": [
        "FINANCIAL_INFORMATION",
        "PERSONAL_INFORMATION",
        "CREDENTIALS",
        "CUSTOM_IDENTIFIER"
      ]
    },
    "ServerSideEncryption": {
      "type": "structure",
      "members": {
        "encryptionType": {
          "shape": "EncryptionType",
          "locationName": "encryptionType",
          "documentation": "<p>The server-side encryption algorithm that's used when storing data in the bucket or object. If encryption is disabled for the bucket or object, this value is NONE.</p>"
        },
        "kmsMasterKeyId": {
          "shape": "__string",
          "locationName": "kmsMasterKeyId",
          "documentation": "<p>The unique identifier for the AWS Key Management Service (AWS KMS) master key that's used to encrypt the bucket or object. This value is null if AWS KMS isn't used to encrypt the bucket or object.</p>"
        }
      },
      "documentation": "<p>Provides information about the server-side encryption settings for an S3 bucket or object.</p>"
    },
    "ServiceLimit": {
      "type": "structure",
      "members": {
        "isServiceLimited": {
          "shape": "__boolean",
          "locationName": "isServiceLimited",
          "documentation": "<p>Specifies whether the account has met the quota that corresponds to the metric specified by the UsageByAccount.type field in the response.</p>"
        },
        "unit": {
          "shape": "Unit",
          "locationName": "unit",
          "documentation": "<p>The unit of measurement for the value specified by the value field.</p>"
        },
        "value": {
          "shape": "__long",
          "locationName": "value",
          "documentation": "<p>The value for the metric specified by the UsageByAccount.type field in the response.</p>"
        }
      },
      "documentation": "<p>Specifies a current quota for an account.</p>"
    },
    "SessionContext": {
      "type": "structure",
      "members": {
        "attributes": {
          "shape": "SessionContextAttributes",
          "locationName": "attributes",
          "documentation": "<p>The date and time when the credentials were issued, and whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>"
        },
        "sessionIssuer": {
          "shape": "SessionIssuer",
          "locationName": "sessionIssuer",
          "documentation": "<p>The source and type of credentials that were issued to the entity.</p>"
        }
      },
      "documentation": "<p>Provides information about a session that was created for an entity that performed an action by using temporary security credentials.</p>"
    },
    "SessionContextAttributes": {
      "type": "structure",
      "members": {
        "creationDate": {
          "shape": "__timestampIso8601",
          "locationName": "creationDate",
          "documentation": "<p>The date and time, in UTC and ISO 8601 format, when the credentials were issued.</p>"
        },
        "mfaAuthenticated": {
          "shape": "__boolean",
          "locationName": "mfaAuthenticated",
          "documentation": "<p>Specifies whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>"
        }
      },
      "documentation": "<p>Provides information about the context in which temporary security credentials were issued to an entity.</p>"
    },
    "SessionIssuer": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account that owns the entity that was used to get the credentials.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source account, IAM user, or role that was used to get the credentials.</p>"
        },
        "principalId": {
          "shape": "__string",
          "locationName": "principalId",
          "documentation": "<p>The unique identifier for the entity that was used to get the credentials.</p>"
        },
        "type": {
          "shape": "__string",
          "locationName": "type",
          "documentation": "<p>The source of the temporary security credentials, such as Root, IAMUser, or Role.</p>"
        },
        "userName": {
          "shape": "__string",
          "locationName": "userName",
          "documentation": "<p>The name or alias of the user or role that issued the session. This value is null if the credentials were obtained from a root account that doesn't have an alias.</p>"
        }
      },
      "documentation": "<p>Provides information about the source and type of temporary security credentials that were issued to an entity.</p>"
    },
    "Severity": {
      "type": "structure",
      "members": {
        "description": {
          "shape": "SeverityDescription",
          "locationName": "description",
          "documentation": "<p>The textual representation of the severity value, such as Low or High.</p>"
        },
        "score": {
          "shape": "__long",
          "locationName": "score",
          "documentation": "<p>The numeric score for the severity value, ranging from 0 (least severe) to 4 (most severe).</p>"
        }
      },
      "documentation": "<p>Provides the numeric score and textual representation of a severity value.</p>"
    },
    "SeverityDescription": {
      "type": "string",
      "documentation": "<p>The textual representation of the finding's severity. Possible values are:</p>",
      "enum": [
        "Low",
        "Medium",
        "High"
      ]
    },
    "SharedAccess": {
      "type": "string",
      "enum": [
        "EXTERNAL",
        "INTERNAL",
        "NOT_SHARED",
        "UNKNOWN"
      ]
    },
    "SimpleScopeTerm": {
      "type": "structure",
      "members": {
        "comparator": {
          "shape": "JobComparator",
          "locationName": "comparator",
          "documentation": "<p>The operator to use in the condition.</p>"
        },
        "key": {
          "shape": "ScopeFilterKey",
          "locationName": "key",
          "documentation": "<p>The property to use in the condition.</p>"
        },
        "values": {
          "shape": "__listOf__string",
          "locationName": "values",
          "documentation": "<p>An array that lists one or more values to use in the condition.</p>"
        }
      },
      "documentation": "<p>Specifies a property-based condition that determines whether an object is included or excluded from a classification job.</p>"
    },
    "SortCriteria": {
      "type": "structure",
      "members": {
        "attributeName": {
          "shape": "__string",
          "locationName": "attributeName",
          "documentation": "<p>The name of the property to sort the results by. This value can be the name of any property that Amazon Macie defines for a finding.</p>"
        },
        "orderBy": {
          "shape": "OrderBy",
          "locationName": "orderBy",
          "documentation": "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
        }
      },
      "documentation": "<p>Specifies criteria for sorting the results of a request for information about findings.</p>"
    },
    "Statistics": {
      "type": "structure",
      "members": {
        "approximateNumberOfObjectsToProcess": {
          "shape": "__double",
          "locationName": "approximateNumberOfObjectsToProcess",
          "documentation": "<p>The approximate number of objects that the job has yet to process during its current run.</p>"
        },
        "numberOfRuns": {
          "shape": "__double",
          "locationName": "numberOfRuns",
          "documentation": "<p>The number of times that the job has run.</p>"
        }
      },
      "documentation": "<p>Provides processing statistics for a classification job.</p>"
    },
    "StorageClass": {
      "type": "string",
      "documentation": "<p>The storage class of the S3 bucket or object. Possible values are:</p>",
      "enum": [
        "STANDARD",
        "REDUCED_REDUNDANCY",
        "STANDARD_IA",
        "INTELLIGENT_TIERING",
        "DEEP_ARCHIVE",
        "ONEZONE_IA",
        "GLACIER"
      ]
    },
    "TagMap": {
      "type": "map",
      "documentation": "<p>A string-to-string map of key-value pairs that specifies the tags (keys and values) for a classification job, custom data identifier, findings filter, or member account.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "__string"
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "members": {
        "resourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "locationName": "tags",
          "documentation": "<p>A map of key-value pairs that specifies the tags to associate with the resource.</p> <p>A resource can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>"
        }
      },
      "required": [
        "resourceArn",
        "tags"
      ]
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagScopeTerm": {
      "type": "structure",
      "members": {
        "comparator": {
          "shape": "JobComparator",
          "locationName": "comparator",
          "documentation": "<p>The operator to use in the condition.</p>"
        },
        "key": {
          "shape": "__string",
          "locationName": "key",
          "documentation": "<p>The tag key to use in the condition.</p>"
        },
        "tagValues": {
          "shape": "__listOfTagValuePair",
          "locationName": "tagValues",
          "documentation": "<p>The tag key and value pairs to use in the condition.</p>"
        },
        "target": {
          "shape": "TagTarget",
          "locationName": "target",
          "documentation": "<p>The type of object to apply the condition to.</p>"
        }
      },
      "documentation": "<p>Specifies a tag-based condition that determines whether an object is included or excluded from a classification job.</p>"
    },
    "TagTarget": {
      "type": "string",
      "documentation": "<p>The type of object to apply a tag-based condition to. Valid values are:</p>",
      "enum": [
        "S3_OBJECT"
      ]
    },
    "TagValuePair": {
      "type": "structure",
      "members": {
        "key": {
          "shape": "__string",
          "locationName": "key",
          "documentation": "<p>The value for the tag key to use in the condition.</p>"
        },
        "value": {
          "shape": "__string",
          "locationName": "value",
          "documentation": "<p>The tag value, associated with the specified tag key, to use in the condition.</p>"
        }
      },
      "documentation": "<p>Specifies a tag key and value, as a pair, to use in a tag-based condition for a classification job.</p>"
    },
    "TestCustomDataIdentifierRequest": {
      "type": "structure",
      "members": {
        "ignoreWords": {
          "shape": "__listOf__string",
          "locationName": "ignoreWords",
          "documentation": "<p>An array that lists specific character sequences (ignore words) to exclude from the results. If the text matched by the regular expression is the same as any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4 - 90 characters. Ignore words are case sensitive.</p>"
        },
        "keywords": {
          "shape": "__listOf__string",
          "locationName": "keywords",
          "documentation": "<p>An array that lists specific character sequences (keywords), one of which must be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 4 - 90 characters. Keywords aren't case sensitive.</p>"
        },
        "maximumMatchDistance": {
          "shape": "__integer",
          "locationName": "maximumMatchDistance",
          "documentation": "<p>The maximum number of characters that can exist between text that matches the regex pattern and the character sequences specified by the keywords array. Macie includes or excludes a result based on the proximity of a keyword to text that matches the regex pattern. The distance can be 1 - 300 characters. The default value is 50.</p>"
        },
        "regex": {
          "shape": "__string",
          "locationName": "regex",
          "documentation": "<p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>"
        },
        "sampleText": {
          "shape": "__string",
          "locationName": "sampleText",
          "documentation": "<p>The sample text to inspect by using the custom data identifier. The text can contain as many as 1,000 characters.</p>"
        }
      },
      "required": [
        "regex",
        "sampleText"
      ]
    },
    "TestCustomDataIdentifierResponse": {
      "type": "structure",
      "members": {
        "matchCount": {
          "shape": "__integer",
          "locationName": "matchCount",
          "documentation": "<p>The number of instances of sample text that matched the detection criteria specified in the custom data identifier.</p>"
        }
      }
    },
    "Unit": {
      "type": "string",
      "enum": [
        "TERABYTES"
      ]
    },
    "UnprocessedAccount": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The AWS account ID for the account that the request applies to.</p>"
        },
        "errorCode": {
          "shape": "ErrorCode",
          "locationName": "errorCode",
          "documentation": "<p>The source of the issue or delay in processing the request.</p>"
        },
        "errorMessage": {
          "shape": "__string",
          "locationName": "errorMessage",
          "documentation": "<p>The reason why the request hasn't been processed.</p>"
        }
      },
      "documentation": " <p>Provides information about an account-related request that hasn't been processed.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "members": {
        "resourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the classification job, custom data identifier, findings filter, or member account.</p>"
        },
        "tagKeys": {
          "shape": "__listOf__string",
          "location": "querystring",
          "locationName": "tagKeys",
          "documentation": "<p>The key of the tag to remove from the resource. To remove multiple tags, append the tagKeys parameter and argument for each additional tag to remove, separated by an ampersand (&amp;).</p>"
        }
      },
      "required": [
        "tagKeys",
        "resourceArn"
      ]
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateClassificationJobRequest": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "jobId",
          "documentation": "<p>The unique identifier for the classification job.</p>"
        },
        "jobStatus": {
          "shape": "JobStatus",
          "locationName": "jobStatus",
          "documentation": "<p>The status to change the job's status to. The only supported value is CANCELLED, which cancels the job completely.</p>"
        }
      },
      "required": [
        "jobId",
        "jobStatus"
      ]
    },
    "UpdateClassificationJobResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateFindingsFilterRequest": {
      "type": "structure",
      "members": {
        "action": {
          "shape": "FindingsFilterAction",
          "locationName": "action",
          "documentation": "<p>The action to perform on findings that meet the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>"
        },
        "description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "<p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users might be able to see the filter's description, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
        },
        "findingCriteria": {
          "shape": "FindingCriteria",
          "locationName": "findingCriteria",
          "documentation": "<p>The criteria to use to filter findings.</p>"
        },
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        },
        "name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "<p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users might be able to see the filter's name, depending on the actions that they're allowed to perform in Amazon Macie.</p>"
        },
        "position": {
          "shape": "__integer",
          "locationName": "position",
          "documentation": "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>"
        }
      },
      "required": [
        "id"
      ]
    },
    "UpdateFindingsFilterResponse": {
      "type": "structure",
      "members": {
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the filter that was updated.</p>"
        },
        "id": {
          "shape": "__string",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the filter that was updated.</p>"
        }
      }
    },
    "UpdateMacieSessionRequest": {
      "type": "structure",
      "members": {
        "findingPublishingFrequency": {
          "shape": "FindingPublishingFrequency",
          "locationName": "findingPublishingFrequency",
          "documentation": "Specifies how often to publish updates to policy findings for the account. This includes publishing updates to AWS Security Hub and Amazon EventBridge (formerly called Amazon CloudWatch Events)."
        },
        "status": {
          "shape": "MacieStatus",
          "locationName": "status",
          "documentation": "<p>Specifies whether to change the status of the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>"
        }
      }
    },
    "UpdateMacieSessionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateMemberSessionRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "__string",
          "location": "uri",
          "locationName": "id",
          "documentation": "<p>The unique identifier for the Amazon Macie resource or account that the request applies to.</p>"
        },
        "status": {
          "shape": "MacieStatus",
          "locationName": "status",
          "documentation": "<p>Specifies the new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>"
        }
      },
      "required": [
        "id",
        "status"
      ]
    },
    "UpdateMemberSessionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateOrganizationConfigurationRequest": {
      "type": "structure",
      "members": {
        "autoEnable": {
          "shape": "__boolean",
          "locationName": "autoEnable",
          "documentation": "<p>Specifies whether Amazon Macie is enabled automatically for each account, when the account is added to the AWS organization.</p>"
        }
      },
      "required": [
        "autoEnable"
      ]
    },
    "UpdateOrganizationConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "UsageByAccount": {
      "type": "structure",
      "members": {
        "currency": {
          "shape": "Currency",
          "locationName": "currency",
          "documentation": "<p>The type of currency that the value for the metric (estimatedCost) is reported in.</p>"
        },
        "estimatedCost": {
          "shape": "__string",
          "locationName": "estimatedCost",
          "documentation": "<p>The estimated value for the metric.</p>"
        },
        "serviceLimit": {
          "shape": "ServiceLimit",
          "locationName": "serviceLimit",
          "documentation": "<p>The current value for the quota that corresponds to the metric specified by the type field.</p>"
        },
        "type": {
          "shape": "UsageType",
          "locationName": "type",
          "documentation": "<p>The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION, for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing sensitive data.</p>"
        }
      },
      "documentation": "<p>Provides data for a specific usage metric and the corresponding quota for an account. The value for the metric is an aggregated value that reports usage during the past 30 days.</p>"
    },
    "UsageRecord": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account that the data applies to.</p>"
        },
        "freeTrialStartDate": {
          "shape": "__timestampIso8601",
          "locationName": "freeTrialStartDate",
          "documentation": "<p>The date and time, in UTC and extended ISO 8601 format, when the free trial started for the account.</p>"
        },
        "usage": {
          "shape": "__listOfUsageByAccount",
          "locationName": "usage",
          "documentation": "<p>An array of objects that contains usage data and quotas for the account. Each object contains the data for a specific usage metric and the corresponding quota.</p>"
        }
      },
      "documentation": "<p>Provides quota and aggregated usage data for an account.</p>"
    },
    "UsageStatisticsFilter": {
      "type": "structure",
      "members": {
        "comparator": {
          "shape": "UsageStatisticsFilterComparator",
          "locationName": "comparator",
          "documentation": "<p>The operator to use in the condition. If the value for the key property is accountId, this value must be CONTAINS. If the value for the key property is any other supported field, this value can be EQ, GT, GTE, LT, LTE, or NE.</p>"
        },
        "key": {
          "shape": "UsageStatisticsFilterKey",
          "locationName": "key",
          "documentation": "<p>The field to use in the condition.</p>"
        },
        "values": {
          "shape": "__listOf__string",
          "locationName": "values",
          "documentation": "<p>An array that lists values to use in the condition, based on the value for the field specified by the key property. If the value for the key property is accountId, this array can specify multiple values. Otherwise, this array can specify only one value.</p> <p>Valid values for each supported field are:</p> <ul><li><p>accountId - The unique identifier for an AWS account.</p></li></ul> <ul><li><p>freeTrialStartDate - The date and time, in UTC and extended ISO 8601 format, when the free trial started for an account.</p></li></ul> <ul><li><p>serviceLimit - A Boolean (true or false) value that indicates whether an account has reached its monthly quota.</p></li></ul> <ul><li><p>total - A string that represents the current, estimated month-to-date cost for an account.</p></li></ul>"
        }
      },
      "documentation": "<p>Specifies a condition for filtering the results of a query for account quotas and usage data.</p>"
    },
    "UsageStatisticsFilterComparator": {
      "type": "string",
      "documentation": "<p>The operator to use in a condition that filters the results of a query for account quotas and usage data. Valid values are:</p>",
      "enum": [
        "GT",
        "GTE",
        "LT",
        "LTE",
        "EQ",
        "NE",
        "CONTAINS"
      ]
    },
    "UsageStatisticsFilterKey": {
      "type": "string",
      "documentation": "<p>The field to use in a condition that filters the results of a query for account quotas and usage data. Valid values are:</p>",
      "enum": [
        "accountId",
        "serviceLimit",
        "freeTrialStartDate",
        "total"
      ]
    },
    "UsageStatisticsSortBy": {
      "type": "structure",
      "members": {
        "key": {
          "shape": "UsageStatisticsSortKey",
          "locationName": "key",
          "documentation": "<p>The field to sort the results by.</p>"
        },
        "orderBy": {
          "shape": "OrderBy",
          "locationName": "orderBy",
          "documentation": "<p>The sort order to apply to the results, based on the value for the field specified by the key property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>"
        }
      },
      "documentation": "<p>Specifies criteria for sorting the results of a query for account quotas and usage data.</p>"
    },
    "UsageStatisticsSortKey": {
      "type": "string",
      "documentation": "<p>The field to use to sort the results of a query for account quotas and usage data. Valid values are:</p>",
      "enum": [
        "accountId",
        "total",
        "serviceLimitValue",
        "freeTrialStartDate"
      ]
    },
    "UsageTotal": {
      "type": "structure",
      "members": {
        "currency": {
          "shape": "Currency",
          "locationName": "currency",
          "documentation": "<p>The type of currency that the value for the metric (estimatedCost) is reported in.</p>"
        },
        "estimatedCost": {
          "shape": "__string",
          "locationName": "estimatedCost",
          "documentation": "<p>The estimated value for the metric.</p>"
        },
        "type": {
          "shape": "UsageType",
          "locationName": "type",
          "documentation": "<p>The name of the metric. Possible values are: DATA_INVENTORY_EVALUATION, for monitoring S3 buckets; and, SENSITIVE_DATA_DISCOVERY, for analyzing sensitive data.</p>"
        }
      },
      "documentation": "<p>Provides aggregated data for a usage metric. The value for the metric reports usage data for an account during the past 30 days.</p>"
    },
    "UsageType": {
      "type": "string",
      "documentation": "<p>The name of a usage metric for an account. Possible values are:</p>",
      "enum": [
        "DATA_INVENTORY_EVALUATION",
        "SENSITIVE_DATA_DISCOVERY"
      ]
    },
    "UserIdentity": {
      "type": "structure",
      "members": {
        "assumedRole": {
          "shape": "AssumedRole",
          "locationName": "assumedRole",
          "documentation": "<p>If the action was performed with temporary security credentials that were obtained using the AssumeRole operation of the AWS Security Token Service (AWS STS) API, the identifiers, session context, and other details about the identity.</p>"
        },
        "awsAccount": {
          "shape": "AwsAccount",
          "locationName": "awsAccount",
          "documentation": "<p>If the action was performed using the credentials for another AWS account, the details of that account.</p>"
        },
        "awsService": {
          "shape": "AwsService",
          "locationName": "awsService",
          "documentation": "<p>If the action was performed by an AWS account that belongs to an AWS service, the name of the service.</p>"
        },
        "federatedUser": {
          "shape": "FederatedUser",
          "locationName": "federatedUser",
          "documentation": "<p>If the action was performed with temporary security credentials that were obtained using the GetFederationToken operation of the AWS Security Token Service (AWS STS) API, the identifiers, session context, and other details about the identity.</p>"
        },
        "iamUser": {
          "shape": "IamUser",
          "locationName": "iamUser",
          "documentation": "<p>If the action was performed using the credentials for an AWS Identity and Access Management (IAM) user, the name and other details about the user.</p>"
        },
        "root": {
          "shape": "UserIdentityRoot",
          "locationName": "root",
          "documentation": "<p>If the action was performed using the credentials for your AWS account, the details of your account.</p>"
        },
        "type": {
          "shape": "UserIdentityType",
          "locationName": "type",
          "documentation": "<p>The type of entity that performed the action.</p>"
        }
      },
      "documentation": "<p>Provides information about the type and other characteristics of an entity that performed an action on an affected resource.</p>"
    },
    "UserIdentityRoot": {
      "type": "structure",
      "members": {
        "accountId": {
          "shape": "__string",
          "locationName": "accountId",
          "documentation": "<p>The unique identifier for the AWS account.</p>"
        },
        "arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user or role that performed the action.</p>"
        },
        "principalId": {
          "shape": "__string",
          "locationName": "principalId",
          "documentation": "<p>The unique identifier for the entity that performed the action.</p>"
        }
      },
      "documentation": "<p>Provides information about an AWS account and entity that performed an action on an affected resource. The action was performed using the credentials for your AWS account.</p>"
    },
    "UserIdentityType": {
      "type": "string",
      "documentation": "<p>The type of entity that performed the action on the affected resource. Possible values are:</p>",
      "enum": [
        "AssumedRole",
        "IAMUser",
        "FederatedUser",
        "Root",
        "AWSAccount",
        "AWSService"
      ]
    },
    "WeeklySchedule": {
      "type": "structure",
      "members": {
        "dayOfWeek": {
          "shape": "DayOfWeek",
          "locationName": "dayOfWeek",
          "documentation": "<p>The day of the week when Amazon Macie runs the job.</p>"
        }
      },
      "documentation": "<p>Specifies a weekly recurrence pattern for running a classification job.</p>"
    },
    "__boolean": {
      "type": "boolean"
    },
    "__double": {
      "type": "double"
    },
    "__integer": {
      "type": "integer"
    },
    "__listOfAdminAccount": {
      "type": "list",
      "member": {
        "shape": "AdminAccount"
      }
    },
    "__listOfBatchGetCustomDataIdentifierSummary": {
      "type": "list",
      "member": {
        "shape": "BatchGetCustomDataIdentifierSummary"
      }
    },
    "__listOfBucketMetadata": {
      "type": "list",
      "member": {
        "shape": "BucketMetadata"
      }
    },
    "__listOfCustomDataIdentifierSummary": {
      "type": "list",
      "member": {
        "shape": "CustomDataIdentifierSummary"
      }
    },
    "__listOfFinding": {
      "type": "list",
      "member": {
        "shape": "Finding"
      }
    },
    "__listOfFindingType": {
      "type": "list",
      "member": {
        "shape": "FindingType"
      }
    },
    "__listOfFindingsFilterListItem": {
      "type": "list",
      "member": {
        "shape": "FindingsFilterListItem"
      }
    },
    "__listOfGroupCount": {
      "type": "list",
      "member": {
        "shape": "GroupCount"
      }
    },
    "__listOfInvitation": {
      "type": "list",
      "member": {
        "shape": "Invitation"
      }
    },
    "__listOfJobScopeTerm": {
      "type": "list",
      "member": {
        "shape": "JobScopeTerm"
      }
    },
    "__listOfJobSummary": {
      "type": "list",
      "member": {
        "shape": "JobSummary"
      }
    },
    "__listOfKeyValuePair": {
      "type": "list",
      "member": {
        "shape": "KeyValuePair"
      }
    },
    "__listOfListJobsFilterTerm": {
      "type": "list",
      "member": {
        "shape": "ListJobsFilterTerm"
      }
    },
    "__listOfMember": {
      "type": "list",
      "member": {
        "shape": "Member"
      }
    },
    "__listOfS3BucketDefinitionForJob": {
      "type": "list",
      "member": {
        "shape": "S3BucketDefinitionForJob"
      }
    },
    "__listOfTagValuePair": {
      "type": "list",
      "member": {
        "shape": "TagValuePair"
      }
    },
    "__listOfUnprocessedAccount": {
      "type": "list",
      "member": {
        "shape": "UnprocessedAccount"
      }
    },
    "__listOfUsageByAccount": {
      "type": "list",
      "member": {
        "shape": "UsageByAccount"
      }
    },
    "__listOfUsageRecord": {
      "type": "list",
      "member": {
        "shape": "UsageRecord"
      }
    },
    "__listOfUsageStatisticsFilter": {
      "type": "list",
      "member": {
        "shape": "UsageStatisticsFilter"
      }
    },
    "__listOfUsageTotal": {
      "type": "list",
      "member": {
        "shape": "UsageTotal"
      }
    },
    "__listOf__string": {
      "type": "list",
      "member": {
        "shape": "__string"
      }
    },
    "__long": {
      "type": "long"
    },
    "__string": {
      "type": "string"
    },
    "__timestampIso8601": {
      "type": "timestamp",
      "timestampFormat": "iso8601"
    }
  },
  "documentation": "<p>Amazon Macie is a fully managed data security and data privacy service that uses machine learning and pattern matching to discover and protect your sensitive data in AWS. Macie automates the discovery of sensitive data, such as PII and intellectual property, to provide you with insight into the data that your organization stores in AWS. Macie also provides an inventory of your Amazon S3 buckets, which it continually monitors for you. If Macie detects sensitive data or potential data access issues, it generates detailed findings for you to review and act upon as necessary.</p>"
}
]===]))
