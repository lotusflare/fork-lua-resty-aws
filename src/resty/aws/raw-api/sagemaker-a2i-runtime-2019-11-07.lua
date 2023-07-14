local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-11-07",
    "endpointPrefix": "a2i-runtime.sagemaker",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon Augmented AI Runtime",
    "serviceId": "SageMaker A2I Runtime",
    "signatureVersion": "v4",
    "signingName": "sagemaker",
    "uid": "sagemaker-a2i-runtime-2019-11-07"
  },
  "operations": {
    "DeleteHumanLoop": {
      "name": "DeleteHumanLoop",
      "http": {
        "method": "DELETE",
        "requestUri": "/human-loops/{HumanLoopName}"
      },
      "input": {
        "shape": "DeleteHumanLoopRequest"
      },
      "output": {
        "shape": "DeleteHumanLoopResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Deletes the specified human loop for a flow definition.</p>"
    },
    "DescribeHumanLoop": {
      "name": "DescribeHumanLoop",
      "http": {
        "method": "GET",
        "requestUri": "/human-loops/{HumanLoopName}"
      },
      "input": {
        "shape": "DescribeHumanLoopRequest"
      },
      "output": {
        "shape": "DescribeHumanLoopResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Returns information about the specified human loop.</p>"
    },
    "ListHumanLoops": {
      "name": "ListHumanLoops",
      "http": {
        "method": "GET",
        "requestUri": "/human-loops"
      },
      "input": {
        "shape": "ListHumanLoopsRequest"
      },
      "output": {
        "shape": "ListHumanLoopsResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.</p>"
    },
    "StartHumanLoop": {
      "name": "StartHumanLoop",
      "http": {
        "method": "POST",
        "requestUri": "/human-loops"
      },
      "input": {
        "shape": "StartHumanLoopRequest"
      },
      "output": {
        "shape": "StartHumanLoopResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Starts a human loop, provided that at least one activation condition is met.</p>"
    },
    "StopHumanLoop": {
      "name": "StopHumanLoop",
      "http": {
        "method": "POST",
        "requestUri": "/human-loops/stop"
      },
      "input": {
        "shape": "StopHumanLoopRequest"
      },
      "output": {
        "shape": "StopHumanLoopResponse"
      },
      "errors": [
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Stops the specified human loop.</p>"
    }
  },
  "shapes": {
    "ContentClassifier": {
      "type": "string",
      "enum": [
        "FreeOfPersonallyIdentifiableInformation",
        "FreeOfAdultContent"
      ]
    },
    "ContentClassifiers": {
      "type": "list",
      "member": {
        "shape": "ContentClassifier"
      },
      "max": 256
    },
    "DeleteHumanLoopRequest": {
      "type": "structure",
      "required": [
        "HumanLoopName"
      ],
      "members": {
        "HumanLoopName": {
          "shape": "HumanLoopName",
          "documentation": "<p>The name of the human loop that you want to delete.</p>",
          "location": "uri",
          "locationName": "HumanLoopName"
        }
      }
    },
    "DeleteHumanLoopResponse": {
      "type": "structure",
      "members": {}
    },
    "DescribeHumanLoopRequest": {
      "type": "structure",
      "required": [
        "HumanLoopName"
      ],
      "members": {
        "HumanLoopName": {
          "shape": "HumanLoopName",
          "documentation": "<p>The name of the human loop that you want information about.</p>",
          "location": "uri",
          "locationName": "HumanLoopName"
        }
      }
    },
    "DescribeHumanLoopResponse": {
      "type": "structure",
      "required": [
        "CreationTime",
        "HumanLoopStatus",
        "HumanLoopName",
        "HumanLoopArn",
        "FlowDefinitionArn"
      ],
      "members": {
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The creation time when Amazon Augmented AI created the human loop.</p>"
        },
        "FailureReason": {
          "shape": "String",
          "documentation": "<p>The reason why a human loop failed. The failure reason is returned when the status of the human loop is <code>Failed</code>.</p>"
        },
        "FailureCode": {
          "shape": "String",
          "documentation": "<p>A failure code that identifies the type of failure.</p>"
        },
        "HumanLoopStatus": {
          "shape": "HumanLoopStatus",
          "documentation": "<p>The status of the human loop. </p>"
        },
        "HumanLoopName": {
          "shape": "HumanLoopName",
          "documentation": "<p>The name of the human loop. The name must be lowercase, unique within the Region in your account, and can have up to 63 characters. Valid characters: a-z, 0-9, and - (hyphen).</p>"
        },
        "HumanLoopArn": {
          "shape": "HumanLoopArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the human loop.</p>"
        },
        "FlowDefinitionArn": {
          "shape": "FlowDefinitionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the flow definition.</p>"
        },
        "HumanLoopOutput": {
          "shape": "HumanLoopOutput",
          "documentation": "<p>An object that contains information about the output of the human loop.</p>"
        }
      }
    },
    "FailureReason": {
      "type": "string",
      "max": 1024
    },
    "FlowDefinitionArn": {
      "type": "string",
      "max": 1024,
      "pattern": "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:flow-definition/.*"
    },
    "HumanLoopArn": {
      "type": "string",
      "max": 1024,
      "pattern": "arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:human-loop/.*"
    },
    "HumanLoopDataAttributes": {
      "type": "structure",
      "required": [
        "ContentClassifiers"
      ],
      "members": {
        "ContentClassifiers": {
          "shape": "ContentClassifiers",
          "documentation": "<p>Declares that your content is free of personally identifiable information or adult content.</p> <p>Amazon SageMaker can restrict the Amazon Mechanical Turk workers who can view your task based on this information.</p>"
        }
      },
      "documentation": "<p>Attributes of the data specified by the customer. Use these to describe the data to be labeled.</p>"
    },
    "HumanLoopInput": {
      "type": "structure",
      "required": [
        "InputContent"
      ],
      "members": {
        "InputContent": {
          "shape": "InputContent",
          "documentation": "<p>Serialized input from the human loop. The input must be a string representation of a file in JSON format.</p>"
        }
      },
      "documentation": "<p>An object containing the human loop input in JSON format.</p>"
    },
    "HumanLoopName": {
      "type": "string",
      "max": 63,
      "min": 1,
      "pattern": "^[a-z0-9](-*[a-z0-9])*$"
    },
    "HumanLoopOutput": {
      "type": "structure",
      "required": [
        "OutputS3Uri"
      ],
      "members": {
        "OutputS3Uri": {
          "shape": "String",
          "documentation": "<p>The location of the Amazon S3 object where Amazon Augmented AI stores your human loop output.</p>"
        }
      },
      "documentation": "<p>Information about where the human output will be stored.</p>"
    },
    "HumanLoopStatus": {
      "type": "string",
      "enum": [
        "InProgress",
        "Failed",
        "Completed",
        "Stopped",
        "Stopping"
      ]
    },
    "HumanLoopSummaries": {
      "type": "list",
      "member": {
        "shape": "HumanLoopSummary"
      }
    },
    "HumanLoopSummary": {
      "type": "structure",
      "members": {
        "HumanLoopName": {
          "shape": "HumanLoopName",
          "documentation": "<p>The name of the human loop.</p>"
        },
        "HumanLoopStatus": {
          "shape": "HumanLoopStatus",
          "documentation": "<p>The status of the human loop. </p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>When Amazon Augmented AI created the human loop.</p>"
        },
        "FailureReason": {
          "shape": "FailureReason",
          "documentation": "<p>The reason why the human loop failed. A failure reason is returned when the status of the human loop is <code>Failed</code>.</p>"
        },
        "FlowDefinitionArn": {
          "shape": "FlowDefinitionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the flow definition used to configure the human loop.</p>"
        }
      },
      "documentation": "<p>Summary information about the human loop.</p>"
    },
    "InputContent": {
      "type": "string",
      "max": 3145728
    },
    "ListHumanLoopsRequest": {
      "type": "structure",
      "required": [
        "FlowDefinitionArn"
      ],
      "members": {
        "CreationTimeAfter": {
          "shape": "Timestamp",
          "documentation": "<p>(Optional) The timestamp of the date when you want the human loops to begin in ISO 8601 format. For example, <code>2020-02-24</code>.</p>",
          "location": "querystring",
          "locationName": "CreationTimeAfter"
        },
        "CreationTimeBefore": {
          "shape": "Timestamp",
          "documentation": "<p>(Optional) The timestamp of the date before which you want the human loops to begin in ISO 8601 format. For example, <code>2020-02-24</code>.</p>",
          "location": "querystring",
          "locationName": "CreationTimeBefore"
        },
        "FlowDefinitionArn": {
          "shape": "FlowDefinitionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a flow definition.</p>",
          "location": "querystring",
          "locationName": "FlowDefinitionArn"
        },
        "SortOrder": {
          "shape": "SortOrder",
          "documentation": "<p>Optional. The order for displaying results. Valid values: <code>Ascending</code> and <code>Descending</code>.</p>",
          "location": "querystring",
          "locationName": "SortOrder"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to display the next page of results.</p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of items to return. If the total number of available items is more than the value specified in <code>MaxResults</code>, then a <code>NextToken</code> is returned in the output. You can use this token to display the next page of results. </p>",
          "box": true,
          "location": "querystring",
          "locationName": "MaxResults"
        }
      }
    },
    "ListHumanLoopsResponse": {
      "type": "structure",
      "required": [
        "HumanLoopSummaries"
      ],
      "members": {
        "HumanLoopSummaries": {
          "shape": "HumanLoopSummaries",
          "documentation": "<p>An array of objects that contain information about the human loops.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to display the next page of results.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 8192,
      "pattern": ".*"
    },
    "SortOrder": {
      "type": "string",
      "enum": [
        "Ascending",
        "Descending"
      ]
    },
    "StartHumanLoopRequest": {
      "type": "structure",
      "required": [
        "HumanLoopName",
        "FlowDefinitionArn",
        "HumanLoopInput"
      ],
      "members": {
        "HumanLoopName": {
          "shape": "HumanLoopName",
          "documentation": "<p>The name of the human loop.</p>"
        },
        "FlowDefinitionArn": {
          "shape": "FlowDefinitionArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the flow definition associated with this human loop.</p>"
        },
        "HumanLoopInput": {
          "shape": "HumanLoopInput",
          "documentation": "<p>An object that contains information about the human loop.</p>"
        },
        "DataAttributes": {
          "shape": "HumanLoopDataAttributes",
          "documentation": "<p>Attributes of the specified data. Use <code>DataAttributes</code> to specify if your data is free of personally identifiable information and/or free of adult content.</p>"
        }
      }
    },
    "StartHumanLoopResponse": {
      "type": "structure",
      "members": {
        "HumanLoopArn": {
          "shape": "HumanLoopArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the human loop.</p>"
        }
      }
    },
    "StopHumanLoopRequest": {
      "type": "structure",
      "required": [
        "HumanLoopName"
      ],
      "members": {
        "HumanLoopName": {
          "shape": "HumanLoopName",
          "documentation": "<p>The name of the human loop that you want to stop.</p>"
        }
      }
    },
    "StopHumanLoopResponse": {
      "type": "structure",
      "members": {}
    },
    "String": {
      "type": "string"
    },
    "Timestamp": {
      "type": "timestamp"
    }
  },
  "documentation": "<important> <p>Amazon Augmented AI is in preview release and is subject to change. We do not recommend using this product in production environments.</p> </important> <p>Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any machine learning application. When an AI application can't evaluate data with a high degree of confidence, human reviewers can take over. This human review is called a human review workflow. To create and start a human review workflow, you need three resources: a <i>worker task template</i>, a <i>flow definition</i>, and a <i>human loop</i>.</p> <p>For information about these resources and prerequisites for using Amazon A2I, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html\">Get Started with Amazon Augmented AI</a> in the Amazon SageMaker Developer Guide.</p> <p>This API reference includes information about API actions and data types that you can use to interact with Amazon A2I programmatically. Use this guide to:</p> <ul> <li> <p>Start a human loop with the <code>StartHumanLoop</code> operation when using Amazon A2I with a <i>custom task type</i>. To learn more about the difference between custom and built-in task types, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html\">Use Task Types </a>. To learn how to start a human loop using this API, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop\">Create and Start a Human Loop for a Custom Task Type </a> in the Amazon SageMaker Developer Guide.</p> </li> <li> <p>Manage your human loops. You can list all human loops that you have created, describe individual human loops, and stop and delete human loops. To learn more, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html\">Monitor and Manage Your Human Loop </a> in the Amazon SageMaker Developer Guide.</p> </li> </ul> <p>Amazon A2I integrates APIs from various AWS services to create and start human review workflows for those services. To learn how Amazon A2I uses these APIs, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html\">Use APIs in Amazon A2I</a> in the Amazon SageMaker Developer Guide.</p>"
}
]===]))
