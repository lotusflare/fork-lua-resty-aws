local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version":"2.0",
  "metadata":{
    "apiVersion":"2014-06-05",
    "endpointPrefix":"mobileanalytics",
    "serviceFullName":"Amazon Mobile Analytics",
    "serviceId":"Mobile Analytics",
    "signatureVersion":"v4",
    "protocol":"rest-json"
  },
  "documentation":"<p>Amazon Mobile Analytics is a service for collecting, visualizing, and understanding app usage data at scale.</p>",
  "operations":{
    "PutEvents":{
      "name":"PutEvents",
      "http":{
        "method":"POST",
        "requestUri":"/2014-06-05/events",
        "responseCode":202
      },
      "input":{
        "shape":"PutEventsInput",
        "documentation":"<p>A container for the data needed for a PutEvent operation</p>"
      },
      "errors":[
        {
          "shape":"BadRequestException",
          "error":{"httpStatusCode":400},
          "exception":true,
          "documentation":"<p>An exception object returned when a request fails.</p>"
        }
      ],
      "documentation":"<p>The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.</p>"
    }
  },
  "shapes":{
    "BadRequestException":{
      "type":"structure",
      "members":{
        "message":{
          "shape":"String",
          "documentation":"<p>A text description associated with the BadRequestException object.</p>"
        }
      },
      "error":{"httpStatusCode":400},
      "exception":true,
      "documentation":"<p>An exception object returned when a request fails.</p>"
    },
    "Double":{"type":"double"},
    "Event":{
      "type":"structure",
      "required":[
        "eventType",
        "timestamp"
      ],
      "members":{
        "eventType":{
          "shape":"String50Chars",
          "documentation":"<p>A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.</p>"
        },
        "timestamp":{
          "shape":"ISO8601Timestamp",
          "documentation":"<p>The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z</p>"
        },
        "session":{
          "shape":"Session",
          "documentation":"<p>The session the event occured within. </p>"
        },
        "version":{
          "shape":"String10Chars",
          "documentation":"<p>The version of the event.</p>"
        },
        "attributes":{
          "shape":"MapOfStringToString",
          "documentation":"<p>A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer.</p> <p>This collection can be empty or the attribute object can be omitted.</p>"
        },
        "metrics":{
          "shape":"MapOfStringToNumber",
          "documentation":"<p>A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer.</p> <p>This collection can be empty or the attribute object can be omitted.</p>"
        }
      },
      "documentation":"<p>A JSON object representing a batch of unique event occurrences in your app.</p>"
    },
    "EventListDefinition":{
      "type":"list",
      "member":{"shape":"Event"}
    },
    "ISO8601Timestamp":{"type":"string"},
    "Long":{"type":"long"},
    "MapOfStringToNumber":{
      "type":"map",
      "key":{"shape":"String50Chars"},
      "value":{"shape":"Double"},
      "min":0,
      "max":50
    },
    "MapOfStringToString":{
      "type":"map",
      "key":{"shape":"String50Chars"},
      "value":{"shape":"String0to1000Chars"},
      "min":0,
      "max":50
    },
    "PutEventsInput":{
      "type":"structure",
      "required":[
        "events",
        "clientContext"
      ],
      "members":{
        "events":{
          "shape":"EventListDefinition",
          "documentation":"<p>An array of Event JSON objects</p>"
        },
        "clientContext":{
          "shape":"String",
          "location":"header",
          "locationName":"x-amz-Client-Context",
          "documentation":"<p>The client context including the client ID, app title, app version and package name.</p>"
        },
        "clientContextEncoding":{
          "shape":"String",
          "location":"header",
          "locationName":"x-amz-Client-Context-Encoding",
          "documentation":"<p>The encoding used for the client context.</p>"
        }
      },
      "documentation":"<p>A container for the data needed for a PutEvent operation</p>"
    },
    "Session":{
      "type":"structure",
      "members":{
        "id":{
          "shape":"String50Chars",
          "documentation":"<p>A unique identifier for the session</p>"
        },
        "duration":{
          "shape":"Long",
          "documentation":"<p>The duration of the session.</p>"
        },
        "startTimestamp":{
          "shape":"ISO8601Timestamp",
          "documentation":"<p>The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z</p>"
        },
        "stopTimestamp":{
          "shape":"ISO8601Timestamp",
          "documentation":"<p>The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z</p>"
        }
      },
      "documentation":"<p>Describes the session. Session information is required on ALL events.</p>"
    },
    "String":{"type":"string"},
    "String0to1000Chars":{
      "type":"string",
      "min":0,
      "max":1000
    },
    "String10Chars":{
      "type":"string",
      "min":1,
      "max":10
    },
    "String50Chars":{
      "type":"string",
      "min":1,
      "max":50
    }
  }
}

]===]))
