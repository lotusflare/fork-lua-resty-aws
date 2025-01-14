local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-09-01",
    "endpointPrefix": "braket",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Braket",
    "serviceId": "Braket",
    "signatureVersion": "v4",
    "signingName": "braket",
    "uid": "braket-2019-09-01"
  },
  "operations": {
    "CancelQuantumTask": {
      "name": "CancelQuantumTask",
      "http": {
        "method": "PUT",
        "requestUri": "/quantum-task/{quantumTaskArn}/cancel",
        "responseCode": 200
      },
      "input": {
        "shape": "CancelQuantumTaskRequest"
      },
      "output": {
        "shape": "CancelQuantumTaskResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Cancels the specified task.</p>",
      "idempotent": true
    },
    "CreateQuantumTask": {
      "name": "CreateQuantumTask",
      "http": {
        "method": "POST",
        "requestUri": "/quantum-task",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateQuantumTaskRequest"
      },
      "output": {
        "shape": "CreateQuantumTaskResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "DeviceOfflineException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "ServiceQuotaExceededException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Creates a quantum task.</p>"
    },
    "GetDevice": {
      "name": "GetDevice",
      "http": {
        "method": "GET",
        "requestUri": "/device/{deviceArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDeviceRequest"
      },
      "output": {
        "shape": "GetDeviceResponse"
      },
      "errors": [
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
          "shape": "InternalServiceException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Retrieves the devices available in Amazon Braket.</p>"
    },
    "GetQuantumTask": {
      "name": "GetQuantumTask",
      "http": {
        "method": "GET",
        "requestUri": "/quantum-task/{quantumTaskArn}",
        "responseCode": 200
      },
      "input": {
        "shape": "GetQuantumTaskRequest"
      },
      "output": {
        "shape": "GetQuantumTaskResponse"
      },
      "errors": [
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
          "shape": "InternalServiceException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Retrieves the specified quantum task.</p>"
    },
    "SearchDevices": {
      "name": "SearchDevices",
      "http": {
        "method": "POST",
        "requestUri": "/devices",
        "responseCode": 200
      },
      "input": {
        "shape": "SearchDevicesRequest"
      },
      "output": {
        "shape": "SearchDevicesResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Searches for devices using the specified filters.</p>"
    },
    "SearchQuantumTasks": {
      "name": "SearchQuantumTasks",
      "http": {
        "method": "POST",
        "requestUri": "/quantum-tasks",
        "responseCode": 200
      },
      "input": {
        "shape": "SearchQuantumTasksRequest"
      },
      "output": {
        "shape": "SearchQuantumTasksResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Searches for tasks that match the specified filter values.</p>"
    }
  },
  "shapes": {
    "CancelQuantumTaskRequest": {
      "type": "structure",
      "required": [
        "clientToken",
        "quantumTaskArn"
      ],
      "members": {
        "clientToken": {
          "shape": "String64",
          "documentation": "<p>The client token associated with the request.</p>",
          "idempotencyToken": true
        },
        "quantumTaskArn": {
          "shape": "QuantumTaskArn",
          "documentation": "<p>The ARN of the task to cancel.</p>",
          "location": "uri",
          "locationName": "quantumTaskArn"
        }
      }
    },
    "CancelQuantumTaskResponse": {
      "type": "structure",
      "required": [
        "cancellationStatus",
        "quantumTaskArn"
      ],
      "members": {
        "cancellationStatus": {
          "shape": "CancellationStatus",
          "documentation": "<p>The status of the cancellation request.</p>"
        },
        "quantumTaskArn": {
          "shape": "QuantumTaskArn",
          "documentation": "<p>The ARN of the task.</p>"
        }
      }
    },
    "CancellationStatus": {
      "type": "string",
      "enum": [
        "CANCELLED",
        "CANCELLING"
      ]
    },
    "CreateQuantumTaskRequest": {
      "type": "structure",
      "required": [
        "action",
        "clientToken",
        "deviceArn",
        "outputS3Bucket",
        "outputS3KeyPrefix",
        "shots"
      ],
      "members": {
        "action": {
          "shape": "JsonValue",
          "documentation": "<p>The action associated with the task.</p>",
          "jsonvalue": true
        },
        "clientToken": {
          "shape": "String64",
          "documentation": "<p>The client token associated with the request.</p>",
          "idempotencyToken": true
        },
        "deviceArn": {
          "shape": "DeviceArn",
          "documentation": "<p>The ARN of the device to run the task on.</p>"
        },
        "deviceParameters": {
          "shape": "CreateQuantumTaskRequestdeviceParametersJsonValue",
          "documentation": "<p>The parameters for the device to run the task on.</p>",
          "jsonvalue": true
        },
        "outputS3Bucket": {
          "shape": "CreateQuantumTaskRequestoutputS3BucketString",
          "documentation": "<p>The S3 bucket to store task result files in.</p>"
        },
        "outputS3KeyPrefix": {
          "shape": "CreateQuantumTaskRequestoutputS3KeyPrefixString",
          "documentation": "<p>The key prefix for the location in the S3 bucket to store task results in.</p>"
        },
        "shots": {
          "shape": "CreateQuantumTaskRequestshotsLong",
          "documentation": "<p>The number of shots to use for the task.</p>"
        }
      }
    },
    "CreateQuantumTaskRequestdeviceParametersJsonValue": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "CreateQuantumTaskRequestoutputS3BucketString": {
      "type": "string",
      "max": 63,
      "min": 3
    },
    "CreateQuantumTaskRequestoutputS3KeyPrefixString": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "CreateQuantumTaskRequestshotsLong": {
      "type": "long",
      "box": true,
      "min": 0
    },
    "CreateQuantumTaskResponse": {
      "type": "structure",
      "required": [
        "quantumTaskArn"
      ],
      "members": {
        "quantumTaskArn": {
          "shape": "QuantumTaskArn",
          "documentation": "<p>The ARN of the task created by the request.</p>"
        }
      }
    },
    "DeviceArn": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "DeviceStatus": {
      "type": "string",
      "enum": [
        "OFFLINE",
        "ONLINE"
      ]
    },
    "DeviceSummary": {
      "type": "structure",
      "required": [
        "deviceArn",
        "deviceName",
        "deviceStatus",
        "deviceType",
        "providerName"
      ],
      "members": {
        "deviceArn": {
          "shape": "DeviceArn",
          "documentation": "<p>The ARN of the device.</p>"
        },
        "deviceName": {
          "shape": "String",
          "documentation": "<p>The name of the device.</p>"
        },
        "deviceStatus": {
          "shape": "DeviceStatus",
          "documentation": "<p>The status of the device.</p>"
        },
        "deviceType": {
          "shape": "DeviceType",
          "documentation": "<p>The type of the device.</p>"
        },
        "providerName": {
          "shape": "String",
          "documentation": "<p>The provider of the device.</p>"
        }
      },
      "documentation": "<p>Includes information about the device.</p>"
    },
    "DeviceSummaryList": {
      "type": "list",
      "member": {
        "shape": "DeviceSummary"
      }
    },
    "DeviceType": {
      "type": "string",
      "enum": [
        "QPU",
        "SIMULATOR"
      ]
    },
    "GetDeviceRequest": {
      "type": "structure",
      "required": [
        "deviceArn"
      ],
      "members": {
        "deviceArn": {
          "shape": "DeviceArn",
          "documentation": "<p>The ARN of the device to retrieve.</p>",
          "location": "uri",
          "locationName": "deviceArn"
        }
      }
    },
    "GetDeviceResponse": {
      "type": "structure",
      "required": [
        "deviceArn",
        "deviceCapabilities",
        "deviceName",
        "deviceStatus",
        "deviceType",
        "providerName"
      ],
      "members": {
        "deviceArn": {
          "shape": "DeviceArn",
          "documentation": "<p>The ARN of the device.</p>"
        },
        "deviceCapabilities": {
          "shape": "JsonValue",
          "documentation": "<p>Details about the capabilities of the device.</p>",
          "jsonvalue": true
        },
        "deviceName": {
          "shape": "String",
          "documentation": "<p>The name of the device.</p>"
        },
        "deviceStatus": {
          "shape": "DeviceStatus",
          "documentation": "<p>The status of the device.</p>"
        },
        "deviceType": {
          "shape": "DeviceType",
          "documentation": "<p>The type of the device.</p>"
        },
        "providerName": {
          "shape": "String",
          "documentation": "<p>The name of the partner company for the device.</p>"
        }
      }
    },
    "GetQuantumTaskRequest": {
      "type": "structure",
      "required": [
        "quantumTaskArn"
      ],
      "members": {
        "quantumTaskArn": {
          "shape": "QuantumTaskArn",
          "documentation": "<p>the ARN of the task to retrieve.</p>",
          "location": "uri",
          "locationName": "quantumTaskArn"
        }
      }
    },
    "GetQuantumTaskResponse": {
      "type": "structure",
      "required": [
        "createdAt",
        "deviceArn",
        "deviceParameters",
        "outputS3Bucket",
        "outputS3Directory",
        "quantumTaskArn",
        "shots",
        "status"
      ],
      "members": {
        "createdAt": {
          "shape": "SyntheticTimestamp_date_time",
          "documentation": "<p>The time at which the task was created.</p>"
        },
        "deviceArn": {
          "shape": "DeviceArn",
          "documentation": "<p>The ARN of the device the task was run on.</p>"
        },
        "deviceParameters": {
          "shape": "JsonValue",
          "documentation": "<p>The parameters for the device on which the task ran.</p>",
          "jsonvalue": true
        },
        "endedAt": {
          "shape": "SyntheticTimestamp_date_time",
          "documentation": "<p>The time at which the task ended.</p>"
        },
        "failureReason": {
          "shape": "String",
          "documentation": "<p>The reason that a task failed.</p>"
        },
        "outputS3Bucket": {
          "shape": "String",
          "documentation": "<p>The S3 bucket where task results are stored.</p>"
        },
        "outputS3Directory": {
          "shape": "String",
          "documentation": "<p>The folder in the S3 bucket where task results are stored.</p>"
        },
        "quantumTaskArn": {
          "shape": "QuantumTaskArn",
          "documentation": "<p>The ARN of the task.</p>"
        },
        "shots": {
          "shape": "Long",
          "documentation": "<p>The number of shots used in the task.</p>"
        },
        "status": {
          "shape": "QuantumTaskStatus",
          "documentation": "<p>The status of the task.</p>"
        }
      }
    },
    "JsonValue": {
      "type": "string"
    },
    "Long": {
      "type": "long",
      "box": true
    },
    "QuantumTaskArn": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "QuantumTaskStatus": {
      "type": "string",
      "enum": [
        "CANCELLED",
        "CANCELLING",
        "COMPLETED",
        "CREATED",
        "FAILED",
        "QUEUED",
        "RUNNING"
      ]
    },
    "QuantumTaskSummary": {
      "type": "structure",
      "required": [
        "createdAt",
        "deviceArn",
        "outputS3Bucket",
        "outputS3Directory",
        "quantumTaskArn",
        "shots",
        "status"
      ],
      "members": {
        "createdAt": {
          "shape": "SyntheticTimestamp_date_time",
          "documentation": "<p>The time at which the task was created.</p>"
        },
        "deviceArn": {
          "shape": "DeviceArn",
          "documentation": "<p>The ARN of the device the task ran on.</p>"
        },
        "endedAt": {
          "shape": "SyntheticTimestamp_date_time",
          "documentation": "<p>The time at which the task finished.</p>"
        },
        "outputS3Bucket": {
          "shape": "String",
          "documentation": "<p>The S3 bucket where the task result file is stored..</p>"
        },
        "outputS3Directory": {
          "shape": "String",
          "documentation": "<p>The folder in the S3 bucket where the task result file is stored.</p>"
        },
        "quantumTaskArn": {
          "shape": "QuantumTaskArn",
          "documentation": "<p>The ARN of the task.</p>"
        },
        "shots": {
          "shape": "Long",
          "documentation": "<p>The shots used for the task.</p>"
        },
        "status": {
          "shape": "QuantumTaskStatus",
          "documentation": "<p>The status of the task.</p>"
        }
      },
      "documentation": "<p>Includes information about a quantum task.</p>"
    },
    "QuantumTaskSummaryList": {
      "type": "list",
      "member": {
        "shape": "QuantumTaskSummary"
      }
    },
    "SearchDevicesFilter": {
      "type": "structure",
      "required": [
        "name",
        "values"
      ],
      "members": {
        "name": {
          "shape": "SearchDevicesFilternameString",
          "documentation": "<p>The name to use to filter results.</p>"
        },
        "values": {
          "shape": "SearchDevicesFiltervaluesString256List",
          "documentation": "<p>The values to use to filter results.</p>"
        }
      },
      "documentation": "<p>The filter to use for searching devices.</p>"
    },
    "SearchDevicesFilternameString": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "SearchDevicesFiltervaluesString256List": {
      "type": "list",
      "member": {
        "shape": "String256"
      },
      "max": 10,
      "min": 1
    },
    "SearchDevicesRequest": {
      "type": "structure",
      "required": [
        "filters"
      ],
      "members": {
        "filters": {
          "shape": "SearchDevicesRequestfiltersSearchDevicesFilterList",
          "documentation": "<p>The filter values to use to search for a device.</p>"
        },
        "maxResults": {
          "shape": "SearchDevicesRequestmaxResultsInteger",
          "documentation": "<p>The maximum number of results to return in the response.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>A token used for pagination of results returned in the response. Use the token returned from the previous request continue results where the previous request ended.</p>"
        }
      }
    },
    "SearchDevicesRequestfiltersSearchDevicesFilterList": {
      "type": "list",
      "member": {
        "shape": "SearchDevicesFilter"
      },
      "max": 10,
      "min": 0
    },
    "SearchDevicesRequestmaxResultsInteger": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "SearchDevicesResponse": {
      "type": "structure",
      "required": [
        "devices"
      ],
      "members": {
        "devices": {
          "shape": "DeviceSummaryList",
          "documentation": "<p>An array of <code>DeviceSummary</code> objects for devices that match the specified filter values.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>A token used for pagination of results, or null if there are no additional results. Use the token value in a subsequent request to continue results where the previous request ended.</p>"
        }
      }
    },
    "SearchQuantumTasksFilter": {
      "type": "structure",
      "required": [
        "name",
        "operator",
        "values"
      ],
      "members": {
        "name": {
          "shape": "String64",
          "documentation": "<p>The name of the device used for the task.</p>"
        },
        "operator": {
          "shape": "SearchQuantumTasksFilterOperator",
          "documentation": "<p>An operator to use in the filter.</p>"
        },
        "values": {
          "shape": "SearchQuantumTasksFiltervaluesString256List",
          "documentation": "<p>The values to use for the filter.</p>"
        }
      },
      "documentation": "<p>A filter to use to search for tasks.</p>"
    },
    "SearchQuantumTasksFilterOperator": {
      "type": "string",
      "enum": [
        "BETWEEN",
        "EQUAL",
        "GT",
        "GTE",
        "LT",
        "LTE"
      ]
    },
    "SearchQuantumTasksFiltervaluesString256List": {
      "type": "list",
      "member": {
        "shape": "String256"
      },
      "max": 10,
      "min": 1
    },
    "SearchQuantumTasksRequest": {
      "type": "structure",
      "required": [
        "filters"
      ],
      "members": {
        "filters": {
          "shape": "SearchQuantumTasksRequestfiltersSearchQuantumTasksFilterList",
          "documentation": "<p>Array of <code>SearchQuantumTasksFilter</code> objects.</p>"
        },
        "maxResults": {
          "shape": "SearchQuantumTasksRequestmaxResultsInteger",
          "documentation": "<p>Maximum number of results to return in the response.</p>"
        },
        "nextToken": {
          "shape": "String",
          "documentation": "<p>A token used for pagination of results returned in the response. Use the token returned from the previous request continue results where the previous request ended.</p>"
        }
      }
    },
    "SearchQuantumTasksRequestfiltersSearchQuantumTasksFilterList": {
      "type": "list",
      "member": {
        "shape": "SearchQuantumTasksFilter"
      },
      "max": 10,
      "min": 0
    },
    "SearchQuantumTasksRequestmaxResultsInteger": {
      "type": "integer",
      "box": true,
      "max": 100,
      "min": 1
    },
    "SearchQuantumTasksResponse": {
      "type": "structure",
      "required": [
        "quantumTasks"
      ],
      "members": {
        "nextToken": {
          "shape": "String",
          "documentation": "<p>A token used for pagination of results, or null if there are no additional results. Use the token value in a subsequent request to continue results where the previous request ended.</p>"
        },
        "quantumTasks": {
          "shape": "QuantumTaskSummaryList",
          "documentation": "<p>An array of <code>QuantumTaskSummary</code> objects for tasks that match the specified filters.</p>"
        }
      }
    },
    "String": {
      "type": "string"
    },
    "String256": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "String64": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "SyntheticTimestamp_date_time": {
      "type": "timestamp",
      "timestampFormat": "iso8601"
    }
  },
  "documentation": "<p>The Amazon Braket API Reference provides information about the operations and structures supported in Amazon Braket.</p>"
}
]===]))
