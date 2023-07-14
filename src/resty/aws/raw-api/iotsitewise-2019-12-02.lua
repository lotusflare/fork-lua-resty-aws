local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-12-02",
    "endpointPrefix": "iotsitewise",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "AWS IoT SiteWise",
    "serviceId": "IoTSiteWise",
    "signatureVersion": "v4",
    "signingName": "iotsitewise",
    "uid": "iotsitewise-2019-12-02"
  },
  "operations": {
    "AssociateAssets": {
      "name": "AssociateAssets",
      "http": {
        "method": "POST",
        "requestUri": "/assets/{assetId}/associate"
      },
      "input": {
        "shape": "AssociateAssetsRequest"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Associates a child asset with the given parent asset through a hierarchy defined in the parent asset's model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/add-associated-assets.html\">Associating assets</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "BatchAssociateProjectAssets": {
      "name": "BatchAssociateProjectAssets",
      "http": {
        "method": "POST",
        "requestUri": "/projects/{projectId}/assets/associate",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchAssociateProjectAssetsRequest"
      },
      "output": {
        "shape": "BatchAssociateProjectAssetsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Associates a group (batch) of assets with an AWS IoT SiteWise Monitor project.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "BatchDisassociateProjectAssets": {
      "name": "BatchDisassociateProjectAssets",
      "http": {
        "method": "POST",
        "requestUri": "/projects/{projectId}/assets/disassociate",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchDisassociateProjectAssetsRequest"
      },
      "output": {
        "shape": "BatchDisassociateProjectAssetsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Disassociates a group (batch) of assets from an AWS IoT SiteWise Monitor project.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "BatchPutAssetPropertyValue": {
      "name": "BatchPutAssetPropertyValue",
      "http": {
        "method": "POST",
        "requestUri": "/properties"
      },
      "input": {
        "shape": "BatchPutAssetPropertyValueRequest"
      },
      "output": {
        "shape": "BatchPutAssetPropertyValueResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Sends a list of asset property values to AWS IoT SiteWise. Each value is a timestamp-quality-value (TQV) data point. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/ingest-api.html\">Ingesting data using the API</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>To identify an asset property, you must specify one of the following:</p> <ul> <li> <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p> </li> <li> <p>A <code>propertyAlias</code>, which is a data stream alias (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p> </li> </ul> <important> <p>With respect to Unix epoch time, AWS IoT SiteWise accepts only TQVs that have a timestamp of no more than 15 minutes in the past and no more than 5 minutes in the future. AWS IoT SiteWise rejects timestamps outside of the inclusive range of [-15, +5] minutes and returns a <code>TimestampOutOfRangeException</code> error.</p> <p>For each asset property, AWS IoT SiteWise overwrites TQVs with duplicate timestamps unless the newer TQV has a different quality. For example, if you store a TQV <code>{T1, GOOD, V1}</code>, then storing <code>{T1, GOOD, V2}</code> replaces the existing TQV.</p> </important> <p>AWS IoT SiteWise authorizes access to each <code>BatchPutAssetPropertyValue</code> entry individually. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-batchputassetpropertyvalue-action\">BatchPutAssetPropertyValue authorization</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
      "endpoint": {
        "hostPrefix": "data."
      }
    },
    "CreateAccessPolicy": {
      "name": "CreateAccessPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/access-policies",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateAccessPolicyRequest"
      },
      "output": {
        "shape": "CreateAccessPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates an access policy that grants the specified AWS Single Sign-On user or group access to the specified AWS IoT SiteWise Monitor portal or project resource.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "CreateAsset": {
      "name": "CreateAsset",
      "http": {
        "method": "POST",
        "requestUri": "/assets",
        "responseCode": 202
      },
      "input": {
        "shape": "CreateAssetRequest"
      },
      "output": {
        "shape": "CreateAssetResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Creates an asset from an existing asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-assets.html\">Creating assets</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "CreateAssetModel": {
      "name": "CreateAssetModel",
      "http": {
        "method": "POST",
        "requestUri": "/asset-models",
        "responseCode": 202
      },
      "input": {
        "shape": "CreateAssetModelRequest"
      },
      "output": {
        "shape": "CreateAssetModelResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Creates an asset model from specified property and hierarchy definitions. You create assets from asset models. With asset models, you can easily create assets of the same type that have standardized definitions. Each asset created from a model inherits the asset model's property and hierarchy definitions. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/define-models.html\">Defining asset models</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "CreateDashboard": {
      "name": "CreateDashboard",
      "http": {
        "method": "POST",
        "requestUri": "/dashboards",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateDashboardRequest"
      },
      "output": {
        "shape": "CreateDashboardResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a dashboard in an AWS IoT SiteWise Monitor project.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "CreateGateway": {
      "name": "CreateGateway",
      "http": {
        "method": "POST",
        "requestUri": "/20200301/gateways",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateGatewayRequest"
      },
      "output": {
        "shape": "CreateGatewayResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a gateway, which is a virtual or edge device that delivers industrial data streams from local servers to AWS IoT SiteWise. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html\">Ingesting data using a gateway</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
      "endpoint": {
        "hostPrefix": "edge."
      }
    },
    "CreatePortal": {
      "name": "CreatePortal",
      "http": {
        "method": "POST",
        "requestUri": "/portals",
        "responseCode": 202
      },
      "input": {
        "shape": "CreatePortalRequest"
      },
      "output": {
        "shape": "CreatePortalResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a portal, which can contain projects and dashboards. Before you can create a portal, you must enable AWS Single Sign-On. AWS IoT SiteWise Monitor uses AWS SSO to manage user permissions. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-get-started.html#mon-gs-sso\">Enabling AWS SSO</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <note> <p>Before you can sign in to a new portal, you must add at least one AWS SSO user or group to that portal. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/administer-portals.html#portal-change-admins\">Adding or removing portal administrators</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> </note>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "CreateProject": {
      "name": "CreateProject",
      "http": {
        "method": "POST",
        "requestUri": "/projects",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateProjectRequest"
      },
      "output": {
        "shape": "CreateProjectResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a project in the specified portal.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DeleteAccessPolicy": {
      "name": "DeleteAccessPolicy",
      "http": {
        "method": "DELETE",
        "requestUri": "/access-policies/{accessPolicyId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteAccessPolicyRequest"
      },
      "output": {
        "shape": "DeleteAccessPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes an access policy that grants the specified AWS Single Sign-On identity access to the specified AWS IoT SiteWise Monitor resource. You can use this operation to revoke access to an AWS IoT SiteWise Monitor resource.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DeleteAsset": {
      "name": "DeleteAsset",
      "http": {
        "method": "DELETE",
        "requestUri": "/assets/{assetId}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteAssetRequest"
      },
      "output": {
        "shape": "DeleteAssetResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Deletes an asset. This action can't be undone. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html\">Deleting assets and models</a> in the <i>AWS IoT SiteWise User Guide</i>. </p> <note> <p>You can't delete an asset that's associated to another asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DisassociateAssets.html\">DisassociateAssets</a>.</p> </note>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "DeleteAssetModel": {
      "name": "DeleteAssetModel",
      "http": {
        "method": "DELETE",
        "requestUri": "/asset-models/{assetModelId}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeleteAssetModelRequest"
      },
      "output": {
        "shape": "DeleteAssetModelResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Deletes an asset model. This action can't be undone. You must delete all assets created from an asset model before you can delete the model. Also, you can't delete an asset model if a parent asset model exists that contains a property formula expression that depends on the asset model that you want to delete. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/delete-assets-and-models.html\">Deleting assets and models</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "DeleteDashboard": {
      "name": "DeleteDashboard",
      "http": {
        "method": "DELETE",
        "requestUri": "/dashboards/{dashboardId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteDashboardRequest"
      },
      "output": {
        "shape": "DeleteDashboardResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes a dashboard from AWS IoT SiteWise Monitor.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DeleteGateway": {
      "name": "DeleteGateway",
      "http": {
        "method": "DELETE",
        "requestUri": "/20200301/gateways/{gatewayId}"
      },
      "input": {
        "shape": "DeleteGatewayRequest"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes a gateway from AWS IoT SiteWise. When you delete a gateway, some of the gateway's files remain in your gateway's file system. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/data-retention.html\">Data retention</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
      "endpoint": {
        "hostPrefix": "edge."
      }
    },
    "DeletePortal": {
      "name": "DeletePortal",
      "http": {
        "method": "DELETE",
        "requestUri": "/portals/{portalId}",
        "responseCode": 202
      },
      "input": {
        "shape": "DeletePortalRequest"
      },
      "output": {
        "shape": "DeletePortalResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Deletes a portal from AWS IoT SiteWise Monitor.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DeleteProject": {
      "name": "DeleteProject",
      "http": {
        "method": "DELETE",
        "requestUri": "/projects/{projectId}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteProjectRequest"
      },
      "output": {
        "shape": "DeleteProjectResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes a project from AWS IoT SiteWise Monitor.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DescribeAccessPolicy": {
      "name": "DescribeAccessPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/access-policies/{accessPolicyId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeAccessPolicyRequest"
      },
      "output": {
        "shape": "DescribeAccessPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Describes an access policy, which specifies an AWS SSO user or group's access to an AWS IoT SiteWise Monitor portal or project.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DescribeAsset": {
      "name": "DescribeAsset",
      "http": {
        "method": "GET",
        "requestUri": "/assets/{assetId}"
      },
      "input": {
        "shape": "DescribeAssetRequest"
      },
      "output": {
        "shape": "DescribeAssetResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves information about an asset.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "DescribeAssetModel": {
      "name": "DescribeAssetModel",
      "http": {
        "method": "GET",
        "requestUri": "/asset-models/{assetModelId}"
      },
      "input": {
        "shape": "DescribeAssetModelRequest"
      },
      "output": {
        "shape": "DescribeAssetModelResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves information about an asset model.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "DescribeAssetProperty": {
      "name": "DescribeAssetProperty",
      "http": {
        "method": "GET",
        "requestUri": "/assets/{assetId}/properties/{propertyId}"
      },
      "input": {
        "shape": "DescribeAssetPropertyRequest"
      },
      "output": {
        "shape": "DescribeAssetPropertyResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves information about an asset property.</p> <note> <p>When you call this operation for an attribute property, this response includes the default attribute value that you define in the asset model. If you update the default value in the model, this operation's response includes the new default value.</p> </note> <p>This operation doesn't return the value of the asset property. To get the value of an asset property, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_GetAssetPropertyValue.html\">GetAssetPropertyValue</a>.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "DescribeDashboard": {
      "name": "DescribeDashboard",
      "http": {
        "method": "GET",
        "requestUri": "/dashboards/{dashboardId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeDashboardRequest"
      },
      "output": {
        "shape": "DescribeDashboardResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves information about a dashboard.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DescribeGateway": {
      "name": "DescribeGateway",
      "http": {
        "method": "GET",
        "requestUri": "/20200301/gateways/{gatewayId}"
      },
      "input": {
        "shape": "DescribeGatewayRequest"
      },
      "output": {
        "shape": "DescribeGatewayResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves information about a gateway.</p>",
      "endpoint": {
        "hostPrefix": "edge."
      }
    },
    "DescribeGatewayCapabilityConfiguration": {
      "name": "DescribeGatewayCapabilityConfiguration",
      "http": {
        "method": "GET",
        "requestUri": "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}"
      },
      "input": {
        "shape": "DescribeGatewayCapabilityConfigurationRequest"
      },
      "output": {
        "shape": "DescribeGatewayCapabilityConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves information about a gateway capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html\">DescribeGateway</a>.</p>",
      "endpoint": {
        "hostPrefix": "edge."
      }
    },
    "DescribeLoggingOptions": {
      "name": "DescribeLoggingOptions",
      "http": {
        "method": "GET",
        "requestUri": "/logging"
      },
      "input": {
        "shape": "DescribeLoggingOptionsRequest"
      },
      "output": {
        "shape": "DescribeLoggingOptionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the current AWS IoT SiteWise logging options.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "DescribePortal": {
      "name": "DescribePortal",
      "http": {
        "method": "GET",
        "requestUri": "/portals/{portalId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribePortalRequest"
      },
      "output": {
        "shape": "DescribePortalResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves information about a portal.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DescribeProject": {
      "name": "DescribeProject",
      "http": {
        "method": "GET",
        "requestUri": "/projects/{projectId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeProjectRequest"
      },
      "output": {
        "shape": "DescribeProjectResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves information about a project.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "DisassociateAssets": {
      "name": "DisassociateAssets",
      "http": {
        "method": "POST",
        "requestUri": "/assets/{assetId}/disassociate"
      },
      "input": {
        "shape": "DisassociateAssetsRequest"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Disassociates a child asset from the given parent asset through a hierarchy defined in the parent asset's model.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "GetAssetPropertyAggregates": {
      "name": "GetAssetPropertyAggregates",
      "http": {
        "method": "GET",
        "requestUri": "/properties/aggregates"
      },
      "input": {
        "shape": "GetAssetPropertyAggregatesRequest"
      },
      "output": {
        "shape": "GetAssetPropertyAggregatesResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Gets aggregated values for an asset property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#aggregates\">Querying aggregates</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>To identify an asset property, you must specify one of the following:</p> <ul> <li> <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p> </li> <li> <p>A <code>propertyAlias</code>, which is a data stream alias (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p> </li> </ul>",
      "endpoint": {
        "hostPrefix": "data."
      }
    },
    "GetAssetPropertyValue": {
      "name": "GetAssetPropertyValue",
      "http": {
        "method": "GET",
        "requestUri": "/properties/latest"
      },
      "input": {
        "shape": "GetAssetPropertyValueRequest"
      },
      "output": {
        "shape": "GetAssetPropertyValueResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Gets an asset property's current value. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#current-values\">Querying current values</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>To identify an asset property, you must specify one of the following:</p> <ul> <li> <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p> </li> <li> <p>A <code>propertyAlias</code>, which is a data stream alias (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p> </li> </ul>",
      "endpoint": {
        "hostPrefix": "data."
      }
    },
    "GetAssetPropertyValueHistory": {
      "name": "GetAssetPropertyValueHistory",
      "http": {
        "method": "GET",
        "requestUri": "/properties/history"
      },
      "input": {
        "shape": "GetAssetPropertyValueHistoryRequest"
      },
      "output": {
        "shape": "GetAssetPropertyValueHistoryResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Gets the history of an asset property's values. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/query-industrial-data.html#historical-values\">Querying historical values</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>To identify an asset property, you must specify one of the following:</p> <ul> <li> <p>The <code>assetId</code> and <code>propertyId</code> of an asset property.</p> </li> <li> <p>A <code>propertyAlias</code>, which is a data stream alias (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). To define an asset property's alias, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p> </li> </ul>",
      "endpoint": {
        "hostPrefix": "data."
      }
    },
    "ListAccessPolicies": {
      "name": "ListAccessPolicies",
      "http": {
        "method": "GET",
        "requestUri": "/access-policies",
        "responseCode": 200
      },
      "input": {
        "shape": "ListAccessPoliciesRequest"
      },
      "output": {
        "shape": "ListAccessPoliciesResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of access policies for an AWS SSO identity (a user or group) or an AWS IoT SiteWise Monitor resource (a portal or project).</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "ListAssetModels": {
      "name": "ListAssetModels",
      "http": {
        "method": "GET",
        "requestUri": "/asset-models"
      },
      "input": {
        "shape": "ListAssetModelsRequest"
      },
      "output": {
        "shape": "ListAssetModelsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of summaries of all asset models.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "ListAssets": {
      "name": "ListAssets",
      "http": {
        "method": "GET",
        "requestUri": "/assets"
      },
      "input": {
        "shape": "ListAssetsRequest"
      },
      "output": {
        "shape": "ListAssetsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of asset summaries.</p> <p>You can use this operation to do the following:</p> <ul> <li> <p>List assets based on a specific asset model.</p> </li> <li> <p>List top-level assets.</p> </li> </ul> <p>You can't use this operation to list all assets. To retrieve summaries for all of your assets, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_ListAssetModels.html\">ListAssetModels</a> to get all of your asset model IDs. Then, use ListAssets to get all assets for each asset model.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "ListAssociatedAssets": {
      "name": "ListAssociatedAssets",
      "http": {
        "method": "GET",
        "requestUri": "/assets/{assetId}/hierarchies"
      },
      "input": {
        "shape": "ListAssociatedAssetsRequest"
      },
      "output": {
        "shape": "ListAssociatedAssetsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of associated assets.</p> <p>You can use this operation to do the following:</p> <ul> <li> <p>List child assets associated to a parent asset by a hierarchy that you specify.</p> </li> <li> <p>List an asset's parent asset.</p> </li> </ul>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "ListDashboards": {
      "name": "ListDashboards",
      "http": {
        "method": "GET",
        "requestUri": "/dashboards",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDashboardsRequest"
      },
      "output": {
        "shape": "ListDashboardsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of dashboards for an AWS IoT SiteWise Monitor project.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "ListGateways": {
      "name": "ListGateways",
      "http": {
        "method": "GET",
        "requestUri": "/20200301/gateways"
      },
      "input": {
        "shape": "ListGatewaysRequest"
      },
      "output": {
        "shape": "ListGatewaysResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of gateways.</p>",
      "endpoint": {
        "hostPrefix": "edge."
      }
    },
    "ListPortals": {
      "name": "ListPortals",
      "http": {
        "method": "GET",
        "requestUri": "/portals",
        "responseCode": 200
      },
      "input": {
        "shape": "ListPortalsRequest"
      },
      "output": {
        "shape": "ListPortalsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of AWS IoT SiteWise Monitor portals.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "ListProjectAssets": {
      "name": "ListProjectAssets",
      "http": {
        "method": "GET",
        "requestUri": "/projects/{projectId}/assets",
        "responseCode": 200
      },
      "input": {
        "shape": "ListProjectAssetsRequest"
      },
      "output": {
        "shape": "ListProjectAssetsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of assets associated with an AWS IoT SiteWise Monitor project.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "ListProjects": {
      "name": "ListProjects",
      "http": {
        "method": "GET",
        "requestUri": "/projects",
        "responseCode": 200
      },
      "input": {
        "shape": "ListProjectsRequest"
      },
      "output": {
        "shape": "ListProjectsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Retrieves a paginated list of projects for an AWS IoT SiteWise Monitor portal.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags"
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
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the list of tags for an AWS IoT SiteWise resource.</p>"
    },
    "PutLoggingOptions": {
      "name": "PutLoggingOptions",
      "http": {
        "method": "PUT",
        "requestUri": "/logging"
      },
      "input": {
        "shape": "PutLoggingOptionsRequest"
      },
      "output": {
        "shape": "PutLoggingOptionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Sets logging options for AWS IoT SiteWise.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags"
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
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Adds tags to an AWS IoT SiteWise resource. If a tag already exists for the resource, this operation updates the tag's value.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags"
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
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Removes a tag from an AWS IoT SiteWise resource.</p>"
    },
    "UpdateAccessPolicy": {
      "name": "UpdateAccessPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/access-policies/{accessPolicyId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateAccessPolicyRequest"
      },
      "output": {
        "shape": "UpdateAccessPolicyResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates an existing access policy that specifies an AWS SSO user or group's access to an AWS IoT SiteWise Monitor portal or project resource.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "UpdateAsset": {
      "name": "UpdateAsset",
      "http": {
        "method": "PUT",
        "requestUri": "/assets/{assetId}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdateAssetRequest"
      },
      "output": {
        "shape": "UpdateAssetResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Updates an asset's name. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html\">Updating assets and models</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "UpdateAssetModel": {
      "name": "UpdateAssetModel",
      "http": {
        "method": "PUT",
        "requestUri": "/asset-models/{assetModelId}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdateAssetModelRequest"
      },
      "output": {
        "shape": "UpdateAssetModelResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Updates an asset model and all of the assets that were created from the model. Each asset created from the model inherits the updated asset model's property and hierarchy definitions. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-assets-and-models.html\">Updating assets and models</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <important> <p>This operation overwrites the existing model with the provided model. To avoid deleting your asset model's properties or hierarchies, you must include their IDs and definitions in the updated asset model payload. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html\">DescribeAssetModel</a>.</p> <p>If you remove a property from an asset model or update a property's formula expression, AWS IoT SiteWise deletes all previous data for that property. If you remove a hierarchy definition from an asset model, AWS IoT SiteWise disassociates every asset associated with that hierarchy. You can't change the type or data type of an existing property.</p> </important>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "UpdateAssetProperty": {
      "name": "UpdateAssetProperty",
      "http": {
        "method": "PUT",
        "requestUri": "/assets/{assetId}/properties/{propertyId}"
      },
      "input": {
        "shape": "UpdateAssetPropertyRequest"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Updates an asset property's alias and notification state.</p> <important> <p>This operation overwrites the property's existing alias and notification state. To keep your existing property's alias or notification state, you must include the existing values in the UpdateAssetProperty request. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetProperty.html\">DescribeAssetProperty</a>.</p> </important>",
      "endpoint": {
        "hostPrefix": "model."
      }
    },
    "UpdateDashboard": {
      "name": "UpdateDashboard",
      "http": {
        "method": "PUT",
        "requestUri": "/dashboards/{dashboardId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDashboardRequest"
      },
      "output": {
        "shape": "UpdateDashboardResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates an AWS IoT SiteWise Monitor dashboard.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "UpdateGateway": {
      "name": "UpdateGateway",
      "http": {
        "method": "PUT",
        "requestUri": "/20200301/gateways/{gatewayId}"
      },
      "input": {
        "shape": "UpdateGatewayRequest"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates a gateway's name.</p>",
      "endpoint": {
        "hostPrefix": "edge."
      }
    },
    "UpdateGatewayCapabilityConfiguration": {
      "name": "UpdateGatewayCapabilityConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/20200301/gateways/{gatewayId}/capability",
        "responseCode": 201
      },
      "input": {
        "shape": "UpdateGatewayCapabilityConfigurationRequest"
      },
      "output": {
        "shape": "UpdateGatewayCapabilityConfigurationResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictingOperationException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Updates a gateway capability configuration or defines a new capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the AWS IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGateway.html\">DescribeGateway</a>.</p>",
      "endpoint": {
        "hostPrefix": "edge."
      }
    },
    "UpdatePortal": {
      "name": "UpdatePortal",
      "http": {
        "method": "PUT",
        "requestUri": "/portals/{portalId}",
        "responseCode": 202
      },
      "input": {
        "shape": "UpdatePortalRequest"
      },
      "output": {
        "shape": "UpdatePortalResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictingOperationException"
        }
      ],
      "documentation": "<p>Updates an AWS IoT SiteWise Monitor portal.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    },
    "UpdateProject": {
      "name": "UpdateProject",
      "http": {
        "method": "PUT",
        "requestUri": "/projects/{projectId}",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateProjectRequest"
      },
      "output": {
        "shape": "UpdateProjectResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates an AWS IoT SiteWise Monitor project.</p>",
      "endpoint": {
        "hostPrefix": "monitor."
      }
    }
  },
  "shapes": {
    "ARN": {
      "type": "string",
      "max": 1600,
      "min": 1,
      "pattern": ".*"
    },
    "AccessPolicySummaries": {
      "type": "list",
      "member": {
        "shape": "AccessPolicySummary"
      }
    },
    "AccessPolicySummary": {
      "type": "structure",
      "required": [
        "id",
        "identity",
        "resource",
        "permission"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the access policy.</p>"
        },
        "identity": {
          "shape": "Identity",
          "documentation": "<p>The AWS SSO identity (a user or group).</p>"
        },
        "resource": {
          "shape": "Resource",
          "documentation": "<p>The AWS IoT SiteWise Monitor resource (a portal or project).</p>"
        },
        "permission": {
          "shape": "Permission",
          "documentation": "<p>The permissions for the access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the access policy was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the access policy was last updated, in Unix epoch time.</p>"
        }
      },
      "documentation": "<p>Contains an access policy that defines an AWS SSO identity's access to an AWS IoT SiteWise Monitor resource.</p>"
    },
    "AggregateType": {
      "type": "string",
      "enum": [
        "AVERAGE",
        "COUNT",
        "MAXIMUM",
        "MINIMUM",
        "SUM",
        "STANDARD_DEVIATION"
      ]
    },
    "AggregateTypes": {
      "type": "list",
      "member": {
        "shape": "AggregateType"
      },
      "min": 1
    },
    "AggregatedDoubleValue": {
      "type": "double"
    },
    "AggregatedValue": {
      "type": "structure",
      "required": [
        "timestamp",
        "value"
      ],
      "members": {
        "timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date the aggregating computations occurred, in Unix epoch time.</p>"
        },
        "quality": {
          "shape": "Quality",
          "documentation": "<p>The quality of the aggregated data.</p>"
        },
        "value": {
          "shape": "Aggregates",
          "documentation": "<p>The value of the aggregates.</p>"
        }
      },
      "documentation": "<p>Contains aggregated asset property values (for example, average, minimum, and maximum).</p>"
    },
    "AggregatedValues": {
      "type": "list",
      "member": {
        "shape": "AggregatedValue"
      }
    },
    "Aggregates": {
      "type": "structure",
      "members": {
        "average": {
          "shape": "AggregatedDoubleValue",
          "documentation": "<p>The average (mean) value of the time series over a time interval window.</p>"
        },
        "count": {
          "shape": "AggregatedDoubleValue",
          "documentation": "<p>The count of data points in the time series over a time interval window.</p>"
        },
        "maximum": {
          "shape": "AggregatedDoubleValue",
          "documentation": "<p>The maximum value of the time series over a time interval window.</p>"
        },
        "minimum": {
          "shape": "AggregatedDoubleValue",
          "documentation": "<p>The minimum value of the time series over a time interval window.</p>"
        },
        "sum": {
          "shape": "AggregatedDoubleValue",
          "documentation": "<p>The sum of the time series over a time interval window.</p>"
        },
        "standardDeviation": {
          "shape": "AggregatedDoubleValue",
          "documentation": "<p>The standard deviation of the time series over a time interval window.</p>"
        }
      },
      "documentation": "<p>Contains the (pre-calculated) aggregate values for an asset property.</p>"
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 1011,
      "min": 1
    },
    "AssetErrorCode": {
      "type": "string",
      "enum": [
        "INTERNAL_FAILURE"
      ]
    },
    "AssetErrorDetails": {
      "type": "structure",
      "required": [
        "assetId",
        "code",
        "message"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>"
        },
        "code": {
          "shape": "AssetErrorCode",
          "documentation": "<p>The error code.</p>"
        },
        "message": {
          "shape": "AssetErrorMessage",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>Contains error details for the requested associate project asset action.</p>"
    },
    "AssetErrorMessage": {
      "type": "string"
    },
    "AssetHierarchies": {
      "type": "list",
      "member": {
        "shape": "AssetHierarchy"
      }
    },
    "AssetHierarchy": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the hierarchy. This ID is a <code>hierarchyId</code>.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The hierarchy name provided in the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a> API.</p>"
        }
      },
      "documentation": "<p>Describes an asset hierarchy that contains a hierarchy's name and ID.</p>"
    },
    "AssetIDs": {
      "type": "list",
      "member": {
        "shape": "ID"
      }
    },
    "AssetModelHierarchies": {
      "type": "list",
      "member": {
        "shape": "AssetModelHierarchy"
      }
    },
    "AssetModelHierarchy": {
      "type": "structure",
      "required": [
        "name",
        "childAssetModelId"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model hierarchy. This ID is a <code>hierarchyId</code>.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the asset model hierarchy that you specify by using the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a> API.</p>"
        },
        "childAssetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model. All assets in this hierarchy must be instances of the <code>childAssetModelId</code> asset model.</p>"
        }
      },
      "documentation": "<p>Describes an asset hierarchy that contains a hierarchy's name, ID, and child asset model ID that specifies the type of asset that can be in this hierarchy.</p>"
    },
    "AssetModelHierarchyDefinition": {
      "type": "structure",
      "required": [
        "name",
        "childAssetModelId"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the asset model hierarchy definition (as specified in <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_CreateAssetModel.html\">CreateAssetModel</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetModel.html\">UpdateAssetModel</a>).</p>"
        },
        "childAssetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of an asset model for this hierarchy.</p>"
        }
      },
      "documentation": "<p>Contains an asset model hierarchy used in asset model creation. An asset model hierarchy determines the kind (or type) of asset that can belong to a hierarchy.</p>"
    },
    "AssetModelHierarchyDefinitions": {
      "type": "list",
      "member": {
        "shape": "AssetModelHierarchyDefinition"
      }
    },
    "AssetModelProperties": {
      "type": "list",
      "member": {
        "shape": "AssetModelProperty"
      }
    },
    "AssetModelProperty": {
      "type": "structure",
      "required": [
        "name",
        "dataType",
        "type"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model property.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the asset model property.</p>"
        },
        "dataType": {
          "shape": "PropertyDataType",
          "documentation": "<p>The data type of the asset model property.</p>"
        },
        "unit": {
          "shape": "PropertyUnit",
          "documentation": "<p>The unit of the asset model property, such as <code>Newtons</code> or <code>RPM</code>.</p>"
        },
        "type": {
          "shape": "PropertyType",
          "documentation": "<p>The property type (see <code>PropertyType</code>).</p>"
        }
      },
      "documentation": "<p>Contains information about an asset model property.</p>"
    },
    "AssetModelPropertyDefinition": {
      "type": "structure",
      "required": [
        "name",
        "dataType",
        "type"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the property definition.</p>"
        },
        "dataType": {
          "shape": "PropertyDataType",
          "documentation": "<p>The data type of the property definition.</p>"
        },
        "unit": {
          "shape": "PropertyUnit",
          "documentation": "<p>The unit of the property definition, such as <code>Newtons</code> or <code>RPM</code>.</p>"
        },
        "type": {
          "shape": "PropertyType",
          "documentation": "<p>The property definition type (see <code>PropertyType</code>). You can only specify one type in a property definition.</p>"
        }
      },
      "documentation": "<p>Contains an asset model property definition. This property definition is applied to all assets created from the asset model.</p>"
    },
    "AssetModelPropertyDefinitions": {
      "type": "list",
      "member": {
        "shape": "AssetModelPropertyDefinition"
      }
    },
    "AssetModelState": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "UPDATING",
        "PROPAGATING",
        "DELETING",
        "FAILED"
      ]
    },
    "AssetModelStatus": {
      "type": "structure",
      "required": [
        "state"
      ],
      "members": {
        "state": {
          "shape": "AssetModelState",
          "documentation": "<p>The current state of the asset model.</p>"
        },
        "error": {
          "shape": "ErrorDetails",
          "documentation": "<p>Contains associated error information, if any.</p>"
        }
      },
      "documentation": "<p>Contains current status information for an asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html\">Asset and model states</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
    },
    "AssetModelSummaries": {
      "type": "list",
      "member": {
        "shape": "AssetModelSummary"
      }
    },
    "AssetModelSummary": {
      "type": "structure",
      "required": [
        "id",
        "arn",
        "name",
        "description",
        "creationDate",
        "lastUpdateDate",
        "status"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model (used with AWS IoT SiteWise APIs).</p>"
        },
        "arn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code> </p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the asset model.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The asset model description.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset model was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset model was last updated, in Unix epoch time.</p>"
        },
        "status": {
          "shape": "AssetModelStatus",
          "documentation": "<p>The current status of the asset model.</p>"
        }
      },
      "documentation": "<p>Contains a summary of an asset model.</p>"
    },
    "AssetProperties": {
      "type": "list",
      "member": {
        "shape": "AssetProperty"
      }
    },
    "AssetProperty": {
      "type": "structure",
      "required": [
        "id",
        "name",
        "dataType"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset property.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the property.</p>"
        },
        "alias": {
          "shape": "PropertyAlias",
          "documentation": "<p>The property alias that identifies the property, such as an OPC-UA server data stream path (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "notification": {
          "shape": "PropertyNotification",
          "documentation": "<p>The asset property's notification topic and state. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p>"
        },
        "dataType": {
          "shape": "PropertyDataType",
          "documentation": "<p>The data type of the asset property.</p>"
        },
        "unit": {
          "shape": "PropertyUnit",
          "documentation": "<p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>"
        }
      },
      "documentation": "<p>Contains asset property information.</p>"
    },
    "AssetPropertyAlias": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[^\\u0000-\\u001F\\u007F]+"
    },
    "AssetPropertyValue": {
      "type": "structure",
      "required": [
        "value",
        "timestamp"
      ],
      "members": {
        "value": {
          "shape": "Variant",
          "documentation": "<p>The value of the asset property (see <code>Variant</code>).</p>"
        },
        "timestamp": {
          "shape": "TimeInNanos",
          "documentation": "<p>The timestamp of the asset property value.</p>"
        },
        "quality": {
          "shape": "Quality",
          "documentation": "<p>The quality of the asset property value.</p>"
        }
      },
      "documentation": "<p>Contains asset property value information.</p>"
    },
    "AssetPropertyValueHistory": {
      "type": "list",
      "member": {
        "shape": "AssetPropertyValue"
      }
    },
    "AssetPropertyValues": {
      "type": "list",
      "member": {
        "shape": "AssetPropertyValue"
      }
    },
    "AssetState": {
      "type": "string",
      "enum": [
        "CREATING",
        "ACTIVE",
        "UPDATING",
        "DELETING",
        "FAILED"
      ]
    },
    "AssetStatus": {
      "type": "structure",
      "required": [
        "state"
      ],
      "members": {
        "state": {
          "shape": "AssetState",
          "documentation": "<p>The current status of the asset.</p>"
        },
        "error": {
          "shape": "ErrorDetails",
          "documentation": "<p>Contains associated error information, if any.</p>"
        }
      },
      "documentation": "<p>Contains information about the current status of an asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-and-model-states.html\">Asset and model states</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
    },
    "AssetSummaries": {
      "type": "list",
      "member": {
        "shape": "AssetSummary"
      }
    },
    "AssetSummary": {
      "type": "structure",
      "required": [
        "id",
        "arn",
        "name",
        "assetModelId",
        "creationDate",
        "lastUpdateDate",
        "status",
        "hierarchies"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>"
        },
        "arn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code> </p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the asset.</p>"
        },
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model used to create this asset.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset was last updated, in Unix epoch time.</p>"
        },
        "status": {
          "shape": "AssetStatus",
          "documentation": "<p>The current status of the asset.</p>"
        },
        "hierarchies": {
          "shape": "AssetHierarchies",
          "documentation": "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>"
        }
      },
      "documentation": "<p>Contains a summary of an asset.</p>"
    },
    "AssociateAssetsRequest": {
      "type": "structure",
      "required": [
        "assetId",
        "hierarchyId",
        "childAssetId"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the parent asset.</p>",
          "location": "uri",
          "locationName": "assetId"
        },
        "hierarchyId": {
          "shape": "ID",
          "documentation": "<p>The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings of assets to be formed that all come from the same asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "childAssetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the child asset to be associated.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "AssociatedAssetsSummaries": {
      "type": "list",
      "member": {
        "shape": "AssociatedAssetsSummary"
      }
    },
    "AssociatedAssetsSummary": {
      "type": "structure",
      "required": [
        "id",
        "arn",
        "name",
        "assetModelId",
        "creationDate",
        "lastUpdateDate",
        "status",
        "hierarchies"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>"
        },
        "arn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code> </p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the asset.</p>"
        },
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model used to create the asset.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset was last updated, in Unix epoch time.</p>"
        },
        "status": {
          "shape": "AssetStatus",
          "documentation": "<p>The current status of the asset.</p>"
        },
        "hierarchies": {
          "shape": "AssetHierarchies",
          "documentation": "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>"
        }
      },
      "documentation": "<p>Contains a summary of an associated asset.</p>"
    },
    "Attribute": {
      "type": "structure",
      "members": {
        "defaultValue": {
          "shape": "DefaultValue",
          "documentation": "<p>The default value of the asset model property attribute. All assets that you create from the asset model contain this attribute value. You can update an attribute's value after you create an asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/update-attribute-values.html\">Updating attribute values</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains an asset attribute property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#attributes\">Attributes</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
    },
    "BatchAssociateProjectAssetsErrors": {
      "type": "list",
      "member": {
        "shape": "AssetErrorDetails"
      }
    },
    "BatchAssociateProjectAssetsRequest": {
      "type": "structure",
      "required": [
        "projectId",
        "assetIds"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project to which to associate the assets.</p>",
          "location": "uri",
          "locationName": "projectId"
        },
        "assetIds": {
          "shape": "IDs",
          "documentation": "<p>The IDs of the assets to be associated to the project.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "BatchAssociateProjectAssetsResponse": {
      "type": "structure",
      "members": {
        "errors": {
          "shape": "BatchAssociateProjectAssetsErrors",
          "documentation": "<p>A list of associated error information, if any.</p>"
        }
      }
    },
    "BatchDisassociateProjectAssetsErrors": {
      "type": "list",
      "member": {
        "shape": "AssetErrorDetails"
      }
    },
    "BatchDisassociateProjectAssetsRequest": {
      "type": "structure",
      "required": [
        "projectId",
        "assetIds"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project from which to disassociate the assets.</p>",
          "location": "uri",
          "locationName": "projectId"
        },
        "assetIds": {
          "shape": "IDs",
          "documentation": "<p>The IDs of the assets to be disassociated from the project.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "BatchDisassociateProjectAssetsResponse": {
      "type": "structure",
      "members": {
        "errors": {
          "shape": "BatchDisassociateProjectAssetsErrors",
          "documentation": "<p>A list of associated error information, if any.</p>"
        }
      }
    },
    "BatchPutAssetPropertyError": {
      "type": "structure",
      "required": [
        "errorCode",
        "errorMessage",
        "timestamps"
      ],
      "members": {
        "errorCode": {
          "shape": "BatchPutAssetPropertyValueErrorCode",
          "documentation": "<p>The error code.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>The associated error message.</p>"
        },
        "timestamps": {
          "shape": "Timestamps",
          "documentation": "<p>A list of timestamps for each error, if any.</p>"
        }
      },
      "documentation": "<p>Contains error information from updating a batch of asset property values.</p>"
    },
    "BatchPutAssetPropertyErrorEntries": {
      "type": "list",
      "member": {
        "shape": "BatchPutAssetPropertyErrorEntry"
      }
    },
    "BatchPutAssetPropertyErrorEntry": {
      "type": "structure",
      "required": [
        "entryId",
        "errors"
      ],
      "members": {
        "entryId": {
          "shape": "EntryId",
          "documentation": "<p>The ID of the failed entry.</p>"
        },
        "errors": {
          "shape": "BatchPutAssetPropertyErrors",
          "documentation": "<p>The list of update property value errors.</p>"
        }
      },
      "documentation": "<p>Contains error information for asset property value entries that are associated with the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html\">BatchPutAssetPropertyValue</a> API.</p>"
    },
    "BatchPutAssetPropertyErrors": {
      "type": "list",
      "member": {
        "shape": "BatchPutAssetPropertyError"
      }
    },
    "BatchPutAssetPropertyValueErrorCode": {
      "type": "string",
      "enum": [
        "ResourceNotFoundException",
        "InvalidRequestException",
        "InternalFailureException",
        "ServiceUnavailableException",
        "ThrottlingException",
        "LimitExceededException",
        "ConflictingOperationException",
        "TimestampOutOfRangeException",
        "AccessDeniedException"
      ]
    },
    "BatchPutAssetPropertyValueRequest": {
      "type": "structure",
      "required": [
        "entries"
      ],
      "members": {
        "entries": {
          "shape": "PutAssetPropertyValueEntries",
          "documentation": "<p>The list of asset property value entries for the batch put request. You can specify up to 10 entries per request.</p>"
        }
      }
    },
    "BatchPutAssetPropertyValueResponse": {
      "type": "structure",
      "required": [
        "errorEntries"
      ],
      "members": {
        "errorEntries": {
          "shape": "BatchPutAssetPropertyErrorEntries",
          "documentation": "<p>A list of the errors (if any) associated with the batch put request. Each error entry contains the <code>entryId</code> of the entry that failed.</p>"
        }
      }
    },
    "CapabilityConfiguration": {
      "type": "string",
      "max": 204800,
      "min": 1
    },
    "CapabilityNamespace": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "^[a-zA-Z]+:[a-zA-Z]+:[0-9]+$"
    },
    "CapabilitySyncStatus": {
      "type": "string",
      "enum": [
        "IN_SYNC",
        "OUT_OF_SYNC",
        "SYNC_FAILED"
      ]
    },
    "ClientToken": {
      "type": "string",
      "max": 64,
      "min": 36,
      "pattern": "\\S{36,64}"
    },
    "CreateAccessPolicyRequest": {
      "type": "structure",
      "required": [
        "accessPolicyIdentity",
        "accessPolicyResource",
        "accessPolicyPermission"
      ],
      "members": {
        "accessPolicyIdentity": {
          "shape": "Identity",
          "documentation": "<p>The identity for this access policy. Choose either a <code>user</code> or a <code>group</code> but not both.</p>"
        },
        "accessPolicyResource": {
          "shape": "Resource",
          "documentation": "<p>The AWS IoT SiteWise Monitor resource for this access policy. Choose either <code>portal</code> or <code>project</code> but not both.</p>"
        },
        "accessPolicyPermission": {
          "shape": "Permission",
          "documentation": "<p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of key-value pairs that contain metadata for the access policy. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "CreateAccessPolicyResponse": {
      "type": "structure",
      "required": [
        "accessPolicyId",
        "accessPolicyArn"
      ],
      "members": {
        "accessPolicyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the access policy.</p>"
        },
        "accessPolicyArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the access policy, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code> </p>"
        }
      }
    },
    "CreateAssetModelRequest": {
      "type": "structure",
      "required": [
        "assetModelName"
      ],
      "members": {
        "assetModelName": {
          "shape": "Name",
          "documentation": "<p>A unique, friendly name for the asset model.</p>"
        },
        "assetModelDescription": {
          "shape": "Description",
          "documentation": "<p>A description for the asset model.</p>"
        },
        "assetModelProperties": {
          "shape": "AssetModelPropertyDefinitions",
          "documentation": "<p>The property definitions of the asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html\">Asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>You can specify up to 200 properties per asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "assetModelHierarchies": {
          "shape": "AssetModelHierarchyDefinitions",
          "documentation": "<p>The hierarchy definitions of the asset model. Each hierarchy specifies an asset model whose assets can be children of any other assets created from this asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>You can specify up to 10 hierarchies per asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of key-value pairs that contain metadata for the asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "CreateAssetModelResponse": {
      "type": "structure",
      "required": [
        "assetModelId",
        "assetModelArn",
        "assetModelStatus"
      ],
      "members": {
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model. You can use this ID when you call other AWS IoT SiteWise APIs.</p>"
        },
        "assetModelArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code> </p>"
        },
        "assetModelStatus": {
          "shape": "AssetModelStatus",
          "documentation": "<p>The status of the asset model, which contains a state (<code>CREATING</code> after successfully calling this operation) and any error message.</p>"
        }
      }
    },
    "CreateAssetRequest": {
      "type": "structure",
      "required": [
        "assetName",
        "assetModelId"
      ],
      "members": {
        "assetName": {
          "shape": "Name",
          "documentation": "<p>A unique, friendly name for the asset.</p>"
        },
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model from which to create the asset.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of key-value pairs that contain metadata for the asset. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "CreateAssetResponse": {
      "type": "structure",
      "required": [
        "assetId",
        "assetArn",
        "assetStatus"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset. This ID uniquely identifies the asset within AWS IoT SiteWise and can be used with other AWS IoT SiteWise APIs.</p>"
        },
        "assetArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code> </p>"
        },
        "assetStatus": {
          "shape": "AssetStatus",
          "documentation": "<p>The status of the asset, which contains a state (<code>CREATING</code> after successfully calling this operation) and any error message.</p>"
        }
      }
    },
    "CreateDashboardRequest": {
      "type": "structure",
      "required": [
        "projectId",
        "dashboardName",
        "dashboardDefinition"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project in which to create the dashboard.</p>"
        },
        "dashboardName": {
          "shape": "Name",
          "documentation": "<p>A friendly name for the dashboard.</p>"
        },
        "dashboardDescription": {
          "shape": "Description",
          "documentation": "<p>A description for the dashboard.</p>"
        },
        "dashboardDefinition": {
          "shape": "DashboardDefinition",
          "documentation": "<p>The dashboard definition specified in a JSON literal. For detailed information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Creating dashboards (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of key-value pairs that contain metadata for the dashboard. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "CreateDashboardResponse": {
      "type": "structure",
      "required": [
        "dashboardId",
        "dashboardArn"
      ],
      "members": {
        "dashboardId": {
          "shape": "ID",
          "documentation": "<p>The ID of the dashboard.</p>"
        },
        "dashboardArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the dashboard, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code> </p>"
        }
      }
    },
    "CreateGatewayRequest": {
      "type": "structure",
      "required": [
        "gatewayName",
        "gatewayPlatform"
      ],
      "members": {
        "gatewayName": {
          "shape": "Name",
          "documentation": "<p>A unique, friendly name for the gateway.</p>"
        },
        "gatewayPlatform": {
          "shape": "GatewayPlatform",
          "documentation": "<p>The gateway's platform. You can only specify one platform in a gateway.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of key-value pairs that contain metadata for the gateway. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "CreateGatewayResponse": {
      "type": "structure",
      "required": [
        "gatewayId",
        "gatewayArn"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway device. You can use this ID when you call other AWS IoT SiteWise APIs.</p>"
        },
        "gatewayArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the gateway, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code> </p>"
        }
      }
    },
    "CreatePortalRequest": {
      "type": "structure",
      "required": [
        "portalName",
        "portalContactEmail",
        "roleArn"
      ],
      "members": {
        "portalName": {
          "shape": "Name",
          "documentation": "<p>A friendly name for the portal.</p>"
        },
        "portalDescription": {
          "shape": "Description",
          "documentation": "<p>A description for the portal.</p>"
        },
        "portalContactEmail": {
          "shape": "Email",
          "documentation": "<p>The AWS administrator's contact email address.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        },
        "portalLogoImageFile": {
          "shape": "ImageFile",
          "documentation": "<p>A logo image to display in the portal. Upload a square, high-resolution image. The image is displayed on a dark background.</p>"
        },
        "roleArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of a service role that allows the portal's users to access your AWS IoT SiteWise resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for AWS IoT SiteWise Monitor</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of key-value pairs that contain metadata for the portal. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "CreatePortalResponse": {
      "type": "structure",
      "required": [
        "portalId",
        "portalArn",
        "portalStartUrl",
        "portalStatus",
        "ssoApplicationId"
      ],
      "members": {
        "portalId": {
          "shape": "ID",
          "documentation": "<p>The ID of the created portal.</p>"
        },
        "portalArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the portal, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code> </p>"
        },
        "portalStartUrl": {
          "shape": "Url",
          "documentation": "<p>The public URL for the AWS IoT SiteWise Monitor portal.</p>"
        },
        "portalStatus": {
          "shape": "PortalStatus",
          "documentation": "<p>The status of the portal, which contains a state (<code>CREATING</code> after successfully calling this operation) and any error message.</p>"
        },
        "ssoApplicationId": {
          "shape": "SSOApplicationId",
          "documentation": "<p>The associated AWS SSO application Id.</p>"
        }
      }
    },
    "CreateProjectRequest": {
      "type": "structure",
      "required": [
        "portalId",
        "projectName"
      ],
      "members": {
        "portalId": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal in which to create the project.</p>"
        },
        "projectName": {
          "shape": "Name",
          "documentation": "<p>A friendly name for the project.</p>"
        },
        "projectDescription": {
          "shape": "Description",
          "documentation": "<p>A description for the project.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of key-value pairs that contain metadata for the project. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "CreateProjectResponse": {
      "type": "structure",
      "required": [
        "projectId",
        "projectArn"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project.</p>"
        },
        "projectArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the project, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code> </p>"
        }
      }
    },
    "DashboardDefinition": {
      "type": "string",
      "max": 204800,
      "min": 0,
      "pattern": ".+"
    },
    "DashboardSummaries": {
      "type": "list",
      "member": {
        "shape": "DashboardSummary"
      }
    },
    "DashboardSummary": {
      "type": "structure",
      "required": [
        "id",
        "name"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the dashboard.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the dashboard</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The dashboard's description.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the dashboard was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the dashboard was last updated, in Unix epoch time.</p>"
        }
      },
      "documentation": "<p>Contains a dashboard summary.</p>"
    },
    "DefaultValue": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[^\\u0000-\\u001F\\u007F]+"
    },
    "DeleteAccessPolicyRequest": {
      "type": "structure",
      "required": [
        "accessPolicyId"
      ],
      "members": {
        "accessPolicyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the access policy to be deleted.</p>",
          "location": "uri",
          "locationName": "accessPolicyId"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true,
          "location": "querystring",
          "locationName": "clientToken"
        }
      }
    },
    "DeleteAccessPolicyResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteAssetModelRequest": {
      "type": "structure",
      "required": [
        "assetModelId"
      ],
      "members": {
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model to delete.</p>",
          "location": "uri",
          "locationName": "assetModelId"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true,
          "location": "querystring",
          "locationName": "clientToken"
        }
      }
    },
    "DeleteAssetModelResponse": {
      "type": "structure",
      "required": [
        "assetModelStatus"
      ],
      "members": {
        "assetModelStatus": {
          "shape": "AssetModelStatus",
          "documentation": "<p>The status of the asset model, which contains a state (<code>DELETING</code> after successfully calling this operation) and any error message.</p>"
        }
      }
    },
    "DeleteAssetRequest": {
      "type": "structure",
      "required": [
        "assetId"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset to delete.</p>",
          "location": "uri",
          "locationName": "assetId"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true,
          "location": "querystring",
          "locationName": "clientToken"
        }
      }
    },
    "DeleteAssetResponse": {
      "type": "structure",
      "required": [
        "assetStatus"
      ],
      "members": {
        "assetStatus": {
          "shape": "AssetStatus",
          "documentation": "<p>The status of the asset, which contains a state (<code>DELETING</code> after successfully calling this operation) and any error message.</p>"
        }
      }
    },
    "DeleteDashboardRequest": {
      "type": "structure",
      "required": [
        "dashboardId"
      ],
      "members": {
        "dashboardId": {
          "shape": "ID",
          "documentation": "<p>The ID of the dashboard to delete.</p>",
          "location": "uri",
          "locationName": "dashboardId"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true,
          "location": "querystring",
          "locationName": "clientToken"
        }
      }
    },
    "DeleteDashboardResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteGatewayRequest": {
      "type": "structure",
      "required": [
        "gatewayId"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway to delete.</p>",
          "location": "uri",
          "locationName": "gatewayId"
        }
      }
    },
    "DeletePortalRequest": {
      "type": "structure",
      "required": [
        "portalId"
      ],
      "members": {
        "portalId": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal to delete.</p>",
          "location": "uri",
          "locationName": "portalId"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true,
          "location": "querystring",
          "locationName": "clientToken"
        }
      }
    },
    "DeletePortalResponse": {
      "type": "structure",
      "required": [
        "portalStatus"
      ],
      "members": {
        "portalStatus": {
          "shape": "PortalStatus",
          "documentation": "<p>The status of the portal, which contains a state (<code>DELETING</code> after successfully calling this operation) and any error message.</p>"
        }
      }
    },
    "DeleteProjectRequest": {
      "type": "structure",
      "required": [
        "projectId"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project.</p>",
          "location": "uri",
          "locationName": "projectId"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true,
          "location": "querystring",
          "locationName": "clientToken"
        }
      }
    },
    "DeleteProjectResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeAccessPolicyRequest": {
      "type": "structure",
      "required": [
        "accessPolicyId"
      ],
      "members": {
        "accessPolicyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the access policy.</p>",
          "location": "uri",
          "locationName": "accessPolicyId"
        }
      }
    },
    "DescribeAccessPolicyResponse": {
      "type": "structure",
      "required": [
        "accessPolicyId",
        "accessPolicyArn",
        "accessPolicyIdentity",
        "accessPolicyResource",
        "accessPolicyPermission",
        "accessPolicyCreationDate",
        "accessPolicyLastUpdateDate"
      ],
      "members": {
        "accessPolicyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the access policy.</p>"
        },
        "accessPolicyArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the access policy, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}</code> </p>"
        },
        "accessPolicyIdentity": {
          "shape": "Identity",
          "documentation": "<p>The AWS SSO identity (user or group) to which this access policy applies.</p>"
        },
        "accessPolicyResource": {
          "shape": "Resource",
          "documentation": "<p>The AWS IoT SiteWise Monitor resource (portal or project) to which this access policy provides access.</p>"
        },
        "accessPolicyPermission": {
          "shape": "Permission",
          "documentation": "<p>The access policy permission. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>"
        },
        "accessPolicyCreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the access policy was created, in Unix epoch time.</p>"
        },
        "accessPolicyLastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the access policy was last updated, in Unix epoch time.</p>"
        }
      }
    },
    "DescribeAssetModelRequest": {
      "type": "structure",
      "required": [
        "assetModelId"
      ],
      "members": {
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model.</p>",
          "location": "uri",
          "locationName": "assetModelId"
        }
      }
    },
    "DescribeAssetModelResponse": {
      "type": "structure",
      "required": [
        "assetModelId",
        "assetModelArn",
        "assetModelName",
        "assetModelDescription",
        "assetModelProperties",
        "assetModelHierarchies",
        "assetModelCreationDate",
        "assetModelLastUpdateDate",
        "assetModelStatus"
      ],
      "members": {
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model.</p>"
        },
        "assetModelArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset model, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset-model/${AssetModelId}</code> </p>"
        },
        "assetModelName": {
          "shape": "Name",
          "documentation": "<p>The name of the asset model.</p>"
        },
        "assetModelDescription": {
          "shape": "Description",
          "documentation": "<p>The asset model's description.</p>"
        },
        "assetModelProperties": {
          "shape": "AssetModelProperties",
          "documentation": "<p>The list of asset properties for the asset model.</p>"
        },
        "assetModelHierarchies": {
          "shape": "AssetModelHierarchies",
          "documentation": "<p>A list of asset model hierarchies that each contain a <code>childAssetModelId</code> and a <code>hierarchyId</code> (named <code>id</code>). A hierarchy specifies allowed parent/child asset relationships for an asset model.</p>"
        },
        "assetModelCreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset model was created, in Unix epoch time.</p>"
        },
        "assetModelLastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset model was last updated, in Unix epoch time.</p>"
        },
        "assetModelStatus": {
          "shape": "AssetModelStatus",
          "documentation": "<p>The current status of the asset model, which contains a state and any error message.</p>"
        }
      }
    },
    "DescribeAssetPropertyRequest": {
      "type": "structure",
      "required": [
        "assetId",
        "propertyId"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>",
          "location": "uri",
          "locationName": "assetId"
        },
        "propertyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset property.</p>",
          "location": "uri",
          "locationName": "propertyId"
        }
      }
    },
    "DescribeAssetPropertyResponse": {
      "type": "structure",
      "required": [
        "assetId",
        "assetName",
        "assetModelId",
        "assetProperty"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>"
        },
        "assetName": {
          "shape": "Name",
          "documentation": "<p>The name of the asset.</p>"
        },
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model.</p>"
        },
        "assetProperty": {
          "shape": "Property",
          "documentation": "<p>The asset property's definition, alias, and notification state.</p>"
        }
      }
    },
    "DescribeAssetRequest": {
      "type": "structure",
      "required": [
        "assetId"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>",
          "location": "uri",
          "locationName": "assetId"
        }
      }
    },
    "DescribeAssetResponse": {
      "type": "structure",
      "required": [
        "assetId",
        "assetArn",
        "assetName",
        "assetModelId",
        "assetProperties",
        "assetHierarchies",
        "assetCreationDate",
        "assetLastUpdateDate",
        "assetStatus"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>"
        },
        "assetArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the asset, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:asset/${AssetId}</code> </p>"
        },
        "assetName": {
          "shape": "Name",
          "documentation": "<p>The name of the asset.</p>"
        },
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model that was used to create the asset.</p>"
        },
        "assetProperties": {
          "shape": "AssetProperties",
          "documentation": "<p>The list of asset properties for the asset.</p>"
        },
        "assetHierarchies": {
          "shape": "AssetHierarchies",
          "documentation": "<p>A list of asset hierarchies that each contain a <code>hierarchyId</code>. A hierarchy specifies allowed parent/child asset relationships.</p>"
        },
        "assetCreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset was created, in Unix epoch time.</p>"
        },
        "assetLastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the asset was last updated, in Unix epoch time.</p>"
        },
        "assetStatus": {
          "shape": "AssetStatus",
          "documentation": "<p>The current status of the asset, which contains a state and any error message.</p>"
        }
      }
    },
    "DescribeDashboardRequest": {
      "type": "structure",
      "required": [
        "dashboardId"
      ],
      "members": {
        "dashboardId": {
          "shape": "ID",
          "documentation": "<p>The ID of the dashboard.</p>",
          "location": "uri",
          "locationName": "dashboardId"
        }
      }
    },
    "DescribeDashboardResponse": {
      "type": "structure",
      "required": [
        "dashboardId",
        "dashboardArn",
        "dashboardName",
        "projectId",
        "dashboardDefinition",
        "dashboardCreationDate",
        "dashboardLastUpdateDate"
      ],
      "members": {
        "dashboardId": {
          "shape": "ID",
          "documentation": "<p>The ID of the dashboard.</p>"
        },
        "dashboardArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the dashboard, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:dashboard/${DashboardId}</code> </p>"
        },
        "dashboardName": {
          "shape": "Name",
          "documentation": "<p>The name of the dashboard.</p>"
        },
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project that the dashboard is in.</p>"
        },
        "dashboardDescription": {
          "shape": "Description",
          "documentation": "<p>The dashboard's description.</p>"
        },
        "dashboardDefinition": {
          "shape": "DashboardDefinition",
          "documentation": "<p>The dashboard's definition JSON literal. For detailed information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Creating dashboards (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "dashboardCreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the dashboard was created, in Unix epoch time.</p>"
        },
        "dashboardLastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the dashboard was last updated, in Unix epoch time.</p>"
        }
      }
    },
    "DescribeGatewayCapabilityConfigurationRequest": {
      "type": "structure",
      "required": [
        "gatewayId",
        "capabilityNamespace"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway that defines the capability configuration.</p>",
          "location": "uri",
          "locationName": "gatewayId"
        },
        "capabilityNamespace": {
          "shape": "CapabilityNamespace",
          "documentation": "<p>The namespace of the capability configuration. For example, if you configure OPC-UA sources from the AWS IoT SiteWise console, your OPC-UA capability configuration has the namespace <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as <code>1</code>.</p>",
          "location": "uri",
          "locationName": "capabilityNamespace"
        }
      }
    },
    "DescribeGatewayCapabilityConfigurationResponse": {
      "type": "structure",
      "required": [
        "gatewayId",
        "capabilityNamespace",
        "capabilityConfiguration",
        "capabilitySyncStatus"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway that defines the capability configuration.</p>"
        },
        "capabilityNamespace": {
          "shape": "CapabilityNamespace",
          "documentation": "<p>The namespace of the gateway capability.</p>"
        },
        "capabilityConfiguration": {
          "shape": "CapabilityConfiguration",
          "documentation": "<p>The JSON document that defines the gateway capability's configuration. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli\">Configuring data sources (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "capabilitySyncStatus": {
          "shape": "CapabilitySyncStatus",
          "documentation": "<p>The synchronization status of the capability configuration. The sync status can be one of the following:</p> <ul> <li> <p> <code>IN_SYNC</code> – The gateway is running the capability configuration.</p> </li> <li> <p> <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p> </li> <li> <p> <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p> </li> </ul>"
        }
      }
    },
    "DescribeGatewayRequest": {
      "type": "structure",
      "required": [
        "gatewayId"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway device.</p>",
          "location": "uri",
          "locationName": "gatewayId"
        }
      }
    },
    "DescribeGatewayResponse": {
      "type": "structure",
      "required": [
        "gatewayId",
        "gatewayName",
        "gatewayArn",
        "gatewayCapabilitySummaries",
        "creationDate",
        "lastUpdateDate"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway device.</p>"
        },
        "gatewayName": {
          "shape": "Name",
          "documentation": "<p>The name of the gateway.</p>"
        },
        "gatewayArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the gateway, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:gateway/${GatewayId}</code> </p>"
        },
        "gatewayPlatform": {
          "shape": "GatewayPlatform",
          "documentation": "<p>The gateway's platform.</p>"
        },
        "gatewayCapabilitySummaries": {
          "shape": "GatewayCapabilitySummaries",
          "documentation": "<p>A list of gateway capability summaries that each contain a namespace and status. Each gateway capability defines data sources for the gateway. To retrieve a capability configuration's definition, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html\">DescribeGatewayCapabilityConfiguration</a>.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the gateway was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the gateway was last updated, in Unix epoch time.</p>"
        }
      }
    },
    "DescribeLoggingOptionsRequest": {
      "type": "structure",
      "members": {}
    },
    "DescribeLoggingOptionsResponse": {
      "type": "structure",
      "required": [
        "loggingOptions"
      ],
      "members": {
        "loggingOptions": {
          "shape": "LoggingOptions",
          "documentation": "<p>The current logging options.</p>"
        }
      }
    },
    "DescribePortalRequest": {
      "type": "structure",
      "required": [
        "portalId"
      ],
      "members": {
        "portalId": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal.</p>",
          "location": "uri",
          "locationName": "portalId"
        }
      }
    },
    "DescribePortalResponse": {
      "type": "structure",
      "required": [
        "portalId",
        "portalArn",
        "portalName",
        "portalClientId",
        "portalStartUrl",
        "portalContactEmail",
        "portalStatus",
        "portalCreationDate",
        "portalLastUpdateDate"
      ],
      "members": {
        "portalId": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal.</p>"
        },
        "portalArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the portal, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:portal/${PortalId}</code> </p>"
        },
        "portalName": {
          "shape": "Name",
          "documentation": "<p>The name of the portal.</p>"
        },
        "portalDescription": {
          "shape": "Description",
          "documentation": "<p>The portal's description.</p>"
        },
        "portalClientId": {
          "shape": "PortalClientId",
          "documentation": "<p>The AWS SSO application generated client ID (used with AWS SSO APIs).</p>"
        },
        "portalStartUrl": {
          "shape": "Url",
          "documentation": "<p>The public root URL for the AWS IoT AWS IoT SiteWise Monitor application portal.</p>"
        },
        "portalContactEmail": {
          "shape": "Email",
          "documentation": "<p>The AWS administrator's contact email address.</p>"
        },
        "portalStatus": {
          "shape": "PortalStatus",
          "documentation": "<p>The current status of the portal, which contains a state and any error message.</p>"
        },
        "portalCreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the portal was created, in Unix epoch time.</p>"
        },
        "portalLastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the portal was last updated, in Unix epoch time.</p>"
        },
        "portalLogoImageLocation": {
          "shape": "ImageLocation",
          "documentation": "<p>The portal's logo image, which is available at a URL.</p>"
        },
        "roleArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the service role that allows the portal's users to access your AWS IoT SiteWise resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for AWS IoT SiteWise Monitor</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "DescribeProjectRequest": {
      "type": "structure",
      "required": [
        "projectId"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project.</p>",
          "location": "uri",
          "locationName": "projectId"
        }
      }
    },
    "DescribeProjectResponse": {
      "type": "structure",
      "required": [
        "projectId",
        "projectArn",
        "projectName",
        "portalId",
        "projectCreationDate",
        "projectLastUpdateDate"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project.</p>"
        },
        "projectArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the project, which has the following format.</p> <p> <code>arn:${Partition}:iotsitewise:${Region}:${Account}:project/${ProjectId}</code> </p>"
        },
        "projectName": {
          "shape": "Name",
          "documentation": "<p>The name of the project.</p>"
        },
        "portalId": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal that the project is in.</p>"
        },
        "projectDescription": {
          "shape": "Description",
          "documentation": "<p>The project's description.</p>"
        },
        "projectCreationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the project was created, in Unix epoch time.</p>"
        },
        "projectLastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the project was last updated, in Unix epoch time.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[^\\u0000-\\u001F\\u007F]+"
    },
    "DisassociateAssetsRequest": {
      "type": "structure",
      "required": [
        "assetId",
        "hierarchyId",
        "childAssetId"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the parent asset from which to disassociate the child asset.</p>",
          "location": "uri",
          "locationName": "assetId"
        },
        "hierarchyId": {
          "shape": "ID",
          "documentation": "<p>The ID of a hierarchy in the parent asset's model. Hierarchies allow different groupings of assets to be formed that all come from the same asset model. You can use the hierarchy ID to identify the correct asset to disassociate. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "childAssetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the child asset to disassociate.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "Email": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[^@]+@[^@]+"
    },
    "EntryId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_-]+$"
    },
    "ErrorCode": {
      "type": "string",
      "enum": [
        "VALIDATION_ERROR",
        "INTERNAL_FAILURE"
      ]
    },
    "ErrorDetails": {
      "type": "structure",
      "required": [
        "code",
        "message"
      ],
      "members": {
        "code": {
          "shape": "ErrorCode",
          "documentation": "<p>The error code.</p>"
        },
        "message": {
          "shape": "ErrorMessage",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>Contains the details of an AWS IoT SiteWise error.</p>"
    },
    "ErrorMessage": {
      "type": "string"
    },
    "Expression": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^[a-z0-9._+\\-*%/^, ()]+$"
    },
    "ExpressionVariable": {
      "type": "structure",
      "required": [
        "name",
        "value"
      ],
      "members": {
        "name": {
          "shape": "VariableName",
          "documentation": "<p>The friendly name of the variable to be used in the expression.</p>"
        },
        "value": {
          "shape": "VariableValue",
          "documentation": "<p>The variable that identifies an asset property from which to use values.</p>"
        }
      },
      "documentation": "<p>Contains expression variable information.</p>"
    },
    "ExpressionVariables": {
      "type": "list",
      "member": {
        "shape": "ExpressionVariable"
      }
    },
    "GatewayCapabilitySummaries": {
      "type": "list",
      "member": {
        "shape": "GatewayCapabilitySummary"
      }
    },
    "GatewayCapabilitySummary": {
      "type": "structure",
      "required": [
        "capabilityNamespace",
        "capabilitySyncStatus"
      ],
      "members": {
        "capabilityNamespace": {
          "shape": "CapabilityNamespace",
          "documentation": "<p>The namespace of the capability configuration. For example, if you configure OPC-UA sources from the AWS IoT SiteWise console, your OPC-UA capability configuration has the namespace <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as <code>1</code>.</p>"
        },
        "capabilitySyncStatus": {
          "shape": "CapabilitySyncStatus",
          "documentation": "<p>The synchronization status of the capability configuration. The sync status can be one of the following:</p> <ul> <li> <p> <code>IN_SYNC</code> – The gateway is running the capability configuration.</p> </li> <li> <p> <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p> </li> <li> <p> <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Contains a summary of a gateway capability configuration.</p>"
    },
    "GatewayPlatform": {
      "type": "structure",
      "required": [
        "greengrass"
      ],
      "members": {
        "greengrass": {
          "shape": "Greengrass",
          "documentation": "<p>A gateway that runs on AWS IoT Greengrass.</p>"
        }
      },
      "documentation": "<p>Contains a gateway's platform information.</p>"
    },
    "GatewaySummaries": {
      "type": "list",
      "member": {
        "shape": "GatewaySummary"
      }
    },
    "GatewaySummary": {
      "type": "structure",
      "required": [
        "gatewayId",
        "gatewayName",
        "creationDate",
        "lastUpdateDate"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway device.</p>"
        },
        "gatewayName": {
          "shape": "Name",
          "documentation": "<p>The name of the asset.</p>"
        },
        "gatewayCapabilitySummaries": {
          "shape": "GatewayCapabilitySummaries",
          "documentation": "<p>A list of gateway capability summaries that each contain a namespace and status. Each gateway capability defines data sources for the gateway. To retrieve a capability configuration's definition, use <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeGatewayCapabilityConfiguration.html\">DescribeGatewayCapabilityConfiguration</a>.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the gateway was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the gateway was last updated, in Unix epoch time.</p>"
        }
      },
      "documentation": "<p>Contains a summary of a gateway.</p>"
    },
    "GetAssetPropertyAggregatesRequest": {
      "type": "structure",
      "required": [
        "aggregateTypes",
        "resolution",
        "startDate",
        "endDate"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>",
          "location": "querystring",
          "locationName": "assetId"
        },
        "propertyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset property.</p>",
          "location": "querystring",
          "locationName": "propertyId"
        },
        "propertyAlias": {
          "shape": "AssetPropertyAlias",
          "documentation": "<p>The property alias that identifies the property, such as an OPC-UA server data stream path (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
          "location": "querystring",
          "locationName": "propertyAlias"
        },
        "aggregateTypes": {
          "shape": "AggregateTypes",
          "documentation": "<p>The data aggregating function.</p>",
          "location": "querystring",
          "locationName": "aggregateTypes"
        },
        "resolution": {
          "shape": "Resolution",
          "documentation": "<p>The time interval over which to aggregate data.</p>",
          "location": "querystring",
          "locationName": "resolution"
        },
        "qualities": {
          "shape": "Qualities",
          "documentation": "<p>The quality by which to filter asset data.</p>",
          "location": "querystring",
          "locationName": "qualities"
        },
        "startDate": {
          "shape": "Timestamp",
          "documentation": "<p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>",
          "location": "querystring",
          "locationName": "startDate"
        },
        "endDate": {
          "shape": "Timestamp",
          "documentation": "<p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>",
          "location": "querystring",
          "locationName": "endDate"
        },
        "timeOrdering": {
          "shape": "TimeOrdering",
          "documentation": "<p>The chronological sorting order of the requested information.</p> <p>Default: <code>ASCENDING</code> </p>",
          "location": "querystring",
          "locationName": "timeOrdering"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 100</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "GetAssetPropertyAggregatesResponse": {
      "type": "structure",
      "required": [
        "aggregatedValues"
      ],
      "members": {
        "aggregatedValues": {
          "shape": "AggregatedValues",
          "documentation": "<p>The requested aggregated values.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "GetAssetPropertyValueHistoryRequest": {
      "type": "structure",
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>",
          "location": "querystring",
          "locationName": "assetId"
        },
        "propertyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset property.</p>",
          "location": "querystring",
          "locationName": "propertyId"
        },
        "propertyAlias": {
          "shape": "AssetPropertyAlias",
          "documentation": "<p>The property alias that identifies the property, such as an OPC-UA server data stream path (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
          "location": "querystring",
          "locationName": "propertyAlias"
        },
        "startDate": {
          "shape": "Timestamp",
          "documentation": "<p>The exclusive start of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>",
          "location": "querystring",
          "locationName": "startDate"
        },
        "endDate": {
          "shape": "Timestamp",
          "documentation": "<p>The inclusive end of the range from which to query historical data, expressed in seconds in Unix epoch time.</p>",
          "location": "querystring",
          "locationName": "endDate"
        },
        "qualities": {
          "shape": "Qualities",
          "documentation": "<p>The quality by which to filter asset data.</p>",
          "location": "querystring",
          "locationName": "qualities"
        },
        "timeOrdering": {
          "shape": "TimeOrdering",
          "documentation": "<p>The chronological sorting order of the requested information.</p> <p>Default: <code>ASCENDING</code> </p>",
          "location": "querystring",
          "locationName": "timeOrdering"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 100</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "GetAssetPropertyValueHistoryResponse": {
      "type": "structure",
      "required": [
        "assetPropertyValueHistory"
      ],
      "members": {
        "assetPropertyValueHistory": {
          "shape": "AssetPropertyValueHistory",
          "documentation": "<p>The asset property's value history.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "GetAssetPropertyValueRequest": {
      "type": "structure",
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset.</p>",
          "location": "querystring",
          "locationName": "assetId"
        },
        "propertyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset property.</p>",
          "location": "querystring",
          "locationName": "propertyId"
        },
        "propertyAlias": {
          "shape": "AssetPropertyAlias",
          "documentation": "<p>The property alias that identifies the property, such as an OPC-UA server data stream path (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
          "location": "querystring",
          "locationName": "propertyAlias"
        }
      }
    },
    "GetAssetPropertyValueResponse": {
      "type": "structure",
      "members": {
        "propertyValue": {
          "shape": "AssetPropertyValue",
          "documentation": "<p>The current asset property value.</p>"
        }
      }
    },
    "Greengrass": {
      "type": "structure",
      "required": [
        "groupArn"
      ],
      "members": {
        "groupArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the Greengrass group. For more information about how to find a group's ARN, see <a href=\"https://docs.aws.amazon.com/greengrass/latest/apireference/listgroups-get.html\">ListGroups</a> and <a href=\"https://docs.aws.amazon.com/greengrass/latest/apireference/getgroup-get.html\">GetGroup</a> in the <i>AWS IoT Greengrass API Reference</i>.</p>"
        }
      },
      "documentation": "<p>Contains details for a gateway that runs on AWS IoT Greengrass. To create a gateway that runs on AWS IoT Greengrass, you must add the IoT SiteWise connector to a Greengrass group and deploy it. Your Greengrass group must also have permissions to upload data to AWS IoT SiteWise. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/gateway-connector.html\">Ingesting data using a gateway</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
    },
    "GroupIdentity": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "IdentityId",
          "documentation": "<p>The AWS SSO ID of the group.</p>"
        }
      },
      "documentation": "<p>Contains information for a group identity in an access policy.</p>"
    },
    "ID": {
      "type": "string",
      "max": 36,
      "min": 36,
      "pattern": "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
    },
    "IDs": {
      "type": "list",
      "member": {
        "shape": "ID"
      },
      "max": 100,
      "min": 1
    },
    "Identity": {
      "type": "structure",
      "members": {
        "user": {
          "shape": "UserIdentity",
          "documentation": "<p>A user identity.</p>"
        },
        "group": {
          "shape": "GroupIdentity",
          "documentation": "<p>A group identity.</p>"
        }
      },
      "documentation": "<p>Contains an AWS SSO identity ID for a user or group.</p> <note> <p>Currently, you can't use AWS APIs to retrieve AWS SSO identity IDs. You can find the AWS SSO identity IDs in the URL of user and group pages in the <a href=\"https://console.aws.amazon.com/singlesignon\">AWS SSO console</a>.</p> </note>"
    },
    "IdentityId": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "\\S+"
    },
    "IdentityType": {
      "type": "string",
      "enum": [
        "USER",
        "GROUP"
      ]
    },
    "Image": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of an existing image. Specify this parameter to keep an existing image.</p>"
        },
        "file": {
          "shape": "ImageFile"
        }
      },
      "documentation": "<p>Contains an image that is one of the following:</p> <ul> <li> <p>An image file. Choose this option to upload a new image.</p> </li> <li> <p>The ID of an existing image. Choose this option to keep an existing image.</p> </li> </ul>"
    },
    "ImageFile": {
      "type": "structure",
      "required": [
        "data",
        "type"
      ],
      "members": {
        "data": {
          "shape": "ImageFileData",
          "documentation": "<p>The image file contents, represented as a base64-encoded string. The file size must be less than 1 MB.</p>"
        },
        "type": {
          "shape": "ImageFileType",
          "documentation": "<p>The file type of the image.</p>"
        }
      },
      "documentation": "<p>Contains an image file.</p>"
    },
    "ImageFileData": {
      "type": "blob",
      "max": 1500000,
      "min": 1
    },
    "ImageFileType": {
      "type": "string",
      "enum": [
        "PNG"
      ]
    },
    "ImageLocation": {
      "type": "structure",
      "required": [
        "id",
        "url"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the image.</p>"
        },
        "url": {
          "shape": "Url",
          "documentation": "<p>The URL where the image is available. The URL is valid for 15 minutes so that you can view and download the image</p>"
        }
      },
      "documentation": "<p>Contains an image that is uploaded to AWS IoT SiteWise and available at a URL.</p>"
    },
    "Interval": {
      "type": "string",
      "max": 3,
      "min": 2,
      "pattern": "1w|1d|1h|15m|5m|1m"
    },
    "ListAccessPoliciesRequest": {
      "type": "structure",
      "members": {
        "identityType": {
          "shape": "IdentityType",
          "documentation": "<p>The type of identity (user or group). This parameter is required if you specify <code>identityId</code>.</p>",
          "location": "querystring",
          "locationName": "identityType"
        },
        "identityId": {
          "shape": "IdentityId",
          "documentation": "<p>The ID of the identity. This parameter is required if you specify <code>identityType</code>.</p>",
          "location": "querystring",
          "locationName": "identityId"
        },
        "resourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of resource (portal or project). This parameter is required if you specify <code>resourceId</code>.</p>",
          "location": "querystring",
          "locationName": "resourceType"
        },
        "resourceId": {
          "shape": "ID",
          "documentation": "<p>The ID of the resource. This parameter is required if you specify <code>resourceType</code>.</p>",
          "location": "querystring",
          "locationName": "resourceId"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListAccessPoliciesResponse": {
      "type": "structure",
      "required": [
        "accessPolicySummaries"
      ],
      "members": {
        "accessPolicySummaries": {
          "shape": "AccessPolicySummaries",
          "documentation": "<p>A list that summarizes each access policy.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListAssetModelsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListAssetModelsResponse": {
      "type": "structure",
      "required": [
        "assetModelSummaries"
      ],
      "members": {
        "assetModelSummaries": {
          "shape": "AssetModelSummaries",
          "documentation": "<p>A list that summarizes each asset model.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListAssetsFilter": {
      "type": "string",
      "enum": [
        "ALL",
        "TOP_LEVEL"
      ]
    },
    "ListAssetsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        },
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model by which to filter the list of assets. This parameter is required if you choose <code>ALL</code> for <code>filter</code>.</p>",
          "location": "querystring",
          "locationName": "assetModelId"
        },
        "filter": {
          "shape": "ListAssetsFilter",
          "documentation": "<p>The filter for the requested list of assets. Choose one of the following options:</p> <ul> <li> <p> <code>ALL</code> – The list includes all assets for a given asset model ID. The <code>assetModelId</code> parameter is required if you filter by <code>ALL</code>.</p> </li> <li> <p> <code>TOP_LEVEL</code> – The list includes only top-level assets in the asset hierarchy tree.</p> </li> </ul> <p>Default: <code>ALL</code> </p>",
          "location": "querystring",
          "locationName": "filter"
        }
      }
    },
    "ListAssetsResponse": {
      "type": "structure",
      "required": [
        "assetSummaries"
      ],
      "members": {
        "assetSummaries": {
          "shape": "AssetSummaries",
          "documentation": "<p>A list that summarizes each asset.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListAssociatedAssetsRequest": {
      "type": "structure",
      "required": [
        "assetId"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset to query.</p>",
          "location": "uri",
          "locationName": "assetId"
        },
        "hierarchyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the hierarchy by which child assets are associated to the asset. To find a hierarchy ID, use the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAsset.html\">DescribeAsset</a> or <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_DescribeAssetModel.html\">DescribeAssetModel</a> operations. This parameter is required if you choose <code>CHILD</code> for <code>traversalDirection</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>",
          "location": "querystring",
          "locationName": "hierarchyId"
        },
        "traversalDirection": {
          "shape": "TraversalDirection",
          "documentation": "<p>The direction to list associated assets. Choose one of the following options:</p> <ul> <li> <p> <code>CHILD</code> – The list includes all child assets associated to the asset. The <code>hierarchyId</code> parameter is required if you choose <code>CHILD</code>.</p> </li> <li> <p> <code>PARENT</code> – The list includes the asset's parent asset.</p> </li> </ul> <p>Default: <code>CHILD</code> </p>",
          "location": "querystring",
          "locationName": "traversalDirection"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListAssociatedAssetsResponse": {
      "type": "structure",
      "required": [
        "assetSummaries"
      ],
      "members": {
        "assetSummaries": {
          "shape": "AssociatedAssetsSummaries",
          "documentation": "<p>A list that summarizes the associated assets.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListDashboardsRequest": {
      "type": "structure",
      "required": [
        "projectId"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project.</p>",
          "location": "querystring",
          "locationName": "projectId"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListDashboardsResponse": {
      "type": "structure",
      "required": [
        "dashboardSummaries"
      ],
      "members": {
        "dashboardSummaries": {
          "shape": "DashboardSummaries",
          "documentation": "<p>A list that summarizes each dashboard in the project.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListGatewaysRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListGatewaysResponse": {
      "type": "structure",
      "required": [
        "gatewaySummaries"
      ],
      "members": {
        "gatewaySummaries": {
          "shape": "GatewaySummaries",
          "documentation": "<p>A list that summarizes each gateway.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListPortalsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListPortalsResponse": {
      "type": "structure",
      "members": {
        "portalSummaries": {
          "shape": "PortalSummaries",
          "documentation": "<p>A list that summarizes each portal.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListProjectAssetsRequest": {
      "type": "structure",
      "required": [
        "projectId"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project.</p>",
          "location": "uri",
          "locationName": "projectId"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListProjectAssetsResponse": {
      "type": "structure",
      "required": [
        "assetIds"
      ],
      "members": {
        "assetIds": {
          "shape": "AssetIDs",
          "documentation": "<p>A list that contains the IDs of each asset associated with the project.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListProjectsRequest": {
      "type": "structure",
      "required": [
        "portalId"
      ],
      "members": {
        "portalId": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal.</p>",
          "location": "querystring",
          "locationName": "portalId"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to be used for the next set of paginated results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per paginated request.</p> <p>Default: 50</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListProjectsResponse": {
      "type": "structure",
      "required": [
        "projectSummaries"
      ],
      "members": {
        "projectSummaries": {
          "shape": "ProjectSummaries",
          "documentation": "<p>A list that summarizes each project in the portal.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results, or null if there are no additional results.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource.</p>",
          "location": "querystring",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>The list of key-value pairs that contain metadata for the resource. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "LoggingLevel": {
      "type": "string",
      "enum": [
        "ERROR",
        "INFO",
        "OFF"
      ]
    },
    "LoggingOptions": {
      "type": "structure",
      "required": [
        "level"
      ],
      "members": {
        "level": {
          "shape": "LoggingLevel",
          "documentation": "<p>The AWS IoT SiteWise logging verbosity level.</p>"
        }
      },
      "documentation": "<p>Contains logging options.</p>"
    },
    "Macro": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[^\\u0000-\\u001F\\u007F]+"
    },
    "MaxResults": {
      "type": "integer",
      "max": 250,
      "min": 1
    },
    "Measurement": {
      "type": "structure",
      "members": {},
      "documentation": "<p>Contains an asset measurement property. This structure is empty. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#measurements\">Measurements</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
    },
    "Metric": {
      "type": "structure",
      "required": [
        "expression",
        "variables",
        "window"
      ],
      "members": {
        "expression": {
          "shape": "Expression",
          "documentation": "<p>The mathematical expression that defines the metric aggregation function. You can specify up to 10 variables per expression. You can specify up to 10 functions per expression. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "variables": {
          "shape": "ExpressionVariables",
          "documentation": "<p>The list of variables used in the expression.</p>"
        },
        "window": {
          "shape": "MetricWindow",
          "documentation": "<p>The window (time interval) over which AWS IoT SiteWise computes the metric's aggregation expression. AWS IoT SiteWise computes one data point per <code>window</code>.</p>"
        }
      },
      "documentation": "<p>Contains an asset metric property. With metrics, you can calculate aggregate functions, such as an average, maximum, or minimum, as specified through an expression. A metric maps several values to a single value (such as a sum).</p> <p>The maximum number of dependent/cascading variables used in any one metric calculation is 10. Therefore, a <i>root</i> metric can have up to 10 cascading metrics in its computational dependency tree. Additionally, a metric can only have a data type of <code>DOUBLE</code> and consume properties with data types of <code>INTEGER</code> or <code>DOUBLE</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#metrics\">Metrics</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
    },
    "MetricWindow": {
      "type": "structure",
      "members": {
        "tumbling": {
          "shape": "TumblingWindow",
          "documentation": "<p>The tumbling time interval window.</p>"
        }
      },
      "documentation": "<p>Contains a time interval window used for data aggregate computations (for example, average, sum, count, and so on).</p>"
    },
    "MonitorErrorCode": {
      "type": "string",
      "enum": [
        "INTERNAL_FAILURE",
        "VALIDATION_ERROR",
        "LIMIT_EXCEEDED"
      ]
    },
    "MonitorErrorDetails": {
      "type": "structure",
      "members": {
        "code": {
          "shape": "MonitorErrorCode",
          "documentation": "<p>The error code.</p>"
        },
        "message": {
          "shape": "MonitorErrorMessage",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>Contains AWS IoT SiteWise Monitor error details.</p>"
    },
    "MonitorErrorMessage": {
      "type": "string"
    },
    "Name": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[^\\u0000-\\u001F\\u007F]+"
    },
    "NextToken": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[A-Za-z0-9+/=]+"
    },
    "OffsetInNanos": {
      "type": "integer",
      "max": 999999999,
      "min": 0
    },
    "Permission": {
      "type": "string",
      "enum": [
        "ADMINISTRATOR",
        "VIEWER"
      ]
    },
    "PortalClientId": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[!-~]*"
    },
    "PortalResource": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal.</p>"
        }
      },
      "documentation": "<p>Identifies an AWS IoT SiteWise Monitor portal.</p>"
    },
    "PortalState": {
      "type": "string",
      "enum": [
        "CREATING",
        "UPDATING",
        "DELETING",
        "ACTIVE",
        "FAILED"
      ]
    },
    "PortalStatus": {
      "type": "structure",
      "required": [
        "state"
      ],
      "members": {
        "state": {
          "shape": "PortalState",
          "documentation": "<p>The current state of the portal.</p>"
        },
        "error": {
          "shape": "MonitorErrorDetails",
          "documentation": "<p>Contains associated error information, if any.</p>"
        }
      },
      "documentation": "<p>Contains information about the current status of a portal.</p>"
    },
    "PortalSummaries": {
      "type": "list",
      "member": {
        "shape": "PortalSummary"
      }
    },
    "PortalSummary": {
      "type": "structure",
      "required": [
        "id",
        "name",
        "startUrl",
        "status"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the portal.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The portal's description.</p>"
        },
        "startUrl": {
          "shape": "Url",
          "documentation": "<p>The public root URL for the AWS IoT AWS IoT SiteWise Monitor application portal.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the portal was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the portal was last updated, in Unix epoch time.</p>"
        },
        "roleArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the service role that allows the portal's users to access your AWS IoT SiteWise resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for AWS IoT SiteWise Monitor</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "status": {
          "shape": "PortalStatus"
        }
      },
      "documentation": "<p>Contains a portal summary.</p>"
    },
    "ProjectResource": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the project.</p>"
        }
      },
      "documentation": "<p>Identifies a specific AWS IoT SiteWise Monitor project.</p>"
    },
    "ProjectSummaries": {
      "type": "list",
      "member": {
        "shape": "ProjectSummary"
      }
    },
    "ProjectSummary": {
      "type": "structure",
      "required": [
        "id",
        "name"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the project.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the project.</p>"
        },
        "description": {
          "shape": "Description",
          "documentation": "<p>The project's description.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the project was created, in Unix epoch time.</p>"
        },
        "lastUpdateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the project was last updated, in Unix epoch time.</p>"
        }
      },
      "documentation": "<p>Contains project summary information.</p>"
    },
    "Property": {
      "type": "structure",
      "required": [
        "id",
        "name",
        "dataType"
      ],
      "members": {
        "id": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset property.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the property.</p>"
        },
        "alias": {
          "shape": "PropertyAlias",
          "documentation": "<p>The property alias that identifies the property, such as an OPC-UA server data stream path (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "notification": {
          "shape": "PropertyNotification",
          "documentation": "<p>The asset property's notification topic and state. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_UpdateAssetProperty.html\">UpdateAssetProperty</a>.</p>"
        },
        "dataType": {
          "shape": "PropertyDataType",
          "documentation": "<p>The property data type.</p>"
        },
        "unit": {
          "shape": "PropertyUnit",
          "documentation": "<p>The unit (such as <code>Newtons</code> or <code>RPM</code>) of the asset property.</p>"
        },
        "type": {
          "shape": "PropertyType",
          "documentation": "<p>The property type (see <code>PropertyType</code>). A property contains one type.</p>"
        }
      },
      "documentation": "<p>Contains asset property information.</p>"
    },
    "PropertyAlias": {
      "type": "string",
      "min": 1,
      "pattern": "[^\\u0000-\\u001F\\u007F]+"
    },
    "PropertyDataType": {
      "type": "string",
      "enum": [
        "STRING",
        "INTEGER",
        "DOUBLE",
        "BOOLEAN"
      ]
    },
    "PropertyNotification": {
      "type": "structure",
      "required": [
        "topic",
        "state"
      ],
      "members": {
        "topic": {
          "shape": "PropertyNotificationTopic",
          "documentation": "<p>The MQTT topic to which AWS IoT SiteWise publishes property value update notifications.</p>"
        },
        "state": {
          "shape": "PropertyNotificationState",
          "documentation": "<p>The current notification state.</p>"
        }
      },
      "documentation": "<p>Contains asset property value notification information. When the notification state is enabled, AWS IoT SiteWise publishes property value updates to a unique MQTT topic. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html\">Interacting with other services</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
    },
    "PropertyNotificationState": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "PropertyNotificationTopic": {
      "type": "string"
    },
    "PropertyType": {
      "type": "structure",
      "members": {
        "attribute": {
          "shape": "Attribute",
          "documentation": "<p>Specifies an asset attribute property. An attribute generally contains static information, such as the serial number of an <a href=\"https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications\">IIoT</a> wind turbine.</p>"
        },
        "measurement": {
          "shape": "Measurement",
          "documentation": "<p>Specifies an asset measurement property. A measurement represents a device's raw sensor data stream, such as timestamped temperature values or timestamped power values.</p>"
        },
        "transform": {
          "shape": "Transform",
          "documentation": "<p>Specifies an asset transform property. A transform contains a mathematical expression that maps a property's data points from one form to another, such as a unit conversion from Celsius to Fahrenheit.</p>"
        },
        "metric": {
          "shape": "Metric",
          "documentation": "<p>Specifies an asset metric property. A metric contains a mathematical expression that uses aggregate functions to process all input data points over a time interval and output a single data point, such as to calculate the average hourly temperature.</p>"
        }
      },
      "documentation": "<p>Contains a property type, which can be one of <code>attribute</code>, <code>measurement</code>, <code>metric</code>, or <code>transform</code>.</p>"
    },
    "PropertyUnit": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[^\\u0000-\\u001F\\u007F]+"
    },
    "PropertyValueBooleanValue": {
      "type": "boolean"
    },
    "PropertyValueDoubleValue": {
      "type": "double"
    },
    "PropertyValueIntegerValue": {
      "type": "integer"
    },
    "PropertyValueStringValue": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[^\\u0000-\\u001F\\u007F]+"
    },
    "PutAssetPropertyValueEntries": {
      "type": "list",
      "member": {
        "shape": "PutAssetPropertyValueEntry"
      }
    },
    "PutAssetPropertyValueEntry": {
      "type": "structure",
      "required": [
        "entryId",
        "propertyValues"
      ],
      "members": {
        "entryId": {
          "shape": "EntryId",
          "documentation": "<p>The user specified ID for the entry. You can use this ID to identify which entries failed.</p>"
        },
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset to update.</p>"
        },
        "propertyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset property for this entry.</p>"
        },
        "propertyAlias": {
          "shape": "AssetPropertyAlias",
          "documentation": "<p>The property alias that identifies the property, such as an OPC-UA server data stream path (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "propertyValues": {
          "shape": "AssetPropertyValues",
          "documentation": "<p>The list of property values to upload. You can specify up to 10 <code>propertyValues</code> array elements. </p>"
        }
      },
      "documentation": "<p>Contains a list of value updates for an asset property in the list of asset entries consumed by the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html\">BatchPutAssetPropertyValue</a> API.</p>"
    },
    "PutLoggingOptionsRequest": {
      "type": "structure",
      "required": [
        "loggingOptions"
      ],
      "members": {
        "loggingOptions": {
          "shape": "LoggingOptions",
          "documentation": "<p>The logging options to set.</p>"
        }
      }
    },
    "PutLoggingOptionsResponse": {
      "type": "structure",
      "members": {}
    },
    "Qualities": {
      "type": "list",
      "member": {
        "shape": "Quality"
      },
      "max": 1,
      "min": 1
    },
    "Quality": {
      "type": "string",
      "enum": [
        "GOOD",
        "BAD",
        "UNCERTAIN"
      ]
    },
    "Resolution": {
      "type": "string",
      "max": 2,
      "min": 2,
      "pattern": "1m|1h|1d"
    },
    "Resource": {
      "type": "structure",
      "members": {
        "portal": {
          "shape": "PortalResource",
          "documentation": "<p>A portal resource.</p>"
        },
        "project": {
          "shape": "ProjectResource",
          "documentation": "<p>A project resource.</p>"
        }
      },
      "documentation": "<p>Contains an AWS IoT SiteWise Monitor resource ID for a portal or project.</p>"
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "PORTAL",
        "PROJECT"
      ]
    },
    "SSOApplicationId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[!-~]*"
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
      "max": 200,
      "min": 0
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
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to tag.</p>",
          "location": "querystring",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "TagMap",
          "documentation": "<p>A list of key-value pairs that contain metadata for the resource. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html\">Tagging your AWS IoT SiteWise resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
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
    "TimeInNanos": {
      "type": "structure",
      "required": [
        "timeInSeconds"
      ],
      "members": {
        "timeInSeconds": {
          "shape": "TimeInSeconds",
          "documentation": "<p>The timestamp date, in seconds, in the Unix epoch format. Fractional nanosecond data is provided by <code>offsetInNanos</code>.</p>"
        },
        "offsetInNanos": {
          "shape": "OffsetInNanos",
          "documentation": "<p>The nanosecond offset from <code>timeInSeconds</code>.</p>"
        }
      },
      "documentation": "<p>Contains a timestamp with optional nanosecond granularity.</p>"
    },
    "TimeInSeconds": {
      "type": "long",
      "max": 31556889864403200,
      "min": 1
    },
    "TimeOrdering": {
      "type": "string",
      "enum": [
        "ASCENDING",
        "DESCENDING"
      ]
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "Timestamps": {
      "type": "list",
      "member": {
        "shape": "TimeInNanos"
      }
    },
    "Transform": {
      "type": "structure",
      "required": [
        "expression",
        "variables"
      ],
      "members": {
        "expression": {
          "shape": "Expression",
          "documentation": "<p>The mathematical expression that defines the transformation function. You can specify up to 10 variables per expression. You can specify up to 10 functions per expression. </p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "variables": {
          "shape": "ExpressionVariables",
          "documentation": "<p>The list of variables used in the expression.</p>"
        }
      },
      "documentation": "<p>Contains an asset transform property. A transform is a one-to-one mapping of a property's data points from one form to another. For example, you can use a transform to convert a Celsius data stream to Fahrenheit by applying the transformation expression to each data point of the Celsius stream. A transform can only have a data type of <code>DOUBLE</code> and consume properties with data types of <code>INTEGER</code> or <code>DOUBLE</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html#transforms\">Transforms</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
    },
    "TraversalDirection": {
      "type": "string",
      "enum": [
        "PARENT",
        "CHILD"
      ]
    },
    "TumblingWindow": {
      "type": "structure",
      "required": [
        "interval"
      ],
      "members": {
        "interval": {
          "shape": "Interval",
          "documentation": "<p>The time interval for the tumbling window. Note that <code>w</code> represents weeks, <code>d</code> represents days, <code>h</code> represents hours, and <code>m</code> represents minutes. AWS IoT SiteWise computes the <code>1w</code> interval the end of Sunday at midnight each week (UTC), the <code>1d</code> interval at the end of each day at midnight (UTC), the <code>1h</code> interval at the end of each hour, and so on. </p> <p>When AWS IoT SiteWise aggregates data points for metric computations, the start of each interval is exclusive and the end of each interval is inclusive. AWS IoT SiteWise places the computed data point at the end of the interval.</p>"
        }
      },
      "documentation": "<p>Contains a tumbling window, which is a repeating fixed-sized, non-overlapping, and contiguous time interval. This window is used in metric and aggregation computations.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of the resource to untag.</p>",
          "location": "querystring",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of keys for tags to remove from the resource.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateAccessPolicyRequest": {
      "type": "structure",
      "required": [
        "accessPolicyId",
        "accessPolicyIdentity",
        "accessPolicyResource",
        "accessPolicyPermission"
      ],
      "members": {
        "accessPolicyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the access policy.</p>",
          "location": "uri",
          "locationName": "accessPolicyId"
        },
        "accessPolicyIdentity": {
          "shape": "Identity",
          "documentation": "<p>The identity for this access policy. Choose either a <code>user</code> or a <code>group</code> but not both.</p>"
        },
        "accessPolicyResource": {
          "shape": "Resource",
          "documentation": "<p>The AWS IoT SiteWise Monitor resource for this access policy. Choose either <code>portal</code> or <code>project</code> but not both.</p>"
        },
        "accessPolicyPermission": {
          "shape": "Permission",
          "documentation": "<p>The permission level for this access policy. Note that a project <code>ADMINISTRATOR</code> is also known as a project owner.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateAccessPolicyResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateAssetModelRequest": {
      "type": "structure",
      "required": [
        "assetModelId",
        "assetModelName"
      ],
      "members": {
        "assetModelId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset model to update.</p>",
          "location": "uri",
          "locationName": "assetModelId"
        },
        "assetModelName": {
          "shape": "Name",
          "documentation": "<p>A unique, friendly name for the asset model.</p>"
        },
        "assetModelDescription": {
          "shape": "Description",
          "documentation": "<p>A description for the asset model.</p>"
        },
        "assetModelProperties": {
          "shape": "AssetModelProperties",
          "documentation": "<p>The updated property definitions of the asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-properties.html\">Asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>You can specify up to 200 properties per asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "assetModelHierarchies": {
          "shape": "AssetModelHierarchies",
          "documentation": "<p>The updated hierarchy definitions of the asset model. Each hierarchy specifies an asset model whose assets can be children of any other assets created from this asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>You can specify up to 10 hierarchies per asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateAssetModelResponse": {
      "type": "structure",
      "required": [
        "assetModelStatus"
      ],
      "members": {
        "assetModelStatus": {
          "shape": "AssetModelStatus",
          "documentation": "<p>The status of the asset model, which contains a state (<code>UPDATING</code> after successfully calling this operation) and any error message.</p>"
        }
      }
    },
    "UpdateAssetPropertyRequest": {
      "type": "structure",
      "required": [
        "assetId",
        "propertyId"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset to be updated.</p>",
          "location": "uri",
          "locationName": "assetId"
        },
        "propertyId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset property to be updated.</p>",
          "location": "uri",
          "locationName": "propertyId"
        },
        "propertyAlias": {
          "shape": "PropertyAlias",
          "documentation": "<p>The property alias that identifies the property, such as an OPC-UA server data stream path (for example, <code>/company/windfarm/3/turbine/7/temperature</code>). For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/connect-data-streams.html\">Mapping industrial data streams to asset properties</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>If you omit this parameter, the alias is removed from the property.</p>"
        },
        "propertyNotificationState": {
          "shape": "PropertyNotificationState",
          "documentation": "<p>The MQTT notification state (enabled or disabled) for this asset property. When the notification state is enabled, AWS IoT SiteWise publishes property value updates to a unique MQTT topic. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/interact-with-other-services.html\">Interacting with other services</a> in the <i>AWS IoT SiteWise User Guide</i>.</p> <p>If you omit this parameter, the notification state is set to <code>DISABLED</code>.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateAssetRequest": {
      "type": "structure",
      "required": [
        "assetId",
        "assetName"
      ],
      "members": {
        "assetId": {
          "shape": "ID",
          "documentation": "<p>The ID of the asset to update.</p>",
          "location": "uri",
          "locationName": "assetId"
        },
        "assetName": {
          "shape": "Name",
          "documentation": "<p>A unique, friendly name for the asset.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateAssetResponse": {
      "type": "structure",
      "required": [
        "assetStatus"
      ],
      "members": {
        "assetStatus": {
          "shape": "AssetStatus",
          "documentation": "<p>The status of the asset, which contains a state (<code>UPDATING</code> after successfully calling this operation) and any error message.</p>"
        }
      }
    },
    "UpdateDashboardRequest": {
      "type": "structure",
      "required": [
        "dashboardId",
        "dashboardName",
        "dashboardDefinition"
      ],
      "members": {
        "dashboardId": {
          "shape": "ID",
          "documentation": "<p>The ID of the dashboard to update.</p>",
          "location": "uri",
          "locationName": "dashboardId"
        },
        "dashboardName": {
          "shape": "Name",
          "documentation": "<p>A new friendly name for the dashboard.</p>"
        },
        "dashboardDescription": {
          "shape": "Description",
          "documentation": "<p>A new description for the dashboard.</p>"
        },
        "dashboardDefinition": {
          "shape": "DashboardDefinition",
          "documentation": "<p>The new dashboard definition, as specified in a JSON literal. For detailed information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/create-dashboards-using-aws-cli.html\">Creating dashboards (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateDashboardResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateGatewayCapabilityConfigurationRequest": {
      "type": "structure",
      "required": [
        "gatewayId",
        "capabilityNamespace",
        "capabilityConfiguration"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway to be updated.</p>",
          "location": "uri",
          "locationName": "gatewayId"
        },
        "capabilityNamespace": {
          "shape": "CapabilityNamespace",
          "documentation": "<p>The namespace of the gateway capability configuration to be updated. For example, if you configure OPC-UA sources from the AWS IoT SiteWise console, your OPC-UA capability configuration has the namespace <code>iotsitewise:opcuacollector:version</code>, where <code>version</code> is a number such as <code>1</code>.</p>"
        },
        "capabilityConfiguration": {
          "shape": "CapabilityConfiguration",
          "documentation": "<p>The JSON document that defines the configuration for the gateway capability. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/configure-sources.html#configure-source-cli\">Configuring data sources (CLI)</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      }
    },
    "UpdateGatewayCapabilityConfigurationResponse": {
      "type": "structure",
      "required": [
        "capabilityNamespace",
        "capabilitySyncStatus"
      ],
      "members": {
        "capabilityNamespace": {
          "shape": "CapabilityNamespace",
          "documentation": "<p>The namespace of the gateway capability.</p>"
        },
        "capabilitySyncStatus": {
          "shape": "CapabilitySyncStatus",
          "documentation": "<p>The synchronization status of the capability configuration. The sync status can be one of the following:</p> <ul> <li> <p> <code>IN_SYNC</code> – The gateway is running the capability configuration.</p> </li> <li> <p> <code>OUT_OF_SYNC</code> – The gateway hasn't received the capability configuration.</p> </li> <li> <p> <code>SYNC_FAILED</code> – The gateway rejected the capability configuration.</p> </li> </ul> <p>After you update a capability configuration, its sync status is <code>OUT_OF_SYNC</code> until the gateway receives and applies or rejects the updated configuration.</p>"
        }
      }
    },
    "UpdateGatewayRequest": {
      "type": "structure",
      "required": [
        "gatewayId",
        "gatewayName"
      ],
      "members": {
        "gatewayId": {
          "shape": "ID",
          "documentation": "<p>The ID of the gateway to update.</p>",
          "location": "uri",
          "locationName": "gatewayId"
        },
        "gatewayName": {
          "shape": "Name",
          "documentation": "<p>A unique, friendly name for the gateway.</p>"
        }
      }
    },
    "UpdatePortalRequest": {
      "type": "structure",
      "required": [
        "portalId",
        "portalName",
        "portalContactEmail",
        "roleArn"
      ],
      "members": {
        "portalId": {
          "shape": "ID",
          "documentation": "<p>The ID of the portal to update.</p>",
          "location": "uri",
          "locationName": "portalId"
        },
        "portalName": {
          "shape": "Name",
          "documentation": "<p>A new friendly name for the portal.</p>"
        },
        "portalDescription": {
          "shape": "Description",
          "documentation": "<p>A new description for the portal.</p>"
        },
        "portalContactEmail": {
          "shape": "Email",
          "documentation": "<p>The AWS administrator's contact email address.</p>"
        },
        "portalLogoImage": {
          "shape": "Image"
        },
        "roleArn": {
          "shape": "ARN",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">ARN</a> of a service role that allows the portal's users to access your AWS IoT SiteWise resources on your behalf. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/monitor-service-role.html\">Using service roles for AWS IoT SiteWise Monitor</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdatePortalResponse": {
      "type": "structure",
      "required": [
        "portalStatus"
      ],
      "members": {
        "portalStatus": {
          "shape": "PortalStatus",
          "documentation": "<p>The status of the portal, which contains a state (<code>UPDATING</code> after successfully calling this operation) and any error message.</p>"
        }
      }
    },
    "UpdateProjectRequest": {
      "type": "structure",
      "required": [
        "projectId",
        "projectName"
      ],
      "members": {
        "projectId": {
          "shape": "ID",
          "documentation": "<p>The ID of the project to update.</p>",
          "location": "uri",
          "locationName": "projectId"
        },
        "projectName": {
          "shape": "Name",
          "documentation": "<p>A new friendly name for the project.</p>"
        },
        "projectDescription": {
          "shape": "Description",
          "documentation": "<p>A new description for the project.</p>"
        },
        "clientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>",
          "idempotencyToken": true
        }
      }
    },
    "UpdateProjectResponse": {
      "type": "structure",
      "members": {}
    },
    "Url": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^(http|https)\\://\\S+"
    },
    "UserIdentity": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "IdentityId",
          "documentation": "<p>The AWS SSO ID of the user.</p>"
        }
      },
      "documentation": "<p>Contains information for a user identity in an access policy.</p>"
    },
    "VariableName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[a-z][a-z0-9_]*$"
    },
    "VariableValue": {
      "type": "structure",
      "required": [
        "propertyId"
      ],
      "members": {
        "propertyId": {
          "shape": "Macro",
          "documentation": "<p>The ID of the property to use as the variable. You can use the property <code>name</code> if it's from the same asset model.</p>"
        },
        "hierarchyId": {
          "shape": "Macro",
          "documentation": "<p>The ID of the hierarchy to query for the property ID. You can use the hierarchy's name instead of the hierarchy's ID.</p> <p>You use a hierarchy ID instead of a model ID because you can have several hierarchies using the same model and therefore the same <code>propertyId</code>. For example, you might have separately grouped assets that come from the same asset model. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/asset-hierarchies.html\">Asset hierarchies</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Identifies a property value used in an expression.</p>"
    },
    "Variant": {
      "type": "structure",
      "members": {
        "stringValue": {
          "shape": "PropertyValueStringValue",
          "documentation": "<p>Asset property data of type string (sequence of characters).</p>"
        },
        "integerValue": {
          "shape": "PropertyValueIntegerValue",
          "documentation": "<p>Asset property data of type integer (whole number).</p>"
        },
        "doubleValue": {
          "shape": "PropertyValueDoubleValue",
          "documentation": "<p>Asset property data of type double (floating point number).</p>"
        },
        "booleanValue": {
          "shape": "PropertyValueBooleanValue",
          "documentation": "<p>Asset property data of type Boolean (true or false).</p>"
        }
      },
      "documentation": "<p>Contains an asset property value (of a single type only).</p>"
    }
  },
  "documentation": "<p>Welcome to the AWS IoT SiteWise API Reference. AWS IoT SiteWise is an AWS service that connects <a href=\"https://en.wikipedia.org/wiki/Internet_of_things#Industrial_applications\">Industrial Internet of Things (IIoT)</a> devices to the power of the AWS Cloud. For more information, see the <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/\">AWS IoT SiteWise User Guide</a>. For information about AWS IoT SiteWise quotas, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html\">Quotas</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>"
}
]===]))