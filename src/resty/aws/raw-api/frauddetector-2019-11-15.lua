local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-11-15",
    "endpointPrefix": "frauddetector",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon Fraud Detector",
    "serviceId": "FraudDetector",
    "signatureVersion": "v4",
    "targetPrefix": "AWSHawksNestServiceFacade",
    "uid": "frauddetector-2019-11-15"
  },
  "operations": {
    "BatchCreateVariable": {
      "name": "BatchCreateVariable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchCreateVariableRequest"
      },
      "output": {
        "shape": "BatchCreateVariableResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a batch of variables.</p>"
    },
    "BatchGetVariable": {
      "name": "BatchGetVariable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetVariableRequest"
      },
      "output": {
        "shape": "BatchGetVariableResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets a batch of variables.</p>"
    },
    "CreateDetectorVersion": {
      "name": "CreateDetectorVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDetectorVersionRequest"
      },
      "output": {
        "shape": "CreateDetectorVersionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a detector version. The detector version starts in a <code>DRAFT</code> status.</p>"
    },
    "CreateModel": {
      "name": "CreateModel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateModelRequest"
      },
      "output": {
        "shape": "CreateModelResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a model using the specified model type.</p>"
    },
    "CreateModelVersion": {
      "name": "CreateModelVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateModelVersionRequest"
      },
      "output": {
        "shape": "CreateModelVersionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates a version of the model using the specified model type and model id. </p>"
    },
    "CreateRule": {
      "name": "CreateRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateRuleRequest"
      },
      "output": {
        "shape": "CreateRuleResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a rule for use with the specified detector. </p>"
    },
    "CreateVariable": {
      "name": "CreateVariable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateVariableRequest"
      },
      "output": {
        "shape": "CreateVariableResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates a variable.</p>"
    },
    "DeleteDetector": {
      "name": "DeleteDetector",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDetectorRequest"
      },
      "output": {
        "shape": "DeleteDetectorResult"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes the detector. Before deleting a detector, you must first delete all detector versions and rule versions associated with the detector.</p>"
    },
    "DeleteDetectorVersion": {
      "name": "DeleteDetectorVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDetectorVersionRequest"
      },
      "output": {
        "shape": "DeleteDetectorVersionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "ConflictException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes the detector version. You cannot delete detector versions that are in <code>ACTIVE</code> status.</p>"
    },
    "DeleteEvent": {
      "name": "DeleteEvent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteEventRequest"
      },
      "output": {
        "shape": "DeleteEventResult"
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
        }
      ],
      "documentation": "<p>Deletes the specified event.</p>"
    },
    "DeleteRule": {
      "name": "DeleteRule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRuleRequest"
      },
      "output": {
        "shape": "DeleteRuleResult"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes the rule. You cannot delete a rule if it is used by an <code>ACTIVE</code> or <code>INACTIVE</code> detector version.</p>"
    },
    "DescribeDetector": {
      "name": "DescribeDetector",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeDetectorRequest"
      },
      "output": {
        "shape": "DescribeDetectorResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets all versions for a specified detector.</p>"
    },
    "DescribeModelVersions": {
      "name": "DescribeModelVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeModelVersionsRequest"
      },
      "output": {
        "shape": "DescribeModelVersionsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets all of the model versions for the specified model type or for the specified model type and model ID. You can also get details for a single, specified model version. </p>"
    },
    "GetDetectorVersion": {
      "name": "GetDetectorVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDetectorVersionRequest"
      },
      "output": {
        "shape": "GetDetectorVersionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets a particular detector version. </p>"
    },
    "GetDetectors": {
      "name": "GetDetectors",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDetectorsRequest"
      },
      "output": {
        "shape": "GetDetectorsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets all detectors or a single detector if a <code>detectorId</code> is specified. This is a paginated API. If you provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10. To get the next page results, provide the pagination token from the <code>GetDetectorsResponse</code> as part of your request. A null pagination token fetches the records from the beginning. </p>"
    },
    "GetEntityTypes": {
      "name": "GetEntityTypes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEntityTypesRequest"
      },
      "output": {
        "shape": "GetEntityTypesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets all entity types or a specific entity type if a name is specified. This is a paginated API. If you provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10. To get the next page results, provide the pagination token from the <code>GetEntityTypesResponse</code> as part of your request. A null pagination token fetches the records from the beginning. </p>"
    },
    "GetEventPrediction": {
      "name": "GetEventPrediction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEventPredictionRequest"
      },
      "output": {
        "shape": "GetEventPredictionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Evaluates an event against a detector version. If a version ID is not provided, the detector’s (<code>ACTIVE</code>) version is used.</p>"
    },
    "GetEventTypes": {
      "name": "GetEventTypes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetEventTypesRequest"
      },
      "output": {
        "shape": "GetEventTypesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets all event types or a specific event type if name is provided. This is a paginated API. If you provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10. To get the next page results, provide the pagination token from the <code>GetEventTypesResponse</code> as part of your request. A null pagination token fetches the records from the beginning. </p>"
    },
    "GetExternalModels": {
      "name": "GetExternalModels",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetExternalModelsRequest"
      },
      "output": {
        "shape": "GetExternalModelsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets the details for one or more Amazon SageMaker models that have been imported into the service. This is a paginated API. If you provide a null <code>maxResults</code>, this actions retrieves a maximum of 10 records per page. If you provide a <code>maxResults</code>, the value must be between 5 and 10. To get the next page results, provide the pagination token from the <code>GetExternalModelsResult</code> as part of your request. A null pagination token fetches the records from the beginning. </p>"
    },
    "GetKMSEncryptionKey": {
      "name": "GetKMSEncryptionKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "GetKMSEncryptionKeyResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets the encryption key if a Key Management Service (KMS) customer master key (CMK) has been specified to be used to encrypt content in Amazon Fraud Detector.</p>"
    },
    "GetLabels": {
      "name": "GetLabels",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetLabelsRequest"
      },
      "output": {
        "shape": "GetLabelsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets all labels or a specific label if name is provided. This is a paginated API. If you provide a null <code>maxResults</code>, this action retrieves a maximum of 50 records per page. If you provide a <code>maxResults</code>, the value must be between 10 and 50. To get the next page results, provide the pagination token from the <code>GetGetLabelsResponse</code> as part of your request. A null pagination token fetches the records from the beginning. </p>"
    },
    "GetModelVersion": {
      "name": "GetModelVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetModelVersionRequest"
      },
      "output": {
        "shape": "GetModelVersionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets the details of the specified model version.</p>"
    },
    "GetModels": {
      "name": "GetModels",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetModelsRequest"
      },
      "output": {
        "shape": "GetModelsResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets one or more models. Gets all models for the AWS account if no model type and no model id provided. Gets all models for the AWS account and model type, if the model type is specified but model id is not provided. Gets a specific model if (model type, model id) tuple is specified. </p> <p>This is a paginated API. If you provide a null <code>maxResults</code>, this action retrieves a maximum of 10 records per page. If you provide a <code>maxResults</code>, the value must be between 1 and 10. To get the next page results, provide the pagination token from the response as part of your request. A null pagination token fetches the records from the beginning.</p>"
    },
    "GetOutcomes": {
      "name": "GetOutcomes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOutcomesRequest"
      },
      "output": {
        "shape": "GetOutcomesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets one or more outcomes. This is a paginated API. If you provide a null <code>maxResults</code>, this actions retrieves a maximum of 100 records per page. If you provide a <code>maxResults</code>, the value must be between 50 and 100. To get the next page results, provide the pagination token from the <code>GetOutcomesResult</code> as part of your request. A null pagination token fetches the records from the beginning. </p>"
    },
    "GetRules": {
      "name": "GetRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRulesRequest"
      },
      "output": {
        "shape": "GetRulesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Get all rules for a detector (paginated) if <code>ruleId</code> and <code>ruleVersion</code> are not specified. Gets all rules for the detector and the <code>ruleId</code> if present (paginated). Gets a specific rule if both the <code>ruleId</code> and the <code>ruleVersion</code> are specified.</p> <p>This is a paginated API. Providing null maxResults results in retrieving maximum of 100 records per page. If you provide maxResults the value must be between 50 and 100. To get the next page result, a provide a pagination token from GetRulesResult as part of your request. Null pagination token fetches the records from the beginning.</p>"
    },
    "GetVariables": {
      "name": "GetVariables",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetVariablesRequest"
      },
      "output": {
        "shape": "GetVariablesResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Gets all of the variables or the specific variable. This is a paginated API. Providing null <code>maxSizePerPage</code> results in retrieving maximum of 100 records per page. If you provide <code>maxSizePerPage</code> the value must be between 50 and 100. To get the next page result, a provide a pagination token from <code>GetVariablesResult</code> as part of your request. Null pagination token fetches the records from the beginning. </p>"
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
        "shape": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Lists all tags associated with the resource. This is a paginated API. To get the next page results, provide the pagination token from the response as part of your request. A null pagination token fetches the records from the beginning. </p>"
    },
    "PutDetector": {
      "name": "PutDetector",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutDetectorRequest"
      },
      "output": {
        "shape": "PutDetectorResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates or updates a detector. </p>"
    },
    "PutEntityType": {
      "name": "PutEntityType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutEntityTypeRequest"
      },
      "output": {
        "shape": "PutEntityTypeResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates or updates an entity type. An entity represents who is performing the event. As part of a fraud prediction, you pass the entity ID to indicate the specific entity who performed the event. An entity type classifies the entity. Example classifications include customer, merchant, or account.</p>"
    },
    "PutEventType": {
      "name": "PutEventType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutEventTypeRequest"
      },
      "output": {
        "shape": "PutEventTypeResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates or updates an event type. An event is a business activity that is evaluated for fraud risk. With Amazon Fraud Detector, you generate fraud predictions for events. An event type defines the structure for an event sent to Amazon Fraud Detector. This includes the variables sent as part of the event, the entity performing the event (such as a customer), and the labels that classify the event. Example event types include online payment transactions, account registrations, and authentications.</p>"
    },
    "PutExternalModel": {
      "name": "PutExternalModel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutExternalModelRequest"
      },
      "output": {
        "shape": "PutExternalModelResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates or updates an Amazon SageMaker model endpoint. You can also use this action to update the configuration of the model endpoint, including the IAM role and/or the mapped variables. </p>"
    },
    "PutKMSEncryptionKey": {
      "name": "PutKMSEncryptionKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutKMSEncryptionKeyRequest"
      },
      "output": {
        "shape": "PutKMSEncryptionKeyResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Specifies the Key Management Service (KMS) customer master key (CMK) to be used to encrypt content in Amazon Fraud Detector.</p>"
    },
    "PutLabel": {
      "name": "PutLabel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutLabelRequest"
      },
      "output": {
        "shape": "PutLabelResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates or updates label. A label classifies an event as fraudulent or legitimate. Labels are associated with event types and used to train supervised machine learning models in Amazon Fraud Detector. </p>"
    },
    "PutOutcome": {
      "name": "PutOutcome",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutOutcomeRequest"
      },
      "output": {
        "shape": "PutOutcomeResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates or updates an outcome. </p>"
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
        "shape": "TagResourceResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Assigns tags to a resource.</p>"
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
        "shape": "UntagResourceResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Removes tags from a resource.</p>"
    },
    "UpdateDetectorVersion": {
      "name": "UpdateDetectorVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDetectorVersionRequest"
      },
      "output": {
        "shape": "UpdateDetectorVersionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p> Updates a detector version. The detector version attributes that you can update include models, external model endpoints, rules, rule execution mode, and description. You can only update a <code>DRAFT</code> detector version.</p>"
    },
    "UpdateDetectorVersionMetadata": {
      "name": "UpdateDetectorVersionMetadata",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDetectorVersionMetadataRequest"
      },
      "output": {
        "shape": "UpdateDetectorVersionMetadataResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates the detector version's description. You can update the metadata for any detector version (<code>DRAFT, ACTIVE,</code> or <code>INACTIVE</code>). </p>"
    },
    "UpdateDetectorVersionStatus": {
      "name": "UpdateDetectorVersionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDetectorVersionStatusRequest"
      },
      "output": {
        "shape": "UpdateDetectorVersionStatusResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates the detector version’s status. You can perform the following promotions or demotions using <code>UpdateDetectorVersionStatus</code>: <code>DRAFT</code> to <code>ACTIVE</code>, <code>ACTIVE</code> to <code>INACTIVE</code>, and <code>INACTIVE</code> to <code>ACTIVE</code>.</p>"
    },
    "UpdateModel": {
      "name": "UpdateModel",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateModelRequest"
      },
      "output": {
        "shape": "UpdateModelResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates a model. You can update the description attribute using this action.</p>"
    },
    "UpdateModelVersion": {
      "name": "UpdateModelVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateModelVersionRequest"
      },
      "output": {
        "shape": "UpdateModelVersionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Updates a model version. Updating a model version retrains an existing model version using updated training data and produces a new minor version of the model. You can update the training data set location and data access role attributes using this action. This action creates and trains a new minor version of the model, for example version 1.01, 1.02, 1.03.</p>"
    },
    "UpdateModelVersionStatus": {
      "name": "UpdateModelVersionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateModelVersionStatusRequest"
      },
      "output": {
        "shape": "UpdateModelVersionStatusResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates the status of a model version.</p> <p>You can perform the following status updates:</p> <ol> <li> <p>Change the <code>TRAINING_COMPLETE</code> status to <code>ACTIVE</code>.</p> </li> <li> <p>Change <code>ACTIVE</code>to <code>INACTIVE</code>.</p> </li> </ol>"
    },
    "UpdateRuleMetadata": {
      "name": "UpdateRuleMetadata",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRuleMetadataRequest"
      },
      "output": {
        "shape": "UpdateRuleMetadataResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates a rule's metadata. The description attribute can be updated.</p>"
    },
    "UpdateRuleVersion": {
      "name": "UpdateRuleVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRuleVersionRequest"
      },
      "output": {
        "shape": "UpdateRuleVersionResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates a rule version resulting in a new rule version. Updates a rule version resulting in a new rule version (version 1, 2, 3 ...). </p>"
    },
    "UpdateVariable": {
      "name": "UpdateVariable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateVariableRequest"
      },
      "output": {
        "shape": "UpdateVariableResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
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
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates a variable.</p>"
    }
  },
  "shapes": {
    "BatchCreateVariableError": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The name.</p>"
        },
        "code": {
          "shape": "integer",
          "documentation": "<p>The error code. </p>"
        },
        "message": {
          "shape": "string",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>Provides the error of the batch create variable API.</p>"
    },
    "BatchCreateVariableErrorList": {
      "type": "list",
      "member": {
        "shape": "BatchCreateVariableError"
      }
    },
    "BatchCreateVariableRequest": {
      "type": "structure",
      "required": [
        "variableEntries"
      ],
      "members": {
        "variableEntries": {
          "shape": "VariableEntryList",
          "documentation": "<p>The list of variables for the batch create variable request.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "BatchCreateVariableResult": {
      "type": "structure",
      "members": {
        "errors": {
          "shape": "BatchCreateVariableErrorList",
          "documentation": "<p>Provides the errors for the <code>BatchCreateVariable</code> request.</p>"
        }
      }
    },
    "BatchGetVariableError": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The error name. </p>"
        },
        "code": {
          "shape": "integer",
          "documentation": "<p>The error code. </p>"
        },
        "message": {
          "shape": "string",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>Provides the error of the batch get variable API.</p>"
    },
    "BatchGetVariableErrorList": {
      "type": "list",
      "member": {
        "shape": "BatchGetVariableError"
      }
    },
    "BatchGetVariableRequest": {
      "type": "structure",
      "required": [
        "names"
      ],
      "members": {
        "names": {
          "shape": "NameList",
          "documentation": "<p>The list of variable names to get.</p>"
        }
      }
    },
    "BatchGetVariableResult": {
      "type": "structure",
      "members": {
        "variables": {
          "shape": "VariableList",
          "documentation": "<p>The returned variables.</p>"
        },
        "errors": {
          "shape": "BatchGetVariableErrorList",
          "documentation": "<p>The errors from the request.</p>"
        }
      }
    },
    "CreateDetectorVersionRequest": {
      "type": "structure",
      "required": [
        "detectorId",
        "rules"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The ID of the detector under which you want to create a new version.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The description of the detector version.</p>"
        },
        "externalModelEndpoints": {
          "shape": "ListOfStrings",
          "documentation": "<p>The Amazon Sagemaker model endpoints to include in the detector version.</p>"
        },
        "rules": {
          "shape": "RuleList",
          "documentation": "<p>The rules to include in the detector version.</p>"
        },
        "modelVersions": {
          "shape": "ListOfModelVersions",
          "documentation": "<p>The model versions to include in the detector version.</p>"
        },
        "ruleExecutionMode": {
          "shape": "RuleExecutionMode",
          "documentation": "<p>The rule execution mode for the rules included in the detector version.</p> <p>You can define and edit the rule mode at the detector version level, when it is in draft status.</p> <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p> <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. </p> <p>The default behavior is <code>FIRST_MATCHED</code>.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "CreateDetectorVersionResult": {
      "type": "structure",
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The ID for the created version's parent detector.</p>"
        },
        "detectorVersionId": {
          "shape": "nonEmptyString",
          "documentation": "<p>The ID for the created detector. </p>"
        },
        "status": {
          "shape": "DetectorVersionStatus",
          "documentation": "<p>The status of the detector version.</p>"
        }
      }
    },
    "CreateModelRequest": {
      "type": "structure",
      "required": [
        "modelId",
        "modelType",
        "eventTypeName"
      ],
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type. </p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The model description. </p>"
        },
        "eventTypeName": {
          "shape": "string",
          "documentation": "<p>The name of the event type.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "CreateModelResult": {
      "type": "structure",
      "members": {}
    },
    "CreateModelVersionRequest": {
      "type": "structure",
      "required": [
        "modelId",
        "modelType",
        "trainingDataSource",
        "trainingDataSchema"
      ],
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID. </p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "trainingDataSource": {
          "shape": "TrainingDataSourceEnum",
          "documentation": "<p>The training data source location in Amazon S3. </p>"
        },
        "trainingDataSchema": {
          "shape": "TrainingDataSchema",
          "documentation": "<p>The training data schema.</p>"
        },
        "externalEventsDetail": {
          "shape": "ExternalEventsDetail",
          "documentation": "<p>Details for the external events data used for model version training. Required if <code>trainingDataSource</code> is <code>EXTERNAL_EVENTS</code>.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "CreateModelVersionResult": {
      "type": "structure",
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "modelVersionNumber": {
          "shape": "nonEmptyString",
          "documentation": "<p>The model version number of the model version created.</p>"
        },
        "status": {
          "shape": "string",
          "documentation": "<p>The model version status. </p>"
        }
      }
    },
    "CreateRuleRequest": {
      "type": "structure",
      "required": [
        "ruleId",
        "detectorId",
        "expression",
        "language",
        "outcomes"
      ],
      "members": {
        "ruleId": {
          "shape": "identifier",
          "documentation": "<p>The rule ID.</p>"
        },
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID for the rule's parent detector.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The rule description.</p>"
        },
        "expression": {
          "shape": "ruleExpression",
          "documentation": "<p>The rule expression.</p>"
        },
        "language": {
          "shape": "Language",
          "documentation": "<p>The language of the rule.</p>"
        },
        "outcomes": {
          "shape": "NonEmptyListOfStrings",
          "documentation": "<p>The outcome or outcomes returned when the rule expression matches.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "CreateRuleResult": {
      "type": "structure",
      "members": {
        "rule": {
          "shape": "Rule",
          "documentation": "<p>The created rule.</p>"
        }
      }
    },
    "CreateVariableRequest": {
      "type": "structure",
      "required": [
        "name",
        "dataType",
        "dataSource",
        "defaultValue"
      ],
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The name of the variable.</p>"
        },
        "dataType": {
          "shape": "DataType",
          "documentation": "<p>The data type.</p>"
        },
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The source of the data.</p>"
        },
        "defaultValue": {
          "shape": "string",
          "documentation": "<p>The default value for the variable when no value is received.</p>"
        },
        "description": {
          "shape": "string",
          "documentation": "<p>The description.</p>"
        },
        "variableType": {
          "shape": "string",
          "documentation": "<p>The variable type. For more information see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types\">Variable types</a>. </p> <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT | SHIPPING_ZIP | USERAGENT</code> </p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "CreateVariableResult": {
      "type": "structure",
      "members": {}
    },
    "CsvIndexToVariableMap": {
      "type": "map",
      "key": {
        "shape": "string"
      },
      "value": {
        "shape": "string"
      }
    },
    "DataSource": {
      "type": "string",
      "enum": [
        "EVENT",
        "MODEL_SCORE",
        "EXTERNAL_MODEL_SCORE"
      ]
    },
    "DataType": {
      "type": "string",
      "enum": [
        "STRING",
        "INTEGER",
        "FLOAT",
        "BOOLEAN"
      ]
    },
    "DataValidationMetrics": {
      "type": "structure",
      "members": {
        "fileLevelMessages": {
          "shape": "fileValidationMessageList",
          "documentation": "<p>The file-specific model training validation messages.</p>"
        },
        "fieldLevelMessages": {
          "shape": "fieldValidationMessageList",
          "documentation": "<p>The field-specific model training validation messages.</p>"
        }
      },
      "documentation": "<p>The model training validation messages.</p>"
    },
    "DeleteDetectorRequest": {
      "type": "structure",
      "required": [
        "detectorId"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The ID of the detector to delete.</p>"
        }
      }
    },
    "DeleteDetectorResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteDetectorVersionRequest": {
      "type": "structure",
      "required": [
        "detectorId",
        "detectorVersionId"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The ID of the parent detector for the detector version to delete.</p>"
        },
        "detectorVersionId": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The ID of the detector version to delete.</p>"
        }
      }
    },
    "DeleteDetectorVersionResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteEventRequest": {
      "type": "structure",
      "required": [
        "eventId",
        "eventTypeName"
      ],
      "members": {
        "eventId": {
          "shape": "string",
          "documentation": "<p>The ID of the event to delete.</p>"
        },
        "eventTypeName": {
          "shape": "string",
          "documentation": "<p>The name of the event type.</p>"
        }
      }
    },
    "DeleteEventResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteRuleRequest": {
      "type": "structure",
      "required": [
        "rule"
      ],
      "members": {
        "rule": {
          "shape": "Rule"
        }
      }
    },
    "DeleteRuleResult": {
      "type": "structure",
      "members": {}
    },
    "DescribeDetectorRequest": {
      "type": "structure",
      "required": [
        "detectorId"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token from the previous response.</p>"
        },
        "maxResults": {
          "shape": "DetectorVersionMaxResults",
          "documentation": "<p>The maximum number of results to return for the request.</p>"
        }
      }
    },
    "DescribeDetectorResult": {
      "type": "structure",
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID.</p>"
        },
        "detectorVersionSummaries": {
          "shape": "DetectorVersionSummaryList",
          "documentation": "<p>The status and description for each detector version.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token to be used for subsequent requests.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The detector ARN.</p>"
        }
      }
    },
    "DescribeModelVersionsRequest": {
      "type": "structure",
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelVersionNumber": {
          "shape": "floatVersionString",
          "documentation": "<p>The model version number.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token from the previous results.</p>"
        },
        "maxResults": {
          "shape": "modelsMaxPageSize",
          "documentation": "<p>The maximum number of results to return.</p>"
        }
      }
    },
    "DescribeModelVersionsResult": {
      "type": "structure",
      "members": {
        "modelVersionDetails": {
          "shape": "modelVersionDetailList",
          "documentation": "<p>The model version details.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token.</p>"
        }
      }
    },
    "Detector": {
      "type": "structure",
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The detector description.</p>"
        },
        "eventTypeName": {
          "shape": "identifier",
          "documentation": "<p>The name of the event type.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the detector was last updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the detector was created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The detector ARN.</p>"
        }
      },
      "documentation": "<p>The detector.</p>"
    },
    "DetectorList": {
      "type": "list",
      "member": {
        "shape": "Detector"
      }
    },
    "DetectorVersionMaxResults": {
      "type": "integer",
      "box": true,
      "max": 2500,
      "min": 1000
    },
    "DetectorVersionStatus": {
      "type": "string",
      "enum": [
        "DRAFT",
        "ACTIVE",
        "INACTIVE"
      ]
    },
    "DetectorVersionSummary": {
      "type": "structure",
      "members": {
        "detectorVersionId": {
          "shape": "nonEmptyString",
          "documentation": "<p>The detector version ID. </p>"
        },
        "status": {
          "shape": "DetectorVersionStatus",
          "documentation": "<p>The detector version status. </p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The detector version description. </p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the detector version was last updated.</p>"
        }
      },
      "documentation": "<p>The summary of the detector version.</p>"
    },
    "DetectorVersionSummaryList": {
      "type": "list",
      "member": {
        "shape": "DetectorVersionSummary"
      }
    },
    "DetectorsMaxResults": {
      "type": "integer",
      "box": true,
      "max": 10,
      "min": 5
    },
    "Entity": {
      "type": "structure",
      "required": [
        "entityType",
        "entityId"
      ],
      "members": {
        "entityType": {
          "shape": "string",
          "documentation": "<p>The entity type.</p>"
        },
        "entityId": {
          "shape": "identifier",
          "documentation": "<p>The entity ID. If you do not know the <code>entityId</code>, you can pass <code>unknown</code>, which is areserved string literal.</p>"
        }
      },
      "documentation": "<p>The entity details. </p>"
    },
    "EntityType": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The entity type name.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The entity type description.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the entity type was last updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the entity type was created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The entity type ARN.</p>"
        }
      },
      "documentation": "<p>The entity type details.</p>"
    },
    "EventType": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The event type name.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The event type description.</p>"
        },
        "eventVariables": {
          "shape": "ListOfStrings",
          "documentation": "<p>The event type event variables.</p>"
        },
        "labels": {
          "shape": "ListOfStrings",
          "documentation": "<p>The event type labels.</p>"
        },
        "entityTypes": {
          "shape": "NonEmptyListOfStrings",
          "documentation": "<p>The event type entity types.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the event type was last updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the event type was created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The entity type ARN.</p>"
        }
      },
      "documentation": "<p>The event type details.</p>"
    },
    "EventVariableMap": {
      "type": "map",
      "key": {
        "shape": "variableName"
      },
      "value": {
        "shape": "variableValue"
      },
      "min": 1
    },
    "ExternalEventsDetail": {
      "type": "structure",
      "required": [
        "dataLocation",
        "dataAccessRoleArn"
      ],
      "members": {
        "dataLocation": {
          "shape": "s3BucketLocation",
          "documentation": "<p>The Amazon S3 bucket location for the data.</p>"
        },
        "dataAccessRoleArn": {
          "shape": "iamRoleArn",
          "documentation": "<p>The ARN of the role that provides Amazon Fraud Detector access to the data location.</p>"
        }
      },
      "documentation": "<p>Details for the external events data used for model version training.</p>"
    },
    "ExternalModel": {
      "type": "structure",
      "members": {
        "modelEndpoint": {
          "shape": "string",
          "documentation": "<p>The Amazon SageMaker model endpoints.</p>"
        },
        "modelSource": {
          "shape": "ModelSource",
          "documentation": "<p>The source of the model.</p>"
        },
        "invokeModelEndpointRoleArn": {
          "shape": "string",
          "documentation": "<p>The role used to invoke the model. </p>"
        },
        "inputConfiguration": {
          "shape": "ModelInputConfiguration",
          "documentation": "<p>The input configuration.</p>"
        },
        "outputConfiguration": {
          "shape": "ModelOutputConfiguration",
          "documentation": "<p>The output configuration.</p>"
        },
        "modelEndpointStatus": {
          "shape": "ModelEndpointStatus",
          "documentation": "<p>The Amazon Fraud Detector status for the external model endpoint</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the model was last updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the model was last created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The model ARN.</p>"
        }
      },
      "documentation": "<p>The Amazon SageMaker model.</p>"
    },
    "ExternalModelEndpointDataBlobMap": {
      "type": "map",
      "key": {
        "shape": "string"
      },
      "value": {
        "shape": "ModelEndpointDataBlob"
      },
      "sensitive": true
    },
    "ExternalModelList": {
      "type": "list",
      "member": {
        "shape": "ExternalModel"
      }
    },
    "ExternalModelsMaxResults": {
      "type": "integer",
      "box": true,
      "max": 10,
      "min": 5
    },
    "FieldValidationMessage": {
      "type": "structure",
      "members": {
        "fieldName": {
          "shape": "string",
          "documentation": "<p>The field name.</p>"
        },
        "identifier": {
          "shape": "string",
          "documentation": "<p>The message ID.</p>"
        },
        "title": {
          "shape": "string",
          "documentation": "<p>The message title.</p>"
        },
        "content": {
          "shape": "string",
          "documentation": "<p>The message content.</p>"
        },
        "type": {
          "shape": "string",
          "documentation": "<p>The message type.</p>"
        }
      },
      "documentation": "<p>The message details.</p>"
    },
    "FileValidationMessage": {
      "type": "structure",
      "members": {
        "title": {
          "shape": "string",
          "documentation": "<p>The message title.</p>"
        },
        "content": {
          "shape": "string",
          "documentation": "<p>The message content.</p>"
        },
        "type": {
          "shape": "string",
          "documentation": "<p>The message type.</p>"
        }
      },
      "documentation": "<p>The message details.</p>"
    },
    "GetDetectorVersionRequest": {
      "type": "structure",
      "required": [
        "detectorId",
        "detectorVersionId"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID.</p>"
        },
        "detectorVersionId": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The detector version ID.</p>"
        }
      }
    },
    "GetDetectorVersionResult": {
      "type": "structure",
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID.</p>"
        },
        "detectorVersionId": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The detector version ID.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The detector version description.</p>"
        },
        "externalModelEndpoints": {
          "shape": "ListOfStrings",
          "documentation": "<p>The Amazon SageMaker model endpoints included in the detector version.</p>"
        },
        "modelVersions": {
          "shape": "ListOfModelVersions",
          "documentation": "<p>The model versions included in the detector version. </p>"
        },
        "rules": {
          "shape": "RuleList",
          "documentation": "<p>The rules included in the detector version.</p>"
        },
        "status": {
          "shape": "DetectorVersionStatus",
          "documentation": "<p>The status of the detector version.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>The timestamp when the detector version was last updated. </p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>The timestamp when the detector version was created. </p>"
        },
        "ruleExecutionMode": {
          "shape": "RuleExecutionMode",
          "documentation": "<p>The execution mode of the rule in the dectector</p> <p> <code>FIRST_MATCHED</code> indicates that Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p> <p> <code>ALL_MATCHED</code> indicates that Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The detector version ARN.</p>"
        }
      }
    },
    "GetDetectorsRequest": {
      "type": "structure",
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token for the subsequent request.</p>"
        },
        "maxResults": {
          "shape": "DetectorsMaxResults",
          "documentation": "<p>The maximum number of objects to return for the request.</p>"
        }
      }
    },
    "GetDetectorsResult": {
      "type": "structure",
      "members": {
        "detectors": {
          "shape": "DetectorList",
          "documentation": "<p>The detectors.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token.</p>"
        }
      }
    },
    "GetEntityTypesRequest": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The name.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token for the subsequent request.</p>"
        },
        "maxResults": {
          "shape": "entityTypesMaxResults",
          "documentation": "<p>The maximum number of objects to return for the request.</p>"
        }
      }
    },
    "GetEntityTypesResult": {
      "type": "structure",
      "members": {
        "entityTypes": {
          "shape": "entityTypeList",
          "documentation": "<p>An array of entity types.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token.</p>"
        }
      }
    },
    "GetEventPredictionRequest": {
      "type": "structure",
      "required": [
        "detectorId",
        "eventId",
        "eventTypeName",
        "entities",
        "eventTimestamp",
        "eventVariables"
      ],
      "members": {
        "detectorId": {
          "shape": "string",
          "documentation": "<p>The detector ID.</p>"
        },
        "detectorVersionId": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The detector version ID.</p>"
        },
        "eventId": {
          "shape": "string",
          "documentation": "<p>The unique ID used to identify the event.</p>"
        },
        "eventTypeName": {
          "shape": "string",
          "documentation": "<p>The event type associated with the detector specified for the prediction.</p>"
        },
        "entities": {
          "shape": "listOfEntities",
          "documentation": "<p>The entity type (associated with the detector's event type) and specific entity ID representing who performed the event. If an entity id is not available, use \"UNKNOWN.\"</p>"
        },
        "eventTimestamp": {
          "shape": "string",
          "documentation": "<p>Timestamp that defines when the event under evaluation occurred.</p>"
        },
        "eventVariables": {
          "shape": "EventVariableMap",
          "documentation": "<p>Names of the event type's variables you defined in Amazon Fraud Detector to represent data elements and their corresponding values for the event you are sending for evaluation.</p>"
        },
        "externalModelEndpointDataBlobs": {
          "shape": "ExternalModelEndpointDataBlobMap",
          "documentation": "<p>The Amazon SageMaker model endpoint input data blobs.</p>"
        }
      }
    },
    "GetEventPredictionResult": {
      "type": "structure",
      "members": {
        "modelScores": {
          "shape": "ListOfModelScores",
          "documentation": "<p>The model scores. Amazon Fraud Detector generates model scores between 0 and 1000, where 0 is low fraud risk and 1000 is high fraud risk. Model scores are directly related to the false positive rate (FPR). For example, a score of 600 corresponds to an estimated 10% false positive rate whereas a score of 900 corresponds to an estimated 2% false positive rate.</p>"
        },
        "ruleResults": {
          "shape": "ListOfRuleResults",
          "documentation": "<p>The results.</p>"
        }
      }
    },
    "GetEventTypesRequest": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The name.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token for the subsequent request.</p>"
        },
        "maxResults": {
          "shape": "eventTypesMaxResults",
          "documentation": "<p>The maximum number of objects to return for the request.</p>"
        }
      }
    },
    "GetEventTypesResult": {
      "type": "structure",
      "members": {
        "eventTypes": {
          "shape": "eventTypeList",
          "documentation": "<p>An array of event types.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token.</p>"
        }
      }
    },
    "GetExternalModelsRequest": {
      "type": "structure",
      "members": {
        "modelEndpoint": {
          "shape": "string",
          "documentation": "<p>The Amazon SageMaker model endpoint.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token for the request.</p>"
        },
        "maxResults": {
          "shape": "ExternalModelsMaxResults",
          "documentation": "<p>The maximum number of objects to return for the request.</p>"
        }
      }
    },
    "GetExternalModelsResult": {
      "type": "structure",
      "members": {
        "externalModels": {
          "shape": "ExternalModelList",
          "documentation": "<p>Gets the Amazon SageMaker models.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token to be used in subsequent requests.</p>"
        }
      }
    },
    "GetKMSEncryptionKeyResult": {
      "type": "structure",
      "members": {
        "kmsKey": {
          "shape": "KMSKey",
          "documentation": "<p>The KMS encryption key.</p>"
        }
      }
    },
    "GetLabelsRequest": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The name of the label or labels to get.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token for the subsequent request.</p>"
        },
        "maxResults": {
          "shape": "labelsMaxResults",
          "documentation": "<p>The maximum number of objects to return for the request.</p>"
        }
      }
    },
    "GetLabelsResult": {
      "type": "structure",
      "members": {
        "labels": {
          "shape": "labelList",
          "documentation": "<p>An array of labels.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token.</p>"
        }
      }
    },
    "GetModelVersionRequest": {
      "type": "structure",
      "required": [
        "modelId",
        "modelType",
        "modelVersionNumber"
      ],
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "modelVersionNumber": {
          "shape": "floatVersionString",
          "documentation": "<p>The model version number.</p>"
        }
      }
    },
    "GetModelVersionResult": {
      "type": "structure",
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "modelVersionNumber": {
          "shape": "floatVersionString",
          "documentation": "<p>The model version number.</p>"
        },
        "trainingDataSource": {
          "shape": "TrainingDataSourceEnum",
          "documentation": "<p>The training data source.</p>"
        },
        "trainingDataSchema": {
          "shape": "TrainingDataSchema",
          "documentation": "<p>The training data schema.</p>"
        },
        "externalEventsDetail": {
          "shape": "ExternalEventsDetail",
          "documentation": "<p>The event details.</p>"
        },
        "status": {
          "shape": "string",
          "documentation": "<p>The model version status.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The model version ARN.</p>"
        }
      }
    },
    "GetModelsRequest": {
      "type": "structure",
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token for the subsequent request.</p>"
        },
        "maxResults": {
          "shape": "modelsMaxPageSize",
          "documentation": "<p>The maximum number of objects to return for the request. </p>"
        }
      }
    },
    "GetModelsResult": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token to be used in subsequent requests.</p>"
        },
        "models": {
          "shape": "modelList",
          "documentation": "<p>The array of models.</p>"
        }
      }
    },
    "GetOutcomesRequest": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The name of the outcome or outcomes to get.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token for the request. </p>"
        },
        "maxResults": {
          "shape": "OutcomesMaxResults",
          "documentation": "<p>The maximum number of objects to return for the request. </p>"
        }
      }
    },
    "GetOutcomesResult": {
      "type": "structure",
      "members": {
        "outcomes": {
          "shape": "OutcomeList",
          "documentation": "<p>The outcomes. </p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token for subsequent requests.</p>"
        }
      }
    },
    "GetRulesRequest": {
      "type": "structure",
      "required": [
        "detectorId"
      ],
      "members": {
        "ruleId": {
          "shape": "identifier",
          "documentation": "<p>The rule ID.</p>"
        },
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID.</p>"
        },
        "ruleVersion": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The rule version.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token.</p>"
        },
        "maxResults": {
          "shape": "RulesMaxResults",
          "documentation": "<p>The maximum number of rules to return for the request.</p>"
        }
      }
    },
    "GetRulesResult": {
      "type": "structure",
      "members": {
        "ruleDetails": {
          "shape": "RuleDetailList",
          "documentation": "<p>The details of the requested rule.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token to be used in subsequent requests.</p>"
        }
      }
    },
    "GetVariablesRequest": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The name of the variable. </p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token of the get variable request. </p>"
        },
        "maxResults": {
          "shape": "VariablesMaxResults",
          "documentation": "<p>The max size per page determined for the get variable request. </p>"
        }
      }
    },
    "GetVariablesResult": {
      "type": "structure",
      "members": {
        "variables": {
          "shape": "VariableList",
          "documentation": "<p>The names of the variables returned. </p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next page token to be used in subsequent requests. </p>"
        }
      }
    },
    "JsonKeyToVariableMap": {
      "type": "map",
      "key": {
        "shape": "string"
      },
      "value": {
        "shape": "string"
      }
    },
    "KMSKey": {
      "type": "structure",
      "members": {
        "kmsEncryptionKeyArn": {
          "shape": "KmsEncryptionKeyArn",
          "documentation": "<p>The encryption key ARN.</p>"
        }
      },
      "documentation": "<p>The KMS key details.</p>"
    },
    "KmsEncryptionKeyArn": {
      "type": "string",
      "max": 80,
      "min": 7,
      "pattern": "^\\w{8}-\\w{4}-\\w{4}-\\w{4}-\\w{12}$|DEFAULT|arn:[a-zA-Z0-9-]+:kms:[a-zA-Z0-9-]+:\\d{12}:key:[a-zA-Z0-9-_]+|[a-zA-Z0-9-_]\\S+"
    },
    "Label": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The label name.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The label description.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the label was last updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the event type was created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The label ARN.</p>"
        }
      },
      "documentation": "<p>The label details.</p>"
    },
    "LabelSchema": {
      "type": "structure",
      "required": [
        "labelMapper"
      ],
      "members": {
        "labelMapper": {
          "shape": "labelMapper",
          "documentation": "<p>The label mapper maps the Amazon Fraud Detector supported model classification labels (<code>FRAUD</code>, <code>LEGIT</code>) to the appropriate event type labels. For example, if \"<code>FRAUD</code>\" and \"<code>LEGIT</code>\" are Amazon Fraud Detector supported labels, this mapper could be: <code>{\"FRAUD\" =&gt; [\"0\"]</code>, <code>\"LEGIT\" =&gt; [\"1\"]}</code> or <code>{\"FRAUD\" =&gt; [\"false\"]</code>, <code>\"LEGIT\" =&gt; [\"true\"]}</code> or <code>{\"FRAUD\" =&gt; [\"fraud\", \"abuse\"]</code>, <code>\"LEGIT\" =&gt; [\"legit\", \"safe\"]}</code>. The value part of the mapper is a list, because you may have multiple label variants from your event type for a single Amazon Fraud Detector label. </p>"
        }
      },
      "documentation": "<p>The label schema.</p>"
    },
    "Language": {
      "type": "string",
      "enum": [
        "DETECTORPL"
      ]
    },
    "ListOfModelScores": {
      "type": "list",
      "member": {
        "shape": "ModelScores"
      }
    },
    "ListOfModelVersions": {
      "type": "list",
      "member": {
        "shape": "ModelVersion"
      }
    },
    "ListOfRuleResults": {
      "type": "list",
      "member": {
        "shape": "RuleResult"
      }
    },
    "ListOfStrings": {
      "type": "list",
      "member": {
        "shape": "string"
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceARN"
      ],
      "members": {
        "resourceARN": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The ARN that specifies the resource whose tags you want to list.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token from the previous results.</p>"
        },
        "maxResults": {
          "shape": "TagsMaxResults",
          "documentation": "<p>The maximum number of objects to return for the request. </p>"
        }
      }
    },
    "ListTagsForResourceResult": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        },
        "nextToken": {
          "shape": "string",
          "documentation": "<p>The next token for subsequent requests. </p>"
        }
      }
    },
    "MetricDataPoint": {
      "type": "structure",
      "members": {
        "fpr": {
          "shape": "float",
          "documentation": "<p>The false positive rate. This is the percentage of total legitimate events that are incorrectly predicted as fraud.</p>"
        },
        "precision": {
          "shape": "float",
          "documentation": "<p>The percentage of fraud events correctly predicted as fraudulent as compared to all events predicted as fraudulent.</p>"
        },
        "tpr": {
          "shape": "float",
          "documentation": "<p>The true positive rate. This is the percentage of total fraud the model detects. Also known as capture rate.</p>"
        },
        "threshold": {
          "shape": "float",
          "documentation": "<p>The model threshold that specifies an acceptable fraud capture rate. For example, a threshold of 500 means any model score 500 or above is labeled as fraud.</p>"
        }
      },
      "documentation": "<p>Model performance metrics data points.</p>"
    },
    "Model": {
      "type": "structure",
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The model description.</p>"
        },
        "eventTypeName": {
          "shape": "string",
          "documentation": "<p>The name of the event type.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of when the model was created.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of last time the model was updated.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The ARN of the model.</p>"
        }
      },
      "documentation": "<p>The model.</p>"
    },
    "ModelEndpointDataBlob": {
      "type": "structure",
      "members": {
        "byteBuffer": {
          "shape": "blob",
          "documentation": "<p>The byte buffer of the Amazon SageMaker model endpoint input data blob.</p>"
        },
        "contentType": {
          "shape": "contentType",
          "documentation": "<p>The content type of the Amazon SageMaker model endpoint input data blob. </p>"
        }
      },
      "documentation": "<p>A pre-formed Amazon SageMaker model input you can include if your detector version includes an imported Amazon SageMaker model endpoint with pass-through input configuration.</p>"
    },
    "ModelEndpointStatus": {
      "type": "string",
      "enum": [
        "ASSOCIATED",
        "DISSOCIATED"
      ]
    },
    "ModelInputConfiguration": {
      "type": "structure",
      "required": [
        "useEventVariables"
      ],
      "members": {
        "eventTypeName": {
          "shape": "identifier",
          "documentation": "<p>The event type name.</p>"
        },
        "format": {
          "shape": "ModelInputDataFormat",
          "documentation": "<p> The format of the model input configuration. The format differs depending on if it is passed through to SageMaker or constructed by Amazon Fraud Detector.</p>"
        },
        "useEventVariables": {
          "shape": "UseEventVariables",
          "documentation": "<p>The event variables.</p>"
        },
        "jsonInputTemplate": {
          "shape": "string",
          "documentation": "<p> Template for constructing the JSON input-data sent to SageMaker. At event-evaluation, the placeholders for variable names in the template will be replaced with the variable values before being sent to SageMaker. </p>"
        },
        "csvInputTemplate": {
          "shape": "string",
          "documentation": "<p> Template for constructing the CSV input-data sent to SageMaker. At event-evaluation, the placeholders for variable-names in the template will be replaced with the variable values before being sent to SageMaker. </p>"
        }
      },
      "documentation": "<p>The Amazon SageMaker model input configuration.</p>"
    },
    "ModelInputDataFormat": {
      "type": "string",
      "enum": [
        "TEXT_CSV",
        "APPLICATION_JSON"
      ]
    },
    "ModelOutputConfiguration": {
      "type": "structure",
      "required": [
        "format"
      ],
      "members": {
        "format": {
          "shape": "ModelOutputDataFormat",
          "documentation": "<p>The format of the model output configuration.</p>"
        },
        "jsonKeyToVariableMap": {
          "shape": "JsonKeyToVariableMap",
          "documentation": "<p>A map of JSON keys in response from SageMaker to the Amazon Fraud Detector variables. </p>"
        },
        "csvIndexToVariableMap": {
          "shape": "CsvIndexToVariableMap",
          "documentation": "<p>A map of CSV index values in the SageMaker response to the Amazon Fraud Detector variables. </p>"
        }
      },
      "documentation": "<p>Provides the Amazon Sagemaker model output configuration.</p>"
    },
    "ModelOutputDataFormat": {
      "type": "string",
      "enum": [
        "TEXT_CSV",
        "APPLICATION_JSONLINES"
      ]
    },
    "ModelPredictionMap": {
      "type": "map",
      "key": {
        "shape": "string"
      },
      "value": {
        "shape": "float"
      }
    },
    "ModelScores": {
      "type": "structure",
      "members": {
        "modelVersion": {
          "shape": "ModelVersion",
          "documentation": "<p>The model version.</p>"
        },
        "scores": {
          "shape": "ModelPredictionMap",
          "documentation": "<p>The model's fraud prediction scores.</p>"
        }
      },
      "documentation": "<p>The fraud prediction scores.</p>"
    },
    "ModelSource": {
      "type": "string",
      "enum": [
        "SAGEMAKER"
      ]
    },
    "ModelTypeEnum": {
      "type": "string",
      "enum": [
        "ONLINE_FRAUD_INSIGHTS"
      ]
    },
    "ModelVersion": {
      "type": "structure",
      "required": [
        "modelId",
        "modelType",
        "modelVersionNumber"
      ],
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "modelVersionNumber": {
          "shape": "nonEmptyString",
          "documentation": "<p>The model version number.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The model version ARN.</p>"
        }
      },
      "documentation": "<p>The model version.</p>"
    },
    "ModelVersionDetail": {
      "type": "structure",
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "modelVersionNumber": {
          "shape": "floatVersionString",
          "documentation": "<p>The model version number.</p>"
        },
        "status": {
          "shape": "string",
          "documentation": "<p>The status of the model version.</p>"
        },
        "trainingDataSource": {
          "shape": "TrainingDataSourceEnum",
          "documentation": "<p>The model version training data source.</p>"
        },
        "trainingDataSchema": {
          "shape": "TrainingDataSchema",
          "documentation": "<p>The training data schema.</p>"
        },
        "externalEventsDetail": {
          "shape": "ExternalEventsDetail",
          "documentation": "<p>The event details.</p>"
        },
        "trainingResult": {
          "shape": "TrainingResult",
          "documentation": "<p>The training results.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>The timestamp when the model was last updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>The timestamp when the model was created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The model version ARN.</p>"
        }
      },
      "documentation": "<p>The details of the model version.</p>"
    },
    "ModelVersionStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "INACTIVE"
      ]
    },
    "NameList": {
      "type": "list",
      "member": {
        "shape": "string"
      },
      "max": 100,
      "min": 1
    },
    "NonEmptyListOfStrings": {
      "type": "list",
      "member": {
        "shape": "string"
      },
      "min": 1
    },
    "Outcome": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The outcome name.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The outcome description.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>The timestamp when the outcome was last updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>The timestamp when the outcome was created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The outcome ARN.</p>"
        }
      },
      "documentation": "<p>The outcome.</p>"
    },
    "OutcomeList": {
      "type": "list",
      "member": {
        "shape": "Outcome"
      }
    },
    "OutcomesMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 50
    },
    "PutDetectorRequest": {
      "type": "structure",
      "required": [
        "detectorId",
        "eventTypeName"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID. </p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The description of the detector.</p>"
        },
        "eventTypeName": {
          "shape": "identifier",
          "documentation": "<p>The name of the event type.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "PutDetectorResult": {
      "type": "structure",
      "members": {}
    },
    "PutEntityTypeRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The name of the entity type.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The description.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "PutEntityTypeResult": {
      "type": "structure",
      "members": {}
    },
    "PutEventTypeRequest": {
      "type": "structure",
      "required": [
        "name",
        "eventVariables",
        "entityTypes"
      ],
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The name.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The description of the event type.</p>"
        },
        "eventVariables": {
          "shape": "NonEmptyListOfStrings",
          "documentation": "<p>The event type variables.</p>"
        },
        "labels": {
          "shape": "ListOfStrings",
          "documentation": "<p>The event type labels.</p>"
        },
        "entityTypes": {
          "shape": "NonEmptyListOfStrings",
          "documentation": "<p>The entity type for the event type. Example entity types: customer, merchant, account.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "PutEventTypeResult": {
      "type": "structure",
      "members": {}
    },
    "PutExternalModelRequest": {
      "type": "structure",
      "required": [
        "modelEndpoint",
        "modelSource",
        "invokeModelEndpointRoleArn",
        "inputConfiguration",
        "outputConfiguration",
        "modelEndpointStatus"
      ],
      "members": {
        "modelEndpoint": {
          "shape": "sageMakerEndpointIdentifier",
          "documentation": "<p>The model endpoints name.</p>"
        },
        "modelSource": {
          "shape": "ModelSource",
          "documentation": "<p>The source of the model.</p>"
        },
        "invokeModelEndpointRoleArn": {
          "shape": "string",
          "documentation": "<p>The IAM role used to invoke the model endpoint.</p>"
        },
        "inputConfiguration": {
          "shape": "ModelInputConfiguration",
          "documentation": "<p>The model endpoint input configuration.</p>"
        },
        "outputConfiguration": {
          "shape": "ModelOutputConfiguration",
          "documentation": "<p>The model endpoint output configuration.</p>"
        },
        "modelEndpointStatus": {
          "shape": "ModelEndpointStatus",
          "documentation": "<p>The model endpoint’s status in Amazon Fraud Detector.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "PutExternalModelResult": {
      "type": "structure",
      "members": {}
    },
    "PutKMSEncryptionKeyRequest": {
      "type": "structure",
      "required": [
        "kmsEncryptionKeyArn"
      ],
      "members": {
        "kmsEncryptionKeyArn": {
          "shape": "KmsEncryptionKeyArn",
          "documentation": "<p>The KMS encryption key ARN.</p>"
        }
      }
    },
    "PutKMSEncryptionKeyResult": {
      "type": "structure",
      "members": {}
    },
    "PutLabelRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The label name.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The label description.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p/>"
        }
      }
    },
    "PutLabelResult": {
      "type": "structure",
      "members": {}
    },
    "PutOutcomeRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "identifier",
          "documentation": "<p>The name of the outcome.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The outcome description.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "PutOutcomeResult": {
      "type": "structure",
      "members": {}
    },
    "Rule": {
      "type": "structure",
      "required": [
        "detectorId",
        "ruleId",
        "ruleVersion"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector for which the rule is associated.</p>"
        },
        "ruleId": {
          "shape": "identifier",
          "documentation": "<p>The rule ID.</p>"
        },
        "ruleVersion": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The rule version.</p>"
        }
      },
      "documentation": "<p>A rule.</p>"
    },
    "RuleDetail": {
      "type": "structure",
      "members": {
        "ruleId": {
          "shape": "identifier",
          "documentation": "<p>The rule ID.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The rule description.</p>"
        },
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector for which the rule is associated.</p>"
        },
        "ruleVersion": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The rule version.</p>"
        },
        "expression": {
          "shape": "ruleExpression",
          "documentation": "<p>The rule expression.</p>"
        },
        "language": {
          "shape": "Language",
          "documentation": "<p>The rule language.</p>"
        },
        "outcomes": {
          "shape": "NonEmptyListOfStrings",
          "documentation": "<p>The rule outcomes.</p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>Timestamp of the last time the rule was updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>The timestamp of when the rule was created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The rule ARN.</p>"
        }
      },
      "documentation": "<p>The details of the rule.</p>"
    },
    "RuleDetailList": {
      "type": "list",
      "member": {
        "shape": "RuleDetail"
      }
    },
    "RuleExecutionMode": {
      "type": "string",
      "enum": [
        "ALL_MATCHED",
        "FIRST_MATCHED"
      ]
    },
    "RuleList": {
      "type": "list",
      "member": {
        "shape": "Rule"
      }
    },
    "RuleResult": {
      "type": "structure",
      "members": {
        "ruleId": {
          "shape": "string",
          "documentation": "<p>The rule ID that was matched, based on the rule execution mode.</p>"
        },
        "outcomes": {
          "shape": "ListOfStrings",
          "documentation": "<p>The outcomes of the matched rule, based on the rule execution mode.</p>"
        }
      },
      "documentation": "<p>The rule results.</p>"
    },
    "RulesMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 50
    },
    "Tag": {
      "type": "structure",
      "required": [
        "key",
        "value"
      ],
      "members": {
        "key": {
          "shape": "tagKey",
          "documentation": "<p>A tag key.</p>"
        },
        "value": {
          "shape": "tagValue",
          "documentation": "<p>A value assigned to a tag key.</p>"
        }
      },
      "documentation": "<p>A key and value pair. </p>"
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceARN",
        "tags"
      ],
      "members": {
        "resourceARN": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The resource ARN.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>The tags to assign to the resource.</p>"
        }
      }
    },
    "TagResourceResult": {
      "type": "structure",
      "members": {}
    },
    "TagsMaxResults": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 50
    },
    "TrainingDataSchema": {
      "type": "structure",
      "required": [
        "modelVariables",
        "labelSchema"
      ],
      "members": {
        "modelVariables": {
          "shape": "ListOfStrings",
          "documentation": "<p>The training data schema variables.</p>"
        },
        "labelSchema": {
          "shape": "LabelSchema"
        }
      },
      "documentation": "<p>The training data schema.</p>"
    },
    "TrainingDataSourceEnum": {
      "type": "string",
      "enum": [
        "EXTERNAL_EVENTS"
      ]
    },
    "TrainingMetrics": {
      "type": "structure",
      "members": {
        "auc": {
          "shape": "float",
          "documentation": "<p>The area under the curve. This summarizes true positive rate (TPR) and false positive rate (FPR) across all possible model score thresholds. A model with no predictive power has an AUC of 0.5, whereas a perfect model has a score of 1.0.</p>"
        },
        "metricDataPoints": {
          "shape": "metricDataPointsList",
          "documentation": "<p>The data points details.</p>"
        }
      },
      "documentation": "<p>The training metric details.</p>"
    },
    "TrainingResult": {
      "type": "structure",
      "members": {
        "dataValidationMetrics": {
          "shape": "DataValidationMetrics",
          "documentation": "<p>The validation metrics.</p>"
        },
        "trainingMetrics": {
          "shape": "TrainingMetrics",
          "documentation": "<p>The training metric details.</p>"
        }
      },
      "documentation": "<p>The training result details.</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceARN",
        "tagKeys"
      ],
      "members": {
        "resourceARN": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The ARN of the resource from which to remove the tag.</p>"
        },
        "tagKeys": {
          "shape": "tagKeyList",
          "documentation": "<p>The resource ARN.</p>"
        }
      }
    },
    "UntagResourceResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateDetectorVersionMetadataRequest": {
      "type": "structure",
      "required": [
        "detectorId",
        "detectorVersionId",
        "description"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID.</p>"
        },
        "detectorVersionId": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The detector version ID. </p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The description.</p>"
        }
      }
    },
    "UpdateDetectorVersionMetadataResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateDetectorVersionRequest": {
      "type": "structure",
      "required": [
        "detectorId",
        "detectorVersionId",
        "externalModelEndpoints",
        "rules"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The parent detector ID for the detector version you want to update.</p>"
        },
        "detectorVersionId": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The detector version ID. </p>"
        },
        "externalModelEndpoints": {
          "shape": "ListOfStrings",
          "documentation": "<p>The Amazon SageMaker model endpoints to include in the detector version.</p>"
        },
        "rules": {
          "shape": "RuleList",
          "documentation": "<p>The rules to include in the detector version.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The detector version description. </p>"
        },
        "modelVersions": {
          "shape": "ListOfModelVersions",
          "documentation": "<p>The model versions to include in the detector version.</p>"
        },
        "ruleExecutionMode": {
          "shape": "RuleExecutionMode",
          "documentation": "<p>The rule execution mode to add to the detector.</p> <p>If you specify <code>FIRST_MATCHED</code>, Amazon Fraud Detector evaluates rules sequentially, first to last, stopping at the first matched rule. Amazon Fraud dectector then provides the outcomes for that single rule.</p> <p>If you specifiy <code>ALL_MATCHED</code>, Amazon Fraud Detector evaluates all rules and returns the outcomes for all matched rules. You can define and edit the rule mode at the detector version level, when it is in draft status.</p> <p>The default behavior is <code>FIRST_MATCHED</code>.</p>"
        }
      }
    },
    "UpdateDetectorVersionResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateDetectorVersionStatusRequest": {
      "type": "structure",
      "required": [
        "detectorId",
        "detectorVersionId",
        "status"
      ],
      "members": {
        "detectorId": {
          "shape": "identifier",
          "documentation": "<p>The detector ID. </p>"
        },
        "detectorVersionId": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The detector version ID. </p>"
        },
        "status": {
          "shape": "DetectorVersionStatus",
          "documentation": "<p>The new status.</p>"
        }
      }
    },
    "UpdateDetectorVersionStatusResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateModelRequest": {
      "type": "structure",
      "required": [
        "modelId",
        "modelType"
      ],
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The new model description.</p>"
        }
      }
    },
    "UpdateModelResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateModelVersionRequest": {
      "type": "structure",
      "required": [
        "modelId",
        "modelType",
        "majorVersionNumber"
      ],
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "majorVersionNumber": {
          "shape": "wholeNumberVersionString",
          "documentation": "<p>The major version number.</p>"
        },
        "externalEventsDetail": {
          "shape": "ExternalEventsDetail",
          "documentation": "<p>The event details.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>A collection of key and value pairs.</p>"
        }
      }
    },
    "UpdateModelVersionResult": {
      "type": "structure",
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "modelVersionNumber": {
          "shape": "floatVersionString",
          "documentation": "<p>The model version number of the model version updated.</p>"
        },
        "status": {
          "shape": "string",
          "documentation": "<p>The status of the updated model version.</p>"
        }
      }
    },
    "UpdateModelVersionStatusRequest": {
      "type": "structure",
      "required": [
        "modelId",
        "modelType",
        "modelVersionNumber",
        "status"
      ],
      "members": {
        "modelId": {
          "shape": "modelIdentifier",
          "documentation": "<p>The model ID of the model version to update.</p>"
        },
        "modelType": {
          "shape": "ModelTypeEnum",
          "documentation": "<p>The model type.</p>"
        },
        "modelVersionNumber": {
          "shape": "floatVersionString",
          "documentation": "<p>The model version number.</p>"
        },
        "status": {
          "shape": "ModelVersionStatus",
          "documentation": "<p>The model version status.</p>"
        }
      }
    },
    "UpdateModelVersionStatusResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateRuleMetadataRequest": {
      "type": "structure",
      "required": [
        "rule",
        "description"
      ],
      "members": {
        "rule": {
          "shape": "Rule",
          "documentation": "<p>The rule to update.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The rule description.</p>"
        }
      }
    },
    "UpdateRuleMetadataResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateRuleVersionRequest": {
      "type": "structure",
      "required": [
        "rule",
        "expression",
        "language",
        "outcomes"
      ],
      "members": {
        "rule": {
          "shape": "Rule",
          "documentation": "<p>The rule to update.</p>"
        },
        "description": {
          "shape": "description",
          "documentation": "<p>The description.</p>"
        },
        "expression": {
          "shape": "ruleExpression",
          "documentation": "<p>The rule expression.</p>"
        },
        "language": {
          "shape": "Language",
          "documentation": "<p>The language.</p>"
        },
        "outcomes": {
          "shape": "NonEmptyListOfStrings",
          "documentation": "<p>The outcomes.</p>"
        },
        "tags": {
          "shape": "tagList",
          "documentation": "<p>The tags to assign to the rule version.</p>"
        }
      }
    },
    "UpdateRuleVersionResult": {
      "type": "structure",
      "members": {
        "rule": {
          "shape": "Rule",
          "documentation": "<p>The new rule version that was created.</p>"
        }
      }
    },
    "UpdateVariableRequest": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The name of the variable.</p>"
        },
        "defaultValue": {
          "shape": "string",
          "documentation": "<p>The new default value of the variable.</p>"
        },
        "description": {
          "shape": "string",
          "documentation": "<p>The new description.</p>"
        },
        "variableType": {
          "shape": "string",
          "documentation": "<p>The variable type. For more information see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types\">Variable types</a>.</p>"
        }
      }
    },
    "UpdateVariableResult": {
      "type": "structure",
      "members": {}
    },
    "UseEventVariables": {
      "type": "boolean"
    },
    "Variable": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The name of the variable.</p>"
        },
        "dataType": {
          "shape": "DataType",
          "documentation": "<p>The data type of the variable. For more information see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types\">Variable types</a>.</p>"
        },
        "dataSource": {
          "shape": "DataSource",
          "documentation": "<p>The data source of the variable.</p>"
        },
        "defaultValue": {
          "shape": "string",
          "documentation": "<p>The default value of the variable.</p>"
        },
        "description": {
          "shape": "string",
          "documentation": "<p>The description of the variable. </p>"
        },
        "variableType": {
          "shape": "string",
          "documentation": "<p>The variable type of the variable.</p> <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT | SHIPPING_ZIP | USERAGENT</code> </p>"
        },
        "lastUpdatedTime": {
          "shape": "time",
          "documentation": "<p>The time when variable was last updated.</p>"
        },
        "createdTime": {
          "shape": "time",
          "documentation": "<p>The time when the variable was created.</p>"
        },
        "arn": {
          "shape": "fraudDetectorArn",
          "documentation": "<p>The ARN of the variable.</p>"
        }
      },
      "documentation": "<p>The variable.</p>"
    },
    "VariableEntry": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "string",
          "documentation": "<p>The name of the variable.</p>"
        },
        "dataType": {
          "shape": "string",
          "documentation": "<p>The data type of the variable.</p>"
        },
        "dataSource": {
          "shape": "string",
          "documentation": "<p>The data source of the variable.</p>"
        },
        "defaultValue": {
          "shape": "string",
          "documentation": "<p>The default value of the variable.</p>"
        },
        "description": {
          "shape": "string",
          "documentation": "<p>The description of the variable.</p>"
        },
        "variableType": {
          "shape": "string",
          "documentation": "<p>The type of the variable. For more information see <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types\">Variable types</a>.</p> <p>Valid Values: <code>AUTH_CODE | AVS | BILLING_ADDRESS_L1 | BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME | BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL | FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE | PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 | SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY | SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP | USERAGENT | SHIPPING_ZIP | USERAGENT</code> </p>"
        }
      },
      "documentation": "<p>A variable in the list of variables for the batch create variable request.</p>"
    },
    "VariableEntryList": {
      "type": "list",
      "member": {
        "shape": "VariableEntry"
      },
      "max": 25,
      "min": 1
    },
    "VariableList": {
      "type": "list",
      "member": {
        "shape": "Variable"
      }
    },
    "VariablesMaxResults": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 50
    },
    "blob": {
      "type": "blob"
    },
    "contentType": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "description": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "entityTypeList": {
      "type": "list",
      "member": {
        "shape": "EntityType"
      }
    },
    "entityTypesMaxResults": {
      "type": "integer",
      "box": true,
      "max": 10,
      "min": 5
    },
    "eventTypeList": {
      "type": "list",
      "member": {
        "shape": "EventType"
      }
    },
    "eventTypesMaxResults": {
      "type": "integer",
      "box": true,
      "max": 10,
      "min": 5
    },
    "fieldValidationMessageList": {
      "type": "list",
      "member": {
        "shape": "FieldValidationMessage"
      }
    },
    "fileValidationMessageList": {
      "type": "list",
      "member": {
        "shape": "FileValidationMessage"
      }
    },
    "float": {
      "type": "float"
    },
    "floatVersionString": {
      "type": "string",
      "max": 7,
      "min": 3,
      "pattern": "^[1-9][0-9]{0,3}\\.[0-9]{1,2}$"
    },
    "fraudDetectorArn": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^arn\\:aws[a-z-]{0,15}\\:frauddetector\\:[a-z0-9-]{3,20}\\:[0-9]{12}\\:[^\\s]{2,128}$"
    },
    "iamRoleArn": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^arn\\:aws[a-z-]{0,15}\\:iam\\:\\:[0-9]{12}\\:role\\/[^\\s]{2,64}$"
    },
    "identifier": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[0-9a-z_-]+$"
    },
    "integer": {
      "type": "integer"
    },
    "labelList": {
      "type": "list",
      "member": {
        "shape": "Label"
      }
    },
    "labelMapper": {
      "type": "map",
      "key": {
        "shape": "string"
      },
      "value": {
        "shape": "ListOfStrings"
      }
    },
    "labelsMaxResults": {
      "type": "integer",
      "box": true,
      "max": 50,
      "min": 10
    },
    "listOfEntities": {
      "type": "list",
      "member": {
        "shape": "Entity"
      }
    },
    "metricDataPointsList": {
      "type": "list",
      "member": {
        "shape": "MetricDataPoint"
      }
    },
    "modelIdentifier": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[0-9a-z_]+$"
    },
    "modelList": {
      "type": "list",
      "member": {
        "shape": "Model"
      }
    },
    "modelVersionDetailList": {
      "type": "list",
      "member": {
        "shape": "ModelVersionDetail"
      }
    },
    "modelsMaxPageSize": {
      "type": "integer",
      "box": true,
      "max": 10,
      "min": 1
    },
    "nonEmptyString": {
      "type": "string",
      "min": 1
    },
    "ruleExpression": {
      "type": "string",
      "max": 4096,
      "min": 1,
      "sensitive": true
    },
    "s3BucketLocation": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "^s3:\\/\\/(.+)$"
    },
    "sageMakerEndpointIdentifier": {
      "type": "string",
      "max": 63,
      "min": 1,
      "pattern": "^[0-9A-Za-z_-]+$"
    },
    "string": {
      "type": "string"
    },
    "tagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "tagKeyList": {
      "type": "list",
      "member": {
        "shape": "tagKey"
      },
      "max": 50,
      "min": 0
    },
    "tagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 0
    },
    "tagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "time": {
      "type": "string"
    },
    "variableName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "variableValue": {
      "type": "string",
      "max": 256,
      "min": 1,
      "sensitive": true
    },
    "wholeNumberVersionString": {
      "type": "string",
      "max": 5,
      "min": 1,
      "pattern": "^([1-9][0-9]*)$"
    }
  },
  "documentation": "<p>This is the Amazon Fraud Detector API Reference. This guide is for developers who need detailed information about Amazon Fraud Detector API actions, data types, and errors. For more information about Amazon Fraud Detector features, see the <a href=\"https://docs.aws.amazon.com/frauddetector/latest/ug/\">Amazon Fraud Detector User Guide</a>.</p>"
}
]===]))