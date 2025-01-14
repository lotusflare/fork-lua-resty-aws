local decode = require("cjson").new().decode
return assert(decode([===[
{
  "metadata":{
    "apiVersion":"2014-11-11",
    "endpointPrefix":"lambda",
    "serviceFullName":"AWS Lambda",
    "serviceId":"Lambda",
    "signatureVersion":"v4",
    "protocol":"rest-json"
  },
  "documentation":"<fullname>AWS Lambda</fullname> <p><b>Overview</b></p> <p>This is the AWS Lambda API Reference. The AWS Lambda Developer Guide provides additional information. For the service overview, go to <a href=\"http://docs.aws.amazon.com/lambda/latest/dg/welcome.html\">What is AWS Lambda</a>, and for information about how the service works, go to <a href=\"http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html\">AWS LambdaL How it Works</a> in the AWS Lambda Developer Guide.</p>",
  "operations":{
    "AddEventSource":{
      "name":"AddEventSource",
      "http":{
        "method":"POST",
        "requestUri":"/2014-11-13/event-source-mappings/"
      },
      "input":{"shape":"AddEventSourceRequest"},
      "output":{
        "shape":"EventSourceConfiguration",
        "documentation":"<p>Describes mapping between an Amazon Kinesis stream and a Lambda function.</p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"InvalidParameterValueException",
          "error":{"httpStatusCode":400},
          "exception":true,
          "documentation":"<p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>UploadFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>"
        }
      ],
      "documentation":"<p>Identifies a stream as an event source for an AWS Lambda function. It can be either an Amazon Kinesis stream or a Amazon DynamoDB stream. AWS Lambda invokes the specified function when records are posted to the stream.</p> <p>This is the pull model, where AWS Lambda invokes the function. For more information, go to <a href=\"http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html\">AWS Lambda: How it Works</a> in the AWS Lambda Developer Guide.</p> <p>This association between an Amazon Kinesis stream and an AWS Lambda function is called the event source mapping. You provide the configuration information (for example, which stream to read from and which AWS Lambda function to invoke) for the event source mapping in the request body.</p> <p> Each event source, such as a Kinesis stream, can only be associated with one AWS Lambda function. If you call <a>AddEventSource</a> for an event source that is already mapped to another AWS Lambda function, the existing mapping is updated to call the new function instead of the old one. </p> <p>This operation requires permission for the <code>iam:PassRole</code> action for the IAM role. It also requires permission for the <code>lambda:AddEventSource</code> action.</p>"
    },
    "DeleteFunction":{
      "name":"DeleteFunction",
      "http":{
        "method":"DELETE",
        "requestUri":"/2014-11-13/functions/{FunctionName}",
        "responseCode":204
      },
      "input":{"shape":"DeleteFunctionRequest"},
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        }
      ],
      "documentation":"<p>Deletes the specified Lambda function code and configuration.</p> <p>This operation requires permission for the <code>lambda:DeleteFunction</code> action.</p>"
    },
    "GetEventSource":{
      "name":"GetEventSource",
      "http":{
        "method":"GET",
        "requestUri":"/2014-11-13/event-source-mappings/{UUID}",
        "responseCode":200
      },
      "input":{"shape":"GetEventSourceRequest"},
      "output":{
        "shape":"EventSourceConfiguration",
        "documentation":"<p>Describes mapping between an Amazon Kinesis stream and a Lambda function.</p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        },
        {
          "shape":"InvalidParameterValueException",
          "error":{"httpStatusCode":400},
          "exception":true,
          "documentation":"<p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>UploadFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>"
        }
      ],
      "documentation":"<p>Returns configuration information for the specified event source mapping (see <a>AddEventSource</a>).</p> <p>This operation requires permission for the <code>lambda:GetEventSource</code> action.</p>"
    },
    "GetFunction":{
      "name":"GetFunction",
      "http":{
        "method":"GET",
        "requestUri":"/2014-11-13/functions/{FunctionName}",
        "responseCode":200
      },
      "input":{"shape":"GetFunctionRequest"},
      "output":{
        "shape":"GetFunctionResponse",
        "documentation":"<p>This response contains the object for AWS Lambda function location (see <a>API_FunctionCodeLocation</a></p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        }
      ],
      "documentation":"<p>Returns the configuration information of the Lambda function and a presigned URL link to the .zip file you uploaded with <a>UploadFunction</a> so you can download the .zip file. Note that the URL is valid for up to 10 minutes. The configuration information is the same information you provided as parameters when uploading the function.</p> <p>This operation requires permission for the <code>lambda:GetFunction</code> action.</p>"
    },
    "GetFunctionConfiguration":{
      "name":"GetFunctionConfiguration",
      "http":{
        "method":"GET",
        "requestUri":"/2014-11-13/functions/{FunctionName}/configuration",
        "responseCode":200
      },
      "input":{"shape":"GetFunctionConfigurationRequest"},
      "output":{
        "shape":"FunctionConfiguration",
        "documentation":"<p>A complex type that describes function metadata.</p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        }
      ],
      "documentation":"<p>Returns the configuration information of the Lambda function. This the same information you provided as parameters when uploading the function by using <a>UploadFunction</a>.</p> <p>This operation requires permission for the <code>lambda:GetFunctionConfiguration</code> operation.</p>"
    },
    "InvokeAsync":{
      "name":"InvokeAsync",
      "http":{
        "method":"POST",
        "requestUri":"/2014-11-13/functions/{FunctionName}/invoke-async/",
        "responseCode":202
      },
      "input":{"shape":"InvokeAsyncRequest"},
      "output":{
        "shape":"InvokeAsyncResponse",
        "documentation":"<p>Upon success, it returns empty response. Otherwise, throws an exception.</p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        },
        {
          "shape":"InvalidRequestContentException",
          "error":{"httpStatusCode":400},
          "exception":true,
          "documentation":"<p>The request body could not be parsed as JSON.</p>"
        }
      ],
      "documentation":"<p>Submits an invocation request to AWS Lambda. Upon receiving the request, Lambda executes the specified function asynchronously. To see the logs generated by the Lambda function execution, see the CloudWatch logs console.</p> <p>This operation requires permission for the <code>lambda:InvokeAsync</code> action.</p>"
    },
    "ListEventSources":{
      "name":"ListEventSources",
      "http":{
        "method":"GET",
        "requestUri":"/2014-11-13/event-source-mappings/",
        "responseCode":200
      },
      "input":{"shape":"ListEventSourcesRequest"},
      "output":{
        "shape":"ListEventSourcesResponse",
        "documentation":"<p>Contains a list of event sources (see <a>API_EventSourceConfiguration</a>)</p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        },
        {
          "shape":"InvalidParameterValueException",
          "error":{"httpStatusCode":400},
          "exception":true,
          "documentation":"<p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>UploadFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>"
        }
      ],
      "documentation":"<p>Returns a list of event source mappings you created using the <code>AddEventSource</code> (see <a>AddEventSource</a>), where you identify a stream as event source. This list does not include Amazon S3 event sources. </p> <p>For each mapping, the API returns configuration information. You can optionally specify filters to retrieve specific event source mappings.</p> <p>This operation requires permission for the <code>lambda:ListEventSources</code> action.</p>"
    },
    "ListFunctions":{
      "name":"ListFunctions",
      "http":{
        "method":"GET",
        "requestUri":"/2014-11-13/functions/",
        "responseCode":200
      },
      "input":{"shape":"ListFunctionsRequest"},
      "output":{
        "shape":"ListFunctionsResponse",
        "documentation":"<p>Contains a list of AWS Lambda function configurations (see <a>API_FunctionConfiguration</a>.</p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        }
      ],
      "documentation":"<p>Returns a list of your Lambda functions. For each function, the response includes the function configuration information. You must use <a>GetFunction</a> to retrieve the code for your function.</p> <p>This operation requires permission for the <code>lambda:ListFunctions</code> action.</p>"
    },
    "RemoveEventSource":{
      "name":"RemoveEventSource",
      "http":{
        "method":"DELETE",
        "requestUri":"/2014-11-13/event-source-mappings/{UUID}",
        "responseCode":204
      },
      "input":{"shape":"RemoveEventSourceRequest"},
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        },
        {
          "shape":"InvalidParameterValueException",
          "error":{"httpStatusCode":400},
          "exception":true,
          "documentation":"<p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>UploadFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>"
        }
      ],
      "documentation":"<p>Removes an event source mapping. This means AWS Lambda will no longer invoke the function for events in the associated source.</p> <p>This operation requires permission for the <code>lambda:RemoveEventSource</code> action.</p>"
    },
    "UpdateFunctionConfiguration":{
      "name":"UpdateFunctionConfiguration",
      "http":{
        "method":"PUT",
        "requestUri":"/2014-11-13/functions/{FunctionName}/configuration",
        "responseCode":200
      },
      "input":{"shape":"UpdateFunctionConfigurationRequest"},
      "output":{
        "shape":"FunctionConfiguration",
        "documentation":"<p>A complex type that describes function metadata.</p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        },
        {
          "shape":"InvalidParameterValueException",
          "error":{"httpStatusCode":400},
          "exception":true,
          "documentation":"<p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>UploadFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>"
        }
      ],
      "documentation":"<p>Updates the configuration parameters for the specified Lambda function by using the values provided in the request. You provide only the parameters you want to change. This operation must only be used on an existing Lambda function and cannot be used to update the function's code. </p> <p>This operation requires permission for the <code>lambda:UpdateFunctionConfiguration</code> action.</p>"
    },
    "UploadFunction":{
      "name":"UploadFunction",
      "http":{
        "method":"PUT",
        "requestUri":"/2014-11-13/functions/{FunctionName}",
        "responseCode":201
      },
      "input":{"shape":"UploadFunctionRequest"},
      "output":{
        "shape":"FunctionConfiguration",
        "documentation":"<p>A complex type that describes function metadata.</p>"
      },
      "errors":[
        {
          "shape":"ServiceException",
          "error":{"httpStatusCode":500},
          "exception":true,
          "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
        },
        {
          "shape":"InvalidParameterValueException",
          "error":{"httpStatusCode":400},
          "exception":true,
          "documentation":"<p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>UploadFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>"
        },
        {
          "shape":"ResourceNotFoundException",
          "error":{"httpStatusCode":404},
          "exception":true,
          "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
        }
      ],
      "documentation":"<p>Creates a new Lambda function or updates an existing function. The function metadata is created from the request parameters, and the code for the function is provided by a .zip file in the request body. If the function name already exists, the existing Lambda function is updated with the new code and metadata. </p> <p>This operation requires permission for the <code>lambda:UploadFunction</code> action.</p>"
    }
  },
  "shapes":{
    "AddEventSourceRequest":{
      "type":"structure",
      "required":[
        "EventSource",
        "FunctionName",
        "Role"
      ],
      "members":{
        "EventSource":{
          "shape":"String",
          "documentation":"<p>The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the event source. Any record added to this stream causes AWS Lambda to invoke your Lambda function. AWS Lambda POSTs the Amazon Kinesis event, containing records, to your Lambda function as JSON.</p>"
        },
        "FunctionName":{
          "shape":"FunctionName",
          "documentation":"<p>The Lambda function to invoke when AWS Lambda detects an event on the stream.</p>"
        },
        "Role":{
          "shape":"RoleArn",
          "documentation":"<p>The ARN of the IAM role (invocation role) that AWS Lambda can assume to read from the stream and invoke the function.</p>"
        },
        "BatchSize":{
          "shape":"Integer",
          "documentation":"<p>The largest number of records that AWS Lambda will give to your function in a single event. The default is 100 records.</p>"
        },
        "Parameters":{
          "shape":"Map",
          "documentation":"<p>A map (key-value pairs) defining the configuration for AWS Lambda to use when reading the event source. Currently, AWS Lambda supports only the <code>InitialPositionInStream</code> key. The valid values are: \"TRIM_HORIZON\" and \"LATEST\". The default value is \"TRIM_HORIZON\". For more information, go to <a href=\"http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType\">ShardIteratorType</a> in the Amazon Kinesis Service API Reference. </p>"
        }
      }
    },
    "Blob":{
      "type":"blob",
      "streaming":true
    },
    "DeleteFunctionRequest":{
      "type":"structure",
      "required":["FunctionName"],
      "members":{
        "FunctionName":{
          "shape":"FunctionName",
          "location":"uri",
          "locationName":"FunctionName",
          "documentation":"<p>The Lambda function to delete.</p>"
        }
      }
    },
    "Description":{
      "type":"string",
      "min":0,
      "max":256
    },
    "EventSourceConfiguration":{
      "type":"structure",
      "members":{
        "UUID":{
          "shape":"String",
          "documentation":"<p>The AWS Lambda assigned opaque identifier for the mapping.</p>"
        },
        "BatchSize":{
          "shape":"Integer",
          "documentation":"<p>The largest number of records that AWS Lambda will POST in the invocation request to your function.</p>"
        },
        "EventSource":{
          "shape":"String",
          "documentation":"<p>The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the source of events.</p>"
        },
        "FunctionName":{
          "shape":"FunctionName",
          "documentation":"<p>The Lambda function to invoke when AWS Lambda detects an event on the stream.</p>"
        },
        "Parameters":{
          "shape":"Map",
          "documentation":"<p>The map (key-value pairs) defining the configuration for AWS Lambda to use when reading the event source.</p>"
        },
        "Role":{
          "shape":"RoleArn",
          "documentation":"<p>The ARN of the IAM role (invocation role) that AWS Lambda can assume to read from the stream and invoke the function.</p>"
        },
        "LastModified":{
          "shape":"Timestamp",
          "documentation":"<p>The UTC time string indicating the last time the event mapping was updated.</p>"
        },
        "IsActive":{
          "shape":"Boolean",
          "documentation":"<p>Indicates whether the event source mapping is currently honored. Events are only processes if IsActive is true.</p>"
        },
        "Status":{
          "shape":"String",
          "documentation":"<p>The description of the health of the event source mapping. Valid values are: \"PENDING\", \"OK\", and \"PROBLEM:<i>message</i>\". Initially this staus is \"PENDING\". When AWS Lambda begins processing events, it changes the status to \"OK\".</p>"
        }
      },
      "documentation":"<p>Describes mapping between an Amazon Kinesis stream and a Lambda function.</p>"
    },
    "EventSourceList":{
      "type":"list",
      "member":{"shape":"EventSourceConfiguration"}
    },
    "FunctionArn":{
      "type":"string",
      "pattern":"arn:aws:lambda:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(\\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?"
    },
    "FunctionCodeLocation":{
      "type":"structure",
      "members":{
        "RepositoryType":{
          "shape":"String",
          "documentation":"<p>The repository from which you can download the function.</p>"
        },
        "Location":{
          "shape":"String",
          "documentation":"<p>The presigned URL you can use to download the function's .zip file that you previously uploaded. The URL is valid for up to 10 minutes.</p>"
        }
      },
      "documentation":"<p>The object for the Lambda function location.</p>"
    },
    "FunctionConfiguration":{
      "type":"structure",
      "members":{
        "FunctionName":{
          "shape":"FunctionName",
          "documentation":"<p>The name of the function.</p>"
        },
        "FunctionARN":{
          "shape":"FunctionArn",
          "documentation":"<p>The Amazon Resource Name (ARN) assigned to the function.</p>"
        },
        "ConfigurationId":{
          "shape":"String",
          "documentation":"<p>A Lambda-assigned unique identifier for the current function code and related configuration.</p>"
        },
        "Runtime":{
          "shape":"Runtime",
          "documentation":"<p>The runtime environment for the Lambda function.</p>"
        },
        "Role":{
          "shape":"RoleArn",
          "documentation":"<p>The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources.</p>"
        },
        "Handler":{
          "shape":"Handler",
          "documentation":"<p>The function Lambda calls to begin executing your function.</p>"
        },
        "Mode":{
          "shape":"Mode",
          "documentation":"<p>The type of the Lambda function you uploaded. </p>"
        },
        "CodeSize":{
          "shape":"Long",
          "documentation":"<p>The size, in bytes, of the function .zip file you uploaded.</p>"
        },
        "Description":{
          "shape":"Description",
          "documentation":"<p>The user-provided description.</p>"
        },
        "Timeout":{
          "shape":"Timeout",
          "documentation":"<p>The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds. </p>"
        },
        "MemorySize":{
          "shape":"MemorySize",
          "documentation":"<p>The memory size, in MB, you configured for the function. Must be a multiple of 64 MB.</p>"
        },
        "LastModified":{
          "shape":"Timestamp",
          "documentation":"<p>The timestamp of the last time you updated the function.</p>"
        }
      },
      "documentation":"<p>A complex type that describes function metadata.</p>"
    },
    "FunctionList":{
      "type":"list",
      "member":{"shape":"FunctionConfiguration"}
    },
    "FunctionName":{
      "type":"string",
      "min":1,
      "max":64,
      "pattern":"[a-zA-Z0-9-_]+"
    },
    "GetEventSourceRequest":{
      "type":"structure",
      "required":["UUID"],
      "members":{
        "UUID":{
          "shape":"String",
          "location":"uri",
          "locationName":"UUID",
          "documentation":"<p>The AWS Lambda assigned ID of the event source mapping.</p>"
        }
      }
    },
    "GetFunctionConfigurationRequest":{
      "type":"structure",
      "required":["FunctionName"],
      "members":{
        "FunctionName":{
          "shape":"FunctionName",
          "location":"uri",
          "locationName":"FunctionName",
          "documentation":"<p>The name of the Lambda function for which you want to retrieve the configuration information.</p>"
        }
      }
    },
    "GetFunctionRequest":{
      "type":"structure",
      "required":["FunctionName"],
      "members":{
        "FunctionName":{
          "shape":"FunctionName",
          "location":"uri",
          "locationName":"FunctionName",
          "documentation":"<p>The Lambda function name.</p>"
        }
      }
    },
    "GetFunctionResponse":{
      "type":"structure",
      "members":{
        "Configuration":{"shape":"FunctionConfiguration"},
        "Code":{"shape":"FunctionCodeLocation"}
      },
      "documentation":"<p>This response contains the object for AWS Lambda function location (see <a>API_FunctionCodeLocation</a></p>"
    },
    "Handler":{
      "type":"string",
      "pattern":"[a-zA-Z0-9./\\-_]+"
    },
    "HttpStatus":{"type":"integer"},
    "Integer":{"type":"integer"},
    "InvalidParameterValueException":{
      "type":"structure",
      "members":{
        "Type":{"shape":"String"},
        "message":{"shape":"String"}
      },
      "error":{"httpStatusCode":400},
      "exception":true,
      "documentation":"<p>One of the parameters in the request is invalid. For example, if you provided an IAM role for AWS Lambda to assume in the <code>UploadFunction</code> or the <code>UpdateFunctionConfiguration</code> API, that AWS Lambda is unable to assume you will get this exception. </p>"
    },
    "InvalidRequestContentException":{
      "type":"structure",
      "members":{
        "Type":{"shape":"String"},
        "message":{"shape":"String"}
      },
      "error":{"httpStatusCode":400},
      "exception":true,
      "documentation":"<p>The request body could not be parsed as JSON.</p>"
    },
    "InvokeAsyncRequest":{
      "type":"structure",
      "required":[
        "FunctionName",
        "InvokeArgs"
      ],
      "members":{
        "FunctionName":{
          "shape":"FunctionName",
          "location":"uri",
          "locationName":"FunctionName",
          "documentation":"<p>The Lambda function name.</p>"
        },
        "InvokeArgs":{
          "shape":"Blob",
          "documentation":"<p>JSON that you want to provide to your Lambda function as input.</p>"
        }
      },
      "payload":"InvokeArgs"
    },
    "InvokeAsyncResponse":{
      "type":"structure",
      "members":{
        "Status":{
          "shape":"HttpStatus",
          "location":"statusCode",
          "documentation":"<p>It will be 202 upon success.</p>"
        }
      },
      "documentation":"<p>Upon success, it returns empty response. Otherwise, throws an exception.</p>"
    },
    "ListEventSourcesRequest":{
      "type":"structure",
      "members":{
        "EventSourceArn":{
          "shape":"String",
          "location":"querystring",
          "locationName":"EventSource",
          "documentation":"<p>The Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>"
        },
        "FunctionName":{
          "shape":"FunctionName",
          "location":"querystring",
          "locationName":"FunctionName",
          "documentation":"<p>The name of the AWS Lambda function.</p>"
        },
        "Marker":{
          "shape":"String",
          "location":"querystring",
          "locationName":"Marker",
          "documentation":"<p>Optional string. An opaque pagination token returned from a previous <code>ListEventSources</code> operation. If present, specifies to continue the list from where the returning call left off. </p>"
        },
        "MaxItems":{
          "shape":"MaxListItems",
          "location":"querystring",
          "locationName":"MaxItems",
          "documentation":"<p>Optional integer. Specifies the maximum number of event sources to return in response. This value must be greater than 0.</p>"
        }
      }
    },
    "ListEventSourcesResponse":{
      "type":"structure",
      "members":{
        "NextMarker":{
          "shape":"String",
          "documentation":"<p>A string, present if there are more event source mappings.</p>"
        },
        "EventSources":{
          "shape":"EventSourceList",
          "documentation":"<p>An arrary of <code>EventSourceConfiguration</code> objects.</p>"
        }
      },
      "documentation":"<p>Contains a list of event sources (see <a>API_EventSourceConfiguration</a>)</p>"
    },
    "ListFunctionsRequest":{
      "type":"structure",
      "members":{
        "Marker":{
          "shape":"String",
          "location":"querystring",
          "locationName":"Marker",
          "documentation":"<p>Optional string. An opaque pagination token returned from a previous <code>ListFunctions</code> operation. If present, indicates where to continue the listing. </p>"
        },
        "MaxItems":{
          "shape":"MaxListItems",
          "location":"querystring",
          "locationName":"MaxItems",
          "documentation":"<p>Optional integer. Specifies the maximum number of AWS Lambda functions to return in response. This parameter value must be greater than 0.</p>"
        }
      }
    },
    "ListFunctionsResponse":{
      "type":"structure",
      "members":{
        "NextMarker":{
          "shape":"String",
          "documentation":"<p>A string, present if there are more functions.</p>"
        },
        "Functions":{
          "shape":"FunctionList",
          "documentation":"<p>A list of Lambda functions.</p>"
        }
      },
      "documentation":"<p>Contains a list of AWS Lambda function configurations (see <a>API_FunctionConfiguration</a>.</p>"
    },
    "Long":{"type":"long"},
    "Map":{
      "type":"map",
      "key":{"shape":"String"},
      "value":{"shape":"String"}
    },
    "MaxListItems":{
      "type":"integer",
      "min":1,
      "max":10000
    },
    "MemorySize":{
      "type":"integer",
      "min":128,
      "max":1024
    },
    "Mode":{
      "type":"string",
      "enum":["event"]
    },
    "RemoveEventSourceRequest":{
      "type":"structure",
      "required":["UUID"],
      "members":{
        "UUID":{
          "shape":"String",
          "location":"uri",
          "locationName":"UUID",
          "documentation":"<p>The event source mapping ID.</p>"
        }
      }
    },
    "ResourceNotFoundException":{
      "type":"structure",
      "members":{
        "Type":{"shape":"String"},
        "Message":{"shape":"String"}
      },
      "error":{"httpStatusCode":404},
      "exception":true,
      "documentation":"<p>The function or the event source specified in the request does not exist.</p>"
    },
    "RoleArn":{
      "type":"string",
      "pattern":"arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"
    },
    "Runtime":{
      "type":"string",
      "enum":["nodejs"]
    },
    "ServiceException":{
      "type":"structure",
      "members":{
        "Type":{"shape":"String"},
        "Message":{"shape":"String"}
      },
      "error":{"httpStatusCode":500},
      "exception":true,
      "documentation":"<p>The AWS Lambda service encountered an internal error.</p>"
    },
    "String":{"type":"string"},
    "Timeout":{
      "type":"integer",
      "min":1,
      "max":60
    },
    "Timestamp":{"type":"timestamp"},
    "UpdateFunctionConfigurationRequest":{
      "type":"structure",
      "required":["FunctionName"],
      "members":{
        "FunctionName":{
          "shape":"FunctionName",
          "location":"uri",
          "locationName":"FunctionName",
          "documentation":"<p>The name of the Lambda function.</p>"
        },
        "Role":{
          "shape":"RoleArn",
          "location":"querystring",
          "locationName":"Role",
          "documentation":"<p>The Amazon Resource Name (ARN) of the IAM role that Lambda will assume when it executes your function. </p>"
        },
        "Handler":{
          "shape":"Handler",
          "location":"querystring",
          "locationName":"Handler",
          "documentation":"<p>The function that Lambda calls to begin executing your function. For Node.js, it is the <i>module-name.export</i> value in your function. </p>"
        },
        "Description":{
          "shape":"Description",
          "location":"querystring",
          "locationName":"Description",
          "documentation":"<p>A short user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.</p>"
        },
        "Timeout":{
          "shape":"Timeout",
          "location":"querystring",
          "locationName":"Timeout",
          "documentation":"<p>The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds. </p>"
        },
        "MemorySize":{
          "shape":"MemorySize",
          "location":"querystring",
          "locationName":"MemorySize",
          "documentation":"<p>The amount of memory, in MB, your Lambda function is given. Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, a database operation might need less memory compared to an image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.</p>"
        }
      }
    },
    "UploadFunctionRequest":{
      "type":"structure",
      "required":[
        "FunctionName",
        "FunctionZip",
        "Runtime",
        "Role",
        "Handler",
        "Mode"
      ],
      "members":{
        "FunctionName":{
          "shape":"FunctionName",
          "location":"uri",
          "locationName":"FunctionName",
          "documentation":"<p>The name you want to assign to the function you are uploading. The function names appear in the console and are returned in the <a>ListFunctions</a> API. Function names are used to specify functions to other AWS Lambda APIs, such as <a>InvokeAsync</a>. </p>"
        },
        "FunctionZip":{
          "shape":"Blob",
          "documentation":"<p>A .zip file containing your packaged source code. For more information about creating a .zip file, go to <a href=\"http://docs.aws.amazon.com/lambda/latest/dg/walkthrough-custom-events.html\">AWS LambdaL How it Works</a> in the AWS Lambda Developer Guide. </p>"
        },
        "Runtime":{
          "shape":"Runtime",
          "location":"querystring",
          "locationName":"Runtime",
          "documentation":"<p>The runtime environment for the Lambda function you are uploading. Currently, Lambda supports only \"nodejs\" as the runtime.</p>"
        },
        "Role":{
          "shape":"RoleArn",
          "location":"querystring",
          "locationName":"Role",
          "documentation":"<p>The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when it executes your function to access any other Amazon Web Services (AWS) resources. </p>"
        },
        "Handler":{
          "shape":"Handler",
          "location":"querystring",
          "locationName":"Handler",
          "documentation":"<p>The function that Lambda calls to begin execution. For Node.js, it is the <i>module-name</i>.<i>export</i> value in your function. </p>"
        },
        "Mode":{
          "shape":"Mode",
          "location":"querystring",
          "locationName":"Mode",
          "documentation":"<p>How the Lambda function will be invoked. Lambda supports only the \"event\" mode. </p>"
        },
        "Description":{
          "shape":"Description",
          "location":"querystring",
          "locationName":"Description",
          "documentation":"<p>A short, user-defined function description. Lambda does not use this value. Assign a meaningful description as you see fit.</p>"
        },
        "Timeout":{
          "shape":"Timeout",
          "location":"querystring",
          "locationName":"Timeout",
          "documentation":"<p>The function execution time at which Lambda should terminate the function. Because the execution time has cost implications, we recommend you set this value based on your expected execution time. The default is 3 seconds. </p>"
        },
        "MemorySize":{
          "shape":"MemorySize",
          "location":"querystring",
          "locationName":"MemorySize",
          "documentation":"<p>The amount of memory, in MB, your Lambda function is given. Lambda uses this memory size to infer the amount of CPU allocated to your function. Your function use-case determines your CPU and memory requirements. For example, database operation might need less memory compared to image processing function. The default value is 128 MB. The value must be a multiple of 64 MB.</p>"
        }
      },
      "payload":"FunctionZip"
    },
    "Boolean":{"type":"boolean"}
  }
}

]===]))
