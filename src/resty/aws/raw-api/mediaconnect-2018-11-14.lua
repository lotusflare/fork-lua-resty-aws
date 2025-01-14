local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2018-11-14",
    "endpointPrefix": "mediaconnect",
    "signingName": "mediaconnect",
    "serviceFullName": "AWS MediaConnect",
    "serviceId": "MediaConnect",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "mediaconnect-2018-11-14",
    "signatureVersion": "v4"
  },
  "operations": {
    "AddFlowOutputs": {
      "name": "AddFlowOutputs",
      "http": {
        "method": "POST",
        "requestUri": "/v1/flows/{flowArn}/outputs",
        "responseCode": 201
      },
      "input": {
        "shape": "AddFlowOutputsRequest"
      },
      "output": {
        "shape": "AddFlowOutputsResponse",
        "documentation": "AWS Elemental MediaConnect added the outputs successfully."
      },
      "errors": [
        {
          "shape": "AddFlowOutputs420Exception",
          "documentation": "AWS Elemental MediaConnect can't complete this request because this flow already has the maximum number of allowed outputs (50). For more information, contact AWS Customer Support."
        },
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Adds outputs to an existing flow. You can create up to 50 outputs per flow."
    },
    "AddFlowSources": {
      "name": "AddFlowSources",
      "http": {
        "method": "POST",
        "requestUri": "/v1/flows/{flowArn}/source",
        "responseCode": 201
      },
      "input": {
        "shape": "AddFlowSourcesRequest"
      },
      "output": {
        "shape": "AddFlowSourcesResponse",
        "documentation": "AWS Elemental MediaConnect added sources to the flow successfully."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Adds Sources to flow"
    },
    "AddFlowVpcInterfaces": {
      "name": "AddFlowVpcInterfaces",
      "http": {
        "method": "POST",
        "requestUri": "/v1/flows/{flowArn}/vpcInterfaces",
        "responseCode": 201
      },
      "input": {
        "shape": "AddFlowVpcInterfacesRequest"
      },
      "output": {
        "shape": "AddFlowVpcInterfacesResponse",
        "documentation": "The following VPC interface was added to the Flow configuration."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Adds VPC interfaces to flow"
    },
    "CreateFlow": {
      "name": "CreateFlow",
      "http": {
        "method": "POST",
        "requestUri": "/v1/flows",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateFlowRequest"
      },
      "output": {
        "shape": "CreateFlowResponse",
        "documentation": "AWS Elemental MediaConnect created the new flow successfully."
      },
      "errors": [
        {
          "shape": "CreateFlow420Exception",
          "documentation": "Your account already contains the maximum number of 20 flows per account, per Region. For more information, contact AWS Customer Support."
        },
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50)."
    },
    "DeleteFlow": {
      "name": "DeleteFlow",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/flows/{flowArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteFlowRequest"
      },
      "output": {
        "shape": "DeleteFlowResponse",
        "documentation": "AWS Elemental MediaConnect is deleting the flow."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Deletes a flow. Before you can delete a flow, you must stop the flow."
    },
    "DescribeFlow": {
      "name": "DescribeFlow",
      "http": {
        "method": "GET",
        "requestUri": "/v1/flows/{flowArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeFlowRequest"
      },
      "output": {
        "shape": "DescribeFlowResponse",
        "documentation": "AWS Elemental MediaConnect returned the flow details successfully."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Displays the details of a flow. The response includes the flow ARN, name, and Availability Zone, as well as details about the source, outputs, and entitlements."
    },
    "GrantFlowEntitlements": {
      "name": "GrantFlowEntitlements",
      "http": {
        "method": "POST",
        "requestUri": "/v1/flows/{flowArn}/entitlements",
        "responseCode": 200
      },
      "input": {
        "shape": "GrantFlowEntitlementsRequest"
      },
      "output": {
        "shape": "GrantFlowEntitlementsResponse",
        "documentation": "AWS Elemental MediaConnect granted the entitlements successfully."
      },
      "errors": [
        {
          "shape": "GrantFlowEntitlements420Exception",
          "documentation": "AWS Elemental MediaConnect can't complete this request because this flow already has the maximum number of allowed entitlements (50). For more information, contact AWS Customer Support."
        },
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Grants entitlements to an existing flow."
    },
    "ListEntitlements": {
      "name": "ListEntitlements",
      "http": {
        "method": "GET",
        "requestUri": "/v1/entitlements",
        "responseCode": 200
      },
      "input": {
        "shape": "ListEntitlementsRequest"
      },
      "output": {
        "shape": "ListEntitlementsResponse",
        "documentation": "AWS Elemental MediaConnect returned the list of entitlements successfully."
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        },
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        }
      ],
      "documentation": "Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page."
    },
    "ListFlows": {
      "name": "ListFlows",
      "http": {
        "method": "GET",
        "requestUri": "/v1/flows",
        "responseCode": 200
      },
      "input": {
        "shape": "ListFlowsRequest"
      },
      "output": {
        "shape": "ListFlowsResponse",
        "documentation": "AWS Elemental MediaConnect returned the list of flows successfully."
      },
      "errors": [
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        },
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        }
      ],
      "documentation": "Displays a list of flows that are associated with this account. This request returns a paginated result."
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
        "documentation": "The tags for the resource"
      },
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "The requested resource was not found"
        },
        {
          "shape": "BadRequestException",
          "documentation": "The client performed an invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "Internal service error"
        }
      ],
      "documentation": "List all tags on an AWS Elemental MediaConnect resource"
    },
    "RemoveFlowOutput": {
      "name": "RemoveFlowOutput",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/flows/{flowArn}/outputs/{outputArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "RemoveFlowOutputRequest"
      },
      "output": {
        "shape": "RemoveFlowOutputResponse",
        "documentation": "output successfully removed from flow configuration."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Removes an output from an existing flow. This request can be made only on an output that does not have an entitlement associated with it. If the output has an entitlement, you must revoke the entitlement instead. When an entitlement is revoked from a flow, the service automatically removes the associated output."
    },
    "RemoveFlowSource": {
      "name": "RemoveFlowSource",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/flows/{flowArn}/source/{sourceArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "RemoveFlowSourceRequest"
      },
      "output": {
        "shape": "RemoveFlowSourceResponse",
        "documentation": "source successfully removed from flow configuration."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Removes a source from an existing flow. This request can be made only if there is more than one source on the flow."
    },
    "RemoveFlowVpcInterface": {
      "name": "RemoveFlowVpcInterface",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/flows/{flowArn}/vpcInterfaces/{vpcInterfaceName}",
        "responseCode": 200
      },
      "input": {
        "shape": "RemoveFlowVpcInterfaceRequest"
      },
      "output": {
        "shape": "RemoveFlowVpcInterfaceResponse",
        "documentation": "VPC interface successfully removed from flow configuration."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Removes a VPC Interface from an existing flow. This request can be made only on a VPC interface that does not have a Source or Output associated with it. If the VPC interface is referenced by a Source or Output, you must first delete or update the Source or Output to no longer reference the VPC interface."
    },
    "RevokeFlowEntitlement": {
      "name": "RevokeFlowEntitlement",
      "http": {
        "method": "DELETE",
        "requestUri": "/v1/flows/{flowArn}/entitlements/{entitlementArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "RevokeFlowEntitlementRequest"
      },
      "output": {
        "shape": "RevokeFlowEntitlementResponse",
        "documentation": "AWS Elemental MediaConnect revoked the entitlement successfully."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Revokes an entitlement from a flow. Once an entitlement is revoked, the content becomes unavailable to the subscriber and the associated output is removed."
    },
    "StartFlow": {
      "name": "StartFlow",
      "http": {
        "method": "POST",
        "requestUri": "/v1/flows/start/{flowArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "StartFlowRequest"
      },
      "output": {
        "shape": "StartFlowResponse",
        "documentation": "AWS Elemental MediaConnect is starting the flow."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Starts a flow."
    },
    "StopFlow": {
      "name": "StopFlow",
      "http": {
        "method": "POST",
        "requestUri": "/v1/flows/stop/{flowArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "StopFlowRequest"
      },
      "output": {
        "shape": "StopFlowResponse",
        "documentation": "AWS Elemental MediaConnect is stopping the flow."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Stops a flow."
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
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "The requested resource was not found"
        },
        {
          "shape": "BadRequestException",
          "documentation": "The client performed an invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "Internal service error"
        }
      ],
      "documentation": "Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource are not specified in the request parameters, they are not changed. When a resource is deleted, the tags associated with that resource are deleted as well."
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
      "errors": [
        {
          "shape": "NotFoundException",
          "documentation": "The requested resource was not found"
        },
        {
          "shape": "BadRequestException",
          "documentation": "The client performed an invalid request"
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "Internal service error"
        }
      ],
      "documentation": "Deletes specified tags from a resource."
    },
    "UpdateFlow": {
      "name": "UpdateFlow",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/flows/{flowArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdateFlowRequest"
      },
      "output": {
        "shape": "UpdateFlowResponse",
        "documentation": "AWS Elemental MediaConnect updated the flow successfully."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Updates flow"
    },
    "UpdateFlowEntitlement": {
      "name": "UpdateFlowEntitlement",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/flows/{flowArn}/entitlements/{entitlementArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdateFlowEntitlementRequest"
      },
      "output": {
        "shape": "UpdateFlowEntitlementResponse",
        "documentation": "AWS Elemental MediaConnect updated the entitlement successfully."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "You can change an entitlement's description, subscribers, and encryption. If you change the subscribers, the service will remove the outputs that are are used by the subscribers that are removed."
    },
    "UpdateFlowOutput": {
      "name": "UpdateFlowOutput",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/flows/{flowArn}/outputs/{outputArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdateFlowOutputRequest"
      },
      "output": {
        "shape": "UpdateFlowOutputResponse",
        "documentation": "AWS Elemental MediaConnect updated the output successfully."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Updates an existing flow output."
    },
    "UpdateFlowSource": {
      "name": "UpdateFlowSource",
      "http": {
        "method": "PUT",
        "requestUri": "/v1/flows/{flowArn}/source/{sourceArn}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdateFlowSourceRequest"
      },
      "output": {
        "shape": "UpdateFlowSourceResponse",
        "documentation": "AWS Elemental MediaConnect updated the flow successfully."
      },
      "errors": [
        {
          "shape": "BadRequestException",
          "documentation": "The request that you submitted is not valid."
        },
        {
          "shape": "InternalServerErrorException",
          "documentation": "AWS Elemental MediaConnect can't fulfill your request because it encountered an unexpected condition."
        },
        {
          "shape": "ForbiddenException",
          "documentation": "You don't have the required permissions to perform this operation."
        },
        {
          "shape": "NotFoundException",
          "documentation": "AWS Elemental MediaConnect did not find the resource that you specified in the request."
        },
        {
          "shape": "ServiceUnavailableException",
          "documentation": "AWS Elemental MediaConnect is currently unavailable. Try again later."
        },
        {
          "shape": "TooManyRequestsException",
          "documentation": "You have exceeded the service request rate limit for your AWS Elemental MediaConnect account."
        }
      ],
      "documentation": "Updates the source of a flow."
    }
  },
  "shapes": {
    "AddFlowOutputsRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to add outputs to."
        },
        "Outputs": {
          "shape": "__listOfAddOutputRequest",
          "locationName": "outputs",
          "documentation": "A list of outputs that you want to add."
        }
      },
      "documentation": "A request to add outputs to the specified flow.",
      "required": [
        "FlowArn",
        "Outputs"
      ]
    },
    "AddFlowOutputsResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that these outputs were added to."
        },
        "Outputs": {
          "shape": "__listOfOutput",
          "locationName": "outputs",
          "documentation": "The details of the newly added outputs."
        }
      }
    },
    "AddFlowSourcesRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to mutate."
        },
        "Sources": {
          "shape": "__listOfSetSourceRequest",
          "locationName": "sources",
          "documentation": "A list of sources that you want to add."
        }
      },
      "documentation": "A request to add sources to the flow.",
      "required": [
        "FlowArn",
        "Sources"
      ]
    },
    "AddFlowSourcesResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that these sources were added to."
        },
        "Sources": {
          "shape": "__listOfSource",
          "locationName": "sources",
          "documentation": "The details of the newly added sources."
        }
      }
    },
    "AddFlowVpcInterfacesRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to mutate."
        },
        "VpcInterfaces": {
          "shape": "__listOfVpcInterfaceRequest",
          "locationName": "vpcInterfaces",
          "documentation": "A list of VPC interfaces that you want to add."
        }
      },
      "documentation": "A request to add VPC interfaces to the flow.",
      "required": [
        "FlowArn",
        "VpcInterfaces"
      ]
    },
    "AddFlowVpcInterfacesResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that these VPC interfaces were added to."
        },
        "VpcInterfaces": {
          "shape": "__listOfVpcInterface",
          "locationName": "vpcInterfaces",
          "documentation": "The details of the newly added VPC interfaces."
        }
      }
    },
    "AddOutputRequest": {
      "type": "structure",
      "members": {
        "CidrAllowList": {
          "shape": "__listOf__string",
          "locationName": "cidrAllowList",
          "documentation": "The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description of the output. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the end user."
        },
        "Destination": {
          "shape": "__string",
          "locationName": "destination",
          "documentation": "The IP address from which video will be sent to output destinations."
        },
        "Encryption": {
          "shape": "Encryption",
          "locationName": "encryption",
          "documentation": "The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
        },
        "MaxLatency": {
          "shape": "__integer",
          "locationName": "maxLatency",
          "documentation": "The maximum latency in milliseconds for Zixi-based streams."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the output. This value must be unique within the current flow."
        },
        "Port": {
          "shape": "__integer",
          "locationName": "port",
          "documentation": "The port to use when content is distributed to this output."
        },
        "Protocol": {
          "shape": "Protocol",
          "locationName": "protocol",
          "documentation": "The protocol to use for the output."
        },
        "RemoteId": {
          "shape": "__string",
          "locationName": "remoteId",
          "documentation": "The remote ID for the Zixi-pull output stream."
        },
        "SmoothingLatency": {
          "shape": "__integer",
          "locationName": "smoothingLatency",
          "documentation": "The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams."
        },
        "StreamId": {
          "shape": "__string",
          "locationName": "streamId",
          "documentation": "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
        },
        "VpcInterfaceAttachment": {
          "shape": "VpcInterfaceAttachment",
          "locationName": "vpcInterfaceAttachment",
          "documentation": "The name of the VPC interface attachment to use for this output."
        }
      },
      "documentation": "The output that you want to add to this flow.",
      "required": [
        "Protocol"
      ]
    },
    "Algorithm": {
      "type": "string",
      "enum": [
        "aes128",
        "aes192",
        "aes256"
      ]
    },
    "CreateFlowRequest": {
      "type": "structure",
      "members": {
        "AvailabilityZone": {
          "shape": "__string",
          "locationName": "availabilityZone",
          "documentation": "The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS Region."
        },
        "Entitlements": {
          "shape": "__listOfGrantEntitlementRequest",
          "locationName": "entitlements",
          "documentation": "The entitlements that you want to grant on a flow."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the flow."
        },
        "Outputs": {
          "shape": "__listOfAddOutputRequest",
          "locationName": "outputs",
          "documentation": "The outputs that you want to add to this flow."
        },
        "Source": {
          "shape": "SetSourceRequest",
          "locationName": "source"
        },
        "SourceFailoverConfig": {
          "shape": "FailoverConfig",
          "locationName": "sourceFailoverConfig"
        },
        "Sources": {
          "shape": "__listOfSetSourceRequest",
          "locationName": "sources"
        },
        "VpcInterfaces": {
          "shape": "__listOfVpcInterfaceRequest",
          "locationName": "vpcInterfaces",
          "documentation": "The VPC interfaces you want on the flow."
        }
      },
      "documentation": "Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50).",
      "required": [
        "Name"
      ]
    },
    "CreateFlowResponse": {
      "type": "structure",
      "members": {
        "Flow": {
          "shape": "Flow",
          "locationName": "flow"
        }
      }
    },
    "DeleteFlowRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that you want to delete."
        }
      },
      "required": [
        "FlowArn"
      ]
    },
    "DeleteFlowResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that was deleted."
        },
        "Status": {
          "shape": "Status",
          "locationName": "status",
          "documentation": "The status of the flow when the DeleteFlow process begins."
        }
      }
    },
    "DescribeFlowRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that you want to describe."
        }
      },
      "required": [
        "FlowArn"
      ]
    },
    "DescribeFlowResponse": {
      "type": "structure",
      "members": {
        "Flow": {
          "shape": "Flow",
          "locationName": "flow"
        },
        "Messages": {
          "shape": "Messages",
          "locationName": "messages"
        }
      }
    },
    "Encryption": {
      "type": "structure",
      "members": {
        "Algorithm": {
          "shape": "Algorithm",
          "locationName": "algorithm",
          "documentation": "The type of algorithm that is used for the encryption (such as aes128, aes192, or aes256)."
        },
        "ConstantInitializationVector": {
          "shape": "__string",
          "locationName": "constantInitializationVector",
          "documentation": "A 128-bit, 16-byte hex value represented by a 32-character string, to be used with the key for encrypting content. This parameter is not valid for static key encryption."
        },
        "DeviceId": {
          "shape": "__string",
          "locationName": "deviceId",
          "documentation": "The value of one of the devices that you configured with your digital rights management (DRM) platform key provider. This parameter is required for SPEKE encryption and is not valid for static key encryption."
        },
        "KeyType": {
          "shape": "KeyType",
          "locationName": "keyType",
          "documentation": "The type of key that is used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
        },
        "Region": {
          "shape": "__string",
          "locationName": "region",
          "documentation": "The AWS Region that the API Gateway proxy endpoint was created in. This parameter is required for SPEKE encryption and is not valid for static key encryption."
        },
        "ResourceId": {
          "shape": "__string",
          "locationName": "resourceId",
          "documentation": "An identifier for the content. The service sends this value to the key server to identify the current endpoint. The resource ID is also known as the content ID. This parameter is required for SPEKE encryption and is not valid for static key encryption."
        },
        "RoleArn": {
          "shape": "__string",
          "locationName": "roleArn",
          "documentation": "The ARN of the role that you created during setup (when you set up AWS Elemental MediaConnect as a trusted entity)."
        },
        "SecretArn": {
          "shape": "__string",
          "locationName": "secretArn",
          "documentation": "The ARN of the secret that you created in AWS Secrets Manager to store the encryption key. This parameter is required for static key encryption and is not valid for SPEKE encryption."
        },
        "Url": {
          "shape": "__string",
          "locationName": "url",
          "documentation": "The URL from the API Gateway proxy that you set up to talk to your key server. This parameter is required for SPEKE encryption and is not valid for static key encryption."
        }
      },
      "documentation": "Information about the encryption of the flow.",
      "required": [
        "Algorithm",
        "RoleArn"
      ]
    },
    "Entitlement": {
      "type": "structure",
      "members": {
        "DataTransferSubscriberFeePercent": {
          "shape": "__integer",
          "locationName": "dataTransferSubscriberFeePercent",
          "documentation": "Percentage from 0-100 of the data transfer cost to be billed to the subscriber."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description of the entitlement."
        },
        "Encryption": {
          "shape": "Encryption",
          "locationName": "encryption",
          "documentation": "The type of encryption that will be used on the output that is associated with this entitlement."
        },
        "EntitlementArn": {
          "shape": "__string",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement."
        },
        "EntitlementStatus": {
          "shape": "EntitlementStatus",
          "locationName": "entitlementStatus",
          "documentation": "An indication of whether the entitlement is enabled."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the entitlement."
        },
        "Subscribers": {
          "shape": "__listOf__string",
          "locationName": "subscribers",
          "documentation": "The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source."
        }
      },
      "documentation": "The settings for a flow entitlement.",
      "required": [
        "EntitlementArn",
        "Subscribers",
        "Name"
      ]
    },
    "EntitlementStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "FailoverConfig": {
      "type": "structure",
      "members": {
        "RecoveryWindow": {
          "shape": "__integer",
          "locationName": "recoveryWindow",
          "documentation": "Search window time to look for dash-7 packets"
        },
        "State": {
          "shape": "State",
          "locationName": "state"
        }
      },
      "documentation": "The settings for source failover"
    },
    "Flow": {
      "type": "structure",
      "members": {
        "AvailabilityZone": {
          "shape": "__string",
          "locationName": "availabilityZone",
          "documentation": "The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description of the flow. This value is not used or seen outside of the current AWS Elemental MediaConnect account."
        },
        "EgressIp": {
          "shape": "__string",
          "locationName": "egressIp",
          "documentation": "The IP address from which video will be sent to output destinations."
        },
        "Entitlements": {
          "shape": "__listOfEntitlement",
          "locationName": "entitlements",
          "documentation": "The entitlements in this flow."
        },
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The Amazon Resource Name (ARN), a unique identifier for any AWS resource, of the flow."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the flow."
        },
        "Outputs": {
          "shape": "__listOfOutput",
          "locationName": "outputs",
          "documentation": "The outputs in this flow."
        },
        "Source": {
          "shape": "Source",
          "locationName": "source"
        },
        "SourceFailoverConfig": {
          "shape": "FailoverConfig",
          "locationName": "sourceFailoverConfig"
        },
        "Sources": {
          "shape": "__listOfSource",
          "locationName": "sources"
        },
        "Status": {
          "shape": "Status",
          "locationName": "status",
          "documentation": "The current status of the flow."
        },
        "VpcInterfaces": {
          "shape": "__listOfVpcInterface",
          "locationName": "vpcInterfaces",
          "documentation": "The VPC Interfaces for this flow."
        }
      },
      "documentation": "The settings for a flow, including its source, outputs, and entitlements.",
      "required": [
        "Status",
        "Entitlements",
        "Outputs",
        "AvailabilityZone",
        "FlowArn",
        "Source",
        "Name"
      ]
    },
    "GrantEntitlementRequest": {
      "type": "structure",
      "members": {
        "DataTransferSubscriberFeePercent": {
          "shape": "__integer",
          "locationName": "dataTransferSubscriberFeePercent",
          "documentation": "Percentage from 0-100 of the data transfer cost to be billed to the subscriber."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description of the entitlement. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the subscriber or end user."
        },
        "Encryption": {
          "shape": "Encryption",
          "locationName": "encryption",
          "documentation": "The type of encryption that will be used on the output that is associated with this entitlement."
        },
        "EntitlementStatus": {
          "shape": "EntitlementStatus",
          "locationName": "entitlementStatus",
          "documentation": "An indication of whether the new entitlement should be enabled or disabled as soon as it is created. If you don’t specify the entitlementStatus field in your request, MediaConnect sets it to ENABLED."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the entitlement. This value must be unique within the current flow."
        },
        "Subscribers": {
          "shape": "__listOf__string",
          "locationName": "subscribers",
          "documentation": "The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flows using your content as the source."
        }
      },
      "documentation": "The entitlements that you want to grant on a flow.",
      "required": [
        "Subscribers"
      ]
    },
    "GrantFlowEntitlementsRequest": {
      "type": "structure",
      "members": {
        "Entitlements": {
          "shape": "__listOfGrantEntitlementRequest",
          "locationName": "entitlements",
          "documentation": "The list of entitlements that you want to grant."
        },
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to grant entitlements on."
        }
      },
      "documentation": "A request to grant entitlements on a flow.",
      "required": [
        "FlowArn",
        "Entitlements"
      ]
    },
    "GrantFlowEntitlementsResponse": {
      "type": "structure",
      "members": {
        "Entitlements": {
          "shape": "__listOfEntitlement",
          "locationName": "entitlements",
          "documentation": "The entitlements that were just granted."
        },
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that these entitlements were granted to."
        }
      }
    },
    "KeyType": {
      "type": "string",
      "enum": [
        "speke",
        "static-key"
      ]
    },
    "ListEntitlementsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "The maximum number of results to return per API request. For example, you submit a ListEntitlements request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 20 results per page."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value."
        }
      }
    },
    "ListEntitlementsResponse": {
      "type": "structure",
      "members": {
        "Entitlements": {
          "shape": "__listOfListedEntitlement",
          "locationName": "entitlements",
          "documentation": "A list of entitlements that have been granted to you from other AWS accounts."
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value."
        }
      }
    },
    "ListFlowsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "The maximum number of results to return per API request. For example, you submit a ListFlows request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page."
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "The token that identifies which batch of results that you want to see. For example, you submit a ListFlows request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFlows request a second time and specify the NextToken value."
        }
      }
    },
    "ListFlowsResponse": {
      "type": "structure",
      "members": {
        "Flows": {
          "shape": "__listOfListedFlow",
          "locationName": "flows",
          "documentation": "A list of flow summaries."
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "The token that identifies which batch of results that you want to see. For example, you submit a ListFlows request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFlows request a second time and specify the NextToken value."
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resourceArn",
          "documentation": "The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource for which to list the tags."
        }
      },
      "required": [
        "ResourceArn"
      ]
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters."
        }
      }
    },
    "ListedEntitlement": {
      "type": "structure",
      "members": {
        "DataTransferSubscriberFeePercent": {
          "shape": "__integer",
          "locationName": "dataTransferSubscriberFeePercent",
          "documentation": "Percentage from 0-100 of the data transfer cost to be billed to the subscriber."
        },
        "EntitlementArn": {
          "shape": "__string",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement."
        },
        "EntitlementName": {
          "shape": "__string",
          "locationName": "entitlementName",
          "documentation": "The name of the entitlement."
        }
      },
      "documentation": "An entitlement that has been granted to you from other AWS accounts.",
      "required": [
        "EntitlementArn",
        "EntitlementName"
      ]
    },
    "ListedFlow": {
      "type": "structure",
      "members": {
        "AvailabilityZone": {
          "shape": "__string",
          "locationName": "availabilityZone",
          "documentation": "The Availability Zone that the flow was created in."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description of the flow."
        },
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the flow."
        },
        "SourceType": {
          "shape": "SourceType",
          "locationName": "sourceType",
          "documentation": "The type of source. This value is either owned (originated somewhere other than an AWS Elemental MediaConnect flow owned by another AWS account) or entitled (originated at an AWS Elemental MediaConnect flow owned by another AWS account)."
        },
        "Status": {
          "shape": "Status",
          "locationName": "status",
          "documentation": "The current status of the flow."
        }
      },
      "documentation": "Provides a summary of a flow, including its ARN, Availability Zone, and source type.",
      "required": [
        "Status",
        "Description",
        "SourceType",
        "AvailabilityZone",
        "FlowArn",
        "Name"
      ]
    },
    "MaxResults": {
      "type": "integer",
      "min": 1,
      "max": 1000
    },
    "Messages": {
      "type": "structure",
      "members": {
        "Errors": {
          "shape": "__listOf__string",
          "locationName": "errors",
          "documentation": "A list of errors that might have been generated from processes on this flow."
        }
      },
      "documentation": "Messages that provide the state of the flow.",
      "required": [
        "Errors"
      ]
    },
    "Output": {
      "type": "structure",
      "members": {
        "DataTransferSubscriberFeePercent": {
          "shape": "__integer",
          "locationName": "dataTransferSubscriberFeePercent",
          "documentation": "Percentage from 0-100 of the data transfer cost to be billed to the subscriber."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description of the output."
        },
        "Destination": {
          "shape": "__string",
          "locationName": "destination",
          "documentation": "The address where you want to send the output."
        },
        "Encryption": {
          "shape": "Encryption",
          "locationName": "encryption",
          "documentation": "The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
        },
        "EntitlementArn": {
          "shape": "__string",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement on the originator''s flow. This value is relevant only on entitled flows."
        },
        "MediaLiveInputArn": {
          "shape": "__string",
          "locationName": "mediaLiveInputArn",
          "documentation": "The input ARN of the AWS Elemental MediaLive channel. This parameter is relevant only for outputs that were added by creating a MediaLive input."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the output. This value must be unique within the current flow."
        },
        "OutputArn": {
          "shape": "__string",
          "locationName": "outputArn",
          "documentation": "The ARN of the output."
        },
        "Port": {
          "shape": "__integer",
          "locationName": "port",
          "documentation": "The port to use when content is distributed to this output."
        },
        "Transport": {
          "shape": "Transport",
          "locationName": "transport",
          "documentation": "Attributes related to the transport stream that are used in the output."
        },
        "VpcInterfaceAttachment": {
          "shape": "VpcInterfaceAttachment",
          "locationName": "vpcInterfaceAttachment",
          "documentation": "The name of the VPC interface attachment to use for this output."
        }
      },
      "documentation": "The settings for an output.",
      "required": [
        "OutputArn",
        "Name"
      ]
    },
    "Protocol": {
      "type": "string",
      "enum": [
        "zixi-push",
        "rtp-fec",
        "rtp",
        "zixi-pull",
        "rist"
      ]
    },
    "RemoveFlowOutputRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to remove an output from."
        },
        "OutputArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "outputArn",
          "documentation": "The ARN of the output that you want to remove."
        }
      },
      "required": [
        "FlowArn",
        "OutputArn"
      ]
    },
    "RemoveFlowOutputResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that is associated with the output you removed."
        },
        "OutputArn": {
          "shape": "__string",
          "locationName": "outputArn",
          "documentation": "The ARN of the output that was removed."
        }
      }
    },
    "RemoveFlowSourceRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to remove a source from."
        },
        "SourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "sourceArn",
          "documentation": "The ARN of the source that you want to remove."
        }
      },
      "required": [
        "FlowArn",
        "SourceArn"
      ]
    },
    "RemoveFlowSourceResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that is associated with the source you removed."
        },
        "SourceArn": {
          "shape": "__string",
          "locationName": "sourceArn",
          "documentation": "The ARN of the source that was removed."
        }
      }
    },
    "RemoveFlowVpcInterfaceRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to remove a VPC interface from."
        },
        "VpcInterfaceName": {
          "shape": "__string",
          "location": "uri",
          "locationName": "vpcInterfaceName",
          "documentation": "The name of the VPC interface that you want to remove."
        }
      },
      "required": [
        "FlowArn",
        "VpcInterfaceName"
      ]
    },
    "RemoveFlowVpcInterfaceResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that is associated with the VPC interface you removed."
        },
        "NonDeletedNetworkInterfaceIds": {
          "shape": "__listOf__string",
          "locationName": "nonDeletedNetworkInterfaceIds",
          "documentation": "IDs of network interfaces associated with the removed VPC interface that Media Connect was unable to remove."
        },
        "VpcInterfaceName": {
          "shape": "__string",
          "locationName": "vpcInterfaceName",
          "documentation": "The name of the VPC interface that was removed."
        }
      }
    },
    "RevokeFlowEntitlementRequest": {
      "type": "structure",
      "members": {
        "EntitlementArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement that you want to revoke."
        },
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to revoke an entitlement from."
        }
      },
      "required": [
        "FlowArn",
        "EntitlementArn"
      ]
    },
    "RevokeFlowEntitlementResponse": {
      "type": "structure",
      "members": {
        "EntitlementArn": {
          "shape": "__string",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement that was revoked."
        },
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that the entitlement was revoked from."
        }
      }
    },
    "SetSourceRequest": {
      "type": "structure",
      "members": {
        "Decryption": {
          "shape": "Encryption",
          "locationName": "decryption",
          "documentation": "The type of encryption that is used on the content ingested from this source."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account."
        },
        "EntitlementArn": {
          "shape": "__string",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement that allows you to subscribe to this flow. The entitlement is set by the flow originator, and the ARN is generated as part of the originator's flow."
        },
        "IngestPort": {
          "shape": "__integer",
          "locationName": "ingestPort",
          "documentation": "The port that the flow will be listening on for incoming content."
        },
        "MaxBitrate": {
          "shape": "__integer",
          "locationName": "maxBitrate",
          "documentation": "The smoothing max bitrate for RIST, RTP, and RTP-FEC streams."
        },
        "MaxLatency": {
          "shape": "__integer",
          "locationName": "maxLatency",
          "documentation": "The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the source."
        },
        "Protocol": {
          "shape": "Protocol",
          "locationName": "protocol",
          "documentation": "The protocol that is used by the source."
        },
        "StreamId": {
          "shape": "__string",
          "locationName": "streamId",
          "documentation": "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
        },
        "VpcInterfaceName": {
          "shape": "__string",
          "locationName": "vpcInterfaceName",
          "documentation": "The name of the VPC interface to use for this source."
        },
        "WhitelistCidr": {
          "shape": "__string",
          "locationName": "whitelistCidr",
          "documentation": "The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
        }
      },
      "documentation": "The settings for the source of the flow."
    },
    "Source": {
      "type": "structure",
      "members": {
        "DataTransferSubscriberFeePercent": {
          "shape": "__integer",
          "locationName": "dataTransferSubscriberFeePercent",
          "documentation": "Percentage from 0-100 of the data transfer cost to be billed to the subscriber."
        },
        "Decryption": {
          "shape": "Encryption",
          "locationName": "decryption",
          "documentation": "The type of encryption that is used on the content ingested from this source."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account."
        },
        "EntitlementArn": {
          "shape": "__string",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement that allows you to subscribe to content that comes from another AWS account. The entitlement is set by the content originator and the ARN is generated as part of the originator's flow."
        },
        "IngestIp": {
          "shape": "__string",
          "locationName": "ingestIp",
          "documentation": "The IP address that the flow will be listening on for incoming content."
        },
        "IngestPort": {
          "shape": "__integer",
          "locationName": "ingestPort",
          "documentation": "The port that the flow will be listening on for incoming content."
        },
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the source."
        },
        "SourceArn": {
          "shape": "__string",
          "locationName": "sourceArn",
          "documentation": "The ARN of the source."
        },
        "Transport": {
          "shape": "Transport",
          "locationName": "transport",
          "documentation": "Attributes related to the transport stream that are used in the source."
        },
        "VpcInterfaceName": {
          "shape": "__string",
          "locationName": "vpcInterfaceName",
          "documentation": "The name of the VPC Interface this Source is configured with."
        },
        "WhitelistCidr": {
          "shape": "__string",
          "locationName": "whitelistCidr",
          "documentation": "The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
        }
      },
      "documentation": "The settings for the source of the flow.",
      "required": [
        "SourceArn",
        "Name"
      ]
    },
    "SourceType": {
      "type": "string",
      "enum": [
        "OWNED",
        "ENTITLED"
      ]
    },
    "StartFlowRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that you want to start."
        }
      },
      "required": [
        "FlowArn"
      ]
    },
    "StartFlowResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that you started."
        },
        "Status": {
          "shape": "Status",
          "locationName": "status",
          "documentation": "The status of the flow when the StartFlow process begins."
        }
      }
    },
    "State": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Status": {
      "type": "string",
      "enum": [
        "STANDBY",
        "ACTIVE",
        "UPDATING",
        "DELETING",
        "STARTING",
        "STOPPING",
        "ERROR"
      ]
    },
    "StopFlowRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that you want to stop."
        }
      },
      "required": [
        "FlowArn"
      ]
    },
    "StopFlowResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that you stopped."
        },
        "Status": {
          "shape": "Status",
          "locationName": "status",
          "documentation": "The status of the flow when the StopFlow process begins."
        }
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resourceArn",
          "documentation": "The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource to which to add tags."
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters."
        }
      },
      "documentation": "The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.",
      "required": [
        "ResourceArn",
        "Tags"
      ]
    },
    "Transport": {
      "type": "structure",
      "members": {
        "CidrAllowList": {
          "shape": "__listOf__string",
          "locationName": "cidrAllowList",
          "documentation": "The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
        },
        "MaxBitrate": {
          "shape": "__integer",
          "locationName": "maxBitrate",
          "documentation": "The smoothing max bitrate for RIST, RTP, and RTP-FEC streams."
        },
        "MaxLatency": {
          "shape": "__integer",
          "locationName": "maxLatency",
          "documentation": "The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams."
        },
        "Protocol": {
          "shape": "Protocol",
          "locationName": "protocol",
          "documentation": "The protocol that is used by the source or output."
        },
        "RemoteId": {
          "shape": "__string",
          "locationName": "remoteId",
          "documentation": "The remote ID for the Zixi-pull stream."
        },
        "SmoothingLatency": {
          "shape": "__integer",
          "locationName": "smoothingLatency",
          "documentation": "The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams."
        },
        "StreamId": {
          "shape": "__string",
          "locationName": "streamId",
          "documentation": "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
        }
      },
      "documentation": "Attributes related to the transport stream that are used in a source or output.",
      "required": [
        "Protocol"
      ]
    },
    "UntagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resourceArn",
          "documentation": "The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource from which to delete tags."
        },
        "TagKeys": {
          "shape": "__listOf__string",
          "location": "querystring",
          "locationName": "tagKeys",
          "documentation": "The keys of the tags to be removed."
        }
      },
      "required": [
        "TagKeys",
        "ResourceArn"
      ]
    },
    "UpdateEncryption": {
      "type": "structure",
      "members": {
        "Algorithm": {
          "shape": "Algorithm",
          "locationName": "algorithm",
          "documentation": "The type of algorithm that is used for the encryption (such as aes128, aes192, or aes256)."
        },
        "ConstantInitializationVector": {
          "shape": "__string",
          "locationName": "constantInitializationVector",
          "documentation": "A 128-bit, 16-byte hex value represented by a 32-character string, to be used with the key for encrypting content. This parameter is not valid for static key encryption."
        },
        "DeviceId": {
          "shape": "__string",
          "locationName": "deviceId",
          "documentation": "The value of one of the devices that you configured with your digital rights management (DRM) platform key provider. This parameter is required for SPEKE encryption and is not valid for static key encryption."
        },
        "KeyType": {
          "shape": "KeyType",
          "locationName": "keyType",
          "documentation": "The type of key that is used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
        },
        "Region": {
          "shape": "__string",
          "locationName": "region",
          "documentation": "The AWS Region that the API Gateway proxy endpoint was created in. This parameter is required for SPEKE encryption and is not valid for static key encryption."
        },
        "ResourceId": {
          "shape": "__string",
          "locationName": "resourceId",
          "documentation": "An identifier for the content. The service sends this value to the key server to identify the current endpoint. The resource ID is also known as the content ID. This parameter is required for SPEKE encryption and is not valid for static key encryption."
        },
        "RoleArn": {
          "shape": "__string",
          "locationName": "roleArn",
          "documentation": "The ARN of the role that you created during setup (when you set up AWS Elemental MediaConnect as a trusted entity)."
        },
        "SecretArn": {
          "shape": "__string",
          "locationName": "secretArn",
          "documentation": "The ARN of the secret that you created in AWS Secrets Manager to store the encryption key. This parameter is required for static key encryption and is not valid for SPEKE encryption."
        },
        "Url": {
          "shape": "__string",
          "locationName": "url",
          "documentation": "The URL from the API Gateway proxy that you set up to talk to your key server. This parameter is required for SPEKE encryption and is not valid for static key encryption."
        }
      },
      "documentation": "Information about the encryption of the flow."
    },
    "UpdateFailoverConfig": {
      "type": "structure",
      "members": {
        "RecoveryWindow": {
          "shape": "__integer",
          "locationName": "recoveryWindow",
          "documentation": "Recovery window time to look for dash-7 packets"
        },
        "State": {
          "shape": "State",
          "locationName": "state"
        }
      },
      "documentation": "The settings for source failover"
    },
    "UpdateFlowEntitlementRequest": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description of the entitlement. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the subscriber or end user."
        },
        "Encryption": {
          "shape": "UpdateEncryption",
          "locationName": "encryption",
          "documentation": "The type of encryption that will be used on the output associated with this entitlement."
        },
        "EntitlementArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement that you want to update."
        },
        "EntitlementStatus": {
          "shape": "EntitlementStatus",
          "locationName": "entitlementStatus",
          "documentation": "An indication of whether you want to enable the entitlement to allow access, or disable it to stop streaming content to the subscriber’s flow temporarily. If you don’t specify the entitlementStatus field in your request, MediaConnect leaves the value unchanged."
        },
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that is associated with the entitlement that you want to update."
        },
        "Subscribers": {
          "shape": "__listOf__string",
          "locationName": "subscribers",
          "documentation": "The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source."
        }
      },
      "documentation": "The entitlement fields that you want to update.",
      "required": [
        "FlowArn",
        "EntitlementArn"
      ]
    },
    "UpdateFlowEntitlementResponse": {
      "type": "structure",
      "members": {
        "Entitlement": {
          "shape": "Entitlement",
          "locationName": "entitlement"
        },
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that this entitlement was granted on."
        }
      }
    },
    "UpdateFlowOutputRequest": {
      "type": "structure",
      "members": {
        "CidrAllowList": {
          "shape": "__listOf__string",
          "locationName": "cidrAllowList",
          "documentation": "The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description of the output. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the end user."
        },
        "Destination": {
          "shape": "__string",
          "locationName": "destination",
          "documentation": "The IP address where you want to send the output."
        },
        "Encryption": {
          "shape": "UpdateEncryption",
          "locationName": "encryption",
          "documentation": "The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
        },
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that is associated with the output that you want to update."
        },
        "MaxLatency": {
          "shape": "__integer",
          "locationName": "maxLatency",
          "documentation": "The maximum latency in milliseconds for Zixi-based streams."
        },
        "OutputArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "outputArn",
          "documentation": "The ARN of the output that you want to update."
        },
        "Port": {
          "shape": "__integer",
          "locationName": "port",
          "documentation": "The port to use when content is distributed to this output."
        },
        "Protocol": {
          "shape": "Protocol",
          "locationName": "protocol",
          "documentation": "The protocol to use for the output."
        },
        "RemoteId": {
          "shape": "__string",
          "locationName": "remoteId",
          "documentation": "The remote ID for the Zixi-pull stream."
        },
        "SmoothingLatency": {
          "shape": "__integer",
          "locationName": "smoothingLatency",
          "documentation": "The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams."
        },
        "StreamId": {
          "shape": "__string",
          "locationName": "streamId",
          "documentation": "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
        },
        "VpcInterfaceAttachment": {
          "shape": "VpcInterfaceAttachment",
          "locationName": "vpcInterfaceAttachment",
          "documentation": "The name of the VPC interface attachment to use for this output."
        }
      },
      "documentation": "The fields that you want to update in the output.",
      "required": [
        "FlowArn",
        "OutputArn"
      ]
    },
    "UpdateFlowOutputResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that is associated with the updated output."
        },
        "Output": {
          "shape": "Output",
          "locationName": "output"
        }
      }
    },
    "UpdateFlowRequest": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that you want to update."
        },
        "SourceFailoverConfig": {
          "shape": "UpdateFailoverConfig",
          "locationName": "sourceFailoverConfig"
        }
      },
      "documentation": "A request to update flow.",
      "required": [
        "FlowArn"
      ]
    },
    "UpdateFlowResponse": {
      "type": "structure",
      "members": {
        "Flow": {
          "shape": "Flow",
          "locationName": "flow"
        }
      }
    },
    "UpdateFlowSourceRequest": {
      "type": "structure",
      "members": {
        "Decryption": {
          "shape": "UpdateEncryption",
          "locationName": "decryption",
          "documentation": "The type of encryption used on the content ingested from this source."
        },
        "Description": {
          "shape": "__string",
          "locationName": "description",
          "documentation": "A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account."
        },
        "EntitlementArn": {
          "shape": "__string",
          "locationName": "entitlementArn",
          "documentation": "The ARN of the entitlement that allows you to subscribe to this flow. The entitlement is set by the flow originator, and the ARN is generated as part of the originator's flow."
        },
        "FlowArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "flowArn",
          "documentation": "The flow that is associated with the source that you want to update."
        },
        "IngestPort": {
          "shape": "__integer",
          "locationName": "ingestPort",
          "documentation": "The port that the flow will be listening on for incoming content."
        },
        "MaxBitrate": {
          "shape": "__integer",
          "locationName": "maxBitrate",
          "documentation": "The smoothing max bitrate for RIST, RTP, and RTP-FEC streams."
        },
        "MaxLatency": {
          "shape": "__integer",
          "locationName": "maxLatency",
          "documentation": "The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams."
        },
        "Protocol": {
          "shape": "Protocol",
          "locationName": "protocol",
          "documentation": "The protocol that is used by the source."
        },
        "SourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "sourceArn",
          "documentation": "The ARN of the source that you want to update."
        },
        "StreamId": {
          "shape": "__string",
          "locationName": "streamId",
          "documentation": "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
        },
        "VpcInterfaceName": {
          "shape": "__string",
          "locationName": "vpcInterfaceName",
          "documentation": "The name of the VPC Interface to configure this Source with."
        },
        "WhitelistCidr": {
          "shape": "__string",
          "locationName": "whitelistCidr",
          "documentation": "The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
        }
      },
      "documentation": "A request to update the source of a flow.",
      "required": [
        "FlowArn",
        "SourceArn"
      ]
    },
    "UpdateFlowSourceResponse": {
      "type": "structure",
      "members": {
        "FlowArn": {
          "shape": "__string",
          "locationName": "flowArn",
          "documentation": "The ARN of the flow that you want to update."
        },
        "Source": {
          "shape": "Source",
          "locationName": "source",
          "documentation": "The settings for the source of the flow."
        }
      }
    },
    "VpcInterface": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "Immutable and has to be a unique against other VpcInterfaces in this Flow"
        },
        "NetworkInterfaceIds": {
          "shape": "__listOf__string",
          "locationName": "networkInterfaceIds",
          "documentation": "IDs of the network interfaces created in customer's account by MediaConnect."
        },
        "RoleArn": {
          "shape": "__string",
          "locationName": "roleArn",
          "documentation": "Role Arn MediaConnect can assumes to create ENIs in customer's account"
        },
        "SecurityGroupIds": {
          "shape": "__listOf__string",
          "locationName": "securityGroupIds",
          "documentation": "Security Group IDs to be used on ENI."
        },
        "SubnetId": {
          "shape": "__string",
          "locationName": "subnetId",
          "documentation": "Subnet must be in the AZ of the Flow"
        }
      },
      "documentation": "The settings for a VPC Source.",
      "required": [
        "NetworkInterfaceIds",
        "SubnetId",
        "SecurityGroupIds",
        "RoleArn",
        "Name"
      ]
    },
    "VpcInterfaceAttachment": {
      "type": "structure",
      "members": {
        "VpcInterfaceName": {
          "shape": "__string",
          "locationName": "vpcInterfaceName",
          "documentation": "The name of the VPC interface to use for this output."
        }
      },
      "documentation": "The settings for attaching a VPC interface to an output."
    },
    "VpcInterfaceRequest": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "__string",
          "locationName": "name",
          "documentation": "The name of the VPC Interface. This value must be unique within the current flow."
        },
        "RoleArn": {
          "shape": "__string",
          "locationName": "roleArn",
          "documentation": "Role Arn MediaConnect can assumes to create ENIs in customer's account"
        },
        "SecurityGroupIds": {
          "shape": "__listOf__string",
          "locationName": "securityGroupIds",
          "documentation": "Security Group IDs to be used on ENI."
        },
        "SubnetId": {
          "shape": "__string",
          "locationName": "subnetId",
          "documentation": "Subnet must be in the AZ of the Flow"
        }
      },
      "documentation": "Desired VPC Interface for a Flow",
      "required": [
        "SubnetId",
        "SecurityGroupIds",
        "RoleArn",
        "Name"
      ]
    },
    "__integer": {
      "type": "integer"
    },
    "__listOfAddOutputRequest": {
      "type": "list",
      "member": {
        "shape": "AddOutputRequest"
      }
    },
    "__listOfEntitlement": {
      "type": "list",
      "member": {
        "shape": "Entitlement"
      }
    },
    "__listOfGrantEntitlementRequest": {
      "type": "list",
      "member": {
        "shape": "GrantEntitlementRequest"
      }
    },
    "__listOfListedEntitlement": {
      "type": "list",
      "member": {
        "shape": "ListedEntitlement"
      }
    },
    "__listOfListedFlow": {
      "type": "list",
      "member": {
        "shape": "ListedFlow"
      }
    },
    "__listOfOutput": {
      "type": "list",
      "member": {
        "shape": "Output"
      }
    },
    "__listOfSetSourceRequest": {
      "type": "list",
      "member": {
        "shape": "SetSourceRequest"
      }
    },
    "__listOfSource": {
      "type": "list",
      "member": {
        "shape": "Source"
      }
    },
    "__listOfVpcInterface": {
      "type": "list",
      "member": {
        "shape": "VpcInterface"
      }
    },
    "__listOfVpcInterfaceRequest": {
      "type": "list",
      "member": {
        "shape": "VpcInterfaceRequest"
      }
    },
    "__listOf__string": {
      "type": "list",
      "member": {
        "shape": "__string"
      }
    },
    "__mapOf__string": {
      "type": "map",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "__string"
      }
    },
    "__string": {
      "type": "string"
    }
  },
  "documentation": "API for AWS Elemental MediaConnect"
}
]===]))
