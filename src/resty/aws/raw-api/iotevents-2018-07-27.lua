local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-07-27",
    "endpointPrefix": "iotevents",
    "protocol": "rest-json",
    "serviceFullName": "AWS IoT Events",
    "serviceId": "IoT Events",
    "signatureVersion": "v4",
    "signingName": "iotevents",
    "uid": "iotevents-2018-07-27"
  },
  "operations": {
    "CreateDetectorModel": {
      "name": "CreateDetectorModel",
      "http": {
        "method": "POST",
        "requestUri": "/detector-models"
      },
      "input": {
        "shape": "CreateDetectorModelRequest"
      },
      "output": {
        "shape": "CreateDetectorModelResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Creates a detector model.</p>"
    },
    "CreateInput": {
      "name": "CreateInput",
      "http": {
        "method": "POST",
        "requestUri": "/inputs",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateInputRequest"
      },
      "output": {
        "shape": "CreateInputResponse"
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
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        }
      ],
      "documentation": "<p>Creates an input.</p>"
    },
    "DeleteDetectorModel": {
      "name": "DeleteDetectorModel",
      "http": {
        "method": "DELETE",
        "requestUri": "/detector-models/{detectorModelName}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteDetectorModelRequest"
      },
      "output": {
        "shape": "DeleteDetectorModelResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes a detector model. Any active instances of the detector model are also deleted.</p>"
    },
    "DeleteInput": {
      "name": "DeleteInput",
      "http": {
        "method": "DELETE",
        "requestUri": "/inputs/{inputName}"
      },
      "input": {
        "shape": "DeleteInputRequest"
      },
      "output": {
        "shape": "DeleteInputResponse"
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
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Deletes an input.</p>"
    },
    "DescribeDetectorModel": {
      "name": "DescribeDetectorModel",
      "http": {
        "method": "GET",
        "requestUri": "/detector-models/{detectorModelName}"
      },
      "input": {
        "shape": "DescribeDetectorModelRequest"
      },
      "output": {
        "shape": "DescribeDetectorModelResponse"
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
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Describes a detector model. If the <code>version</code> parameter is not specified, information about the latest version is returned.</p>"
    },
    "DescribeInput": {
      "name": "DescribeInput",
      "http": {
        "method": "GET",
        "requestUri": "/inputs/{inputName}"
      },
      "input": {
        "shape": "DescribeInputRequest"
      },
      "output": {
        "shape": "DescribeInputResponse"
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
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Describes an input.</p>"
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
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<p>Retrieves the current settings of the AWS IoT Events logging options.</p>"
    },
    "ListDetectorModelVersions": {
      "name": "ListDetectorModelVersions",
      "http": {
        "method": "GET",
        "requestUri": "/detector-models/{detectorModelName}/versions"
      },
      "input": {
        "shape": "ListDetectorModelVersionsRequest"
      },
      "output": {
        "shape": "ListDetectorModelVersionsResponse"
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
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.</p>"
    },
    "ListDetectorModels": {
      "name": "ListDetectorModels",
      "http": {
        "method": "GET",
        "requestUri": "/detector-models"
      },
      "input": {
        "shape": "ListDetectorModelsRequest"
      },
      "output": {
        "shape": "ListDetectorModelsResponse"
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
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Lists the detector models you have created. Only the metadata associated with each detector model is returned.</p>"
    },
    "ListInputs": {
      "name": "ListInputs",
      "http": {
        "method": "GET",
        "requestUri": "/inputs"
      },
      "input": {
        "shape": "ListInputsRequest"
      },
      "output": {
        "shape": "ListInputsResponse"
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
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Lists the inputs you have created.</p>"
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists the tags (metadata) you have assigned to the resource.</p>"
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
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "UnsupportedOperationException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Sets or updates the AWS IoT Events logging options.</p> <p>If you update the value of any <code>loggingOptions</code> field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the <code>roleArn</code> field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.</p>"
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
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
      "documentation": "<p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.</p>"
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Removes the given tags (metadata) from the resource.</p>"
    },
    "UpdateDetectorModel": {
      "name": "UpdateDetectorModel",
      "http": {
        "method": "POST",
        "requestUri": "/detector-models/{detectorModelName}"
      },
      "input": {
        "shape": "UpdateDetectorModelRequest"
      },
      "output": {
        "shape": "UpdateDetectorModelResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.</p>"
    },
    "UpdateInput": {
      "name": "UpdateInput",
      "http": {
        "method": "PUT",
        "requestUri": "/inputs/{inputName}"
      },
      "input": {
        "shape": "UpdateInputRequest"
      },
      "output": {
        "shape": "UpdateInputResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ResourceInUseException"
        }
      ],
      "documentation": "<p>Updates an input.</p>"
    }
  },
  "shapes": {
    "Action": {
      "type": "structure",
      "members": {
        "setVariable": {
          "shape": "SetVariableAction",
          "documentation": "<p>Sets a variable to a specified value.</p>"
        },
        "sns": {
          "shape": "SNSTopicPublishAction",
          "documentation": "<p>Sends an Amazon SNS message.</p>"
        },
        "iotTopicPublish": {
          "shape": "IotTopicPublishAction",
          "documentation": "<p>Publishes an MQTT message with the given topic to the AWS IoT message broker.</p>"
        },
        "setTimer": {
          "shape": "SetTimerAction",
          "documentation": "<p>Information needed to set the timer.</p>"
        },
        "clearTimer": {
          "shape": "ClearTimerAction",
          "documentation": "<p>Information needed to clear the timer.</p>"
        },
        "resetTimer": {
          "shape": "ResetTimerAction",
          "documentation": "<p>Information needed to reset the timer.</p>"
        },
        "lambda": {
          "shape": "LambdaAction",
          "documentation": "<p>Calls a Lambda function, passing in information about the detector model instance and the event that triggered the action.</p>"
        },
        "iotEvents": {
          "shape": "IotEventsAction",
          "documentation": "<p>Sends AWS IoT Events input, which passes information about the detector model instance and the event that triggered the action.</p>"
        },
        "sqs": {
          "shape": "SqsAction",
          "documentation": "<p>Sends information about the detector model instance and the event that triggered the action to an Amazon SQS queue.</p>"
        },
        "firehose": {
          "shape": "FirehoseAction",
          "documentation": "<p>Sends information about the detector model instance and the event that triggered the action to an Amazon Kinesis Data Firehose delivery stream.</p>"
        },
        "dynamoDB": {
          "shape": "DynamoDBAction",
          "documentation": "<p>Writes to the DynamoDB table that you created. The default action payload contains all attribute-value pairs that have the information about the detector model instance and the event that triggered the action. You can also customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. One column of the DynamoDB table receives all attribute-value pairs in the payload that you specify. For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html\">Actions</a> in <i>AWS IoT Events Developer Guide</i>.</p>"
        },
        "dynamoDBv2": {
          "shape": "DynamoDBv2Action",
          "documentation": "<p>Writes to the DynamoDB table that you created. The default action payload contains all attribute-value pairs that have the information about the detector model instance and the event that triggered the action. You can also customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. A separate column of the DynamoDB table receives one attribute-value pair in the payload that you specify. For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-event-actions.html\">Actions</a> in <i>AWS IoT Events Developer Guide</i>.</p>"
        },
        "iotSiteWise": {
          "shape": "IotSiteWiseAction",
          "documentation": "<p>Sends information about the detector model instance and the event that triggered the action to an asset property in AWS IoT SiteWise .</p>"
        }
      },
      "documentation": "<p>An action to be performed when the <code>condition</code> is TRUE.</p>"
    },
    "Actions": {
      "type": "list",
      "member": {
        "shape": "Action"
      }
    },
    "AmazonResourceName": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "AssetId": {
      "type": "string"
    },
    "AssetPropertyAlias": {
      "type": "string"
    },
    "AssetPropertyBooleanValue": {
      "type": "string"
    },
    "AssetPropertyDoubleValue": {
      "type": "string"
    },
    "AssetPropertyEntryId": {
      "type": "string"
    },
    "AssetPropertyId": {
      "type": "string"
    },
    "AssetPropertyIntegerValue": {
      "type": "string"
    },
    "AssetPropertyOffsetInNanos": {
      "type": "string"
    },
    "AssetPropertyQuality": {
      "type": "string"
    },
    "AssetPropertyStringValue": {
      "type": "string"
    },
    "AssetPropertyTimeInSeconds": {
      "type": "string"
    },
    "AssetPropertyTimestamp": {
      "type": "structure",
      "required": [
        "timeInSeconds"
      ],
      "members": {
        "timeInSeconds": {
          "shape": "AssetPropertyTimeInSeconds",
          "documentation": "<p>The timestamp, in seconds, in the Unix epoch format. The valid range is between 1-31556889864403199. You can also specify an expression.</p>"
        },
        "offsetInNanos": {
          "shape": "AssetPropertyOffsetInNanos",
          "documentation": "<p>The nanosecond offset converted from <code>timeInSeconds</code>. The valid range is between 0-999999999. You can also specify an expression.</p>"
        }
      },
      "documentation": "<p>A structure that contains timestamp information. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_TimeInNanos.html\">TimeInNanos</a> in the <i>AWS IoT SiteWise API Reference</i>.</p> <p>For parameters that are string data type, you can specify the following options:</p> <ul> <li> <p>Use a string. For example, the <code>timeInSeconds</code> value can be <code>'1586400675'</code>.</p> </li> <li> <p>Use an expression. For example, the <code>timeInSeconds</code> value can be <code>'${$input.TemperatureInput.sensorData.timestamp/1000}'</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> in the <i>AWS IoT Events Developer Guide</i>.</p> </li> </ul>"
    },
    "AssetPropertyValue": {
      "type": "structure",
      "required": [
        "value"
      ],
      "members": {
        "value": {
          "shape": "AssetPropertyVariant",
          "documentation": "<p>The value to send to an asset property.</p>"
        },
        "timestamp": {
          "shape": "AssetPropertyTimestamp",
          "documentation": "<p>The timestamp associated with the asset property value. The default is the current event time.</p>"
        },
        "quality": {
          "shape": "AssetPropertyQuality",
          "documentation": "<p>The quality of the asset property value. The value must be <code>GOOD</code>, <code>BAD</code>, or <code>UNCERTAIN</code>. You can also specify an expression.</p>"
        }
      },
      "documentation": "<p>A structure that contains value information. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetPropertyValue.html\">AssetPropertyValue</a> in the <i>AWS IoT SiteWise API Reference</i>.</p> <p>For parameters that are string data type, you can specify the following options: </p> <ul> <li> <p>Use a string. For example, the <code>quality</code> value can be <code>'GOOD'</code>.</p> </li> <li> <p>Use an expression. For example, the <code>quality</code> value can be <code>$input.TemperatureInput.sensorData.quality</code> .</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> in the <i>AWS IoT Events Developer Guide</i>.</p> </li> </ul>"
    },
    "AssetPropertyVariant": {
      "type": "structure",
      "members": {
        "stringValue": {
          "shape": "AssetPropertyStringValue",
          "documentation": "<p>The asset property value is a string. You can also specify an expression. If you use an expression, the evaluated result should be a string.</p>"
        },
        "integerValue": {
          "shape": "AssetPropertyIntegerValue",
          "documentation": "<p>The asset property value is an integer. You can also specify an expression. If you use an expression, the evaluated result should be an integer.</p>"
        },
        "doubleValue": {
          "shape": "AssetPropertyDoubleValue",
          "documentation": "<p>The asset property value is a double. You can also specify an expression. If you use an expression, the evaluated result should be a double.</p>"
        },
        "booleanValue": {
          "shape": "AssetPropertyBooleanValue",
          "documentation": "<p>The asset property value is a Boolean value that must be <code>TRUE</code> or <code>FALSE</code>. You can also specify an expression. If you use an expression, the evaluated result should be a Boolean value.</p>"
        }
      },
      "documentation": "<p>A structure that contains an asset property value. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_Variant.html\">Variant</a> in the <i>AWS IoT SiteWise API Reference</i>.</p> <important> <p>You must specify one of the following value types, depending on the <code>dataType</code> of the specified asset property. For more information, see <a href=\"https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_AssetProperty.html\">AssetProperty</a> in the <i>AWS IoT SiteWise API Reference</i>.</p> </important> <p>For parameters that are string data type, you can specify the following options:</p> <ul> <li> <p>Use a string. For example, the <code>doubleValue</code> value can be <code>'47.9'</code>.</p> </li> <li> <p>Use an expression. For example, the <code>doubleValue</code> value can be <code>$input.TemperatureInput.sensorData.temperature</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> in the <i>AWS IoT Events Developer Guide</i>.</p> </li> </ul>"
    },
    "Attribute": {
      "type": "structure",
      "required": [
        "jsonPath"
      ],
      "members": {
        "jsonPath": {
          "shape": "AttributeJsonPath",
          "documentation": "<p>An expression that specifies an attribute-value pair in a JSON structure. Use this to specify an attribute from the JSON payload that is made available by the input. Inputs are derived from messages sent to AWS IoT Events (<code>BatchPutMessage</code>). Each such message contains a JSON payload. The attribute (and its paired value) specified here are available for use in the <code>condition</code> expressions used by detectors. </p> <p>Syntax: <code>&lt;field-name&gt;.&lt;field-name&gt;...</code> </p>"
        }
      },
      "documentation": "<p>The attributes from the JSON payload that are made available by the input. Inputs are derived from messages sent to the AWS IoT Events system using <code>BatchPutMessage</code>. Each such message contains a JSON payload. Those attributes (and their paired values) specified here are available for use in the <code>condition</code> expressions used by detectors. </p>"
    },
    "AttributeJsonPath": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^((`[\\w\\- ]+`)|([\\w\\-]+))(\\.((`[\\w- ]+`)|([\\w\\-]+)))*$"
    },
    "Attributes": {
      "type": "list",
      "member": {
        "shape": "Attribute"
      },
      "max": 200,
      "min": 1
    },
    "ClearTimerAction": {
      "type": "structure",
      "required": [
        "timerName"
      ],
      "members": {
        "timerName": {
          "shape": "TimerName",
          "documentation": "<p>The name of the timer to clear.</p>"
        }
      },
      "documentation": "<p>Information needed to clear the timer.</p>"
    },
    "Condition": {
      "type": "string",
      "max": 512
    },
    "ContentExpression": {
      "type": "string",
      "min": 1
    },
    "CreateDetectorModelRequest": {
      "type": "structure",
      "required": [
        "detectorModelName",
        "detectorModelDefinition",
        "roleArn"
      ],
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model.</p>"
        },
        "detectorModelDefinition": {
          "shape": "DetectorModelDefinition",
          "documentation": "<p>Information that defines how the detectors operate.</p>"
        },
        "detectorModelDescription": {
          "shape": "DetectorModelDescription",
          "documentation": "<p>A brief description of the detector model.</p>"
        },
        "key": {
          "shape": "AttributeJsonPath",
          "documentation": "<p>The input attribute key used to identify a device or system to create a detector (an instance of the detector model) and then to route each input received to the appropriate detector (instance). This parameter uses a JSON-path expression in the message payload of each input to specify the attribute-value pair that is used to identify the device associated with the input.</p>"
        },
        "roleArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Metadata that can be used to manage the detector model.</p>"
        },
        "evaluationMethod": {
          "shape": "EvaluationMethod",
          "documentation": "<p>Information about the order in which events are evaluated and how actions are executed. </p>"
        }
      }
    },
    "CreateDetectorModelResponse": {
      "type": "structure",
      "members": {
        "detectorModelConfiguration": {
          "shape": "DetectorModelConfiguration",
          "documentation": "<p>Information about how the detector model is configured.</p>"
        }
      }
    },
    "CreateInputRequest": {
      "type": "structure",
      "required": [
        "inputName",
        "inputDefinition"
      ],
      "members": {
        "inputName": {
          "shape": "InputName",
          "documentation": "<p>The name you want to give to the input.</p>"
        },
        "inputDescription": {
          "shape": "InputDescription",
          "documentation": "<p>A brief description of the input.</p>"
        },
        "inputDefinition": {
          "shape": "InputDefinition",
          "documentation": "<p>The definition of the input.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>Metadata that can be used to manage the input.</p>"
        }
      }
    },
    "CreateInputResponse": {
      "type": "structure",
      "members": {
        "inputConfiguration": {
          "shape": "InputConfiguration",
          "documentation": "<p>Information about the configuration of the input.</p>"
        }
      }
    },
    "DeleteDetectorModelRequest": {
      "type": "structure",
      "required": [
        "detectorModelName"
      ],
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model to be deleted.</p>",
          "location": "uri",
          "locationName": "detectorModelName"
        }
      }
    },
    "DeleteDetectorModelResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteInputRequest": {
      "type": "structure",
      "required": [
        "inputName"
      ],
      "members": {
        "inputName": {
          "shape": "InputName",
          "documentation": "<p>The name of the input to delete.</p>",
          "location": "uri",
          "locationName": "inputName"
        }
      }
    },
    "DeleteInputResponse": {
      "type": "structure",
      "members": {}
    },
    "DeliveryStreamName": {
      "type": "string"
    },
    "DescribeDetectorModelRequest": {
      "type": "structure",
      "required": [
        "detectorModelName"
      ],
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model.</p>",
          "location": "uri",
          "locationName": "detectorModelName"
        },
        "detectorModelVersion": {
          "shape": "DetectorModelVersion",
          "documentation": "<p>The version of the detector model.</p>",
          "location": "querystring",
          "locationName": "version"
        }
      }
    },
    "DescribeDetectorModelResponse": {
      "type": "structure",
      "members": {
        "detectorModel": {
          "shape": "DetectorModel",
          "documentation": "<p>Information about the detector model.</p>"
        }
      }
    },
    "DescribeInputRequest": {
      "type": "structure",
      "required": [
        "inputName"
      ],
      "members": {
        "inputName": {
          "shape": "InputName",
          "documentation": "<p>The name of the input.</p>",
          "location": "uri",
          "locationName": "inputName"
        }
      }
    },
    "DescribeInputResponse": {
      "type": "structure",
      "members": {
        "input": {
          "shape": "Input",
          "documentation": "<p>Information about the input.</p>"
        }
      }
    },
    "DescribeLoggingOptionsRequest": {
      "type": "structure",
      "members": {}
    },
    "DescribeLoggingOptionsResponse": {
      "type": "structure",
      "members": {
        "loggingOptions": {
          "shape": "LoggingOptions",
          "documentation": "<p>The current settings of the AWS IoT Events logging options.</p>"
        }
      }
    },
    "DetectorDebugOption": {
      "type": "structure",
      "required": [
        "detectorModelName"
      ],
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model.</p>"
        },
        "keyValue": {
          "shape": "KeyValue",
          "documentation": "<p>The value of the input attribute key used to create the detector (the instance of the detector model).</p>"
        }
      },
      "documentation": "<p>The detector model and the specific detectors (instances) for which the logging level is given.</p>"
    },
    "DetectorDebugOptions": {
      "type": "list",
      "member": {
        "shape": "DetectorDebugOption"
      },
      "min": 1
    },
    "DetectorModel": {
      "type": "structure",
      "members": {
        "detectorModelDefinition": {
          "shape": "DetectorModelDefinition",
          "documentation": "<p>Information that defines how a detector operates.</p>"
        },
        "detectorModelConfiguration": {
          "shape": "DetectorModelConfiguration",
          "documentation": "<p>Information about how the detector is configured.</p>"
        }
      },
      "documentation": "<p>Information about the detector model.</p>"
    },
    "DetectorModelArn": {
      "type": "string"
    },
    "DetectorModelConfiguration": {
      "type": "structure",
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model.</p>"
        },
        "detectorModelVersion": {
          "shape": "DetectorModelVersion",
          "documentation": "<p>The version of the detector model.</p>"
        },
        "detectorModelDescription": {
          "shape": "DetectorModelDescription",
          "documentation": "<p>A brief description of the detector model.</p>"
        },
        "detectorModelArn": {
          "shape": "DetectorModelArn",
          "documentation": "<p>The ARN of the detector model.</p>"
        },
        "roleArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>"
        },
        "creationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the detector model was created.</p>"
        },
        "lastUpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the detector model was last updated.</p>"
        },
        "status": {
          "shape": "DetectorModelVersionStatus",
          "documentation": "<p>The status of the detector model.</p>"
        },
        "key": {
          "shape": "AttributeJsonPath",
          "documentation": "<p>The value used to identify a detector instance. When a device or system sends input, a new detector instance with a unique key value is created. AWS IoT Events can continue to route input to its corresponding detector instance based on this identifying information. </p> <p>This parameter uses a JSON-path expression to select the attribute-value pair in the message payload that is used for identification. To route the message to the correct detector instance, the device must send a message payload that contains the same attribute-value.</p>"
        },
        "evaluationMethod": {
          "shape": "EvaluationMethod",
          "documentation": "<p>Information about the order in which events are evaluated and how actions are executed. </p>"
        }
      },
      "documentation": "<p>Information about how the detector model is configured.</p>"
    },
    "DetectorModelDefinition": {
      "type": "structure",
      "required": [
        "states",
        "initialStateName"
      ],
      "members": {
        "states": {
          "shape": "States",
          "documentation": "<p>Information about the states of the detector.</p>"
        },
        "initialStateName": {
          "shape": "StateName",
          "documentation": "<p>The state that is entered at the creation of each detector (instance).</p>"
        }
      },
      "documentation": "<p>Information that defines how a detector operates.</p>"
    },
    "DetectorModelDescription": {
      "type": "string",
      "max": 128
    },
    "DetectorModelName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_-]+$"
    },
    "DetectorModelSummaries": {
      "type": "list",
      "member": {
        "shape": "DetectorModelSummary"
      }
    },
    "DetectorModelSummary": {
      "type": "structure",
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model.</p>"
        },
        "detectorModelDescription": {
          "shape": "DetectorModelDescription",
          "documentation": "<p>A brief description of the detector model.</p>"
        },
        "creationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the detector model was created.</p>"
        }
      },
      "documentation": "<p>Information about the detector model.</p>"
    },
    "DetectorModelVersion": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "DetectorModelVersionStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "ACTIVATING",
        "INACTIVE",
        "DEPRECATED",
        "DRAFT",
        "PAUSED",
        "FAILED"
      ]
    },
    "DetectorModelVersionSummaries": {
      "type": "list",
      "member": {
        "shape": "DetectorModelVersionSummary"
      }
    },
    "DetectorModelVersionSummary": {
      "type": "structure",
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model.</p>"
        },
        "detectorModelVersion": {
          "shape": "DetectorModelVersion",
          "documentation": "<p>The ID of the detector model version.</p>"
        },
        "detectorModelArn": {
          "shape": "DetectorModelArn",
          "documentation": "<p>The ARN of the detector model version.</p>"
        },
        "roleArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the role that grants the detector model permission to perform its tasks.</p>"
        },
        "creationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the detector model version was created.</p>"
        },
        "lastUpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time the detector model version was updated.</p>"
        },
        "status": {
          "shape": "DetectorModelVersionStatus",
          "documentation": "<p>The status of the detector model version.</p>"
        },
        "evaluationMethod": {
          "shape": "EvaluationMethod",
          "documentation": "<p>Information about the order in which events are evaluated and how actions are executed. </p>"
        }
      },
      "documentation": "<p>Information about the detector model version.</p>"
    },
    "DynamoDBAction": {
      "type": "structure",
      "required": [
        "hashKeyField",
        "hashKeyValue",
        "tableName"
      ],
      "members": {
        "hashKeyType": {
          "shape": "DynamoKeyType",
          "documentation": "<p>The data type for the hash key (also called the partition key). You can specify the following values:</p> <ul> <li> <p> <code>STRING</code> - The hash key is a string.</p> </li> <li> <p> <code>NUMBER</code> - The hash key is a number.</p> </li> </ul> <p>If you don't specify <code>hashKeyType</code>, the default value is <code>STRING</code>.</p>"
        },
        "hashKeyField": {
          "shape": "DynamoKeyField",
          "documentation": "<p>The name of the hash key (also called the partition key).</p>"
        },
        "hashKeyValue": {
          "shape": "DynamoKeyValue",
          "documentation": "<p>The value of the hash key (also called the partition key).</p>"
        },
        "rangeKeyType": {
          "shape": "DynamoKeyType",
          "documentation": "<p>The data type for the range key (also called the sort key), You can specify the following values:</p> <ul> <li> <p> <code>STRING</code> - The range key is a string.</p> </li> <li> <p> <code>NUMBER</code> - The range key is number.</p> </li> </ul> <p>If you don't specify <code>rangeKeyField</code>, the default value is <code>STRING</code>.</p>"
        },
        "rangeKeyField": {
          "shape": "DynamoKeyField",
          "documentation": "<p>The name of the range key (also called the sort key).</p>"
        },
        "rangeKeyValue": {
          "shape": "DynamoKeyValue",
          "documentation": "<p>The value of the range key (also called the sort key).</p>"
        },
        "operation": {
          "shape": "DynamoOperation",
          "documentation": "<p>The type of operation to perform. You can specify the following values: </p> <ul> <li> <p> <code>INSERT</code> - Insert data as a new item into the DynamoDB table. This item uses the specified hash key as a partition key. If you specified a range key, the item uses the range key as a sort key.</p> </li> <li> <p> <code>UPDATE</code> - Update an existing item of the DynamoDB table with new data. This item's partition key must match the specified hash key. If you specified a range key, the range key must match the item's sort key.</p> </li> <li> <p> <code>DELETE</code> - Delete an existing item of the DynamoDB table. This item's partition key must match the specified hash key. If you specified a range key, the range key must match the item's sort key.</p> </li> </ul> <p>If you don't specify this parameter, AWS IoT Events triggers the <code>INSERT</code> operation.</p>"
        },
        "payloadField": {
          "shape": "DynamoKeyField",
          "documentation": "<p>The name of the DynamoDB column that receives the action payload.</p> <p>If you don't specify this parameter, the name of the DynamoDB column is <code>payload</code>.</p>"
        },
        "tableName": {
          "shape": "DynamoTableName",
          "documentation": "<p>The name of the DynamoDB table.</p>"
        },
        "payload": {
          "shape": "Payload"
        }
      },
      "documentation": "<p>Defines an action to write to the Amazon DynamoDB table that you created. The standard action payload contains all attribute-value pairs that have the information about the detector model instance and the event that triggered the action. You can also customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. One column of the DynamoDB table receives all attribute-value pairs in the payload that you specify.</p> <p>The <code>tableName</code> and <code>hashKeyField</code> values must match the table name and the partition key of the DynamoDB table. </p> <note> <p>If the DynamoDB table also has a sort key, you must specify <code>rangeKeyField</code>. The <code>rangeKeyField</code> value must match the sort key.</p> </note> <p/> <p>The <code>hashKeyValue</code> and <code>rangeKeyValue</code> use substitution templates. These templates provide data at runtime. The syntax is <code>${sql-expression}</code>.</p> <p>You can use expressions for parameters that are string data type. For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> in the <i>AWS IoT Events Developer Guide</i>.</p> <note> <p>If the defined payload type is a string, <code>DynamoDBAction</code> writes non-JSON data to the DynamoDB table as binary data. The DynamoDB console displays the data as Base64-encoded text. The <code>payloadField</code> is <code>&lt;payload-field&gt;_raw</code>.</p> </note>"
    },
    "DynamoDBv2Action": {
      "type": "structure",
      "required": [
        "tableName"
      ],
      "members": {
        "tableName": {
          "shape": "DynamoTableName",
          "documentation": "<p>The name of the DynamoDB table.</p>"
        },
        "payload": {
          "shape": "Payload"
        }
      },
      "documentation": "<p>Defines an action to write to the Amazon DynamoDB table that you created. The default action payload contains all attribute-value pairs that have the information about the detector model instance and the event that triggered the action. You can also customize the <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html\">payload</a>. A separate column of the DynamoDB table receives one attribute-value pair in the payload that you specify.</p> <important> <p>The <code>type</code> value for <code>Payload</code> must be <code>JSON</code>.</p> </important> <p>You can use expressions for parameters that are strings. For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> in the <i>AWS IoT Events Developer Guide</i>.</p>"
    },
    "DynamoKeyField": {
      "type": "string"
    },
    "DynamoKeyType": {
      "type": "string"
    },
    "DynamoKeyValue": {
      "type": "string"
    },
    "DynamoOperation": {
      "type": "string"
    },
    "DynamoTableName": {
      "type": "string"
    },
    "EvaluationMethod": {
      "type": "string",
      "enum": [
        "BATCH",
        "SERIAL"
      ]
    },
    "Event": {
      "type": "structure",
      "required": [
        "eventName"
      ],
      "members": {
        "eventName": {
          "shape": "EventName",
          "documentation": "<p>The name of the event.</p>"
        },
        "condition": {
          "shape": "Condition",
          "documentation": "<p>Optional. The Boolean expression that, when TRUE, causes the <code>actions</code> to be performed. If not present, the actions are performed (=TRUE). If the expression result is not a Boolean value, the actions are not performed (=FALSE).</p>"
        },
        "actions": {
          "shape": "Actions",
          "documentation": "<p>The actions to be performed.</p>"
        }
      },
      "documentation": "<p>Specifies the <code>actions</code> to be performed when the <code>condition</code> evaluates to TRUE.</p>"
    },
    "EventName": {
      "type": "string",
      "max": 128
    },
    "Events": {
      "type": "list",
      "member": {
        "shape": "Event"
      }
    },
    "FirehoseAction": {
      "type": "structure",
      "required": [
        "deliveryStreamName"
      ],
      "members": {
        "deliveryStreamName": {
          "shape": "DeliveryStreamName",
          "documentation": "<p>The name of the Kinesis Data Firehose delivery stream where the data is written.</p>"
        },
        "separator": {
          "shape": "FirehoseSeparator",
          "documentation": "<p>A character separator that is used to separate records written to the Kinesis Data Firehose delivery stream. Valid values are: '\\n' (newline), '\\t' (tab), '\\r\\n' (Windows newline), ',' (comma).</p>"
        },
        "payload": {
          "shape": "Payload",
          "documentation": "<p>You can configure the action payload when you send a message to an Amazon Kinesis Data Firehose delivery stream.</p>"
        }
      },
      "documentation": "<p>Sends information about the detector model instance and the event that triggered the action to an Amazon Kinesis Data Firehose delivery stream.</p>"
    },
    "FirehoseSeparator": {
      "type": "string",
      "pattern": "([\\n\\t])|(\\r\\n)|(,)"
    },
    "Input": {
      "type": "structure",
      "members": {
        "inputConfiguration": {
          "shape": "InputConfiguration",
          "documentation": "<p>Information about the configuration of an input.</p>"
        },
        "inputDefinition": {
          "shape": "InputDefinition",
          "documentation": "<p>The definition of the input.</p>"
        }
      },
      "documentation": "<p>Information about the input.</p>"
    },
    "InputArn": {
      "type": "string"
    },
    "InputConfiguration": {
      "type": "structure",
      "required": [
        "inputName",
        "inputArn",
        "creationTime",
        "lastUpdateTime",
        "status"
      ],
      "members": {
        "inputName": {
          "shape": "InputName",
          "documentation": "<p>The name of the input.</p>"
        },
        "inputDescription": {
          "shape": "InputDescription",
          "documentation": "<p>A brief description of the input.</p>"
        },
        "inputArn": {
          "shape": "InputArn",
          "documentation": "<p>The ARN of the input.</p>"
        },
        "creationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the input was created.</p>"
        },
        "lastUpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time the input was updated.</p>"
        },
        "status": {
          "shape": "InputStatus",
          "documentation": "<p>The status of the input.</p>"
        }
      },
      "documentation": "<p>Information about the configuration of an input.</p>"
    },
    "InputDefinition": {
      "type": "structure",
      "required": [
        "attributes"
      ],
      "members": {
        "attributes": {
          "shape": "Attributes",
          "documentation": "<p>The attributes from the JSON payload that are made available by the input. Inputs are derived from messages sent to the AWS IoT Events system using <code>BatchPutMessage</code>. Each such message contains a JSON payload, and those attributes (and their paired values) specified here are available for use in the <code>condition</code> expressions used by detectors that monitor this input. </p>"
        }
      },
      "documentation": "<p>The definition of the input.</p>"
    },
    "InputDescription": {
      "type": "string",
      "max": 128
    },
    "InputName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_]*$"
    },
    "InputStatus": {
      "type": "string",
      "enum": [
        "CREATING",
        "UPDATING",
        "ACTIVE",
        "DELETING"
      ]
    },
    "InputSummaries": {
      "type": "list",
      "member": {
        "shape": "InputSummary"
      }
    },
    "InputSummary": {
      "type": "structure",
      "members": {
        "inputName": {
          "shape": "InputName",
          "documentation": "<p>The name of the input.</p>"
        },
        "inputDescription": {
          "shape": "InputDescription",
          "documentation": "<p>A brief description of the input.</p>"
        },
        "inputArn": {
          "shape": "InputArn",
          "documentation": "<p>The ARN of the input.</p>"
        },
        "creationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the input was created.</p>"
        },
        "lastUpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time the input was updated.</p>"
        },
        "status": {
          "shape": "InputStatus",
          "documentation": "<p>The status of the input.</p>"
        }
      },
      "documentation": "<p>Information about the input.</p>"
    },
    "IotEventsAction": {
      "type": "structure",
      "required": [
        "inputName"
      ],
      "members": {
        "inputName": {
          "shape": "InputName",
          "documentation": "<p>The name of the AWS IoT Events input where the data is sent.</p>"
        },
        "payload": {
          "shape": "Payload",
          "documentation": "<p>You can configure the action payload when you send a message to an AWS IoT Events input.</p>"
        }
      },
      "documentation": "<p>Sends an AWS IoT Events input, passing in information about the detector model instance and the event that triggered the action.</p>"
    },
    "IotSiteWiseAction": {
      "type": "structure",
      "required": [
        "propertyValue"
      ],
      "members": {
        "entryId": {
          "shape": "AssetPropertyEntryId",
          "documentation": "<p>A unique identifier for this entry. You can use the entry ID to track which data entry causes an error in case of failure. The default is a new unique identifier. You can also specify an expression.</p>"
        },
        "assetId": {
          "shape": "AssetId",
          "documentation": "<p>The ID of the asset that has the specified property. You can specify an expression.</p>"
        },
        "propertyId": {
          "shape": "AssetPropertyId",
          "documentation": "<p>The ID of the asset property. You can specify an expression.</p>"
        },
        "propertyAlias": {
          "shape": "AssetPropertyAlias",
          "documentation": "<p>The alias of the asset property. You can also specify an expression.</p>"
        },
        "propertyValue": {
          "shape": "AssetPropertyValue",
          "documentation": "<p>The value to send to the asset property. This value contains timestamp, quality, and value (TQV) information. </p>"
        }
      },
      "documentation": "<p>Sends information about the detector model instance and the event that triggered the action to a specified asset property in AWS IoT SiteWise.</p> <important> <p>You must specify either <code>propertyAlias</code> or both <code>assetId</code> and <code>propertyId</code> to identify the target asset property in AWS IoT SiteWise.</p> </important> <p>For parameters that are string data type, you can specify the following options: </p> <ul> <li> <p>Use a string. For example, the <code>propertyAlias</code> value can be <code>'/company/windfarm/3/turbine/7/temperature'</code>.</p> </li> <li> <p>Use an expression. For example, the <code>propertyAlias</code> value can be <code>'company/windfarm/${$input.TemperatureInput.sensorData.windfarmID}/turbine/${$input.TemperatureInput.sensorData.turbineID}/temperature'</code>.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html\">Expressions</a> in the <i>AWS IoT Events Developer Guide</i>.</p> </li> </ul>"
    },
    "IotTopicPublishAction": {
      "type": "structure",
      "required": [
        "mqttTopic"
      ],
      "members": {
        "mqttTopic": {
          "shape": "MQTTTopic",
          "documentation": "<p>The MQTT topic of the message. You can use a string expression that includes variables (<code>$variable.&lt;variable-name&gt;</code>) and input values (<code>$input.&lt;input-name&gt;.&lt;path-to-datum&gt;</code>) as the topic string.</p>"
        },
        "payload": {
          "shape": "Payload",
          "documentation": "<p>You can configure the action payload when you publish a message to an AWS IoT Core topic.</p>"
        }
      },
      "documentation": "<p>Information required to publish the MQTT message through the AWS IoT message broker.</p>"
    },
    "KeyValue": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z0-9\\-_:]+$"
    },
    "LambdaAction": {
      "type": "structure",
      "required": [
        "functionArn"
      ],
      "members": {
        "functionArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the Lambda function that is executed.</p>"
        },
        "payload": {
          "shape": "Payload",
          "documentation": "<p>You can configure the action payload when you send a message to a Lambda function.</p>"
        }
      },
      "documentation": "<p>Calls a Lambda function, passing in information about the detector model instance and the event that triggered the action.</p>"
    },
    "ListDetectorModelVersionsRequest": {
      "type": "structure",
      "required": [
        "detectorModelName"
      ],
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model whose versions are returned.</p>",
          "location": "uri",
          "locationName": "detectorModelName"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return at one time.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListDetectorModelVersionsResponse": {
      "type": "structure",
      "members": {
        "detectorModelVersionSummaries": {
          "shape": "DetectorModelVersionSummaries",
          "documentation": "<p>Summary information about the detector model versions.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to retrieve the next set of results, or <code>null</code> if there are no additional results.</p>"
        }
      }
    },
    "ListDetectorModelsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return at one time.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListDetectorModelsResponse": {
      "type": "structure",
      "members": {
        "detectorModelSummaries": {
          "shape": "DetectorModelSummaries",
          "documentation": "<p>Summary information about the detector models.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to retrieve the next set of results, or <code>null</code> if there are no additional results.</p>"
        }
      }
    },
    "ListInputsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token for the next set of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return at one time.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListInputsResponse": {
      "type": "structure",
      "members": {
        "inputSummaries": {
          "shape": "InputSummaries",
          "documentation": "<p>Summary information about the inputs.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to retrieve the next set of results, or <code>null</code> if there are no additional results.</p>"
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
          "documentation": "<p>The ARN of the resource.</p>",
          "location": "querystring",
          "locationName": "resourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The list of tags assigned to the resource.</p>"
        }
      }
    },
    "LoggingEnabled": {
      "type": "boolean"
    },
    "LoggingLevel": {
      "type": "string",
      "enum": [
        "ERROR",
        "INFO",
        "DEBUG"
      ]
    },
    "LoggingOptions": {
      "type": "structure",
      "required": [
        "roleArn",
        "level",
        "enabled"
      ],
      "members": {
        "roleArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the role that grants permission to AWS IoT Events to perform logging.</p>"
        },
        "level": {
          "shape": "LoggingLevel",
          "documentation": "<p>The logging level.</p>"
        },
        "enabled": {
          "shape": "LoggingEnabled",
          "documentation": "<p>If TRUE, logging is enabled for AWS IoT Events.</p>"
        },
        "detectorDebugOptions": {
          "shape": "DetectorDebugOptions",
          "documentation": "<p>Information that identifies those detector models and their detectors (instances) for which the logging level is given.</p>"
        }
      },
      "documentation": "<p>The values of the AWS IoT Events logging options.</p>"
    },
    "MQTTTopic": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "MaxResults": {
      "type": "integer",
      "max": 250,
      "min": 1
    },
    "NextToken": {
      "type": "string"
    },
    "OnEnterLifecycle": {
      "type": "structure",
      "members": {
        "events": {
          "shape": "Events",
          "documentation": "<p>Specifies the actions that are performed when the state is entered and the <code>condition</code> is <code>TRUE</code>.</p>"
        }
      },
      "documentation": "<p>When entering this state, perform these <code>actions</code> if the <code>condition</code> is TRUE.</p>"
    },
    "OnExitLifecycle": {
      "type": "structure",
      "members": {
        "events": {
          "shape": "Events",
          "documentation": "<p>Specifies the <code>actions</code> that are performed when the state is exited and the <code>condition</code> is <code>TRUE</code>.</p>"
        }
      },
      "documentation": "<p>When exiting this state, perform these <code>actions</code> if the specified <code>condition</code> is <code>TRUE</code>.</p>"
    },
    "OnInputLifecycle": {
      "type": "structure",
      "members": {
        "events": {
          "shape": "Events",
          "documentation": "<p>Specifies the actions performed when the <code>condition</code> evaluates to TRUE.</p>"
        },
        "transitionEvents": {
          "shape": "TransitionEvents",
          "documentation": "<p>Specifies the actions performed, and the next state entered, when a <code>condition</code> evaluates to TRUE.</p>"
        }
      },
      "documentation": "<p>Specifies the actions performed when the <code>condition</code> evaluates to TRUE.</p>"
    },
    "Payload": {
      "type": "structure",
      "required": [
        "contentExpression",
        "type"
      ],
      "members": {
        "contentExpression": {
          "shape": "ContentExpression",
          "documentation": "<p>The content of the payload. You can use a string expression that includes quoted strings (<code>'&lt;string&gt;'</code>), variables (<code>$variable.&lt;variable-name&gt;</code>), input values (<code>$input.&lt;input-name&gt;.&lt;path-to-datum&gt;</code>), string concatenations, and quoted strings that contain <code>${}</code> as the content. The recommended maximum size of a content expression is 1 KB.</p>"
        },
        "type": {
          "shape": "PayloadType",
          "documentation": "<p>The value of the payload type can be either <code>STRING</code> or <code>JSON</code>.</p>"
        }
      },
      "documentation": "<p>Information needed to configure the payload.</p> <p>By default, AWS IoT Events generates a standard payload in JSON for any action. This action payload contains all attribute-value pairs that have the information about the detector model instance and the event triggered the action. To configure the action payload, you can use <code>contentExpression</code>.</p>"
    },
    "PayloadType": {
      "type": "string",
      "enum": [
        "STRING",
        "JSON"
      ]
    },
    "PutLoggingOptionsRequest": {
      "type": "structure",
      "required": [
        "loggingOptions"
      ],
      "members": {
        "loggingOptions": {
          "shape": "LoggingOptions",
          "documentation": "<p>The new values of the AWS IoT Events logging options.</p>"
        }
      }
    },
    "QueueUrl": {
      "type": "string"
    },
    "ResetTimerAction": {
      "type": "structure",
      "required": [
        "timerName"
      ],
      "members": {
        "timerName": {
          "shape": "TimerName",
          "documentation": "<p>The name of the timer to reset.</p>"
        }
      },
      "documentation": "<p>Information required to reset the timer. The timer is reset to the previously evaluated result of the duration. The duration expression isn't reevaluated when you reset the timer.</p>"
    },
    "SNSTopicPublishAction": {
      "type": "structure",
      "required": [
        "targetArn"
      ],
      "members": {
        "targetArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the Amazon SNS target where the message is sent.</p>"
        },
        "payload": {
          "shape": "Payload",
          "documentation": "<p>You can configure the action payload when you send a message as an Amazon SNS push notification.</p>"
        }
      },
      "documentation": "<p>Information required to publish the Amazon SNS message.</p>"
    },
    "Seconds": {
      "type": "integer",
      "max": 31622400,
      "min": 1
    },
    "SetTimerAction": {
      "type": "structure",
      "required": [
        "timerName"
      ],
      "members": {
        "timerName": {
          "shape": "TimerName",
          "documentation": "<p>The name of the timer.</p>"
        },
        "seconds": {
          "shape": "Seconds",
          "documentation": "<p>The number of seconds until the timer expires. The minimum value is 60 seconds to ensure accuracy. The maximum value is 31622400 seconds. </p>",
          "deprecated": true,
          "deprecatedMessage": "seconds is deprecated. You can use durationExpression for SetTimerAction. The value of seconds can be used as a string expression for durationExpression."
        },
        "durationExpression": {
          "shape": "VariableValue",
          "documentation": "<p>The duration of the timer, in seconds. You can use a string expression that includes numbers, variables (<code>$variable.&lt;variable-name&gt;</code>), and input values (<code>$input.&lt;input-name&gt;.&lt;path-to-datum&gt;</code>) as the duration. The range of the duration is 1-31622400 seconds. To ensure accuracy, the minimum duration is 60 seconds. The evaluated result of the duration is rounded down to the nearest whole number. </p>"
        }
      },
      "documentation": "<p>Information needed to set the timer.</p>"
    },
    "SetVariableAction": {
      "type": "structure",
      "required": [
        "variableName",
        "value"
      ],
      "members": {
        "variableName": {
          "shape": "VariableName",
          "documentation": "<p>The name of the variable.</p>"
        },
        "value": {
          "shape": "VariableValue",
          "documentation": "<p>The new value of the variable.</p>"
        }
      },
      "documentation": "<p>Information about the variable and its new value.</p>"
    },
    "SqsAction": {
      "type": "structure",
      "required": [
        "queueUrl"
      ],
      "members": {
        "queueUrl": {
          "shape": "QueueUrl",
          "documentation": "<p>The URL of the SQS queue where the data is written.</p>"
        },
        "useBase64": {
          "shape": "UseBase64",
          "documentation": "<p>Set this to TRUE if you want the data to be base-64 encoded before it is written to the queue. Otherwise, set this to FALSE.</p>"
        },
        "payload": {
          "shape": "Payload",
          "documentation": "<p>You can configure the action payload when you send a message to an Amazon SQS queue.</p>"
        }
      },
      "documentation": "<p>Sends information about the detector model instance and the event that triggered the action to an Amazon SQS queue.</p>"
    },
    "State": {
      "type": "structure",
      "required": [
        "stateName"
      ],
      "members": {
        "stateName": {
          "shape": "StateName",
          "documentation": "<p>The name of the state.</p>"
        },
        "onInput": {
          "shape": "OnInputLifecycle",
          "documentation": "<p>When an input is received and the <code>condition</code> is TRUE, perform the specified <code>actions</code>.</p>"
        },
        "onEnter": {
          "shape": "OnEnterLifecycle",
          "documentation": "<p>When entering this state, perform these <code>actions</code> if the <code>condition</code> is TRUE.</p>"
        },
        "onExit": {
          "shape": "OnExitLifecycle",
          "documentation": "<p>When exiting this state, perform these <code>actions</code> if the specified <code>condition</code> is <code>TRUE</code>.</p>"
        }
      },
      "documentation": "<p>Information that defines a state of a detector.</p>"
    },
    "StateName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "States": {
      "type": "list",
      "member": {
        "shape": "State"
      },
      "min": 1
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
          "documentation": "<p>The tag's key.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>The tag's value.</p>"
        }
      },
      "documentation": "<p>Metadata that can be used to manage the resource.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
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
          "documentation": "<p>The ARN of the resource.</p>",
          "location": "querystring",
          "locationName": "resourceArn"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The new or modified tags for the resource.</p>"
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
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TimerName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TransitionEvent": {
      "type": "structure",
      "required": [
        "eventName",
        "condition",
        "nextState"
      ],
      "members": {
        "eventName": {
          "shape": "EventName",
          "documentation": "<p>The name of the transition event.</p>"
        },
        "condition": {
          "shape": "Condition",
          "documentation": "<p>Required. A Boolean expression that when TRUE causes the actions to be performed and the <code>nextState</code> to be entered.</p>"
        },
        "actions": {
          "shape": "Actions",
          "documentation": "<p>The actions to be performed.</p>"
        },
        "nextState": {
          "shape": "StateName",
          "documentation": "<p>The next state to enter.</p>"
        }
      },
      "documentation": "<p>Specifies the actions performed and the next state entered when a <code>condition</code> evaluates to TRUE.</p>"
    },
    "TransitionEvents": {
      "type": "list",
      "member": {
        "shape": "TransitionEvent"
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
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the resource.</p>",
          "location": "querystring",
          "locationName": "resourceArn"
        },
        "tagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>A list of the keys of the tags to be removed from the resource.</p>",
          "location": "querystring",
          "locationName": "tagKeys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDetectorModelRequest": {
      "type": "structure",
      "required": [
        "detectorModelName",
        "detectorModelDefinition",
        "roleArn"
      ],
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model that is updated.</p>",
          "location": "uri",
          "locationName": "detectorModelName"
        },
        "detectorModelDefinition": {
          "shape": "DetectorModelDefinition",
          "documentation": "<p>Information that defines how a detector operates.</p>"
        },
        "detectorModelDescription": {
          "shape": "DetectorModelDescription",
          "documentation": "<p>A brief description of the detector model.</p>"
        },
        "roleArn": {
          "shape": "AmazonResourceName",
          "documentation": "<p>The ARN of the role that grants permission to AWS IoT Events to perform its operations.</p>"
        },
        "evaluationMethod": {
          "shape": "EvaluationMethod",
          "documentation": "<p>Information about the order in which events are evaluated and how actions are executed. </p>"
        }
      }
    },
    "UpdateDetectorModelResponse": {
      "type": "structure",
      "members": {
        "detectorModelConfiguration": {
          "shape": "DetectorModelConfiguration",
          "documentation": "<p>Information about how the detector model is configured.</p>"
        }
      }
    },
    "UpdateInputRequest": {
      "type": "structure",
      "required": [
        "inputName",
        "inputDefinition"
      ],
      "members": {
        "inputName": {
          "shape": "InputName",
          "documentation": "<p>The name of the input you want to update.</p>",
          "location": "uri",
          "locationName": "inputName"
        },
        "inputDescription": {
          "shape": "InputDescription",
          "documentation": "<p>A brief description of the input.</p>"
        },
        "inputDefinition": {
          "shape": "InputDefinition",
          "documentation": "<p>The definition of the input.</p>"
        }
      }
    },
    "UpdateInputResponse": {
      "type": "structure",
      "members": {
        "inputConfiguration": {
          "shape": "InputConfiguration",
          "documentation": "<p>Information about the configuration of the input.</p>"
        }
      }
    },
    "UseBase64": {
      "type": "boolean"
    },
    "VariableName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_]*$"
    },
    "VariableValue": {
      "type": "string",
      "max": 1024,
      "min": 1
    }
  },
  "documentation": "<p>AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. You can use AWS IoT Events API operations to create, read, update, and delete inputs and detector models, and to list their versions.</p>"
}
]===]))
