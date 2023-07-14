local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-09-29",
    "endpointPrefix": "data.jobs.iot",
    "protocol": "rest-json",
    "serviceFullName": "AWS IoT Jobs Data Plane",
    "serviceId": "IoT Jobs Data Plane",
    "signatureVersion": "v4",
    "signingName": "iot-jobs-data",
    "uid": "iot-jobs-data-2017-09-29"
  },
  "operations": {
    "DescribeJobExecution": {
      "name": "DescribeJobExecution",
      "http": {
        "method": "GET",
        "requestUri": "/things/{thingName}/jobs/{jobId}"
      },
      "input": {
        "shape": "DescribeJobExecutionRequest"
      },
      "output": {
        "shape": "DescribeJobExecutionResponse"
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
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "CertificateValidationException"
        },
        {
          "shape": "TerminalStateException"
        }
      ],
      "documentation": "<p>Gets details of a job execution.</p>"
    },
    "GetPendingJobExecutions": {
      "name": "GetPendingJobExecutions",
      "http": {
        "method": "GET",
        "requestUri": "/things/{thingName}/jobs"
      },
      "input": {
        "shape": "GetPendingJobExecutionsRequest"
      },
      "output": {
        "shape": "GetPendingJobExecutionsResponse"
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
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "CertificateValidationException"
        }
      ],
      "documentation": "<p>Gets the list of all jobs for a thing that are not in a terminal status.</p>"
    },
    "StartNextPendingJobExecution": {
      "name": "StartNextPendingJobExecution",
      "http": {
        "method": "PUT",
        "requestUri": "/things/{thingName}/jobs/$next"
      },
      "input": {
        "shape": "StartNextPendingJobExecutionRequest"
      },
      "output": {
        "shape": "StartNextPendingJobExecutionResponse"
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
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "CertificateValidationException"
        }
      ],
      "documentation": "<p>Gets and starts the next pending (status IN_PROGRESS or QUEUED) job execution for a thing.</p>"
    },
    "UpdateJobExecution": {
      "name": "UpdateJobExecution",
      "http": {
        "method": "POST",
        "requestUri": "/things/{thingName}/jobs/{jobId}"
      },
      "input": {
        "shape": "UpdateJobExecutionRequest"
      },
      "output": {
        "shape": "UpdateJobExecutionResponse"
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
          "shape": "ServiceUnavailableException"
        },
        {
          "shape": "CertificateValidationException"
        },
        {
          "shape": "InvalidStateTransitionException"
        }
      ],
      "documentation": "<p>Updates the status of a job execution.</p>"
    }
  },
  "shapes": {
    "ApproximateSecondsBeforeTimedOut": {
      "type": "long"
    },
    "DescribeJobExecutionJobId": {
      "type": "string",
      "pattern": "[a-zA-Z0-9_-]+|^\\$next"
    },
    "DescribeJobExecutionRequest": {
      "type": "structure",
      "required": [
        "jobId",
        "thingName"
      ],
      "members": {
        "jobId": {
          "shape": "DescribeJobExecutionJobId",
          "documentation": "<p>The unique identifier assigned to this job when it was created.</p>",
          "location": "uri",
          "locationName": "jobId"
        },
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The thing name associated with the device the job execution is running on.</p>",
          "location": "uri",
          "locationName": "thingName"
        },
        "includeJobDocument": {
          "shape": "IncludeJobDocument",
          "documentation": "<p>Optional. When set to true, the response contains the job document. The default is false.</p>",
          "location": "querystring",
          "locationName": "includeJobDocument"
        },
        "executionNumber": {
          "shape": "ExecutionNumber",
          "documentation": "<p>Optional. A number that identifies a particular job execution on a particular device. If not specified, the latest job execution is returned.</p>",
          "location": "querystring",
          "locationName": "executionNumber"
        }
      }
    },
    "DescribeJobExecutionResponse": {
      "type": "structure",
      "members": {
        "execution": {
          "shape": "JobExecution",
          "documentation": "<p>Contains data about a job execution.</p>"
        }
      }
    },
    "DetailsKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9:_-]+"
    },
    "DetailsMap": {
      "type": "map",
      "key": {
        "shape": "DetailsKey"
      },
      "value": {
        "shape": "DetailsValue"
      }
    },
    "DetailsValue": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[^\\p{C}]*+"
    },
    "ExecutionNumber": {
      "type": "long"
    },
    "ExpectedVersion": {
      "type": "long"
    },
    "GetPendingJobExecutionsRequest": {
      "type": "structure",
      "required": [
        "thingName"
      ],
      "members": {
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the thing that is executing the job.</p>",
          "location": "uri",
          "locationName": "thingName"
        }
      }
    },
    "GetPendingJobExecutionsResponse": {
      "type": "structure",
      "members": {
        "inProgressJobs": {
          "shape": "JobExecutionSummaryList",
          "documentation": "<p>A list of JobExecutionSummary objects with status IN_PROGRESS.</p>"
        },
        "queuedJobs": {
          "shape": "JobExecutionSummaryList",
          "documentation": "<p>A list of JobExecutionSummary objects with status QUEUED.</p>"
        }
      }
    },
    "IncludeExecutionState": {
      "type": "boolean"
    },
    "IncludeJobDocument": {
      "type": "boolean"
    },
    "JobDocument": {
      "type": "string",
      "max": 32768
    },
    "JobExecution": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The unique identifier you assigned to this job when it was created.</p>"
        },
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the thing that is executing the job.</p>"
        },
        "status": {
          "shape": "JobExecutionStatus",
          "documentation": "<p>The status of the job execution. Can be one of: \"QUEUED\", \"IN_PROGRESS\", \"FAILED\", \"SUCCESS\", \"CANCELED\", \"REJECTED\", or \"REMOVED\".</p>"
        },
        "statusDetails": {
          "shape": "DetailsMap",
          "documentation": "<p>A collection of name/value pairs that describe the status of the job execution.</p>"
        },
        "queuedAt": {
          "shape": "QueuedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the job execution was enqueued.</p>"
        },
        "startedAt": {
          "shape": "StartedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the job execution was started.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the job execution was last updated. </p>"
        },
        "approximateSecondsBeforeTimedOut": {
          "shape": "ApproximateSecondsBeforeTimedOut",
          "documentation": "<p>The estimated number of seconds that remain before the job execution status will be changed to <code>TIMED_OUT</code>.</p>"
        },
        "versionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version of the job execution. Job execution versions are incremented each time they are updated by a device.</p>"
        },
        "executionNumber": {
          "shape": "ExecutionNumber",
          "documentation": "<p>A number that identifies a particular job execution on a particular device. It can be used later in commands that return or update job execution information.</p>"
        },
        "jobDocument": {
          "shape": "JobDocument",
          "documentation": "<p>The content of the job document.</p>"
        }
      },
      "documentation": "<p>Contains data about a job execution.</p>"
    },
    "JobExecutionState": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "JobExecutionStatus",
          "documentation": "<p>The status of the job execution. Can be one of: \"QUEUED\", \"IN_PROGRESS\", \"FAILED\", \"SUCCESS\", \"CANCELED\", \"REJECTED\", or \"REMOVED\".</p>"
        },
        "statusDetails": {
          "shape": "DetailsMap",
          "documentation": "<p>A collection of name/value pairs that describe the status of the job execution.</p>"
        },
        "versionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version of the job execution. Job execution versions are incremented each time they are updated by a device.</p>"
        }
      },
      "documentation": "<p>Contains data about the state of a job execution.</p>"
    },
    "JobExecutionStatus": {
      "type": "string",
      "enum": [
        "QUEUED",
        "IN_PROGRESS",
        "SUCCEEDED",
        "FAILED",
        "TIMED_OUT",
        "REJECTED",
        "REMOVED",
        "CANCELED"
      ]
    },
    "JobExecutionSummary": {
      "type": "structure",
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The unique identifier you assigned to this job when it was created.</p>"
        },
        "queuedAt": {
          "shape": "QueuedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the job execution was enqueued.</p>"
        },
        "startedAt": {
          "shape": "StartedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the job execution started.</p>"
        },
        "lastUpdatedAt": {
          "shape": "LastUpdatedAt",
          "documentation": "<p>The time, in milliseconds since the epoch, when the job execution was last updated.</p>"
        },
        "versionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives an update from a device.</p>"
        },
        "executionNumber": {
          "shape": "ExecutionNumber",
          "documentation": "<p>A number that identifies a particular job execution on a particular device.</p>"
        }
      },
      "documentation": "<p>Contains a subset of information about a job execution.</p>"
    },
    "JobExecutionSummaryList": {
      "type": "list",
      "member": {
        "shape": "JobExecutionSummary"
      }
    },
    "JobId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[a-zA-Z0-9_-]+"
    },
    "LastUpdatedAt": {
      "type": "long"
    },
    "QueuedAt": {
      "type": "long"
    },
    "StartNextPendingJobExecutionRequest": {
      "type": "structure",
      "required": [
        "thingName"
      ],
      "members": {
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the thing associated with the device.</p>",
          "location": "uri",
          "locationName": "thingName"
        },
        "statusDetails": {
          "shape": "DetailsMap",
          "documentation": "<p>A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.</p>"
        },
        "stepTimeoutInMinutes": {
          "shape": "StepTimeoutInMinutes",
          "documentation": "<p>Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by calling <code>UpdateJobExecution</code>, setting the status to <code>IN_PROGRESS</code> and specifying a new timeout value in field <code>stepTimeoutInMinutes</code>) the job execution status will be automatically set to <code>TIMED_OUT</code>. Note that setting this timeout has no effect on that job execution timeout which may have been specified when the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>"
        }
      }
    },
    "StartNextPendingJobExecutionResponse": {
      "type": "structure",
      "members": {
        "execution": {
          "shape": "JobExecution",
          "documentation": "<p>A JobExecution object.</p>"
        }
      }
    },
    "StartedAt": {
      "type": "long"
    },
    "StepTimeoutInMinutes": {
      "type": "long"
    },
    "ThingName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9:_-]+"
    },
    "UpdateJobExecutionRequest": {
      "type": "structure",
      "required": [
        "jobId",
        "thingName",
        "status"
      ],
      "members": {
        "jobId": {
          "shape": "JobId",
          "documentation": "<p>The unique identifier assigned to this job when it was created.</p>",
          "location": "uri",
          "locationName": "jobId"
        },
        "thingName": {
          "shape": "ThingName",
          "documentation": "<p>The name of the thing associated with the device.</p>",
          "location": "uri",
          "locationName": "thingName"
        },
        "status": {
          "shape": "JobExecutionStatus",
          "documentation": "<p>The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified on every update.</p>"
        },
        "statusDetails": {
          "shape": "DetailsMap",
          "documentation": "<p> Optional. A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.</p>"
        },
        "stepTimeoutInMinutes": {
          "shape": "StepTimeoutInMinutes",
          "documentation": "<p>Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by again calling <code>UpdateJobExecution</code>, setting the status to <code>IN_PROGRESS</code> and specifying a new timeout value in this field) the job execution status will be automatically set to <code>TIMED_OUT</code>. Note that setting or resetting this timeout has no effect on that job execution timeout which may have been specified when the job was created (<code>CreateJob</code> using field <code>timeoutConfig</code>).</p>"
        },
        "expectedVersion": {
          "shape": "ExpectedVersion",
          "documentation": "<p>Optional. The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)</p>"
        },
        "includeJobExecutionState": {
          "shape": "IncludeExecutionState",
          "documentation": "<p>Optional. When included and set to true, the response contains the JobExecutionState data. The default is false.</p>"
        },
        "includeJobDocument": {
          "shape": "IncludeJobDocument",
          "documentation": "<p>Optional. When set to true, the response contains the job document. The default is false.</p>"
        },
        "executionNumber": {
          "shape": "ExecutionNumber",
          "documentation": "<p>Optional. A number that identifies a particular job execution on a particular device.</p>"
        }
      }
    },
    "UpdateJobExecutionResponse": {
      "type": "structure",
      "members": {
        "executionState": {
          "shape": "JobExecutionState",
          "documentation": "<p>A JobExecutionState object.</p>"
        },
        "jobDocument": {
          "shape": "JobDocument",
          "documentation": "<p>The contents of the Job Documents.</p>"
        }
      }
    },
    "VersionNumber": {
      "type": "long"
    }
  },
  "documentation": "<p>AWS IoT Jobs is a service that allows you to define a set of jobs — remote operations that are sent to and executed on one or more devices connected to AWS IoT. For example, you can define a job that instructs a set of devices to download and install application or firmware updates, reboot, rotate certificates, or perform remote troubleshooting operations.</p> <p> To create a job, you make a job document which is a description of the remote operations to be performed, and you specify a list of targets that should perform the operations. The targets can be individual things, thing groups or both.</p> <p> AWS IoT Jobs sends a message to inform the targets that a job is available. The target starts the execution of the job by downloading the job document, performing the operations it specifies, and reporting its progress to AWS IoT. The Jobs service provides commands to track the progress of a job on a specific target and for all the targets of the job</p>"
}
]===]))
