local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2020-07-20",
    "endpointPrefix": "sso",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "SSO Admin",
    "serviceFullName": "AWS Single Sign-On Admin",
    "serviceId": "SSO Admin",
    "signatureVersion": "v4",
    "signingName": "sso",
    "targetPrefix": "SWBExternalService",
    "uid": "sso-admin-2020-07-20"
  },
  "operations": {
    "AttachManagedPolicyToPermissionSet": {
      "name": "AttachManagedPolicyToPermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AttachManagedPolicyToPermissionSetRequest"
      },
      "output": {
        "shape": "AttachManagedPolicyToPermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Attaches an IAM managed policy ARN to a permission set.</p>"
    },
    "CreateAccountAssignment": {
      "name": "CreateAccountAssignment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAccountAssignmentRequest"
      },
      "output": {
        "shape": "CreateAccountAssignmentResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Assigns access to a principal for a specified AWS account using a specified permission set.</p> <note> <p>The term <i>principal</i> here refers to a user or group that is defined in AWS SSO.</p> </note>"
    },
    "CreatePermissionSet": {
      "name": "CreatePermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePermissionSetRequest"
      },
      "output": {
        "shape": "CreatePermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Creates a permission set within a specified SSO instance.</p>"
    },
    "DeleteAccountAssignment": {
      "name": "DeleteAccountAssignment",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAccountAssignmentRequest"
      },
      "output": {
        "shape": "DeleteAccountAssignmentResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Deletes a principal's access from a specified AWS account using a specified permission set.</p>"
    },
    "DeleteInlinePolicyFromPermissionSet": {
      "name": "DeleteInlinePolicyFromPermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteInlinePolicyFromPermissionSetRequest"
      },
      "output": {
        "shape": "DeleteInlinePolicyFromPermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Deletes the inline policy from a specified permission set.</p>"
    },
    "DeletePermissionSet": {
      "name": "DeletePermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePermissionSetRequest"
      },
      "output": {
        "shape": "DeletePermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Deletes the specified permission set.</p>"
    },
    "DescribeAccountAssignmentCreationStatus": {
      "name": "DescribeAccountAssignmentCreationStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAccountAssignmentCreationStatusRequest"
      },
      "output": {
        "shape": "DescribeAccountAssignmentCreationStatusResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Describes the status of the assignment creation request.</p>"
    },
    "DescribeAccountAssignmentDeletionStatus": {
      "name": "DescribeAccountAssignmentDeletionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAccountAssignmentDeletionStatusRequest"
      },
      "output": {
        "shape": "DescribeAccountAssignmentDeletionStatusResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Describes the status of the assignment deletion request.</p>"
    },
    "DescribePermissionSet": {
      "name": "DescribePermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePermissionSetRequest"
      },
      "output": {
        "shape": "DescribePermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets the details of the permission set.</p>"
    },
    "DescribePermissionSetProvisioningStatus": {
      "name": "DescribePermissionSetProvisioningStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePermissionSetProvisioningStatusRequest"
      },
      "output": {
        "shape": "DescribePermissionSetProvisioningStatusResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Describes the status for the given permission set provisioning request.</p>"
    },
    "DetachManagedPolicyFromPermissionSet": {
      "name": "DetachManagedPolicyFromPermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetachManagedPolicyFromPermissionSetRequest"
      },
      "output": {
        "shape": "DetachManagedPolicyFromPermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Detaches the attached IAM managed policy ARN from the specified permission set.</p>"
    },
    "GetInlinePolicyForPermissionSet": {
      "name": "GetInlinePolicyForPermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInlinePolicyForPermissionSetRequest"
      },
      "output": {
        "shape": "GetInlinePolicyForPermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Obtains the inline policy assigned to the permission set.</p>"
    },
    "ListAccountAssignmentCreationStatus": {
      "name": "ListAccountAssignmentCreationStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccountAssignmentCreationStatusRequest"
      },
      "output": {
        "shape": "ListAccountAssignmentCreationStatusResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the status of the AWS account assignment creation requests for a specified SSO instance.</p>"
    },
    "ListAccountAssignmentDeletionStatus": {
      "name": "ListAccountAssignmentDeletionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccountAssignmentDeletionStatusRequest"
      },
      "output": {
        "shape": "ListAccountAssignmentDeletionStatusResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the status of the AWS account assignment deletion requests for a specified SSO instance.</p>"
    },
    "ListAccountAssignments": {
      "name": "ListAccountAssignments",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccountAssignmentsRequest"
      },
      "output": {
        "shape": "ListAccountAssignmentsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the assignee of the specified AWS account with the specified permission set.</p>"
    },
    "ListAccountsForProvisionedPermissionSet": {
      "name": "ListAccountsForProvisionedPermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccountsForProvisionedPermissionSetRequest"
      },
      "output": {
        "shape": "ListAccountsForProvisionedPermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists all the AWS accounts where the specified permission set is provisioned.</p>"
    },
    "ListInstances": {
      "name": "ListInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListInstancesRequest"
      },
      "output": {
        "shape": "ListInstancesResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Lists the SSO instances that the caller has access to.</p>"
    },
    "ListManagedPoliciesInPermissionSet": {
      "name": "ListManagedPoliciesInPermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListManagedPoliciesInPermissionSetRequest"
      },
      "output": {
        "shape": "ListManagedPoliciesInPermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the IAM managed policy that is attached to a specified permission set.</p>"
    },
    "ListPermissionSetProvisioningStatus": {
      "name": "ListPermissionSetProvisioningStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPermissionSetProvisioningStatusRequest"
      },
      "output": {
        "shape": "ListPermissionSetProvisioningStatusResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the status of the permission set provisioning requests for a specified SSO instance.</p>"
    },
    "ListPermissionSets": {
      "name": "ListPermissionSets",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPermissionSetsRequest"
      },
      "output": {
        "shape": "ListPermissionSetsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the <a>PermissionSet</a>s in an SSO instance.</p>"
    },
    "ListPermissionSetsProvisionedToAccount": {
      "name": "ListPermissionSetsProvisionedToAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPermissionSetsProvisionedToAccountRequest"
      },
      "output": {
        "shape": "ListPermissionSetsProvisionedToAccountResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists all the permission sets that are provisioned to a specified AWS account.</p>"
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists the tags that are attached to a specified resource.</p>"
    },
    "ProvisionPermissionSet": {
      "name": "ProvisionPermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ProvisionPermissionSetRequest"
      },
      "output": {
        "shape": "ProvisionPermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>The process by which a specified permission set is provisioned to the specified target.</p>"
    },
    "PutInlinePolicyToPermissionSet": {
      "name": "PutInlinePolicyToPermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutInlinePolicyToPermissionSetRequest"
      },
      "output": {
        "shape": "PutInlinePolicyToPermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Attaches an IAM inline policy to a permission set.</p>"
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Associates a set of tags with a specified resource.</p>"
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Disassociates a set of tags from a specified resource.</p>"
    },
    "UpdatePermissionSet": {
      "name": "UpdatePermissionSet",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePermissionSetRequest"
      },
      "output": {
        "shape": "UpdatePermissionSetResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Updates an existing permission set.</p>"
    }
  },
  "shapes": {
    "AccountAssignment": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The identifier of the AWS account.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PrincipalType": {
          "shape": "PrincipalType",
          "documentation": "<p>The entity type for which the assignment will be created.</p>"
        },
        "PrincipalId": {
          "shape": "PrincipalId",
          "documentation": "<p>The identifier of the principal.</p>"
        }
      },
      "documentation": "<p>The assignment that indicates a principal's limited access to a specified AWS account with a specified permission set.</p> <note> <p>The term <i>principal</i> here refers to a user or group that is defined in AWS SSO.</p> </note>"
    },
    "AccountAssignmentList": {
      "type": "list",
      "member": {
        "shape": "AccountAssignment"
      }
    },
    "AccountAssignmentOperationStatus": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusValues",
          "documentation": "<p>The status of the permission set provisioning process.</p>"
        },
        "RequestId": {
          "shape": "UUId",
          "documentation": "<p>The identifier for tracking the request operation that is generated by the universally unique identifier (UUID) workflow.</p>"
        },
        "FailureReason": {
          "shape": "Reason",
          "documentation": "<p>The message that contains an error or exception in case of an operation failure.</p>"
        },
        "TargetId": {
          "shape": "TargetId",
          "documentation": "<p>The identifier for the chosen target.</p>"
        },
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>The entity type for which the assignment will be created.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PrincipalType": {
          "shape": "PrincipalType",
          "documentation": "<p>The entity type for which the assignment will be created.</p>"
        },
        "PrincipalId": {
          "shape": "PrincipalId",
          "documentation": "<p>The identifier of the principal.</p>"
        },
        "CreatedDate": {
          "shape": "Date",
          "documentation": "<p>The date that the permission set was created.</p>"
        }
      },
      "documentation": "<p>The status of the creation or deletion operation of an assignment that a principal needs to access an account.</p>"
    },
    "AccountAssignmentOperationStatusList": {
      "type": "list",
      "member": {
        "shape": "AccountAssignmentOperationStatusMetadata"
      }
    },
    "AccountAssignmentOperationStatusMetadata": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusValues",
          "documentation": "<p>The status of the permission set provisioning process.</p>"
        },
        "RequestId": {
          "shape": "UUId",
          "documentation": "<p>The identifier for tracking the request operation that is generated by the universally unique identifier (UUID) workflow.</p>"
        },
        "CreatedDate": {
          "shape": "Date",
          "documentation": "<p>The date that the permission set was created.</p>"
        }
      },
      "documentation": "<p>Provides information about the <a>AccountAssignment</a> creation request.</p>"
    },
    "AccountId": {
      "type": "string",
      "pattern": "\\d{12}"
    },
    "AccountList": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      }
    },
    "AttachManagedPolicyToPermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn",
        "ManagedPolicyArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the <a>PermissionSet</a> that the managed policy should be attached to.</p>"
        },
        "ManagedPolicyArn": {
          "shape": "ManagedPolicyArn",
          "documentation": "<p>The IAM managed policy ARN to be attached to a permission set.</p>"
        }
      }
    },
    "AttachManagedPolicyToPermissionSetResponse": {
      "type": "structure",
      "members": {}
    },
    "AttachedManagedPolicy": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the IAM managed policy.</p>"
        },
        "Arn": {
          "shape": "ManagedPolicyArn",
          "documentation": "<p>The ARN of the IAM managed policy. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      },
      "documentation": "<p>A structure that stores the details of the IAM managed policy.</p>"
    },
    "AttachedManagedPolicyList": {
      "type": "list",
      "member": {
        "shape": "AttachedManagedPolicy"
      }
    },
    "CreateAccountAssignmentRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "TargetId",
        "TargetType",
        "PermissionSetArn",
        "PrincipalType",
        "PrincipalId"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "TargetId": {
          "shape": "TargetId",
          "documentation": "<p>The identifier for the chosen target.</p>"
        },
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>The entity type for which the assignment will be created.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set that the admin wants to grant the principal access to.</p>"
        },
        "PrincipalType": {
          "shape": "PrincipalType",
          "documentation": "<p>The entity type for which the assignment will be created.</p>"
        },
        "PrincipalId": {
          "shape": "PrincipalId",
          "documentation": "<p>The identifier of the principal.</p>"
        }
      }
    },
    "CreateAccountAssignmentResponse": {
      "type": "structure",
      "members": {
        "AccountAssignmentCreationStatus": {
          "shape": "AccountAssignmentOperationStatus",
          "documentation": "<p>The status object for the account assignment creation operation.</p>"
        }
      }
    },
    "CreatePermissionSetRequest": {
      "type": "structure",
      "required": [
        "Name",
        "InstanceArn"
      ],
      "members": {
        "Name": {
          "shape": "PermissionSetName",
          "documentation": "<p>The name of the <a>PermissionSet</a>.</p>"
        },
        "Description": {
          "shape": "PermissionSetDescription",
          "documentation": "<p>The description of the <a>PermissionSet</a>.</p>"
        },
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "SessionDuration": {
          "shape": "Duration",
          "documentation": "<p>The length of time that the application user sessions are valid in the ISO-8601 standard.</p>"
        },
        "RelayState": {
          "shape": "RelayState",
          "documentation": "<p>Used to redirect users within the application during the federation authentication process.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to attach to the new <a>PermissionSet</a>.</p>"
        }
      }
    },
    "CreatePermissionSetResponse": {
      "type": "structure",
      "members": {
        "PermissionSet": {
          "shape": "PermissionSet",
          "documentation": "<p>Defines the level of access on an AWS account.</p>"
        }
      }
    },
    "Date": {
      "type": "timestamp"
    },
    "DeleteAccountAssignmentRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "TargetId",
        "TargetType",
        "PermissionSetArn",
        "PrincipalType",
        "PrincipalId"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "TargetId": {
          "shape": "TargetId",
          "documentation": "<p>The identifier for the chosen target.</p>"
        },
        "TargetType": {
          "shape": "TargetType",
          "documentation": "<p>The entity type for which the assignment will be deleted.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set that will be used to remove access.</p>"
        },
        "PrincipalType": {
          "shape": "PrincipalType",
          "documentation": "<p>The entity type for which the assignment will be deleted.</p>"
        },
        "PrincipalId": {
          "shape": "PrincipalId",
          "documentation": "<p>The identifier of the principal.</p>"
        }
      }
    },
    "DeleteAccountAssignmentResponse": {
      "type": "structure",
      "members": {
        "AccountAssignmentDeletionStatus": {
          "shape": "AccountAssignmentOperationStatus",
          "documentation": "<p>The status object for the account assignment deletion operation.</p>"
        }
      }
    },
    "DeleteInlinePolicyFromPermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set that will be used to remove access.</p>"
        }
      }
    },
    "DeleteInlinePolicyFromPermissionSetResponse": {
      "type": "structure",
      "members": {}
    },
    "DeletePermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set that should be deleted.</p>"
        }
      }
    },
    "DeletePermissionSetResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeAccountAssignmentCreationStatusRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "AccountAssignmentCreationRequestId"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "AccountAssignmentCreationRequestId": {
          "shape": "UUId",
          "documentation": "<p>The identifier that is used to track the request operation progress.</p>"
        }
      }
    },
    "DescribeAccountAssignmentCreationStatusResponse": {
      "type": "structure",
      "members": {
        "AccountAssignmentCreationStatus": {
          "shape": "AccountAssignmentOperationStatus",
          "documentation": "<p>The status object for the account assignment creation operation.</p>"
        }
      }
    },
    "DescribeAccountAssignmentDeletionStatusRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "AccountAssignmentDeletionRequestId"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "AccountAssignmentDeletionRequestId": {
          "shape": "UUId",
          "documentation": "<p>The identifier that is used to track the request operation progress.</p>"
        }
      }
    },
    "DescribeAccountAssignmentDeletionStatusResponse": {
      "type": "structure",
      "members": {
        "AccountAssignmentDeletionStatus": {
          "shape": "AccountAssignmentOperationStatus",
          "documentation": "<p>The status object for the account assignment deletion operation.</p>"
        }
      }
    },
    "DescribePermissionSetProvisioningStatusRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "ProvisionPermissionSetRequestId"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ProvisionPermissionSetRequestId": {
          "shape": "UUId",
          "documentation": "<p>The identifier that is provided by the <a>ProvisionPermissionSet</a> call to retrieve the current status of the provisioning workflow.</p>"
        }
      }
    },
    "DescribePermissionSetProvisioningStatusResponse": {
      "type": "structure",
      "members": {
        "PermissionSetProvisioningStatus": {
          "shape": "PermissionSetProvisioningStatus",
          "documentation": "<p>The status object for the permission set provisioning operation.</p>"
        }
      }
    },
    "DescribePermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set.</p>"
        }
      }
    },
    "DescribePermissionSetResponse": {
      "type": "structure",
      "members": {
        "PermissionSet": {
          "shape": "PermissionSet",
          "documentation": "<p>Describes the level of access on an AWS account.</p>"
        }
      }
    },
    "DetachManagedPolicyFromPermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn",
        "ManagedPolicyArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the <a>PermissionSet</a> from which the policy should be detached.</p>"
        },
        "ManagedPolicyArn": {
          "shape": "ManagedPolicyArn",
          "documentation": "<p>The IAM managed policy ARN to be attached to a permission set.</p>"
        }
      }
    },
    "DetachManagedPolicyFromPermissionSetResponse": {
      "type": "structure",
      "members": {}
    },
    "Duration": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^(-?)P(?=\\d|T\\d)(?:(\\d+)Y)?(?:(\\d+)M)?(?:(\\d+)([DW]))?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+(?:\\.\\d+)?)S)?)?$"
    },
    "GeneralArn": {
      "type": "string",
      "max": 2048,
      "min": 10,
      "pattern": "arn:aws:sso:([a-zA-Z0-9-]+)?:(\\d{12})?:[a-zA-Z0-9-]+/[a-zA-Z0-9-/.]+"
    },
    "GetInlinePolicyForPermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set.</p>"
        }
      }
    },
    "GetInlinePolicyForPermissionSetResponse": {
      "type": "structure",
      "members": {
        "InlinePolicy": {
          "shape": "PermissionSetPolicyDocument",
          "documentation": "<p>The IAM inline policy that is attached to the permission set.</p>"
        }
      }
    },
    "Id": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[a-zA-Z0-9-]*"
    },
    "InstanceArn": {
      "type": "string",
      "max": 1224,
      "min": 10,
      "pattern": "arn:aws:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}"
    },
    "InstanceList": {
      "type": "list",
      "member": {
        "shape": "InstanceMetadata"
      }
    },
    "InstanceMetadata": {
      "type": "structure",
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "IdentityStoreId": {
          "shape": "Id",
          "documentation": "<p>The identifier of the identity store that is connected to the SSO instance.</p>"
        }
      },
      "documentation": "<p>Provides information about the SSO instance.</p>"
    },
    "ListAccountAssignmentCreationStatusRequest": {
      "type": "structure",
      "required": [
        "InstanceArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the assignment.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        },
        "Filter": {
          "shape": "OperationStatusFilter",
          "documentation": "<p>Filters results based on the passed attribute value.</p>"
        }
      }
    },
    "ListAccountAssignmentCreationStatusResponse": {
      "type": "structure",
      "members": {
        "AccountAssignmentsCreationStatus": {
          "shape": "AccountAssignmentOperationStatusList",
          "documentation": "<p>The status object for the account assignment creation operation.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListAccountAssignmentDeletionStatusRequest": {
      "type": "structure",
      "required": [
        "InstanceArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the assignment.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        },
        "Filter": {
          "shape": "OperationStatusFilter",
          "documentation": "<p>Filters results based on the passed attribute value.</p>"
        }
      }
    },
    "ListAccountAssignmentDeletionStatusResponse": {
      "type": "structure",
      "members": {
        "AccountAssignmentsDeletionStatus": {
          "shape": "AccountAssignmentOperationStatusList",
          "documentation": "<p>The status object for the account assignment deletion operation.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListAccountAssignmentsRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "AccountId",
        "PermissionSetArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "AccountId": {
          "shape": "TargetId",
          "documentation": "<p>The identifier of the AWS account from which to list the assignments.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set from which to list assignments.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the assignment.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListAccountAssignmentsResponse": {
      "type": "structure",
      "members": {
        "AccountAssignments": {
          "shape": "AccountAssignmentList",
          "documentation": "<p>The list of assignments that match the input AWS account and permission set.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListAccountsForProvisionedPermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the <a>PermissionSet</a> from which the associated AWS accounts will be listed.</p>"
        },
        "ProvisioningStatus": {
          "shape": "ProvisioningStatus",
          "documentation": "<p>The permission set provisioning status for an AWS account.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the <a>PermissionSet</a>.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListAccountsForProvisionedPermissionSetResponse": {
      "type": "structure",
      "members": {
        "AccountIds": {
          "shape": "AccountList",
          "documentation": "<p>The list of AWS <code>AccountIds</code>.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListInstancesRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the instance.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListInstancesResponse": {
      "type": "structure",
      "members": {
        "Instances": {
          "shape": "InstanceList",
          "documentation": "<p>Lists the SSO instances that the caller has access to.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListManagedPoliciesInPermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the <a>PermissionSet</a> whose managed policies will be listed.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the <a>PermissionSet</a>.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListManagedPoliciesInPermissionSetResponse": {
      "type": "structure",
      "members": {
        "AttachedManagedPolicies": {
          "shape": "AttachedManagedPolicyList",
          "documentation": "<p>The array of the <a>AttachedManagedPolicy</a> data type object.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListPermissionSetProvisioningStatusRequest": {
      "type": "structure",
      "required": [
        "InstanceArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the assignment.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        },
        "Filter": {
          "shape": "OperationStatusFilter",
          "documentation": "<p>Filters results based on the passed attribute value.</p>"
        }
      }
    },
    "ListPermissionSetProvisioningStatusResponse": {
      "type": "structure",
      "members": {
        "PermissionSetsProvisioningStatus": {
          "shape": "PermissionSetProvisioningStatusList",
          "documentation": "<p>The status object for the permission set provisioning operation.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListPermissionSetsProvisionedToAccountRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "AccountId"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The identifier of the AWS account from which to list the assignments.</p>"
        },
        "ProvisioningStatus": {
          "shape": "ProvisioningStatus",
          "documentation": "<p>The status object for the permission set provisioning operation.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the assignment.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListPermissionSetsProvisionedToAccountResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        },
        "PermissionSets": {
          "shape": "PermissionSetList",
          "documentation": "<p>Defines the level of access that an AWS account has.</p>"
        }
      }
    },
    "ListPermissionSetsRequest": {
      "type": "structure",
      "required": [
        "InstanceArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to display for the assignment.</p>"
        }
      }
    },
    "ListPermissionSetsResponse": {
      "type": "structure",
      "members": {
        "PermissionSets": {
          "shape": "PermissionSetList",
          "documentation": "<p>Defines the level of access on an AWS account.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "ResourceArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ResourceArn": {
          "shape": "GeneralArn",
          "documentation": "<p>The ARN of the resource with the tags to be listed.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A set of key-value pairs that are used to manage the resource.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>"
        }
      }
    },
    "ManagedPolicyArn": {
      "type": "string",
      "max": 2048,
      "min": 20
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "Name": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "OperationStatusFilter": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusValues",
          "documentation": "<p>Filters the list operations result based on the status attribute.</p>"
        }
      },
      "documentation": "<p>Filters he operation status list based on the passed attribute value.</p>"
    },
    "PermissionSet": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "PermissionSetName",
          "documentation": "<p>The name of the permission set.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "Description": {
          "shape": "PermissionSetDescription",
          "documentation": "<p>The description of the <a>PermissionSet</a>.</p>"
        },
        "CreatedDate": {
          "shape": "Date",
          "documentation": "<p>The date that the permission set was created.</p>"
        },
        "SessionDuration": {
          "shape": "Duration",
          "documentation": "<p>The length of time that the application user sessions are valid for in the ISO-8601 standard.</p>"
        },
        "RelayState": {
          "shape": "RelayState",
          "documentation": "<p>Used to redirect users within the application during the federation authentication process.</p>"
        }
      },
      "documentation": "<p>An entity that contains IAM policies.</p>"
    },
    "PermissionSetArn": {
      "type": "string",
      "max": 1224,
      "min": 10,
      "pattern": "arn:aws:sso:::permissionSet/(sso)?ins-[a-zA-Z0-9-.]{16}/ps-[a-zA-Z0-9-./]{16}"
    },
    "PermissionSetDescription": {
      "type": "string",
      "max": 700,
      "min": 1,
      "pattern": "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"
    },
    "PermissionSetList": {
      "type": "list",
      "member": {
        "shape": "PermissionSetArn"
      }
    },
    "PermissionSetName": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "PermissionSetPolicyDocument": {
      "type": "string",
      "max": 10240,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+",
      "sensitive": true
    },
    "PermissionSetProvisioningStatus": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusValues",
          "documentation": "<p>The status of the permission set provisioning process.</p>"
        },
        "RequestId": {
          "shape": "UUId",
          "documentation": "<p>The identifier for tracking the request operation that is generated by the universally unique identifier (UUID) workflow.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The identifier of the AWS account from which to list the assignments.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set that is being provisioned. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "FailureReason": {
          "shape": "Reason",
          "documentation": "<p>The message that contains an error or exception in case of an operation failure.</p>"
        },
        "CreatedDate": {
          "shape": "Date",
          "documentation": "<p>The date that the permission set was created.</p>"
        }
      },
      "documentation": "<p>A structure that is used to provide the status of the provisioning operation for a specified permission set.</p>"
    },
    "PermissionSetProvisioningStatusList": {
      "type": "list",
      "member": {
        "shape": "PermissionSetProvisioningStatusMetadata"
      }
    },
    "PermissionSetProvisioningStatusMetadata": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusValues",
          "documentation": "<p>The status of the permission set provisioning process.</p>"
        },
        "RequestId": {
          "shape": "UUId",
          "documentation": "<p>The identifier for tracking the request operation that is generated by the universally unique identifier (UUID) workflow.</p>"
        },
        "CreatedDate": {
          "shape": "Date",
          "documentation": "<p>The date that the permission set was created.</p>"
        }
      },
      "documentation": "<p>Provides information about the permission set provisioning status.</p>"
    },
    "PrincipalId": {
      "type": "string",
      "max": 47,
      "min": 1,
      "pattern": "^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$"
    },
    "PrincipalType": {
      "type": "string",
      "enum": [
        "USER",
        "GROUP"
      ]
    },
    "ProvisionPermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn",
        "TargetType"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set.</p>"
        },
        "TargetId": {
          "shape": "TargetId",
          "documentation": "<p>The identifier for the chosen target.</p>"
        },
        "TargetType": {
          "shape": "ProvisionTargetType",
          "documentation": "<p>The entity type for which the assignment will be created.</p>"
        }
      }
    },
    "ProvisionPermissionSetResponse": {
      "type": "structure",
      "members": {
        "PermissionSetProvisioningStatus": {
          "shape": "PermissionSetProvisioningStatus",
          "documentation": "<p>The status object for the permission set provisioning operation.</p>"
        }
      }
    },
    "ProvisionTargetType": {
      "type": "string",
      "enum": [
        "AWS_ACCOUNT",
        "ALL_PROVISIONED_ACCOUNTS"
      ]
    },
    "ProvisioningStatus": {
      "type": "string",
      "enum": [
        "LATEST_PERMISSION_SET_PROVISIONED",
        "LATEST_PERMISSION_SET_NOT_PROVISIONED"
      ]
    },
    "PutInlinePolicyToPermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn",
        "InlinePolicy"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set.</p>"
        },
        "InlinePolicy": {
          "shape": "PermissionSetPolicyDocument",
          "documentation": "<p>The IAM inline policy to attach to a <a>PermissionSet</a>.</p>"
        }
      }
    },
    "PutInlinePolicyToPermissionSetResponse": {
      "type": "structure",
      "members": {}
    },
    "Reason": {
      "type": "string",
      "pattern": "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"
    },
    "RelayState": {
      "type": "string",
      "max": 240,
      "min": 1,
      "pattern": "[a-zA-Z0-9&$@#\\\\\\/%?=~\\-_'\"|!:,.;*+\\[\\]\\ \\(\\)\\{\\}]+"
    },
    "StatusValues": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "FAILED",
        "SUCCEEDED"
      ]
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key for the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>A set of key-value pairs that are used to manage the resource. Tags can only be applied to permission sets and cannot be applied to corresponding roles that AWS SSO creates in AWS accounts.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeyList": {
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
      },
      "max": 50,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ResourceArn": {
          "shape": "GeneralArn",
          "documentation": "<p>The ARN of the resource with the tags to be listed.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A set of key-value pairs that are used to manage the resource.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TargetId": {
      "type": "string",
      "pattern": "\\d{12}"
    },
    "TargetType": {
      "type": "string",
      "enum": [
        "AWS_ACCOUNT"
      ]
    },
    "Token": {
      "type": "string",
      "max": 2048,
      "pattern": "^[-a-zA-Z0-9+=/]*"
    },
    "UUId": {
      "type": "string",
      "pattern": "\\b[0-9a-f]{8}\\b-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-\\b[0-9a-f]{12}\\b"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ResourceArn": {
          "shape": "GeneralArn",
          "documentation": "<p>The ARN of the resource with the tags to be listed.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of tags that are attached to the resource.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdatePermissionSetRequest": {
      "type": "structure",
      "required": [
        "InstanceArn",
        "PermissionSetArn"
      ],
      "members": {
        "InstanceArn": {
          "shape": "InstanceArn",
          "documentation": "<p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PermissionSetArn": {
          "shape": "PermissionSetArn",
          "documentation": "<p>The ARN of the permission set.</p>"
        },
        "Description": {
          "shape": "PermissionSetDescription",
          "documentation": "<p>The description of the <a>PermissionSet</a>.</p>"
        },
        "SessionDuration": {
          "shape": "Duration",
          "documentation": "<p>The length of time that the application user sessions are valid for in the ISO-8601 standard.</p>"
        },
        "RelayState": {
          "shape": "RelayState",
          "documentation": "<p>Used to redirect users within the application during the federation authentication process.</p>"
        }
      }
    },
    "UpdatePermissionSetResponse": {
      "type": "structure",
      "members": {}
    }
  }
}
]===]))