local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-11-23",
    "endpointPrefix": "states",
    "jsonVersion": "1.0",
    "protocol": "json",
    "serviceAbbreviation": "AWS SFN",
    "serviceFullName": "AWS Step Functions",
    "serviceId": "SFN",
    "signatureVersion": "v4",
    "targetPrefix": "AWSStepFunctions",
    "uid": "states-2016-11-23"
  },
  "operations": {
    "CreateActivity": {
      "name": "CreateActivity",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateActivityInput"
      },
      "output": {
        "shape": "CreateActivityOutput"
      },
      "errors": [
        {
          "shape": "ActivityLimitExceeded"
        },
        {
          "shape": "InvalidName"
        },
        {
          "shape": "TooManyTags"
        }
      ],
      "documentation": "<p>Creates an activity. An activity is a task that you write in any programming language and host on any machine that has access to AWS Step Functions. Activities must poll Step Functions using the <code>GetActivityTask</code> API action and respond using <code>SendTask*</code> API actions. This function lets Step Functions know the existence of your activity and returns an identifier for use in a state machine and when polling from the activity.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note> <note> <p> <code>CreateActivity</code> is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. <code>CreateActivity</code>'s idempotency check is based on the activity <code>name</code>. If a following request has different <code>tags</code> values, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, <code>tags</code> will not be updated, even if they are different.</p> </note>",
      "idempotent": true
    },
    "CreateStateMachine": {
      "name": "CreateStateMachine",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateStateMachineInput"
      },
      "output": {
        "shape": "CreateStateMachineOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "InvalidDefinition"
        },
        {
          "shape": "InvalidName"
        },
        {
          "shape": "InvalidLoggingConfiguration"
        },
        {
          "shape": "StateMachineAlreadyExists"
        },
        {
          "shape": "StateMachineDeleting"
        },
        {
          "shape": "StateMachineLimitExceeded"
        },
        {
          "shape": "StateMachineTypeNotSupported"
        },
        {
          "shape": "TooManyTags"
        }
      ],
      "documentation": "<p>Creates a state machine. A state machine consists of a collection of states that can do work (<code>Task</code> states), determine to which states to transition next (<code>Choice</code> states), stop an execution with an error (<code>Fail</code> states), and so on. State machines are specified using a JSON-based, structured language. For more information, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a> in the AWS Step Functions User Guide.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note> <note> <p> <code>CreateStateMachine</code> is an idempotent API. Subsequent requests won’t create a duplicate resource if it was already created. <code>CreateStateMachine</code>'s idempotency check is based on the state machine <code>name</code>, <code>definition</code>, <code>type</code>, and <code>LoggingConfiguration</code>. If a following request has a different <code>roleArn</code> or <code>tags</code>, Step Functions will ignore these differences and treat it as an idempotent request of the previous. In this case, <code>roleArn</code> and <code>tags</code> will not be updated, even if they are different.</p> </note>",
      "idempotent": true
    },
    "DeleteActivity": {
      "name": "DeleteActivity",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteActivityInput"
      },
      "output": {
        "shape": "DeleteActivityOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        }
      ],
      "documentation": "<p>Deletes an activity.</p>"
    },
    "DeleteStateMachine": {
      "name": "DeleteStateMachine",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteStateMachineInput"
      },
      "output": {
        "shape": "DeleteStateMachineOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        }
      ],
      "documentation": "<p>Deletes a state machine. This is an asynchronous operation: It sets the state machine's status to <code>DELETING</code> and begins the deletion process. </p> <note> <p>For <code>EXPRESS</code>state machines, the deletion will happen eventually (usually less than a minute). Running executions may emit logs after <code>DeleteStateMachine</code> API is called.</p> </note>"
    },
    "DescribeActivity": {
      "name": "DescribeActivity",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeActivityInput"
      },
      "output": {
        "shape": "DescribeActivityOutput"
      },
      "errors": [
        {
          "shape": "ActivityDoesNotExist"
        },
        {
          "shape": "InvalidArn"
        }
      ],
      "documentation": "<p>Describes an activity.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>"
    },
    "DescribeExecution": {
      "name": "DescribeExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeExecutionInput"
      },
      "output": {
        "shape": "DescribeExecutionOutput"
      },
      "errors": [
        {
          "shape": "ExecutionDoesNotExist"
        },
        {
          "shape": "InvalidArn"
        }
      ],
      "documentation": "<p>Describes an execution.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note> <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>"
    },
    "DescribeStateMachine": {
      "name": "DescribeStateMachine",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStateMachineInput"
      },
      "output": {
        "shape": "DescribeStateMachineOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "StateMachineDoesNotExist"
        }
      ],
      "documentation": "<p>Describes a state machine.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>"
    },
    "DescribeStateMachineForExecution": {
      "name": "DescribeStateMachineForExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeStateMachineForExecutionInput"
      },
      "output": {
        "shape": "DescribeStateMachineForExecutionOutput"
      },
      "errors": [
        {
          "shape": "ExecutionDoesNotExist"
        },
        {
          "shape": "InvalidArn"
        }
      ],
      "documentation": "<p>Describes the state machine associated with a specific execution.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note> <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>"
    },
    "GetActivityTask": {
      "name": "GetActivityTask",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetActivityTaskInput"
      },
      "output": {
        "shape": "GetActivityTaskOutput"
      },
      "errors": [
        {
          "shape": "ActivityDoesNotExist"
        },
        {
          "shape": "ActivityWorkerLimitExceeded"
        },
        {
          "shape": "InvalidArn"
        }
      ],
      "documentation": "<p>Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll returns a <code>taskToken</code> with a null string.</p> <important> <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).</p> <p>Polling with <code>GetActivityTask</code> can cause latency in some implementations. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/bp-activity-pollers.html\">Avoid Latency When Polling for Activity Tasks</a> in the Step Functions Developer Guide.</p> </important>"
    },
    "GetExecutionHistory": {
      "name": "GetExecutionHistory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetExecutionHistoryInput"
      },
      "output": {
        "shape": "GetExecutionHistoryOutput"
      },
      "errors": [
        {
          "shape": "ExecutionDoesNotExist"
        },
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "InvalidToken"
        }
      ],
      "documentation": "<p>Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the <code>timeStamp</code> of the events. Use the <code>reverseOrder</code> parameter to get the latest events first.</p> <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p> <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>"
    },
    "ListActivities": {
      "name": "ListActivities",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListActivitiesInput"
      },
      "output": {
        "shape": "ListActivitiesOutput"
      },
      "errors": [
        {
          "shape": "InvalidToken"
        }
      ],
      "documentation": "<p>Lists the existing activities.</p> <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>"
    },
    "ListExecutions": {
      "name": "ListExecutions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListExecutionsInput"
      },
      "output": {
        "shape": "ListExecutionsOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "InvalidToken"
        },
        {
          "shape": "StateMachineDoesNotExist"
        },
        {
          "shape": "StateMachineTypeNotSupported"
        }
      ],
      "documentation": "<p>Lists the executions of a state machine that meet the filtering criteria. Results are sorted by time, with the most recent execution first.</p> <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note> <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>"
    },
    "ListStateMachines": {
      "name": "ListStateMachines",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListStateMachinesInput"
      },
      "output": {
        "shape": "ListStateMachinesOutput"
      },
      "errors": [
        {
          "shape": "InvalidToken"
        }
      ],
      "documentation": "<p>Lists the existing state machines.</p> <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p> <note> <p>This operation is eventually consistent. The results are best effort and may not reflect very recent updates and changes.</p> </note>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceInput"
      },
      "output": {
        "shape": "ListTagsForResourceOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "ResourceNotFound"
        }
      ],
      "documentation": "<p>List tags for a given resource.</p> <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>"
    },
    "SendTaskFailure": {
      "name": "SendTaskFailure",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendTaskFailureInput"
      },
      "output": {
        "shape": "SendTaskFailureOutput"
      },
      "errors": [
        {
          "shape": "TaskDoesNotExist"
        },
        {
          "shape": "InvalidToken"
        },
        {
          "shape": "TaskTimedOut"
        }
      ],
      "documentation": "<p>Used by activity workers and task states using the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token\">callback</a> pattern to report that the task identified by the <code>taskToken</code> failed.</p>"
    },
    "SendTaskHeartbeat": {
      "name": "SendTaskHeartbeat",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendTaskHeartbeatInput"
      },
      "output": {
        "shape": "SendTaskHeartbeatOutput"
      },
      "errors": [
        {
          "shape": "TaskDoesNotExist"
        },
        {
          "shape": "InvalidToken"
        },
        {
          "shape": "TaskTimedOut"
        }
      ],
      "documentation": "<p>Used by activity workers and task states using the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token\">callback</a> pattern to report to Step Functions that the task represented by the specified <code>taskToken</code> is still making progress. This action resets the <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state machine's Amazon States Language definition (<code>HeartbeatSeconds</code>). This action does not in itself create an event in the execution history. However, if the task times out, the execution history contains an <code>ActivityTimedOut</code> entry for activities, or a <code>TaskTimedOut</code> entry for for tasks using the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync\">job run</a> or <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token\">callback</a> pattern.</p> <note> <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received. Use <code>HeartbeatSeconds</code> to configure the timeout interval for heartbeats.</p> </note>"
    },
    "SendTaskSuccess": {
      "name": "SendTaskSuccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SendTaskSuccessInput"
      },
      "output": {
        "shape": "SendTaskSuccessOutput"
      },
      "errors": [
        {
          "shape": "TaskDoesNotExist"
        },
        {
          "shape": "InvalidOutput"
        },
        {
          "shape": "InvalidToken"
        },
        {
          "shape": "TaskTimedOut"
        }
      ],
      "documentation": "<p>Used by activity workers and task states using the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-wait-token\">callback</a> pattern to report that the task identified by the <code>taskToken</code> completed successfully.</p>"
    },
    "StartExecution": {
      "name": "StartExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartExecutionInput"
      },
      "output": {
        "shape": "StartExecutionOutput"
      },
      "errors": [
        {
          "shape": "ExecutionLimitExceeded"
        },
        {
          "shape": "ExecutionAlreadyExists"
        },
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "InvalidExecutionInput"
        },
        {
          "shape": "InvalidName"
        },
        {
          "shape": "StateMachineDoesNotExist"
        },
        {
          "shape": "StateMachineDeleting"
        }
      ],
      "documentation": "<p>Starts a state machine execution.</p> <note> <p> <code>StartExecution</code> is idempotent. If <code>StartExecution</code> is called with the same name and input as a running execution, the call will succeed and return the same response as the original request. If the execution is closed or if the input is different, it will return a 400 <code>ExecutionAlreadyExists</code> error. Names can be reused after 90 days. </p> </note>",
      "idempotent": true
    },
    "StopExecution": {
      "name": "StopExecution",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopExecutionInput"
      },
      "output": {
        "shape": "StopExecutionOutput"
      },
      "errors": [
        {
          "shape": "ExecutionDoesNotExist"
        },
        {
          "shape": "InvalidArn"
        }
      ],
      "documentation": "<p>Stops an execution.</p> <p>This API action is not supported by <code>EXPRESS</code> state machines.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceInput"
      },
      "output": {
        "shape": "TagResourceOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "ResourceNotFound"
        },
        {
          "shape": "TooManyTags"
        }
      ],
      "documentation": "<p>Add a tag to a Step Functions resource.</p> <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM Tags</a>.</p> <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceInput"
      },
      "output": {
        "shape": "UntagResourceOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "ResourceNotFound"
        }
      ],
      "documentation": "<p>Remove a tag from a Step Functions resource</p>"
    },
    "UpdateStateMachine": {
      "name": "UpdateStateMachine",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateStateMachineInput"
      },
      "output": {
        "shape": "UpdateStateMachineOutput"
      },
      "errors": [
        {
          "shape": "InvalidArn"
        },
        {
          "shape": "InvalidDefinition"
        },
        {
          "shape": "InvalidLoggingConfiguration"
        },
        {
          "shape": "MissingRequiredParameter"
        },
        {
          "shape": "StateMachineDeleting"
        },
        {
          "shape": "StateMachineDoesNotExist"
        }
      ],
      "documentation": "<p>Updates an existing state machine by modifying its <code>definition</code>, <code>roleArn</code>, or <code>loggingConfiguration</code>. Running executions will continue to use the previous <code>definition</code> and <code>roleArn</code>. You must include at least one of <code>definition</code> or <code>roleArn</code> or you will receive a <code>MissingRequiredParameter</code> error.</p> <note> <p>All <code>StartExecution</code> calls within a few seconds will use the updated <code>definition</code> and <code>roleArn</code>. Executions started immediately after calling <code>UpdateStateMachine</code> may use the previous state machine <code>definition</code> and <code>roleArn</code>. </p> </note>",
      "idempotent": true
    }
  },
  "shapes": {
    "ActivityFailedEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about an activity that failed during an execution.</p>"
    },
    "ActivityList": {
      "type": "list",
      "member": {
        "shape": "ActivityListItem"
      }
    },
    "ActivityListItem": {
      "type": "structure",
      "required": [
        "activityArn",
        "name",
        "creationDate"
      ],
      "members": {
        "activityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the activity.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the activity.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the activity is created.</p>"
        }
      },
      "documentation": "<p>Contains details about an activity.</p>"
    },
    "ActivityScheduleFailedEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about an activity schedule failure that occurred during an execution.</p>"
    },
    "ActivityScheduledEventDetails": {
      "type": "structure",
      "required": [
        "resource"
      ],
      "members": {
        "resource": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the scheduled activity.</p>"
        },
        "input": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON data input to the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "inputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the input for an execution history event.</p>"
        },
        "timeoutInSeconds": {
          "shape": "TimeoutInSeconds",
          "documentation": "<p>The maximum allowed duration of the activity task.</p>",
          "box": true
        },
        "heartbeatInSeconds": {
          "shape": "TimeoutInSeconds",
          "documentation": "<p>The maximum allowed duration between two heartbeats for the activity task.</p>",
          "box": true
        }
      },
      "documentation": "<p>Contains details about an activity scheduled during an execution.</p>"
    },
    "ActivityStartedEventDetails": {
      "type": "structure",
      "members": {
        "workerName": {
          "shape": "Identity",
          "documentation": "<p>The name of the worker that the task is assigned to. These names are provided by the workers when calling <a>GetActivityTask</a>.</p>"
        }
      },
      "documentation": "<p>Contains details about the start of an activity during an execution.</p>"
    },
    "ActivitySucceededEventDetails": {
      "type": "structure",
      "members": {
        "output": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON data output by the activity task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "outputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the output of an execution history event.</p>"
        }
      },
      "documentation": "<p>Contains details about an activity that successfully terminated during an execution.</p>"
    },
    "ActivityTimedOutEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the timeout.</p>"
        }
      },
      "documentation": "<p>Contains details about an activity timeout that occurred during an execution.</p>"
    },
    "Arn": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "CloudWatchEventsExecutionDataDetails": {
      "type": "structure",
      "members": {
        "included": {
          "shape": "included",
          "documentation": "<p>Indicates whether input or output was included in the response. Always <code>true</code> for API calls, but may be <code>false</code> for CloudWatch Events.</p>"
        }
      },
      "documentation": "<p>Provides details about execution input.</p>"
    },
    "CloudWatchLogsLogGroup": {
      "type": "structure",
      "members": {
        "logGroupArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the the CloudWatch log group to which you want your logs emitted to. The ARN must end with <code>:*</code> </p>"
        }
      },
      "documentation": "<p/>"
    },
    "ConnectorParameters": {
      "type": "string",
      "max": 262144,
      "min": 0,
      "sensitive": true
    },
    "CreateActivityInput": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the activity to create. This name must be unique for your AWS account and region for 90 days. For more information, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions\"> Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags to add to a resource.</p> <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM Tags</a>.</p> <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>"
        }
      }
    },
    "CreateActivityOutput": {
      "type": "structure",
      "required": [
        "activityArn",
        "creationDate"
      ],
      "members": {
        "activityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the created activity.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the activity is created.</p>"
        }
      }
    },
    "CreateStateMachineInput": {
      "type": "structure",
      "required": [
        "name",
        "definition",
        "roleArn"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the state machine. </p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "definition": {
          "shape": "Definition",
          "documentation": "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"
        },
        "roleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>"
        },
        "type": {
          "shape": "StateMachineType",
          "documentation": "<p>Determines whether a Standard or Express state machine is created. The default is <code>STANDARD</code>. You cannot update the <code>type</code> of a state machine once it has been created.</p>"
        },
        "loggingConfiguration": {
          "shape": "LoggingConfiguration",
          "documentation": "<p>Defines what execution history events are logged and where they are logged.</p> <note> <p>By default, the <code>level</code> is set to <code>OFF</code>. For more information see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/cloudwatch-log-level.html\">Log Levels</a> in the AWS Step Functions User Guide.</p> </note>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>Tags to be added when creating a state machine.</p> <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM Tags</a>.</p> <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>"
        }
      }
    },
    "CreateStateMachineOutput": {
      "type": "structure",
      "required": [
        "stateMachineArn",
        "creationDate"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the created state machine.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the state machine is created.</p>"
        }
      }
    },
    "Definition": {
      "type": "string",
      "max": 1048576,
      "min": 1,
      "sensitive": true
    },
    "DeleteActivityInput": {
      "type": "structure",
      "required": [
        "activityArn"
      ],
      "members": {
        "activityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the activity to delete.</p>"
        }
      }
    },
    "DeleteActivityOutput": {
      "type": "structure",
      "members": {}
    },
    "DeleteStateMachineInput": {
      "type": "structure",
      "required": [
        "stateMachineArn"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the state machine to delete.</p>"
        }
      }
    },
    "DeleteStateMachineOutput": {
      "type": "structure",
      "members": {}
    },
    "DescribeActivityInput": {
      "type": "structure",
      "required": [
        "activityArn"
      ],
      "members": {
        "activityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the activity to describe.</p>"
        }
      }
    },
    "DescribeActivityOutput": {
      "type": "structure",
      "required": [
        "activityArn",
        "name",
        "creationDate"
      ],
      "members": {
        "activityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the activity.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the activity.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the activity is created.</p>"
        }
      }
    },
    "DescribeExecutionInput": {
      "type": "structure",
      "required": [
        "executionArn"
      ],
      "members": {
        "executionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the execution to describe.</p>"
        }
      }
    },
    "DescribeExecutionOutput": {
      "type": "structure",
      "required": [
        "executionArn",
        "stateMachineArn",
        "status",
        "startDate"
      ],
      "members": {
        "executionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that id entifies the execution.</p>"
        },
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the executed stated machine.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the execution.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "status": {
          "shape": "ExecutionStatus",
          "documentation": "<p>The current status of the execution.</p>"
        },
        "startDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the execution is started.</p>"
        },
        "stopDate": {
          "shape": "Timestamp",
          "documentation": "<p>If the execution has already ended, the date the execution stopped.</p>"
        },
        "input": {
          "shape": "SensitiveData",
          "documentation": "<p>The string that contains the JSON input data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "inputDetails": {
          "shape": "CloudWatchEventsExecutionDataDetails"
        },
        "output": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON output data of the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p> <note> <p>This field is set only if the execution succeeds. If the execution fails, this field is null.</p> </note>"
        },
        "outputDetails": {
          "shape": "CloudWatchEventsExecutionDataDetails"
        }
      }
    },
    "DescribeStateMachineForExecutionInput": {
      "type": "structure",
      "required": [
        "executionArn"
      ],
      "members": {
        "executionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the execution you want state machine information for.</p>"
        }
      }
    },
    "DescribeStateMachineForExecutionOutput": {
      "type": "structure",
      "required": [
        "stateMachineArn",
        "name",
        "definition",
        "roleArn",
        "updateDate"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the state machine associated with the execution.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the state machine associated with the execution.</p>"
        },
        "definition": {
          "shape": "Definition",
          "documentation": "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"
        },
        "roleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role of the State Machine for the execution. </p>"
        },
        "updateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time the state machine associated with an execution was updated. For a newly created state machine, this is the creation date.</p>"
        },
        "loggingConfiguration": {
          "shape": "LoggingConfiguration"
        }
      }
    },
    "DescribeStateMachineInput": {
      "type": "structure",
      "required": [
        "stateMachineArn"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the state machine to describe.</p>"
        }
      }
    },
    "DescribeStateMachineOutput": {
      "type": "structure",
      "required": [
        "stateMachineArn",
        "name",
        "definition",
        "roleArn",
        "type",
        "creationDate"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the state machine.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the state machine.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "status": {
          "shape": "StateMachineStatus",
          "documentation": "<p>The current status of the state machine.</p>"
        },
        "definition": {
          "shape": "Definition",
          "documentation": "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"
        },
        "roleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role used when creating this state machine. (The IAM role maintains security by granting Step Functions access to AWS resources.)</p>"
        },
        "type": {
          "shape": "StateMachineType",
          "documentation": "<p>The <code>type</code> of the state machine (<code>STANDARD</code> or <code>EXPRESS</code>).</p>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the state machine is created.</p>"
        },
        "loggingConfiguration": {
          "shape": "LoggingConfiguration"
        }
      }
    },
    "EventId": {
      "type": "long"
    },
    "ExecutionAbortedEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about an abort of an execution.</p>"
    },
    "ExecutionFailedEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about an execution failure event.</p>"
    },
    "ExecutionList": {
      "type": "list",
      "member": {
        "shape": "ExecutionListItem"
      }
    },
    "ExecutionListItem": {
      "type": "structure",
      "required": [
        "executionArn",
        "stateMachineArn",
        "name",
        "status",
        "startDate"
      ],
      "members": {
        "executionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that id entifies the execution.</p>"
        },
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the executed state machine.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the execution.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "status": {
          "shape": "ExecutionStatus",
          "documentation": "<p>The current status of the execution.</p>"
        },
        "startDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the execution started.</p>"
        },
        "stopDate": {
          "shape": "Timestamp",
          "documentation": "<p>If the execution already ended, the date the execution stopped.</p>"
        }
      },
      "documentation": "<p>Contains details about an execution.</p>"
    },
    "ExecutionStartedEventDetails": {
      "type": "structure",
      "members": {
        "input": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON data input to the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "inputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the input for an execution history event.</p>"
        },
        "roleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role used for executing AWS Lambda tasks.</p>"
        }
      },
      "documentation": "<p>Contains details about the start of the execution.</p>"
    },
    "ExecutionStatus": {
      "type": "string",
      "enum": [
        "RUNNING",
        "SUCCEEDED",
        "FAILED",
        "TIMED_OUT",
        "ABORTED"
      ]
    },
    "ExecutionSucceededEventDetails": {
      "type": "structure",
      "members": {
        "output": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON data output by the execution. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "outputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the output of an execution history event.</p>"
        }
      },
      "documentation": "<p>Contains details about the successful termination of the execution.</p>"
    },
    "ExecutionTimedOutEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the timeout.</p>"
        }
      },
      "documentation": "<p>Contains details about the execution timeout that occurred during the execution.</p>"
    },
    "GetActivityTaskInput": {
      "type": "structure",
      "required": [
        "activityArn"
      ],
      "members": {
        "activityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task using <a>CreateActivity</a>.)</p>"
        },
        "workerName": {
          "shape": "Name",
          "documentation": "<p>You can provide an arbitrary name in order to identify the worker that the task is assigned to. This name is used when it is logged in the execution history.</p>"
        }
      }
    },
    "GetActivityTaskOutput": {
      "type": "structure",
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>A token that identifies the scheduled task. This token must be copied and included in subsequent calls to <a>SendTaskHeartbeat</a>, <a>SendTaskSuccess</a> or <a>SendTaskFailure</a> in order to report the progress or completion of the task.</p>"
        },
        "input": {
          "shape": "SensitiveDataJobInput",
          "documentation": "<p>The string that contains the JSON input data for the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        }
      }
    },
    "GetExecutionHistoryInput": {
      "type": "structure",
      "required": [
        "executionArn"
      ],
      "members": {
        "executionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the execution.</p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"
        },
        "reverseOrder": {
          "shape": "ReverseOrder",
          "documentation": "<p>Lists events in descending order of their <code>timeStamp</code>.</p>"
        },
        "nextToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"
        },
        "includeExecutionData": {
          "shape": "IncludeExecutionDataGetExecutionHistory",
          "documentation": "<p>You can select whether execution data (input or output of a history event) is returned. The default is <code>true</code>.</p>"
        }
      }
    },
    "GetExecutionHistoryOutput": {
      "type": "structure",
      "required": [
        "events"
      ],
      "members": {
        "events": {
          "shape": "HistoryEventList",
          "documentation": "<p>The list of events that occurred in the execution.</p>"
        },
        "nextToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"
        }
      }
    },
    "HistoryEvent": {
      "type": "structure",
      "required": [
        "timestamp",
        "type",
        "id"
      ],
      "members": {
        "timestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time the event occurred.</p>"
        },
        "type": {
          "shape": "HistoryEventType",
          "documentation": "<p>The type of the event.</p>"
        },
        "id": {
          "shape": "EventId",
          "documentation": "<p>The id of the event. Events are numbered sequentially, starting at one.</p>"
        },
        "previousEventId": {
          "shape": "EventId",
          "documentation": "<p>The id of the previous event.</p>"
        },
        "activityFailedEventDetails": {
          "shape": "ActivityFailedEventDetails"
        },
        "activityScheduleFailedEventDetails": {
          "shape": "ActivityScheduleFailedEventDetails",
          "documentation": "<p>Contains details about an activity schedule event that failed during an execution.</p>"
        },
        "activityScheduledEventDetails": {
          "shape": "ActivityScheduledEventDetails"
        },
        "activityStartedEventDetails": {
          "shape": "ActivityStartedEventDetails"
        },
        "activitySucceededEventDetails": {
          "shape": "ActivitySucceededEventDetails"
        },
        "activityTimedOutEventDetails": {
          "shape": "ActivityTimedOutEventDetails"
        },
        "taskFailedEventDetails": {
          "shape": "TaskFailedEventDetails",
          "documentation": "<p>Contains details about the failure of a task.</p>"
        },
        "taskScheduledEventDetails": {
          "shape": "TaskScheduledEventDetails",
          "documentation": "<p>Contains details about a task that was scheduled.</p>"
        },
        "taskStartFailedEventDetails": {
          "shape": "TaskStartFailedEventDetails",
          "documentation": "<p>Contains details about a task that failed to start.</p>"
        },
        "taskStartedEventDetails": {
          "shape": "TaskStartedEventDetails",
          "documentation": "<p>Contains details about a task that was started.</p>"
        },
        "taskSubmitFailedEventDetails": {
          "shape": "TaskSubmitFailedEventDetails",
          "documentation": "<p>Contains details about a task that where the submit failed.</p>"
        },
        "taskSubmittedEventDetails": {
          "shape": "TaskSubmittedEventDetails",
          "documentation": "<p>Contains details about a submitted task.</p>"
        },
        "taskSucceededEventDetails": {
          "shape": "TaskSucceededEventDetails",
          "documentation": "<p>Contains details about a task that succeeded.</p>"
        },
        "taskTimedOutEventDetails": {
          "shape": "TaskTimedOutEventDetails",
          "documentation": "<p>Contains details about a task that timed out.</p>"
        },
        "executionFailedEventDetails": {
          "shape": "ExecutionFailedEventDetails"
        },
        "executionStartedEventDetails": {
          "shape": "ExecutionStartedEventDetails"
        },
        "executionSucceededEventDetails": {
          "shape": "ExecutionSucceededEventDetails"
        },
        "executionAbortedEventDetails": {
          "shape": "ExecutionAbortedEventDetails"
        },
        "executionTimedOutEventDetails": {
          "shape": "ExecutionTimedOutEventDetails"
        },
        "mapStateStartedEventDetails": {
          "shape": "MapStateStartedEventDetails",
          "documentation": "<p>Contains details about Map state that was started.</p>"
        },
        "mapIterationStartedEventDetails": {
          "shape": "MapIterationEventDetails",
          "documentation": "<p>Contains details about an iteration of a Map state that was started.</p>"
        },
        "mapIterationSucceededEventDetails": {
          "shape": "MapIterationEventDetails",
          "documentation": "<p>Contains details about an iteration of a Map state that succeeded.</p>"
        },
        "mapIterationFailedEventDetails": {
          "shape": "MapIterationEventDetails",
          "documentation": "<p>Contains details about an iteration of a Map state that failed.</p>"
        },
        "mapIterationAbortedEventDetails": {
          "shape": "MapIterationEventDetails",
          "documentation": "<p>Contains details about an iteration of a Map state that was aborted.</p>"
        },
        "lambdaFunctionFailedEventDetails": {
          "shape": "LambdaFunctionFailedEventDetails"
        },
        "lambdaFunctionScheduleFailedEventDetails": {
          "shape": "LambdaFunctionScheduleFailedEventDetails"
        },
        "lambdaFunctionScheduledEventDetails": {
          "shape": "LambdaFunctionScheduledEventDetails"
        },
        "lambdaFunctionStartFailedEventDetails": {
          "shape": "LambdaFunctionStartFailedEventDetails",
          "documentation": "<p>Contains details about a lambda function that failed to start during an execution.</p>"
        },
        "lambdaFunctionSucceededEventDetails": {
          "shape": "LambdaFunctionSucceededEventDetails",
          "documentation": "<p>Contains details about a lambda function that terminated successfully during an execution.</p>"
        },
        "lambdaFunctionTimedOutEventDetails": {
          "shape": "LambdaFunctionTimedOutEventDetails"
        },
        "stateEnteredEventDetails": {
          "shape": "StateEnteredEventDetails"
        },
        "stateExitedEventDetails": {
          "shape": "StateExitedEventDetails"
        }
      },
      "documentation": "<p>Contains details about the events of an execution.</p>"
    },
    "HistoryEventExecutionDataDetails": {
      "type": "structure",
      "members": {
        "truncated": {
          "shape": "truncated",
          "documentation": "<p>Indicates whether input or output was truncated in the response. Always <code>false</code>.</p>"
        }
      },
      "documentation": "<p>Contains details about the data from an execution's events. Always <code>true</code> for API calls, but may be <code>false</code> for CloudWatch Logs.</p>"
    },
    "HistoryEventList": {
      "type": "list",
      "member": {
        "shape": "HistoryEvent"
      },
      "documentation": "<p>Contains details about the events that occurred during an execution.</p>"
    },
    "HistoryEventType": {
      "type": "string",
      "enum": [
        "ActivityFailed",
        "ActivityScheduled",
        "ActivityScheduleFailed",
        "ActivityStarted",
        "ActivitySucceeded",
        "ActivityTimedOut",
        "ChoiceStateEntered",
        "ChoiceStateExited",
        "ExecutionAborted",
        "ExecutionFailed",
        "ExecutionStarted",
        "ExecutionSucceeded",
        "ExecutionTimedOut",
        "FailStateEntered",
        "LambdaFunctionFailed",
        "LambdaFunctionScheduled",
        "LambdaFunctionScheduleFailed",
        "LambdaFunctionStarted",
        "LambdaFunctionStartFailed",
        "LambdaFunctionSucceeded",
        "LambdaFunctionTimedOut",
        "MapIterationAborted",
        "MapIterationFailed",
        "MapIterationStarted",
        "MapIterationSucceeded",
        "MapStateAborted",
        "MapStateEntered",
        "MapStateExited",
        "MapStateFailed",
        "MapStateStarted",
        "MapStateSucceeded",
        "ParallelStateAborted",
        "ParallelStateEntered",
        "ParallelStateExited",
        "ParallelStateFailed",
        "ParallelStateStarted",
        "ParallelStateSucceeded",
        "PassStateEntered",
        "PassStateExited",
        "SucceedStateEntered",
        "SucceedStateExited",
        "TaskFailed",
        "TaskScheduled",
        "TaskStarted",
        "TaskStartFailed",
        "TaskStateAborted",
        "TaskStateEntered",
        "TaskStateExited",
        "TaskSubmitFailed",
        "TaskSubmitted",
        "TaskSucceeded",
        "TaskTimedOut",
        "WaitStateAborted",
        "WaitStateEntered",
        "WaitStateExited"
      ]
    },
    "Identity": {
      "type": "string",
      "max": 256
    },
    "IncludeExecutionData": {
      "type": "boolean"
    },
    "IncludeExecutionDataGetExecutionHistory": {
      "type": "boolean",
      "box": true
    },
    "LambdaFunctionFailedEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about a lambda function that failed during an execution.</p>"
    },
    "LambdaFunctionScheduleFailedEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about a failed lambda function schedule event that occurred during an execution.</p>"
    },
    "LambdaFunctionScheduledEventDetails": {
      "type": "structure",
      "required": [
        "resource"
      ],
      "members": {
        "resource": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the scheduled lambda function.</p>"
        },
        "input": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON data input to the lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "inputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about input for an execution history event.</p>"
        },
        "timeoutInSeconds": {
          "shape": "TimeoutInSeconds",
          "documentation": "<p>The maximum allowed duration of the lambda function.</p>",
          "box": true
        }
      },
      "documentation": "<p>Contains details about a lambda function scheduled during an execution.</p>"
    },
    "LambdaFunctionStartFailedEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about a lambda function that failed to start during an execution.</p>"
    },
    "LambdaFunctionSucceededEventDetails": {
      "type": "structure",
      "members": {
        "output": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON data output by the lambda function. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "outputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the output of an execution history event.</p>"
        }
      },
      "documentation": "<p>Contains details about a lambda function that successfully terminated during an execution.</p>"
    },
    "LambdaFunctionTimedOutEventDetails": {
      "type": "structure",
      "members": {
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the timeout.</p>"
        }
      },
      "documentation": "<p>Contains details about a lambda function timeout that occurred during an execution.</p>"
    },
    "ListActivitiesInput": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"
        },
        "nextToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"
        }
      }
    },
    "ListActivitiesOutput": {
      "type": "structure",
      "required": [
        "activities"
      ],
      "members": {
        "activities": {
          "shape": "ActivityList",
          "documentation": "<p>The list of activities.</p>"
        },
        "nextToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"
        }
      }
    },
    "ListExecutionsInput": {
      "type": "structure",
      "required": [
        "stateMachineArn"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>"
        },
        "statusFilter": {
          "shape": "ExecutionStatus",
          "documentation": "<p>If specified, only list the executions whose current execution status matches the given filter.</p>"
        },
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"
        },
        "nextToken": {
          "shape": "ListExecutionsPageToken",
          "documentation": "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"
        }
      }
    },
    "ListExecutionsOutput": {
      "type": "structure",
      "required": [
        "executions"
      ],
      "members": {
        "executions": {
          "shape": "ExecutionList",
          "documentation": "<p>The list of matching executions.</p>"
        },
        "nextToken": {
          "shape": "ListExecutionsPageToken",
          "documentation": "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"
        }
      }
    },
    "ListExecutionsPageToken": {
      "type": "string",
      "max": 3096,
      "min": 1
    },
    "ListStateMachinesInput": {
      "type": "structure",
      "members": {
        "maxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000. A value of 0 uses the default.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>"
        },
        "nextToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"
        }
      }
    },
    "ListStateMachinesOutput": {
      "type": "structure",
      "required": [
        "stateMachines"
      ],
      "members": {
        "stateMachines": {
          "shape": "StateMachineList"
        },
        "nextToken": {
          "shape": "PageToken",
          "documentation": "<p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken</i> error.</p>"
        }
      }
    },
    "ListTagsForResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>"
        }
      }
    },
    "ListTagsForResourceOutput": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagList",
          "documentation": "<p>An array of tags associated with the resource.</p>"
        }
      }
    },
    "LogDestination": {
      "type": "structure",
      "members": {
        "cloudWatchLogsLogGroup": {
          "shape": "CloudWatchLogsLogGroup",
          "documentation": "<p>An object describing a CloudWatch log group. For more information, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-loggroup.html\">AWS::Logs::LogGroup</a> in the AWS CloudFormation User Guide.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "LogDestinationList": {
      "type": "list",
      "member": {
        "shape": "LogDestination"
      }
    },
    "LogLevel": {
      "type": "string",
      "enum": [
        "ALL",
        "ERROR",
        "FATAL",
        "OFF"
      ]
    },
    "LoggingConfiguration": {
      "type": "structure",
      "members": {
        "level": {
          "shape": "LogLevel",
          "documentation": "<p>Defines which category of execution history events are logged.</p>"
        },
        "includeExecutionData": {
          "shape": "IncludeExecutionData",
          "documentation": "<p>Determines whether execution data is included in your log. When set to <code>false</code>, data is excluded.</p>"
        },
        "destinations": {
          "shape": "LogDestinationList",
          "documentation": "<p>An array of objects that describes where your execution history events will be logged. Limited to size 1. Required, if your log level is not set to <code>OFF</code>.</p>"
        }
      },
      "documentation": "<p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs options.</p>"
    },
    "MapIterationEventDetails": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the iteration’s parent Map state.</p>"
        },
        "index": {
          "shape": "UnsignedInteger",
          "documentation": "<p>The index of the array belonging to the Map state iteration.</p>"
        }
      },
      "documentation": "<p>Contains details about an iteration of a Map state.</p>"
    },
    "MapStateStartedEventDetails": {
      "type": "structure",
      "members": {
        "length": {
          "shape": "UnsignedInteger",
          "documentation": "<p>The size of the array for Map state iterations.</p>"
        }
      },
      "documentation": "<p>Details about a Map state that was started.</p>"
    },
    "Name": {
      "type": "string",
      "max": 80,
      "min": 1
    },
    "PageSize": {
      "type": "integer",
      "max": 1000,
      "min": 0
    },
    "PageToken": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "ReverseOrder": {
      "type": "boolean"
    },
    "SendTaskFailureInput": {
      "type": "structure",
      "required": [
        "taskToken"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>"
        },
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      }
    },
    "SendTaskFailureOutput": {
      "type": "structure",
      "members": {}
    },
    "SendTaskHeartbeatInput": {
      "type": "structure",
      "required": [
        "taskToken"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>"
        }
      }
    },
    "SendTaskHeartbeatOutput": {
      "type": "structure",
      "members": {}
    },
    "SendTaskSuccessInput": {
      "type": "structure",
      "required": [
        "taskToken",
        "output"
      ],
      "members": {
        "taskToken": {
          "shape": "TaskToken",
          "documentation": "<p>The token that represents this task. Task tokens are generated by Step Functions when tasks are assigned to a worker, or in the <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/input-output-contextobject.html\">context object</a> when a workflow enters a task state. See <a>GetActivityTaskOutput$taskToken</a>.</p>"
        },
        "output": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON output of the task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        }
      }
    },
    "SendTaskSuccessOutput": {
      "type": "structure",
      "members": {}
    },
    "SensitiveCause": {
      "type": "string",
      "max": 32768,
      "min": 0,
      "sensitive": true
    },
    "SensitiveData": {
      "type": "string",
      "max": 262144,
      "sensitive": true
    },
    "SensitiveDataJobInput": {
      "type": "string",
      "max": 262144,
      "sensitive": true
    },
    "SensitiveError": {
      "type": "string",
      "max": 256,
      "min": 0,
      "sensitive": true
    },
    "StartExecutionInput": {
      "type": "structure",
      "required": [
        "stateMachineArn"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the state machine to execute.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the execution. This name must be unique for your AWS account, region, and state machine for 90 days. For more information, see <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions\"> Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "input": {
          "shape": "SensitiveData",
          "documentation": "<p>The string that contains the JSON input data for the execution, for example:</p> <p> <code>\"input\": \"{\\\"first_name\\\" : \\\"test\\\"}\"</code> </p> <note> <p>If you don't include any JSON input data, you still must include the two braces, for example: <code>\"input\": \"{}\"</code> </p> </note> <p>Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        }
      }
    },
    "StartExecutionOutput": {
      "type": "structure",
      "required": [
        "executionArn",
        "startDate"
      ],
      "members": {
        "executionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that id entifies the execution.</p>"
        },
        "startDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the execution is started.</p>"
        }
      }
    },
    "StateEnteredEventDetails": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the state.</p>"
        },
        "input": {
          "shape": "SensitiveData",
          "documentation": "<p>The string that contains the JSON input data for the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "inputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the input for an execution history event.</p>"
        }
      },
      "documentation": "<p>Contains details about a state entered during an execution.</p>"
    },
    "StateExitedEventDetails": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the state.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "output": {
          "shape": "SensitiveData",
          "documentation": "<p>The JSON output data of the state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "outputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the output of an execution history event.</p>"
        }
      },
      "documentation": "<p>Contains details about an exit from a state during an execution.</p>"
    },
    "StateMachineList": {
      "type": "list",
      "member": {
        "shape": "StateMachineListItem"
      }
    },
    "StateMachineListItem": {
      "type": "structure",
      "required": [
        "stateMachineArn",
        "name",
        "type",
        "creationDate"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the state machine.</p>"
        },
        "name": {
          "shape": "Name",
          "documentation": "<p>The name of the state machine.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>white space</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>\" # % \\ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul> <p>To enable logging with CloudWatch Logs, the name should only contain 0-9, A-Z, a-z, - and _.</p>"
        },
        "type": {
          "shape": "StateMachineType",
          "documentation": "<p/>"
        },
        "creationDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the state machine is created.</p>"
        }
      },
      "documentation": "<p>Contains details about the state machine.</p>"
    },
    "StateMachineStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "DELETING"
      ]
    },
    "StateMachineType": {
      "type": "string",
      "enum": [
        "STANDARD",
        "EXPRESS"
      ]
    },
    "StopExecutionInput": {
      "type": "structure",
      "required": [
        "executionArn"
      ],
      "members": {
        "executionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the execution to stop.</p>"
        },
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      }
    },
    "StopExecutionOutput": {
      "type": "structure",
      "required": [
        "stopDate"
      ],
      "members": {
        "stopDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date the execution is stopped.</p>"
        }
      }
    },
    "Tag": {
      "type": "structure",
      "members": {
        "key": {
          "shape": "TagKey",
          "documentation": "<p>The key of a tag.</p>"
        },
        "value": {
          "shape": "TagValue",
          "documentation": "<p>The value of a tag.</p>"
        }
      },
      "documentation": "<p>Tags are key-value pairs that can be associated with Step Functions state machines and activities.</p> <p>An array of key-value pairs. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html\">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>, and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html\">Controlling Access Using IAM Tags</a>.</p> <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The list of tags to add to a resource.</p> <p>Tags may only contain Unicode letters, digits, white space, or these symbols: <code>_ . : / = + - @</code>.</p>"
        }
      }
    },
    "TagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "TaskFailedEventDetails": {
      "type": "structure",
      "required": [
        "resourceType",
        "resource"
      ],
      "members": {
        "resourceType": {
          "shape": "Name",
          "documentation": "<p>The action of the resource called by a task state.</p>"
        },
        "resource": {
          "shape": "Name",
          "documentation": "<p>The service name of the resource in a task state.</p>"
        },
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about a task failure event.</p>"
    },
    "TaskScheduledEventDetails": {
      "type": "structure",
      "required": [
        "resourceType",
        "resource",
        "region",
        "parameters"
      ],
      "members": {
        "resourceType": {
          "shape": "Name",
          "documentation": "<p>The action of the resource called by a task state.</p>"
        },
        "resource": {
          "shape": "Name",
          "documentation": "<p>The service name of the resource in a task state.</p>"
        },
        "region": {
          "shape": "Name",
          "documentation": "<p>The region of the scheduled task</p>"
        },
        "parameters": {
          "shape": "ConnectorParameters",
          "documentation": "<p>The JSON data passed to the resource referenced in a task state. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "timeoutInSeconds": {
          "shape": "TimeoutInSeconds",
          "documentation": "<p>The maximum allowed duration of the task.</p>",
          "box": true
        },
        "heartbeatInSeconds": {
          "shape": "TimeoutInSeconds",
          "documentation": "<p>The maximum allowed duration between two heartbeats for the task.</p>",
          "box": true
        }
      },
      "documentation": "<p>Contains details about a task scheduled during an execution.</p>"
    },
    "TaskStartFailedEventDetails": {
      "type": "structure",
      "required": [
        "resourceType",
        "resource"
      ],
      "members": {
        "resourceType": {
          "shape": "Name",
          "documentation": "<p>The action of the resource called by a task state.</p>"
        },
        "resource": {
          "shape": "Name",
          "documentation": "<p>The service name of the resource in a task state.</p>"
        },
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about a task that failed to start during an execution.</p>"
    },
    "TaskStartedEventDetails": {
      "type": "structure",
      "required": [
        "resourceType",
        "resource"
      ],
      "members": {
        "resourceType": {
          "shape": "Name",
          "documentation": "<p>The action of the resource called by a task state.</p>"
        },
        "resource": {
          "shape": "Name",
          "documentation": "<p>The service name of the resource in a task state.</p>"
        }
      },
      "documentation": "<p>Contains details about the start of a task during an execution.</p>"
    },
    "TaskSubmitFailedEventDetails": {
      "type": "structure",
      "required": [
        "resourceType",
        "resource"
      ],
      "members": {
        "resourceType": {
          "shape": "Name",
          "documentation": "<p>The action of the resource called by a task state.</p>"
        },
        "resource": {
          "shape": "Name",
          "documentation": "<p>The service name of the resource in a task state.</p>"
        },
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about a task that failed to submit during an execution.</p>"
    },
    "TaskSubmittedEventDetails": {
      "type": "structure",
      "required": [
        "resourceType",
        "resource"
      ],
      "members": {
        "resourceType": {
          "shape": "Name",
          "documentation": "<p>The action of the resource called by a task state.</p>"
        },
        "resource": {
          "shape": "Name",
          "documentation": "<p>The service name of the resource in a task state.</p>"
        },
        "output": {
          "shape": "SensitiveData",
          "documentation": "<p>The response from a resource when a task has started. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "outputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the output of an execution history event.</p>"
        }
      },
      "documentation": "<p>Contains details about a task submitted to a resource .</p>"
    },
    "TaskSucceededEventDetails": {
      "type": "structure",
      "required": [
        "resourceType",
        "resource"
      ],
      "members": {
        "resourceType": {
          "shape": "Name",
          "documentation": "<p>The action of the resource called by a task state.</p>"
        },
        "resource": {
          "shape": "Name",
          "documentation": "<p>The service name of the resource in a task state.</p>"
        },
        "output": {
          "shape": "SensitiveData",
          "documentation": "<p>The full JSON response from a resource when a task has succeeded. This response becomes the output of the related task. Length constraints apply to the payload size, and are expressed as bytes in UTF-8 encoding.</p>"
        },
        "outputDetails": {
          "shape": "HistoryEventExecutionDataDetails",
          "documentation": "<p>Contains details about the output of an execution history event.</p>"
        }
      },
      "documentation": "<p>Contains details about the successful completion of a task state.</p>"
    },
    "TaskTimedOutEventDetails": {
      "type": "structure",
      "required": [
        "resourceType",
        "resource"
      ],
      "members": {
        "resourceType": {
          "shape": "Name",
          "documentation": "<p>The action of the resource called by a task state.</p>"
        },
        "resource": {
          "shape": "Name",
          "documentation": "<p>The service name of the resource in a task state.</p>"
        },
        "error": {
          "shape": "SensitiveError",
          "documentation": "<p>The error code of the failure.</p>"
        },
        "cause": {
          "shape": "SensitiveCause",
          "documentation": "<p>A more detailed explanation of the cause of the failure.</p>"
        }
      },
      "documentation": "<p>Contains details about a resource timeout that occurred during an execution.</p>"
    },
    "TaskToken": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "TimeoutInSeconds": {
      "type": "long"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UnsignedInteger": {
      "type": "integer",
      "min": 0
    },
    "UntagResourceInput": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the Step Functions state machine or activity.</p>"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The list of tags to remove from the resource.</p>"
        }
      }
    },
    "UntagResourceOutput": {
      "type": "structure",
      "members": {}
    },
    "UpdateStateMachineInput": {
      "type": "structure",
      "required": [
        "stateMachineArn"
      ],
      "members": {
        "stateMachineArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the state machine.</p>"
        },
        "definition": {
          "shape": "Definition",
          "documentation": "<p>The Amazon States Language definition of the state machine. See <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html\">Amazon States Language</a>.</p>"
        },
        "roleArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role of the state machine.</p>"
        },
        "loggingConfiguration": {
          "shape": "LoggingConfiguration",
          "documentation": "<p>The <code>LoggingConfiguration</code> data type is used to set CloudWatch Logs options.</p>"
        }
      }
    },
    "UpdateStateMachineOutput": {
      "type": "structure",
      "required": [
        "updateDate"
      ],
      "members": {
        "updateDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time the state machine was updated.</p>"
        }
      }
    },
    "included": {
      "type": "boolean"
    },
    "truncated": {
      "type": "boolean"
    }
  },
  "documentation": "<fullname>AWS Step Functions</fullname> <p>AWS Step Functions is a service that lets you coordinate the components of distributed applications and microservices using visual workflows.</p> <p>You can use Step Functions to build applications from individual components, each of which performs a discrete function, or <i>task</i>, allowing you to scale and change applications quickly. Step Functions provides a console that helps visualize the components of your application as a series of steps. Step Functions automatically triggers and tracks each step, and retries steps when there are errors, so your application executes predictably and in the right order every time. Step Functions logs the state of each step, so you can quickly diagnose and debug any issues.</p> <p>Step Functions manages operations and underlying infrastructure to ensure your application is available at any scale. You can run tasks on AWS, your own servers, or any system that has access to AWS. You can access and use Step Functions using the console, the AWS SDKs, or an HTTP API. For more information about Step Functions, see the <i> <a href=\"https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html\">AWS Step Functions Developer Guide</a> </i>.</p>"
}
]===]))
