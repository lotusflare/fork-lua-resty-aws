local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-09-24",
    "endpointPrefix": "managedblockchain",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "ManagedBlockchain",
    "serviceFullName": "Amazon Managed Blockchain",
    "serviceId": "ManagedBlockchain",
    "signatureVersion": "v4",
    "signingName": "managedblockchain",
    "uid": "managedblockchain-2018-09-24"
  },
  "operations": {
    "CreateMember": {
      "name": "CreateMember",
      "http": {
        "method": "POST",
        "requestUri": "/networks/{networkId}/members"
      },
      "input": {
        "shape": "CreateMemberInput"
      },
      "output": {
        "shape": "CreateMemberOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotReadyException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Creates a member within a Managed Blockchain network.</p>"
    },
    "CreateNetwork": {
      "name": "CreateNetwork",
      "http": {
        "method": "POST",
        "requestUri": "/networks"
      },
      "input": {
        "shape": "CreateNetworkInput"
      },
      "output": {
        "shape": "CreateNetworkOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Creates a new blockchain network using Amazon Managed Blockchain.</p>"
    },
    "CreateNode": {
      "name": "CreateNode",
      "http": {
        "method": "POST",
        "requestUri": "/networks/{networkId}/members/{memberId}/nodes"
      },
      "input": {
        "shape": "CreateNodeInput"
      },
      "output": {
        "shape": "CreateNodeOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotReadyException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Creates a peer node in a member.</p>"
    },
    "CreateProposal": {
      "name": "CreateProposal",
      "http": {
        "method": "POST",
        "requestUri": "/networks/{networkId}/proposals"
      },
      "input": {
        "shape": "CreateProposalInput"
      },
      "output": {
        "shape": "CreateProposalOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceNotReadyException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.</p>"
    },
    "DeleteMember": {
      "name": "DeleteMember",
      "http": {
        "method": "DELETE",
        "requestUri": "/networks/{networkId}/members/{memberId}"
      },
      "input": {
        "shape": "DeleteMemberInput"
      },
      "output": {
        "shape": "DeleteMemberOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceNotReadyException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Deletes a member. Deleting a member removes the member and all associated resources from the network. <code>DeleteMember</code> can only be called for a specified <code>MemberId</code> if the principal performing the action is associated with the AWS account that owns the member. In all other cases, the <code>DeleteMember</code> action is carried out as the result of an approved proposal to remove a member. If <code>MemberId</code> is the last member in a network specified by the last AWS account, the network is deleted also.</p>"
    },
    "DeleteNode": {
      "name": "DeleteNode",
      "http": {
        "method": "DELETE",
        "requestUri": "/networks/{networkId}/members/{memberId}/nodes/{nodeId}"
      },
      "input": {
        "shape": "DeleteNodeInput"
      },
      "output": {
        "shape": "DeleteNodeOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceNotReadyException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Deletes a peer node from a member that your AWS account owns. All data on the node is lost and cannot be recovered.</p>"
    },
    "GetMember": {
      "name": "GetMember",
      "http": {
        "method": "GET",
        "requestUri": "/networks/{networkId}/members/{memberId}"
      },
      "input": {
        "shape": "GetMemberInput"
      },
      "output": {
        "shape": "GetMemberOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns detailed information about a member.</p>"
    },
    "GetNetwork": {
      "name": "GetNetwork",
      "http": {
        "method": "GET",
        "requestUri": "/networks/{networkId}"
      },
      "input": {
        "shape": "GetNetworkInput"
      },
      "output": {
        "shape": "GetNetworkOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns detailed information about a network.</p>"
    },
    "GetNode": {
      "name": "GetNode",
      "http": {
        "method": "GET",
        "requestUri": "/networks/{networkId}/members/{memberId}/nodes/{nodeId}"
      },
      "input": {
        "shape": "GetNodeInput"
      },
      "output": {
        "shape": "GetNodeOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns detailed information about a peer node.</p>"
    },
    "GetProposal": {
      "name": "GetProposal",
      "http": {
        "method": "GET",
        "requestUri": "/networks/{networkId}/proposals/{proposalId}"
      },
      "input": {
        "shape": "GetProposalInput"
      },
      "output": {
        "shape": "GetProposalOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns detailed information about a proposal.</p>"
    },
    "ListInvitations": {
      "name": "ListInvitations",
      "http": {
        "method": "GET",
        "requestUri": "/invitations"
      },
      "input": {
        "shape": "ListInvitationsInput"
      },
      "output": {
        "shape": "ListInvitationsOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns a listing of all invitations made on the specified network.</p>"
    },
    "ListMembers": {
      "name": "ListMembers",
      "http": {
        "method": "GET",
        "requestUri": "/networks/{networkId}/members"
      },
      "input": {
        "shape": "ListMembersInput"
      },
      "output": {
        "shape": "ListMembersOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns a listing of the members in a network and properties of their configurations.</p>"
    },
    "ListNetworks": {
      "name": "ListNetworks",
      "http": {
        "method": "GET",
        "requestUri": "/networks"
      },
      "input": {
        "shape": "ListNetworksInput"
      },
      "output": {
        "shape": "ListNetworksOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns information about the networks in which the current AWS account has members.</p>"
    },
    "ListNodes": {
      "name": "ListNodes",
      "http": {
        "method": "GET",
        "requestUri": "/networks/{networkId}/members/{memberId}/nodes"
      },
      "input": {
        "shape": "ListNodesInput"
      },
      "output": {
        "shape": "ListNodesOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns information about the nodes within a network.</p>"
    },
    "ListProposalVotes": {
      "name": "ListProposalVotes",
      "http": {
        "method": "GET",
        "requestUri": "/networks/{networkId}/proposals/{proposalId}/votes"
      },
      "input": {
        "shape": "ListProposalVotesInput"
      },
      "output": {
        "shape": "ListProposalVotesOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.</p>"
    },
    "ListProposals": {
      "name": "ListProposals",
      "http": {
        "method": "GET",
        "requestUri": "/networks/{networkId}/proposals"
      },
      "input": {
        "shape": "ListProposalsInput"
      },
      "output": {
        "shape": "ListProposalsOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Returns a listing of proposals for the network.</p>"
    },
    "RejectInvitation": {
      "name": "RejectInvitation",
      "http": {
        "method": "DELETE",
        "requestUri": "/invitations/{invitationId}"
      },
      "input": {
        "shape": "RejectInvitationInput"
      },
      "output": {
        "shape": "RejectInvitationOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IllegalActionException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Rejects an invitation to join a network. This action can be called by a principal in an AWS account that has received an invitation to create a member and join a network.</p>"
    },
    "UpdateMember": {
      "name": "UpdateMember",
      "http": {
        "method": "PATCH",
        "requestUri": "/networks/{networkId}/members/{memberId}"
      },
      "input": {
        "shape": "UpdateMemberInput"
      },
      "output": {
        "shape": "UpdateMemberOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Updates a member configuration with new parameters.</p>"
    },
    "UpdateNode": {
      "name": "UpdateNode",
      "http": {
        "method": "PATCH",
        "requestUri": "/networks/{networkId}/members/{memberId}/nodes/{nodeId}"
      },
      "input": {
        "shape": "UpdateNodeInput"
      },
      "output": {
        "shape": "UpdateNodeOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Updates a node configuration with new parameters.</p>"
    },
    "VoteOnProposal": {
      "name": "VoteOnProposal",
      "http": {
        "method": "POST",
        "requestUri": "/networks/{networkId}/proposals/{proposalId}/votes"
      },
      "input": {
        "shape": "VoteOnProposalInput"
      },
      "output": {
        "shape": "VoteOnProposalOutput"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "IllegalActionException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Casts a vote for a specified <code>ProposalId</code> on behalf of a member. The member to vote as, specified by <code>VoterMemberId</code>, must be in the same AWS account as the principal that calls the action.</p>"
    }
  },
  "shapes": {
    "ApprovalThresholdPolicy": {
      "type": "structure",
      "members": {
        "ThresholdPercentage": {
          "shape": "ThresholdPercentageInt",
          "documentation": "<p>The percentage of votes among all members that must be <code>YES</code> for a proposal to be approved. For example, a <code>ThresholdPercentage</code> value of <code>50</code> indicates 50%. The <code>ThresholdComparator</code> determines the precise comparison. If a <code>ThresholdPercentage</code> value of <code>50</code> is specified on a network with 10 members, along with a <code>ThresholdComparator</code> value of <code>GREATER_THAN</code>, this indicates that 6 <code>YES</code> votes are required for the proposal to be approved.</p>"
        },
        "ProposalDurationInHours": {
          "shape": "ProposalDurationInt",
          "documentation": "<p>The duration from the time that a proposal is created until it expires. If members cast neither the required number of <code>YES</code> votes to approve the proposal nor the number of <code>NO</code> votes required to reject it before the duration expires, the proposal is <code>EXPIRED</code> and <code>ProposalActions</code> are not carried out.</p>"
        },
        "ThresholdComparator": {
          "shape": "ThresholdComparator",
          "documentation": "<p>Determines whether the vote percentage must be greater than the <code>ThresholdPercentage</code> or must be greater than or equal to the <code>ThreholdPercentage</code> to be approved.</p>"
        }
      },
      "documentation": "<p>A policy type that defines the voting rules for the network. The rules decide if a proposal is approved. Approval may be based on criteria such as the percentage of <code>YES</code> votes and the duration of the proposal. The policy applies to all proposals and is specified when the network is created.</p>"
    },
    "AvailabilityZoneString": {
      "type": "string"
    },
    "ClientRequestTokenString": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "CreateMemberInput": {
      "type": "structure",
      "required": [
        "ClientRequestToken",
        "InvitationId",
        "NetworkId",
        "MemberConfiguration"
      ],
      "members": {
        "ClientRequestToken": {
          "shape": "ClientRequestTokenString",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>",
          "idempotencyToken": true
        },
        "InvitationId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the invitation that is sent to the member to join the network.</p>"
        },
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network in which the member is created.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberConfiguration": {
          "shape": "MemberConfiguration",
          "documentation": "<p>Member configuration parameters.</p>"
        }
      }
    },
    "CreateMemberOutput": {
      "type": "structure",
      "members": {
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member.</p>"
        }
      }
    },
    "CreateNetworkInput": {
      "type": "structure",
      "required": [
        "ClientRequestToken",
        "Name",
        "Framework",
        "FrameworkVersion",
        "VotingPolicy",
        "MemberConfiguration"
      ],
      "members": {
        "ClientRequestToken": {
          "shape": "ClientRequestTokenString",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>",
          "idempotencyToken": true
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the network.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>An optional description for the network.</p>"
        },
        "Framework": {
          "shape": "Framework",
          "documentation": "<p>The blockchain framework that the network uses.</p>"
        },
        "FrameworkVersion": {
          "shape": "FrameworkVersionString",
          "documentation": "<p>The version of the blockchain framework that the network uses.</p>"
        },
        "FrameworkConfiguration": {
          "shape": "NetworkFrameworkConfiguration",
          "documentation": "<p> Configuration properties of the blockchain framework relevant to the network configuration. </p>"
        },
        "VotingPolicy": {
          "shape": "VotingPolicy",
          "documentation": "<p> The voting rules used by the network to determine if a proposal is approved. </p>"
        },
        "MemberConfiguration": {
          "shape": "MemberConfiguration",
          "documentation": "<p>Configuration properties for the first member within the network.</p>"
        }
      }
    },
    "CreateNetworkOutput": {
      "type": "structure",
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier for the network.</p>"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier for the first member within the network.</p>"
        }
      }
    },
    "CreateNodeInput": {
      "type": "structure",
      "required": [
        "ClientRequestToken",
        "NetworkId",
        "MemberId",
        "NodeConfiguration"
      ],
      "members": {
        "ClientRequestToken": {
          "shape": "ClientRequestTokenString",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>",
          "idempotencyToken": true
        },
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network in which this node runs.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member that owns this node.</p>",
          "location": "uri",
          "locationName": "memberId"
        },
        "NodeConfiguration": {
          "shape": "NodeConfiguration",
          "documentation": "<p>The properties of a node configuration.</p>"
        }
      }
    },
    "CreateNodeOutput": {
      "type": "structure",
      "members": {
        "NodeId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the node.</p>"
        }
      }
    },
    "CreateProposalInput": {
      "type": "structure",
      "required": [
        "ClientRequestToken",
        "NetworkId",
        "MemberId",
        "Actions"
      ],
      "members": {
        "ClientRequestToken": {
          "shape": "ClientRequestTokenString",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.</p>",
          "idempotencyToken": true
        },
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the network for which the proposal is made.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member that is creating the proposal. This identifier is especially useful for identifying the member making the proposal when multiple members exist in a single AWS account.</p>"
        },
        "Actions": {
          "shape": "ProposalActions",
          "documentation": "<p>The type of actions proposed, such as inviting a member or removing a member. The types of <code>Actions</code> in a proposal are mutually exclusive. For example, a proposal with <code>Invitations</code> actions cannot also contain <code>Removals</code> actions.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description for the proposal that is visible to voting members, for example, \"Proposal to add Example Corp. as member.\"</p>"
        }
      }
    },
    "CreateProposalOutput": {
      "type": "structure",
      "members": {
        "ProposalId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the proposal.</p>"
        }
      }
    },
    "DeleteMemberInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "MemberId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network from which the member is removed.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member to remove.</p>",
          "location": "uri",
          "locationName": "memberId"
        }
      }
    },
    "DeleteMemberOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteNodeInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "MemberId",
        "NodeId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network that the node belongs to.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member that owns this node.</p>",
          "location": "uri",
          "locationName": "memberId"
        },
        "NodeId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the node.</p>",
          "location": "uri",
          "locationName": "nodeId"
        }
      }
    },
    "DeleteNodeOutput": {
      "type": "structure",
      "members": {}
    },
    "DescriptionString": {
      "type": "string",
      "max": 128
    },
    "Edition": {
      "type": "string",
      "enum": [
        "STARTER",
        "STANDARD"
      ]
    },
    "Enabled": {
      "type": "boolean",
      "box": true
    },
    "Framework": {
      "type": "string",
      "enum": [
        "HYPERLEDGER_FABRIC"
      ]
    },
    "FrameworkVersionString": {
      "type": "string",
      "max": 8,
      "min": 1
    },
    "GetMemberInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "MemberId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network to which the member belongs.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member.</p>",
          "location": "uri",
          "locationName": "memberId"
        }
      }
    },
    "GetMemberOutput": {
      "type": "structure",
      "members": {
        "Member": {
          "shape": "Member",
          "documentation": "<p>The properties of a member.</p>"
        }
      }
    },
    "GetNetworkInput": {
      "type": "structure",
      "required": [
        "NetworkId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network to get information about.</p>",
          "location": "uri",
          "locationName": "networkId"
        }
      }
    },
    "GetNetworkOutput": {
      "type": "structure",
      "members": {
        "Network": {
          "shape": "Network",
          "documentation": "<p>An object containing network configuration parameters.</p>"
        }
      }
    },
    "GetNodeInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "MemberId",
        "NodeId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network to which the node belongs.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member that owns the node.</p>",
          "location": "uri",
          "locationName": "memberId"
        },
        "NodeId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the node.</p>",
          "location": "uri",
          "locationName": "nodeId"
        }
      }
    },
    "GetNodeOutput": {
      "type": "structure",
      "members": {
        "Node": {
          "shape": "Node",
          "documentation": "<p>Properties of the node configuration.</p>"
        }
      }
    },
    "GetProposalInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "ProposalId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network for which the proposal is made.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "ProposalId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the proposal.</p>",
          "location": "uri",
          "locationName": "proposalId"
        }
      }
    },
    "GetProposalOutput": {
      "type": "structure",
      "members": {
        "Proposal": {
          "shape": "Proposal",
          "documentation": "<p>Information about a proposal.</p>"
        }
      }
    },
    "InstanceTypeString": {
      "type": "string"
    },
    "Invitation": {
      "type": "structure",
      "members": {
        "InvitationId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier for the invitation.</p>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the invitation was created.</p>"
        },
        "ExpirationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the invitation expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, the invitee can no longer create a member and join the network using this <code>InvitationId</code>.</p>"
        },
        "Status": {
          "shape": "InvitationStatus",
          "documentation": "<p>The status of the invitation:</p> <ul> <li> <p> <code>PENDING</code> - The invitee has not created a member to join the network, and the invitation has not yet expired.</p> </li> <li> <p> <code>ACCEPTING</code> - The invitee has begun creating a member, and creation has not yet completed.</p> </li> <li> <p> <code>ACCEPTED</code> - The invitee created a member and joined the network using the <code>InvitationID</code>.</p> </li> <li> <p> <code>REJECTED</code> - The invitee rejected the invitation.</p> </li> <li> <p> <code>EXPIRED</code> - The invitee neither created a member nor rejected the invitation before the <code>ExpirationDate</code>.</p> </li> </ul>"
        },
        "NetworkSummary": {
          "shape": "NetworkSummary"
        }
      },
      "documentation": "<p>An invitation to an AWS account to create a member and join the network.</p>"
    },
    "InvitationList": {
      "type": "list",
      "member": {
        "shape": "Invitation"
      }
    },
    "InvitationStatus": {
      "type": "string",
      "enum": [
        "PENDING",
        "ACCEPTED",
        "ACCEPTING",
        "REJECTED",
        "EXPIRED"
      ]
    },
    "InviteAction": {
      "type": "structure",
      "required": [
        "Principal"
      ],
      "members": {
        "Principal": {
          "shape": "PrincipalString",
          "documentation": "<p>The AWS account ID to invite.</p>"
        }
      },
      "documentation": "<p>An action to invite a specific AWS account to create a member and join the network. The <code>InviteAction</code> is carried out when a <code>Proposal</code> is <code>APPROVED</code>.</p>"
    },
    "InviteActionList": {
      "type": "list",
      "member": {
        "shape": "InviteAction"
      }
    },
    "IsOwned": {
      "type": "boolean",
      "box": true
    },
    "ListInvitationsInput": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "ProposalListMaxResults",
          "documentation": "<p>The maximum number of invitations to return.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListInvitationsOutput": {
      "type": "structure",
      "members": {
        "Invitations": {
          "shape": "InvitationList",
          "documentation": "<p>The invitations for the network.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>"
        }
      }
    },
    "ListMembersInput": {
      "type": "structure",
      "required": [
        "NetworkId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network for which to list members.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "Name": {
          "shape": "String",
          "documentation": "<p>The optional name of the member to list.</p>",
          "location": "querystring",
          "locationName": "name"
        },
        "Status": {
          "shape": "MemberStatus",
          "documentation": "<p>An optional status specifier. If provided, only members currently in this status are listed.</p>",
          "location": "querystring",
          "locationName": "status"
        },
        "IsOwned": {
          "shape": "IsOwned",
          "documentation": "<p>An optional Boolean value. If provided, the request is limited either to members that the current AWS account owns (<code>true</code>) or that other AWS accounts own (<code>false</code>). If omitted, all members are listed.</p>",
          "location": "querystring",
          "locationName": "isOwned"
        },
        "MaxResults": {
          "shape": "MemberListMaxResults",
          "documentation": "<p>The maximum number of members to return in the request.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListMembersOutput": {
      "type": "structure",
      "members": {
        "Members": {
          "shape": "MemberSummaryList",
          "documentation": "<p>An array of <code>MemberSummary</code> objects. Each object contains details about a network member.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>"
        }
      }
    },
    "ListNetworksInput": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the network.</p>",
          "location": "querystring",
          "locationName": "name"
        },
        "Framework": {
          "shape": "Framework",
          "documentation": "<p>An optional framework specifier. If provided, only networks of this framework type are listed.</p>",
          "location": "querystring",
          "locationName": "framework"
        },
        "Status": {
          "shape": "NetworkStatus",
          "documentation": "<p>An optional status specifier. If provided, only networks currently in this status are listed.</p>",
          "location": "querystring",
          "locationName": "status"
        },
        "MaxResults": {
          "shape": "NetworkListMaxResults",
          "documentation": "<p>The maximum number of networks to list.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListNetworksOutput": {
      "type": "structure",
      "members": {
        "Networks": {
          "shape": "NetworkSummaryList",
          "documentation": "<p>An array of <code>NetworkSummary</code> objects that contain configuration properties for each network.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>"
        }
      }
    },
    "ListNodesInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "MemberId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network for which to list nodes.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member who owns the nodes to list.</p>",
          "location": "uri",
          "locationName": "memberId"
        },
        "Status": {
          "shape": "NodeStatus",
          "documentation": "<p>An optional status specifier. If provided, only nodes currently in this status are listed.</p>",
          "location": "querystring",
          "locationName": "status"
        },
        "MaxResults": {
          "shape": "NodeListMaxResults",
          "documentation": "<p>The maximum number of nodes to list.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListNodesOutput": {
      "type": "structure",
      "members": {
        "Nodes": {
          "shape": "NodeSummaryList",
          "documentation": "<p>An array of <code>NodeSummary</code> objects that contain configuration properties for each node.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>"
        }
      }
    },
    "ListProposalVotesInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "ProposalId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the network. </p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "ProposalId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the proposal. </p>",
          "location": "uri",
          "locationName": "proposalId"
        },
        "MaxResults": {
          "shape": "ProposalListMaxResults",
          "documentation": "<p> The maximum number of votes to return. </p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The pagination token that indicates the next set of results to retrieve. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListProposalVotesOutput": {
      "type": "structure",
      "members": {
        "ProposalVotes": {
          "shape": "ProposalVoteList",
          "documentation": "<p> The listing of votes. </p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The pagination token that indicates the next set of results to retrieve. </p>"
        }
      }
    },
    "ListProposalsInput": {
      "type": "structure",
      "required": [
        "NetworkId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the network. </p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MaxResults": {
          "shape": "ProposalListMaxResults",
          "documentation": "<p> The maximum number of proposals to return. </p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p> The pagination token that indicates the next set of results to retrieve. </p>",
          "location": "querystring",
          "locationName": "nextToken"
        }
      }
    },
    "ListProposalsOutput": {
      "type": "structure",
      "members": {
        "Proposals": {
          "shape": "ProposalSummaryList",
          "documentation": "<p>The summary of each proposal made on the network.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The pagination token that indicates the next set of results to retrieve.</p>"
        }
      }
    },
    "LogConfiguration": {
      "type": "structure",
      "members": {
        "Enabled": {
          "shape": "Enabled",
          "documentation": "<p>Indicates whether logging is enabled.</p>"
        }
      },
      "documentation": "<p>A configuration for logging events.</p>"
    },
    "LogConfigurations": {
      "type": "structure",
      "members": {
        "Cloudwatch": {
          "shape": "LogConfiguration",
          "documentation": "<p>Parameters for publishing logs to Amazon CloudWatch Logs.</p>"
        }
      },
      "documentation": "<p>A collection of log configurations.</p>"
    },
    "Member": {
      "type": "structure",
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network to which the member belongs.</p>"
        },
        "Id": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member.</p>"
        },
        "Name": {
          "shape": "NetworkMemberNameString",
          "documentation": "<p>The name of the member.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>An optional description for the member.</p>"
        },
        "FrameworkAttributes": {
          "shape": "MemberFrameworkAttributes",
          "documentation": "<p>Attributes relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>"
        },
        "LogPublishingConfiguration": {
          "shape": "MemberLogPublishingConfiguration",
          "documentation": "<p>Configuration properties for logging events associated with a member.</p>"
        },
        "Status": {
          "shape": "MemberStatus",
          "documentation": "<p>The status of a member.</p> <ul> <li> <p> <code>CREATING</code> - The AWS account is in the process of creating a member.</p> </li> <li> <p> <code>AVAILABLE</code> - The member has been created and can participate in the network.</p> </li> <li> <p> <code>CREATE_FAILED</code> - The AWS account attempted to create a member and creation failed.</p> </li> <li> <p> <code>DELETING</code> - The member and all associated resources are in the process of being deleted. Either the AWS account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code> <code>PROPOSAL</code> to remove the member.</p> </li> <li> <p> <code>DELETED</code> - The member can no longer participate on the network and all associated resources are deleted. Either the AWS account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code> <code>PROPOSAL</code> to remove the member.</p> </li> </ul>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the member was created.</p>"
        }
      },
      "documentation": "<p>Member configuration properties.</p>"
    },
    "MemberConfiguration": {
      "type": "structure",
      "required": [
        "Name",
        "FrameworkConfiguration"
      ],
      "members": {
        "Name": {
          "shape": "NetworkMemberNameString",
          "documentation": "<p>The name of the member.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>An optional description of the member.</p>"
        },
        "FrameworkConfiguration": {
          "shape": "MemberFrameworkConfiguration",
          "documentation": "<p>Configuration properties of the blockchain framework relevant to the member.</p>"
        },
        "LogPublishingConfiguration": {
          "shape": "MemberLogPublishingConfiguration",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>Configuration properties of the member.</p>"
    },
    "MemberFabricAttributes": {
      "type": "structure",
      "members": {
        "AdminUsername": {
          "shape": "UsernameString",
          "documentation": "<p>The user name for the initial administrator user for the member.</p>"
        },
        "CaEndpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint used to access the member's certificate authority.</p>"
        }
      },
      "documentation": "<p>Attributes of Hyperledger Fabric for a member in a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
    },
    "MemberFabricConfiguration": {
      "type": "structure",
      "required": [
        "AdminUsername",
        "AdminPassword"
      ],
      "members": {
        "AdminUsername": {
          "shape": "UsernameString",
          "documentation": "<p>The user name for the member's initial administrative user.</p>"
        },
        "AdminPassword": {
          "shape": "PasswordString",
          "documentation": "<p>The password for the member's initial administrative user. The <code>AdminPassword</code> must be at least eight characters long and no more than 32 characters. It must contain at least one uppercase letter, one lowercase letter, and one digit. It cannot have a single quote(‘), double quote(“), forward slash(/), backward slash(\\), @, or a space.</p>"
        }
      },
      "documentation": "<p>Configuration properties for Hyperledger Fabric for a member in a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
    },
    "MemberFabricLogPublishingConfiguration": {
      "type": "structure",
      "members": {
        "CaLogs": {
          "shape": "LogConfigurations",
          "documentation": "<p>Configuration properties for logging events associated with a member's Certificate Authority (CA). CA logs help you determine when a member in your account joins the network, or when new peers register with a member CA.</p>"
        }
      },
      "documentation": "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
    },
    "MemberFrameworkAttributes": {
      "type": "structure",
      "members": {
        "Fabric": {
          "shape": "MemberFabricAttributes",
          "documentation": "<p>Attributes of Hyperledger Fabric relevant to a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>"
        }
      },
      "documentation": "<p>Attributes relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>"
    },
    "MemberFrameworkConfiguration": {
      "type": "structure",
      "members": {
        "Fabric": {
          "shape": "MemberFabricConfiguration",
          "documentation": "<p>Attributes of Hyperledger Fabric for a member on a Managed Blockchain network that uses Hyperledger Fabric.</p>"
        }
      },
      "documentation": "<p>Configuration properties relevant to a member for the blockchain framework that the Managed Blockchain network uses.</p>"
    },
    "MemberListMaxResults": {
      "type": "integer",
      "box": true,
      "max": 20,
      "min": 1
    },
    "MemberLogPublishingConfiguration": {
      "type": "structure",
      "members": {
        "Fabric": {
          "shape": "MemberFabricLogPublishingConfiguration",
          "documentation": "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
        }
      },
      "documentation": "<p>Configuration properties for logging events associated with a member of a Managed Blockchain network.</p>"
    },
    "MemberStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "AVAILABLE",
        "CREATE_FAILED",
        "UPDATING",
        "DELETING",
        "DELETED"
      ]
    },
    "MemberSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member.</p>"
        },
        "Name": {
          "shape": "NetworkMemberNameString",
          "documentation": "<p>The name of the member.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>An optional description of the member.</p>"
        },
        "Status": {
          "shape": "MemberStatus",
          "documentation": "<p>The status of the member.</p> <ul> <li> <p> <code>CREATING</code> - The AWS account is in the process of creating a member.</p> </li> <li> <p> <code>AVAILABLE</code> - The member has been created and can participate in the network.</p> </li> <li> <p> <code>CREATE_FAILED</code> - The AWS account attempted to create a member and creation failed.</p> </li> <li> <p> <code>DELETING</code> - The member and all associated resources are in the process of being deleted. Either the AWS account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code> <code>PROPOSAL</code> to remove the member.</p> </li> <li> <p> <code>DELETED</code> - The member can no longer participate on the network and all associated resources are deleted. Either the AWS account that owns the member deleted it, or the member is being deleted as the result of an <code>APPROVED</code> <code>PROPOSAL</code> to remove the member.</p> </li> </ul>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the member was created.</p>"
        },
        "IsOwned": {
          "shape": "IsOwned",
          "documentation": "<p>An indicator of whether the member is owned by your AWS account or a different AWS account.</p>"
        }
      },
      "documentation": "<p>A summary of configuration properties for a member.</p>"
    },
    "MemberSummaryList": {
      "type": "list",
      "member": {
        "shape": "MemberSummary"
      }
    },
    "NameString": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": ".*\\S.*"
    },
    "Network": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the network.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>Attributes of the blockchain framework for the network.</p>"
        },
        "Framework": {
          "shape": "Framework",
          "documentation": "<p>The blockchain framework that the network uses.</p>"
        },
        "FrameworkVersion": {
          "shape": "FrameworkVersionString",
          "documentation": "<p>The version of the blockchain framework that the network uses.</p>"
        },
        "FrameworkAttributes": {
          "shape": "NetworkFrameworkAttributes",
          "documentation": "<p>Attributes of the blockchain framework that the network uses.</p>"
        },
        "VpcEndpointServiceName": {
          "shape": "String",
          "documentation": "<p>The VPC endpoint service name of the VPC endpoint service of the network. Members use the VPC endpoint service name to create a VPC endpoint to access network resources.</p>"
        },
        "VotingPolicy": {
          "shape": "VotingPolicy",
          "documentation": "<p>The voting rules for the network to decide if a proposal is accepted.</p>"
        },
        "Status": {
          "shape": "NetworkStatus",
          "documentation": "<p>The current status of the network.</p>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the network was created.</p>"
        }
      },
      "documentation": "<p>Network configuration properties.</p>"
    },
    "NetworkFabricAttributes": {
      "type": "structure",
      "members": {
        "OrderingServiceEndpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint of the ordering service for the network.</p>"
        },
        "Edition": {
          "shape": "Edition",
          "documentation": "<p>The edition of Amazon Managed Blockchain that Hyperledger Fabric uses. For more information, see <a href=\"http://aws.amazon.com/managed-blockchain/pricing/\">Amazon Managed Blockchain Pricing</a>.</p>"
        }
      },
      "documentation": "<p>Attributes of Hyperledger Fabric for a network.</p>"
    },
    "NetworkFabricConfiguration": {
      "type": "structure",
      "required": [
        "Edition"
      ],
      "members": {
        "Edition": {
          "shape": "Edition",
          "documentation": "<p>The edition of Amazon Managed Blockchain that the network uses. For more information, see <a href=\"http://aws.amazon.com/managed-blockchain/pricing/\">Amazon Managed Blockchain Pricing</a>.</p>"
        }
      },
      "documentation": "<p>Hyperledger Fabric configuration properties for the network.</p>"
    },
    "NetworkFrameworkAttributes": {
      "type": "structure",
      "members": {
        "Fabric": {
          "shape": "NetworkFabricAttributes",
          "documentation": "<p>Attributes of Hyperledger Fabric for a Managed Blockchain network that uses Hyperledger Fabric.</p>"
        }
      },
      "documentation": "<p>Attributes relevant to the network for the blockchain framework that the network uses.</p>"
    },
    "NetworkFrameworkConfiguration": {
      "type": "structure",
      "members": {
        "Fabric": {
          "shape": "NetworkFabricConfiguration",
          "documentation": "<p> Hyperledger Fabric configuration properties for a Managed Blockchain network that uses Hyperledger Fabric. </p>"
        }
      },
      "documentation": "<p> Configuration properties relevant to the network for the blockchain framework that the network uses. </p>"
    },
    "NetworkListMaxResults": {
      "type": "integer",
      "box": true,
      "max": 10,
      "min": 1
    },
    "NetworkMemberNameString": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^(?!-)^[^0-9](?!.*--)[A-Za-z0-9-]+[^- ]$"
    },
    "NetworkStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "AVAILABLE",
        "CREATE_FAILED",
        "DELETING",
        "DELETED"
      ]
    },
    "NetworkSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the network.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>An optional description of the network.</p>"
        },
        "Framework": {
          "shape": "Framework",
          "documentation": "<p>The blockchain framework that the network uses.</p>"
        },
        "FrameworkVersion": {
          "shape": "FrameworkVersionString",
          "documentation": "<p>The version of the blockchain framework that the network uses.</p>"
        },
        "Status": {
          "shape": "NetworkStatus",
          "documentation": "<p>The current status of the network.</p>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the network was created.</p>"
        }
      },
      "documentation": "<p>A summary of network configuration properties.</p>"
    },
    "NetworkSummaryList": {
      "type": "list",
      "member": {
        "shape": "NetworkSummary"
      }
    },
    "Node": {
      "type": "structure",
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network that the node is in.</p>"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member to which the node belongs.</p>"
        },
        "Id": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the node.</p>"
        },
        "InstanceType": {
          "shape": "InstanceTypeString",
          "documentation": "<p>The instance type of the node.</p>"
        },
        "AvailabilityZone": {
          "shape": "AvailabilityZoneString",
          "documentation": "<p>The Availability Zone in which the node exists.</p>"
        },
        "FrameworkAttributes": {
          "shape": "NodeFrameworkAttributes",
          "documentation": "<p>Attributes of the blockchain framework being used.</p>"
        },
        "LogPublishingConfiguration": {
          "shape": "NodeLogPublishingConfiguration",
          "documentation": "<p/>"
        },
        "Status": {
          "shape": "NodeStatus",
          "documentation": "<p>The status of the node.</p>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the node was created.</p>"
        }
      },
      "documentation": "<p>Configuration properties of a peer node.</p>"
    },
    "NodeConfiguration": {
      "type": "structure",
      "required": [
        "InstanceType",
        "AvailabilityZone"
      ],
      "members": {
        "InstanceType": {
          "shape": "InstanceTypeString",
          "documentation": "<p>The Amazon Managed Blockchain instance type for the node.</p>"
        },
        "AvailabilityZone": {
          "shape": "AvailabilityZoneString",
          "documentation": "<p>The Availability Zone in which the node exists.</p>"
        },
        "LogPublishingConfiguration": {
          "shape": "NodeLogPublishingConfiguration",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>Configuration properties of a peer node.</p>"
    },
    "NodeFabricAttributes": {
      "type": "structure",
      "members": {
        "PeerEndpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint that identifies the peer node for all services except peer channel-based event services.</p>"
        },
        "PeerEventEndpoint": {
          "shape": "String",
          "documentation": "<p>The endpoint that identifies the peer node for peer channel-based event services.</p>"
        }
      },
      "documentation": "<p>Attributes of Hyperledger Fabric for a peer node on a Managed Blockchain network that uses Hyperledger Fabric.</p>"
    },
    "NodeFabricLogPublishingConfiguration": {
      "type": "structure",
      "members": {
        "ChaincodeLogs": {
          "shape": "LogConfigurations",
          "documentation": "<p>Configuration properties for logging events associated with chaincode execution on a peer node. Chaincode logs contain the results of instantiating, invoking, and querying the chaincode. A peer can run multiple instances of chaincode. When enabled, a log stream is created for all chaincodes, with an individual log stream for each chaincode.</p>"
        },
        "PeerLogs": {
          "shape": "LogConfigurations",
          "documentation": "<p>Configuration properties for a peer node log. Peer node logs contain messages generated when your client submits transaction proposals to peer nodes, requests to join channels, enrolls an admin peer, and lists the chaincode instances on a peer node. </p>"
        }
      },
      "documentation": "<p>Configuration properties for logging events associated with a peer node owned by a member in a Managed Blockchain network.</p>"
    },
    "NodeFrameworkAttributes": {
      "type": "structure",
      "members": {
        "Fabric": {
          "shape": "NodeFabricAttributes",
          "documentation": "<p>Attributes of Hyperledger Fabric for a peer node on a Managed Blockchain network that uses Hyperledger Fabric.</p>"
        }
      },
      "documentation": "<p>Attributes relevant to a peer node on a Managed Blockchain network for the blockchain framework that the network uses.</p>"
    },
    "NodeListMaxResults": {
      "type": "integer",
      "box": true,
      "max": 20,
      "min": 1
    },
    "NodeLogPublishingConfiguration": {
      "type": "structure",
      "members": {
        "Fabric": {
          "shape": "NodeFabricLogPublishingConfiguration",
          "documentation": "<p>Configuration properties for logging events associated with a node that is owned by a member of a Managed Blockchain network using the Hyperledger Fabric framework.</p>"
        }
      },
      "documentation": "<p>Configuration properties for logging events associated with a peer node owned by a member in a Managed Blockchain network.</p>"
    },
    "NodeStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "AVAILABLE",
        "CREATE_FAILED",
        "UPDATING",
        "DELETING",
        "DELETED",
        "FAILED"
      ]
    },
    "NodeSummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the node.</p>"
        },
        "Status": {
          "shape": "NodeStatus",
          "documentation": "<p>The status of the node.</p>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the node was created.</p>"
        },
        "AvailabilityZone": {
          "shape": "AvailabilityZoneString",
          "documentation": "<p>The Availability Zone in which the node exists.</p>"
        },
        "InstanceType": {
          "shape": "InstanceTypeString",
          "documentation": "<p>The EC2 instance type for the node.</p>"
        }
      },
      "documentation": "<p>A summary of configuration properties for a peer node.</p>"
    },
    "NodeSummaryList": {
      "type": "list",
      "member": {
        "shape": "NodeSummary"
      }
    },
    "PaginationToken": {
      "type": "string",
      "max": 128
    },
    "PasswordString": {
      "type": "string",
      "max": 32,
      "min": 8,
      "pattern": "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?!.*[@'\\\\\"/])[a-zA-Z0-9\\S]*$",
      "sensitive": true
    },
    "PrincipalString": {
      "type": "string"
    },
    "Proposal": {
      "type": "structure",
      "members": {
        "ProposalId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the proposal.</p>"
        },
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the network for which the proposal is made.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>The description of the proposal.</p>"
        },
        "Actions": {
          "shape": "ProposalActions",
          "documentation": "<p>The actions to perform on the network if the proposal is <code>APPROVED</code>.</p>"
        },
        "ProposedByMemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member that created the proposal.</p>"
        },
        "ProposedByMemberName": {
          "shape": "NetworkMemberNameString",
          "documentation": "<p>The name of the member that created the proposal.</p>"
        },
        "Status": {
          "shape": "ProposalStatus",
          "documentation": "<p>The status of the proposal. Values are as follows:</p> <ul> <li> <p> <code>IN_PROGRESS</code> - The proposal is active and open for member voting.</p> </li> <li> <p> <code>APPROVED</code> - The proposal was approved with sufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified proposal actions are carried out.</p> </li> <li> <p> <code>REJECTED</code> - The proposal was rejected with insufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified <code>ProposalActions</code> are not carried out.</p> </li> <li> <p> <code>EXPIRED</code> - Members did not cast the number of votes required to determine the proposal outcome before the proposal expired. The specified <code>ProposalActions</code> are not carried out.</p> </li> <li> <p> <code>ACTION_FAILED</code> - One or more of the specified <code>ProposalActions</code> in a proposal that was approved could not be completed because of an error. The <code>ACTION_FAILED</code> status occurs even if only one ProposalAction fails and other actions are successful.</p> </li> </ul>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time that the proposal was created. </p>"
        },
        "ExpirationDate": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time that the proposal expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, if members have not cast enough votes to determine the outcome according to the voting policy, the proposal is <code>EXPIRED</code> and <code>Actions</code> are not carried out. </p>"
        },
        "YesVoteCount": {
          "shape": "VoteCount",
          "documentation": "<p> The current total of <code>YES</code> votes cast on the proposal by members. </p>"
        },
        "NoVoteCount": {
          "shape": "VoteCount",
          "documentation": "<p> The current total of <code>NO</code> votes cast on the proposal by members. </p>"
        },
        "OutstandingVoteCount": {
          "shape": "VoteCount",
          "documentation": "<p> The number of votes remaining to be cast on the proposal by members. In other words, the number of members minus the sum of <code>YES</code> votes and <code>NO</code> votes. </p>"
        }
      },
      "documentation": "<p>Properties of a proposal on a Managed Blockchain network.</p>"
    },
    "ProposalActions": {
      "type": "structure",
      "members": {
        "Invitations": {
          "shape": "InviteActionList",
          "documentation": "<p> The actions to perform for an <code>APPROVED</code> proposal to invite an AWS account to create a member and join the network. </p>"
        },
        "Removals": {
          "shape": "RemoveActionList",
          "documentation": "<p> The actions to perform for an <code>APPROVED</code> proposal to remove a member from the network, which deletes the member and all associated member resources from the network. </p>"
        }
      },
      "documentation": "<p> The actions to carry out if a proposal is <code>APPROVED</code>. </p>"
    },
    "ProposalDurationInt": {
      "type": "integer",
      "box": true,
      "max": 168,
      "min": 1
    },
    "ProposalListMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "ProposalStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "APPROVED",
        "REJECTED",
        "EXPIRED",
        "ACTION_FAILED"
      ]
    },
    "ProposalSummary": {
      "type": "structure",
      "members": {
        "ProposalId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the proposal. </p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p> The description of the proposal. </p>"
        },
        "ProposedByMemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the member that created the proposal. </p>"
        },
        "ProposedByMemberName": {
          "shape": "NetworkMemberNameString",
          "documentation": "<p> The name of the member that created the proposal. </p>"
        },
        "Status": {
          "shape": "ProposalStatus",
          "documentation": "<p>The status of the proposal. Values are as follows:</p> <ul> <li> <p> <code>IN_PROGRESS</code> - The proposal is active and open for member voting.</p> </li> <li> <p> <code>APPROVED</code> - The proposal was approved with sufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified proposal actions are carried out.</p> </li> <li> <p> <code>REJECTED</code> - The proposal was rejected with insufficient <code>YES</code> votes among members according to the <code>VotingPolicy</code> specified for the <code>Network</code>. The specified <code>ProposalActions</code> are not carried out.</p> </li> <li> <p> <code>EXPIRED</code> - Members did not cast the number of votes required to determine the proposal outcome before the proposal expired. The specified <code>ProposalActions</code> are not carried out.</p> </li> <li> <p> <code>ACTION_FAILED</code> - One or more of the specified <code>ProposalActions</code> in a proposal that was approved could not be completed because of an error.</p> </li> </ul>"
        },
        "CreationDate": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time that the proposal was created. </p>"
        },
        "ExpirationDate": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time that the proposal expires. This is the <code>CreationDate</code> plus the <code>ProposalDurationInHours</code> that is specified in the <code>ProposalThresholdPolicy</code>. After this date and time, if members have not cast enough votes to determine the outcome according to the voting policy, the proposal is <code>EXPIRED</code> and <code>Actions</code> are not carried out. </p>"
        }
      },
      "documentation": "<p>Properties of a proposal.</p>"
    },
    "ProposalSummaryList": {
      "type": "list",
      "member": {
        "shape": "ProposalSummary"
      }
    },
    "ProposalVoteList": {
      "type": "list",
      "member": {
        "shape": "VoteSummary"
      }
    },
    "RejectInvitationInput": {
      "type": "structure",
      "required": [
        "InvitationId"
      ],
      "members": {
        "InvitationId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the invitation to reject.</p>",
          "location": "uri",
          "locationName": "invitationId"
        }
      }
    },
    "RejectInvitationOutput": {
      "type": "structure",
      "members": {}
    },
    "RemoveAction": {
      "type": "structure",
      "required": [
        "MemberId"
      ],
      "members": {
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member to remove.</p>"
        }
      },
      "documentation": "<p>An action to remove a member from a Managed Blockchain network as the result of a removal proposal that is <code>APPROVED</code>. The member and all associated resources are deleted from the network.</p>"
    },
    "RemoveActionList": {
      "type": "list",
      "member": {
        "shape": "RemoveAction"
      }
    },
    "ResourceIdString": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "String": {
      "type": "string"
    },
    "ThresholdComparator": {
      "type": "string",
      "enum": [
        "GREATER_THAN",
        "GREATER_THAN_OR_EQUAL_TO"
      ]
    },
    "ThresholdPercentageInt": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 0
    },
    "Timestamp": {
      "type": "timestamp",
      "timestampFormat": "iso8601"
    },
    "UpdateMemberInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "MemberId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique ID of the Managed Blockchain network to which the member belongs.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique ID of the member.</p>",
          "location": "uri",
          "locationName": "memberId"
        },
        "LogPublishingConfiguration": {
          "shape": "MemberLogPublishingConfiguration",
          "documentation": "<p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>"
        }
      }
    },
    "UpdateMemberOutput": {
      "type": "structure",
      "members": {}
    },
    "UpdateNodeInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "MemberId",
        "NodeId"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique ID of the Managed Blockchain network to which the node belongs.</p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique ID of the member that owns the node.</p>",
          "location": "uri",
          "locationName": "memberId"
        },
        "NodeId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique ID of the node.</p>",
          "location": "uri",
          "locationName": "nodeId"
        },
        "LogPublishingConfiguration": {
          "shape": "NodeLogPublishingConfiguration",
          "documentation": "<p>Configuration properties for publishing to Amazon CloudWatch Logs.</p>"
        }
      }
    },
    "UpdateNodeOutput": {
      "type": "structure",
      "members": {}
    },
    "UsernameString": {
      "type": "string",
      "max": 16,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9]*$"
    },
    "VoteCount": {
      "type": "integer",
      "box": true
    },
    "VoteOnProposalInput": {
      "type": "structure",
      "required": [
        "NetworkId",
        "ProposalId",
        "VoterMemberId",
        "Vote"
      ],
      "members": {
        "NetworkId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the network. </p>",
          "location": "uri",
          "locationName": "networkId"
        },
        "ProposalId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the proposal. </p>",
          "location": "uri",
          "locationName": "proposalId"
        },
        "VoterMemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p>The unique identifier of the member casting the vote. </p>"
        },
        "Vote": {
          "shape": "VoteValue",
          "documentation": "<p> The value of the vote. </p>"
        }
      }
    },
    "VoteOnProposalOutput": {
      "type": "structure",
      "members": {}
    },
    "VoteSummary": {
      "type": "structure",
      "members": {
        "Vote": {
          "shape": "VoteValue",
          "documentation": "<p> The vote value, either <code>YES</code> or <code>NO</code>. </p>"
        },
        "MemberName": {
          "shape": "NetworkMemberNameString",
          "documentation": "<p> The name of the member that cast the vote. </p>"
        },
        "MemberId": {
          "shape": "ResourceIdString",
          "documentation": "<p> The unique identifier of the member that cast the vote. </p>"
        }
      },
      "documentation": "<p> Properties of an individual vote that a member cast for a proposal. </p>"
    },
    "VoteValue": {
      "type": "string",
      "enum": [
        "YES",
        "NO"
      ]
    },
    "VotingPolicy": {
      "type": "structure",
      "members": {
        "ApprovalThresholdPolicy": {
          "shape": "ApprovalThresholdPolicy",
          "documentation": "<p>Defines the rules for the network for voting on proposals, such as the percentage of <code>YES</code> votes required for the proposal to be approved and the duration of the proposal. The policy applies to all proposals and is specified when the network is created.</p>"
        }
      },
      "documentation": "<p> The voting rules for the network to decide if a proposal is accepted </p>"
    }
  },
  "documentation": "<p/> <p>Amazon Managed Blockchain is a fully managed service for creating and managing blockchain networks using open source frameworks. Blockchain allows you to build applications where multiple parties can securely and transparently run transactions and share data without the need for a trusted, central authority. Currently, Managed Blockchain supports the Hyperledger Fabric open source framework. </p>"
}
]===]))
