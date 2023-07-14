local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-09-25",
    "endpointPrefix": "worklink",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "WorkLink",
    "serviceFullName": "Amazon WorkLink",
    "serviceId": "WorkLink",
    "signatureVersion": "v4",
    "signingName": "worklink",
    "uid": "worklink-2018-09-25"
  },
  "operations": {
    "AssociateDomain": {
      "name": "AssociateDomain",
      "http": {
        "method": "POST",
        "requestUri": "/associateDomain"
      },
      "input": {
        "shape": "AssociateDomainRequest"
      },
      "output": {
        "shape": "AssociateDomainResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Specifies a domain to be associated to Amazon WorkLink.</p>"
    },
    "AssociateWebsiteAuthorizationProvider": {
      "name": "AssociateWebsiteAuthorizationProvider",
      "http": {
        "method": "POST",
        "requestUri": "/associateWebsiteAuthorizationProvider"
      },
      "input": {
        "shape": "AssociateWebsiteAuthorizationProviderRequest"
      },
      "output": {
        "shape": "AssociateWebsiteAuthorizationProviderResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.</p>"
    },
    "AssociateWebsiteCertificateAuthority": {
      "name": "AssociateWebsiteCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/associateWebsiteCertificateAuthority"
      },
      "input": {
        "shape": "AssociateWebsiteCertificateAuthorityRequest"
      },
      "output": {
        "shape": "AssociateWebsiteCertificateAuthorityResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network.</p>"
    },
    "CreateFleet": {
      "name": "CreateFleet",
      "http": {
        "method": "POST",
        "requestUri": "/createFleet"
      },
      "input": {
        "shape": "CreateFleetRequest"
      },
      "output": {
        "shape": "CreateFleetResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Creates a fleet. A fleet consists of resources and the configuration that delivers associated websites to authorized users who download and set up the Amazon WorkLink app.</p>"
    },
    "DeleteFleet": {
      "name": "DeleteFleet",
      "http": {
        "method": "POST",
        "requestUri": "/deleteFleet"
      },
      "input": {
        "shape": "DeleteFleetRequest"
      },
      "output": {
        "shape": "DeleteFleetResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes a fleet. Prevents users from accessing previously associated websites. </p>"
    },
    "DescribeAuditStreamConfiguration": {
      "name": "DescribeAuditStreamConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/describeAuditStreamConfiguration"
      },
      "input": {
        "shape": "DescribeAuditStreamConfigurationRequest"
      },
      "output": {
        "shape": "DescribeAuditStreamConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Describes the configuration for delivering audit streams to the customer account.</p>"
    },
    "DescribeCompanyNetworkConfiguration": {
      "name": "DescribeCompanyNetworkConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/describeCompanyNetworkConfiguration"
      },
      "input": {
        "shape": "DescribeCompanyNetworkConfigurationRequest"
      },
      "output": {
        "shape": "DescribeCompanyNetworkConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Describes the networking configuration to access the internal websites associated with the specified fleet.</p>"
    },
    "DescribeDevice": {
      "name": "DescribeDevice",
      "http": {
        "method": "POST",
        "requestUri": "/describeDevice"
      },
      "input": {
        "shape": "DescribeDeviceRequest"
      },
      "output": {
        "shape": "DescribeDeviceResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Provides information about a user's device.</p>"
    },
    "DescribeDevicePolicyConfiguration": {
      "name": "DescribeDevicePolicyConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/describeDevicePolicyConfiguration"
      },
      "input": {
        "shape": "DescribeDevicePolicyConfigurationRequest"
      },
      "output": {
        "shape": "DescribeDevicePolicyConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Describes the device policy configuration for the specified fleet.</p>"
    },
    "DescribeDomain": {
      "name": "DescribeDomain",
      "http": {
        "method": "POST",
        "requestUri": "/describeDomain"
      },
      "input": {
        "shape": "DescribeDomainRequest"
      },
      "output": {
        "shape": "DescribeDomainResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Provides information about the domain.</p>"
    },
    "DescribeFleetMetadata": {
      "name": "DescribeFleetMetadata",
      "http": {
        "method": "POST",
        "requestUri": "/describeFleetMetadata"
      },
      "input": {
        "shape": "DescribeFleetMetadataRequest"
      },
      "output": {
        "shape": "DescribeFleetMetadataResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details.</p>"
    },
    "DescribeIdentityProviderConfiguration": {
      "name": "DescribeIdentityProviderConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/describeIdentityProviderConfiguration"
      },
      "input": {
        "shape": "DescribeIdentityProviderConfigurationRequest"
      },
      "output": {
        "shape": "DescribeIdentityProviderConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Describes the identity provider configuration of the specified fleet.</p>"
    },
    "DescribeWebsiteCertificateAuthority": {
      "name": "DescribeWebsiteCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/describeWebsiteCertificateAuthority"
      },
      "input": {
        "shape": "DescribeWebsiteCertificateAuthorityRequest"
      },
      "output": {
        "shape": "DescribeWebsiteCertificateAuthorityResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Provides information about the certificate authority.</p>"
    },
    "DisassociateDomain": {
      "name": "DisassociateDomain",
      "http": {
        "method": "POST",
        "requestUri": "/disassociateDomain"
      },
      "input": {
        "shape": "DisassociateDomainRequest"
      },
      "output": {
        "shape": "DisassociateDomainResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink. </p>"
    },
    "DisassociateWebsiteAuthorizationProvider": {
      "name": "DisassociateWebsiteAuthorizationProvider",
      "http": {
        "method": "POST",
        "requestUri": "/disassociateWebsiteAuthorizationProvider"
      },
      "input": {
        "shape": "DisassociateWebsiteAuthorizationProviderRequest"
      },
      "output": {
        "shape": "DisassociateWebsiteAuthorizationProviderResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Disassociates a website authorization provider from a specified fleet. After the disassociation, users can't load any associated websites that require this authorization provider.</p>"
    },
    "DisassociateWebsiteCertificateAuthority": {
      "name": "DisassociateWebsiteCertificateAuthority",
      "http": {
        "method": "POST",
        "requestUri": "/disassociateWebsiteCertificateAuthority"
      },
      "input": {
        "shape": "DisassociateWebsiteCertificateAuthorityRequest"
      },
      "output": {
        "shape": "DisassociateWebsiteCertificateAuthorityResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Removes a certificate authority (CA).</p>"
    },
    "ListDevices": {
      "name": "ListDevices",
      "http": {
        "method": "POST",
        "requestUri": "/listDevices"
      },
      "input": {
        "shape": "ListDevicesRequest"
      },
      "output": {
        "shape": "ListDevicesResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves a list of devices registered with the specified fleet.</p>"
    },
    "ListDomains": {
      "name": "ListDomains",
      "http": {
        "method": "POST",
        "requestUri": "/listDomains"
      },
      "input": {
        "shape": "ListDomainsRequest"
      },
      "output": {
        "shape": "ListDomainsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves a list of domains associated to a specified fleet.</p>"
    },
    "ListFleets": {
      "name": "ListFleets",
      "http": {
        "method": "POST",
        "requestUri": "/listFleets"
      },
      "input": {
        "shape": "ListFleetsRequest"
      },
      "output": {
        "shape": "ListFleetsResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves a list of fleets for the current account and Region.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{ResourceArn}"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Retrieves a list of tags for the specified resource.</p>"
    },
    "ListWebsiteAuthorizationProviders": {
      "name": "ListWebsiteAuthorizationProviders",
      "http": {
        "method": "POST",
        "requestUri": "/listWebsiteAuthorizationProviders"
      },
      "input": {
        "shape": "ListWebsiteAuthorizationProvidersRequest"
      },
      "output": {
        "shape": "ListWebsiteAuthorizationProvidersResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves a list of website authorization providers associated with a specified fleet.</p>"
    },
    "ListWebsiteCertificateAuthorities": {
      "name": "ListWebsiteCertificateAuthorities",
      "http": {
        "method": "POST",
        "requestUri": "/listWebsiteCertificateAuthorities"
      },
      "input": {
        "shape": "ListWebsiteCertificateAuthoritiesRequest"
      },
      "output": {
        "shape": "ListWebsiteCertificateAuthoritiesResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves a list of certificate authorities added for the current account and Region.</p>"
    },
    "RestoreDomainAccess": {
      "name": "RestoreDomainAccess",
      "http": {
        "method": "POST",
        "requestUri": "/restoreDomainAccess"
      },
      "input": {
        "shape": "RestoreDomainAccessRequest"
      },
      "output": {
        "shape": "RestoreDomainAccessResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Moves a domain to ACTIVE status if it was in the INACTIVE status.</p>"
    },
    "RevokeDomainAccess": {
      "name": "RevokeDomainAccess",
      "http": {
        "method": "POST",
        "requestUri": "/revokeDomainAccess"
      },
      "input": {
        "shape": "RevokeDomainAccessRequest"
      },
      "output": {
        "shape": "RevokeDomainAccessResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Moves a domain to INACTIVE status if it was in the ACTIVE status.</p>"
    },
    "SignOutUser": {
      "name": "SignOutUser",
      "http": {
        "method": "POST",
        "requestUri": "/signOutUser"
      },
      "input": {
        "shape": "SignOutUserRequest"
      },
      "output": {
        "shape": "SignOutUserResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Signs the user out from all of their devices. The user can sign in again if they have valid credentials.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{ResourceArn}"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Adds or overwrites one or more tags for the specified resource, such as a fleet. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{ResourceArn}"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        }
      ],
      "documentation": "<p>Removes one or more tags from the specified resource.</p>"
    },
    "UpdateAuditStreamConfiguration": {
      "name": "UpdateAuditStreamConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/updateAuditStreamConfiguration"
      },
      "input": {
        "shape": "UpdateAuditStreamConfigurationRequest"
      },
      "output": {
        "shape": "UpdateAuditStreamConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates the audit stream configuration for the fleet.</p>"
    },
    "UpdateCompanyNetworkConfiguration": {
      "name": "UpdateCompanyNetworkConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/updateCompanyNetworkConfiguration"
      },
      "input": {
        "shape": "UpdateCompanyNetworkConfigurationRequest"
      },
      "output": {
        "shape": "UpdateCompanyNetworkConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates the company network configuration for the fleet.</p>"
    },
    "UpdateDevicePolicyConfiguration": {
      "name": "UpdateDevicePolicyConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/updateDevicePolicyConfiguration"
      },
      "input": {
        "shape": "UpdateDevicePolicyConfigurationRequest"
      },
      "output": {
        "shape": "UpdateDevicePolicyConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates the device policy configuration for the fleet.</p>"
    },
    "UpdateDomainMetadata": {
      "name": "UpdateDomainMetadata",
      "http": {
        "method": "POST",
        "requestUri": "/updateDomainMetadata"
      },
      "input": {
        "shape": "UpdateDomainMetadataRequest"
      },
      "output": {
        "shape": "UpdateDomainMetadataResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates domain metadata, such as DisplayName.</p>"
    },
    "UpdateFleetMetadata": {
      "name": "UpdateFleetMetadata",
      "http": {
        "method": "POST",
        "requestUri": "/UpdateFleetMetadata"
      },
      "input": {
        "shape": "UpdateFleetMetadataRequest"
      },
      "output": {
        "shape": "UpdateFleetMetadataResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates fleet metadata, such as DisplayName.</p>"
    },
    "UpdateIdentityProviderConfiguration": {
      "name": "UpdateIdentityProviderConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/updateIdentityProviderConfiguration"
      },
      "input": {
        "shape": "UpdateIdentityProviderConfigurationRequest"
      },
      "output": {
        "shape": "UpdateIdentityProviderConfigurationResponse"
      },
      "errors": [
        {
          "shape": "UnauthorizedException"
        },
        {
          "shape": "InternalServerErrorException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Updates the identity provider configuration for the fleet.</p>"
    }
  },
  "shapes": {
    "AcmCertificateArn": {
      "type": "string",
      "pattern": "arn:[\\w+=/,.@-]+:[\\w+=/,.@-]+:[\\w+=/,.@-]*:[0-9]+:[\\w+=,.@-]+(/[\\w+=/,.@-]+)*"
    },
    "AssociateDomainRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "DomainName",
        "AcmCertificateArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The fully qualified domain name (FQDN).</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The name to display.</p>"
        },
        "AcmCertificateArn": {
          "shape": "AcmCertificateArn",
          "documentation": "<p>The ARN of an issued ACM certificate that is valid for the domain being associated.</p>"
        }
      }
    },
    "AssociateDomainResponse": {
      "type": "structure",
      "members": {}
    },
    "AssociateWebsiteAuthorizationProviderRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "AuthorizationProviderType"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "AuthorizationProviderType": {
          "shape": "AuthorizationProviderType",
          "documentation": "<p>The authorization provider type.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The domain name of the authorization provider. This applies only to SAML-based authorization providers.</p>"
        }
      }
    },
    "AssociateWebsiteAuthorizationProviderResponse": {
      "type": "structure",
      "members": {
        "AuthorizationProviderId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the authorization provider.</p>"
        }
      }
    },
    "AssociateWebsiteCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "Certificate"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "Certificate": {
          "shape": "Certificate",
          "documentation": "<p>The root certificate of the CA.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The certificate name to display.</p>"
        }
      }
    },
    "AssociateWebsiteCertificateAuthorityResponse": {
      "type": "structure",
      "members": {
        "WebsiteCaId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the CA.</p>"
        }
      }
    },
    "AuditStreamArn": {
      "type": "string",
      "pattern": "^arn:aws:kinesis:.+:[0-9]{12}:stream/AmazonWorkLink-.*$"
    },
    "AuthorizationProviderType": {
      "type": "string",
      "enum": [
        "SAML"
      ]
    },
    "Boolean": {
      "type": "boolean"
    },
    "Certificate": {
      "type": "string",
      "max": 8192,
      "min": 1,
      "pattern": "-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?"
    },
    "CertificateChain": {
      "type": "string",
      "max": 32768,
      "min": 1,
      "pattern": "(-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}\\u000D?\\u000A)*-{5}BEGIN CERTIFICATE-{5}\\u000D?\\u000A([A-Za-z0-9/+]{64}\\u000D?\\u000A)*[A-Za-z0-9/+]{1,64}={0,2}\\u000D?\\u000A-{5}END CERTIFICATE-{5}(\\u000D?\\u000A)?"
    },
    "CompanyCode": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "CreateFleetRequest": {
      "type": "structure",
      "required": [
        "FleetName"
      ],
      "members": {
        "FleetName": {
          "shape": "FleetName",
          "documentation": "<p>A unique name for the fleet.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The fleet name to display.</p>"
        },
        "OptimizeForEndUserLocation": {
          "shape": "Boolean",
          "documentation": "<p>The option to optimize for better performance by routing traffic through the closest AWS Region to users, which may be outside of your home Region.</p>"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p> The tags to add to the resource. A tag is a key-value pair.</p>"
        }
      }
    },
    "CreateFleetResponse": {
      "type": "structure",
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        }
      }
    },
    "DateTime": {
      "type": "timestamp"
    },
    "DeleteFleetRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        }
      }
    },
    "DeleteFleetResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeAuditStreamConfigurationRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        }
      }
    },
    "DescribeAuditStreamConfigurationResponse": {
      "type": "structure",
      "members": {
        "AuditStreamArn": {
          "shape": "AuditStreamArn",
          "documentation": "<p>The ARN of the Amazon Kinesis data stream that will receive the audit events.</p>"
        }
      }
    },
    "DescribeCompanyNetworkConfigurationRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        }
      }
    },
    "DescribeCompanyNetworkConfigurationResponse": {
      "type": "structure",
      "members": {
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The VPC with connectivity to associated websites.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The subnets used for X-ENI connections from Amazon WorkLink rendering containers.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The security groups associated with access to the provided subnets.</p>"
        }
      }
    },
    "DescribeDevicePolicyConfigurationRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        }
      }
    },
    "DescribeDevicePolicyConfigurationResponse": {
      "type": "structure",
      "members": {
        "DeviceCaCertificate": {
          "shape": "Certificate",
          "documentation": "<p>The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates.</p>"
        }
      }
    },
    "DescribeDeviceRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "DeviceId"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "DeviceId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for a registered user's device.</p>"
        }
      }
    },
    "DescribeDeviceResponse": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "DeviceStatus",
          "documentation": "<p>The current state of the device.</p>"
        },
        "Model": {
          "shape": "DeviceModel",
          "documentation": "<p>The model of the device.</p>"
        },
        "Manufacturer": {
          "shape": "DeviceManufacturer",
          "documentation": "<p>The manufacturer of the device.</p>"
        },
        "OperatingSystem": {
          "shape": "DeviceOperatingSystemName",
          "documentation": "<p>The operating system of the device.</p>"
        },
        "OperatingSystemVersion": {
          "shape": "DeviceOperatingSystemVersion",
          "documentation": "<p>The operating system version of the device.</p>"
        },
        "PatchLevel": {
          "shape": "DevicePatchLevel",
          "documentation": "<p>The operating system patch level of the device.</p>"
        },
        "FirstAccessedTime": {
          "shape": "DateTime",
          "documentation": "<p>The date that the device first signed in to Amazon WorkLink.</p>"
        },
        "LastAccessedTime": {
          "shape": "DateTime",
          "documentation": "<p>The date that the device last accessed Amazon WorkLink.</p>"
        },
        "Username": {
          "shape": "Username",
          "documentation": "<p>The user name associated with the device.</p>"
        }
      }
    },
    "DescribeDomainRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "DomainName"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain.</p>"
        }
      }
    },
    "DescribeDomainResponse": {
      "type": "structure",
      "members": {
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The name to display.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time that the domain was added.</p>"
        },
        "DomainStatus": {
          "shape": "DomainStatus",
          "documentation": "<p>The current state for the domain.</p>"
        },
        "AcmCertificateArn": {
          "shape": "AcmCertificateArn",
          "documentation": "<p>The ARN of an issued ACM certificate that is valid for the domain being associated.</p>"
        }
      }
    },
    "DescribeFleetMetadataRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        }
      }
    },
    "DescribeFleetMetadataResponse": {
      "type": "structure",
      "members": {
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time that the fleet was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time that the fleet was last updated.</p>"
        },
        "FleetName": {
          "shape": "FleetName",
          "documentation": "<p>The name of the fleet.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The name to display.</p>"
        },
        "OptimizeForEndUserLocation": {
          "shape": "Boolean",
          "documentation": "<p>The option to optimize for better performance by routing traffic through the closest AWS Region to users, which may be outside of your home Region.</p>"
        },
        "CompanyCode": {
          "shape": "CompanyCode",
          "documentation": "<p>The identifier used by users to sign in to the Amazon WorkLink app.</p>"
        },
        "FleetStatus": {
          "shape": "FleetStatus",
          "documentation": "<p>The current state of the fleet.</p>"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags attached to the resource. A tag is a key-value pair.</p>"
        }
      }
    },
    "DescribeIdentityProviderConfigurationRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        }
      }
    },
    "DescribeIdentityProviderConfigurationResponse": {
      "type": "structure",
      "members": {
        "IdentityProviderType": {
          "shape": "IdentityProviderType",
          "documentation": "<p>The type of identity provider.</p>"
        },
        "ServiceProviderSamlMetadata": {
          "shape": "SamlMetadata",
          "documentation": "<p>The SAML metadata document uploaded to the user’s identity provider.</p>"
        },
        "IdentityProviderSamlMetadata": {
          "shape": "SamlMetadata",
          "documentation": "<p>The SAML metadata document provided by the user’s identity provider.</p>"
        }
      }
    },
    "DescribeWebsiteCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "WebsiteCaId"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "WebsiteCaId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the certificate authority.</p>"
        }
      }
    },
    "DescribeWebsiteCertificateAuthorityResponse": {
      "type": "structure",
      "members": {
        "Certificate": {
          "shape": "Certificate",
          "documentation": "<p>The root certificate of the certificate authority.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time that the certificate authority was added.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The certificate name to display.</p>"
        }
      }
    },
    "DeviceManufacturer": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DeviceModel": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DeviceOperatingSystemName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DeviceOperatingSystemVersion": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DevicePatchLevel": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DeviceStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "SIGNED_OUT"
      ]
    },
    "DeviceSummary": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "Id",
          "documentation": "<p>The ID of the device.</p>"
        },
        "DeviceStatus": {
          "shape": "DeviceStatus",
          "documentation": "<p>The status of the device.</p>"
        }
      },
      "documentation": "<p>The summary of devices.</p>"
    },
    "DeviceSummaryList": {
      "type": "list",
      "member": {
        "shape": "DeviceSummary"
      }
    },
    "DisassociateDomainRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "DomainName"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain.</p>"
        }
      }
    },
    "DisassociateDomainResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateWebsiteAuthorizationProviderRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "AuthorizationProviderId"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "AuthorizationProviderId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the authorization provider.</p>"
        }
      }
    },
    "DisassociateWebsiteAuthorizationProviderResponse": {
      "type": "structure",
      "members": {}
    },
    "DisassociateWebsiteCertificateAuthorityRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "WebsiteCaId"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "WebsiteCaId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the CA.</p>"
        }
      }
    },
    "DisassociateWebsiteCertificateAuthorityResponse": {
      "type": "structure",
      "members": {}
    },
    "DisplayName": {
      "type": "string",
      "max": 100
    },
    "DomainName": {
      "type": "string",
      "max": 253,
      "min": 1,
      "pattern": "^[a-zA-Z0-9]?((?!-)([A-Za-z0-9-]*[A-Za-z0-9])\\.)+[a-zA-Z0-9]+$"
    },
    "DomainStatus": {
      "type": "string",
      "enum": [
        "PENDING_VALIDATION",
        "ASSOCIATING",
        "ACTIVE",
        "INACTIVE",
        "DISASSOCIATING",
        "DISASSOCIATED",
        "FAILED_TO_ASSOCIATE",
        "FAILED_TO_DISASSOCIATE"
      ]
    },
    "DomainSummary": {
      "type": "structure",
      "required": [
        "DomainName",
        "CreatedTime",
        "DomainStatus"
      ],
      "members": {
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The name to display.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time that the domain was created.</p>"
        },
        "DomainStatus": {
          "shape": "DomainStatus",
          "documentation": "<p>The status of the domain.</p>"
        }
      },
      "documentation": "<p>The summary of the domain.</p>"
    },
    "DomainSummaryList": {
      "type": "list",
      "member": {
        "shape": "DomainSummary"
      }
    },
    "FleetArn": {
      "type": "string",
      "max": 2048,
      "min": 20
    },
    "FleetName": {
      "type": "string",
      "max": 48,
      "min": 1,
      "pattern": "^[a-z0-9](?:[a-z0-9\\-]{0,46}[a-z0-9])?$"
    },
    "FleetStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "DELETING",
        "DELETED",
        "FAILED_TO_CREATE",
        "FAILED_TO_DELETE"
      ]
    },
    "FleetSummary": {
      "type": "structure",
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time when the fleet was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time when the fleet was last updated.</p>"
        },
        "FleetName": {
          "shape": "FleetName",
          "documentation": "<p>The name of the fleet.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The name of the fleet to display.</p>"
        },
        "CompanyCode": {
          "shape": "CompanyCode",
          "documentation": "<p>The identifier used by users to sign into the Amazon WorkLink app.</p>"
        },
        "FleetStatus": {
          "shape": "FleetStatus",
          "documentation": "<p>The status of the fleet.</p>"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags attached to the resource. A tag is a key-value pair.</p>"
        }
      },
      "documentation": "<p>The summary of the fleet.</p>"
    },
    "FleetSummaryList": {
      "type": "list",
      "member": {
        "shape": "FleetSummary"
      }
    },
    "Id": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "IdentityProviderType": {
      "type": "string",
      "enum": [
        "SAML"
      ]
    },
    "ListDevicesRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be included in the next page.</p>"
        }
      }
    },
    "ListDevicesResponse": {
      "type": "structure",
      "members": {
        "Devices": {
          "shape": "DeviceSummaryList",
          "documentation": "<p>Information about the devices.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
        }
      }
    },
    "ListDomainsRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be included in the next page.</p>"
        }
      }
    },
    "ListDomainsResponse": {
      "type": "structure",
      "members": {
        "Domains": {
          "shape": "DomainSummaryList",
          "documentation": "<p>Information about the domains.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
        }
      }
    },
    "ListFleetsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be included in the next page.</p>"
        }
      }
    },
    "ListFleetsResponse": {
      "type": "structure",
      "members": {
        "FleetSummaryList": {
          "shape": "FleetSummaryList",
          "documentation": "<p>The summary list of the fleets.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
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
          "shape": "FleetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>",
          "location": "uri",
          "locationName": "ResourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags attached to the resource. A tag is a key-value pair.</p>"
        }
      }
    },
    "ListWebsiteAuthorizationProvidersRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be included in the next page.</p>"
        }
      }
    },
    "ListWebsiteAuthorizationProvidersResponse": {
      "type": "structure",
      "members": {
        "WebsiteAuthorizationProviders": {
          "shape": "WebsiteAuthorizationProvidersSummaryList",
          "documentation": "<p>The website authorization providers.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
        }
      }
    },
    "ListWebsiteCertificateAuthoritiesRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be included in the next page.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
        }
      }
    },
    "ListWebsiteCertificateAuthoritiesResponse": {
      "type": "structure",
      "members": {
        "WebsiteCertificateAuthorities": {
          "shape": "WebsiteCaSummaryList",
          "documentation": "<p>Information about the certificates.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token used to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 4096,
      "min": 1,
      "pattern": "[\\w\\-]+"
    },
    "RestoreDomainAccessRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "DomainName"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain.</p>"
        }
      }
    },
    "RestoreDomainAccessResponse": {
      "type": "structure",
      "members": {}
    },
    "RevokeDomainAccessRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "DomainName"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain.</p>"
        }
      }
    },
    "RevokeDomainAccessResponse": {
      "type": "structure",
      "members": {}
    },
    "SamlMetadata": {
      "type": "string",
      "max": 204800,
      "min": 1
    },
    "SecurityGroupId": {
      "type": "string",
      "pattern": "^sg-([0-9a-f]{8}|[0-9a-f]{17})$"
    },
    "SecurityGroupIds": {
      "type": "list",
      "member": {
        "shape": "SecurityGroupId"
      },
      "max": 5
    },
    "SignOutUserRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "Username"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "Username": {
          "shape": "Username",
          "documentation": "<p>The name of the user.</p>"
        }
      }
    },
    "SignOutUserResponse": {
      "type": "structure",
      "members": {}
    },
    "SubnetId": {
      "type": "string",
      "pattern": "^subnet-([0-9a-f]{8}|[0-9a-f]{17})$"
    },
    "SubnetIds": {
      "type": "list",
      "member": {
        "shape": "SubnetId"
      }
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
      "max": 50,
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
      "max": 50,
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
          "shape": "FleetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>",
          "location": "uri",
          "locationName": "ResourceArn"
        },
        "Tags": {
          "shape": "TagMap",
          "documentation": "<p>The tags to add to the resource. A tag is a key-value pair.</p>"
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
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "FleetArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the fleet.</p>",
          "location": "uri",
          "locationName": "ResourceArn"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The list of tag keys to remove from the resource.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateAuditStreamConfigurationRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "AuditStreamArn": {
          "shape": "AuditStreamArn",
          "documentation": "<p>The ARN of the Amazon Kinesis data stream that receives the audit events.</p>"
        }
      }
    },
    "UpdateAuditStreamConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateCompanyNetworkConfigurationRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "VpcId",
        "SubnetIds",
        "SecurityGroupIds"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>The VPC with connectivity to associated websites.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The subnets used for X-ENI connections from Amazon WorkLink rendering containers.</p>"
        },
        "SecurityGroupIds": {
          "shape": "SecurityGroupIds",
          "documentation": "<p>The security groups associated with access to the provided subnets.</p>"
        }
      }
    },
    "UpdateCompanyNetworkConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDevicePolicyConfigurationRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "DeviceCaCertificate": {
          "shape": "CertificateChain",
          "documentation": "<p>The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates.</p>"
        }
      }
    },
    "UpdateDevicePolicyConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDomainMetadataRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "DomainName"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The name of the domain.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The name to display.</p>"
        }
      }
    },
    "UpdateDomainMetadataResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateFleetMetadataRequest": {
      "type": "structure",
      "required": [
        "FleetArn"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The fleet name to display. The existing DisplayName is unset if null is passed.</p>"
        },
        "OptimizeForEndUserLocation": {
          "shape": "Boolean",
          "documentation": "<p>The option to optimize for better performance by routing traffic through the closest AWS Region to users, which may be outside of your home Region.</p>"
        }
      }
    },
    "UpdateFleetMetadataResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateIdentityProviderConfigurationRequest": {
      "type": "structure",
      "required": [
        "FleetArn",
        "IdentityProviderType"
      ],
      "members": {
        "FleetArn": {
          "shape": "FleetArn",
          "documentation": "<p>The ARN of the fleet.</p>"
        },
        "IdentityProviderType": {
          "shape": "IdentityProviderType",
          "documentation": "<p>The type of identity provider.</p>"
        },
        "IdentityProviderSamlMetadata": {
          "shape": "SamlMetadata",
          "documentation": "<p>The SAML metadata document provided by the customer’s identity provider. The existing IdentityProviderSamlMetadata is unset if null is passed.</p>"
        }
      }
    },
    "UpdateIdentityProviderConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "Username": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "VpcId": {
      "type": "string",
      "pattern": "^vpc-([0-9a-f]{8}|[0-9a-f]{17})$"
    },
    "WebsiteAuthorizationProviderSummary": {
      "type": "structure",
      "required": [
        "AuthorizationProviderType"
      ],
      "members": {
        "AuthorizationProviderId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the authorization provider.</p>"
        },
        "AuthorizationProviderType": {
          "shape": "AuthorizationProviderType",
          "documentation": "<p>The authorization provider type.</p>"
        },
        "DomainName": {
          "shape": "DomainName",
          "documentation": "<p>The domain name of the authorization provider. This applies only to SAML-based authorization providers.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time of creation.</p>"
        }
      },
      "documentation": "<p>The summary of the website authorization provider.</p>"
    },
    "WebsiteAuthorizationProvidersSummaryList": {
      "type": "list",
      "member": {
        "shape": "WebsiteAuthorizationProviderSummary"
      }
    },
    "WebsiteCaSummary": {
      "type": "structure",
      "members": {
        "WebsiteCaId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the CA.</p>"
        },
        "CreatedTime": {
          "shape": "DateTime",
          "documentation": "<p>The time when the CA was added.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The name to display.</p>"
        }
      },
      "documentation": "<p>The summary of the certificate authority (CA).</p>"
    },
    "WebsiteCaSummaryList": {
      "type": "list",
      "member": {
        "shape": "WebsiteCaSummary"
      }
    }
  },
  "documentation": "<p>Amazon WorkLink is a cloud-based service that provides secure access to internal websites and web apps from iOS and Android phones. In a single step, your users, such as employees, can access internal websites as efficiently as they access any other public website. They enter a URL in their web browser, or choose a link to an internal website in an email. Amazon WorkLink authenticates the user's access and securely renders authorized internal web content in a secure rendering service in the AWS cloud. Amazon WorkLink doesn't download or store any internal web content on mobile devices.</p>"
}
]===]))