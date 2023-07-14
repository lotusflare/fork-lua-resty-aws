local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-04-01",
    "endpointPrefix": "route53resolver",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Route53Resolver",
    "serviceFullName": "Amazon Route 53 Resolver",
    "serviceId": "Route53Resolver",
    "signatureVersion": "v4",
    "targetPrefix": "Route53Resolver",
    "uid": "route53resolver-2018-04-01"
  },
  "operations": {
    "AssociateResolverEndpointIpAddress": {
      "name": "AssociateResolverEndpointIpAddress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateResolverEndpointIpAddressRequest"
      },
      "output": {
        "shape": "AssociateResolverEndpointIpAddressResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Adds IP addresses to an inbound or an outbound Resolver endpoint. If you want to add more than one IP address, submit one <code>AssociateResolverEndpointIpAddress</code> request for each IP address.</p> <p>To remove an IP address from an endpoint, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverEndpointIpAddress.html\">DisassociateResolverEndpointIpAddress</a>. </p>"
    },
    "AssociateResolverQueryLogConfig": {
      "name": "AssociateResolverQueryLogConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateResolverQueryLogConfigRequest"
      },
      "output": {
        "shape": "AssociateResolverQueryLogConfigResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Associates an Amazon VPC with a specified query logging configuration. Route 53 Resolver logs DNS queries that originate in all of the Amazon VPCs that are associated with a specified query logging configuration. To associate more than one VPC with a configuration, submit one <code>AssociateResolverQueryLogConfig</code> request for each VPC.</p> <note> <p>The VPCs that you associate with a query logging configuration must be in the same Region as the configuration.</p> </note> <p>To remove a VPC from a query logging configuration, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html\">DisassociateResolverQueryLogConfig</a>. </p>"
    },
    "AssociateResolverRule": {
      "name": "AssociateResolverRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateResolverRuleRequest"
      },
      "output": {
        "shape": "AssociateResolverRuleResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Associates a Resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html\">CreateResolverRule</a>. </p>"
    },
    "CreateResolverEndpoint": {
      "name": "CreateResolverEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateResolverEndpointRequest"
      },
      "output": {
        "shape": "CreateResolverEndpointResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Creates a Resolver endpoint. There are two types of Resolver endpoints, inbound and outbound:</p> <ul> <li> <p>An <i>inbound Resolver endpoint</i> forwards DNS queries to the DNS service for a VPC from your network.</p> </li> <li> <p>An <i>outbound Resolver endpoint</i> forwards DNS queries from the DNS service for a VPC to your network.</p> </li> </ul>"
    },
    "CreateResolverQueryLogConfig": {
      "name": "CreateResolverQueryLogConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateResolverQueryLogConfigRequest"
      },
      "output": {
        "shape": "CreateResolverQueryLogConfigResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a Resolver query logging configuration, which defines where you want Resolver to save DNS query logs that originate in your VPCs. Resolver can log queries only for VPCs that are in the same Region as the query logging configuration.</p> <p>To specify which VPCs you want to log queries for, you use <code>AssociateResolverQueryLogConfig</code>. For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html\">AssociateResolverQueryLogConfig</a>. </p> <p>You can optionally use AWS Resource Access Manager (AWS RAM) to share a query logging configuration with other AWS accounts. The other accounts can then associate VPCs with the configuration. The query logs that Resolver creates for a configuration include all DNS queries that originate in all VPCs that are associated with the configuration.</p>"
    },
    "CreateResolverRule": {
      "name": "CreateResolverRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateResolverRuleRequest"
      },
      "output": {
        "shape": "CreateResolverRuleResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>For DNS queries that originate in your VPCs, specifies which Resolver endpoint the queries pass through, one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.</p>"
    },
    "DeleteResolverEndpoint": {
      "name": "DeleteResolverEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResolverEndpointRequest"
      },
      "output": {
        "shape": "DeleteResolverEndpointResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint depends on whether it's an inbound or an outbound Resolver endpoint:</p> <ul> <li> <p> <b>Inbound</b>: DNS queries from your network are no longer routed to the DNS service for the specified VPC.</p> </li> <li> <p> <b>Outbound</b>: DNS queries from a VPC are no longer routed to your network.</p> </li> </ul>"
    },
    "DeleteResolverQueryLogConfig": {
      "name": "DeleteResolverQueryLogConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResolverQueryLogConfigRequest"
      },
      "output": {
        "shape": "DeleteResolverQueryLogConfigResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes a query logging configuration. When you delete a configuration, Resolver stops logging DNS queries for all of the Amazon VPCs that are associated with the configuration. This also applies if the query logging configuration is shared with other AWS accounts, and the other accounts have associated VPCs with the shared configuration.</p> <p>Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. See <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html\">DisassociateResolverQueryLogConfig</a>.</p> <p>If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, you must stop sharing the configuration before you can delete a configuration. The accounts that you shared the configuration with can first disassociate VPCs that they associated with the configuration, but that's not necessary. If you stop sharing the configuration, those VPCs are automatically disassociated from the configuration.</p>"
    },
    "DeleteResolverRule": {
      "name": "DeleteResolverRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResolverRuleRequest"
      },
      "output": {
        "shape": "DeleteResolverRuleResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes a Resolver rule. Before you can delete a Resolver rule, you must disassociate it from all the VPCs that you associated the Resolver rule with. For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html\">DisassociateResolverRule</a>.</p>"
    },
    "DisassociateResolverEndpointIpAddress": {
      "name": "DisassociateResolverEndpointIpAddress",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateResolverEndpointIpAddressRequest"
      },
      "output": {
        "shape": "DisassociateResolverEndpointIpAddressResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Removes IP addresses from an inbound or an outbound Resolver endpoint. If you want to remove more than one IP address, submit one <code>DisassociateResolverEndpointIpAddress</code> request for each IP address.</p> <p>To add an IP address to an endpoint, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverEndpointIpAddress.html\">AssociateResolverEndpointIpAddress</a>. </p>"
    },
    "DisassociateResolverQueryLogConfig": {
      "name": "DisassociateResolverQueryLogConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateResolverQueryLogConfigRequest"
      },
      "output": {
        "shape": "DisassociateResolverQueryLogConfigResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Disassociates a VPC from a query logging configuration.</p> <note> <p>Before you can delete a query logging configuration, you must first disassociate all VPCs from the configuration. If you used Resource Access Manager (RAM) to share a query logging configuration with other accounts, VPCs can be disassociated from the configuration in the following ways:</p> <ul> <li> <p>The accounts that you shared the configuration with can disassociate VPCs from the configuration.</p> </li> <li> <p>You can stop sharing the configuration.</p> </li> </ul> </note>"
    },
    "DisassociateResolverRule": {
      "name": "DisassociateResolverRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateResolverRuleRequest"
      },
      "output": {
        "shape": "DisassociateResolverRuleResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Removes the association between a specified Resolver rule and a specified VPC.</p> <important> <p>If you disassociate a Resolver rule from a VPC, Resolver stops forwarding DNS queries for the domain name that you specified in the Resolver rule. </p> </important>"
    },
    "GetResolverEndpoint": {
      "name": "GetResolverEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResolverEndpointRequest"
      },
      "output": {
        "shape": "GetResolverEndpointResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Gets information about a specified Resolver endpoint, such as whether it's an inbound or an outbound Resolver endpoint, and the current status of the endpoint.</p>"
    },
    "GetResolverQueryLogConfig": {
      "name": "GetResolverQueryLogConfig",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResolverQueryLogConfigRequest"
      },
      "output": {
        "shape": "GetResolverQueryLogConfigResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets information about a specified Resolver query logging configuration, such as the number of VPCs that the configuration is logging queries for and the location that logs are sent to. </p>"
    },
    "GetResolverQueryLogConfigAssociation": {
      "name": "GetResolverQueryLogConfigAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResolverQueryLogConfigAssociationRequest"
      },
      "output": {
        "shape": "GetResolverQueryLogConfigAssociationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets information about a specified association between a Resolver query logging configuration and an Amazon VPC. When you associate a VPC with a query logging configuration, Resolver logs DNS queries that originate in that VPC.</p>"
    },
    "GetResolverQueryLogConfigPolicy": {
      "name": "GetResolverQueryLogConfigPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResolverQueryLogConfigPolicyRequest"
      },
      "output": {
        "shape": "GetResolverQueryLogConfigPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnknownResourceException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets information about a query logging policy. A query logging policy specifies the Resolver query logging operations and resources that you want to allow another AWS account to be able to use.</p>"
    },
    "GetResolverRule": {
      "name": "GetResolverRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResolverRuleRequest"
      },
      "output": {
        "shape": "GetResolverRuleResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Gets information about a specified Resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the outbound Resolver endpoint that the rule is associated with.</p>"
    },
    "GetResolverRuleAssociation": {
      "name": "GetResolverRuleAssociation",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResolverRuleAssociationRequest"
      },
      "output": {
        "shape": "GetResolverRuleAssociationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Gets information about an association between a specified Resolver rule and a VPC. You associate a Resolver rule and a VPC using <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html\">AssociateResolverRule</a>. </p>"
    },
    "GetResolverRulePolicy": {
      "name": "GetResolverRulePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResolverRulePolicyRequest"
      },
      "output": {
        "shape": "GetResolverRulePolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnknownResourceException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Gets information about a Resolver rule policy. A Resolver rule policy specifies the Resolver operations and resources that you want to allow another AWS account to be able to use. </p>"
    },
    "ListResolverEndpointIpAddresses": {
      "name": "ListResolverEndpointIpAddresses",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResolverEndpointIpAddressesRequest"
      },
      "output": {
        "shape": "ListResolverEndpointIpAddressesResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Gets the IP addresses for a specified Resolver endpoint.</p>"
    },
    "ListResolverEndpoints": {
      "name": "ListResolverEndpoints",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResolverEndpointsRequest"
      },
      "output": {
        "shape": "ListResolverEndpointsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Lists all the Resolver endpoints that were created using the current AWS account.</p>"
    },
    "ListResolverQueryLogConfigAssociations": {
      "name": "ListResolverQueryLogConfigAssociations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResolverQueryLogConfigAssociationsRequest"
      },
      "output": {
        "shape": "ListResolverQueryLogConfigAssociationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists information about associations between Amazon VPCs and query logging configurations.</p>"
    },
    "ListResolverQueryLogConfigs": {
      "name": "ListResolverQueryLogConfigs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResolverQueryLogConfigsRequest"
      },
      "output": {
        "shape": "ListResolverQueryLogConfigsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists information about the specified query logging configurations. Each configuration defines where you want Resolver to save DNS query logs and specifies the VPCs that you want to log queries for.</p>"
    },
    "ListResolverRuleAssociations": {
      "name": "ListResolverRuleAssociations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResolverRuleAssociationsRequest"
      },
      "output": {
        "shape": "ListResolverRuleAssociationsResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Lists the associations that were created between Resolver rules and VPCs using the current AWS account.</p>"
    },
    "ListResolverRules": {
      "name": "ListResolverRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResolverRulesRequest"
      },
      "output": {
        "shape": "ListResolverRulesResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Lists the Resolver rules that were created using the current AWS account.</p>"
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
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Lists the tags that you associated with the specified resource.</p>"
    },
    "PutResolverQueryLogConfigPolicy": {
      "name": "PutResolverQueryLogConfigPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutResolverQueryLogConfigPolicyRequest"
      },
      "output": {
        "shape": "PutResolverQueryLogConfigPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidPolicyDocument"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "UnknownResourceException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Specifies an AWS account that you want to share a query logging configuration with, the query logging configuration that you want to share, and the operations that you want the account to be able to perform on the configuration.</p>"
    },
    "PutResolverRulePolicy": {
      "name": "PutResolverRulePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutResolverRulePolicyRequest"
      },
      "output": {
        "shape": "PutResolverRulePolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidPolicyDocument"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnknownResourceException"
        },
        {
          "shape": "InternalServiceErrorException"
        }
      ],
      "documentation": "<p>Specifies an AWS account that you want to share rules with, the Resolver rules that you want to share, and the operations that you want the account to be able to perform on those rules.</p>"
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
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidTagException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Adds one or more tags to a specified resource.</p>"
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
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Removes one or more tags from a specified resource.</p>"
    },
    "UpdateResolverEndpoint": {
      "name": "UpdateResolverEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateResolverEndpointRequest"
      },
      "output": {
        "shape": "UpdateResolverEndpointResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates the name of an inbound or an outbound Resolver endpoint. </p>"
    },
    "UpdateResolverRule": {
      "name": "UpdateResolverRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateResolverRuleRequest"
      },
      "output": {
        "shape": "UpdateResolverRuleResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalServiceErrorException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates settings for a specified Resolver rule. <code>ResolverRuleId</code> is required, and all other parameters are optional. If you don't specify a parameter, it retains its current value.</p>"
    }
  },
  "shapes": {
    "AccountId": {
      "type": "string",
      "max": 32,
      "min": 12
    },
    "Arn": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "AssociateResolverEndpointIpAddressRequest": {
      "type": "structure",
      "required": [
        "ResolverEndpointId",
        "IpAddress"
      ],
      "members": {
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver endpoint that you want to associate IP addresses with.</p>"
        },
        "IpAddress": {
          "shape": "IpAddressUpdate",
          "documentation": "<p>Either the IPv4 address that you want to add to a Resolver endpoint or a subnet ID. If you specify a subnet ID, Resolver chooses an IP address for you from the available IPs in the specified subnet.</p>"
        }
      }
    },
    "AssociateResolverEndpointIpAddressResponse": {
      "type": "structure",
      "members": {
        "ResolverEndpoint": {
          "shape": "ResolverEndpoint",
          "documentation": "<p>The response to an <code>AssociateResolverEndpointIpAddress</code> request.</p>"
        }
      }
    },
    "AssociateResolverQueryLogConfigRequest": {
      "type": "structure",
      "required": [
        "ResolverQueryLogConfigId",
        "ResourceId"
      ],
      "members": {
        "ResolverQueryLogConfigId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the query logging configuration that you want to associate a VPC with.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of an Amazon VPC that you want this query logging configuration to log queries for.</p> <note> <p>The VPCs and the query logging configuration must be in the same Region.</p> </note>"
        }
      }
    },
    "AssociateResolverQueryLogConfigResponse": {
      "type": "structure",
      "members": {
        "ResolverQueryLogConfigAssociation": {
          "shape": "ResolverQueryLogConfigAssociation",
          "documentation": "<p>A complex type that contains settings for a specified association between an Amazon VPC and a query logging configuration.</p>"
        }
      }
    },
    "AssociateResolverRuleRequest": {
      "type": "structure",
      "required": [
        "ResolverRuleId",
        "VPCId"
      ],
      "members": {
        "ResolverRuleId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver rule that you want to associate with the VPC. To list the existing Resolver rules, use <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>A name for the association that you're creating between a Resolver rule and a VPC.</p>"
        },
        "VPCId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the VPC that you want to associate the Resolver rule with.</p>"
        }
      }
    },
    "AssociateResolverRuleResponse": {
      "type": "structure",
      "members": {
        "ResolverRuleAssociation": {
          "shape": "ResolverRuleAssociation",
          "documentation": "<p>Information about the <code>AssociateResolverRule</code> request, including the status of the request.</p>"
        }
      }
    },
    "Boolean": {
      "type": "boolean"
    },
    "Count": {
      "type": "integer"
    },
    "CreateResolverEndpointRequest": {
      "type": "structure",
      "required": [
        "CreatorRequestId",
        "SecurityGroupIds",
        "Direction",
        "IpAddresses"
      ],
      "members": {
        "CreatorRequestId": {
          "shape": "CreatorRequestId",
          "documentation": "<p>A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp. </p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>A friendly name that lets you easily find a configuration in the Resolver dashboard in the Route 53 console.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The ID of one or more security groups that you want to use to control access to this VPC. The security group that you specify must include one or more inbound rules (for inbound Resolver endpoints) or outbound rules (for outbound Resolver endpoints). Inbound and outbound rules must allow TCP and UDP access. For inbound access, open port 53. For outbound access, open the port that you're using for DNS queries on your network.</p>",
          "box": true
        },
        "Direction": {
          "shape": "ResolverEndpointDirection",
          "documentation": "<p>Specify the applicable value:</p> <ul> <li> <p> <code>INBOUND</code>: Resolver forwards DNS queries to the DNS service for a VPC from your network</p> </li> <li> <p> <code>OUTBOUND</code>: Resolver forwards DNS queries from the DNS service for a VPC to your network</p> </li> </ul>"
        },
        "IpAddresses": {
          "shape": "IpAddressesRequest",
          "documentation": "<p>The subnets and IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward DNS queries to (for inbound endpoints). The subnet ID uniquely identifies a VPC. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of the tag keys and values that you want to associate with the endpoint.</p>",
          "box": true
        }
      }
    },
    "CreateResolverEndpointResponse": {
      "type": "structure",
      "members": {
        "ResolverEndpoint": {
          "shape": "ResolverEndpoint",
          "documentation": "<p>Information about the <code>CreateResolverEndpoint</code> request, including the status of the request.</p>"
        }
      }
    },
    "CreateResolverQueryLogConfigRequest": {
      "type": "structure",
      "required": [
        "Name",
        "DestinationArn",
        "CreatorRequestId"
      ],
      "members": {
        "Name": {
          "shape": "ResolverQueryLogConfigName",
          "documentation": "<p>The name that you want to give the query logging configuration</p>"
        },
        "DestinationArn": {
          "shape": "DestinationArn",
          "documentation": "<p>The ARN of the resource that you want Resolver to send query logs. You can send query logs to an S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream. Examples of valid values include the following:</p> <ul> <li> <p> <b>S3 bucket</b>: </p> <p> <code>arn:aws:s3:::examplebucket</code> </p> <p>You can optionally append a file prefix to the end of the ARN.</p> <p> <code>arn:aws:s3:::examplebucket/development/</code> </p> </li> <li> <p> <b>CloudWatch Logs log group</b>: </p> <p> <code>arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*</code> </p> </li> <li> <p> <b>Kinesis Data Firehose delivery stream</b>:</p> <p> <code>arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name</code> </p> </li> </ul>"
        },
        "CreatorRequestId": {
          "shape": "CreatorRequestId",
          "documentation": "<p>A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp. </p>",
          "idempotencyToken": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of the tag keys and values that you want to associate with the query logging configuration.</p>",
          "box": true
        }
      }
    },
    "CreateResolverQueryLogConfigResponse": {
      "type": "structure",
      "members": {
        "ResolverQueryLogConfig": {
          "shape": "ResolverQueryLogConfig",
          "documentation": "<p>Information about the <code>CreateResolverQueryLogConfig</code> request, including the status of the request.</p>"
        }
      }
    },
    "CreateResolverRuleRequest": {
      "type": "structure",
      "required": [
        "CreatorRequestId",
        "RuleType",
        "DomainName"
      ],
      "members": {
        "CreatorRequestId": {
          "shape": "CreatorRequestId",
          "documentation": "<p>A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp. </p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>A friendly name that lets you easily find a rule in the Resolver dashboard in the Route 53 console.</p>"
        },
        "RuleType": {
          "shape": "RuleTypeOption",
          "documentation": "<p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code>.</p> <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for a subdomain of that domain, specify <code>SYSTEM</code>.</p> <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code> for <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify <code>SYSTEM</code> for <code>RuleType</code>.</p> <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>DNS queries for this domain name are forwarded to the IP addresses that you specify in <code>TargetIps</code>. If a query matches multiple Resolver rules (example.com and www.example.com), outbound DNS queries are routed using the Resolver rule that contains the most specific domain name (www.example.com).</p>"
        },
        "TargetIps": {
          "shape": "TargetList",
          "documentation": "<p>The IPs that you want Resolver to forward DNS queries to. You can specify only IPv4 addresses. Separate IP addresses with a comma.</p> <p> <code>TargetIps</code> is available only when the value of <code>Rule type</code> is <code>FORWARD</code>.</p>",
          "box": true
        },
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify in <code>TargetIps</code>.</p>",
          "box": true
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of the tag keys and values that you want to associate with the endpoint.</p>",
          "box": true
        }
      }
    },
    "CreateResolverRuleResponse": {
      "type": "structure",
      "members": {
        "ResolverRule": {
          "shape": "ResolverRule",
          "documentation": "<p>Information about the <code>CreateResolverRule</code> request, including the status of the request.</p>"
        }
      }
    },
    "CreatorRequestId": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "DeleteResolverEndpointRequest": {
      "type": "structure",
      "required": [
        "ResolverEndpointId"
      ],
      "members": {
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver endpoint that you want to delete.</p>"
        }
      }
    },
    "DeleteResolverEndpointResponse": {
      "type": "structure",
      "members": {
        "ResolverEndpoint": {
          "shape": "ResolverEndpoint",
          "documentation": "<p>Information about the <code>DeleteResolverEndpoint</code> request, including the status of the request.</p>"
        }
      }
    },
    "DeleteResolverQueryLogConfigRequest": {
      "type": "structure",
      "required": [
        "ResolverQueryLogConfigId"
      ],
      "members": {
        "ResolverQueryLogConfigId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the query logging configuration that you want to delete.</p>"
        }
      }
    },
    "DeleteResolverQueryLogConfigResponse": {
      "type": "structure",
      "members": {
        "ResolverQueryLogConfig": {
          "shape": "ResolverQueryLogConfig",
          "documentation": "<p>Information about the query logging configuration that you deleted, including the status of the request.</p>"
        }
      }
    },
    "DeleteResolverRuleRequest": {
      "type": "structure",
      "required": [
        "ResolverRuleId"
      ],
      "members": {
        "ResolverRuleId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver rule that you want to delete.</p>"
        }
      }
    },
    "DeleteResolverRuleResponse": {
      "type": "structure",
      "members": {
        "ResolverRule": {
          "shape": "ResolverRule",
          "documentation": "<p>Information about the <code>DeleteResolverRule</code> request, including the status of the request.</p>"
        }
      }
    },
    "DestinationArn": {
      "type": "string",
      "max": 600,
      "min": 1
    },
    "DisassociateResolverEndpointIpAddressRequest": {
      "type": "structure",
      "required": [
        "ResolverEndpointId",
        "IpAddress"
      ],
      "members": {
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver endpoint that you want to disassociate an IP address from.</p>"
        },
        "IpAddress": {
          "shape": "IpAddressUpdate",
          "documentation": "<p>The IPv4 address that you want to remove from a Resolver endpoint.</p>"
        }
      }
    },
    "DisassociateResolverEndpointIpAddressResponse": {
      "type": "structure",
      "members": {
        "ResolverEndpoint": {
          "shape": "ResolverEndpoint",
          "documentation": "<p>The response to an <code>DisassociateResolverEndpointIpAddress</code> request.</p>"
        }
      }
    },
    "DisassociateResolverQueryLogConfigRequest": {
      "type": "structure",
      "required": [
        "ResolverQueryLogConfigId",
        "ResourceId"
      ],
      "members": {
        "ResolverQueryLogConfigId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the query logging configuration that you want to disassociate a specified VPC from.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Amazon VPC that you want to disassociate from a specified query logging configuration.</p>"
        }
      }
    },
    "DisassociateResolverQueryLogConfigResponse": {
      "type": "structure",
      "members": {
        "ResolverQueryLogConfigAssociation": {
          "shape": "ResolverQueryLogConfigAssociation",
          "documentation": "<p>A complex type that contains settings for the association that you deleted between an Amazon VPC and a query logging configuration.</p>"
        }
      }
    },
    "DisassociateResolverRuleRequest": {
      "type": "structure",
      "required": [
        "VPCId",
        "ResolverRuleId"
      ],
      "members": {
        "VPCId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the VPC that you want to disassociate the Resolver rule from.</p>"
        },
        "ResolverRuleId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver rule that you want to disassociate from the specified VPC.</p>"
        }
      }
    },
    "DisassociateResolverRuleResponse": {
      "type": "structure",
      "members": {
        "ResolverRuleAssociation": {
          "shape": "ResolverRuleAssociation",
          "documentation": "<p>Information about the <code>DisassociateResolverRule</code> request, including the status of the request.</p>"
        }
      }
    },
    "DomainName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "Filter": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "FilterName",
          "documentation": "<p>The name of the parameter that you want to use to filter objects.</p> <p>The valid values for <code>Name</code> depend on the action that you're including the filter in, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html\">ListResolverQueryLogConfigs</a>, or <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html\">ListResolverQueryLogConfigAssociations</a>.</p> <note> <p>In early versions of Resolver, values for <code>Name</code> were listed as uppercase, with underscore (_) delimiters. For example, <code>CreatorRequestId</code> was originally listed as <code>CREATOR_REQUEST_ID</code>. Uppercase values for <code>Name</code> are still supported.</p> </note> <p> <b>ListResolverEndpoints</b> </p> <p>Valid values for <code>Name</code> include the following:</p> <ul> <li> <p> <code>CreatorRequestId</code>: The value that you specified when you created the Resolver endpoint.</p> </li> <li> <p> <code>Direction</code>: Whether you want to return inbound or outbound Resolver endpoints. If you specify <code>DIRECTION</code> for <code>Name</code>, specify <code>INBOUND</code> or <code>OUTBOUND</code> for <code>Values</code>.</p> </li> <li> <p> <code>HostVpcId</code>: The ID of the VPC that inbound DNS queries pass through on the way from your network to your VPCs in a region, or the VPC that outbound queries pass through on the way from your VPCs to your network. In a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a> request, <code>SubnetId</code> indirectly identifies the VPC. In a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a> request, the VPC ID for a Resolver endpoint is returned in the <code>HostVPCId</code> element. </p> </li> <li> <p> <code>IpAddressCount</code>: The number of IP addresses that you have associated with the Resolver endpoint.</p> </li> <li> <p> <code>Name</code>: The name of the Resolver endpoint.</p> </li> <li> <p> <code>SecurityGroupIds</code>: The IDs of the VPC security groups that you specified when you created the Resolver endpoint.</p> </li> <li> <p> <code>Status</code>: The status of the Resolver endpoint. If you specify <code>Status</code> for <code>Name</code>, specify one of the following status codes for <code>Values</code>: <code>CREATING</code>, <code>OPERATIONAL</code>, <code>UPDATING</code>, <code>AUTO_RECOVERING</code>, <code>ACTION_NEEDED</code>, or <code>DELETING</code>. For more information, see <code>Status</code> in <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverEndpoint.html\">ResolverEndpoint</a>.</p> </li> </ul> <p> <b>ListResolverRules</b> </p> <p>Valid values for <code>Name</code> include the following:</p> <ul> <li> <p> <code>CreatorRequestId</code>: The value that you specified when you created the Resolver rule.</p> </li> <li> <p> <code>DomainName</code>: The domain name for which Resolver is forwarding DNS queries to your network. In the value that you specify for <code>Values</code>, include a trailing dot (.) after the domain name. For example, if the domain name is example.com, specify the following value. Note the \".\" after <code>com</code>:</p> <p> <code>example.com.</code> </p> </li> <li> <p> <code>Name</code>: The name of the Resolver rule.</p> </li> <li> <p> <code>ResolverEndpointId</code>: The ID of the Resolver endpoint that the Resolver rule is associated with.</p> <note> <p>You can filter on the Resolver endpoint only for rules that have a value of <code>FORWARD</code> for <code>RuleType</code>.</p> </note> </li> <li> <p> <code>Status</code>: The status of the Resolver rule. If you specify <code>Status</code> for <code>Name</code>, specify one of the following status codes for <code>Values</code>: <code>COMPLETE</code>, <code>DELETING</code>, <code>UPDATING</code>, or <code>FAILED</code>.</p> </li> <li> <p> <code>Type</code>: The type of the Resolver rule. If you specify <code>TYPE</code> for <code>Name</code>, specify <code>FORWARD</code> or <code>SYSTEM</code> for <code>Values</code>.</p> </li> </ul> <p> <b>ListResolverRuleAssociations</b> </p> <p>Valid values for <code>Name</code> include the following:</p> <ul> <li> <p> <code>Name</code>: The name of the Resolver rule association.</p> </li> <li> <p> <code>ResolverRuleId</code>: The ID of the Resolver rule that is associated with one or more VPCs.</p> </li> <li> <p> <code>Status</code>: The status of the Resolver rule association. If you specify <code>Status</code> for <code>Name</code>, specify one of the following status codes for <code>Values</code>: <code>CREATING</code>, <code>COMPLETE</code>, <code>DELETING</code>, or <code>FAILED</code>.</p> </li> <li> <p> <code>VPCId</code>: The ID of the VPC that the Resolver rule is associated with.</p> </li> </ul> <p> <b>ListResolverQueryLogConfigs</b> </p> <p>Valid values for <code>Name</code> include the following:</p> <ul> <li> <p> <code>Arn</code>: The ARN for the query logging configuration.</p> </li> <li> <p> <code>AssociationCount</code>: The number of VPCs that are associated with the query logging configuration.</p> </li> <li> <p> <code>CreationTime</code>: The date and time that the query logging configuration was created, in Unix time format and Coordinated Universal Time (UTC). </p> </li> <li> <p> <code>CreatorRequestId</code>: A unique string that identifies the request that created the query logging configuration.</p> </li> <li> <p> <code>Destination</code>: The AWS service that you want to forward query logs to. Valid values include the following:</p> <ul> <li> <p> <code>S3</code> </p> </li> <li> <p> <code>CloudWatchLogs</code> </p> </li> <li> <p> <code>KinesisFirehose</code> </p> </li> </ul> </li> <li> <p> <code>DestinationArn</code>: The ARN of the location that Resolver is sending query logs to. This value can be the ARN for an S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.</p> </li> <li> <p> <code>Id</code>: The ID of the query logging configuration</p> </li> <li> <p> <code>Name</code>: The name of the query logging configuration</p> </li> <li> <p> <code>OwnerId</code>: The AWS account ID for the account that created the query logging configuration.</p> </li> <li> <p> <code>ShareStatus</code>: An indication of whether the query logging configuration is shared with other AWS accounts, or was shared with the current account by another AWS account. Valid values include: <code>NOT_SHARED</code>, <code>SHARED_WITH_ME</code>, or <code>SHARED_BY_ME</code>.</p> </li> <li> <p> <code>Status</code>: The status of the query logging configuration. If you specify <code>Status</code> for <code>Name</code>, specify the applicable status code for <code>Values</code>: <code>CREATING</code>, <code>CREATED</code>, <code>DELETING</code>, or <code>FAILED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ResolverQueryLogConfig.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfig-Status\">Status</a>. </p> </li> </ul> <p> <b>ListResolverQueryLogConfigAssociations</b> </p> <p>Valid values for <code>Name</code> include the following:</p> <ul> <li> <p> <code>CreationTime</code>: The date and time that the VPC was associated with the query logging configuration, in Unix time format and Coordinated Universal Time (UTC).</p> </li> <li> <p> <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, specify the cause: <code>DESTINATION_NOT_FOUND</code> or <code>ACCESS_DENIED</code>.</p> </li> <li> <p> <code>Id</code>: The ID of the query logging association.</p> </li> <li> <p> <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration that a VPC is associated with.</p> </li> <li> <p> <code>ResourceId</code>: The ID of the Amazon VPC that is associated with the query logging configuration.</p> </li> <li> <p> <code>Status</code>: The status of the query logging association. If you specify <code>Status</code> for <code>Name</code>, specify the applicable status code for <code>Values</code>: <code>CREATING</code>, <code>CREATED</code>, <code>DELETING</code>, or <code>FAILED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/API_route53resolver_ResolverQueryLogConfigAssociation.html#Route53Resolver-Type-route53resolver_ResolverQueryLogConfigAssociation-Status\">Status</a>. </p> </li> </ul>"
        },
        "Values": {
          "shape": "FilterValues",
          "documentation": "<p>When you're using a <code>List</code> operation and you want the operation to return a subset of objects, such as Resolver endpoints or Resolver rules, the value of the parameter that you want to use to filter objects. For example, to list only inbound Resolver endpoints, specify <code>Direction</code> for <code>Name</code> and specify <code>INBOUND</code> for <code>Values</code>.</p>"
        }
      },
      "documentation": "<p>For Resolver list operations (<a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html\">ListResolverQueryLogConfigs</a>, and <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html\">ListResolverQueryLogConfigAssociations</a>), an optional specification to return a subset of objects.</p> <p>To filter objects, such as Resolver endpoints or Resolver rules, you specify <code>Name</code> and <code>Values</code>. For example, to list only inbound Resolver endpoints, specify <code>Direction</code> for <code>Name</code> and specify <code>INBOUND</code> for <code>Values</code>. </p>"
    },
    "FilterName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "FilterValue": {
      "type": "string",
      "max": 600,
      "min": 1
    },
    "FilterValues": {
      "type": "list",
      "member": {
        "shape": "FilterValue"
      }
    },
    "Filters": {
      "type": "list",
      "member": {
        "shape": "Filter"
      }
    },
    "GetResolverEndpointRequest": {
      "type": "structure",
      "required": [
        "ResolverEndpointId"
      ],
      "members": {
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver endpoint that you want to get information about.</p>"
        }
      }
    },
    "GetResolverEndpointResponse": {
      "type": "structure",
      "members": {
        "ResolverEndpoint": {
          "shape": "ResolverEndpoint",
          "documentation": "<p>Information about the Resolver endpoint that you specified in a <code>GetResolverEndpoint</code> request.</p>"
        }
      }
    },
    "GetResolverQueryLogConfigAssociationRequest": {
      "type": "structure",
      "required": [
        "ResolverQueryLogConfigAssociationId"
      ],
      "members": {
        "ResolverQueryLogConfigAssociationId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver query logging configuration association that you want to get information about.</p>"
        }
      }
    },
    "GetResolverQueryLogConfigAssociationResponse": {
      "type": "structure",
      "members": {
        "ResolverQueryLogConfigAssociation": {
          "shape": "ResolverQueryLogConfigAssociation",
          "documentation": "<p>Information about the Resolver query logging configuration association that you specified in a <code>GetQueryLogConfigAssociation</code> request.</p>"
        }
      }
    },
    "GetResolverQueryLogConfigPolicyRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the query logging configuration that you want to get the query logging policy for.</p>"
        }
      }
    },
    "GetResolverQueryLogConfigPolicyResponse": {
      "type": "structure",
      "members": {
        "ResolverQueryLogConfigPolicy": {
          "shape": "ResolverQueryLogConfigPolicy",
          "documentation": "<p>Information about the query logging policy for the query logging configuration that you specified in a <code>GetResolverQueryLogConfigPolicy</code> request.</p>"
        }
      }
    },
    "GetResolverQueryLogConfigRequest": {
      "type": "structure",
      "required": [
        "ResolverQueryLogConfigId"
      ],
      "members": {
        "ResolverQueryLogConfigId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver query logging configuration that you want to get information about.</p>"
        }
      }
    },
    "GetResolverQueryLogConfigResponse": {
      "type": "structure",
      "members": {
        "ResolverQueryLogConfig": {
          "shape": "ResolverQueryLogConfig",
          "documentation": "<p>Information about the Resolver query logging configuration that you specified in a <code>GetQueryLogConfig</code> request.</p>"
        }
      }
    },
    "GetResolverRuleAssociationRequest": {
      "type": "structure",
      "required": [
        "ResolverRuleAssociationId"
      ],
      "members": {
        "ResolverRuleAssociationId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver rule association that you want to get information about.</p>"
        }
      }
    },
    "GetResolverRuleAssociationResponse": {
      "type": "structure",
      "members": {
        "ResolverRuleAssociation": {
          "shape": "ResolverRuleAssociation",
          "documentation": "<p>Information about the Resolver rule association that you specified in a <code>GetResolverRuleAssociation</code> request.</p>"
        }
      }
    },
    "GetResolverRulePolicyRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ID of the Resolver rule policy that you want to get information about.</p>"
        }
      }
    },
    "GetResolverRulePolicyResponse": {
      "type": "structure",
      "members": {
        "ResolverRulePolicy": {
          "shape": "ResolverRulePolicy",
          "documentation": "<p>Information about the Resolver rule policy that you specified in a <code>GetResolverRulePolicy</code> request.</p>"
        }
      }
    },
    "GetResolverRuleRequest": {
      "type": "structure",
      "required": [
        "ResolverRuleId"
      ],
      "members": {
        "ResolverRuleId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver rule that you want to get information about.</p>"
        }
      }
    },
    "GetResolverRuleResponse": {
      "type": "structure",
      "members": {
        "ResolverRule": {
          "shape": "ResolverRule",
          "documentation": "<p>Information about the Resolver rule that you specified in a <code>GetResolverRule</code> request.</p>"
        }
      }
    },
    "Ip": {
      "type": "string",
      "max": 36,
      "min": 7
    },
    "IpAddressCount": {
      "type": "integer"
    },
    "IpAddressRequest": {
      "type": "structure",
      "required": [
        "SubnetId"
      ],
      "members": {
        "SubnetId": {
          "shape": "SubnetId",
          "documentation": "<p>The ID of the subnet that contains the IP address. </p>"
        },
        "Ip": {
          "shape": "Ip",
          "documentation": "<p>The IP address that you want to use for DNS queries.</p>",
          "box": true
        }
      },
      "documentation": "<p>In a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a> request, the IP address that DNS queries originate from (for outbound endpoints) or that you forward DNS queries to (for inbound endpoints). <code>IpAddressRequest</code> also includes the ID of the subnet that contains the IP address.</p>"
    },
    "IpAddressResponse": {
      "type": "structure",
      "members": {
        "IpId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of one IP address.</p>"
        },
        "SubnetId": {
          "shape": "SubnetId",
          "documentation": "<p>The ID of one subnet.</p>"
        },
        "Ip": {
          "shape": "Ip",
          "documentation": "<p>One IP address that the Resolver endpoint uses for DNS queries.</p>"
        },
        "Status": {
          "shape": "IpAddressStatus",
          "documentation": "<p>A status code that gives the current status of the request.</p>"
        },
        "StatusMessage": {
          "shape": "StatusMessage",
          "documentation": "<p>A message that provides additional information about the status of the request.</p>"
        },
        "CreationTime": {
          "shape": "Rfc3339TimeString",
          "documentation": "<p>The date and time that the IP address was created, in Unix time format and Coordinated Universal Time (UTC).</p>"
        },
        "ModificationTime": {
          "shape": "Rfc3339TimeString",
          "documentation": "<p>The date and time that the IP address was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"
        }
      },
      "documentation": "<p>In the response to a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a> request, information about the IP addresses that the Resolver endpoint uses for DNS queries.</p>"
    },
    "IpAddressStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "FAILED_CREATION",
        "ATTACHING",
        "ATTACHED",
        "REMAP_DETACHING",
        "REMAP_ATTACHING",
        "DETACHING",
        "FAILED_RESOURCE_GONE",
        "DELETING",
        "DELETE_FAILED_FAS_EXPIRED"
      ]
    },
    "IpAddressUpdate": {
      "type": "structure",
      "members": {
        "IpId": {
          "shape": "ResourceId",
          "documentation": "<p> <i>Only when removing an IP address from a Resolver endpoint</i>: The ID of the IP address that you want to remove. To get this ID, use <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>.</p>",
          "box": true
        },
        "SubnetId": {
          "shape": "SubnetId",
          "documentation": "<p>The ID of the subnet that includes the IP address that you want to update. To get this ID, use <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>.</p>",
          "box": true
        },
        "Ip": {
          "shape": "Ip",
          "documentation": "<p>The new IP address.</p>",
          "box": true
        }
      },
      "documentation": "<p>In an <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html\">UpdateResolverEndpoint</a> request, information about an IP address to update.</p>"
    },
    "IpAddressesRequest": {
      "type": "list",
      "member": {
        "shape": "IpAddressRequest"
      },
      "max": 10,
      "min": 1
    },
    "IpAddressesResponse": {
      "type": "list",
      "member": {
        "shape": "IpAddressResponse"
      }
    },
    "ListResolverEndpointIpAddressesRequest": {
      "type": "structure",
      "required": [
        "ResolverEndpointId"
      ],
      "members": {
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver endpoint that you want to get IP addresses for.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of IP addresses that you want to return in the response to a <code>ListResolverEndpointIpAddresses</code> request. If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 IP addresses. </p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListResolverEndpointIpAddresses</code> request, omit this value.</p> <p>If the specified Resolver endpoint has more than <code>MaxResults</code> IP addresses, you can submit another <code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>",
          "box": true
        }
      }
    },
    "ListResolverEndpointIpAddressesResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the specified endpoint has more than <code>MaxResults</code> IP addresses, you can submit another <code>ListResolverEndpointIpAddresses</code> request to get the next group of IP addresses. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The value that you specified for <code>MaxResults</code> in the request.</p>"
        },
        "IpAddresses": {
          "shape": "IpAddressesResponse",
          "documentation": "<p>Information about the IP addresses in your VPC that DNS queries originate from (for outbound endpoints) or that you forward DNS queries to (for inbound endpoints).</p>"
        }
      }
    },
    "ListResolverEndpointsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of Resolver endpoints that you want to return in the response to a <code>ListResolverEndpoints</code> request. If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver endpoints. </p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListResolverEndpoints</code> request, omit this value.</p> <p>If you have more than <code>MaxResults</code> Resolver endpoints, you can submit another <code>ListResolverEndpoints</code> request to get the next group of Resolver endpoints. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>",
          "box": true
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An optional specification to return a subset of Resolver endpoints, such as all inbound Resolver endpoints.</p> <note> <p>If you submit a second or subsequent <code>ListResolverEndpoints</code> request and specify the <code>NextToken</code> parameter, you must use the same values for <code>Filters</code>, if any, as in the previous request.</p> </note>",
          "box": true
        }
      }
    },
    "ListResolverEndpointsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If more than <code>MaxResults</code> IP addresses match the specified criteria, you can submit another <code>ListResolverEndpoint</code> request to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The value that you specified for <code>MaxResults</code> in the request.</p>"
        },
        "ResolverEndpoints": {
          "shape": "ResolverEndpoints",
          "documentation": "<p>The Resolver endpoints that were created by using the current AWS account, and that match the specified filters, if any.</p>"
        }
      }
    },
    "ListResolverQueryLogConfigAssociationsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of query logging associations that you want to return in the response to a <code>ListResolverQueryLogConfigAssociations</code> request. If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging associations. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListResolverQueryLogConfigAssociations</code> request, omit this value.</p> <p>If there are more than <code>MaxResults</code> query logging associations that match the values that you specify for <code>Filters</code>, you can submit another <code>ListResolverQueryLogConfigAssociations</code> request to get the next group of associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An optional specification to return a subset of query logging associations.</p> <note> <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, you must use the same values for <code>Filters</code>, if any, as in the previous request.</p> </note>"
        },
        "SortBy": {
          "shape": "SortByKey",
          "documentation": "<p>The element that you want Resolver to sort query logging associations by. </p> <note> <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p> </note> <p>Valid values include the following elements:</p> <ul> <li> <p> <code>CreationTime</code>: The ID of the query logging association.</p> </li> <li> <p> <code>Error</code>: If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code> indicates the cause: </p> <ul> <li> <p> <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p> </li> <li> <p> <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p> </li> </ul> <p>If <code>Status</code> is a value other than <code>FAILED</code>, <code>ERROR</code> is null.</p> </li> <li> <p> <code>Id</code>: The ID of the query logging association</p> </li> <li> <p> <code>ResolverQueryLogConfigId</code>: The ID of the query logging configuration</p> </li> <li> <p> <code>ResourceId</code>: The ID of the VPC that is associated with the query logging configuration</p> </li> <li> <p> <code>Status</code>: The current status of the configuration. Valid values include the following:</p> <ul> <li> <p> <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p> </li> <li> <p> <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration was successfully created. Resolver is logging queries that originate in the specified VPC.</p> </li> <li> <p> <code>DELETING</code>: Resolver is deleting this query logging association.</p> </li> <li> <p> <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association. Here are two common causes:</p> <ul> <li> <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p> </li> <li> <p>Permissions don't allow sending logs to the destination.</p> </li> </ul> </li> </ul> </li> </ul>"
        },
        "SortOrder": {
          "shape": "SortOrder",
          "documentation": "<p>If you specified a value for <code>SortBy</code>, the order that you want query logging associations to be listed in, <code>ASCENDING</code> or <code>DESCENDING</code>.</p> <note> <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigAssociations</code> request and specify the <code>NextToken</code> parameter, you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p> </note>"
        }
      }
    },
    "ListResolverQueryLogConfigAssociationsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If there are more than <code>MaxResults</code> query logging associations, you can submit another <code>ListResolverQueryLogConfigAssociations</code> request to get the next group of associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"
        },
        "TotalCount": {
          "shape": "Count",
          "documentation": "<p>The total number of query logging associations that were created by the current account in the specified Region. This count can differ from the number of associations that are returned in a <code>ListResolverQueryLogConfigAssociations</code> response, depending on the values that you specify in the request.</p>"
        },
        "TotalFilteredCount": {
          "shape": "Count",
          "documentation": "<p>The total number of query logging associations that were created by the current account in the specified Region and that match the filters that were specified in the <code>ListResolverQueryLogConfigAssociations</code> request. For the total number of associations that were created by the current account in the specified Region, see <code>TotalCount</code>.</p>"
        },
        "ResolverQueryLogConfigAssociations": {
          "shape": "ResolverQueryLogConfigAssociationList",
          "documentation": "<p>A list that contains one <code>ResolverQueryLogConfigAssociations</code> element for each query logging association that matches the values that you specified for <code>Filter</code>.</p>"
        }
      }
    },
    "ListResolverQueryLogConfigsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of query logging configurations that you want to return in the response to a <code>ListResolverQueryLogConfigs</code> request. If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 query logging configurations. </p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListResolverQueryLogConfigs</code> request, omit this value.</p> <p>If there are more than <code>MaxResults</code> query logging configurations that match the values that you specify for <code>Filters</code>, you can submit another <code>ListResolverQueryLogConfigs</code> request to get the next group of configurations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>",
          "box": true
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An optional specification to return a subset of query logging configurations.</p> <note> <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, you must use the same values for <code>Filters</code>, if any, as in the previous request.</p> </note>",
          "box": true
        },
        "SortBy": {
          "shape": "SortByKey",
          "documentation": "<p>The element that you want Resolver to sort query logging configurations by. </p> <note> <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, you must use the same value for <code>SortBy</code>, if any, as in the previous request.</p> </note> <p>Valid values include the following elements:</p> <ul> <li> <p> <code>Arn</code>: The ARN of the query logging configuration</p> </li> <li> <p> <code>AssociationCount</code>: The number of VPCs that are associated with the specified configuration </p> </li> <li> <p> <code>CreationTime</code>: The date and time that Resolver returned when the configuration was created</p> </li> <li> <p> <code>CreatorRequestId</code>: The value that was specified for <code>CreatorRequestId</code> when the configuration was created</p> </li> <li> <p> <code>DestinationArn</code>: The location that logs are sent to</p> </li> <li> <p> <code>Id</code>: The ID of the configuration</p> </li> <li> <p> <code>Name</code>: The name of the configuration</p> </li> <li> <p> <code>OwnerId</code>: The AWS account number of the account that created the configuration</p> </li> <li> <p> <code>ShareStatus</code>: Whether the configuration is shared with other AWS accounts or shared with the current account by another AWS account. Sharing is configured through AWS Resource Access Manager (AWS RAM).</p> </li> <li> <p> <code>Status</code>: The current status of the configuration. Valid values include the following:</p> <ul> <li> <p> <code>CREATING</code>: Resolver is creating the query logging configuration.</p> </li> <li> <p> <code>CREATED</code>: The query logging configuration was successfully created. Resolver is logging queries that originate in the specified VPC.</p> </li> <li> <p> <code>DELETING</code>: Resolver is deleting this query logging configuration.</p> </li> <li> <p> <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging configuration. Here are two common causes:</p> <ul> <li> <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p> </li> <li> <p>Permissions don't allow sending logs to the destination.</p> </li> </ul> </li> </ul> </li> </ul>"
        },
        "SortOrder": {
          "shape": "SortOrder",
          "documentation": "<p>If you specified a value for <code>SortBy</code>, the order that you want query logging configurations to be listed in, <code>ASCENDING</code> or <code>DESCENDING</code>.</p> <note> <p>If you submit a second or subsequent <code>ListResolverQueryLogConfigs</code> request and specify the <code>NextToken</code> parameter, you must use the same value for <code>SortOrder</code>, if any, as in the previous request.</p> </note>"
        }
      }
    },
    "ListResolverQueryLogConfigsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If there are more than <code>MaxResults</code> query logging configurations, you can submit another <code>ListResolverQueryLogConfigs</code> request to get the next group of configurations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"
        },
        "TotalCount": {
          "shape": "Count",
          "documentation": "<p>The total number of query logging configurations that were created by the current account in the specified Region. This count can differ from the number of query logging configurations that are returned in a <code>ListResolverQueryLogConfigs</code> response, depending on the values that you specify in the request.</p>"
        },
        "TotalFilteredCount": {
          "shape": "Count",
          "documentation": "<p>The total number of query logging configurations that were created by the current account in the specified Region and that match the filters that were specified in the <code>ListResolverQueryLogConfigs</code> request. For the total number of query logging configurations that were created by the current account in the specified Region, see <code>TotalCount</code>.</p>"
        },
        "ResolverQueryLogConfigs": {
          "shape": "ResolverQueryLogConfigList",
          "documentation": "<p>A list that contains one <code>ResolverQueryLogConfig</code> element for each query logging configuration that matches the values that you specified for <code>Filter</code>.</p>"
        }
      }
    },
    "ListResolverRuleAssociationsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of rule associations that you want to return in the response to a <code>ListResolverRuleAssociations</code> request. If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 rule associations. </p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListResolverRuleAssociation</code> request, omit this value.</p> <p>If you have more than <code>MaxResults</code> rule associations, you can submit another <code>ListResolverRuleAssociation</code> request to get the next group of rule associations. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>",
          "box": true
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An optional specification to return a subset of Resolver rules, such as Resolver rules that are associated with the same VPC ID.</p> <note> <p>If you submit a second or subsequent <code>ListResolverRuleAssociations</code> request and specify the <code>NextToken</code> parameter, you must use the same values for <code>Filters</code>, if any, as in the previous request.</p> </note>",
          "box": true
        }
      }
    },
    "ListResolverRuleAssociationsResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If more than <code>MaxResults</code> rule associations match the specified criteria, you can submit another <code>ListResolverRuleAssociation</code> request to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The value that you specified for <code>MaxResults</code> in the request.</p>"
        },
        "ResolverRuleAssociations": {
          "shape": "ResolverRuleAssociations",
          "documentation": "<p>The associations that were created between Resolver rules and VPCs using the current AWS account, and that match the specified filters, if any.</p>"
        }
      }
    },
    "ListResolverRulesRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of Resolver rules that you want to return in the response to a <code>ListResolverRules</code> request. If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 Resolver rules.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListResolverRules</code> request, omit this value.</p> <p>If you have more than <code>MaxResults</code> Resolver rules, you can submit another <code>ListResolverRules</code> request to get the next group of Resolver rules. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>",
          "box": true
        },
        "Filters": {
          "shape": "Filters",
          "documentation": "<p>An optional specification to return a subset of Resolver rules, such as all Resolver rules that are associated with the same Resolver endpoint.</p> <note> <p>If you submit a second or subsequent <code>ListResolverRules</code> request and specify the <code>NextToken</code> parameter, you must use the same values for <code>Filters</code>, if any, as in the previous request.</p> </note>",
          "box": true
        }
      }
    },
    "ListResolverRulesResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If more than <code>MaxResults</code> Resolver rules match the specified criteria, you can submit another <code>ListResolverRules</code> request to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The value that you specified for <code>MaxResults</code> in the request.</p>"
        },
        "ResolverRules": {
          "shape": "ResolverRules",
          "documentation": "<p>The Resolver rules that were created using the current AWS account and that match the specified filters, if any.</p>"
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
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the resource that you want to list tags for.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of tags that you want to return in the response to a <code>ListTagsForResource</code> request. If you don't specify a value for <code>MaxResults</code>, Resolver returns up to 100 tags.</p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>For the first <code>ListTagsForResource</code> request, omit this value.</p> <p>If you have more than <code>MaxResults</code> tags, you can submit another <code>ListTagsForResource</code> request to get the next group of tags for the resource. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>",
          "box": true
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags that are associated with the resource that you specified in the <code>ListTagsForResource</code> request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If more than <code>MaxResults</code> tags match the specified criteria, you can submit another <code>ListTagsForResource</code> request to get the next group of results. In the next request, specify the value of <code>NextToken</code> from the previous response. </p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "Name": {
      "type": "string",
      "max": 64,
      "pattern": "(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)"
    },
    "NextToken": {
      "type": "string"
    },
    "Port": {
      "type": "integer",
      "max": 65535,
      "min": 0
    },
    "PutResolverQueryLogConfigPolicyRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "ResolverQueryLogConfigPolicy"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the account that you want to share rules with.</p>"
        },
        "ResolverQueryLogConfigPolicy": {
          "shape": "ResolverQueryLogConfigPolicy",
          "documentation": "<p>An AWS Identity and Access Management policy statement that lists the query logging configurations that you want to share with another AWS account and the operations that you want the account to be able to perform. You can specify the following operations in the <code>Actions</code> section of the statement:</p> <ul> <li> <p> <code>route53resolver:AssociateResolverQueryLogConfig</code> </p> </li> <li> <p> <code>route53resolver:DisassociateResolverQueryLogConfig</code> </p> </li> <li> <p> <code>route53resolver:ListResolverQueryLogConfigAssociations</code> </p> </li> <li> <p> <code>route53resolver:ListResolverQueryLogConfigs</code> </p> </li> </ul> <p>In the <code>Resource</code> section of the statement, you specify the ARNs for the query logging configurations that you want to share with the account that you specified in <code>Arn</code>. </p>"
        }
      }
    },
    "PutResolverQueryLogConfigPolicyResponse": {
      "type": "structure",
      "members": {
        "ReturnValue": {
          "shape": "Boolean",
          "documentation": "<p>Whether the <code>PutResolverQueryLogConfigPolicy</code> request was successful.</p>"
        }
      },
      "documentation": "<p>The response to a <code>PutResolverQueryLogConfigPolicy</code> request.</p>"
    },
    "PutResolverRulePolicyRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "ResolverRulePolicy"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the account that you want to share rules with.</p>"
        },
        "ResolverRulePolicy": {
          "shape": "ResolverRulePolicy",
          "documentation": "<p>An AWS Identity and Access Management policy statement that lists the rules that you want to share with another AWS account and the operations that you want the account to be able to perform. You can specify the following operations in the <code>Actions</code> section of the statement:</p> <ul> <li> <p> <code>route53resolver:GetResolverRule</code> </p> </li> <li> <p> <code>route53resolver:AssociateResolverRule</code> </p> </li> <li> <p> <code>route53resolver:DisassociateResolverRule</code> </p> </li> <li> <p> <code>route53resolver:ListResolverRules</code> </p> </li> <li> <p> <code>route53resolver:ListResolverRuleAssociations</code> </p> </li> </ul> <p>In the <code>Resource</code> section of the statement, you specify the ARNs for the rules that you want to share with the account that you specified in <code>Arn</code>. </p>"
        }
      }
    },
    "PutResolverRulePolicyResponse": {
      "type": "structure",
      "members": {
        "ReturnValue": {
          "shape": "Boolean",
          "documentation": "<p>Whether the <code>PutResolverRulePolicy</code> request was successful.</p>"
        }
      },
      "documentation": "<p>The response to a <code>PutResolverRulePolicy</code> request.</p>"
    },
    "ResolverEndpoint": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver endpoint.</p>"
        },
        "CreatorRequestId": {
          "shape": "CreatorRequestId",
          "documentation": "<p>A unique string that identifies the request that created the Resolver endpoint. The <code>CreatorRequestId</code> allows failed requests to be retried without the risk of executing the operation twice.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN (Amazon Resource Name) for the Resolver endpoint.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name that you assigned to the Resolver endpoint when you submitted a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a> request.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The ID of one or more security groups that control access to this VPC. The security group must include one or more inbound rules (for inbound endpoints) or outbound rules (for outbound endpoints). Inbound and outbound rules must allow TCP and UDP access. For inbound access, open port 53. For outbound access, open the port that you're using for DNS queries on your network.</p>"
        },
        "Direction": {
          "shape": "ResolverEndpointDirection",
          "documentation": "<p>Indicates whether the Resolver endpoint allows inbound or outbound DNS queries:</p> <ul> <li> <p> <code>INBOUND</code>: allows DNS queries to your VPC from your network</p> </li> <li> <p> <code>OUTBOUND</code>: allows DNS queries from your VPC to your network</p> </li> </ul>"
        },
        "IpAddressCount": {
          "shape": "IpAddressCount",
          "documentation": "<p>The number of IP addresses that the Resolver endpoint can use for DNS queries.</p>"
        },
        "HostVPCId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the VPC that you want to create the Resolver endpoint in.</p>"
        },
        "Status": {
          "shape": "ResolverEndpointStatus",
          "documentation": "<p>A code that specifies the current status of the Resolver endpoint. Valid values include the following:</p> <ul> <li> <p> <code>CREATING</code>: Resolver is creating and configuring one or more Amazon VPC network interfaces for this endpoint.</p> </li> <li> <p> <code>OPERATIONAL</code>: The Amazon VPC network interfaces for this endpoint are correctly configured and able to pass inbound or outbound DNS queries between your network and Resolver.</p> </li> <li> <p> <code>UPDATING</code>: Resolver is associating or disassociating one or more network interfaces with this endpoint.</p> </li> <li> <p> <code>AUTO_RECOVERING</code>: Resolver is trying to recover one or more of the network interfaces that are associated with this endpoint. During the recovery process, the endpoint functions with limited capacity because of the limit on the number of DNS queries per IP address (per network interface). For the current limit, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html#limits-api-entities-resolver\">Limits on Route 53 Resolver</a>.</p> </li> <li> <p> <code>ACTION_NEEDED</code>: This endpoint is unhealthy, and Resolver can't automatically recover it. To resolve the problem, we recommend that you check each IP address that you associated with the endpoint. For each IP address that isn't available, add another IP address and then delete the IP address that isn't available. (An endpoint must always include at least two IP addresses.) A status of <code>ACTION_NEEDED</code> can have a variety of causes. Here are two common causes:</p> <ul> <li> <p>One or more of the network interfaces that are associated with the endpoint were deleted using Amazon VPC.</p> </li> <li> <p>The network interface couldn't be created for some reason that's outside the control of Resolver.</p> </li> </ul> </li> <li> <p> <code>DELETING</code>: Resolver is deleting this endpoint and the associated network interfaces.</p> </li> </ul>"
        },
        "StatusMessage": {
          "shape": "StatusMessage",
          "documentation": "<p>A detailed description of the status of the Resolver endpoint.</p>"
        },
        "CreationTime": {
          "shape": "Rfc3339TimeString",
          "documentation": "<p>The date and time that the endpoint was created, in Unix time format and Coordinated Universal Time (UTC).</p>"
        },
        "ModificationTime": {
          "shape": "Rfc3339TimeString",
          "documentation": "<p>The date and time that the endpoint was last modified, in Unix time format and Coordinated Universal Time (UTC).</p>"
        }
      },
      "documentation": "<p>In the response to a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverEndpoint.html\">CreateResolverEndpoint</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverEndpoint.html\">DeleteResolverEndpoint</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a>, or <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html\">UpdateResolverEndpoint</a> request, a complex type that contains settings for an existing inbound or outbound Resolver endpoint.</p>"
    },
    "ResolverEndpointDirection": {
      "type": "string",
      "enum": [
        "INBOUND",
        "OUTBOUND"
      ]
    },
    "ResolverEndpointStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "OPERATIONAL",
        "UPDATING",
        "AUTO_RECOVERING",
        "ACTION_NEEDED",
        "DELETING"
      ]
    },
    "ResolverEndpoints": {
      "type": "list",
      "member": {
        "shape": "ResolverEndpoint"
      }
    },
    "ResolverQueryLogConfig": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the query logging configuration.</p>"
        },
        "OwnerId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID for the account that created the query logging configuration. </p>"
        },
        "Status": {
          "shape": "ResolverQueryLogConfigStatus",
          "documentation": "<p>The status of the specified query logging configuration. Valid values include the following:</p> <ul> <li> <p> <code>CREATING</code>: Resolver is creating the query logging configuration.</p> </li> <li> <p> <code>CREATED</code>: The query logging configuration was successfully created. Resolver is logging queries that originate in the specified VPC.</p> </li> <li> <p> <code>DELETING</code>: Resolver is deleting this query logging configuration.</p> </li> <li> <p> <code>FAILED</code>: Resolver can't deliver logs to the location that is specified in the query logging configuration. Here are two common causes:</p> <ul> <li> <p>The specified destination (for example, an Amazon S3 bucket) was deleted.</p> </li> <li> <p>Permissions don't allow sending logs to the destination.</p> </li> </ul> </li> </ul>"
        },
        "ShareStatus": {
          "shape": "ShareStatus",
          "documentation": "<p>An indication of whether the query logging configuration is shared with other AWS accounts, or was shared with the current account by another AWS account. Sharing is configured through AWS Resource Access Manager (AWS RAM).</p>"
        },
        "AssociationCount": {
          "shape": "Count",
          "documentation": "<p>The number of VPCs that are associated with the query logging configuration.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the query logging configuration.</p>"
        },
        "Name": {
          "shape": "ResolverQueryLogConfigName",
          "documentation": "<p>The name of the query logging configuration. </p>"
        },
        "DestinationArn": {
          "shape": "DestinationArn",
          "documentation": "<p>The ARN of the resource that you want Resolver to send query logs: an Amazon S3 bucket, a CloudWatch Logs log group, or a Kinesis Data Firehose delivery stream.</p>"
        },
        "CreatorRequestId": {
          "shape": "CreatorRequestId",
          "documentation": "<p>A unique string that identifies the request that created the query logging configuration. The <code>CreatorRequestId</code> allows failed requests to be retried without the risk of executing the operation twice.</p>"
        },
        "CreationTime": {
          "shape": "Rfc3339TimeString",
          "documentation": "<p>The date and time that the query logging configuration was created, in Unix time format and Coordinated Universal Time (UTC).</p>"
        }
      },
      "documentation": "<p>In the response to a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverQueryLogConfig.html\">CreateResolverQueryLogConfig</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverQueryLogConfig.html\">DeleteResolverQueryLogConfig</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverQueryLogConfig.html\">GetResolverQueryLogConfig</a>, or <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigs.html\">ListResolverQueryLogConfigs</a> request, a complex type that contains settings for one query logging configuration.</p>"
    },
    "ResolverQueryLogConfigAssociation": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the query logging association.</p>"
        },
        "ResolverQueryLogConfigId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the query logging configuration that a VPC is associated with.</p>"
        },
        "ResourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Amazon VPC that is associated with the query logging configuration.</p>"
        },
        "Status": {
          "shape": "ResolverQueryLogConfigAssociationStatus",
          "documentation": "<p>The status of the specified query logging association. Valid values include the following:</p> <ul> <li> <p> <code>CREATING</code>: Resolver is creating an association between an Amazon VPC and a query logging configuration.</p> </li> <li> <p> <code>CREATED</code>: The association between an Amazon VPC and a query logging configuration was successfully created. Resolver is logging queries that originate in the specified VPC.</p> </li> <li> <p> <code>DELETING</code>: Resolver is deleting this query logging association.</p> </li> <li> <p> <code>FAILED</code>: Resolver either couldn't create or couldn't delete the query logging association.</p> </li> </ul>"
        },
        "Error": {
          "shape": "ResolverQueryLogConfigAssociationError",
          "documentation": "<p>If the value of <code>Status</code> is <code>FAILED</code>, the value of <code>Error</code> indicates the cause:</p> <ul> <li> <p> <code>DESTINATION_NOT_FOUND</code>: The specified destination (for example, an Amazon S3 bucket) was deleted.</p> </li> <li> <p> <code>ACCESS_DENIED</code>: Permissions don't allow sending logs to the destination.</p> </li> </ul> <p>If the value of <code>Status</code> is a value other than <code>FAILED</code>, <code>Error</code> is null. </p>"
        },
        "ErrorMessage": {
          "shape": "ResolverQueryLogConfigAssociationErrorMessage",
          "documentation": "<p>Contains additional information about the error. If the value or <code>Error</code> is null, the value of <code>ErrorMessage</code> also is null.</p>"
        },
        "CreationTime": {
          "shape": "Rfc3339TimeString",
          "documentation": "<p>The date and time that the VPC was associated with the query logging configuration, in Unix time format and Coordinated Universal Time (UTC).</p>"
        }
      },
      "documentation": "<p>In the response to an <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverQueryLogConfig.html\">AssociateResolverQueryLogConfig</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverQueryLogConfig.html\">DisassociateResolverQueryLogConfig</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverQueryLogConfigAssociation.html\">GetResolverQueryLogConfigAssociation</a>, or <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverQueryLogConfigAssociations.html\">ListResolverQueryLogConfigAssociations</a>, request, a complex type that contains settings for a specified association between an Amazon VPC and a query logging configuration.</p>"
    },
    "ResolverQueryLogConfigAssociationError": {
      "type": "string",
      "enum": [
        "NONE",
        "DESTINATION_NOT_FOUND",
        "ACCESS_DENIED",
        "INTERNAL_SERVICE_ERROR"
      ]
    },
    "ResolverQueryLogConfigAssociationErrorMessage": {
      "type": "string"
    },
    "ResolverQueryLogConfigAssociationList": {
      "type": "list",
      "member": {
        "shape": "ResolverQueryLogConfigAssociation"
      }
    },
    "ResolverQueryLogConfigAssociationStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "ACTION_NEEDED",
        "DELETING",
        "FAILED"
      ]
    },
    "ResolverQueryLogConfigList": {
      "type": "list",
      "member": {
        "shape": "ResolverQueryLogConfig"
      }
    },
    "ResolverQueryLogConfigName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)"
    },
    "ResolverQueryLogConfigPolicy": {
      "type": "string",
      "max": 5000
    },
    "ResolverQueryLogConfigStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "CREATED",
        "DELETING",
        "FAILED"
      ]
    },
    "ResolverRule": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID that Resolver assigned to the Resolver rule when you created it.</p>"
        },
        "CreatorRequestId": {
          "shape": "CreatorRequestId",
          "documentation": "<p>A unique string that you specified when you created the Resolver rule. <code>CreatorRequestId</code> identifies the request and allows failed requests to be retried without the risk of executing the operation twice. </p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN (Amazon Resource Name) for the Resolver rule specified by <code>Id</code>.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>DNS queries for this domain name are forwarded to the IP addresses that are specified in <code>TargetIps</code>. If a query matches multiple Resolver rules (example.com and www.example.com), the query is routed using the Resolver rule that contains the most specific domain name (www.example.com).</p>"
        },
        "Status": {
          "shape": "ResolverRuleStatus",
          "documentation": "<p>A code that specifies the current status of the Resolver rule.</p>"
        },
        "StatusMessage": {
          "shape": "StatusMessage",
          "documentation": "<p>A detailed description of the status of a Resolver rule.</p>"
        },
        "RuleType": {
          "shape": "RuleTypeOption",
          "documentation": "<p>When you want to forward DNS queries for specified domain name to resolvers on your network, specify <code>FORWARD</code>.</p> <p>When you have a forwarding rule to forward DNS queries for a domain to your network and you want Resolver to process queries for a subdomain of that domain, specify <code>SYSTEM</code>.</p> <p>For example, to forward DNS queries for example.com to resolvers on your network, you create a rule and specify <code>FORWARD</code> for <code>RuleType</code>. To then have Resolver process queries for apex.example.com, you create a rule and specify <code>SYSTEM</code> for <code>RuleType</code>.</p> <p>Currently, only Resolver can create rules that have a value of <code>RECURSIVE</code> for <code>RuleType</code>.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name for the Resolver rule, which you specified when you created the Resolver rule.</p>"
        },
        "TargetIps": {
          "shape": "TargetList",
          "documentation": "<p>An array that contains the IP addresses and ports that an outbound endpoint forwards DNS queries to. Typically, these are the IP addresses of DNS resolvers on your network. Specify IPv4 addresses. IPv6 is not supported.</p>"
        },
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the endpoint that the rule is associated with.</p>"
        },
        "OwnerId": {
          "shape": "AccountId",
          "documentation": "<p>When a rule is shared with another AWS account, the account ID of the account that the rule is shared with.</p>"
        },
        "ShareStatus": {
          "shape": "ShareStatus",
          "documentation": "<p>Whether the rules is shared and, if so, whether the current account is sharing the rule with another account, or another account is sharing the rule with the current account.</p>"
        },
        "CreationTime": {
          "shape": "Rfc3339TimeString",
          "documentation": "<p>The date and time that the Resolver rule was created, in Unix time format and Coordinated Universal Time (UTC).</p>"
        },
        "ModificationTime": {
          "shape": "Rfc3339TimeString",
          "documentation": "<p>The date and time that the Resolver rule was last updated, in Unix time format and Coordinated Universal Time (UTC).</p>"
        }
      },
      "documentation": "<p>For queries that originate in your VPC, detailed information about a Resolver rule, which specifies how to route DNS queries out of the VPC. The <code>ResolverRule</code> parameter appears in the response to a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html\">CreateResolverRule</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DeleteResolverRule.html\">DeleteResolverRule</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html\">GetResolverRule</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a>, or <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverRule.html\">UpdateResolverRule</a> request.</p>"
    },
    "ResolverRuleAssociation": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the association between a Resolver rule and a VPC. Resolver assigns this value when you submit an <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html\">AssociateResolverRule</a> request.</p>"
        },
        "ResolverRuleId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver rule that you associated with the VPC that is specified by <code>VPCId</code>.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of an association between a Resolver rule and a VPC.</p>"
        },
        "VPCId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the VPC that you associated the Resolver rule with.</p>"
        },
        "Status": {
          "shape": "ResolverRuleAssociationStatus",
          "documentation": "<p>A code that specifies the current status of the association between a Resolver rule and a VPC.</p>"
        },
        "StatusMessage": {
          "shape": "StatusMessage",
          "documentation": "<p>A detailed description of the status of the association between a Resolver rule and a VPC.</p>"
        }
      },
      "documentation": "<p>In the response to an <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_AssociateResolverRule.html\">AssociateResolverRule</a>, <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html\">DisassociateResolverRule</a>, or <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a> request, provides information about an association between a Resolver rule and a VPC. The association determines which DNS queries that originate in the VPC are forwarded to your network. </p>"
    },
    "ResolverRuleAssociationStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "COMPLETE",
        "DELETING",
        "FAILED",
        "OVERRIDDEN"
      ]
    },
    "ResolverRuleAssociations": {
      "type": "list",
      "member": {
        "shape": "ResolverRuleAssociation"
      }
    },
    "ResolverRuleConfig": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>The new name for the Resolver rule. The name that you specify appears in the Resolver dashboard in the Route 53 console. </p>"
        },
        "TargetIps": {
          "shape": "TargetList",
          "documentation": "<p>For DNS queries that originate in your VPC, the new IP addresses that you want to route outbound DNS queries to.</p>"
        },
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the new outbound Resolver endpoint that you want to use to route DNS queries to the IP addresses that you specify in <code>TargetIps</code>.</p>"
        }
      },
      "documentation": "<p>In an <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverRule.html\">UpdateResolverRule</a> request, information about the changes that you want to make.</p>"
    },
    "ResolverRulePolicy": {
      "type": "string",
      "max": 5000
    },
    "ResolverRuleStatus": {
      "type": "string",
      "enum": [
        "COMPLETE",
        "DELETING",
        "UPDATING",
        "FAILED"
      ]
    },
    "ResolverRules": {
      "type": "list",
      "member": {
        "shape": "ResolverRule"
      }
    },
    "ResourceId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "Rfc3339TimeString": {
      "type": "string",
      "max": 40,
      "min": 20
    },
    "RuleTypeOption": {
      "type": "string",
      "enum": [
        "FORWARD",
        "SYSTEM",
        "RECURSIVE"
      ]
    },
    "SecurityGroupIds": {
      "type": "list",
      "member": {
        "shape": "ResourceId"
      }
    },
    "ShareStatus": {
      "type": "string",
      "enum": [
        "NOT_SHARED",
        "SHARED_WITH_ME",
        "SHARED_BY_ME"
      ]
    },
    "SortByKey": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "SortOrder": {
      "type": "string",
      "enum": [
        "ASCENDING",
        "DESCENDING"
      ]
    },
    "StatusMessage": {
      "type": "string",
      "max": 255
    },
    "SubnetId": {
      "type": "string",
      "max": 32,
      "min": 1
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
          "documentation": "<p>The name for the tag. For example, if you want to associate Resolver resources with the account IDs of your customers for billing purposes, the value of <code>Key</code> might be <code>account-id</code>.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value for the tag. For example, if <code>Key</code> is <code>account-id</code>, then <code>Value</code> might be the ID of the customer account that you're creating the resource for.</p>"
        }
      },
      "documentation": "<p>One tag that you want to add to the specified resource. A tag consists of a <code>Key</code> (a name for the tag) and a <code>Value</code>.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the resource that you want to add tags to. To get the ARN for a resource, use the applicable <code>Get</code> or <code>List</code> command: </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html\">GetResolverRule</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html\">GetResolverRuleAssociation</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a> </p> </li> </ul>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags that you want to add to the specified resource.</p>"
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
      "min": 0
    },
    "TargetAddress": {
      "type": "structure",
      "required": [
        "Ip"
      ],
      "members": {
        "Ip": {
          "shape": "Ip",
          "documentation": "<p>One IP address that you want to forward DNS queries to. You can specify only IPv4 addresses.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>The port at <code>Ip</code> that you want to forward DNS queries to.</p>",
          "box": true
        }
      },
      "documentation": "<p>In a <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_CreateResolverRule.html\">CreateResolverRule</a> request, an array of the IPs that you want to forward DNS queries to.</p>"
    },
    "TargetList": {
      "type": "list",
      "member": {
        "shape": "TargetAddress"
      },
      "min": 1
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the resource that you want to remove tags from. To get the ARN for a resource, use the applicable <code>Get</code> or <code>List</code> command: </p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html\">GetResolverEndpoint</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRule.html\">GetResolverRule</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverRuleAssociation.html\">GetResolverRuleAssociation</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverEndpoints.html\">ListResolverEndpoints</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRuleAssociations.html\">ListResolverRuleAssociations</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_ListResolverRules.html\">ListResolverRules</a> </p> </li> </ul>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tags that you want to remove to the specified resource.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateResolverEndpointRequest": {
      "type": "structure",
      "required": [
        "ResolverEndpointId"
      ],
      "members": {
        "ResolverEndpointId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver endpoint that you want to update.</p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the Resolver endpoint that you want to update.</p>",
          "box": true
        }
      }
    },
    "UpdateResolverEndpointResponse": {
      "type": "structure",
      "members": {
        "ResolverEndpoint": {
          "shape": "ResolverEndpoint",
          "documentation": "<p>The response to an <code>UpdateResolverEndpoint</code> request.</p>"
        }
      }
    },
    "UpdateResolverRuleRequest": {
      "type": "structure",
      "required": [
        "ResolverRuleId",
        "Config"
      ],
      "members": {
        "ResolverRuleId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the Resolver rule that you want to update.</p>"
        },
        "Config": {
          "shape": "ResolverRuleConfig",
          "documentation": "<p>The new settings for the Resolver rule.</p>"
        }
      }
    },
    "UpdateResolverRuleResponse": {
      "type": "structure",
      "members": {
        "ResolverRule": {
          "shape": "ResolverRule",
          "documentation": "<p>The response to an <code>UpdateResolverRule</code> request.</p>"
        }
      }
    }
  },
  "documentation": "<p>When you create a VPC using Amazon VPC, you automatically get DNS resolution within the VPC from Route 53 Resolver. By default, Resolver answers DNS queries for VPC domain names such as domain names for EC2 instances or ELB load balancers. Resolver performs recursive lookups against public name servers for all other domain names.</p> <p>You can also configure DNS resolution between your VPC and your network over a Direct Connect or VPN connection:</p> <p> <b>Forward DNS queries from resolvers on your network to Route 53 Resolver</b> </p> <p>DNS resolvers on your network can forward DNS queries to Resolver in a specified VPC. This allows your DNS resolvers to easily resolve domain names for AWS resources such as EC2 instances or records in a Route 53 private hosted zone. For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-network-to-vpc\">How DNS Resolvers on Your Network Forward DNS Queries to Route 53 Resolver</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p> <b>Conditionally forward queries from a VPC to resolvers on your network</b> </p> <p>You can configure Resolver to forward queries that it receives from EC2 instances in your VPCs to DNS resolvers on your network. To forward selected queries, you create Resolver rules that specify the domain names for the DNS queries that you want to forward (such as example.com), and the IP addresses of the DNS resolvers on your network that you want to forward the queries to. If a query matches multiple rules (example.com, acme.example.com), Resolver chooses the rule with the most specific match (acme.example.com) and forwards the query to the IP addresses that you specified in that rule. For more information, see <a href=\"https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver.html#resolver-overview-forward-vpc-to-network\">How Route 53 Resolver Forwards DNS Queries from Your VPCs to Your Network</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Like Amazon VPC, Resolver is regional. In each region where you have VPCs, you can choose whether to forward queries from your VPCs to your network (outbound queries), from your network to your VPCs (inbound queries), or both.</p>"
}
]===]))