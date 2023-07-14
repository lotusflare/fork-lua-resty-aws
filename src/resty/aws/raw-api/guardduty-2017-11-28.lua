local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-11-28",
    "endpointPrefix": "guardduty",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon GuardDuty",
    "serviceId": "GuardDuty",
    "signatureVersion": "v4",
    "signingName": "guardduty",
    "uid": "guardduty-2017-11-28"
  },
  "operations": {
    "AcceptInvitation": {
      "name": "AcceptInvitation",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/master",
        "responseCode": 200
      },
      "input": {
        "shape": "AcceptInvitationRequest"
      },
      "output": {
        "shape": "AcceptInvitationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Accepts the invitation to be monitored by a master GuardDuty account.</p>"
    },
    "ArchiveFindings": {
      "name": "ArchiveFindings",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/findings/archive",
        "responseCode": 200
      },
      "input": {
        "shape": "ArchiveFindingsRequest"
      },
      "output": {
        "shape": "ArchiveFindingsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Archives GuardDuty findings that are specified by the list of finding IDs.</p> <note> <p>Only the master account can archive findings. Member accounts don't have permission to archive findings from their accounts.</p> </note>"
    },
    "CreateDetector": {
      "name": "CreateDetector",
      "http": {
        "method": "POST",
        "requestUri": "/detector",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateDetectorRequest"
      },
      "output": {
        "shape": "CreateDetectorResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Creates a single Amazon GuardDuty detector. A detector is a resource that represents the GuardDuty service. To start using GuardDuty, you must create a detector in each Region where you enable the service. You can have only one detector per account per Region. All data sources are enabled in a new detector by default.</p>"
    },
    "CreateFilter": {
      "name": "CreateFilter",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/filter",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateFilterRequest"
      },
      "output": {
        "shape": "CreateFilterResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Creates a filter using the specified finding criteria.</p>"
    },
    "CreateIPSet": {
      "name": "CreateIPSet",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/ipset",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateIPSetRequest"
      },
      "output": {
        "shape": "CreateIPSetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Creates a new IPSet, which is called a trusted IP list in the console user interface. An IPSet is a list of IP addresses that are trusted for secure communication with AWS infrastructure and applications. GuardDuty doesn't generate findings for IP addresses that are included in IPSets. Only users from the master account can use this operation.</p>"
    },
    "CreateMembers": {
      "name": "CreateMembers",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateMembersRequest"
      },
      "output": {
        "shape": "CreateMembersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Creates member accounts of the current AWS account by specifying a list of AWS account IDs. This step is a prerequisite for managing the associated member accounts either by invitation or through an organization.</p> <p>When using <code>Create Members</code> as an organizations delegated administrator this action will enable GuardDuty in the added member accounts, with the exception of the organization master account, which must enable GuardDuty prior to being added as a member.</p> <p>If you are adding accounts by invitation use this action after GuardDuty has been enabled in potential member accounts and before using <a href=\"https://docs.aws.amazon.com/guardduty/latest/APIReference/API_InviteMembers.html\"> <code>Invite Members</code> </a>.</p>"
    },
    "CreatePublishingDestination": {
      "name": "CreatePublishingDestination",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/publishingDestination",
        "responseCode": 200
      },
      "input": {
        "shape": "CreatePublishingDestinationRequest"
      },
      "output": {
        "shape": "CreatePublishingDestinationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Creates a publishing destination to export findings to. The resource to export findings to must exist before you use this operation.</p>"
    },
    "CreateSampleFindings": {
      "name": "CreateSampleFindings",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/findings/create",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateSampleFindingsRequest"
      },
      "output": {
        "shape": "CreateSampleFindingsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Generates example findings of types specified by the list of finding types. If 'NULL' is specified for <code>findingTypes</code>, the API generates example findings of all supported finding types.</p>"
    },
    "CreateThreatIntelSet": {
      "name": "CreateThreatIntelSet",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/threatintelset",
        "responseCode": 200
      },
      "input": {
        "shape": "CreateThreatIntelSetRequest"
      },
      "output": {
        "shape": "CreateThreatIntelSetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Creates a new ThreatIntelSet. ThreatIntelSets consist of known malicious IP addresses. GuardDuty generates findings based on ThreatIntelSets. Only users of the master account can use this operation.</p>"
    },
    "DeclineInvitations": {
      "name": "DeclineInvitations",
      "http": {
        "method": "POST",
        "requestUri": "/invitation/decline",
        "responseCode": 200
      },
      "input": {
        "shape": "DeclineInvitationsRequest"
      },
      "output": {
        "shape": "DeclineInvitationsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Declines invitations sent to the current member account by AWS accounts specified by their account IDs.</p>"
    },
    "DeleteDetector": {
      "name": "DeleteDetector",
      "http": {
        "method": "DELETE",
        "requestUri": "/detector/{detectorId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteDetectorRequest"
      },
      "output": {
        "shape": "DeleteDetectorResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes an Amazon GuardDuty detector that is specified by the detector ID.</p>"
    },
    "DeleteFilter": {
      "name": "DeleteFilter",
      "http": {
        "method": "DELETE",
        "requestUri": "/detector/{detectorId}/filter/{filterName}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteFilterRequest"
      },
      "output": {
        "shape": "DeleteFilterResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes the filter specified by the filter name.</p>"
    },
    "DeleteIPSet": {
      "name": "DeleteIPSet",
      "http": {
        "method": "DELETE",
        "requestUri": "/detector/{detectorId}/ipset/{ipSetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteIPSetRequest"
      },
      "output": {
        "shape": "DeleteIPSetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes the IPSet specified by the <code>ipSetId</code>. IPSets are called trusted IP lists in the console user interface.</p>"
    },
    "DeleteInvitations": {
      "name": "DeleteInvitations",
      "http": {
        "method": "POST",
        "requestUri": "/invitation/delete",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteInvitationsRequest"
      },
      "output": {
        "shape": "DeleteInvitationsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes invitations sent to the current member account by AWS accounts specified by their account IDs.</p>"
    },
    "DeleteMembers": {
      "name": "DeleteMembers",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member/delete",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteMembersRequest"
      },
      "output": {
        "shape": "DeleteMembersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.</p>"
    },
    "DeletePublishingDestination": {
      "name": "DeletePublishingDestination",
      "http": {
        "method": "DELETE",
        "requestUri": "/detector/{detectorId}/publishingDestination/{destinationId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeletePublishingDestinationRequest"
      },
      "output": {
        "shape": "DeletePublishingDestinationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes the publishing definition with the specified <code>destinationId</code>.</p>"
    },
    "DeleteThreatIntelSet": {
      "name": "DeleteThreatIntelSet",
      "http": {
        "method": "DELETE",
        "requestUri": "/detector/{detectorId}/threatintelset/{threatIntelSetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DeleteThreatIntelSetRequest"
      },
      "output": {
        "shape": "DeleteThreatIntelSetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.</p>"
    },
    "DescribeOrganizationConfiguration": {
      "name": "DescribeOrganizationConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/admin",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeOrganizationConfigurationRequest"
      },
      "output": {
        "shape": "DescribeOrganizationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns information about the account selected as the delegated administrator for GuardDuty.</p>"
    },
    "DescribePublishingDestination": {
      "name": "DescribePublishingDestination",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/publishingDestination/{destinationId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribePublishingDestinationRequest"
      },
      "output": {
        "shape": "DescribePublishingDestinationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns information about the publishing destination specified by the provided <code>destinationId</code>.</p>"
    },
    "DisableOrganizationAdminAccount": {
      "name": "DisableOrganizationAdminAccount",
      "http": {
        "method": "POST",
        "requestUri": "/admin/disable",
        "responseCode": 200
      },
      "input": {
        "shape": "DisableOrganizationAdminAccountRequest"
      },
      "output": {
        "shape": "DisableOrganizationAdminAccountResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Disables an AWS account within the Organization as the GuardDuty delegated administrator.</p>"
    },
    "DisassociateFromMasterAccount": {
      "name": "DisassociateFromMasterAccount",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/master/disassociate",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociateFromMasterAccountRequest"
      },
      "output": {
        "shape": "DisassociateFromMasterAccountResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Disassociates the current GuardDuty member account from its master account.</p>"
    },
    "DisassociateMembers": {
      "name": "DisassociateMembers",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member/disassociate",
        "responseCode": 200
      },
      "input": {
        "shape": "DisassociateMembersRequest"
      },
      "output": {
        "shape": "DisassociateMembersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.</p>"
    },
    "EnableOrganizationAdminAccount": {
      "name": "EnableOrganizationAdminAccount",
      "http": {
        "method": "POST",
        "requestUri": "/admin/enable",
        "responseCode": 200
      },
      "input": {
        "shape": "EnableOrganizationAdminAccountRequest"
      },
      "output": {
        "shape": "EnableOrganizationAdminAccountResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Enables an AWS account within the organization as the GuardDuty delegated administrator.</p>"
    },
    "GetDetector": {
      "name": "GetDetector",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDetectorRequest"
      },
      "output": {
        "shape": "GetDetectorResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Retrieves an Amazon GuardDuty detector specified by the detectorId.</p>"
    },
    "GetFilter": {
      "name": "GetFilter",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/filter/{filterName}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFilterRequest"
      },
      "output": {
        "shape": "GetFilterResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns the details of the filter specified by the filter name.</p>"
    },
    "GetFindings": {
      "name": "GetFindings",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/findings/get",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFindingsRequest"
      },
      "output": {
        "shape": "GetFindingsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Describes Amazon GuardDuty findings specified by finding IDs.</p>"
    },
    "GetFindingsStatistics": {
      "name": "GetFindingsStatistics",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/findings/statistics",
        "responseCode": 200
      },
      "input": {
        "shape": "GetFindingsStatisticsRequest"
      },
      "output": {
        "shape": "GetFindingsStatisticsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists Amazon GuardDuty findings statistics for the specified detector ID.</p>"
    },
    "GetIPSet": {
      "name": "GetIPSet",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/ipset/{ipSetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetIPSetRequest"
      },
      "output": {
        "shape": "GetIPSetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Retrieves the IPSet specified by the <code>ipSetId</code>.</p>"
    },
    "GetInvitationsCount": {
      "name": "GetInvitationsCount",
      "http": {
        "method": "GET",
        "requestUri": "/invitation/count",
        "responseCode": 200
      },
      "input": {
        "shape": "GetInvitationsCountRequest"
      },
      "output": {
        "shape": "GetInvitationsCountResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation.</p>"
    },
    "GetMasterAccount": {
      "name": "GetMasterAccount",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/master",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMasterAccountRequest"
      },
      "output": {
        "shape": "GetMasterAccountResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Provides the details for the GuardDuty master account associated with the current GuardDuty member account.</p>"
    },
    "GetMemberDetectors": {
      "name": "GetMemberDetectors",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member/detector/get",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMemberDetectorsRequest"
      },
      "output": {
        "shape": "GetMemberDetectorsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Describes which data sources are enabled for the member account's detector.</p>"
    },
    "GetMembers": {
      "name": "GetMembers",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member/get",
        "responseCode": 200
      },
      "input": {
        "shape": "GetMembersRequest"
      },
      "output": {
        "shape": "GetMembersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs.</p>"
    },
    "GetThreatIntelSet": {
      "name": "GetThreatIntelSet",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/threatintelset/{threatIntelSetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetThreatIntelSetRequest"
      },
      "output": {
        "shape": "GetThreatIntelSetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID.</p>"
    },
    "GetUsageStatistics": {
      "name": "GetUsageStatistics",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/usage/statistics",
        "responseCode": 200
      },
      "input": {
        "shape": "GetUsageStatisticsRequest"
      },
      "output": {
        "shape": "GetUsageStatisticsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector ID. For newly enabled detectors or data sources the cost returned will include only the usage so far under 30 days, this may differ from the cost metrics in the console, which projects usage over 30 days to provide a monthly cost estimate. For more information see <a href=\"https://docs.aws.amazon.com/guardduty/latest/ug/monitoring_costs.html#usage-calculations\">Understanding How Usage Costs are Calculated</a>.</p>"
    },
    "InviteMembers": {
      "name": "InviteMembers",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member/invite",
        "responseCode": 200
      },
      "input": {
        "shape": "InviteMembersRequest"
      },
      "output": {
        "shape": "InviteMembersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty, and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account.</p>"
    },
    "ListDetectors": {
      "name": "ListDetectors",
      "http": {
        "method": "GET",
        "requestUri": "/detector",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDetectorsRequest"
      },
      "output": {
        "shape": "ListDetectorsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists detectorIds of all the existing Amazon GuardDuty detector resources.</p>"
    },
    "ListFilters": {
      "name": "ListFilters",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/filter",
        "responseCode": 200
      },
      "input": {
        "shape": "ListFiltersRequest"
      },
      "output": {
        "shape": "ListFiltersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns a paginated list of the current filters.</p>"
    },
    "ListFindings": {
      "name": "ListFindings",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/findings",
        "responseCode": 200
      },
      "input": {
        "shape": "ListFindingsRequest"
      },
      "output": {
        "shape": "ListFindingsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists Amazon GuardDuty findings for the specified detector ID.</p>"
    },
    "ListIPSets": {
      "name": "ListIPSets",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/ipset",
        "responseCode": 200
      },
      "input": {
        "shape": "ListIPSetsRequest"
      },
      "output": {
        "shape": "ListIPSetsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated master account.</p>"
    },
    "ListInvitations": {
      "name": "ListInvitations",
      "http": {
        "method": "GET",
        "requestUri": "/invitation",
        "responseCode": 200
      },
      "input": {
        "shape": "ListInvitationsRequest"
      },
      "output": {
        "shape": "ListInvitationsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists all GuardDuty membership invitations that were sent to the current AWS account.</p>"
    },
    "ListMembers": {
      "name": "ListMembers",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/member",
        "responseCode": 200
      },
      "input": {
        "shape": "ListMembersRequest"
      },
      "output": {
        "shape": "ListMembersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists details about all member accounts for the current GuardDuty master account.</p>"
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
        "shape": "ListOrganizationAdminAccountsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists the accounts configured as GuardDuty delegated administrators.</p>"
    },
    "ListPublishingDestinations": {
      "name": "ListPublishingDestinations",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/publishingDestination",
        "responseCode": 200
      },
      "input": {
        "shape": "ListPublishingDestinationsRequest"
      },
      "output": {
        "shape": "ListPublishingDestinationsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Returns a list of publishing destinations associated with the specified <code>dectectorId</code>.</p>"
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
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists tags for a resource. Tagging is currently supported for detectors, finding filters, IP sets, and threat intel sets, with a limit of 50 tags per resource. When invoked, this operation returns all assigned tags for a given resource.</p>"
    },
    "ListThreatIntelSets": {
      "name": "ListThreatIntelSets",
      "http": {
        "method": "GET",
        "requestUri": "/detector/{detectorId}/threatintelset",
        "responseCode": 200
      },
      "input": {
        "shape": "ListThreatIntelSetsRequest"
      },
      "output": {
        "shape": "ListThreatIntelSetsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the master account are returned.</p>"
    },
    "StartMonitoringMembers": {
      "name": "StartMonitoringMembers",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member/start",
        "responseCode": 200
      },
      "input": {
        "shape": "StartMonitoringMembersRequest"
      },
      "output": {
        "shape": "StartMonitoringMembersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Turns on GuardDuty monitoring of the specified member accounts. Use this operation to restart monitoring of accounts that you stopped monitoring with the <code>StopMonitoringMembers</code> operation.</p>"
    },
    "StopMonitoringMembers": {
      "name": "StopMonitoringMembers",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member/stop",
        "responseCode": 200
      },
      "input": {
        "shape": "StopMonitoringMembersRequest"
      },
      "output": {
        "shape": "StopMonitoringMembersResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Stops GuardDuty monitoring for the specified member accounts. Use the <code>StartMonitoringMembers</code> operation to restart monitoring for those accounts.</p>"
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
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Adds tags to a resource.</p>"
    },
    "UnarchiveFindings": {
      "name": "UnarchiveFindings",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/findings/unarchive",
        "responseCode": 200
      },
      "input": {
        "shape": "UnarchiveFindingsRequest"
      },
      "output": {
        "shape": "UnarchiveFindingsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Unarchives GuardDuty findings specified by the <code>findingIds</code>.</p>"
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
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Removes tags from a resource.</p>"
    },
    "UpdateDetector": {
      "name": "UpdateDetector",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDetectorRequest"
      },
      "output": {
        "shape": "UpdateDetectorResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Updates the Amazon GuardDuty detector specified by the detectorId.</p>"
    },
    "UpdateFilter": {
      "name": "UpdateFilter",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/filter/{filterName}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateFilterRequest"
      },
      "output": {
        "shape": "UpdateFilterResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Updates the filter specified by the filter name.</p>"
    },
    "UpdateFindingsFeedback": {
      "name": "UpdateFindingsFeedback",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/findings/feedback",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateFindingsFeedbackRequest"
      },
      "output": {
        "shape": "UpdateFindingsFeedbackResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Marks the specified GuardDuty findings as useful or not useful.</p>"
    },
    "UpdateIPSet": {
      "name": "UpdateIPSet",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/ipset/{ipSetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateIPSetRequest"
      },
      "output": {
        "shape": "UpdateIPSetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Updates the IPSet specified by the IPSet ID.</p>"
    },
    "UpdateMemberDetectors": {
      "name": "UpdateMemberDetectors",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/member/detector/update",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateMemberDetectorsRequest"
      },
      "output": {
        "shape": "UpdateMemberDetectorsResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Contains information on member accounts to be updated.</p>"
    },
    "UpdateOrganizationConfiguration": {
      "name": "UpdateOrganizationConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/admin",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateOrganizationConfigurationRequest"
      },
      "output": {
        "shape": "UpdateOrganizationConfigurationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Updates the delegated administrator account with the values provided.</p>"
    },
    "UpdatePublishingDestination": {
      "name": "UpdatePublishingDestination",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/publishingDestination/{destinationId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdatePublishingDestinationRequest"
      },
      "output": {
        "shape": "UpdatePublishingDestinationResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Updates information about the publishing destination specified by the <code>destinationId</code>.</p>"
    },
    "UpdateThreatIntelSet": {
      "name": "UpdateThreatIntelSet",
      "http": {
        "method": "POST",
        "requestUri": "/detector/{detectorId}/threatintelset/{threatIntelSetId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateThreatIntelSetRequest"
      },
      "output": {
        "shape": "UpdateThreatIntelSetResponse"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "InternalServerErrorException"
        }
      ],
      "documentation": "<p>Updates the ThreatIntelSet specified by the ThreatIntelSet ID.</p>"
    }
  },
  "shapes": {
    "AcceptInvitationRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "MasterId",
        "InvitationId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty member account.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "MasterId": {
          "shape": "String",
          "documentation": "<p>The account ID of the master GuardDuty account whose invitation you're accepting.</p>",
          "locationName": "masterId"
        },
        "InvitationId": {
          "shape": "String",
          "documentation": "<p>The value that is used to validate the master account to the member account.</p>",
          "locationName": "invitationId"
        }
      }
    },
    "AcceptInvitationResponse": {
      "type": "structure",
      "members": {}
    },
    "AccessControlList": {
      "type": "structure",
      "members": {
        "AllowsPublicReadAccess": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether public read access for the bucket is enabled through an Access Control List (ACL).</p>",
          "locationName": "allowsPublicReadAccess"
        },
        "AllowsPublicWriteAccess": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether public write access for the bucket is enabled through an Access Control List (ACL).</p>",
          "locationName": "allowsPublicWriteAccess"
        }
      },
      "documentation": "<p>Contains information on the current access control policies for the bucket.</p>"
    },
    "AccessKeyDetails": {
      "type": "structure",
      "members": {
        "AccessKeyId": {
          "shape": "String",
          "documentation": "<p>The access key ID of the user.</p>",
          "locationName": "accessKeyId"
        },
        "PrincipalId": {
          "shape": "String",
          "documentation": "<p>The principal ID of the user.</p>",
          "locationName": "principalId"
        },
        "UserName": {
          "shape": "String",
          "documentation": "<p>The name of the user.</p>",
          "locationName": "userName"
        },
        "UserType": {
          "shape": "String",
          "documentation": "<p>The type of the user.</p>",
          "locationName": "userType"
        }
      },
      "documentation": "<p>Contains information about the access keys.</p>"
    },
    "AccountDetail": {
      "type": "structure",
      "required": [
        "AccountId",
        "Email"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The member account ID.</p>",
          "locationName": "accountId"
        },
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email address of the member account.</p>",
          "locationName": "email"
        }
      },
      "documentation": "<p>Contains information about the account.</p>"
    },
    "AccountDetails": {
      "type": "list",
      "member": {
        "shape": "AccountDetail"
      },
      "max": 50,
      "min": 1
    },
    "AccountId": {
      "type": "string",
      "max": 12,
      "min": 12
    },
    "AccountIds": {
      "type": "list",
      "member": {
        "shape": "AccountId"
      },
      "max": 50,
      "min": 1
    },
    "AccountLevelPermissions": {
      "type": "structure",
      "members": {
        "BlockPublicAccess": {
          "shape": "BlockPublicAccess",
          "documentation": "<p>Describes the S3 Block Public Access settings of the bucket's parent account.</p>",
          "locationName": "blockPublicAccess"
        }
      },
      "documentation": "<p>Contains information about the account level permissions on the S3 bucket.</p>"
    },
    "Action": {
      "type": "structure",
      "members": {
        "ActionType": {
          "shape": "String",
          "documentation": "<p>The GuardDuty finding activity type.</p>",
          "locationName": "actionType"
        },
        "AwsApiCallAction": {
          "shape": "AwsApiCallAction",
          "documentation": "<p>Information about the AWS_API_CALL action described in this finding.</p>",
          "locationName": "awsApiCallAction"
        },
        "DnsRequestAction": {
          "shape": "DnsRequestAction",
          "documentation": "<p>Information about the DNS_REQUEST action described in this finding.</p>",
          "locationName": "dnsRequestAction"
        },
        "NetworkConnectionAction": {
          "shape": "NetworkConnectionAction",
          "documentation": "<p>Information about the NETWORK_CONNECTION action described in this finding.</p>",
          "locationName": "networkConnectionAction"
        },
        "PortProbeAction": {
          "shape": "PortProbeAction",
          "documentation": "<p>Information about the PORT_PROBE action described in this finding.</p>",
          "locationName": "portProbeAction"
        }
      },
      "documentation": "<p>Contains information about actions.</p>"
    },
    "AdminAccount": {
      "type": "structure",
      "members": {
        "AdminAccountId": {
          "shape": "String",
          "documentation": "<p>The AWS account ID for the account.</p>",
          "locationName": "adminAccountId"
        },
        "AdminStatus": {
          "shape": "AdminStatus",
          "documentation": "<p>Indicates whether the account is enabled as the delegated administrator.</p>",
          "locationName": "adminStatus"
        }
      },
      "documentation": "<p>The account within the organization specified as the GuardDuty delegated administrator.</p>"
    },
    "AdminAccounts": {
      "type": "list",
      "member": {
        "shape": "AdminAccount"
      },
      "max": 1,
      "min": 0
    },
    "AdminStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLE_IN_PROGRESS"
      ],
      "max": 300,
      "min": 1
    },
    "ArchiveFindingsRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "FindingIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector that specifies the GuardDuty service whose findings you want to archive.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FindingIds": {
          "shape": "FindingIds",
          "documentation": "<p>The IDs of the findings that you want to archive.</p>",
          "locationName": "findingIds"
        }
      }
    },
    "ArchiveFindingsResponse": {
      "type": "structure",
      "members": {}
    },
    "AwsApiCallAction": {
      "type": "structure",
      "members": {
        "Api": {
          "shape": "String",
          "documentation": "<p>The AWS API name.</p>",
          "locationName": "api"
        },
        "CallerType": {
          "shape": "String",
          "documentation": "<p>The AWS API caller type.</p>",
          "locationName": "callerType"
        },
        "DomainDetails": {
          "shape": "DomainDetails",
          "documentation": "<p>The domain information for the AWS API call.</p>",
          "locationName": "domainDetails"
        },
        "ErrorCode": {
          "shape": "String",
          "documentation": "<p>The error code of the failed AWS API action.</p>",
          "locationName": "errorCode"
        },
        "RemoteIpDetails": {
          "shape": "RemoteIpDetails",
          "documentation": "<p>The remote IP information of the connection that initiated the AWS API call.</p>",
          "locationName": "remoteIpDetails"
        },
        "ServiceName": {
          "shape": "String",
          "documentation": "<p>The AWS service name whose API was invoked.</p>",
          "locationName": "serviceName"
        }
      },
      "documentation": "<p>Contains information about the API action.</p>"
    },
    "BlockPublicAccess": {
      "type": "structure",
      "members": {
        "IgnorePublicAcls": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if S3 Block Public Access is set to <code>IgnorePublicAcls</code>.</p>",
          "locationName": "ignorePublicAcls"
        },
        "RestrictPublicBuckets": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if S3 Block Public Access is set to <code>RestrictPublicBuckets</code>.</p>",
          "locationName": "restrictPublicBuckets"
        },
        "BlockPublicAcls": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if S3 Block Public Access is set to <code>BlockPublicAcls</code>.</p>",
          "locationName": "blockPublicAcls"
        },
        "BlockPublicPolicy": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if S3 Block Public Access is set to <code>BlockPublicPolicy</code>.</p>",
          "locationName": "blockPublicPolicy"
        }
      },
      "documentation": "<p>Contains information on how the bucker owner's S3 Block Public Access settings are being applied to the S3 bucket. See <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html\">S3 Block Public Access</a> for more information. </p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BucketLevelPermissions": {
      "type": "structure",
      "members": {
        "AccessControlList": {
          "shape": "AccessControlList",
          "documentation": "<p>Contains information on how Access Control Policies are applied to the bucket.</p>",
          "locationName": "accessControlList"
        },
        "BucketPolicy": {
          "shape": "BucketPolicy",
          "documentation": "<p>Contains information on the bucket policies for the S3 bucket.</p>",
          "locationName": "bucketPolicy"
        },
        "BlockPublicAccess": {
          "shape": "BlockPublicAccess",
          "documentation": "<p>Contains information on which account level S3 Block Public Access settings are applied to the S3 bucket.</p>",
          "locationName": "blockPublicAccess"
        }
      },
      "documentation": "<p>Contains information about the bucket level permissions for the S3 bucket.</p>"
    },
    "BucketPolicy": {
      "type": "structure",
      "members": {
        "AllowsPublicReadAccess": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether public read access for the bucket is enabled through a bucket policy.</p>",
          "locationName": "allowsPublicReadAccess"
        },
        "AllowsPublicWriteAccess": {
          "shape": "Boolean",
          "documentation": "<p>A value that indicates whether public write access for the bucket is enabled through a bucket policy.</p>",
          "locationName": "allowsPublicWriteAccess"
        }
      },
      "documentation": "<p>Contains information on the current bucket policies for the S3 bucket.</p>"
    },
    "City": {
      "type": "structure",
      "members": {
        "CityName": {
          "shape": "String",
          "documentation": "<p>The city name of the remote IP address.</p>",
          "locationName": "cityName"
        }
      },
      "documentation": "<p>Contains information about the city associated with the IP address.</p>"
    },
    "ClientToken": {
      "type": "string",
      "max": 64,
      "min": 0
    },
    "CloudTrailConfigurationResult": {
      "type": "structure",
      "required": [
        "Status"
      ],
      "members": {
        "Status": {
          "shape": "DataSourceStatus",
          "documentation": "<p>Describes whether CloudTrail is enabled as a data source for the detector.</p>",
          "locationName": "status"
        }
      },
      "documentation": "<p>Contains information on the status of CloudTrail as a data source for the detector.</p>"
    },
    "Condition": {
      "type": "structure",
      "members": {
        "Eq": {
          "shape": "Eq",
          "documentation": "<p>Represents the <i>equal</i> condition to be applied to a single field when querying for findings.</p>",
          "deprecated": true,
          "locationName": "eq"
        },
        "Neq": {
          "shape": "Neq",
          "documentation": "<p>Represents the <i>not equal</i> condition to be applied to a single field when querying for findings.</p>",
          "deprecated": true,
          "locationName": "neq"
        },
        "Gt": {
          "shape": "Integer",
          "documentation": "<p>Represents a <i>greater than</i> condition to be applied to a single field when querying for findings.</p>",
          "deprecated": true,
          "locationName": "gt"
        },
        "Gte": {
          "shape": "Integer",
          "documentation": "<p>Represents a <i>greater than or equal</i> condition to be applied to a single field when querying for findings.</p>",
          "deprecated": true,
          "locationName": "gte"
        },
        "Lt": {
          "shape": "Integer",
          "documentation": "<p>Represents a <i>less than</i> condition to be applied to a single field when querying for findings.</p>",
          "deprecated": true,
          "locationName": "lt"
        },
        "Lte": {
          "shape": "Integer",
          "documentation": "<p>Represents a <i>less than or equal</i> condition to be applied to a single field when querying for findings.</p>",
          "deprecated": true,
          "locationName": "lte"
        },
        "Equals": {
          "shape": "Equals",
          "documentation": "<p>Represents an <i>equal</i> <b/> condition to be applied to a single field when querying for findings.</p>",
          "locationName": "equals"
        },
        "NotEquals": {
          "shape": "NotEquals",
          "documentation": "<p>Represents a <i>not equal</i> <b/> condition to be applied to a single field when querying for findings.</p>",
          "locationName": "notEquals"
        },
        "GreaterThan": {
          "shape": "Long",
          "documentation": "<p>Represents a <i>greater than</i> condition to be applied to a single field when querying for findings.</p>",
          "locationName": "greaterThan"
        },
        "GreaterThanOrEqual": {
          "shape": "Long",
          "documentation": "<p>Represents a <i>greater than or equal</i> condition to be applied to a single field when querying for findings.</p>",
          "locationName": "greaterThanOrEqual"
        },
        "LessThan": {
          "shape": "Long",
          "documentation": "<p>Represents a <i>less than</i> condition to be applied to a single field when querying for findings.</p>",
          "locationName": "lessThan"
        },
        "LessThanOrEqual": {
          "shape": "Long",
          "documentation": "<p>Represents a <i>less than or equal</i> condition to be applied to a single field when querying for findings.</p>",
          "locationName": "lessThanOrEqual"
        }
      },
      "documentation": "<p>Contains information about the condition.</p>"
    },
    "CountBySeverity": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "Integer"
      }
    },
    "Country": {
      "type": "structure",
      "members": {
        "CountryCode": {
          "shape": "String",
          "documentation": "<p>The country code of the remote IP address.</p>",
          "locationName": "countryCode"
        },
        "CountryName": {
          "shape": "String",
          "documentation": "<p>The country name of the remote IP address.</p>",
          "locationName": "countryName"
        }
      },
      "documentation": "<p>Contains information about the country where the remote IP address is located.</p>"
    },
    "CreateDetectorRequest": {
      "type": "structure",
      "required": [
        "Enable"
      ],
      "members": {
        "Enable": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean value that specifies whether the detector is to be enabled.</p>",
          "locationName": "enable"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token for the create request.</p>",
          "idempotencyToken": true,
          "locationName": "clientToken"
        },
        "FindingPublishingFrequency": {
          "shape": "FindingPublishingFrequency",
          "documentation": "<p>An enum value that specifies how frequently updated findings are exported.</p>",
          "locationName": "findingPublishingFrequency"
        },
        "DataSources": {
          "shape": "DataSourceConfigurations",
          "documentation": "<p>An object that describes which data sources will be enabled for the detector.</p>",
          "locationName": "dataSources"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to be added to a new detector resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "CreateDetectorResponse": {
      "type": "structure",
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the created detector.</p>",
          "locationName": "detectorId"
        }
      }
    },
    "CreateFilterRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "Name",
        "FindingCriteria"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty account that you want to create a filter for.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "Name": {
          "shape": "FilterName",
          "documentation": "<p>The name of the filter.</p>",
          "locationName": "name"
        },
        "Description": {
          "shape": "FilterDescription",
          "documentation": "<p>The description of the filter.</p>",
          "locationName": "description"
        },
        "Action": {
          "shape": "FilterAction",
          "documentation": "<p>Specifies the action that is to be applied to the findings that match the filter.</p>",
          "locationName": "action"
        },
        "Rank": {
          "shape": "FilterRank",
          "documentation": "<p>Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.</p>",
          "locationName": "rank"
        },
        "FindingCriteria": {
          "shape": "FindingCriteria",
          "documentation": "<p>Represents the criteria to be used in the filter for querying findings.</p> <p>You can only use the following attributes to query findings:</p> <ul> <li> <p>accountId</p> </li> <li> <p>region</p> </li> <li> <p>confidence</p> </li> <li> <p>id</p> </li> <li> <p>resource.accessKeyDetails.accessKeyId</p> </li> <li> <p>resource.accessKeyDetails.principalId</p> </li> <li> <p>resource.accessKeyDetails.userName</p> </li> <li> <p>resource.accessKeyDetails.userType</p> </li> <li> <p>resource.instanceDetails.iamInstanceProfile.id</p> </li> <li> <p>resource.instanceDetails.imageId</p> </li> <li> <p>resource.instanceDetails.instanceId</p> </li> <li> <p>resource.instanceDetails.outpostArn</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicIp</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.subnetId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.vpcId</p> </li> <li> <p>resource.instanceDetails.tags.key</p> </li> <li> <p>resource.instanceDetails.tags.value</p> </li> <li> <p>resource.resourceType</p> </li> <li> <p>service.action.actionType</p> </li> <li> <p>service.action.awsApiCallAction.api</p> </li> <li> <p>service.action.awsApiCallAction.callerType</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.awsApiCallAction.serviceName</p> </li> <li> <p>service.action.dnsRequestAction.domain</p> </li> <li> <p>service.action.networkConnectionAction.blocked</p> </li> <li> <p>service.action.networkConnectionAction.connectionDirection</p> </li> <li> <p>service.action.networkConnectionAction.localPortDetails.port</p> </li> <li> <p>service.action.networkConnectionAction.protocol</p> </li> <li> <p>service.action.networkConnectionAction.localIpDetails.ipAddressV4</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.networkConnectionAction.remotePortDetails.port</p> </li> <li> <p>service.additionalInfo.threatListName</p> </li> <li> <p>service.archived</p> <p>When this attribute is set to TRUE, only archived findings are listed. When it's set to FALSE, only unarchived findings are listed. When this attribute is not set, all existing findings are listed.</p> </li> <li> <p>service.resourceRole</p> </li> <li> <p>severity</p> </li> <li> <p>type</p> </li> <li> <p>updatedAt</p> <p>Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains milliseconds.</p> </li> </ul>",
          "locationName": "findingCriteria"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token for the create request.</p>",
          "idempotencyToken": true,
          "locationName": "clientToken"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to be added to a new filter resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "CreateFilterResponse": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "FilterName",
          "documentation": "<p>The name of the successfully created filter.</p>",
          "locationName": "name"
        }
      }
    },
    "CreateIPSetRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "Name",
        "Format",
        "Location",
        "Activate"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty account that you want to create an IPSet for.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The user-friendly name to identify the IPSet.</p> <p> Allowed characters are alphanumerics, spaces, hyphens (-), and underscores (_).</p>",
          "locationName": "name"
        },
        "Format": {
          "shape": "IpSetFormat",
          "documentation": "<p>The format of the file that contains the IPSet.</p>",
          "locationName": "format"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.</p>",
          "locationName": "location"
        },
        "Activate": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean value that indicates whether GuardDuty is to start using the uploaded IPSet.</p>",
          "locationName": "activate"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token for the create request.</p>",
          "idempotencyToken": true,
          "locationName": "clientToken"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to be added to a new IP set resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "CreateIPSetResponse": {
      "type": "structure",
      "required": [
        "IpSetId"
      ],
      "members": {
        "IpSetId": {
          "shape": "String",
          "documentation": "<p>The ID of the IPSet resource.</p>",
          "locationName": "ipSetId"
        }
      }
    },
    "CreateMembersRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountDetails"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty account that you want to associate member accounts with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountDetails": {
          "shape": "AccountDetails",
          "documentation": "<p>A list of account ID and email address pairs of the accounts that you want to associate with the master GuardDuty account.</p>",
          "locationName": "accountDetails"
        }
      }
    },
    "CreateMembersResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of objects that include the <code>accountIds</code> of the unprocessed accounts and a result string that explains why each was unprocessed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "CreatePublishingDestinationRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "DestinationType",
        "DestinationProperties"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the GuardDuty detector associated with the publishing destination.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "DestinationType": {
          "shape": "DestinationType",
          "documentation": "<p>The type of resource for the publishing destination. Currently only Amazon S3 buckets are supported.</p>",
          "locationName": "destinationType"
        },
        "DestinationProperties": {
          "shape": "DestinationProperties",
          "documentation": "<p>The properties of the publishing destination, including the ARNs for the destination and the KMS key used for encryption.</p>",
          "locationName": "destinationProperties"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token for the request.</p>",
          "idempotencyToken": true,
          "locationName": "clientToken"
        }
      }
    },
    "CreatePublishingDestinationResponse": {
      "type": "structure",
      "required": [
        "DestinationId"
      ],
      "members": {
        "DestinationId": {
          "shape": "String",
          "documentation": "<p>The ID of the publishing destination that is created.</p>",
          "locationName": "destinationId"
        }
      }
    },
    "CreateSampleFindingsRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector to create sample findings for.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FindingTypes": {
          "shape": "FindingTypes",
          "documentation": "<p>The types of sample findings to generate.</p>",
          "locationName": "findingTypes"
        }
      }
    },
    "CreateSampleFindingsResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateThreatIntelSetRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "Name",
        "Format",
        "Location",
        "Activate"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty account that you want to create a threatIntelSet for.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.</p>",
          "locationName": "name"
        },
        "Format": {
          "shape": "ThreatIntelSetFormat",
          "documentation": "<p>The format of the file that contains the ThreatIntelSet.</p>",
          "locationName": "format"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.</p>",
          "locationName": "location"
        },
        "Activate": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean value that indicates whether GuardDuty is to start using the uploaded ThreatIntelSet.</p>",
          "locationName": "activate"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>The idempotency token for the create request.</p>",
          "idempotencyToken": true,
          "locationName": "clientToken"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to be added to a new threat list resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "CreateThreatIntelSetResponse": {
      "type": "structure",
      "required": [
        "ThreatIntelSetId"
      ],
      "members": {
        "ThreatIntelSetId": {
          "shape": "String",
          "documentation": "<p>The ID of the ThreatIntelSet resource.</p>",
          "locationName": "threatIntelSetId"
        }
      }
    },
    "Criterion": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "Condition"
      }
    },
    "DNSLogsConfigurationResult": {
      "type": "structure",
      "required": [
        "Status"
      ],
      "members": {
        "Status": {
          "shape": "DataSourceStatus",
          "documentation": "<p>Denotes whether DNS logs is enabled as a data source.</p>",
          "locationName": "status"
        }
      },
      "documentation": "<p>Contains information on the status of DNS logs as a data source.</p>"
    },
    "DataSource": {
      "type": "string",
      "enum": [
        "FLOW_LOGS",
        "CLOUD_TRAIL",
        "DNS_LOGS",
        "S3_LOGS"
      ]
    },
    "DataSourceConfigurations": {
      "type": "structure",
      "members": {
        "S3Logs": {
          "shape": "S3LogsConfiguration",
          "documentation": "<p>Describes whether S3 data event logs are enabled as a data source.</p>",
          "locationName": "s3Logs"
        }
      },
      "documentation": "<p>Contains information about which data sources are enabled.</p>"
    },
    "DataSourceConfigurationsResult": {
      "type": "structure",
      "required": [
        "CloudTrail",
        "DNSLogs",
        "FlowLogs",
        "S3Logs"
      ],
      "members": {
        "CloudTrail": {
          "shape": "CloudTrailConfigurationResult",
          "documentation": "<p>An object that contains information on the status of CloudTrail as a data source.</p>",
          "locationName": "cloudTrail"
        },
        "DNSLogs": {
          "shape": "DNSLogsConfigurationResult",
          "documentation": "<p>An object that contains information on the status of DNS logs as a data source.</p>",
          "locationName": "dnsLogs"
        },
        "FlowLogs": {
          "shape": "FlowLogsConfigurationResult",
          "documentation": "<p>An object that contains information on the status of VPC flow logs as a data source.</p>",
          "locationName": "flowLogs"
        },
        "S3Logs": {
          "shape": "S3LogsConfigurationResult",
          "documentation": "<p>An object that contains information on the status of S3 Data event logs as a data source.</p>",
          "locationName": "s3Logs"
        }
      },
      "documentation": "<p>Contains information on the status of data sources for the detector.</p>"
    },
    "DataSourceList": {
      "type": "list",
      "member": {
        "shape": "DataSource"
      }
    },
    "DataSourceStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ],
      "max": 300,
      "min": 1
    },
    "DeclineInvitationsRequest": {
      "type": "structure",
      "required": [
        "AccountIds"
      ],
      "members": {
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to decline invitations from.</p>",
          "locationName": "accountIds"
        }
      }
    },
    "DeclineInvitationsResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "DefaultServerSideEncryption": {
      "type": "structure",
      "members": {
        "EncryptionType": {
          "shape": "String",
          "documentation": "<p>The type of encryption used for objects within the S3 bucket.</p>",
          "locationName": "encryptionType"
        },
        "KmsMasterKeyArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the KMS encryption key. Only available if the bucket <code>EncryptionType</code> is <code>aws:kms</code>.</p>",
          "locationName": "kmsMasterKeyArn"
        }
      },
      "documentation": "<p>Contains information on the server side encryption method used in the S3 bucket. See <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html\">S3 Server-Side Encryption</a> for more information.</p>"
    },
    "DeleteDetectorRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that you want to delete.</p>",
          "location": "uri",
          "locationName": "detectorId"
        }
      }
    },
    "DeleteDetectorResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteFilterRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "FilterName"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that the filter is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FilterName": {
          "shape": "String",
          "documentation": "<p>The name of the filter that you want to delete.</p>",
          "location": "uri",
          "locationName": "filterName"
        }
      }
    },
    "DeleteFilterResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteIPSetRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "IpSetId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector associated with the IPSet.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "IpSetId": {
          "shape": "String",
          "documentation": "<p>The unique ID of the IPSet to delete.</p>",
          "location": "uri",
          "locationName": "ipSetId"
        }
      }
    },
    "DeleteIPSetResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteInvitationsRequest": {
      "type": "structure",
      "required": [
        "AccountIds"
      ],
      "members": {
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of account IDs of the AWS accounts that sent invitations to the current member account that you want to delete invitations from.</p>",
          "locationName": "accountIds"
        }
      }
    },
    "DeleteInvitationsResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "DeleteMembersRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty account whose members you want to delete.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of account IDs of the GuardDuty member accounts that you want to delete.</p>",
          "locationName": "accountIds"
        }
      }
    },
    "DeleteMembersResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>The accounts that could not be processed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "DeletePublishingDestinationRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "DestinationId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector associated with the publishing destination to delete.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "DestinationId": {
          "shape": "String",
          "documentation": "<p>The ID of the publishing destination to delete.</p>",
          "location": "uri",
          "locationName": "destinationId"
        }
      }
    },
    "DeletePublishingDestinationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteThreatIntelSetRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "ThreatIntelSetId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that the threatIntelSet is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "ThreatIntelSetId": {
          "shape": "String",
          "documentation": "<p>The unique ID of the threatIntelSet that you want to delete.</p>",
          "location": "uri",
          "locationName": "threatIntelSetId"
        }
      }
    },
    "DeleteThreatIntelSetResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeOrganizationConfigurationRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector to retrieve information about the delegated administrator from.</p>",
          "location": "uri",
          "locationName": "detectorId"
        }
      }
    },
    "DescribeOrganizationConfigurationResponse": {
      "type": "structure",
      "required": [
        "AutoEnable",
        "MemberAccountLimitReached"
      ],
      "members": {
        "AutoEnable": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether GuardDuty is automatically enabled for accounts added to the organization.</p>",
          "locationName": "autoEnable"
        },
        "MemberAccountLimitReached": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the maximum number of allowed member accounts are already associated with the delegated administrator master account.</p>",
          "locationName": "memberAccountLimitReached"
        },
        "DataSources": {
          "shape": "OrganizationDataSourceConfigurationsResult",
          "documentation": "<p>An object that describes which data sources are enabled automatically for member accounts.</p>",
          "locationName": "dataSources"
        }
      }
    },
    "DescribePublishingDestinationRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "DestinationId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector associated with the publishing destination to retrieve.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "DestinationId": {
          "shape": "String",
          "documentation": "<p>The ID of the publishing destination to retrieve.</p>",
          "location": "uri",
          "locationName": "destinationId"
        }
      }
    },
    "DescribePublishingDestinationResponse": {
      "type": "structure",
      "required": [
        "DestinationId",
        "DestinationType",
        "Status",
        "PublishingFailureStartTimestamp",
        "DestinationProperties"
      ],
      "members": {
        "DestinationId": {
          "shape": "String",
          "documentation": "<p>The ID of the publishing destination.</p>",
          "locationName": "destinationId"
        },
        "DestinationType": {
          "shape": "DestinationType",
          "documentation": "<p>The type of publishing destination. Currently, only Amazon S3 buckets are supported.</p>",
          "locationName": "destinationType"
        },
        "Status": {
          "shape": "PublishingStatus",
          "documentation": "<p>The status of the publishing destination.</p>",
          "locationName": "status"
        },
        "PublishingFailureStartTimestamp": {
          "shape": "Long",
          "documentation": "<p>The time, in epoch millisecond format, at which GuardDuty was first unable to publish findings to the destination.</p>",
          "locationName": "publishingFailureStartTimestamp"
        },
        "DestinationProperties": {
          "shape": "DestinationProperties",
          "documentation": "<p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code> and <code>KmsKeyArn</code> of the publishing destination.</p>",
          "locationName": "destinationProperties"
        }
      }
    },
    "Destination": {
      "type": "structure",
      "required": [
        "DestinationId",
        "DestinationType",
        "Status"
      ],
      "members": {
        "DestinationId": {
          "shape": "String",
          "documentation": "<p>The unique ID of the publishing destination.</p>",
          "locationName": "destinationId"
        },
        "DestinationType": {
          "shape": "DestinationType",
          "documentation": "<p>The type of resource used for the publishing destination. Currently, only Amazon S3 buckets are supported.</p>",
          "locationName": "destinationType"
        },
        "Status": {
          "shape": "PublishingStatus",
          "documentation": "<p>The status of the publishing destination.</p>",
          "locationName": "status"
        }
      },
      "documentation": "<p>Contains information about the publishing destination, including the ID, type, and status.</p>"
    },
    "DestinationProperties": {
      "type": "structure",
      "members": {
        "DestinationArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the resource to publish to.</p>",
          "locationName": "destinationArn"
        },
        "KmsKeyArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the KMS key to use for encryption.</p>",
          "locationName": "kmsKeyArn"
        }
      },
      "documentation": "<p>Contains the Amazon Resource Name (ARN) of the resource to publish to, such as an S3 bucket, and the ARN of the KMS key to use to encrypt published findings.</p>"
    },
    "DestinationType": {
      "type": "string",
      "enum": [
        "S3"
      ],
      "max": 300,
      "min": 1
    },
    "Destinations": {
      "type": "list",
      "member": {
        "shape": "Destination"
      }
    },
    "DetectorId": {
      "type": "string",
      "max": 300,
      "min": 1
    },
    "DetectorIds": {
      "type": "list",
      "member": {
        "shape": "DetectorId"
      },
      "max": 50,
      "min": 0
    },
    "DetectorStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ],
      "max": 300,
      "min": 1
    },
    "DisableOrganizationAdminAccountRequest": {
      "type": "structure",
      "required": [
        "AdminAccountId"
      ],
      "members": {
        "AdminAccountId": {
          "shape": "String",
          "documentation": "<p>The AWS Account ID for the organizations account to be disabled as a GuardDuty delegated administrator.</p>",
          "locationName": "adminAccountId"
        }
      }
    },
    "DisableOrganizationAdminAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateFromMasterAccountRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty member account.</p>",
          "location": "uri",
          "locationName": "detectorId"
        }
      }
    },
    "DisassociateFromMasterAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateMembersRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty account whose members you want to disassociate from the master account.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of account IDs of the GuardDuty member accounts that you want to disassociate from the master account.</p>",
          "locationName": "accountIds"
        }
      }
    },
    "DisassociateMembersResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "DnsRequestAction": {
      "type": "structure",
      "members": {
        "Domain": {
          "shape": "String",
          "documentation": "<p>The domain information for the API request.</p>",
          "locationName": "domain"
        }
      },
      "documentation": "<p>Contains information about the DNS_REQUEST action described in this finding.</p>"
    },
    "DomainDetails": {
      "type": "structure",
      "members": {
        "Domain": {
          "shape": "String",
          "documentation": "<p>The domain information for the AWS API call.</p>",
          "locationName": "domain"
        }
      },
      "documentation": "<p>Contains information about the domain.</p>"
    },
    "Double": {
      "type": "double"
    },
    "Email": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "EnableOrganizationAdminAccountRequest": {
      "type": "structure",
      "required": [
        "AdminAccountId"
      ],
      "members": {
        "AdminAccountId": {
          "shape": "String",
          "documentation": "<p>The AWS Account ID for the organization account to be enabled as a GuardDuty delegated administrator.</p>",
          "locationName": "adminAccountId"
        }
      }
    },
    "EnableOrganizationAdminAccountResponse": {
      "type": "structure",
      "members": {}
    },
    "Eq": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Equals": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Evidence": {
      "type": "structure",
      "members": {
        "ThreatIntelligenceDetails": {
          "shape": "ThreatIntelligenceDetails",
          "documentation": "<p>A list of threat intelligence details related to the evidence.</p>",
          "locationName": "threatIntelligenceDetails"
        }
      },
      "documentation": "<p>Contains information about the reason that the finding was generated.</p>"
    },
    "Feedback": {
      "type": "string",
      "enum": [
        "USEFUL",
        "NOT_USEFUL"
      ]
    },
    "FilterAction": {
      "type": "string",
      "enum": [
        "NOOP",
        "ARCHIVE"
      ],
      "max": 300,
      "min": 1
    },
    "FilterDescription": {
      "type": "string",
      "max": 512,
      "min": 0
    },
    "FilterName": {
      "type": "string",
      "max": 64,
      "min": 3
    },
    "FilterNames": {
      "type": "list",
      "member": {
        "shape": "FilterName"
      },
      "max": 50,
      "min": 0
    },
    "FilterRank": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "Finding": {
      "type": "structure",
      "required": [
        "AccountId",
        "Arn",
        "CreatedAt",
        "Id",
        "Region",
        "Resource",
        "SchemaVersion",
        "Severity",
        "Type",
        "UpdatedAt"
      ],
      "members": {
        "AccountId": {
          "shape": "String",
          "documentation": "<p>The ID of the account in which the finding was generated.</p>",
          "locationName": "accountId"
        },
        "Arn": {
          "shape": "String",
          "documentation": "<p>The ARN of the finding.</p>",
          "locationName": "arn"
        },
        "Confidence": {
          "shape": "Double",
          "documentation": "<p>The confidence score for the finding.</p>",
          "locationName": "confidence"
        },
        "CreatedAt": {
          "shape": "String",
          "documentation": "<p>The time and date when the finding was created.</p>",
          "locationName": "createdAt"
        },
        "Description": {
          "shape": "String",
          "documentation": "<p>The description of the finding.</p>",
          "locationName": "description"
        },
        "Id": {
          "shape": "String",
          "documentation": "<p>The ID of the finding.</p>",
          "locationName": "id"
        },
        "Partition": {
          "shape": "String",
          "documentation": "<p>The partition associated with the finding.</p>",
          "locationName": "partition"
        },
        "Region": {
          "shape": "String",
          "documentation": "<p>The Region where the finding was generated.</p>",
          "locationName": "region"
        },
        "Resource": {
          "shape": "Resource",
          "locationName": "resource"
        },
        "SchemaVersion": {
          "shape": "String",
          "documentation": "<p>The version of the schema used for the finding.</p>",
          "locationName": "schemaVersion"
        },
        "Service": {
          "shape": "Service",
          "locationName": "service"
        },
        "Severity": {
          "shape": "Double",
          "documentation": "<p>The severity of the finding.</p>",
          "locationName": "severity"
        },
        "Title": {
          "shape": "String",
          "documentation": "<p>The title of the finding.</p>",
          "locationName": "title"
        },
        "Type": {
          "shape": "FindingType",
          "documentation": "<p>The type of finding.</p>",
          "locationName": "type"
        },
        "UpdatedAt": {
          "shape": "String",
          "documentation": "<p>The time and date when the finding was last updated.</p>",
          "locationName": "updatedAt"
        }
      },
      "documentation": "<p>Contains information about the finding, which is generated when abnormal or suspicious activity is detected.</p>"
    },
    "FindingCriteria": {
      "type": "structure",
      "members": {
        "Criterion": {
          "shape": "Criterion",
          "documentation": "<p>Represents a map of finding properties that match specified conditions and values when querying findings.</p>",
          "locationName": "criterion"
        }
      },
      "documentation": "<p>Contains information about the criteria used for querying findings.</p>"
    },
    "FindingId": {
      "type": "string",
      "max": 300,
      "min": 1
    },
    "FindingIds": {
      "type": "list",
      "member": {
        "shape": "FindingId"
      },
      "max": 50,
      "min": 0
    },
    "FindingPublishingFrequency": {
      "type": "string",
      "enum": [
        "FIFTEEN_MINUTES",
        "ONE_HOUR",
        "SIX_HOURS"
      ]
    },
    "FindingStatisticType": {
      "type": "string",
      "enum": [
        "COUNT_BY_SEVERITY"
      ]
    },
    "FindingStatisticTypes": {
      "type": "list",
      "member": {
        "shape": "FindingStatisticType"
      },
      "max": 10,
      "min": 0
    },
    "FindingStatistics": {
      "type": "structure",
      "members": {
        "CountBySeverity": {
          "shape": "CountBySeverity",
          "documentation": "<p>Represents a map of severity to count statistics for a set of findings.</p>",
          "locationName": "countBySeverity"
        }
      },
      "documentation": "<p>Contains information about finding statistics.</p>"
    },
    "FindingType": {
      "type": "string",
      "max": 50,
      "min": 1
    },
    "FindingTypes": {
      "type": "list",
      "member": {
        "shape": "FindingType"
      },
      "max": 50,
      "min": 0
    },
    "Findings": {
      "type": "list",
      "member": {
        "shape": "Finding"
      },
      "max": 50,
      "min": 0
    },
    "FlowLogsConfigurationResult": {
      "type": "structure",
      "required": [
        "Status"
      ],
      "members": {
        "Status": {
          "shape": "DataSourceStatus",
          "documentation": "<p>Denotes whether VPC flow logs is enabled as a data source.</p>",
          "locationName": "status"
        }
      },
      "documentation": "<p>Contains information on the status of VPC flow logs as a data source.</p>"
    },
    "GeoLocation": {
      "type": "structure",
      "members": {
        "Lat": {
          "shape": "Double",
          "documentation": "<p>The latitude information of the remote IP address.</p>",
          "locationName": "lat"
        },
        "Lon": {
          "shape": "Double",
          "documentation": "<p>The longitude information of the remote IP address.</p>",
          "locationName": "lon"
        }
      },
      "documentation": "<p>Contains information about the location of the remote IP address.</p>"
    },
    "GetDetectorRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that you want to get.</p>",
          "location": "uri",
          "locationName": "detectorId"
        }
      }
    },
    "GetDetectorResponse": {
      "type": "structure",
      "required": [
        "ServiceRole",
        "Status"
      ],
      "members": {
        "CreatedAt": {
          "shape": "String",
          "documentation": "<p>The timestamp of when the detector was created.</p>",
          "locationName": "createdAt"
        },
        "FindingPublishingFrequency": {
          "shape": "FindingPublishingFrequency",
          "documentation": "<p>The publishing frequency of the finding.</p>",
          "locationName": "findingPublishingFrequency"
        },
        "ServiceRole": {
          "shape": "String",
          "documentation": "<p>The GuardDuty service role.</p>",
          "locationName": "serviceRole"
        },
        "Status": {
          "shape": "DetectorStatus",
          "documentation": "<p>The detector status.</p>",
          "locationName": "status"
        },
        "UpdatedAt": {
          "shape": "String",
          "documentation": "<p>The last-updated timestamp for the detector.</p>",
          "locationName": "updatedAt"
        },
        "DataSources": {
          "shape": "DataSourceConfigurationsResult",
          "documentation": "<p>An object that describes which data sources are enabled for the detector.</p>",
          "locationName": "dataSources"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the detector resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "GetFilterRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "FilterName"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that the filter is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FilterName": {
          "shape": "String",
          "documentation": "<p>The name of the filter you want to get.</p>",
          "location": "uri",
          "locationName": "filterName"
        }
      }
    },
    "GetFilterResponse": {
      "type": "structure",
      "required": [
        "Name",
        "Action",
        "FindingCriteria"
      ],
      "members": {
        "Name": {
          "shape": "FilterName",
          "documentation": "<p>The name of the filter.</p>",
          "locationName": "name"
        },
        "Description": {
          "shape": "FilterDescription",
          "documentation": "<p>The description of the filter.</p>",
          "locationName": "description"
        },
        "Action": {
          "shape": "FilterAction",
          "documentation": "<p>Specifies the action that is to be applied to the findings that match the filter.</p>",
          "locationName": "action"
        },
        "Rank": {
          "shape": "FilterRank",
          "documentation": "<p>Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.</p>",
          "locationName": "rank"
        },
        "FindingCriteria": {
          "shape": "FindingCriteria",
          "documentation": "<p>Represents the criteria to be used in the filter for querying findings.</p>",
          "locationName": "findingCriteria"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the filter resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "GetFindingsRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "FindingIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector that specifies the GuardDuty service whose findings you want to retrieve.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FindingIds": {
          "shape": "FindingIds",
          "documentation": "<p>The IDs of the findings that you want to retrieve.</p>",
          "locationName": "findingIds"
        },
        "SortCriteria": {
          "shape": "SortCriteria",
          "documentation": "<p>Represents the criteria used for sorting findings.</p>",
          "locationName": "sortCriteria"
        }
      }
    },
    "GetFindingsResponse": {
      "type": "structure",
      "required": [
        "Findings"
      ],
      "members": {
        "Findings": {
          "shape": "Findings",
          "documentation": "<p>A list of findings.</p>",
          "locationName": "findings"
        }
      }
    },
    "GetFindingsStatisticsRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "FindingStatisticTypes"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector that specifies the GuardDuty service whose findings' statistics you want to retrieve.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FindingStatisticTypes": {
          "shape": "FindingStatisticTypes",
          "documentation": "<p>The types of finding statistics to retrieve.</p>",
          "locationName": "findingStatisticTypes"
        },
        "FindingCriteria": {
          "shape": "FindingCriteria",
          "documentation": "<p>Represents the criteria that is used for querying findings.</p>",
          "locationName": "findingCriteria"
        }
      }
    },
    "GetFindingsStatisticsResponse": {
      "type": "structure",
      "required": [
        "FindingStatistics"
      ],
      "members": {
        "FindingStatistics": {
          "shape": "FindingStatistics",
          "documentation": "<p>The finding statistics object.</p>",
          "locationName": "findingStatistics"
        }
      }
    },
    "GetIPSetRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "IpSetId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that the IPSet is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "IpSetId": {
          "shape": "String",
          "documentation": "<p>The unique ID of the IPSet to retrieve.</p>",
          "location": "uri",
          "locationName": "ipSetId"
        }
      }
    },
    "GetIPSetResponse": {
      "type": "structure",
      "required": [
        "Name",
        "Format",
        "Location",
        "Status"
      ],
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>The user-friendly name for the IPSet.</p>",
          "locationName": "name"
        },
        "Format": {
          "shape": "IpSetFormat",
          "documentation": "<p>The format of the file that contains the IPSet.</p>",
          "locationName": "format"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.</p>",
          "locationName": "location"
        },
        "Status": {
          "shape": "IpSetStatus",
          "documentation": "<p>The status of IPSet file that was uploaded.</p>",
          "locationName": "status"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the IPSet resource.</p>",
          "locationName": "tags"
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
        "InvitationsCount": {
          "shape": "Integer",
          "documentation": "<p>The number of received invitations.</p>",
          "locationName": "invitationsCount"
        }
      }
    },
    "GetMasterAccountRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty member account.</p>",
          "location": "uri",
          "locationName": "detectorId"
        }
      }
    },
    "GetMasterAccountResponse": {
      "type": "structure",
      "required": [
        "Master"
      ],
      "members": {
        "Master": {
          "shape": "Master",
          "documentation": "<p>The master account details.</p>",
          "locationName": "master"
        }
      }
    },
    "GetMemberDetectorsRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The detector ID for the master account.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>The account ID of the member account.</p>",
          "locationName": "accountIds"
        }
      }
    },
    "GetMemberDetectorsResponse": {
      "type": "structure",
      "required": [
        "MemberDataSourceConfigurations",
        "UnprocessedAccounts"
      ],
      "members": {
        "MemberDataSourceConfigurations": {
          "shape": "MemberDataSourceConfigurations",
          "documentation": "<p>An object that describes which data sources are enabled for a member account.</p>",
          "locationName": "members"
        },
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of member account IDs that were unable to be processed along with an explanation for why they were not processed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "GetMembersRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty account whose members you want to retrieve.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of account IDs of the GuardDuty member accounts that you want to describe.</p>",
          "locationName": "accountIds"
        }
      }
    },
    "GetMembersResponse": {
      "type": "structure",
      "required": [
        "Members",
        "UnprocessedAccounts"
      ],
      "members": {
        "Members": {
          "shape": "Members",
          "documentation": "<p>A list of members.</p>",
          "locationName": "members"
        },
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "GetThreatIntelSetRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "ThreatIntelSetId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that the threatIntelSet is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "ThreatIntelSetId": {
          "shape": "String",
          "documentation": "<p>The unique ID of the threatIntelSet that you want to get.</p>",
          "location": "uri",
          "locationName": "threatIntelSetId"
        }
      }
    },
    "GetThreatIntelSetResponse": {
      "type": "structure",
      "required": [
        "Name",
        "Format",
        "Location",
        "Status"
      ],
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>A user-friendly ThreatIntelSet name displayed in all findings that are generated by activity that involves IP addresses included in this ThreatIntelSet.</p>",
          "locationName": "name"
        },
        "Format": {
          "shape": "ThreatIntelSetFormat",
          "documentation": "<p>The format of the threatIntelSet.</p>",
          "locationName": "format"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The URI of the file that contains the ThreatIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.</p>",
          "locationName": "location"
        },
        "Status": {
          "shape": "ThreatIntelSetStatus",
          "documentation": "<p>The status of threatIntelSet file uploaded.</p>",
          "locationName": "status"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags of the threat list resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "GetUsageStatisticsRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "UsageStatisticType",
        "UsageCriteria"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector that specifies the GuardDuty service whose usage statistics you want to retrieve.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "UsageStatisticType": {
          "shape": "UsageStatisticType",
          "documentation": "<p>The type of usage statistics to retrieve.</p>",
          "locationName": "usageStatisticsType"
        },
        "UsageCriteria": {
          "shape": "UsageCriteria",
          "documentation": "<p>Represents the criteria used for querying usage.</p>",
          "locationName": "usageCriteria"
        },
        "Unit": {
          "shape": "String",
          "documentation": "<p>The currency unit you would like to view your usage statistics in. Current valid values are USD.</p>",
          "locationName": "unit"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the NextToken value returned from the previous request to continue listing results after the first page.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "GetUsageStatisticsResponse": {
      "type": "structure",
      "members": {
        "UsageStatistics": {
          "shape": "UsageStatistics",
          "documentation": "<p>The usage statistics object. If a UsageStatisticType was provided, the objects representing other types will be null.</p>",
          "locationName": "usageStatistics"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "GuardDutyArn": {
      "type": "string",
      "pattern": "^arn:[A-Za-z_.-]{1,20}:guardduty:[A-Za-z0-9_/.-]{0,63}:\\d+:detector/[A-Za-z0-9_/.-]{32,264}$"
    },
    "IamInstanceProfile": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The profile ARN of the EC2 instance.</p>",
          "locationName": "arn"
        },
        "Id": {
          "shape": "String",
          "documentation": "<p>The profile ID of the EC2 instance.</p>",
          "locationName": "id"
        }
      },
      "documentation": "<p>Contains information about the EC2 instance profile.</p>"
    },
    "InstanceDetails": {
      "type": "structure",
      "members": {
        "AvailabilityZone": {
          "shape": "String",
          "documentation": "<p>The Availability Zone of the EC2 instance.</p>",
          "locationName": "availabilityZone"
        },
        "IamInstanceProfile": {
          "shape": "IamInstanceProfile",
          "documentation": "<p>The profile information of the EC2 instance.</p>",
          "locationName": "iamInstanceProfile"
        },
        "ImageDescription": {
          "shape": "String",
          "documentation": "<p>The image description of the EC2 instance.</p>",
          "locationName": "imageDescription"
        },
        "ImageId": {
          "shape": "String",
          "documentation": "<p>The image ID of the EC2 instance.</p>",
          "locationName": "imageId"
        },
        "InstanceId": {
          "shape": "String",
          "documentation": "<p>The ID of the EC2 instance.</p>",
          "locationName": "instanceId"
        },
        "InstanceState": {
          "shape": "String",
          "documentation": "<p>The state of the EC2 instance.</p>",
          "locationName": "instanceState"
        },
        "InstanceType": {
          "shape": "String",
          "documentation": "<p>The type of the EC2 instance.</p>",
          "locationName": "instanceType"
        },
        "OutpostArn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the AWS Outpost. Only applicable to AWS Outposts instances.</p>",
          "locationName": "outpostArn"
        },
        "LaunchTime": {
          "shape": "String",
          "documentation": "<p>The launch time of the EC2 instance.</p>",
          "locationName": "launchTime"
        },
        "NetworkInterfaces": {
          "shape": "NetworkInterfaces",
          "documentation": "<p>The elastic network interface information of the EC2 instance.</p>",
          "locationName": "networkInterfaces"
        },
        "Platform": {
          "shape": "String",
          "documentation": "<p>The platform of the EC2 instance.</p>",
          "locationName": "platform"
        },
        "ProductCodes": {
          "shape": "ProductCodes",
          "documentation": "<p>The product code of the EC2 instance.</p>",
          "locationName": "productCodes"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags of the EC2 instance.</p>",
          "locationName": "tags"
        }
      },
      "documentation": "<p>Contains information about the details of an instance.</p>"
    },
    "Integer": {
      "type": "integer"
    },
    "Invitation": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The ID of the account that the invitation was sent from.</p>",
          "locationName": "accountId"
        },
        "InvitationId": {
          "shape": "String",
          "documentation": "<p>The ID of the invitation. This value is used to validate the inviter account to the member account.</p>",
          "locationName": "invitationId"
        },
        "RelationshipStatus": {
          "shape": "String",
          "documentation": "<p>The status of the relationship between the inviter and invitee accounts.</p>",
          "locationName": "relationshipStatus"
        },
        "InvitedAt": {
          "shape": "String",
          "documentation": "<p>The timestamp when the invitation was sent.</p>",
          "locationName": "invitedAt"
        }
      },
      "documentation": "<p>Contains information about the invitation to become a member account.</p>"
    },
    "Invitations": {
      "type": "list",
      "member": {
        "shape": "Invitation"
      },
      "max": 50,
      "min": 0
    },
    "InviteMembersRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty account that you want to invite members with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of account IDs of the accounts that you want to invite to GuardDuty as members.</p>",
          "locationName": "accountIds"
        },
        "DisableEmailNotification": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean value that specifies whether you want to disable email notification to the accounts that you are inviting to GuardDuty as members.</p>",
          "locationName": "disableEmailNotification"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>The invitation message that you want to send to the accounts that you're inviting to GuardDuty as members.</p>",
          "locationName": "message"
        }
      }
    },
    "InviteMembersResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "IpSetFormat": {
      "type": "string",
      "enum": [
        "TXT",
        "STIX",
        "OTX_CSV",
        "ALIEN_VAULT",
        "PROOF_POINT",
        "FIRE_EYE"
      ],
      "max": 300,
      "min": 1
    },
    "IpSetIds": {
      "type": "list",
      "member": {
        "shape": "String"
      },
      "max": 50,
      "min": 0
    },
    "IpSetStatus": {
      "type": "string",
      "enum": [
        "INACTIVE",
        "ACTIVATING",
        "ACTIVE",
        "DEACTIVATING",
        "ERROR",
        "DELETE_PENDING",
        "DELETED"
      ],
      "max": 300,
      "min": 1
    },
    "Ipv6Addresses": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "ListDetectorsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListDetectorsResponse": {
      "type": "structure",
      "required": [
        "DetectorIds"
      ],
      "members": {
        "DetectorIds": {
          "shape": "DetectorIds",
          "documentation": "<p>A list of detector IDs.</p>",
          "locationName": "detectorIds"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "ListFiltersRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that the filter is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListFiltersResponse": {
      "type": "structure",
      "required": [
        "FilterNames"
      ],
      "members": {
        "FilterNames": {
          "shape": "FilterNames",
          "documentation": "<p>A list of filter names.</p>",
          "locationName": "filterNames"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "ListFindingsRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector that specifies the GuardDuty service whose findings you want to list.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FindingCriteria": {
          "shape": "FindingCriteria",
          "documentation": "<p>Represents the criteria used for querying findings. Valid values include:</p> <ul> <li> <p>JSON field name</p> </li> <li> <p>accountId</p> </li> <li> <p>region</p> </li> <li> <p>confidence</p> </li> <li> <p>id</p> </li> <li> <p>resource.accessKeyDetails.accessKeyId</p> </li> <li> <p>resource.accessKeyDetails.principalId</p> </li> <li> <p>resource.accessKeyDetails.userName</p> </li> <li> <p>resource.accessKeyDetails.userType</p> </li> <li> <p>resource.instanceDetails.iamInstanceProfile.id</p> </li> <li> <p>resource.instanceDetails.imageId</p> </li> <li> <p>resource.instanceDetails.instanceId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.ipv6Addresses</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicDnsName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.publicIp</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.securityGroups.groupName</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.subnetId</p> </li> <li> <p>resource.instanceDetails.networkInterfaces.vpcId</p> </li> <li> <p>resource.instanceDetails.tags.key</p> </li> <li> <p>resource.instanceDetails.tags.value</p> </li> <li> <p>resource.resourceType</p> </li> <li> <p>service.action.actionType</p> </li> <li> <p>service.action.awsApiCallAction.api</p> </li> <li> <p>service.action.awsApiCallAction.callerType</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.awsApiCallAction.serviceName</p> </li> <li> <p>service.action.dnsRequestAction.domain</p> </li> <li> <p>service.action.networkConnectionAction.blocked</p> </li> <li> <p>service.action.networkConnectionAction.connectionDirection</p> </li> <li> <p>service.action.networkConnectionAction.localPortDetails.port</p> </li> <li> <p>service.action.networkConnectionAction.protocol</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.city.cityName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.country.countryName</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.ipAddressV4</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asn</p> </li> <li> <p>service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg</p> </li> <li> <p>service.action.networkConnectionAction.remotePortDetails.port</p> </li> <li> <p>service.additionalInfo.threatListName</p> </li> <li> <p>service.archived</p> <p>When this attribute is set to 'true', only archived findings are listed. When it's set to 'false', only unarchived findings are listed. When this attribute is not set, all existing findings are listed.</p> </li> <li> <p>service.resourceRole</p> </li> <li> <p>severity</p> </li> <li> <p>type</p> </li> <li> <p>updatedAt</p> <p>Type: Timestamp in Unix Epoch millisecond format: 1486685375000</p> </li> </ul>",
          "locationName": "findingCriteria"
        },
        "SortCriteria": {
          "shape": "SortCriteria",
          "documentation": "<p>Represents the criteria used for sorting findings.</p>",
          "locationName": "sortCriteria"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.</p>",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "ListFindingsResponse": {
      "type": "structure",
      "required": [
        "FindingIds"
      ],
      "members": {
        "FindingIds": {
          "shape": "FindingIds",
          "documentation": "<p>The IDs of the findings that you're listing.</p>",
          "locationName": "findingIds"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "ListIPSetsRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that the IPSet is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListIPSetsResponse": {
      "type": "structure",
      "required": [
        "IpSetIds"
      ],
      "members": {
        "IpSetIds": {
          "shape": "IpSetIds",
          "documentation": "<p>The IDs of the IPSet resources.</p>",
          "locationName": "ipSetIds"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "ListInvitationsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListInvitationsResponse": {
      "type": "structure",
      "members": {
        "Invitations": {
          "shape": "Invitations",
          "documentation": "<p>A list of invitation descriptions.</p>",
          "locationName": "invitations"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "ListMembersRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector the member is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 50. The maximum value is 50.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "OnlyAssociated": {
          "shape": "String",
          "documentation": "<p>Specifies whether to only return associated members or to return all members (including members who haven't been invited yet or have been disassociated).</p>",
          "location": "querystring",
          "locationName": "onlyAssociated"
        }
      }
    },
    "ListMembersResponse": {
      "type": "structure",
      "members": {
        "Members": {
          "shape": "Members",
          "documentation": "<p>A list of members.</p>",
          "locationName": "members"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "ListOrganizationAdminAccountsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the <code>NextToken</code> value returned from the previous request to continue listing results after the first page.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListOrganizationAdminAccountsResponse": {
      "type": "structure",
      "members": {
        "AdminAccounts": {
          "shape": "AdminAccounts",
          "documentation": "<p>An AdminAccounts object that includes a list of accounts configured as GuardDuty delegated administrators.</p>",
          "locationName": "adminAccounts"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "ListPublishingDestinationsRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector to retrieve publishing destinations for.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the <code>NextToken</code> value returned from the previous request to continue listing results after the first page.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListPublishingDestinationsResponse": {
      "type": "structure",
      "required": [
        "Destinations"
      ],
      "members": {
        "Destinations": {
          "shape": "Destinations",
          "documentation": "<p>A <code>Destinations</code> object that includes information about each publishing destination returned.</p>",
          "locationName": "destinations"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request to a list action. For subsequent calls, use the <code>NextToken</code> value returned from the previous request to continue listing results after the first page.</p>",
          "locationName": "nextToken"
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
          "shape": "GuardDutyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the given GuardDuty resource. </p>",
          "location": "uri",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags associated with the resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "ListThreatIntelSetsRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that the threatIntelSet is associated with.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 50. The maximum value is 50.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>You can use this parameter to paginate results in the response. Set the value of this parameter to null on your first call to the list action. For subsequent calls to the action, fill nextToken in the request with the value of NextToken from the previous response to continue listing data.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListThreatIntelSetsResponse": {
      "type": "structure",
      "required": [
        "ThreatIntelSetIds"
      ],
      "members": {
        "ThreatIntelSetIds": {
          "shape": "ThreatIntelSetIds",
          "documentation": "<p>The IDs of the ThreatIntelSet resources.</p>",
          "locationName": "threatIntelSetIds"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The pagination parameter to be used on the next list operation to retrieve more items.</p>",
          "locationName": "nextToken"
        }
      }
    },
    "LocalIpDetails": {
      "type": "structure",
      "members": {
        "IpAddressV4": {
          "shape": "String",
          "documentation": "<p>The IPv4 local address of the connection.</p>",
          "locationName": "ipAddressV4"
        }
      },
      "documentation": "<p>Contains information about the local IP address of the connection.</p>"
    },
    "LocalPortDetails": {
      "type": "structure",
      "members": {
        "Port": {
          "shape": "Integer",
          "documentation": "<p>The port number of the local connection.</p>",
          "locationName": "port"
        },
        "PortName": {
          "shape": "String",
          "documentation": "<p>The port name of the local connection.</p>",
          "locationName": "portName"
        }
      },
      "documentation": "<p>Contains information about the port for the local connection.</p>"
    },
    "Location": {
      "type": "string",
      "max": 300,
      "min": 1
    },
    "Long": {
      "type": "long"
    },
    "Master": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The ID of the account used as the master account.</p>",
          "locationName": "accountId"
        },
        "InvitationId": {
          "shape": "String",
          "documentation": "<p>The value used to validate the master account to the member account.</p>",
          "locationName": "invitationId"
        },
        "RelationshipStatus": {
          "shape": "String",
          "documentation": "<p>The status of the relationship between the master and member accounts.</p>",
          "locationName": "relationshipStatus"
        },
        "InvitedAt": {
          "shape": "String",
          "documentation": "<p>The timestamp when the invitation was sent.</p>",
          "locationName": "invitedAt"
        }
      },
      "documentation": "<p>Contains information about the master account and invitation.</p>"
    },
    "MaxResults": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "Member": {
      "type": "structure",
      "required": [
        "AccountId",
        "MasterId",
        "Email",
        "RelationshipStatus",
        "UpdatedAt"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The ID of the member account.</p>",
          "locationName": "accountId"
        },
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The detector ID of the member account.</p>",
          "locationName": "detectorId"
        },
        "MasterId": {
          "shape": "String",
          "documentation": "<p>The master account ID.</p>",
          "locationName": "masterId"
        },
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email address of the member account.</p>",
          "locationName": "email"
        },
        "RelationshipStatus": {
          "shape": "String",
          "documentation": "<p>The status of the relationship between the member and the master.</p>",
          "locationName": "relationshipStatus"
        },
        "InvitedAt": {
          "shape": "String",
          "documentation": "<p>The timestamp when the invitation was sent.</p>",
          "locationName": "invitedAt"
        },
        "UpdatedAt": {
          "shape": "String",
          "documentation": "<p>The last-updated timestamp of the member.</p>",
          "locationName": "updatedAt"
        }
      },
      "documentation": "<p>Contains information about the member account. </p>"
    },
    "MemberDataSourceConfiguration": {
      "type": "structure",
      "required": [
        "AccountId",
        "DataSources"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the member account.</p>",
          "locationName": "accountId"
        },
        "DataSources": {
          "shape": "DataSourceConfigurationsResult",
          "documentation": "<p>Contains information on the status of data sources for the account.</p>",
          "locationName": "dataSources"
        }
      },
      "documentation": "<p>Contains information on which data sources are enabled for a member account.</p>"
    },
    "MemberDataSourceConfigurations": {
      "type": "list",
      "member": {
        "shape": "MemberDataSourceConfiguration"
      },
      "max": 50,
      "min": 1
    },
    "Members": {
      "type": "list",
      "member": {
        "shape": "Member"
      },
      "max": 50,
      "min": 0
    },
    "Name": {
      "type": "string",
      "max": 300,
      "min": 1
    },
    "Neq": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "NetworkConnectionAction": {
      "type": "structure",
      "members": {
        "Blocked": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether EC2 blocked the network connection to your instance.</p>",
          "locationName": "blocked"
        },
        "ConnectionDirection": {
          "shape": "String",
          "documentation": "<p>The network connection direction.</p>",
          "locationName": "connectionDirection"
        },
        "LocalPortDetails": {
          "shape": "LocalPortDetails",
          "documentation": "<p>The local port information of the connection.</p>",
          "locationName": "localPortDetails"
        },
        "Protocol": {
          "shape": "String",
          "documentation": "<p>The network connection protocol.</p>",
          "locationName": "protocol"
        },
        "LocalIpDetails": {
          "shape": "LocalIpDetails",
          "documentation": "<p>The local IP information of the connection.</p>",
          "locationName": "localIpDetails"
        },
        "RemoteIpDetails": {
          "shape": "RemoteIpDetails",
          "documentation": "<p>The remote IP information of the connection.</p>",
          "locationName": "remoteIpDetails"
        },
        "RemotePortDetails": {
          "shape": "RemotePortDetails",
          "documentation": "<p>The remote port information of the connection.</p>",
          "locationName": "remotePortDetails"
        }
      },
      "documentation": "<p>Contains information about the NETWORK_CONNECTION action described in the finding.</p>"
    },
    "NetworkInterface": {
      "type": "structure",
      "members": {
        "Ipv6Addresses": {
          "shape": "Ipv6Addresses",
          "documentation": "<p>A list of IPv6 addresses for the EC2 instance.</p>",
          "locationName": "ipv6Addresses"
        },
        "NetworkInterfaceId": {
          "shape": "String",
          "documentation": "<p>The ID of the network interface.</p>",
          "locationName": "networkInterfaceId"
        },
        "PrivateDnsName": {
          "shape": "String",
          "documentation": "<p>The private DNS name of the EC2 instance.</p>",
          "locationName": "privateDnsName"
        },
        "PrivateIpAddress": {
          "shape": "String",
          "documentation": "<p>The private IP address of the EC2 instance.</p>",
          "locationName": "privateIpAddress"
        },
        "PrivateIpAddresses": {
          "shape": "PrivateIpAddresses",
          "documentation": "<p>Other private IP address information of the EC2 instance.</p>",
          "locationName": "privateIpAddresses"
        },
        "PublicDnsName": {
          "shape": "String",
          "documentation": "<p>The public DNS name of the EC2 instance.</p>",
          "locationName": "publicDnsName"
        },
        "PublicIp": {
          "shape": "String",
          "documentation": "<p>The public IP address of the EC2 instance.</p>",
          "locationName": "publicIp"
        },
        "SecurityGroups": {
          "shape": "SecurityGroups",
          "documentation": "<p>The security groups associated with the EC2 instance.</p>",
          "locationName": "securityGroups"
        },
        "SubnetId": {
          "shape": "String",
          "documentation": "<p>The subnet ID of the EC2 instance.</p>",
          "locationName": "subnetId"
        },
        "VpcId": {
          "shape": "String",
          "documentation": "<p>The VPC ID of the EC2 instance.</p>",
          "locationName": "vpcId"
        }
      },
      "documentation": "<p>Contains information about the elastic network interface of the EC2 instance.</p>"
    },
    "NetworkInterfaces": {
      "type": "list",
      "member": {
        "shape": "NetworkInterface"
      }
    },
    "NotEquals": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "OrderBy": {
      "type": "string",
      "enum": [
        "ASC",
        "DESC"
      ]
    },
    "Organization": {
      "type": "structure",
      "members": {
        "Asn": {
          "shape": "String",
          "documentation": "<p>The Autonomous System Number (ASN) of the internet provider of the remote IP address.</p>",
          "locationName": "asn"
        },
        "AsnOrg": {
          "shape": "String",
          "documentation": "<p>The organization that registered this ASN.</p>",
          "locationName": "asnOrg"
        },
        "Isp": {
          "shape": "String",
          "documentation": "<p>The ISP information for the internet provider.</p>",
          "locationName": "isp"
        },
        "Org": {
          "shape": "String",
          "documentation": "<p>The name of the internet provider.</p>",
          "locationName": "org"
        }
      },
      "documentation": "<p>Contains information about the ISP organization of the remote IP address.</p>"
    },
    "OrganizationDataSourceConfigurations": {
      "type": "structure",
      "members": {
        "S3Logs": {
          "shape": "OrganizationS3LogsConfiguration",
          "documentation": "<p>Describes whether S3 data event logs are enabled for new members of the organization.</p>",
          "locationName": "s3Logs"
        }
      },
      "documentation": "<p>An object that contains information on which data sources will be configured to be automatically enabled for new members within the organization.</p>"
    },
    "OrganizationDataSourceConfigurationsResult": {
      "type": "structure",
      "required": [
        "S3Logs"
      ],
      "members": {
        "S3Logs": {
          "shape": "OrganizationS3LogsConfigurationResult",
          "documentation": "<p>Describes whether S3 data event logs are enabled as a data source.</p>",
          "locationName": "s3Logs"
        }
      },
      "documentation": "<p>An object that contains information on which data sources are automatically enabled for new members within the organization.</p>"
    },
    "OrganizationS3LogsConfiguration": {
      "type": "structure",
      "required": [
        "AutoEnable"
      ],
      "members": {
        "AutoEnable": {
          "shape": "Boolean",
          "documentation": "<p>A value that contains information on whether S3 data event logs will be enabled automatically as a data source for the organization.</p>",
          "locationName": "autoEnable"
        }
      },
      "documentation": "<p>Describes whether S3 data event logs will be automatically enabled for new members of the organization.</p>"
    },
    "OrganizationS3LogsConfigurationResult": {
      "type": "structure",
      "required": [
        "AutoEnable"
      ],
      "members": {
        "AutoEnable": {
          "shape": "Boolean",
          "documentation": "<p>A value that describes whether S3 data event logs are automatically enabled for new members of the organization.</p>",
          "locationName": "autoEnable"
        }
      },
      "documentation": "<p>The current configuration of S3 data event logs as a data source for the organization.</p>"
    },
    "Owner": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "String",
          "documentation": "<p>The canonical user ID of the bucket owner. For information about locating your canonical user ID see <a href=\"https://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html#FindingCanonicalId\">Finding Your Account Canonical User ID.</a> </p>",
          "locationName": "id"
        }
      },
      "documentation": "<p>Contains information on the owner of the bucket.</p>"
    },
    "PermissionConfiguration": {
      "type": "structure",
      "members": {
        "BucketLevelPermissions": {
          "shape": "BucketLevelPermissions",
          "documentation": "<p>Contains information about the bucket level permissions for the S3 bucket.</p>",
          "locationName": "bucketLevelPermissions"
        },
        "AccountLevelPermissions": {
          "shape": "AccountLevelPermissions",
          "documentation": "<p>Contains information about the account level permissions on the S3 bucket.</p>",
          "locationName": "accountLevelPermissions"
        }
      },
      "documentation": "<p>Contains information about how permissions are configured for the S3 bucket.</p>"
    },
    "PortProbeAction": {
      "type": "structure",
      "members": {
        "Blocked": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether EC2 blocked the port probe to the instance, such as with an ACL.</p>",
          "locationName": "blocked"
        },
        "PortProbeDetails": {
          "shape": "PortProbeDetails",
          "documentation": "<p>A list of objects related to port probe details.</p>",
          "locationName": "portProbeDetails"
        }
      },
      "documentation": "<p>Contains information about the PORT_PROBE action described in the finding.</p>"
    },
    "PortProbeDetail": {
      "type": "structure",
      "members": {
        "LocalPortDetails": {
          "shape": "LocalPortDetails",
          "documentation": "<p>The local port information of the connection.</p>",
          "locationName": "localPortDetails"
        },
        "LocalIpDetails": {
          "shape": "LocalIpDetails",
          "documentation": "<p>The local IP information of the connection.</p>",
          "locationName": "localIpDetails"
        },
        "RemoteIpDetails": {
          "shape": "RemoteIpDetails",
          "documentation": "<p>The remote IP information of the connection.</p>",
          "locationName": "remoteIpDetails"
        }
      },
      "documentation": "<p>Contains information about the port probe details.</p>"
    },
    "PortProbeDetails": {
      "type": "list",
      "member": {
        "shape": "PortProbeDetail"
      }
    },
    "PrivateIpAddressDetails": {
      "type": "structure",
      "members": {
        "PrivateDnsName": {
          "shape": "String",
          "documentation": "<p>The private DNS name of the EC2 instance.</p>",
          "locationName": "privateDnsName"
        },
        "PrivateIpAddress": {
          "shape": "String",
          "documentation": "<p>The private IP address of the EC2 instance.</p>",
          "locationName": "privateIpAddress"
        }
      },
      "documentation": "<p>Contains other private IP address information of the EC2 instance.</p>"
    },
    "PrivateIpAddresses": {
      "type": "list",
      "member": {
        "shape": "PrivateIpAddressDetails"
      }
    },
    "ProductCode": {
      "type": "structure",
      "members": {
        "Code": {
          "shape": "String",
          "documentation": "<p>The product code information.</p>",
          "locationName": "code"
        },
        "ProductType": {
          "shape": "String",
          "documentation": "<p>The product code type.</p>",
          "locationName": "productType"
        }
      },
      "documentation": "<p>Contains information about the product code for the EC2 instance.</p>"
    },
    "ProductCodes": {
      "type": "list",
      "member": {
        "shape": "ProductCode"
      }
    },
    "PublicAccess": {
      "type": "structure",
      "members": {
        "PermissionConfiguration": {
          "shape": "PermissionConfiguration",
          "documentation": "<p>Contains information about how permissions are configured for the S3 bucket.</p>",
          "locationName": "permissionConfiguration"
        },
        "EffectivePermission": {
          "shape": "String",
          "documentation": "<p>Describes the effective permission on this bucket after factoring all attached policies.</p>",
          "locationName": "effectivePermission"
        }
      },
      "documentation": "<p>Describes the public access policies that apply to the S3 bucket.</p>"
    },
    "PublishingStatus": {
      "type": "string",
      "enum": [
        "PENDING_VERIFICATION",
        "PUBLISHING",
        "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY",
        "STOPPED"
      ],
      "max": 300,
      "min": 1
    },
    "RemoteIpDetails": {
      "type": "structure",
      "members": {
        "City": {
          "shape": "City",
          "documentation": "<p>The city information of the remote IP address.</p>",
          "locationName": "city"
        },
        "Country": {
          "shape": "Country",
          "documentation": "<p>The country code of the remote IP address.</p>",
          "locationName": "country"
        },
        "GeoLocation": {
          "shape": "GeoLocation",
          "documentation": "<p>The location information of the remote IP address.</p>",
          "locationName": "geoLocation"
        },
        "IpAddressV4": {
          "shape": "String",
          "documentation": "<p>The IPv4 remote address of the connection.</p>",
          "locationName": "ipAddressV4"
        },
        "Organization": {
          "shape": "Organization",
          "documentation": "<p>The ISP organization information of the remote IP address.</p>",
          "locationName": "organization"
        }
      },
      "documentation": "<p>Contains information about the remote IP address of the connection.</p>"
    },
    "RemotePortDetails": {
      "type": "structure",
      "members": {
        "Port": {
          "shape": "Integer",
          "documentation": "<p>The port number of the remote connection.</p>",
          "locationName": "port"
        },
        "PortName": {
          "shape": "String",
          "documentation": "<p>The port name of the remote connection.</p>",
          "locationName": "portName"
        }
      },
      "documentation": "<p>Contains information about the remote port.</p>"
    },
    "Resource": {
      "type": "structure",
      "members": {
        "AccessKeyDetails": {
          "shape": "AccessKeyDetails",
          "documentation": "<p>The IAM access key details (IAM user information) of a user that engaged in the activity that prompted GuardDuty to generate a finding.</p>",
          "locationName": "accessKeyDetails"
        },
        "S3BucketDetails": {
          "shape": "S3BucketDetails",
          "documentation": "<p>Contains information on the S3 bucket.</p>",
          "locationName": "s3BucketDetails"
        },
        "InstanceDetails": {
          "shape": "InstanceDetails",
          "documentation": "<p>The information about the EC2 instance associated with the activity that prompted GuardDuty to generate a finding.</p>",
          "locationName": "instanceDetails"
        },
        "ResourceType": {
          "shape": "String",
          "documentation": "<p>The type of AWS resource.</p>",
          "locationName": "resourceType"
        }
      },
      "documentation": "<p>Contains information about the AWS resource associated with the activity that prompted GuardDuty to generate a finding.</p>"
    },
    "ResourceList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "S3BucketDetail": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "String",
          "documentation": "<p>The Amazon Resource Name (ARN) of the S3 bucket.</p>",
          "locationName": "arn"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the S3 bucket.</p>",
          "locationName": "name"
        },
        "Type": {
          "shape": "String",
          "documentation": "<p>Describes whether the bucket is a source or destination bucket.</p>",
          "locationName": "type"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time the bucket was created at.</p>",
          "locationName": "createdAt"
        },
        "Owner": {
          "shape": "Owner",
          "documentation": "<p>The owner of the S3 bucket.</p>",
          "locationName": "owner"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>All tags attached to the S3 bucket</p>",
          "locationName": "tags"
        },
        "DefaultServerSideEncryption": {
          "shape": "DefaultServerSideEncryption",
          "documentation": "<p>Describes the server side encryption method used in the S3 bucket.</p>",
          "locationName": "defaultServerSideEncryption"
        },
        "PublicAccess": {
          "shape": "PublicAccess",
          "documentation": "<p>Describes the public access policies that apply to the S3 bucket.</p>",
          "locationName": "publicAccess"
        }
      },
      "documentation": "<p>Contains information on the S3 bucket.</p>"
    },
    "S3BucketDetails": {
      "type": "list",
      "member": {
        "shape": "S3BucketDetail"
      }
    },
    "S3LogsConfiguration": {
      "type": "structure",
      "required": [
        "Enable"
      ],
      "members": {
        "Enable": {
          "shape": "Boolean",
          "documentation": "<p> The status of S3 data event logs as a data source.</p>",
          "locationName": "enable"
        }
      },
      "documentation": "<p>Describes whether S3 data event logs will be enabled as a data source.</p>"
    },
    "S3LogsConfigurationResult": {
      "type": "structure",
      "required": [
        "Status"
      ],
      "members": {
        "Status": {
          "shape": "DataSourceStatus",
          "documentation": "<p>A value that describes whether S3 data event logs are automatically enabled for new members of the organization.</p>",
          "locationName": "status"
        }
      },
      "documentation": "<p>Describes whether S3 data event logs will be enabled as a data source.</p>"
    },
    "SecurityGroup": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "String",
          "documentation": "<p>The security group ID of the EC2 instance.</p>",
          "locationName": "groupId"
        },
        "GroupName": {
          "shape": "String",
          "documentation": "<p>The security group name of the EC2 instance.</p>",
          "locationName": "groupName"
        }
      },
      "documentation": "<p>Contains information about the security groups associated with the EC2 instance.</p>"
    },
    "SecurityGroups": {
      "type": "list",
      "member": {
        "shape": "SecurityGroup"
      }
    },
    "Service": {
      "type": "structure",
      "members": {
        "Action": {
          "shape": "Action",
          "documentation": "<p>Information about the activity that is described in a finding.</p>",
          "locationName": "action"
        },
        "Evidence": {
          "shape": "Evidence",
          "documentation": "<p>An evidence object associated with the service.</p>",
          "locationName": "evidence"
        },
        "Archived": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether this finding is archived.</p>",
          "locationName": "archived"
        },
        "Count": {
          "shape": "Integer",
          "documentation": "<p>The total count of the occurrences of this finding type.</p>",
          "locationName": "count"
        },
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The detector ID for the GuardDuty service.</p>",
          "locationName": "detectorId"
        },
        "EventFirstSeen": {
          "shape": "String",
          "documentation": "<p>The first-seen timestamp of the activity that prompted GuardDuty to generate this finding.</p>",
          "locationName": "eventFirstSeen"
        },
        "EventLastSeen": {
          "shape": "String",
          "documentation": "<p>The last-seen timestamp of the activity that prompted GuardDuty to generate this finding.</p>",
          "locationName": "eventLastSeen"
        },
        "ResourceRole": {
          "shape": "String",
          "documentation": "<p>The resource role information for this finding.</p>",
          "locationName": "resourceRole"
        },
        "ServiceName": {
          "shape": "String",
          "documentation": "<p>The name of the AWS service (GuardDuty) that generated a finding.</p>",
          "locationName": "serviceName"
        },
        "UserFeedback": {
          "shape": "String",
          "documentation": "<p>Feedback that was submitted about the finding.</p>",
          "locationName": "userFeedback"
        }
      },
      "documentation": "<p>Contains additional information about the generated finding.</p>"
    },
    "SortCriteria": {
      "type": "structure",
      "members": {
        "AttributeName": {
          "shape": "String",
          "documentation": "<p>Represents the finding attribute (for example, accountId) to sort findings by.</p>",
          "locationName": "attributeName"
        },
        "OrderBy": {
          "shape": "OrderBy",
          "documentation": "<p>The order by which the sorted findings are to be displayed.</p>",
          "locationName": "orderBy"
        }
      },
      "documentation": "<p>Contains information about the criteria used for sorting findings.</p>"
    },
    "StartMonitoringMembersRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector of the GuardDuty master account associated with the member accounts to monitor.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of account IDs of the GuardDuty member accounts to start monitoring.</p>",
          "locationName": "accountIds"
        }
      }
    },
    "StartMonitoringMembersResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of objects that contain the unprocessed account and a result string that explains why it was unprocessed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "StopMonitoringMembersRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector associated with the GuardDuty master account that is monitoring member accounts.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of account IDs for the member accounts to stop monitoring.</p>",
          "locationName": "accountIds"
        }
      }
    },
    "StopMonitoringMembersResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of objects that contain an accountId for each account that could not be processed, and a result string that indicates why the account was not processed. </p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "String",
          "documentation": "<p>The EC2 instance tag key.</p>",
          "locationName": "key"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The EC2 instance tag value.</p>",
          "locationName": "value"
        }
      },
      "documentation": "<p>Contains information about a tag associated with the EC2 instance.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^(?!aws:)[a-zA-Z+-=._:/]+$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 1
    },
    "TagMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 200,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "GuardDutyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the GuardDuty resource to apply a tag to.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to be added to a resource.</p>",
          "locationName": "tags"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "ThreatIntelSetFormat": {
      "type": "string",
      "enum": [
        "TXT",
        "STIX",
        "OTX_CSV",
        "ALIEN_VAULT",
        "PROOF_POINT",
        "FIRE_EYE"
      ],
      "max": 300,
      "min": 1
    },
    "ThreatIntelSetIds": {
      "type": "list",
      "member": {
        "shape": "String"
      },
      "max": 50,
      "min": 0
    },
    "ThreatIntelSetStatus": {
      "type": "string",
      "enum": [
        "INACTIVE",
        "ACTIVATING",
        "ACTIVE",
        "DEACTIVATING",
        "ERROR",
        "DELETE_PENDING",
        "DELETED"
      ],
      "max": 300,
      "min": 1
    },
    "ThreatIntelligenceDetail": {
      "type": "structure",
      "members": {
        "ThreatListName": {
          "shape": "String",
          "documentation": "<p>The name of the threat intelligence list that triggered the finding.</p>",
          "locationName": "threatListName"
        },
        "ThreatNames": {
          "shape": "ThreatNames",
          "documentation": "<p>A list of names of the threats in the threat intelligence list that triggered the finding.</p>",
          "locationName": "threatNames"
        }
      },
      "documentation": "<p>An instance of a threat intelligence detail that constitutes evidence for the finding.</p>"
    },
    "ThreatIntelligenceDetails": {
      "type": "list",
      "member": {
        "shape": "ThreatIntelligenceDetail"
      }
    },
    "ThreatNames": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Total": {
      "type": "structure",
      "members": {
        "Amount": {
          "shape": "String",
          "documentation": "<p>The total usage.</p>",
          "locationName": "amount"
        },
        "Unit": {
          "shape": "String",
          "documentation": "<p>The currency unit that the amount is given in.</p>",
          "locationName": "unit"
        }
      },
      "documentation": "<p>Contains the total usage with the corresponding currency unit for that value.</p>"
    },
    "UnarchiveFindingsRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "FindingIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector associated with the findings to unarchive.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FindingIds": {
          "shape": "FindingIds",
          "documentation": "<p>The IDs of the findings to unarchive.</p>",
          "locationName": "findingIds"
        }
      }
    },
    "UnarchiveFindingsResponse": {
      "type": "structure",
      "members": {}
    },
    "UnprocessedAccount": {
      "type": "structure",
      "required": [
        "AccountId",
        "Result"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "locationName": "accountId"
        },
        "Result": {
          "shape": "String",
          "documentation": "<p>A reason why the account hasn't been processed.</p>",
          "locationName": "result"
        }
      },
      "documentation": "<p>Contains information about the accounts that weren't processed.</p>"
    },
    "UnprocessedAccounts": {
      "type": "list",
      "member": {
        "shape": "UnprocessedAccount"
      },
      "max": 50,
      "min": 0
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "GuardDutyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the resource to remove tags from.</p>",
          "location": "uri",
          "locationName": "resourceArn"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys to remove from the resource.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDetectorRequest": {
      "type": "structure",
      "required": [
        "DetectorId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector to update.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "Enable": {
          "shape": "Boolean",
          "documentation": "<p>Specifies whether the detector is enabled or not enabled.</p>",
          "locationName": "enable"
        },
        "FindingPublishingFrequency": {
          "shape": "FindingPublishingFrequency",
          "documentation": "<p>An enum value that specifies how frequently findings are exported, such as to CloudWatch Events.</p>",
          "locationName": "findingPublishingFrequency"
        },
        "DataSources": {
          "shape": "DataSourceConfigurations",
          "documentation": "<p>An object that describes which data sources will be updated.</p>",
          "locationName": "dataSources"
        }
      }
    },
    "UpdateDetectorResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateFilterRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "FilterName"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The unique ID of the detector that specifies the GuardDuty service where you want to update a filter.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FilterName": {
          "shape": "String",
          "documentation": "<p>The name of the filter.</p>",
          "location": "uri",
          "locationName": "filterName"
        },
        "Description": {
          "shape": "FilterDescription",
          "documentation": "<p>The description of the filter.</p>",
          "locationName": "description"
        },
        "Action": {
          "shape": "FilterAction",
          "documentation": "<p>Specifies the action that is to be applied to the findings that match the filter.</p>",
          "locationName": "action"
        },
        "Rank": {
          "shape": "FilterRank",
          "documentation": "<p>Specifies the position of the filter in the list of current filters. Also specifies the order in which this filter is applied to the findings.</p>",
          "locationName": "rank"
        },
        "FindingCriteria": {
          "shape": "FindingCriteria",
          "documentation": "<p>Represents the criteria to be used in the filter for querying findings.</p>",
          "locationName": "findingCriteria"
        }
      }
    },
    "UpdateFilterResponse": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "FilterName",
          "documentation": "<p>The name of the filter.</p>",
          "locationName": "name"
        }
      }
    },
    "UpdateFindingsFeedbackRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "FindingIds",
        "Feedback"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector associated with the findings to update feedback for.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "FindingIds": {
          "shape": "FindingIds",
          "documentation": "<p>The IDs of the findings that you want to mark as useful or not useful.</p>",
          "locationName": "findingIds"
        },
        "Feedback": {
          "shape": "Feedback",
          "documentation": "<p>The feedback for the finding.</p>",
          "locationName": "feedback"
        },
        "Comments": {
          "shape": "String",
          "documentation": "<p>Additional feedback about the GuardDuty findings.</p>",
          "locationName": "comments"
        }
      }
    },
    "UpdateFindingsFeedbackResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateIPSetRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "IpSetId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The detectorID that specifies the GuardDuty service whose IPSet you want to update.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "IpSetId": {
          "shape": "String",
          "documentation": "<p>The unique ID that specifies the IPSet that you want to update.</p>",
          "location": "uri",
          "locationName": "ipSetId"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The unique ID that specifies the IPSet that you want to update.</p>",
          "locationName": "name"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The updated URI of the file that contains the IPSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.</p>",
          "locationName": "location"
        },
        "Activate": {
          "shape": "Boolean",
          "documentation": "<p>The updated Boolean value that specifies whether the IPSet is active or not.</p>",
          "locationName": "activate"
        }
      }
    },
    "UpdateIPSetResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateMemberDetectorsRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AccountIds"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The detector ID of the master account.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>A list of member account IDs to be updated.</p>",
          "locationName": "accountIds"
        },
        "DataSources": {
          "shape": "DataSourceConfigurations",
          "documentation": "<p>An object describes which data sources will be updated.</p>",
          "locationName": "dataSources"
        }
      }
    },
    "UpdateMemberDetectorsResponse": {
      "type": "structure",
      "required": [
        "UnprocessedAccounts"
      ],
      "members": {
        "UnprocessedAccounts": {
          "shape": "UnprocessedAccounts",
          "documentation": "<p>A list of member account IDs that were unable to be processed along with an explanation for why they were not processed.</p>",
          "locationName": "unprocessedAccounts"
        }
      }
    },
    "UpdateOrganizationConfigurationRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "AutoEnable"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector to update the delegated administrator for.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "AutoEnable": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether to automatically enable member accounts in the organization.</p>",
          "locationName": "autoEnable"
        },
        "DataSources": {
          "shape": "OrganizationDataSourceConfigurations",
          "documentation": "<p>An object describes which data sources will be updated.</p>",
          "locationName": "dataSources"
        }
      }
    },
    "UpdateOrganizationConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdatePublishingDestinationRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "DestinationId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The ID of the detector associated with the publishing destinations to update.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "DestinationId": {
          "shape": "String",
          "documentation": "<p>The ID of the publishing destination to update.</p>",
          "location": "uri",
          "locationName": "destinationId"
        },
        "DestinationProperties": {
          "shape": "DestinationProperties",
          "documentation": "<p>A <code>DestinationProperties</code> object that includes the <code>DestinationArn</code> and <code>KmsKeyArn</code> of the publishing destination.</p>",
          "locationName": "destinationProperties"
        }
      }
    },
    "UpdatePublishingDestinationResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateThreatIntelSetRequest": {
      "type": "structure",
      "required": [
        "DetectorId",
        "ThreatIntelSetId"
      ],
      "members": {
        "DetectorId": {
          "shape": "DetectorId",
          "documentation": "<p>The detectorID that specifies the GuardDuty service whose ThreatIntelSet you want to update.</p>",
          "location": "uri",
          "locationName": "detectorId"
        },
        "ThreatIntelSetId": {
          "shape": "String",
          "documentation": "<p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>",
          "location": "uri",
          "locationName": "threatIntelSetId"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The unique ID that specifies the ThreatIntelSet that you want to update.</p>",
          "locationName": "name"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The updated URI of the file that contains the ThreateIntelSet. For example: https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.</p>",
          "locationName": "location"
        },
        "Activate": {
          "shape": "Boolean",
          "documentation": "<p>The updated Boolean value that specifies whether the ThreateIntelSet is active or not.</p>",
          "locationName": "activate"
        }
      }
    },
    "UpdateThreatIntelSetResponse": {
      "type": "structure",
      "members": {}
    },
    "UsageAccountResult": {
      "type": "structure",
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The Account ID that generated usage.</p>",
          "locationName": "accountId"
        },
        "Total": {
          "shape": "Total",
          "documentation": "<p>Represents the total of usage for the Account ID.</p>",
          "locationName": "total"
        }
      },
      "documentation": "<p>Contains information on the total of usage based on account IDs.</p>"
    },
    "UsageAccountResultList": {
      "type": "list",
      "member": {
        "shape": "UsageAccountResult"
      }
    },
    "UsageCriteria": {
      "type": "structure",
      "required": [
        "DataSources"
      ],
      "members": {
        "AccountIds": {
          "shape": "AccountIds",
          "documentation": "<p>The account IDs to aggregate usage statistics from.</p>",
          "locationName": "accountIds"
        },
        "DataSources": {
          "shape": "DataSourceList",
          "documentation": "<p>The data sources to aggregate usage statistics from.</p>",
          "locationName": "dataSources"
        },
        "Resources": {
          "shape": "ResourceList",
          "documentation": "<p>The resources to aggregate usage statistics from. Only accepts exact resource names.</p>",
          "locationName": "resources"
        }
      },
      "documentation": "<p>Contains information about the criteria used to query usage statistics.</p>"
    },
    "UsageDataSourceResult": {
      "type": "structure",
      "members": {
        "DataSource": {
          "shape": "DataSource",
          "documentation": "<p>The data source type that generated usage.</p>",
          "locationName": "dataSource"
        },
        "Total": {
          "shape": "Total",
          "documentation": "<p>Represents the total of usage for the specified data source.</p>",
          "locationName": "total"
        }
      },
      "documentation": "<p>Contains information on the result of usage based on data source type.</p>"
    },
    "UsageDataSourceResultList": {
      "type": "list",
      "member": {
        "shape": "UsageDataSourceResult"
      }
    },
    "UsageResourceResult": {
      "type": "structure",
      "members": {
        "Resource": {
          "shape": "String",
          "documentation": "<p>The AWS resource that generated usage.</p>",
          "locationName": "resource"
        },
        "Total": {
          "shape": "Total",
          "documentation": "<p>Represents the sum total of usage for the specified resource type.</p>",
          "locationName": "total"
        }
      },
      "documentation": "<p>Contains information on the sum of usage based on an AWS resource.</p>"
    },
    "UsageResourceResultList": {
      "type": "list",
      "member": {
        "shape": "UsageResourceResult"
      }
    },
    "UsageStatisticType": {
      "type": "string",
      "enum": [
        "SUM_BY_ACCOUNT",
        "SUM_BY_DATA_SOURCE",
        "SUM_BY_RESOURCE",
        "TOP_RESOURCES"
      ]
    },
    "UsageStatistics": {
      "type": "structure",
      "members": {
        "SumByAccount": {
          "shape": "UsageAccountResultList",
          "documentation": "<p>The usage statistic sum organized by account ID.</p>",
          "locationName": "sumByAccount"
        },
        "SumByDataSource": {
          "shape": "UsageDataSourceResultList",
          "documentation": "<p>The usage statistic sum organized by on data source.</p>",
          "locationName": "sumByDataSource"
        },
        "SumByResource": {
          "shape": "UsageResourceResultList",
          "documentation": "<p>The usage statistic sum organized by resource.</p>",
          "locationName": "sumByResource"
        },
        "TopResources": {
          "shape": "UsageResourceResultList",
          "documentation": "<p>Lists the top 50 resources that have generated the most GuardDuty usage, in order from most to least expensive.</p>",
          "locationName": "topResources"
        }
      },
      "documentation": "<p>Contains the result of GuardDuty usage. If a UsageStatisticType is provided the result for other types will be null. </p>"
    }
  },
  "documentation": "<p>Amazon GuardDuty is a continuous security monitoring service that analyzes and processes the following data sources: VPC Flow Logs, AWS CloudTrail event logs, and DNS logs. It uses threat intelligence feeds (such as lists of malicious IPs and domains) and machine learning to identify unexpected, potentially unauthorized, and malicious activity within your AWS environment. This can include issues like escalations of privileges, uses of exposed credentials, or communication with malicious IPs, URLs, or domains. For example, GuardDuty can detect compromised EC2 instances that serve malware or mine bitcoin. </p> <p>GuardDuty also monitors AWS account access behavior for signs of compromise. Some examples of this are unauthorized infrastructure deployments such as EC2 instances deployed in a Region that has never been used, or unusual API calls like a password policy change to reduce password strength. </p> <p>GuardDuty informs you of the status of your AWS environment by producing security findings that you can view in the GuardDuty console or through Amazon CloudWatch events. For more information, see the <i> <a href=\"https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html\">Amazon GuardDuty User Guide</a> </i>. </p>"
}
]===]))