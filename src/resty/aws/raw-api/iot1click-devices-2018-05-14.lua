local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata": {
    "apiVersion": "2018-05-14",
    "endpointPrefix": "devices.iot1click",
    "signingName": "iot1click",
    "serviceFullName": "AWS IoT 1-Click Devices Service",
    "serviceId": "IoT 1Click Devices Service",
    "protocol": "rest-json",
    "jsonVersion": "1.1",
    "uid": "devices-2018-05-14",
    "signatureVersion": "v4"
  },
  "operations": {
    "ClaimDevicesByClaimCode": {
      "name": "ClaimDevicesByClaimCode",
      "http": {
        "method": "PUT",
        "requestUri": "/claims/{claimCode}",
        "responseCode": 200
      },
      "input": {
        "shape": "ClaimDevicesByClaimCodeRequest"
      },
      "output": {
        "shape": "ClaimDevicesByClaimCodeResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "ForbiddenException",
          "documentation": "<p>403 response</p>"
        }
      ],
      "documentation": "<p>Adds device(s) to your account (i.e., claim one or more devices) if and only if you\n received a claim code with the device(s).</p>"
    },
    "DescribeDevice": {
      "name": "DescribeDevice",
      "http": {
        "method": "GET",
        "requestUri": "/devices/{deviceId}",
        "responseCode": 200
      },
      "input": {
        "shape": "DescribeDeviceRequest"
      },
      "output": {
        "shape": "DescribeDeviceResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Given a device ID, returns a DescribeDeviceResponse object describing the\n details of the device.</p>"
    },
    "FinalizeDeviceClaim": {
      "name": "FinalizeDeviceClaim",
      "http": {
        "method": "PUT",
        "requestUri": "/devices/{deviceId}/finalize-claim",
        "responseCode": 200
      },
      "input": {
        "shape": "FinalizeDeviceClaimRequest"
      },
      "output": {
        "shape": "FinalizeDeviceClaimResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "PreconditionFailedException",
          "documentation": "<p>412 response</p>"
        },
        {
          "shape": "ResourceConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>Given a device ID, finalizes the claim request for the associated device.</p><note>\n <p>Claiming a device consists of initiating a claim, then publishing a device event,\n and finalizing the claim. For a device of type button, a device event can\n be published by simply clicking the device.</p>\n </note>"
    },
    "GetDeviceMethods": {
      "name": "GetDeviceMethods",
      "http": {
        "method": "GET",
        "requestUri": "/devices/{deviceId}/methods",
        "responseCode": 200
      },
      "input": {
        "shape": "GetDeviceMethodsRequest"
      },
      "output": {
        "shape": "GetDeviceMethodsResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Given a device ID, returns the invokable methods associated with the device.</p>"
    },
    "InitiateDeviceClaim": {
      "name": "InitiateDeviceClaim",
      "http": {
        "method": "PUT",
        "requestUri": "/devices/{deviceId}/initiate-claim",
        "responseCode": 200
      },
      "input": {
        "shape": "InitiateDeviceClaimRequest"
      },
      "output": {
        "shape": "InitiateDeviceClaimResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "ResourceConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>Given a device ID, initiates a claim request for the associated device.</p><note>\n <p>Claiming a device consists of initiating a claim, then publishing a device event,\n and finalizing the claim. For a device of type button, a device event can\n be published by simply clicking the device.</p>\n </note>"
    },
    "InvokeDeviceMethod": {
      "name": "InvokeDeviceMethod",
      "http": {
        "method": "POST",
        "requestUri": "/devices/{deviceId}/methods",
        "responseCode": 200
      },
      "input": {
        "shape": "InvokeDeviceMethodRequest"
      },
      "output": {
        "shape": "InvokeDeviceMethodResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "PreconditionFailedException",
          "documentation": "<p>412 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        },
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "RangeNotSatisfiableException",
          "documentation": "<p>416 response</p>"
        },
        {
          "shape": "ResourceConflictException",
          "documentation": "<p>409 response</p>"
        }
      ],
      "documentation": "<p>Given a device ID, issues a request to invoke a named device method (with possible\n parameters). See the \"Example POST\" code snippet below.</p>"
    },
    "ListDeviceEvents": {
      "name": "ListDeviceEvents",
      "http": {
        "method": "GET",
        "requestUri": "/devices/{deviceId}/events",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDeviceEventsRequest"
      },
      "output": {
        "shape": "ListDeviceEventsResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "RangeNotSatisfiableException",
          "documentation": "<p>416 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Using a device ID, returns a DeviceEventsResponse object containing an\n array of events for the device.</p>"
    },
    "ListDevices": {
      "name": "ListDevices",
      "http": {
        "method": "GET",
        "requestUri": "/devices",
        "responseCode": 200
      },
      "input": {
        "shape": "ListDevicesRequest"
      },
      "output": {
        "shape": "ListDevicesResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "RangeNotSatisfiableException",
          "documentation": "<p>416 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Lists the 1-Click compatible devices associated with your AWS account.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 200
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Lists the tags associated with the specified resource ARN.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Adds or updates the tags associated with the resource ARN. See <a href=\"https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits\">AWS IoT 1-Click Service Limits</a> for the maximum number of tags allowed per\n resource.</p>"
    },
    "UnclaimDevice": {
      "name": "UnclaimDevice",
      "http": {
        "method": "PUT",
        "requestUri": "/devices/{deviceId}/unclaim",
        "responseCode": 200
      },
      "input": {
        "shape": "UnclaimDeviceRequest"
      },
      "output": {
        "shape": "UnclaimDeviceResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Disassociates a device from your AWS account using its device ID.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/tags/{resource-arn}",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Using tag keys, deletes the tags (key/value pairs) associated with the specified\n resource ARN.</p>"
    },
    "UpdateDeviceState": {
      "name": "UpdateDeviceState",
      "http": {
        "method": "PUT",
        "requestUri": "/devices/{deviceId}/state",
        "responseCode": 200
      },
      "input": {
        "shape": "UpdateDeviceStateRequest"
      },
      "output": {
        "shape": "UpdateDeviceStateResponse",
        "documentation": "<p>200 response</p>"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException",
          "documentation": "<p>404 response</p>"
        },
        {
          "shape": "InvalidRequestException",
          "documentation": "<p>400 response</p>"
        },
        {
          "shape": "InternalFailureException",
          "documentation": "<p>500 response</p>"
        }
      ],
      "documentation": "<p>Using a Boolean value (true or false), this operation\n enables or disables the device given a device ID.</p>"
    }
  },
  "shapes": {
    "Attributes": {
      "type": "structure",
      "members": {}
    },
    "ClaimDevicesByClaimCodeRequest": {
      "type": "structure",
      "members": {
        "ClaimCode": {
          "shape": "__string",
          "location": "uri",
          "locationName": "claimCode",
          "documentation": "<p>The claim code, starting with \"C-\", as provided by the device manufacturer.</p>"
        }
      },
      "required": [
        "ClaimCode"
      ]
    },
    "ClaimDevicesByClaimCodeResponse": {
      "type": "structure",
      "members": {
        "ClaimCode": {
          "shape": "__stringMin12Max40",
          "locationName": "claimCode",
          "documentation": "<p>The claim code provided by the device manufacturer.</p>"
        },
        "Total": {
          "shape": "__integer",
          "locationName": "total",
          "documentation": "<p>The total number of devices associated with the claim code that has been processed in\n the claim request.</p>"
        }
      }
    },
    "DescribeDeviceRequest": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        }
      },
      "required": [
        "DeviceId"
      ]
    },
    "DescribeDeviceResponse": {
      "type": "structure",
      "members": {
        "DeviceDescription": {
          "shape": "DeviceDescription",
          "locationName": "deviceDescription",
          "documentation": "<p>Device details.</p>"
        }
      }
    },
    "Device": {
      "type": "structure",
      "members": {
        "Attributes": {
          "shape": "Attributes",
          "locationName": "attributes",
          "documentation": "<p>The user specified attributes associated with the device for an event.</p>"
        },
        "DeviceId": {
          "shape": "__string",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        },
        "Type": {
          "shape": "__string",
          "locationName": "type",
          "documentation": "<p>The device type, such as \"button\".</p>"
        }
      }
    },
    "DeviceAttributes": {
      "type": "map",
      "documentation": "<p>\n DeviceAttributes is a string-to-string map specified by the user.</p>",
      "key": {
        "shape": "__string"
      },
      "value": {
        "shape": "__string"
      }
    },
    "DeviceDescription": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "__string",
          "locationName": "arn",
          "documentation": "<p>The ARN of the device.</p>"
        },
        "Attributes": {
          "shape": "DeviceAttributes",
          "locationName": "attributes",
          "documentation": "<p>An array of zero or more elements of DeviceAttribute objects providing\n user specified device attributes.</p>"
        },
        "DeviceId": {
          "shape": "__string",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        },
        "Enabled": {
          "shape": "__boolean",
          "locationName": "enabled",
          "documentation": "<p>A Boolean value indicating whether or not the device is enabled.</p>"
        },
        "RemainingLife": {
          "shape": "__doubleMin0Max100",
          "locationName": "remainingLife",
          "documentation": "<p>A value between 0 and 1 inclusive, representing the fraction of life remaining for the\n device.</p>"
        },
        "Type": {
          "shape": "__string",
          "locationName": "type",
          "documentation": "<p>The type of the device, such as \"button\".</p>"
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "<p>The tags currently associated with the AWS IoT 1-Click device.</p>"
        }
      }
    },
    "DeviceEvent": {
      "type": "structure",
      "members": {
        "Device": {
          "shape": "Device",
          "locationName": "device",
          "documentation": "<p>An object representing the device associated with the event.</p>"
        },
        "StdEvent": {
          "shape": "__string",
          "locationName": "stdEvent",
          "documentation": "<p>A serialized JSON object representing the device-type specific event.</p>"
        }
      }
    },
    "DeviceMethod": {
      "type": "structure",
      "members": {
        "DeviceType": {
          "shape": "__string",
          "locationName": "deviceType",
          "documentation": "<p>The type of the device, such as \"button\".</p>"
        },
        "MethodName": {
          "shape": "__string",
          "locationName": "methodName",
          "documentation": "<p>The name of the method applicable to the deviceType.</p>"
        }
      }
    },
    "FinalizeDeviceClaimRequest": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "<p>A collection of key/value pairs defining the resource tags. For example, {\n \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS\n Tagging Strategies</a>.</p><p>\n \n </p>"
        }
      },
      "required": [
        "DeviceId"
      ]
    },
    "FinalizeDeviceClaimResponse": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "__string",
          "locationName": "state",
          "documentation": "<p>The device's final claim state.</p>"
        }
      }
    },
    "GetDeviceMethodsRequest": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        }
      },
      "required": [
        "DeviceId"
      ]
    },
    "GetDeviceMethodsResponse": {
      "type": "structure",
      "members": {
        "DeviceMethods": {
          "shape": "__listOfDeviceMethod",
          "locationName": "deviceMethods",
          "documentation": "<p>List of available device APIs.</p>"
        }
      }
    },
    "InitiateDeviceClaimRequest": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        }
      },
      "required": [
        "DeviceId"
      ]
    },
    "InitiateDeviceClaimResponse": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "__string",
          "locationName": "state",
          "documentation": "<p>The device's final claim state.</p>"
        }
      }
    },
    "InvokeDeviceMethodRequest": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        },
        "DeviceMethod": {
          "shape": "DeviceMethod",
          "locationName": "deviceMethod",
          "documentation": "<p>The device method to invoke.</p>"
        },
        "DeviceMethodParameters": {
          "shape": "__string",
          "locationName": "deviceMethodParameters",
          "documentation": "<p>A JSON encoded string containing the device method request parameters.</p>"
        }
      },
      "required": [
        "DeviceId"
      ]
    },
    "InvokeDeviceMethodResponse": {
      "type": "structure",
      "members": {
        "DeviceMethodResponse": {
          "shape": "__string",
          "locationName": "deviceMethodResponse",
          "documentation": "<p>A JSON encoded string containing the device method response.</p>"
        }
      }
    },
    "ListDeviceEventsRequest": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        },
        "FromTimeStamp": {
          "shape": "__timestampIso8601",
          "location": "querystring",
          "locationName": "fromTimeStamp",
          "documentation": "<p>The start date for the device event query, in ISO8061 format. For example,\n 2018-03-28T15:45:12.880Z\n </p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of results to return per request. If not set, a default value of\n 100 is used.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The token to retrieve the next set of results.</p>"
        },
        "ToTimeStamp": {
          "shape": "__timestampIso8601",
          "location": "querystring",
          "locationName": "toTimeStamp",
          "documentation": "<p>The end date for the device event query, in ISO8061 format. For example,\n 2018-03-28T15:45:12.880Z\n </p>"
        }
      },
      "required": [
        "DeviceId",
        "FromTimeStamp",
        "ToTimeStamp"
      ]
    },
    "ListDeviceEventsResponse": {
      "type": "structure",
      "members": {
        "Events": {
          "shape": "__listOfDeviceEvent",
          "locationName": "events",
          "documentation": "<p>An array of zero or more elements describing the event(s) associated with the\n device.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The token to retrieve the next set of results.</p>"
        }
      }
    },
    "ListDevicesRequest": {
      "type": "structure",
      "members": {
        "DeviceType": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "deviceType",
          "documentation": "<p>The type of the device, such as \"button\".</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "location": "querystring",
          "locationName": "maxResults",
          "documentation": "<p>The maximum number of results to return per request. If not set, a default value of\n 100 is used.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "location": "querystring",
          "locationName": "nextToken",
          "documentation": "<p>The token to retrieve the next set of results.</p>"
        }
      }
    },
    "ListDevicesResponse": {
      "type": "structure",
      "members": {
        "Devices": {
          "shape": "__listOfDeviceDescription",
          "locationName": "devices",
          "documentation": "<p>A list of devices.</p>"
        },
        "NextToken": {
          "shape": "__string",
          "locationName": "nextToken",
          "documentation": "<p>The token to retrieve the next set of results.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>The ARN of the resource.</p>"
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
          "documentation": "<p>A collection of key/value pairs defining the resource tags. For example, {\n \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS\n Tagging Strategies</a>.</p><p>\n \n </p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "min": 1,
      "max": 250
    },
    "TagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>The ARN of the resource.</p>"
        },
        "Tags": {
          "shape": "__mapOf__string",
          "locationName": "tags",
          "documentation": "<p>A collection of key/value pairs defining the resource tags. For example, {\n \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS\n Tagging Strategies</a>.</p><p>\n \n </p>"
        }
      },
      "required": [
        "ResourceArn",
        "Tags"
      ]
    },
    "UnclaimDeviceRequest": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        }
      },
      "required": [
        "DeviceId"
      ]
    },
    "UnclaimDeviceResponse": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "__string",
          "locationName": "state",
          "documentation": "<p>The device's final claim state.</p>"
        }
      }
    },
    "UntagResourceRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "__string",
          "location": "uri",
          "locationName": "resource-arn",
          "documentation": "<p>The ARN of the resource.</p>"
        },
        "TagKeys": {
          "shape": "__listOf__string",
          "location": "querystring",
          "locationName": "tagKeys",
          "documentation": "<p>A collections of tag keys. For example, {\"key1\",\"key2\"}</p>"
        }
      },
      "required": [
        "TagKeys",
        "ResourceArn"
      ]
    },
    "UpdateDeviceStateRequest": {
      "type": "structure",
      "members": {
        "DeviceId": {
          "shape": "__string",
          "location": "uri",
          "locationName": "deviceId",
          "documentation": "<p>The unique identifier of the device.</p>"
        },
        "Enabled": {
          "shape": "__boolean",
          "locationName": "enabled",
          "documentation": "<p>If true, the device is enabled. If false, the device is\n disabled.</p>"
        }
      },
      "required": [
        "DeviceId"
      ]
    },
    "UpdateDeviceStateResponse": {
      "type": "structure",
      "members": {}
    },
    "__boolean": {
      "type": "boolean"
    },
    "__doubleMin0Max100": {
      "type": "double"
    },
    "__integer": {
      "type": "integer"
    },
    "__listOfDeviceDescription": {
      "type": "list",
      "member": {
        "shape": "DeviceDescription"
      }
    },
    "__listOfDeviceEvent": {
      "type": "list",
      "member": {
        "shape": "DeviceEvent"
      }
    },
    "__listOfDeviceMethod": {
      "type": "list",
      "member": {
        "shape": "DeviceMethod"
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
    },
    "__stringMin12Max40": {
      "type": "string",
      "min": 12,
      "max": 40
    },
    "__timestampIso8601": {
      "type": "timestamp",
      "timestampFormat": "iso8601"
    }
  },
  "documentation": "<p>Describes all of the AWS IoT 1-Click device-related API operations for the service.\n Also provides sample requests, responses, and errors for the supported web services\n protocols.</p>"
}
]===]))
