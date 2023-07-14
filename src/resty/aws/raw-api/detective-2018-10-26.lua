local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-10-26",
    "endpointPrefix": "api.detective",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon Detective",
    "serviceId": "Detective",
    "signatureVersion": "v4",
    "signingName": "detective",
    "uid": "detective-2018-10-26"
  },
  "operations": {
    "AcceptInvitation": {
      "name": "AcceptInvitation",
      "http": {
        "method": "PUT",
        "requestUri": "/invitation"
      },
      "input": {
        "shape": "AcceptInvitationRequest"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Accepts an invitation for the member account to contribute data to a behavior graph. This operation can only be called by an invited member account. </p> <p>The request provides the ARN of behavior graph.</p> <p>The member account status in the graph must be <code>INVITED</code>.</p>"
    },
    "CreateGraph": {
      "name": "CreateGraph",
      "http": {
        "method": "POST",
        "requestUri": "/graph"
      },
      "output": {
        "shape": "CreateGraphResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p>Creates a new behavior graph for the calling account, and sets that account as the master account. This operation is called by the account that is enabling Detective.</p> <p>Before you try to enable Detective, make sure that your account has been enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this requirement, you cannot enable Detective. If you do meet the GuardDuty prerequisite, then when you make the request to enable Detective, it checks whether your data volume is within the Detective quota. If it exceeds the quota, then you cannot enable Detective. </p> <p>The operation also enables Detective for the calling account in the currently selected Region. It returns the ARN of the new behavior graph.</p> <p> <code>CreateGraph</code> triggers a process to create the corresponding data tables for the new behavior graph.</p> <p>An account can only be the master account for one behavior graph within a Region. If the same account calls <code>CreateGraph</code> with the same master account, it always returns the same behavior graph ARN. It does not create a new behavior graph.</p>"
    },
    "CreateMembers": {
      "name": "CreateMembers",
      "http": {
        "method": "POST",
        "requestUri": "/graph/members"
      },
      "input": {
        "shape": "CreateMembersRequest"
      },
      "output": {
        "shape": "CreateMembersResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        }
      ],
      "documentation": "<p>Sends a request to invite the specified AWS accounts to be member accounts in the behavior graph. This operation can only be called by the master account for a behavior graph. </p> <p> <code>CreateMembers</code> verifies the accounts and then sends invitations to the verified accounts.</p> <p>The request provides the behavior graph ARN and the list of accounts to invite.</p> <p>The response separates the requested accounts into two lists:</p> <ul> <li> <p>The accounts that <code>CreateMembers</code> was able to start the verification for. This list includes member accounts that are being verified, that have passed verification and are being sent an invitation, and that have failed verification.</p> </li> <li> <p>The accounts that <code>CreateMembers</code> was unable to process. This list includes accounts that were already invited to be member accounts in the behavior graph.</p> </li> </ul>"
    },
    "DeleteGraph": {
      "name": "DeleteGraph",
      "http": {
        "method": "POST",
        "requestUri": "/graph/removal"
      },
      "input": {
        "shape": "DeleteGraphRequest"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Disables the specified behavior graph and queues it to be deleted. This operation removes the graph from each member account's list of behavior graphs.</p> <p> <code>DeleteGraph</code> can only be called by the master account for a behavior graph.</p>"
    },
    "DeleteMembers": {
      "name": "DeleteMembers",
      "http": {
        "method": "POST",
        "requestUri": "/graph/members/removal"
      },
      "input": {
        "shape": "DeleteMembersRequest"
      },
      "output": {
        "shape": "DeleteMembersResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Deletes one or more member accounts from the master account behavior graph. This operation can only be called by a Detective master account. That account cannot use <code>DeleteMembers</code> to delete their own account from the behavior graph. To disable a behavior graph, the master account uses the <code>DeleteGraph</code> API method.</p>"
    },
    "DisassociateMembership": {
      "name": "DisassociateMembership",
      "http": {
        "method": "POST",
        "requestUri": "/membership/removal"
      },
      "input": {
        "shape": "DisassociateMembershipRequest"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Removes the member account from the specified behavior graph. This operation can only be called by a member account that has the <code>ENABLED</code> status.</p>"
    },
    "GetMembers": {
      "name": "GetMembers",
      "http": {
        "method": "POST",
        "requestUri": "/graph/members/get"
      },
      "input": {
        "shape": "GetMembersRequest"
      },
      "output": {
        "shape": "GetMembersResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns the membership details for specified member accounts for a behavior graph.</p>"
    },
    "ListGraphs": {
      "name": "ListGraphs",
      "http": {
        "method": "POST",
        "requestUri": "/graphs/list"
      },
      "input": {
        "shape": "ListGraphsRequest"
      },
      "output": {
        "shape": "ListGraphsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns the list of behavior graphs that the calling account is a master of. This operation can only be called by a master account.</p> <p>Because an account can currently only be the master of one behavior graph within a Region, the results always contain a single graph.</p>"
    },
    "ListInvitations": {
      "name": "ListInvitations",
      "http": {
        "method": "POST",
        "requestUri": "/invitations/list"
      },
      "input": {
        "shape": "ListInvitationsRequest"
      },
      "output": {
        "shape": "ListInvitationsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Retrieves the list of open and accepted behavior graph invitations for the member account. This operation can only be called by a member account.</p> <p>Open invitations are invitations that the member account has not responded to.</p> <p>The results do not include behavior graphs for which the member account declined the invitation. The results also do not include behavior graphs that the member account resigned from or was removed from.</p>"
    },
    "ListMembers": {
      "name": "ListMembers",
      "http": {
        "method": "POST",
        "requestUri": "/graph/members/list"
      },
      "input": {
        "shape": "ListMembersRequest"
      },
      "output": {
        "shape": "ListMembersResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Retrieves the list of member accounts for a behavior graph. Does not return member accounts that were removed from the behavior graph.</p>"
    },
    "RejectInvitation": {
      "name": "RejectInvitation",
      "http": {
        "method": "POST",
        "requestUri": "/invitation/removal"
      },
      "input": {
        "shape": "RejectInvitationRequest"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Rejects an invitation to contribute the account data to a behavior graph. This operation must be called by a member account that has the <code>INVITED</code> status.</p>"
    },
    "StartMonitoringMember": {
      "name": "StartMonitoringMember",
      "http": {
        "method": "POST",
        "requestUri": "/graph/member/monitoringstate"
      },
      "input": {
        "shape": "StartMonitoringMemberRequest"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Sends a request to enable data ingest for a member account that has a status of <code>ACCEPTED_BUT_DISABLED</code>.</p> <p>For valid member accounts, the status is updated as follows.</p> <ul> <li> <p>If Detective enabled the member account, then the new status is <code>ENABLED</code>.</p> </li> <li> <p>If Detective cannot enable the member account, the status remains <code>ACCEPTED_BUT_DISABLED</code>. </p> </li> </ul>"
    }
  },
  "shapes": {
    "AcceptInvitationRequest": {
      "type": "structure",
      "required": [
        "GraphArn"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph that the member account is accepting the invitation for.</p> <p>The member account status in the behavior graph must be <code>INVITED</code>.</p>"
        }
      }
    },
    "Account": {
      "type": "structure",
      "required": [
        "AccountId",
        "EmailAddress"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account identifier of the AWS account.</p>"
        },
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The AWS account root user email address for the AWS account.</p>"
        }
      },
      "documentation": "<p>An AWS account that is the master of or a member of a behavior graph.</p>"
    },
    "AccountId": {
      "type": "string",
      "max": 12,
      "min": 12,
      "pattern": "^[0-9]+$"
    },
    "AccountIdList": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      },
      "max": 50,
      "min": 1
    },
    "AccountList": {
      "type": "list",
      "member": {
        "shape": "Account"
      },
      "max": 50,
      "min": 1
    },
    "CreateGraphResponse": {
      "type": "structure",
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the new behavior graph.</p>"
        }
      }
    },
    "CreateMembersRequest": {
      "type": "structure",
      "required": [
        "GraphArn",
        "Accounts"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph to invite the member accounts to contribute their data to.</p>"
        },
        "Message": {
          "shape": "EmailMessage",
          "documentation": "<p>Customized message text to include in the invitation email message to the invited member accounts.</p>"
        },
        "Accounts": {
          "shape": "AccountList",
          "documentation": "<p>The list of AWS accounts to invite to become member accounts in the behavior graph. For each invited account, the account list contains the account identifier and the AWS account root user email address.</p>"
        }
      }
    },
    "CreateMembersResponse": {
      "type": "structure",
      "members": {
        "Members": {
          "shape": "MemberDetailList",
          "documentation": "<p>The set of member account invitation requests that Detective was able to process. This includes accounts that are being verified, that failed verification, and that passed verification and are being sent an invitation.</p>"
        },
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccountList",
          "documentation": "<p>The list of accounts for which Detective was unable to process the invitation request. For each account, the list provides the reason why the request could not be processed. The list includes accounts that are already member accounts in the behavior graph.</p>"
        }
      }
    },
    "DeleteGraphRequest": {
      "type": "structure",
      "required": [
        "GraphArn"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph to disable.</p>"
        }
      }
    },
    "DeleteMembersRequest": {
      "type": "structure",
      "required": [
        "GraphArn",
        "AccountIds"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph to delete members from.</p>"
        },
        "AccountIds": {
          "shape": "AccountIdList",
          "documentation": "<p>The list of AWS account identifiers for the member accounts to delete from the behavior graph.</p>"
        }
      }
    },
    "DeleteMembersResponse": {
      "type": "structure",
      "members": {
        "AccountIds": {
          "shape": "AccountIdList",
          "documentation": "<p>The list of AWS account identifiers for the member accounts that Detective successfully deleted from the behavior graph.</p>"
        },
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccountList",
          "documentation": "<p>The list of member accounts that Detective was not able to delete from the behavior graph. For each member account, provides the reason that the deletion could not be processed.</p>"
        }
      }
    },
    "DisassociateMembershipRequest": {
      "type": "structure",
      "required": [
        "GraphArn"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph to remove the member account from.</p> <p>The member account's member status in the behavior graph must be <code>ENABLED</code>.</p>"
        }
      }
    },
    "EmailAddress": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^.+@.+$"
    },
    "EmailMessage": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "GetMembersRequest": {
      "type": "structure",
      "required": [
        "GraphArn",
        "AccountIds"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph for which to request the member details.</p>"
        },
        "AccountIds": {
          "shape": "AccountIdList",
          "documentation": "<p>The list of AWS account identifiers for the member account for which to return member details.</p> <p>You cannot use <code>GetMembers</code> to retrieve information about member accounts that were removed from the behavior graph.</p>"
        }
      }
    },
    "GetMembersResponse": {
      "type": "structure",
      "members": {
        "MemberDetails": {
          "shape": "MemberDetailList",
          "documentation": "<p>The member account details that Detective is returning in response to the request.</p>"
        },
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccountList",
          "documentation": "<p>The requested member accounts for which Detective was unable to return member details.</p> <p>For each account, provides the reason why the request could not be processed.</p>"
        }
      }
    },
    "Graph": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the behavior graph was created. The value is in milliseconds since the epoch.</p>"
        }
      },
      "documentation": "<p>A behavior graph in Detective.</p>"
    },
    "GraphArn": {
      "type": "string",
      "pattern": "^arn:aws[-\\w]{0,10}?:detective:[-\\w]{2,20}?:\\d{12}?:graph:[abcdef\\d]{32}?$"
    },
    "GraphList": {
      "type": "list",
      "member": {
        "shape": "Graph"
      }
    },
    "ListGraphsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>For requests to get the next page of results, the pagination token that was returned with the previous set of results. The initial request does not include a pagination token.</p>"
        },
        "MaxResults": {
          "shape": "MemberResultsLimit",
          "documentation": "<p>The maximum number of graphs to return at a time. The total must be less than the overall limit on the number of results to return, which is currently 200.</p>"
        }
      }
    },
    "ListGraphsResponse": {
      "type": "structure",
      "members": {
        "GraphList": {
          "shape": "GraphList",
          "documentation": "<p>A list of behavior graphs that the account is a master for.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If there are more behavior graphs remaining in the results, then this is the pagination token to use to request the next page of behavior graphs.</p>"
        }
      }
    },
    "ListInvitationsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>For requests to retrieve the next page of results, the pagination token that was returned with the previous page of results. The initial request does not include a pagination token.</p>"
        },
        "MaxResults": {
          "shape": "MemberResultsLimit",
          "documentation": "<p>The maximum number of behavior graph invitations to return in the response. The total must be less than the overall limit on the number of results to return, which is currently 200.</p>"
        }
      }
    },
    "ListInvitationsResponse": {
      "type": "structure",
      "members": {
        "Invitations": {
          "shape": "MemberDetailList",
          "documentation": "<p>The list of behavior graphs for which the member account has open or accepted invitations.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If there are more behavior graphs remaining in the results, then this is the pagination token to use to request the next page of behavior graphs.</p>"
        }
      }
    },
    "ListMembersRequest": {
      "type": "structure",
      "required": [
        "GraphArn"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph for which to retrieve the list of member accounts.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>For requests to retrieve the next page of member account results, the pagination token that was returned with the previous page of results. The initial request does not include a pagination token.</p>"
        },
        "MaxResults": {
          "shape": "MemberResultsLimit",
          "documentation": "<p>The maximum number of member accounts to include in the response. The total must be less than the overall limit on the number of results to return, which is currently 200.</p>"
        }
      }
    },
    "ListMembersResponse": {
      "type": "structure",
      "members": {
        "MemberDetails": {
          "shape": "MemberDetailList",
          "documentation": "<p>The list of member accounts in the behavior graph.</p> <p>The results include member accounts that did not pass verification and member accounts that have not yet accepted the invitation to the behavior graph. The results do not include member accounts that were removed from the behavior graph.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If there are more member accounts remaining in the results, then this is the pagination token to use to request the next page of member accounts.</p>"
        }
      }
    },
    "MemberDetail": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account identifier for the member account.</p>"
        },
        "EmailAddress": {
          "shape": "EmailAddress",
          "documentation": "<p>The AWS account root user email address for the member account.</p>"
        },
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph that the member account was invited to.</p>"
        },
        "MasterId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account identifier of the master account for the behavior graph.</p>"
        },
        "Status": {
          "shape": "MemberStatus",
          "documentation": "<p>The current membership status of the member account. The status can have one of the following values:</p> <ul> <li> <p> <code>INVITED</code> - Indicates that the member was sent an invitation but has not yet responded.</p> </li> <li> <p> <code>VERIFICATION_IN_PROGRESS</code> - Indicates that Detective is verifying that the account identifier and email address provided for the member account match. If they do match, then Detective sends the invitation. If the email address and account identifier don't match, then the member cannot be added to the behavior graph.</p> </li> <li> <p> <code>VERIFICATION_FAILED</code> - Indicates that the account and email address provided for the member account do not match, and Detective did not send an invitation to the account.</p> </li> <li> <p> <code>ENABLED</code> - Indicates that the member account accepted the invitation to contribute to the behavior graph.</p> </li> <li> <p> <code>ACCEPTED_BUT_DISABLED</code> - Indicates that the member account accepted the invitation but is prevented from contributing data to the behavior graph. <code>DisabledReason</code> provides the reason why the member account is not enabled.</p> </li> </ul> <p>Member accounts that declined an invitation or that were removed from the behavior graph are not included.</p>"
        },
        "DisabledReason": {
          "shape": "MemberDisabledReason",
          "documentation": "<p>For member accounts with a status of <code>ACCEPTED_BUT_DISABLED</code>, the reason that the member account is not enabled.</p> <p>The reason can have one of the following values:</p> <ul> <li> <p> <code>VOLUME_TOO_HIGH</code> - Indicates that adding the member account would cause the data volume for the behavior graph to be too high.</p> </li> <li> <p> <code>VOLUME_UNKNOWN</code> - Indicates that Detective is unable to verify the data volume for the member account. This is usually because the member account is not enrolled in Amazon GuardDuty. </p> </li> </ul>"
        },
        "InvitedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that Detective sent the invitation to the member account. The value is in milliseconds since the epoch.</p>"
        },
        "UpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the member account was last updated. The value is in milliseconds since the epoch.</p>"
        },
        "PercentOfGraphUtilization": {
          "shape": "Percentage",
          "documentation": "<p>The member account data volume as a percentage of the maximum allowed data volume. 0 indicates 0 percent, and 100 indicates 100 percent.</p> <p>Note that this is not the percentage of the behavior graph data volume.</p> <p>For example, the data volume for the behavior graph is 80 GB per day. The maximum data volume is 160 GB per day. If the data volume for the member account is 40 GB per day, then <code>PercentOfGraphUtilization</code> is 25. It represents 25% of the maximum allowed data volume. </p>"
        },
        "PercentOfGraphUtilizationUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the graph utilization percentage was last updated.</p>"
        }
      },
      "documentation": "<p>Details about a member account that was invited to contribute to a behavior graph.</p>"
    },
    "MemberDetailList": {
      "type": "list",
      "member": {
        "shape": "MemberDetail"
      }
    },
    "MemberDisabledReason": {
      "type": "string",
      "enum": [
        "VOLUME_TOO_HIGH",
        "VOLUME_UNKNOWN"
      ]
    },
    "MemberResultsLimit": {
      "type": "integer",
      "box": true,
      "max": 200,
      "min": 1
    },
    "MemberStatus": {
      "type": "string",
      "enum": [
        "INVITED",
        "VERIFICATION_IN_PROGRESS",
        "VERIFICATION_FAILED",
        "ENABLED",
        "ACCEPTED_BUT_DISABLED"
      ]
    },
    "PaginationToken": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "Percentage": {
      "type": "double"
    },
    "RejectInvitationRequest": {
      "type": "structure",
      "required": [
        "GraphArn"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph to reject the invitation to.</p> <p>The member account's current member status in the behavior graph must be <code>INVITED</code>.</p>"
        }
      }
    },
    "StartMonitoringMemberRequest": {
      "type": "structure",
      "required": [
        "GraphArn",
        "AccountId"
      ],
      "members": {
        "GraphArn": {
          "shape": "GraphArn",
          "documentation": "<p>The ARN of the behavior graph.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID of the member account to try to enable.</p> <p>The account must be an invited member account with a status of <code>ACCEPTED_BUT_DISABLED</code>. </p>"
        }
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UnprocessedAccount": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account identifier of the member account that was not processed.</p>"
        },
        "Reason": {
          "shape": "UnprocessedReason",
          "documentation": "<p>The reason that the member account request could not be processed.</p>"
        }
      },
      "documentation": "<p>A member account that was included in a request but for which the request could not be processed.</p>"
    },
    "UnprocessedAccountList": {
      "type": "list",
      "member": {
        "shape": "UnprocessedAccount"
      }
    },
    "UnprocessedReason": {
      "type": "string"
    }
  },
  "documentation": "<p>Detective uses machine learning and purpose-built visualizations to help you analyze and investigate security issues across your Amazon Web Services (AWS) workloads. Detective automatically extracts time-based events such as login attempts, API calls, and network traffic from AWS CloudTrail and Amazon Virtual Private Cloud (Amazon VPC) flow logs. It also extracts findings detected by Amazon GuardDuty.</p> <p>The Detective API primarily supports the creation and management of behavior graphs. A behavior graph contains the extracted data from a set of member accounts, and is created and managed by a master account.</p> <p>Every behavior graph is specific to a Region. You can only use the API to manage graphs that belong to the Region that is associated with the currently selected endpoint.</p> <p>A Detective master account can use the Detective API to do the following:</p> <ul> <li> <p>Enable and disable Detective. Enabling Detective creates a new behavior graph.</p> </li> <li> <p>View the list of member accounts in a behavior graph.</p> </li> <li> <p>Add member accounts to a behavior graph.</p> </li> <li> <p>Remove member accounts from a behavior graph.</p> </li> </ul> <p>A member account can use the Detective API to do the following:</p> <ul> <li> <p>View the list of behavior graphs that they are invited to.</p> </li> <li> <p>Accept an invitation to contribute to a behavior graph.</p> </li> <li> <p>Decline an invitation to contribute to a behavior graph.</p> </li> <li> <p>Remove their account from a behavior graph.</p> </li> </ul> <p>All API actions are logged as CloudTrail events. See <a href=\"https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html\">Logging Detective API Calls with CloudTrail</a>.</p>"
}
]===]))
