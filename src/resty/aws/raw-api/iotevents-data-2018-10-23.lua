local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-10-23",
    "endpointPrefix": "data.iotevents",
    "protocol": "rest-json",
    "serviceFullName": "AWS IoT Events Data",
    "serviceId": "IoT Events Data",
    "signatureVersion": "v4",
    "signingName": "ioteventsdata",
    "uid": "iotevents-data-2018-10-23"
  },
  "operations": {
    "BatchPutMessage": {
      "name": "BatchPutMessage",
      "http": {
        "method": "POST",
        "requestUri": "/inputs/messages",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchPutMessageRequest"
      },
      "output": {
        "shape": "BatchPutMessageResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Sends a set of messages to the AWS IoT Events system. Each message payload is transformed into the input you specify (<code>\"inputName\"</code>) and ingested into any detectors that monitor that input. If multiple messages are sent, the order in which the messages are processed isn't guaranteed. To guarantee ordering, you must send messages one at a time and wait for a successful response.</p>"
    },
    "BatchUpdateDetector": {
      "name": "BatchUpdateDetector",
      "http": {
        "method": "POST",
        "requestUri": "/detectors",
        "responseCode": 200
      },
      "input": {
        "shape": "BatchUpdateDetectorRequest"
      },
      "output": {
        "shape": "BatchUpdateDetectorResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Updates the state, variable values, and timer settings of one or more detectors (instances) of a specified detector model.</p>"
    },
    "DescribeDetector": {
      "name": "DescribeDetector",
      "http": {
        "method": "GET",
        "requestUri": "/detectors/{detectorModelName}/keyValues/"
      },
      "input": {
        "shape": "DescribeDetectorRequest"
      },
      "output": {
        "shape": "DescribeDetectorResponse"
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
      "documentation": "<p>Returns information about the specified detector (instance).</p>"
    },
    "ListDetectors": {
      "name": "ListDetectors",
      "http": {
        "method": "GET",
        "requestUri": "/detectors/{detectorModelName}"
      },
      "input": {
        "shape": "ListDetectorsRequest"
      },
      "output": {
        "shape": "ListDetectorsResponse"
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
      "documentation": "<p>Lists detectors (the instances of a detector model).</p>"
    }
  },
  "shapes": {
    "BatchPutMessageErrorEntries": {
      "type": "list",
      "member": {
        "shape": "BatchPutMessageErrorEntry"
      }
    },
    "BatchPutMessageErrorEntry": {
      "type": "structure",
      "members": {
        "messageId": {
          "shape": "MessageId",
          "documentation": "<p>The ID of the message that caused the error. (See the value corresponding to the <code>\"messageId\"</code> key in the <code>\"message\"</code> object.)</p>"
        },
        "errorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The code associated with the error.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>More information about the error.</p>"
        }
      },
      "documentation": "<p>Contains information about the errors encountered.</p>"
    },
    "BatchPutMessageRequest": {
      "type": "structure",
      "required": [
        "messages"
      ],
      "members": {
        "messages": {
          "shape": "Messages",
          "documentation": "<p>The list of messages to send. Each message has the following format: <code>'{ \"messageId\": \"string\", \"inputName\": \"string\", \"payload\": \"string\"}'</code> </p>"
        }
      }
    },
    "BatchPutMessageResponse": {
      "type": "structure",
      "members": {
        "BatchPutMessageErrorEntries": {
          "shape": "BatchPutMessageErrorEntries",
          "documentation": "<p>A list of any errors encountered when sending the messages.</p>"
        }
      }
    },
    "BatchUpdateDetectorErrorEntries": {
      "type": "list",
      "member": {
        "shape": "BatchUpdateDetectorErrorEntry"
      }
    },
    "BatchUpdateDetectorErrorEntry": {
      "type": "structure",
      "members": {
        "messageId": {
          "shape": "MessageId",
          "documentation": "<p>The <code>\"messageId\"</code> of the update request that caused the error. (The value of the <code>\"messageId\"</code> in the update request <code>\"Detector\"</code> object.)</p>"
        },
        "errorCode": {
          "shape": "ErrorCode",
          "documentation": "<p>The code of the error.</p>"
        },
        "errorMessage": {
          "shape": "ErrorMessage",
          "documentation": "<p>A message describing the error.</p>"
        }
      },
      "documentation": "<p>Information about the error that occured when attempting to update a detector.</p>"
    },
    "BatchUpdateDetectorRequest": {
      "type": "structure",
      "required": [
        "detectors"
      ],
      "members": {
        "detectors": {
          "shape": "UpdateDetectorRequests",
          "documentation": "<p>The list of detectors (instances) to update, along with the values to update.</p>"
        }
      }
    },
    "BatchUpdateDetectorResponse": {
      "type": "structure",
      "members": {
        "batchUpdateDetectorErrorEntries": {
          "shape": "BatchUpdateDetectorErrorEntries",
          "documentation": "<p>A list of those detector updates that resulted in errors. (If an error is listed here, the specific update did not occur.)</p>"
        }
      }
    },
    "DescribeDetectorRequest": {
      "type": "structure",
      "required": [
        "detectorModelName"
      ],
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model whose detectors (instances) you want information about.</p>",
          "location": "uri",
          "locationName": "detectorModelName"
        },
        "keyValue": {
          "shape": "KeyValue",
          "documentation": "<p>A filter used to limit results to detectors (instances) created because of the given key ID.</p>",
          "location": "querystring",
          "locationName": "keyValue"
        }
      }
    },
    "DescribeDetectorResponse": {
      "type": "structure",
      "members": {
        "detector": {
          "shape": "Detector",
          "documentation": "<p>Information about the detector (instance).</p>"
        }
      }
    },
    "Detector": {
      "type": "structure",
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model that created this detector (instance).</p>"
        },
        "keyValue": {
          "shape": "KeyValue",
          "documentation": "<p>The value of the key (identifying the device or system) that caused the creation of this detector (instance).</p>"
        },
        "detectorModelVersion": {
          "shape": "DetectorModelVersion",
          "documentation": "<p>The version of the detector model that created this detector (instance).</p>"
        },
        "state": {
          "shape": "DetectorState",
          "documentation": "<p>The current state of the detector (instance).</p>"
        },
        "creationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the detector (instance) was created.</p>"
        },
        "lastUpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the detector (instance) was last updated.</p>"
        }
      },
      "documentation": "<p>Information about the detector (instance).</p>"
    },
    "DetectorModelName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_-]+$"
    },
    "DetectorModelVersion": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "DetectorState": {
      "type": "structure",
      "required": [
        "stateName",
        "variables",
        "timers"
      ],
      "members": {
        "stateName": {
          "shape": "StateName",
          "documentation": "<p>The name of the state.</p>"
        },
        "variables": {
          "shape": "Variables",
          "documentation": "<p>The current values of the detector's variables.</p>"
        },
        "timers": {
          "shape": "Timers",
          "documentation": "<p>The current state of the detector's timers.</p>"
        }
      },
      "documentation": "<p>Information about the current state of the detector instance.</p>"
    },
    "DetectorStateDefinition": {
      "type": "structure",
      "required": [
        "stateName",
        "variables",
        "timers"
      ],
      "members": {
        "stateName": {
          "shape": "StateName",
          "documentation": "<p>The name of the new state of the detector (instance).</p>"
        },
        "variables": {
          "shape": "VariableDefinitions",
          "documentation": "<p>The new values of the detector's variables. Any variable whose value isn't specified is cleared.</p>"
        },
        "timers": {
          "shape": "TimerDefinitions",
          "documentation": "<p>The new values of the detector's timers. Any timer whose value isn't specified is cleared, and its timeout event won't occur.</p>"
        }
      },
      "documentation": "<p>The new state, variable values, and timer settings of the detector (instance).</p>"
    },
    "DetectorStateSummary": {
      "type": "structure",
      "members": {
        "stateName": {
          "shape": "StateName",
          "documentation": "<p>The name of the state.</p>"
        }
      },
      "documentation": "<p>Information about the detector state.</p>"
    },
    "DetectorSummaries": {
      "type": "list",
      "member": {
        "shape": "DetectorSummary"
      }
    },
    "DetectorSummary": {
      "type": "structure",
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model that created this detector (instance).</p>"
        },
        "keyValue": {
          "shape": "KeyValue",
          "documentation": "<p>The value of the key (identifying the device or system) that caused the creation of this detector (instance).</p>"
        },
        "detectorModelVersion": {
          "shape": "DetectorModelVersion",
          "documentation": "<p>The version of the detector model that created this detector (instance).</p>"
        },
        "state": {
          "shape": "DetectorStateSummary",
          "documentation": "<p>The current state of the detector (instance).</p>"
        },
        "creationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the detector (instance) was created.</p>"
        },
        "lastUpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time the detector (instance) was last updated.</p>"
        }
      },
      "documentation": "<p>Information about the detector (instance).</p>"
    },
    "ErrorCode": {
      "type": "string",
      "enum": [
        "ResourceNotFoundException",
        "InvalidRequestException",
        "InternalFailureException",
        "ServiceUnavailableException",
        "ThrottlingException"
      ]
    },
    "ErrorMessage": {
      "type": "string"
    },
    "InputName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z][a-zA-Z0-9_]*$"
    },
    "KeyValue": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z0-9\\-_:]+$"
    },
    "ListDetectorsRequest": {
      "type": "structure",
      "required": [
        "detectorModelName"
      ],
      "members": {
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model whose detectors (instances) are listed.</p>",
          "location": "uri",
          "locationName": "detectorModelName"
        },
        "stateName": {
          "shape": "StateName",
          "documentation": "<p>A filter that limits results to those detectors (instances) in the given state.</p>",
          "location": "querystring",
          "locationName": "stateName"
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
    "ListDetectorsResponse": {
      "type": "structure",
      "members": {
        "detectorSummaries": {
          "shape": "DetectorSummaries",
          "documentation": "<p>A list of summary information about the detectors (instances).</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>A token to retrieve the next set of results, or <code>null</code> if there are no additional results.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 250,
      "min": 1
    },
    "Message": {
      "type": "structure",
      "required": [
        "messageId",
        "inputName",
        "payload"
      ],
      "members": {
        "messageId": {
          "shape": "MessageId",
          "documentation": "<p>The ID to assign to the message. Within each batch sent, each <code>\"messageId\"</code> must be unique.</p>"
        },
        "inputName": {
          "shape": "InputName",
          "documentation": "<p>The name of the input into which the message payload is transformed.</p>"
        },
        "payload": {
          "shape": "Payload",
          "documentation": "<p>The payload of the message. This can be a JSON string or a Base-64-encoded string representing binary data (in which case you must decode it).</p>"
        }
      },
      "documentation": "<p>Information about a message.</p>"
    },
    "MessageId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_-]+$"
    },
    "Messages": {
      "type": "list",
      "member": {
        "shape": "Message"
      },
      "min": 1
    },
    "NextToken": {
      "type": "string"
    },
    "Payload": {
      "type": "blob"
    },
    "Seconds": {
      "type": "integer"
    },
    "StateName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "Timer": {
      "type": "structure",
      "required": [
        "name",
        "timestamp"
      ],
      "members": {
        "name": {
          "shape": "TimerName",
          "documentation": "<p>The name of the timer.</p>"
        },
        "timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The number of seconds which have elapsed on the timer.</p>"
        }
      },
      "documentation": "<p>The current state of a timer.</p>"
    },
    "TimerDefinition": {
      "type": "structure",
      "required": [
        "name",
        "seconds"
      ],
      "members": {
        "name": {
          "shape": "TimerName",
          "documentation": "<p>The name of the timer.</p>"
        },
        "seconds": {
          "shape": "Seconds",
          "documentation": "<p>The new setting of the timer (the number of seconds before the timer elapses).</p>"
        }
      },
      "documentation": "<p>The new setting of a timer.</p>"
    },
    "TimerDefinitions": {
      "type": "list",
      "member": {
        "shape": "TimerDefinition"
      }
    },
    "TimerName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "Timers": {
      "type": "list",
      "member": {
        "shape": "Timer"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UpdateDetectorRequest": {
      "type": "structure",
      "required": [
        "messageId",
        "detectorModelName",
        "state"
      ],
      "members": {
        "messageId": {
          "shape": "MessageId",
          "documentation": "<p>The ID to assign to the detector update <code>\"message\"</code>. Each <code>\"messageId\"</code> must be unique within each batch sent.</p>"
        },
        "detectorModelName": {
          "shape": "DetectorModelName",
          "documentation": "<p>The name of the detector model that created the detectors (instances).</p>"
        },
        "keyValue": {
          "shape": "KeyValue",
          "documentation": "<p>The value of the input key attribute (identifying the device or system) that caused the creation of this detector (instance).</p>"
        },
        "state": {
          "shape": "DetectorStateDefinition",
          "documentation": "<p>The new state, variable values, and timer settings of the detector (instance).</p>"
        }
      },
      "documentation": "<p>Information used to update the detector (instance).</p>"
    },
    "UpdateDetectorRequests": {
      "type": "list",
      "member": {
        "shape": "UpdateDetectorRequest"
      },
      "min": 1
    },
    "Variable": {
      "type": "structure",
      "required": [
        "name",
        "value"
      ],
      "members": {
        "name": {
          "shape": "VariableName",
          "documentation": "<p>The name of the variable.</p>"
        },
        "value": {
          "shape": "VariableValue",
          "documentation": "<p>The current value of the variable.</p>"
        }
      },
      "documentation": "<p>The current state of the variable.</p>"
    },
    "VariableDefinition": {
      "type": "structure",
      "required": [
        "name",
        "value"
      ],
      "members": {
        "name": {
          "shape": "VariableName",
          "documentation": "<p>The name of the variable.</p>"
        },
        "value": {
          "shape": "VariableValue",
          "documentation": "<p>The new value of the variable.</p>"
        }
      },
      "documentation": "<p>The new value of the variable.</p>"
    },
    "VariableDefinitions": {
      "type": "list",
      "member": {
        "shape": "VariableDefinition"
      }
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
    },
    "Variables": {
      "type": "list",
      "member": {
        "shape": "Variable"
      }
    }
  },
  "documentation": "<p>AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. AWS IoT Events Data API commands enable you to send inputs to detectors, list detectors, and view or update a detector's status.</p>"
}
]===]))
