local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-09-06",
    "endpointPrefix": "iotthingsgraph",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS IoT Things Graph",
    "serviceId": "IoTThingsGraph",
    "signatureVersion": "v4",
    "signingName": "iotthingsgraph",
    "targetPrefix": "IotThingsGraphFrontEndService",
    "uid": "iotthingsgraph-2018-09-06"
  },
  "operations": {
    "AssociateEntityToThing": {
      "name": "AssociateEntityToThing",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateEntityToThingRequest"
      },
      "output": {
        "shape": "AssociateEntityToThingResponse"
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
      "documentation": "<p>Associates a device with a concrete thing that is in the user's registry.</p> <p>A thing can be associated with only one device at a time. If you associate a thing with a new device id, its previous association will be removed.</p>"
    },
    "CreateFlowTemplate": {
      "name": "CreateFlowTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateFlowTemplateRequest"
      },
      "output": {
        "shape": "CreateFlowTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a workflow template. Workflows can be created only in the user's namespace. (The public namespace contains only entities.) The workflow can contain only entities in the specified namespace. The workflow is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.</p>"
    },
    "CreateSystemInstance": {
      "name": "CreateSystemInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSystemInstanceRequest"
      },
      "output": {
        "shape": "CreateSystemInstanceResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "LimitExceededException"
        }
      ],
      "documentation": "<p>Creates a system instance. </p> <p>This action validates the system instance, prepares the deployment-related resources. For Greengrass deployments, it updates the Greengrass group that is specified by the <code>greengrassGroupName</code> parameter. It also adds a file to the S3 bucket specified by the <code>s3BucketName</code> parameter. You need to call <code>DeploySystemInstance</code> after running this action.</p> <p>For Greengrass deployments, since this action modifies and adds resources to a Greengrass group and an S3 bucket on the caller's behalf, the calling identity must have write permissions to both the specified Greengrass group and S3 bucket. Otherwise, the call will fail with an authorization error.</p> <p>For cloud deployments, this action requires a <code>flowActionsRoleArn</code> value. This is an IAM role that has permissions to access AWS services, such as AWS Lambda and AWS IoT, that the flow uses when it executes.</p> <p>If the definition document doesn't specify a version of the user's namespace, the latest version will be used by default.</p>"
    },
    "CreateSystemTemplate": {
      "name": "CreateSystemTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSystemTemplateRequest"
      },
      "output": {
        "shape": "CreateSystemTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a system. The system is validated against the entities in the latest version of the user's namespace unless another namespace version is specified in the request.</p>"
    },
    "DeleteFlowTemplate": {
      "name": "DeleteFlowTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteFlowTemplateRequest"
      },
      "output": {
        "shape": "DeleteFlowTemplateResponse"
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
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a workflow. Any new system or deployment that contains this workflow will fail to update or deploy. Existing deployments that contain the workflow will continue to run (since they use a snapshot of the workflow taken at the time of deployment).</p>"
    },
    "DeleteNamespace": {
      "name": "DeleteNamespace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteNamespaceRequest"
      },
      "output": {
        "shape": "DeleteNamespaceResponse"
      },
      "errors": [
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Deletes the specified namespace. This action deletes all of the entities in the namespace. Delete the systems and flows that use entities in the namespace before performing this action.</p>"
    },
    "DeleteSystemInstance": {
      "name": "DeleteSystemInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSystemInstanceRequest"
      },
      "output": {
        "shape": "DeleteSystemInstanceResponse"
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
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a system instance. Only system instances that have never been deployed, or that have been undeployed can be deleted.</p> <p>Users can create a new system instance that has the same ID as a deleted system instance.</p>"
    },
    "DeleteSystemTemplate": {
      "name": "DeleteSystemTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSystemTemplateRequest"
      },
      "output": {
        "shape": "DeleteSystemTemplateResponse"
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
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes a system. New deployments can't contain the system after its deletion. Existing deployments that contain the system will continue to work because they use a snapshot of the system that is taken when it is deployed.</p>"
    },
    "DeploySystemInstance": {
      "name": "DeploySystemInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeploySystemInstanceRequest"
      },
      "output": {
        "shape": "DeploySystemInstanceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
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
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p> <b>Greengrass and Cloud Deployments</b> </p> <p>Deploys the system instance to the target specified in <code>CreateSystemInstance</code>. </p> <p> <b>Greengrass Deployments</b> </p> <p>If the system or any workflows and entities have been updated before this action is called, then the deployment will create a new Amazon Simple Storage Service resource file and then deploy it.</p> <p>Since this action creates a Greengrass deployment on the caller's behalf, the calling identity must have write permissions to the specified Greengrass group. Otherwise, the call will fail with an authorization error.</p> <p>For information about the artifacts that get added to your Greengrass core device when you use this API, see <a href=\"https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html\">AWS IoT Things Graph and AWS IoT Greengrass</a>.</p>"
    },
    "DeprecateFlowTemplate": {
      "name": "DeprecateFlowTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeprecateFlowTemplateRequest"
      },
      "output": {
        "shape": "DeprecateFlowTemplateResponse"
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
      "documentation": "<p>Deprecates the specified workflow. This action marks the workflow for deletion. Deprecated flows can't be deployed, but existing deployments will continue to run.</p>"
    },
    "DeprecateSystemTemplate": {
      "name": "DeprecateSystemTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeprecateSystemTemplateRequest"
      },
      "output": {
        "shape": "DeprecateSystemTemplateResponse"
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
      "documentation": "<p>Deprecates the specified system.</p>"
    },
    "DescribeNamespace": {
      "name": "DescribeNamespace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeNamespaceRequest"
      },
      "output": {
        "shape": "DescribeNamespaceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
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
      "documentation": "<p>Gets the latest version of the user's namespace and the public version that it is tracking.</p>"
    },
    "DissociateEntityFromThing": {
      "name": "DissociateEntityFromThing",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DissociateEntityFromThingRequest"
      },
      "output": {
        "shape": "DissociateEntityFromThingResponse"
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
      "documentation": "<p>Dissociates a device entity from a concrete thing. The action takes only the type of the entity that you need to dissociate because only one entity of a particular type can be associated with a thing.</p>"
    },
    "GetEntities": {
      "name": "GetEntities",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEntitiesRequest"
      },
      "output": {
        "shape": "GetEntitiesResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Gets definitions of the specified entities. Uses the latest version of the user's namespace by default. This API returns the following TDM entities.</p> <ul> <li> <p>Properties</p> </li> <li> <p>States</p> </li> <li> <p>Events</p> </li> <li> <p>Actions</p> </li> <li> <p>Capabilities</p> </li> <li> <p>Mappings</p> </li> <li> <p>Devices</p> </li> <li> <p>Device Models</p> </li> <li> <p>Services</p> </li> </ul> <p>This action doesn't return definitions for systems, flows, and deployments.</p>"
    },
    "GetFlowTemplate": {
      "name": "GetFlowTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetFlowTemplateRequest"
      },
      "output": {
        "shape": "GetFlowTemplateResponse"
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
      "documentation": "<p>Gets the latest version of the <code>DefinitionDocument</code> and <code>FlowTemplateSummary</code> for the specified workflow.</p>"
    },
    "GetFlowTemplateRevisions": {
      "name": "GetFlowTemplateRevisions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetFlowTemplateRevisionsRequest"
      },
      "output": {
        "shape": "GetFlowTemplateRevisionsResponse"
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
      "documentation": "<p>Gets revisions of the specified workflow. Only the last 100 revisions are stored. If the workflow has been deprecated, this action will return revisions that occurred before the deprecation. This action won't work for workflows that have been deleted.</p>"
    },
    "GetNamespaceDeletionStatus": {
      "name": "GetNamespaceDeletionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetNamespaceDeletionStatusRequest"
      },
      "output": {
        "shape": "GetNamespaceDeletionStatusResponse"
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
      "documentation": "<p>Gets the status of a namespace deletion task.</p>"
    },
    "GetSystemInstance": {
      "name": "GetSystemInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSystemInstanceRequest"
      },
      "output": {
        "shape": "GetSystemInstanceResponse"
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
      "documentation": "<p>Gets a system instance.</p>"
    },
    "GetSystemTemplate": {
      "name": "GetSystemTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSystemTemplateRequest"
      },
      "output": {
        "shape": "GetSystemTemplateResponse"
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
      "documentation": "<p>Gets a system.</p>"
    },
    "GetSystemTemplateRevisions": {
      "name": "GetSystemTemplateRevisions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSystemTemplateRevisionsRequest"
      },
      "output": {
        "shape": "GetSystemTemplateRevisionsResponse"
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
      "documentation": "<p>Gets revisions made to the specified system template. Only the previous 100 revisions are stored. If the system has been deprecated, this action will return the revisions that occurred before its deprecation. This action won't work with systems that have been deleted.</p>"
    },
    "GetUploadStatus": {
      "name": "GetUploadStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetUploadStatusRequest"
      },
      "output": {
        "shape": "GetUploadStatusResponse"
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
      "documentation": "<p>Gets the status of the specified upload.</p>"
    },
    "ListFlowExecutionMessages": {
      "name": "ListFlowExecutionMessages",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListFlowExecutionMessagesRequest"
      },
      "output": {
        "shape": "ListFlowExecutionMessagesResponse"
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
      "documentation": "<p>Returns a list of objects that contain information about events in a flow execution.</p>"
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
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all tags on an AWS IoT Things Graph resource.</p>"
    },
    "SearchEntities": {
      "name": "SearchEntities",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchEntitiesRequest"
      },
      "output": {
        "shape": "SearchEntitiesResponse"
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
      "documentation": "<p>Searches for entities of the specified type. You can search for entities in your namespace and the public namespace that you're tracking.</p>"
    },
    "SearchFlowExecutions": {
      "name": "SearchFlowExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchFlowExecutionsRequest"
      },
      "output": {
        "shape": "SearchFlowExecutionsResponse"
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
      "documentation": "<p>Searches for AWS IoT Things Graph workflow execution instances.</p>"
    },
    "SearchFlowTemplates": {
      "name": "SearchFlowTemplates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchFlowTemplatesRequest"
      },
      "output": {
        "shape": "SearchFlowTemplatesResponse"
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
        }
      ],
      "documentation": "<p>Searches for summary information about workflows.</p>"
    },
    "SearchSystemInstances": {
      "name": "SearchSystemInstances",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchSystemInstancesRequest"
      },
      "output": {
        "shape": "SearchSystemInstancesResponse"
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
        }
      ],
      "documentation": "<p>Searches for system instances in the user's account.</p>"
    },
    "SearchSystemTemplates": {
      "name": "SearchSystemTemplates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchSystemTemplatesRequest"
      },
      "output": {
        "shape": "SearchSystemTemplatesResponse"
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
        }
      ],
      "documentation": "<p>Searches for summary information about systems in the user's account. You can filter by the ID of a workflow to return only systems that use the specified workflow.</p>"
    },
    "SearchThings": {
      "name": "SearchThings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchThingsRequest"
      },
      "output": {
        "shape": "SearchThingsResponse"
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
      "documentation": "<p>Searches for things associated with the specified entity. You can search by both device and device model.</p> <p>For example, if two different devices, camera1 and camera2, implement the camera device model, the user can associate thing1 to camera1 and thing2 to camera2. <code>SearchThings(camera2)</code> will return only thing2, but <code>SearchThings(camera)</code> will return both thing1 and thing2.</p> <p>This action searches for exact matches and doesn't perform partial text matching.</p>"
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
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a tag for the specified resource.</p>"
    },
    "UndeploySystemInstance": {
      "name": "UndeploySystemInstance",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UndeploySystemInstanceRequest"
      },
      "output": {
        "shape": "UndeploySystemInstanceResponse"
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
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Removes a system instance from its target (Cloud or Greengrass).</p>"
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
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Removes a tag from the specified resource.</p>"
    },
    "UpdateFlowTemplate": {
      "name": "UpdateFlowTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateFlowTemplateRequest"
      },
      "output": {
        "shape": "UpdateFlowTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the specified workflow. All deployed systems and system instances that use the workflow will see the changes in the flow when it is redeployed. If you don't want this behavior, copy the workflow (creating a new workflow with a different ID), and update the copy. The workflow can contain only entities in the specified namespace. </p>"
    },
    "UpdateSystemTemplate": {
      "name": "UpdateSystemTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateSystemTemplateRequest"
      },
      "output": {
        "shape": "UpdateSystemTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the specified system. You don't need to run this action after updating a workflow. Any deployment that uses the system will see the changes in the system when it is redeployed.</p>"
    },
    "UploadEntityDefinitions": {
      "name": "UploadEntityDefinitions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UploadEntityDefinitionsRequest"
      },
      "output": {
        "shape": "UploadEntityDefinitionsResponse"
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
      "documentation": "<p>Asynchronously uploads one or more entity definitions to the user's namespace. The <code>document</code> parameter is required if <code>syncWithPublicNamespace</code> and <code>deleteExistingEntites</code> are false. If the <code>syncWithPublicNamespace</code> parameter is set to <code>true</code>, the user's namespace will synchronize with the latest version of the public namespace. If <code>deprecateExistingEntities</code> is set to true, all entities in the latest version will be deleted before the new <code>DefinitionDocument</code> is uploaded.</p> <p>When a user uploads entity definitions for the first time, the service creates a new namespace for the user. The new namespace tracks the public namespace. Currently users can have only one namespace. The namespace version increments whenever a user uploads entity definitions that are backwards-incompatible and whenever a user sets the <code>syncWithPublicNamespace</code> parameter or the <code>deprecateExistingEntities</code> parameter to <code>true</code>.</p> <p>The IDs for all of the entities should be in URN format. Each entity must be in the user's namespace. Users can't create entities in the public namespace, but entity definitions can refer to entities in the public namespace.</p> <p>Valid entities are <code>Device</code>, <code>DeviceModel</code>, <code>Service</code>, <code>Capability</code>, <code>State</code>, <code>Action</code>, <code>Event</code>, <code>Property</code>, <code>Mapping</code>, <code>Enum</code>. </p>"
    }
  },
  "shapes": {
    "Arn": {
      "type": "string"
    },
    "AssociateEntityToThingRequest": {
      "type": "structure",
      "required": [
        "thingName",
        "entityId"
      ],
      "members": {
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the thing to which the entity is to be associated.</p>"
        },
        "entityId": {
          "shape": "Urn",
          "documentation": "<p>The ID of the device to be associated with the thing.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code> </p>"
        },
        "namespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
        }
      }
    },
    "AssociateEntityToThingResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateFlowTemplateRequest": {
      "type": "structure",
      "required": [
        "definition"
      ],
      "members": {
        "definition": {
          "shape": "DefinitionDocument",
          "documentation": "<p>The workflow <code>DefinitionDocument</code>.</p>"
        },
        "compatibleNamespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The namespace version in which the workflow is to be created.</p> <p>If no value is specified, the latest version is used by default.</p>"
        }
      }
    },
    "CreateFlowTemplateResponse": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "FlowTemplateSummary",
          "documentation": "<p>The summary object that describes the created workflow.</p>"
        }
      }
    },
    "CreateSystemInstanceRequest": {
      "type": "structure",
      "required": [
        "definition",
        "target"
      ],
      "members": {
        "tags": {
          "shape": "TagList",
          "documentation": "<p>Metadata, consisting of key-value pairs, that can be used to categorize your system instances.</p>"
        },
        "definition": {
          "shape": "DefinitionDocument"
        },
        "target": {
          "shape": "DeploymentTarget",
          "documentation": "<p>The target type of the deployment. Valid values are <code>GREENGRASS</code> and <code>CLOUD</code>.</p>"
        },
        "greengrassGroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the Greengrass group where the system instance will be deployed. This value is required if the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>"
        },
        "s3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The name of the Amazon Simple Storage Service bucket that will be used to store and deploy the system instance's resource file. This value is required if the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>"
        },
        "metricsConfiguration": {
          "shape": "MetricsConfiguration"
        },
        "flowActionsRoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The ARN of the IAM role that AWS IoT Things Graph will assume when it executes the flow. This role must have read and write access to AWS Lambda and AWS IoT and any other AWS services that the flow uses when it executes. This value is required if the value of the <code>target</code> parameter is <code>CLOUD</code>.</p>"
        }
      }
    },
    "CreateSystemInstanceResponse": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "SystemInstanceSummary",
          "documentation": "<p>The summary object that describes the new system instance.</p>"
        }
      }
    },
    "CreateSystemTemplateRequest": {
      "type": "structure",
      "required": [
        "definition"
      ],
      "members": {
        "definition": {
          "shape": "DefinitionDocument",
          "documentation": "<p>The <code>DefinitionDocument</code> used to create the system.</p>"
        },
        "compatibleNamespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The namespace version in which the system is to be created.</p> <p>If no value is specified, the latest version is used by default.</p>"
        }
      }
    },
    "CreateSystemTemplateResponse": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "SystemTemplateSummary",
          "documentation": "<p>The summary object that describes the created system.</p>"
        }
      }
    },
    "DefinitionDocument": {
      "type": "structure",
      "required": [
        "language",
        "text"
      ],
      "members": {
        "language": {
          "shape": "DefinitionLanguage",
          "documentation": "<p>The language used to define the entity. <code>GRAPHQL</code> is the only valid value.</p>"
        },
        "text": {
          "shape": "DefinitionText",
          "documentation": "<p>The GraphQL text that defines the entity.</p>"
        }
      },
      "documentation": "<p>A document that defines an entity. </p>"
    },
    "DefinitionLanguage": {
      "type": "string",
      "enum": [
        "GRAPHQL"
      ]
    },
    "DefinitionText": {
      "type": "string",
      "max": 1048576
    },
    "DeleteFlowTemplateRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the workflow to be deleted.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code> </p>"
        }
      }
    },
    "DeleteFlowTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteNamespaceRequest": {
      "type": "structure",
      "members": {}
    },
    "DeleteNamespaceResponse": {
      "type": "structure",
      "members": {
        "namespaceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the namespace to be deleted.</p>"
        },
        "namespaceName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the namespace to be deleted.</p>"
        }
      }
    },
    "DeleteSystemInstanceRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system instance to be deleted.</p>"
        }
      }
    },
    "DeleteSystemInstanceResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteSystemTemplateRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system to be deleted.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code> </p>"
        }
      }
    },
    "DeleteSystemTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "DependencyRevision": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the workflow or system.</p>"
        },
        "revisionNumber": {
          "shape": "Version",
          "documentation": "<p>The revision number of the workflow or system.</p>"
        }
      },
      "documentation": "<p>An object that contains the ID and revision number of a workflow or system that is part of a deployment.</p>"
    },
    "DependencyRevisions": {
      "type": "list",
      "member": {
        "shape": "DependencyRevision"
      }
    },
    "DeploySystemInstanceRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system instance. This value is returned by the <code>CreateSystemInstance</code> action.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code> </p>"
        }
      }
    },
    "DeploySystemInstanceResponse": {
      "type": "structure",
      "required": [
        "summary"
      ],
      "members": {
        "summary": {
          "shape": "SystemInstanceSummary",
          "documentation": "<p>An object that contains summary information about a system instance that was deployed. </p>"
        },
        "greengrassDeploymentId": {
          "shape": "GreengrassDeploymentId",
          "documentation": "<p>The ID of the Greengrass deployment used to deploy the system instance.</p>"
        }
      }
    },
    "DeploymentTarget": {
      "type": "string",
      "enum": [
        "GREENGRASS",
        "CLOUD"
      ]
    },
    "DeprecateExistingEntities": {
      "type": "boolean"
    },
    "DeprecateFlowTemplateRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the workflow to be deleted.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code> </p>"
        }
      }
    },
    "DeprecateFlowTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "DeprecateSystemTemplateRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system to delete.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code> </p>"
        }
      }
    },
    "DeprecateSystemTemplateResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeNamespaceRequest": {
      "type": "structure",
      "members": {
        "namespaceName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the user's namespace. Set this to <code>aws</code> to get the public namespace.</p>"
        }
      }
    },
    "DescribeNamespaceResponse": {
      "type": "structure",
      "members": {
        "namespaceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the namespace.</p>"
        },
        "namespaceName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the namespace.</p>"
        },
        "trackingNamespaceName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the public namespace that the latest namespace version is tracking.</p>"
        },
        "trackingNamespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the public namespace that the latest version is tracking.</p>"
        },
        "namespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace to describe.</p>"
        }
      }
    },
    "DissociateEntityFromThingRequest": {
      "type": "structure",
      "required": [
        "thingName",
        "entityType"
      ],
      "members": {
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the thing to disassociate.</p>"
        },
        "entityType": {
          "shape": "EntityType",
          "documentation": "<p>The entity type from which to disassociate the thing.</p>"
        }
      }
    },
    "DissociateEntityFromThingResponse": {
      "type": "structure",
      "members": {}
    },
    "Enabled": {
      "type": "boolean"
    },
    "EntityDescription": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The entity ID.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The entity ARN.</p>"
        },
        "type": {
          "shape": "EntityType",
          "documentation": "<p>The entity type.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the entity was created.</p>"
        },
        "definition": {
          "shape": "DefinitionDocument",
          "documentation": "<p>The definition document of the entity.</p>"
        }
      },
      "documentation": "<p>Describes the properties of an entity.</p>"
    },
    "EntityDescriptions": {
      "type": "list",
      "member": {
        "shape": "EntityDescription"
      }
    },
    "EntityFilter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "EntityFilterName",
          "documentation": "<p>The name of the entity search filter field. <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example, you can filter on the ID of a property that is used in a state.</p>"
        },
        "value": {
          "shape": "EntityFilterValues",
          "documentation": "<p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>"
        }
      },
      "documentation": "<p>An object that filters an entity search. Multiple filters function as OR criteria in the search. For example a search that includes a <code>NAMESPACE</code> and a <code>REFERENCED_ENTITY_ID</code> filter searches for entities in the specified namespace that use the entity specified by the value of <code>REFERENCED_ENTITY_ID</code>.</p>"
    },
    "EntityFilterName": {
      "type": "string",
      "enum": [
        "NAME",
        "NAMESPACE",
        "SEMANTIC_TYPE_PATH",
        "REFERENCED_ENTITY_ID"
      ]
    },
    "EntityFilterValue": {
      "type": "string"
    },
    "EntityFilterValues": {
      "type": "list",
      "member": {
        "shape": "EntityFilterValue"
      }
    },
    "EntityFilters": {
      "type": "list",
      "member": {
        "shape": "EntityFilter"
      }
    },
    "EntityType": {
      "type": "string",
      "enum": [
        "DEVICE",
        "SERVICE",
        "DEVICE_MODEL",
        "CAPABILITY",
        "STATE",
        "ACTION",
        "EVENT",
        "PROPERTY",
        "MAPPING",
        "ENUM"
      ]
    },
    "EntityTypes": {
      "type": "list",
      "member": {
        "shape": "EntityType"
      }
    },
    "FlowExecutionEventType": {
      "type": "string",
      "enum": [
        "EXECUTION_STARTED",
        "EXECUTION_FAILED",
        "EXECUTION_ABORTED",
        "EXECUTION_SUCCEEDED",
        "STEP_STARTED",
        "STEP_FAILED",
        "STEP_SUCCEEDED",
        "ACTIVITY_SCHEDULED",
        "ACTIVITY_STARTED",
        "ACTIVITY_FAILED",
        "ACTIVITY_SUCCEEDED",
        "START_FLOW_EXECUTION_TASK",
        "SCHEDULE_NEXT_READY_STEPS_TASK",
        "THING_ACTION_TASK",
        "THING_ACTION_TASK_FAILED",
        "THING_ACTION_TASK_SUCCEEDED",
        "ACKNOWLEDGE_TASK_MESSAGE"
      ]
    },
    "FlowExecutionId": {
      "type": "string"
    },
    "FlowExecutionMessage": {
      "type": "structure",
      "members": {
        "messageId": {
          "shape": "FlowExecutionMessageId",
          "documentation": "<p>The unique identifier of the message.</p>"
        },
        "eventType": {
          "shape": "FlowExecutionEventType",
          "documentation": "<p>The type of flow event .</p>"
        },
        "timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the message was last updated.</p>"
        },
        "payload": {
          "shape": "FlowExecutionMessagePayload",
          "documentation": "<p>A string containing information about the flow event.</p>"
        }
      },
      "documentation": "<p>An object that contains information about a flow event.</p>"
    },
    "FlowExecutionMessageId": {
      "type": "string"
    },
    "FlowExecutionMessagePayload": {
      "type": "string"
    },
    "FlowExecutionMessages": {
      "type": "list",
      "member": {
        "shape": "FlowExecutionMessage"
      }
    },
    "FlowExecutionStatus": {
      "type": "string",
      "enum": [
        "RUNNING",
        "ABORTED",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "FlowExecutionSummaries": {
      "type": "list",
      "member": {
        "shape": "FlowExecutionSummary"
      }
    },
    "FlowExecutionSummary": {
      "type": "structure",
      "members": {
        "flowExecutionId": {
          "shape": "FlowExecutionId",
          "documentation": "<p>The ID of the flow execution.</p>"
        },
        "status": {
          "shape": "FlowExecutionStatus",
          "documentation": "<p>The current status of the flow execution.</p>"
        },
        "systemInstanceId": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system instance that contains the flow.</p>"
        },
        "flowTemplateId": {
          "shape": "Urn",
          "documentation": "<p>The ID of the flow.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the flow execution summary was created.</p>"
        },
        "updatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the flow execution summary was last updated.</p>"
        }
      },
      "documentation": "<p>An object that contains summary information about a flow execution.</p>"
    },
    "FlowTemplateDescription": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "FlowTemplateSummary",
          "documentation": "<p>An object that contains summary information about a workflow.</p>"
        },
        "definition": {
          "shape": "DefinitionDocument",
          "documentation": "<p>A workflow's definition document.</p>"
        },
        "validatedNamespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace against which the workflow was validated. Use this value in your system instance.</p>"
        }
      },
      "documentation": "<p>An object that contains a workflow's definition and summary information.</p>"
    },
    "FlowTemplateFilter": {
      "type": "structure",
      "required": [
        "name",
        "value"
      ],
      "members": {
        "name": {
          "shape": "FlowTemplateFilterName",
          "documentation": "<p>The name of the search filter field.</p>"
        },
        "value": {
          "shape": "FlowTemplateFilterValues",
          "documentation": "<p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>"
        }
      },
      "documentation": "<p>An object that filters a workflow search.</p>"
    },
    "FlowTemplateFilterName": {
      "type": "string",
      "enum": [
        "DEVICE_MODEL_ID"
      ]
    },
    "FlowTemplateFilterValue": {
      "type": "string",
      "pattern": "^urn:tdm:(([a-z]{2}-(gov-)?[a-z]{4,9}-[0-9]{1,3}/[0-9]+/)*[\\p{Alnum}_]+(/[\\p{Alnum}_]+)*):([\\p{Alpha}]*):([\\p{Alnum}_]+(/[\\p{Alnum}_]+)*)$"
    },
    "FlowTemplateFilterValues": {
      "type": "list",
      "member": {
        "shape": "FlowTemplateFilterValue"
      }
    },
    "FlowTemplateFilters": {
      "type": "list",
      "member": {
        "shape": "FlowTemplateFilter"
      }
    },
    "FlowTemplateSummaries": {
      "type": "list",
      "member": {
        "shape": "FlowTemplateSummary"
      }
    },
    "FlowTemplateSummary": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the workflow.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the workflow.</p>"
        },
        "revisionNumber": {
          "shape": "Version",
          "documentation": "<p>The revision number of the workflow.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date when the workflow was created.</p>"
        }
      },
      "documentation": "<p>An object that contains summary information about a workflow.</p>"
    },
    "GetEntitiesRequest": {
      "type": "structure",
      "required": [
        "ids"
      ],
      "members": {
        "ids": {
          "shape": "Urns",
          "documentation": "<p>An array of entity IDs.</p> <p>The IDs should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code> </p>"
        },
        "namespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
        }
      }
    },
    "GetEntitiesResponse": {
      "type": "structure",
      "members": {
        "descriptions": {
          "shape": "EntityDescriptions",
          "documentation": "<p>An array of descriptions for the specified entities.</p>"
        }
      }
    },
    "GetFlowTemplateRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the workflow.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code> </p>"
        },
        "revisionNumber": {
          "shape": "Version",
          "documentation": "<p>The number of the workflow revision to retrieve.</p>"
        }
      }
    },
    "GetFlowTemplateResponse": {
      "type": "structure",
      "members": {
        "description": {
          "shape": "FlowTemplateDescription",
          "documentation": "<p>The object that describes the specified workflow.</p>"
        }
      }
    },
    "GetFlowTemplateRevisionsRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the workflow.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code> </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        }
      }
    },
    "GetFlowTemplateRevisionsResponse": {
      "type": "structure",
      "members": {
        "summaries": {
          "shape": "FlowTemplateSummaries",
          "documentation": "<p>An array of objects that provide summary data about each revision.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
        }
      }
    },
    "GetNamespaceDeletionStatusRequest": {
      "type": "structure",
      "members": {}
    },
    "GetNamespaceDeletionStatusResponse": {
      "type": "structure",
      "members": {
        "namespaceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the namespace that is being deleted.</p>"
        },
        "namespaceName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the namespace that is being deleted.</p>"
        },
        "status": {
          "shape": "NamespaceDeletionStatus",
          "documentation": "<p>The status of the deletion request.</p>"
        },
        "errorCode": {
          "shape": "NamespaceDeletionStatusErrorCodes",
          "documentation": "<p>An error code returned by the namespace deletion task.</p>"
        },
        "errorMessage": {
          "shape": "String",
          "documentation": "<p>An error code returned by the namespace deletion task.</p>"
        }
      }
    },
    "GetSystemInstanceRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system deployment instance. This value is returned by <code>CreateSystemInstance</code>.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code> </p>"
        }
      }
    },
    "GetSystemInstanceResponse": {
      "type": "structure",
      "members": {
        "description": {
          "shape": "SystemInstanceDescription",
          "documentation": "<p>An object that describes the system instance.</p>"
        }
      }
    },
    "GetSystemTemplateRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system to get. This ID must be in the user's namespace.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code> </p>"
        },
        "revisionNumber": {
          "shape": "Version",
          "documentation": "<p>The number that specifies the revision of the system to get.</p>"
        }
      }
    },
    "GetSystemTemplateResponse": {
      "type": "structure",
      "members": {
        "description": {
          "shape": "SystemTemplateDescription",
          "documentation": "<p>An object that contains summary data about the system.</p>"
        }
      }
    },
    "GetSystemTemplateRevisionsRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system template.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code> </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        }
      }
    },
    "GetSystemTemplateRevisionsResponse": {
      "type": "structure",
      "members": {
        "summaries": {
          "shape": "SystemTemplateSummaries",
          "documentation": "<p>An array of objects that contain summary data about the system template revisions.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>"
        }
      }
    },
    "GetUploadStatusRequest": {
      "type": "structure",
      "required": [
        "uploadId"
      ],
      "members": {
        "uploadId": {
          "shape": "UploadId",
          "documentation": "<p>The ID of the upload. This value is returned by the <code>UploadEntityDefinitions</code> action.</p>"
        }
      }
    },
    "GetUploadStatusResponse": {
      "type": "structure",
      "required": [
        "uploadId",
        "uploadStatus",
        "createdDate"
      ],
      "members": {
        "uploadId": {
          "shape": "UploadId",
          "documentation": "<p>The ID of the upload.</p>"
        },
        "uploadStatus": {
          "shape": "UploadStatus",
          "documentation": "<p>The status of the upload. The initial status is <code>IN_PROGRESS</code>. The response show all validation failures if the upload fails.</p>"
        },
        "namespaceArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the upload.</p>"
        },
        "namespaceName": {
          "shape": "NamespaceName",
          "documentation": "<p>The name of the upload's namespace.</p>"
        },
        "namespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
        },
        "failureReason": {
          "shape": "StringList",
          "documentation": "<p>The reason for an upload failure.</p>"
        },
        "createdDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date at which the upload was created.</p>"
        }
      }
    },
    "GreengrassDeploymentId": {
      "type": "string"
    },
    "GreengrassGroupId": {
      "type": "string"
    },
    "GreengrassGroupVersionId": {
      "type": "string"
    },
    "GroupName": {
      "type": "string"
    },
    "ListFlowExecutionMessagesRequest": {
      "type": "structure",
      "required": [
        "flowExecutionId"
      ],
      "members": {
        "flowExecutionId": {
          "shape": "FlowExecutionId",
          "documentation": "<p>The ID of the flow execution.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        }
      }
    },
    "ListFlowExecutionMessagesResponse": {
      "type": "structure",
      "members": {
        "messages": {
          "shape": "FlowExecutionMessages",
          "documentation": "<p>A list of objects that contain information about events in the specified flow execution.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of tags to return.</p>"
        },
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource whose tags are to be returned.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token that specifies the next page of results to return.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagList",
          "documentation": "<p>List of tags returned by the <code>ListTagsForResource</code> operation.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token that specifies the next page of results to return.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 250,
      "min": 1
    },
    "MetricsConfiguration": {
      "type": "structure",
      "members": {
        "cloudMetricEnabled": {
          "shape": "Enabled",
          "documentation": "<p>A Boolean that specifies whether cloud metrics are collected.</p>"
        },
        "metricRuleRoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The ARN of the role that is used to collect cloud metrics.</p>"
        }
      },
      "documentation": "<p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>"
    },
    "NamespaceDeletionStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "NamespaceDeletionStatusErrorCodes": {
      "type": "string",
      "enum": [
        "VALIDATION_FAILED"
      ]
    },
    "NamespaceName": {
      "type": "string",
      "max": 128
    },
    "NextToken": {
      "type": "string"
    },
    "ResourceArn": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "RoleArn": {
      "type": "string",
      "max": 2048,
      "min": 20
    },
    "S3BucketName": {
      "type": "string"
    },
    "SearchEntitiesRequest": {
      "type": "structure",
      "required": [
        "entityTypes"
      ],
      "members": {
        "entityTypes": {
          "shape": "EntityTypes",
          "documentation": "<p>The entity types for which to search.</p>"
        },
        "filters": {
          "shape": "EntityFilters",
          "documentation": "<p>Optional filter to apply to the search. Valid filters are <code>NAME</code> <code>NAMESPACE</code>, <code>SEMANTIC_TYPE_PATH</code> and <code>REFERENCED_ENTITY_ID</code>. <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example, you can filter on the ID of a property that is used in a state.</p> <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        },
        "namespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
        }
      }
    },
    "SearchEntitiesResponse": {
      "type": "structure",
      "members": {
        "descriptions": {
          "shape": "EntityDescriptions",
          "documentation": "<p>An array of descriptions for each entity returned in the search result.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
        }
      }
    },
    "SearchFlowExecutionsRequest": {
      "type": "structure",
      "required": [
        "systemInstanceId"
      ],
      "members": {
        "systemInstanceId": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system instance that contains the flow.</p>"
        },
        "flowExecutionId": {
          "shape": "FlowExecutionId",
          "documentation": "<p>The ID of a flow execution.</p>"
        },
        "startTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time of the earliest flow execution to return.</p>"
        },
        "endTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time of the latest flow execution to return.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        }
      }
    },
    "SearchFlowExecutionsResponse": {
      "type": "structure",
      "members": {
        "summaries": {
          "shape": "FlowExecutionSummaries",
          "documentation": "<p>An array of objects that contain summary information about each workflow execution in the result set.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
        }
      }
    },
    "SearchFlowTemplatesRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "FlowTemplateFilters",
          "documentation": "<p>An array of objects that limit the result set. The only valid filter is <code>DEVICE_MODEL_ID</code>.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        }
      }
    },
    "SearchFlowTemplatesResponse": {
      "type": "structure",
      "members": {
        "summaries": {
          "shape": "FlowTemplateSummaries",
          "documentation": "<p>An array of objects that contain summary information about each workflow in the result set.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
        }
      }
    },
    "SearchSystemInstancesRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "SystemInstanceFilters",
          "documentation": "<p>Optional filter to apply to the search. Valid filters are <code>SYSTEM_TEMPLATE_ID</code>, <code>STATUS</code>, and <code>GREENGRASS_GROUP_NAME</code>.</p> <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        }
      }
    },
    "SearchSystemInstancesResponse": {
      "type": "structure",
      "members": {
        "summaries": {
          "shape": "SystemInstanceSummaries",
          "documentation": "<p>An array of objects that contain summary data abour the system instances in the result set.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>"
        }
      }
    },
    "SearchSystemTemplatesRequest": {
      "type": "structure",
      "members": {
        "filters": {
          "shape": "SystemTemplateFilters",
          "documentation": "<p>An array of filters that limit the result set. The only valid filter is <code>FLOW_TEMPLATE_ID</code>.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        }
      }
    },
    "SearchSystemTemplatesResponse": {
      "type": "structure",
      "members": {
        "summaries": {
          "shape": "SystemTemplateSummaries",
          "documentation": "<p>An array of objects that contain summary information about each system deployment in the result set.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
        }
      }
    },
    "SearchThingsRequest": {
      "type": "structure",
      "required": [
        "entityId"
      ],
      "members": {
        "entityId": {
          "shape": "Urn",
          "documentation": "<p>The ID of the entity to which the things are associated.</p> <p>The IDs should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code> </p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        },
        "namespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
        }
      }
    },
    "SearchThingsResponse": {
      "type": "structure",
      "members": {
        "things": {
          "shape": "Things",
          "documentation": "<p>An array of things in the result set.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "SyncWithPublicNamespace": {
      "type": "boolean"
    },
    "SystemInstanceDeploymentStatus": {
      "type": "string",
      "enum": [
        "NOT_DEPLOYED",
        "BOOTSTRAP",
        "DEPLOY_IN_PROGRESS",
        "DEPLOYED_IN_TARGET",
        "UNDEPLOY_IN_PROGRESS",
        "FAILED",
        "PENDING_DELETE",
        "DELETED_IN_TARGET"
      ]
    },
    "SystemInstanceDescription": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "SystemInstanceSummary",
          "documentation": "<p>An object that contains summary information about a system instance.</p>"
        },
        "definition": {
          "shape": "DefinitionDocument"
        },
        "s3BucketName": {
          "shape": "S3BucketName",
          "documentation": "<p>The Amazon Simple Storage Service bucket where information about a system instance is stored.</p>"
        },
        "metricsConfiguration": {
          "shape": "MetricsConfiguration"
        },
        "validatedNamespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace against which the system instance was validated.</p>"
        },
        "validatedDependencyRevisions": {
          "shape": "DependencyRevisions",
          "documentation": "<p>A list of objects that contain all of the IDs and revision numbers of workflows and systems that are used in a system instance.</p>"
        },
        "flowActionsRoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The AWS Identity and Access Management (IAM) role that AWS IoT Things Graph assumes during flow execution in a cloud deployment. This role must have read and write permissionss to AWS Lambda and AWS IoT and to any other AWS services that the flow uses.</p>"
        }
      },
      "documentation": "<p>An object that contains a system instance definition and summary information.</p>"
    },
    "SystemInstanceFilter": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "SystemInstanceFilterName",
          "documentation": "<p>The name of the search filter field.</p>"
        },
        "value": {
          "shape": "SystemInstanceFilterValues",
          "documentation": "<p>An array of string values for the search filter field. Multiple values function as AND criteria in the search. </p>"
        }
      },
      "documentation": "<p>An object that filters a system instance search. Multiple filters function as OR criteria in the search. For example a search that includes a GREENGRASS_GROUP_NAME and a STATUS filter searches for system instances in the specified Greengrass group that have the specified status.</p>"
    },
    "SystemInstanceFilterName": {
      "type": "string",
      "enum": [
        "SYSTEM_TEMPLATE_ID",
        "STATUS",
        "GREENGRASS_GROUP_NAME"
      ]
    },
    "SystemInstanceFilterValue": {
      "type": "string"
    },
    "SystemInstanceFilterValues": {
      "type": "list",
      "member": {
        "shape": "SystemInstanceFilterValue"
      }
    },
    "SystemInstanceFilters": {
      "type": "list",
      "member": {
        "shape": "SystemInstanceFilter"
      }
    },
    "SystemInstanceSummaries": {
      "type": "list",
      "member": {
        "shape": "SystemInstanceSummary"
      }
    },
    "SystemInstanceSummary": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system instance.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the system instance.</p>"
        },
        "status": {
          "shape": "SystemInstanceDeploymentStatus",
          "documentation": "<p>The status of the system instance.</p>"
        },
        "target": {
          "shape": "DeploymentTarget",
          "documentation": "<p>The target of the system instance.</p>"
        },
        "greengrassGroupName": {
          "shape": "GroupName",
          "documentation": "<p>The ID of the Greengrass group where the system instance is deployed.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date when the system instance was created.</p>"
        },
        "updatedAt": {
          "shape": "Timestamp",
          "documentation": "<p> The date and time when the system instance was last updated.</p>"
        },
        "greengrassGroupId": {
          "shape": "GreengrassGroupId",
          "documentation": "<p>The ID of the Greengrass group where the system instance is deployed.</p>"
        },
        "greengrassGroupVersionId": {
          "shape": "GreengrassGroupVersionId",
          "documentation": "<p>The version of the Greengrass group where the system instance is deployed.</p>"
        }
      },
      "documentation": "<p>An object that contains summary information about a system instance.</p>"
    },
    "SystemTemplateDescription": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "SystemTemplateSummary",
          "documentation": "<p>An object that contains summary information about a system.</p>"
        },
        "definition": {
          "shape": "DefinitionDocument",
          "documentation": "<p>The definition document of a system.</p>"
        },
        "validatedNamespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The namespace version against which the system was validated. Use this value in your system instance.</p>"
        }
      },
      "documentation": "<p>An object that contains a system's definition document and summary information.</p>"
    },
    "SystemTemplateFilter": {
      "type": "structure",
      "required": [
        "name",
        "value"
      ],
      "members": {
        "name": {
          "shape": "SystemTemplateFilterName",
          "documentation": "<p>The name of the system search filter field.</p>"
        },
        "value": {
          "shape": "SystemTemplateFilterValues",
          "documentation": "<p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>"
        }
      },
      "documentation": "<p>An object that filters a system search.</p>"
    },
    "SystemTemplateFilterName": {
      "type": "string",
      "enum": [
        "FLOW_TEMPLATE_ID"
      ]
    },
    "SystemTemplateFilterValue": {
      "type": "string",
      "pattern": "^urn:tdm:(([a-z]{2}-(gov-)?[a-z]{4,9}-[0-9]{1,3}/[0-9]+/)*[\\p{Alnum}_]+(/[\\p{Alnum}_]+)*):([\\p{Alpha}]*):([\\p{Alnum}_]+(/[\\p{Alnum}_]+)*)$"
    },
    "SystemTemplateFilterValues": {
      "type": "list",
      "member": {
        "shape": "SystemTemplateFilterValue"
      }
    },
    "SystemTemplateFilters": {
      "type": "list",
      "member": {
        "shape": "SystemTemplateFilter"
      }
    },
    "SystemTemplateSummaries": {
      "type": "list",
      "member": {
        "shape": "SystemTemplateSummary"
      }
    },
    "SystemTemplateSummary": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system.</p>"
        },
        "arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the system.</p>"
        },
        "revisionNumber": {
          "shape": "Version",
          "documentation": "<p>The revision number of the system.</p>"
        },
        "createdAt": {
          "shape": "Timestamp",
          "documentation": "<p>The date when the system was created.</p>"
        }
      },
      "documentation": "<p>An object that contains information about a system.</p>"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "TagKey",
          "documentation": "<p>The required name of the tag. The string value can be from 1 to 128 Unicode characters in length.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>The optional value of the tag. The string value can be from 1 to 256 Unicode characters in length.</p>"
        }
      },
      "documentation": "<p>Metadata assigned to an AWS IoT Things Graph resource consisting of a key-value pair.</p>"
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
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource whose tags are returned.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>A list of tags to add to the resource.&gt;</p>"
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
      "min": 1
    },
    "Thing": {
      "type": "structure",
      "members": {
        "thingArn": {
          "shape": "ThingArn",
          "documentation": "<p>The ARN of the thing.</p>"
        },
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the thing.</p>"
        }
      },
      "documentation": "<p>An AWS IoT thing.</p>"
    },
    "ThingArn": {
      "type": "string"
    },
    "ThingName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9:_-]+"
    },
    "Things": {
      "type": "list",
      "member": {
        "shape": "Thing"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UndeploySystemInstanceRequest": {
      "type": "structure",
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system instance to remove from its target.</p>"
        }
      }
    },
    "UndeploySystemInstanceResponse": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "SystemInstanceSummary",
          "documentation": "<p>An object that contains summary information about the system instance that was removed from its target.</p>"
        }
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "ResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource whose tags are to be removed.</p>"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed. </p> <p>This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json\">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. </p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateFlowTemplateRequest": {
      "type": "structure",
      "required": [
        "id",
        "definition"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the workflow to be updated.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code> </p>"
        },
        "definition": {
          "shape": "DefinitionDocument",
          "documentation": "<p>The <code>DefinitionDocument</code> that contains the updated workflow definition.</p>"
        },
        "compatibleNamespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace.</p> <p>If no value is specified, the latest version is used by default. Use the <code>GetFlowTemplateRevisions</code> if you want to find earlier revisions of the flow to update.</p>"
        }
      }
    },
    "UpdateFlowTemplateResponse": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "FlowTemplateSummary",
          "documentation": "<p>An object containing summary information about the updated workflow.</p>"
        }
      }
    },
    "UpdateSystemTemplateRequest": {
      "type": "structure",
      "required": [
        "id",
        "definition"
      ],
      "members": {
        "id": {
          "shape": "Urn",
          "documentation": "<p>The ID of the system to be updated.</p> <p>The ID should be in the following format.</p> <p> <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code> </p>"
        },
        "definition": {
          "shape": "DefinitionDocument",
          "documentation": "<p>The <code>DefinitionDocument</code> that contains the updated system definition.</p>"
        },
        "compatibleNamespaceVersion": {
          "shape": "Version",
          "documentation": "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p> <p>If no value is specified, the latest version is used by default.</p>"
        }
      }
    },
    "UpdateSystemTemplateResponse": {
      "type": "structure",
      "members": {
        "summary": {
          "shape": "SystemTemplateSummary",
          "documentation": "<p>An object containing summary information about the updated system.</p>"
        }
      }
    },
    "UploadEntityDefinitionsRequest": {
      "type": "structure",
      "members": {
        "document": {
          "shape": "DefinitionDocument",
          "documentation": "<p>The <code>DefinitionDocument</code> that defines the updated entities.</p>"
        },
        "syncWithPublicNamespace": {
          "shape": "SyncWithPublicNamespace",
          "documentation": "<p>A Boolean that specifies whether to synchronize with the latest version of the public namespace. If set to <code>true</code>, the upload will create a new namespace version.</p>"
        },
        "deprecateExistingEntities": {
          "shape": "DeprecateExistingEntities",
          "documentation": "<p>A Boolean that specifies whether to deprecate all entities in the latest version before uploading the new <code>DefinitionDocument</code>. If set to <code>true</code>, the upload will create a new namespace version.</p>"
        }
      }
    },
    "UploadEntityDefinitionsResponse": {
      "type": "structure",
      "required": [
        "uploadId"
      ],
      "members": {
        "uploadId": {
          "shape": "UploadId",
          "documentation": "<p>The ID that specifies the upload action. You can use this to track the status of the upload.</p>"
        }
      }
    },
    "UploadId": {
      "type": "string",
      "max": 40,
      "min": 1
    },
    "UploadStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "Urn": {
      "type": "string",
      "max": 160,
      "pattern": "^urn:tdm:(([a-z]{2}-(gov-)?[a-z]{4,9}-[0-9]{1,3}/[0-9]+/)*[\\p{Alnum}_]+(/[\\p{Alnum}_]+)*):([\\p{Alpha}]*):([\\p{Alnum}_]+(/[\\p{Alnum}_]+)*)$"
    },
    "Urns": {
      "type": "list",
      "member": {
        "shape": "Urn"
      },
      "max": 25,
      "min": 0
    },
    "Version": {
      "type": "long"
    }
  },
  "documentation": "<fullname>AWS IoT Things Graph</fullname> <p>AWS IoT Things Graph provides an integrated set of tools that enable developers to connect devices and services that use different standards, such as units of measure and communication protocols. AWS IoT Things Graph makes it possible to build IoT applications with little to no code by connecting devices and services and defining how they interact at an abstract level.</p> <p>For more information about how AWS IoT Things Graph works, see the <a href=\"https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html\">User Guide</a>.</p>"
}
]===]))
