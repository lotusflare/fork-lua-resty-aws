local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-09-07",
    "endpointPrefix": "participant.connect",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "Amazon Connect Participant",
    "serviceFullName": "Amazon Connect Participant Service",
    "serviceId": "ConnectParticipant",
    "signatureVersion": "v4",
    "signingName": "execute-api",
    "uid": "connectparticipant-2018-09-07"
  },
  "operations": {
    "CreateParticipantConnection": {
      "name": "CreateParticipantConnection",
      "http": {
        "method": "POST",
        "requestUri": "/participant/connection"
      },
      "input": {
        "shape": "CreateParticipantConnectionRequest"
      },
      "output": {
        "shape": "CreateParticipantConnectionResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Creates the participant's connection. Note that ParticipantToken is used for invoking this API instead of ConnectionToken.</p> <p>The participant token is valid for the lifetime of the participant – until the they are part of a contact.</p> <p>The response URL for <code>WEBSOCKET</code> Type has a connect expiry timeout of 100s. Clients must manually connect to the returned websocket URL and subscribe to the desired topic. </p> <p>For chat, you need to publish the following on the established websocket connection:</p> <p> <code>{\"topic\":\"aws/subscribe\",\"content\":{\"topics\":[\"aws/chat\"]}}</code> </p> <p>Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter, clients need to call this API again to obtain a new websocket URL and perform the same steps as before.</p>"
    },
    "DisconnectParticipant": {
      "name": "DisconnectParticipant",
      "http": {
        "method": "POST",
        "requestUri": "/participant/disconnect"
      },
      "input": {
        "shape": "DisconnectParticipantRequest"
      },
      "output": {
        "shape": "DisconnectParticipantResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Disconnects a participant. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.</p>"
    },
    "GetTranscript": {
      "name": "GetTranscript",
      "http": {
        "method": "POST",
        "requestUri": "/participant/transcript"
      },
      "input": {
        "shape": "GetTranscriptRequest"
      },
      "output": {
        "shape": "GetTranscriptResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Retrieves a transcript of the session. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.</p>"
    },
    "SendEvent": {
      "name": "SendEvent",
      "http": {
        "method": "POST",
        "requestUri": "/participant/event"
      },
      "input": {
        "shape": "SendEventRequest"
      },
      "output": {
        "shape": "SendEventResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Sends an event. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.</p>"
    },
    "SendMessage": {
      "name": "SendMessage",
      "http": {
        "method": "POST",
        "requestUri": "/participant/message"
      },
      "input": {
        "shape": "SendMessageRequest"
      },
      "output": {
        "shape": "SendMessageResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Sends a message. Note that ConnectionToken is used for invoking this API instead of ParticipantToken.</p>"
    }
  },
  "shapes": {
    "ChatContent": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ChatContentType": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "ChatItemId": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ChatItemType": {
      "type": "string",
      "enum": [
        "MESSAGE",
        "EVENT",
        "CONNECTION_ACK"
      ]
    },
    "ClientToken": {
      "type": "string",
      "max": 500
    },
    "ConnectionCredentials": {
      "type": "structure",
      "members": {
        "ConnectionToken": {
          "shape": "ParticipantToken",
          "documentation": "<p>The connection token.</p>"
        },
        "Expiry": {
          "shape": "ISO8601Datetime",
          "documentation": "<p>The expiration of the token.</p> <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"
        }
      },
      "documentation": "<p>Connection credentials. </p>"
    },
    "ConnectionType": {
      "type": "string",
      "enum": [
        "WEBSOCKET",
        "CONNECTION_CREDENTIALS"
      ]
    },
    "ConnectionTypeList": {
      "type": "list",
      "member": {
        "shape": "ConnectionType"
      },
      "min": 1
    },
    "ContactId": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "CreateParticipantConnectionRequest": {
      "type": "structure",
      "required": [
        "Type",
        "ParticipantToken"
      ],
      "members": {
        "Type": {
          "shape": "ConnectionTypeList",
          "documentation": "<p>Type of connection information required.</p>"
        },
        "ParticipantToken": {
          "shape": "ParticipantToken",
          "documentation": "<p>Participant Token as obtained from <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContactResponse.html\">StartChatContact</a> API response.</p>",
          "location": "header",
          "locationName": "X-Amz-Bearer"
        }
      }
    },
    "CreateParticipantConnectionResponse": {
      "type": "structure",
      "members": {
        "Websocket": {
          "shape": "Websocket",
          "documentation": "<p>Creates the participant's websocket connection.</p>"
        },
        "ConnectionCredentials": {
          "shape": "ConnectionCredentials",
          "documentation": "<p>Creates the participant's connection credentials. The authentication token associated with the participant's connection.</p>"
        }
      }
    },
    "DisconnectParticipantRequest": {
      "type": "structure",
      "required": [
        "ConnectionToken"
      ],
      "members": {
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "ConnectionToken": {
          "shape": "ParticipantToken",
          "documentation": "<p>The authentication token associated with the participant's connection.</p>",
          "location": "header",
          "locationName": "X-Amz-Bearer"
        }
      }
    },
    "DisconnectParticipantResponse": {
      "type": "structure",
      "members": {}
    },
    "DisplayName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "GetTranscriptRequest": {
      "type": "structure",
      "required": [
        "ConnectionToken"
      ],
      "members": {
        "ContactId": {
          "shape": "ContactId",
          "documentation": "<p>The contactId from the current contact chain for which transcript is needed.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in the page. Default: 10. </p>",
          "box": true
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token. Use the value returned previously in the next subsequent request to retrieve the next set of results.</p>"
        },
        "ScanDirection": {
          "shape": "ScanDirection",
          "documentation": "<p>The direction from StartPosition from which to retrieve message. Default: BACKWARD when no StartPosition is provided, FORWARD with StartPosition. </p>"
        },
        "SortOrder": {
          "shape": "SortKey",
          "documentation": "<p>The sort order for the records. Default: DESCENDING.</p>"
        },
        "StartPosition": {
          "shape": "StartPosition",
          "documentation": "<p>A filtering option for where to start.</p>"
        },
        "ConnectionToken": {
          "shape": "ParticipantToken",
          "documentation": "<p>The authentication token associated with the participant's connection.</p>",
          "location": "header",
          "locationName": "X-Amz-Bearer"
        }
      }
    },
    "GetTranscriptResponse": {
      "type": "structure",
      "members": {
        "InitialContactId": {
          "shape": "ContactId",
          "documentation": "<p>The initial contact ID for the contact. </p>"
        },
        "Transcript": {
          "shape": "Transcript",
          "documentation": "<p>The list of messages in the session.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The pagination token. Use the value returned previously in the next subsequent request to retrieve the next set of results.</p>"
        }
      }
    },
    "ISO8601Datetime": {
      "type": "string"
    },
    "Instant": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "Item": {
      "type": "structure",
      "members": {
        "AbsoluteTime": {
          "shape": "Instant",
          "documentation": "<p>The time when the message or event was sent.</p> <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"
        },
        "Content": {
          "shape": "ChatContent",
          "documentation": "<p>The content of the message or event.</p>"
        },
        "ContentType": {
          "shape": "ChatContentType",
          "documentation": "<p>The type of content of the item.</p>"
        },
        "Id": {
          "shape": "ChatItemId",
          "documentation": "<p>The ID of the item.</p>"
        },
        "Type": {
          "shape": "ChatItemType",
          "documentation": "<p>Type of the item: message or event. </p>"
        },
        "ParticipantId": {
          "shape": "ParticipantId",
          "documentation": "<p>The ID of the sender in the session.</p>"
        },
        "DisplayName": {
          "shape": "DisplayName",
          "documentation": "<p>The chat display name of the sender.</p>"
        },
        "ParticipantRole": {
          "shape": "ParticipantRole",
          "documentation": "<p>The role of the sender. For example, is it a customer, agent, or system.</p>"
        }
      },
      "documentation": "<p>An item - message or event - that has been sent. </p>"
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "MostRecent": {
      "type": "integer",
      "max": 100,
      "min": 0
    },
    "NextToken": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "ParticipantId": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ParticipantRole": {
      "type": "string",
      "enum": [
        "AGENT",
        "CUSTOMER",
        "SYSTEM"
      ]
    },
    "ParticipantToken": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "PreSignedConnectionUrl": {
      "type": "string",
      "max": 2000,
      "min": 1
    },
    "ScanDirection": {
      "type": "string",
      "enum": [
        "FORWARD",
        "BACKWARD"
      ]
    },
    "SendEventRequest": {
      "type": "structure",
      "required": [
        "ContentType",
        "ConnectionToken"
      ],
      "members": {
        "ContentType": {
          "shape": "ChatContentType",
          "documentation": "<p>The content type of the request. Supported types are:</p> <ul> <li> <p>application/vnd.amazonaws.connect.event.typing</p> </li> <li> <p>application/vnd.amazonaws.connect.event.connection.acknowledged</p> </li> </ul>"
        },
        "Content": {
          "shape": "ChatContent",
          "documentation": "<p>The content of the event to be sent (for example, message text). This is not yet supported.</p>"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "ConnectionToken": {
          "shape": "ParticipantToken",
          "documentation": "<p>The authentication token associated with the participant's connection.</p>",
          "location": "header",
          "locationName": "X-Amz-Bearer"
        }
      }
    },
    "SendEventResponse": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ChatItemId",
          "documentation": "<p>The ID of the response.</p>"
        },
        "AbsoluteTime": {
          "shape": "Instant",
          "documentation": "<p>The time when the event was sent.</p> <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"
        }
      }
    },
    "SendMessageRequest": {
      "type": "structure",
      "required": [
        "ContentType",
        "Content",
        "ConnectionToken"
      ],
      "members": {
        "ContentType": {
          "shape": "ChatContentType",
          "documentation": "<p>The type of the content. Supported types are text/plain.</p>"
        },
        "Content": {
          "shape": "ChatContent",
          "documentation": "<p>The content of the message.</p>"
        },
        "ClientToken": {
          "shape": "ClientToken",
          "documentation": "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>",
          "idempotencyToken": true
        },
        "ConnectionToken": {
          "shape": "ParticipantToken",
          "documentation": "<p>The authentication token associated with the connection.</p>",
          "location": "header",
          "locationName": "X-Amz-Bearer"
        }
      }
    },
    "SendMessageResponse": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ChatItemId",
          "documentation": "<p>The ID of the message.</p>"
        },
        "AbsoluteTime": {
          "shape": "Instant",
          "documentation": "<p>The time when the message was sent.</p> <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"
        }
      }
    },
    "SortKey": {
      "type": "string",
      "enum": [
        "DESCENDING",
        "ASCENDING"
      ]
    },
    "StartPosition": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ChatItemId",
          "documentation": "<p>The ID of the message or event where to start. </p>"
        },
        "AbsoluteTime": {
          "shape": "Instant",
          "documentation": "<p>The time in ISO format where to start.</p> <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"
        },
        "MostRecent": {
          "shape": "MostRecent",
          "documentation": "<p>The start position of the most recent message where you want to start. </p>"
        }
      },
      "documentation": "<p>A filtering option for where to start. For example, if you sent 100 messages, start with message 50. </p>"
    },
    "Transcript": {
      "type": "list",
      "member": {
        "shape": "Item"
      }
    },
    "Websocket": {
      "type": "structure",
      "members": {
        "Url": {
          "shape": "PreSignedConnectionUrl",
          "documentation": "<p>The URL of the websocket.</p>"
        },
        "ConnectionExpiry": {
          "shape": "ISO8601Datetime",
          "documentation": "<p>The URL expiration timestamp in ISO date format.</p> <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"
        }
      },
      "documentation": "<p>The websocket for the participant's connection.</p>"
    }
  },
  "documentation": "<p>Amazon Connect is a cloud-based contact center solution that makes it easy to set up and manage a customer contact center and provide reliable customer engagement at any scale.</p> <p>Amazon Connect enables customer contacts through voice or chat.</p> <p>The APIs described here are used by chat participants, such as agents and customers.</p>"
}
]===]))
