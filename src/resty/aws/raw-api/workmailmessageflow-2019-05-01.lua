local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-05-01",
    "endpointPrefix": "workmailmessageflow",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceFullName": "Amazon WorkMail Message Flow",
    "serviceId": "WorkMailMessageFlow",
    "signatureVersion": "v4",
    "uid": "workmailmessageflow-2019-05-01"
  },
  "operations": {
    "GetRawMessageContent": {
      "name": "GetRawMessageContent",
      "http": {
        "method": "GET",
        "requestUri": "/messages/{messageId}"
      },
      "input": {
        "shape": "GetRawMessageContentRequest"
      },
      "output": {
        "shape": "GetRawMessageContentResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the raw content of an in-transit email message, in MIME format. </p>"
    }
  },
  "shapes": {
    "GetRawMessageContentRequest": {
      "type": "structure",
      "required": [
        "messageId"
      ],
      "members": {
        "messageId": {
          "shape": "messageIdType",
          "documentation": "<p>The identifier of the email message to retrieve.</p>",
          "location": "uri",
          "locationName": "messageId"
        }
      }
    },
    "GetRawMessageContentResponse": {
      "type": "structure",
      "required": [
        "messageContent"
      ],
      "members": {
        "messageContent": {
          "shape": "messageContentBlob",
          "documentation": "<p>The raw content of the email message, in MIME format.</p>"
        }
      },
      "payload": "messageContent"
    },
    "messageContentBlob": {
      "type": "blob",
      "streaming": true
    },
    "messageIdType": {
      "type": "string",
      "max": 120,
      "min": 1,
      "pattern": "[a-z0-9\\-]*"
    }
  },
  "documentation": "<p>The WorkMail Message Flow API provides access to email messages as they are being sent and received by a WorkMail organization.</p>"
}
]===]))
