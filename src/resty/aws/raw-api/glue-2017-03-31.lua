local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-03-31",
    "endpointPrefix": "glue",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "AWS Glue",
    "serviceId": "Glue",
    "signatureVersion": "v4",
    "targetPrefix": "AWSGlue",
    "uid": "glue-2017-03-31"
  },
  "operations": {
    "BatchCreatePartition": {
      "name": "BatchCreatePartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchCreatePartitionRequest"
      },
      "output": {
        "shape": "BatchCreatePartitionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Creates one or more partitions in a batch operation.</p>"
    },
    "BatchDeleteConnection": {
      "name": "BatchDeleteConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeleteConnectionRequest"
      },
      "output": {
        "shape": "BatchDeleteConnectionResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes a list of connection definitions from the Data Catalog.</p>"
    },
    "BatchDeletePartition": {
      "name": "BatchDeletePartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeletePartitionRequest"
      },
      "output": {
        "shape": "BatchDeletePartitionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes one or more partitions in a batch operation.</p>"
    },
    "BatchDeleteTable": {
      "name": "BatchDeleteTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeleteTableRequest"
      },
      "output": {
        "shape": "BatchDeleteTableResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes multiple tables at once.</p> <note> <p>After completing this operation, you no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these \"orphaned\" resources asynchronously in a timely manner, at the discretion of the service.</p> <p>To ensure the immediate deletion of all related resources, before calling <code>BatchDeleteTable</code>, use <code>DeleteTableVersion</code> or <code>BatchDeleteTableVersion</code>, and <code>DeletePartition</code> or <code>BatchDeletePartition</code>, to delete any resources that belong to the table.</p> </note>"
    },
    "BatchDeleteTableVersion": {
      "name": "BatchDeleteTableVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeleteTableVersionRequest"
      },
      "output": {
        "shape": "BatchDeleteTableVersionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes a specified batch of versions of a table.</p>"
    },
    "BatchGetCrawlers": {
      "name": "BatchGetCrawlers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetCrawlersRequest"
      },
      "output": {
        "shape": "BatchGetCrawlersResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Returns a list of resource metadata for a given list of crawler names. After calling the <code>ListCrawlers</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.</p>"
    },
    "BatchGetDevEndpoints": {
      "name": "BatchGetDevEndpoints",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetDevEndpointsRequest"
      },
      "output": {
        "shape": "BatchGetDevEndpointsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns a list of resource metadata for a given list of development endpoint names. After calling the <code>ListDevEndpoints</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.</p>"
    },
    "BatchGetJobs": {
      "name": "BatchGetJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetJobsRequest"
      },
      "output": {
        "shape": "BatchGetJobsResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns a list of resource metadata for a given list of job names. After calling the <code>ListJobs</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags. </p>"
    },
    "BatchGetPartition": {
      "name": "BatchGetPartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetPartitionRequest"
      },
      "output": {
        "shape": "BatchGetPartitionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves partitions in a batch request.</p>"
    },
    "BatchGetTriggers": {
      "name": "BatchGetTriggers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetTriggersRequest"
      },
      "output": {
        "shape": "BatchGetTriggersResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns a list of resource metadata for a given list of trigger names. After calling the <code>ListTriggers</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.</p>"
    },
    "BatchGetWorkflows": {
      "name": "BatchGetWorkflows",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetWorkflowsRequest"
      },
      "output": {
        "shape": "BatchGetWorkflowsResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Returns a list of resource metadata for a given list of workflow names. After calling the <code>ListWorkflows</code> operation, you can call this operation to access the data to which you have been granted permissions. This operation supports all IAM permissions, including permission conditions that uses tags.</p>"
    },
    "BatchStopJobRun": {
      "name": "BatchStopJobRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchStopJobRunRequest"
      },
      "output": {
        "shape": "BatchStopJobRunResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Stops one or more job runs for a specified job definition.</p>"
    },
    "CancelMLTaskRun": {
      "name": "CancelMLTaskRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelMLTaskRunRequest"
      },
      "output": {
        "shape": "CancelMLTaskRunResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Cancels (stops) a task run. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can cancel a machine learning task run at any time by calling <code>CancelMLTaskRun</code> with a task run's parent transform's <code>TransformID</code> and the task run's <code>TaskRunId</code>. </p>"
    },
    "CreateClassifier": {
      "name": "CreateClassifier",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateClassifierRequest"
      },
      "output": {
        "shape": "CreateClassifierResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Creates a classifier in the user's account. This can be a <code>GrokClassifier</code>, an <code>XMLClassifier</code>, a <code>JsonClassifier</code>, or a <code>CsvClassifier</code>, depending on which field of the request is present.</p>"
    },
    "CreateConnection": {
      "name": "CreateConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateConnectionRequest"
      },
      "output": {
        "shape": "CreateConnectionResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Creates a connection definition in the Data Catalog.</p>"
    },
    "CreateCrawler": {
      "name": "CreateCrawler",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateCrawlerRequest"
      },
      "output": {
        "shape": "CreateCrawlerResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        }
      ],
      "documentation": "<p>Creates a new crawler with specified targets, role, configuration, and optional schedule. At least one crawl target must be specified, in the <code>s3Targets</code> field, the <code>jdbcTargets</code> field, or the <code>DynamoDBTargets</code> field.</p>"
    },
    "CreateDatabase": {
      "name": "CreateDatabase",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDatabaseRequest"
      },
      "output": {
        "shape": "CreateDatabaseResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Creates a new database in a Data Catalog.</p>"
    },
    "CreateDevEndpoint": {
      "name": "CreateDevEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateDevEndpointRequest"
      },
      "output": {
        "shape": "CreateDevEndpointResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        }
      ],
      "documentation": "<p>Creates a new development endpoint.</p>"
    },
    "CreateJob": {
      "name": "CreateJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateJobRequest"
      },
      "output": {
        "shape": "CreateJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Creates a new job definition.</p>"
    },
    "CreateMLTransform": {
      "name": "CreateMLTransform",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateMLTransformRequest"
      },
      "output": {
        "shape": "CreateMLTransformResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        }
      ],
      "documentation": "<p>Creates an AWS Glue machine learning transform. This operation creates the transform and all the necessary parameters to train it.</p> <p>Call this operation as the first step in the process of using a machine learning transform (such as the <code>FindMatches</code> transform) for deduplicating data. You can provide an optional <code>Description</code>, in addition to the parameters that you want to use for your algorithm.</p> <p>You must also specify certain parameters for the tasks that AWS Glue runs on your behalf as part of learning from your data and creating a high-quality machine learning transform. These parameters include <code>Role</code>, and optionally, <code>AllocatedCapacity</code>, <code>Timeout</code>, and <code>MaxRetries</code>. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html\">Jobs</a>.</p>"
    },
    "CreatePartition": {
      "name": "CreatePartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePartitionRequest"
      },
      "output": {
        "shape": "CreatePartitionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Creates a new partition.</p>"
    },
    "CreateScript": {
      "name": "CreateScript",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateScriptRequest"
      },
      "output": {
        "shape": "CreateScriptResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Transforms a directed acyclic graph (DAG) into code.</p>"
    },
    "CreateSecurityConfiguration": {
      "name": "CreateSecurityConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSecurityConfigurationRequest"
      },
      "output": {
        "shape": "CreateSecurityConfigurationResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        }
      ],
      "documentation": "<p>Creates a new security configuration. A security configuration is a set of security properties that can be used by AWS Glue. You can use a security configuration to encrypt data at rest. For information about using security configurations in AWS Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/encryption-security-configuration.html\">Encrypting Data Written by Crawlers, Jobs, and Development Endpoints</a>.</p>"
    },
    "CreateTable": {
      "name": "CreateTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTableRequest"
      },
      "output": {
        "shape": "CreateTableResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Creates a new table definition in the Data Catalog.</p>"
    },
    "CreateTrigger": {
      "name": "CreateTrigger",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTriggerRequest"
      },
      "output": {
        "shape": "CreateTriggerResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "IdempotentParameterMismatchException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Creates a new trigger.</p>"
    },
    "CreateUserDefinedFunction": {
      "name": "CreateUserDefinedFunction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateUserDefinedFunctionRequest"
      },
      "output": {
        "shape": "CreateUserDefinedFunctionResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Creates a new function definition in the Data Catalog.</p>"
    },
    "CreateWorkflow": {
      "name": "CreateWorkflow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateWorkflowRequest"
      },
      "output": {
        "shape": "CreateWorkflowResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Creates a new workflow.</p>"
    },
    "DeleteClassifier": {
      "name": "DeleteClassifier",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteClassifierRequest"
      },
      "output": {
        "shape": "DeleteClassifierResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Removes a classifier from the Data Catalog.</p>"
    },
    "DeleteColumnStatisticsForPartition": {
      "name": "DeleteColumnStatisticsForPartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteColumnStatisticsForPartitionRequest"
      },
      "output": {
        "shape": "DeleteColumnStatisticsForPartitionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Delete the partition column statistics of a column.</p>"
    },
    "DeleteColumnStatisticsForTable": {
      "name": "DeleteColumnStatisticsForTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteColumnStatisticsForTableRequest"
      },
      "output": {
        "shape": "DeleteColumnStatisticsForTableResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves table statistics of columns.</p>"
    },
    "DeleteConnection": {
      "name": "DeleteConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConnectionRequest"
      },
      "output": {
        "shape": "DeleteConnectionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes a connection from the Data Catalog.</p>"
    },
    "DeleteCrawler": {
      "name": "DeleteCrawler",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteCrawlerRequest"
      },
      "output": {
        "shape": "DeleteCrawlerResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "CrawlerRunningException"
        },
        {
          "shape": "SchedulerTransitioningException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Removes a specified crawler from the AWS Glue Data Catalog, unless the crawler state is <code>RUNNING</code>.</p>"
    },
    "DeleteDatabase": {
      "name": "DeleteDatabase",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDatabaseRequest"
      },
      "output": {
        "shape": "DeleteDatabaseResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Removes a specified database from a Data Catalog.</p> <note> <p>After completing this operation, you no longer have access to the tables (and all table versions and partitions that might belong to the tables) and the user-defined functions in the deleted database. AWS Glue deletes these \"orphaned\" resources asynchronously in a timely manner, at the discretion of the service.</p> <p>To ensure the immediate deletion of all related resources, before calling <code>DeleteDatabase</code>, use <code>DeleteTableVersion</code> or <code>BatchDeleteTableVersion</code>, <code>DeletePartition</code> or <code>BatchDeletePartition</code>, <code>DeleteUserDefinedFunction</code>, and <code>DeleteTable</code> or <code>BatchDeleteTable</code>, to delete any resources that belong to the database.</p> </note>"
    },
    "DeleteDevEndpoint": {
      "name": "DeleteDevEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteDevEndpointRequest"
      },
      "output": {
        "shape": "DeleteDevEndpointResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Deletes a specified development endpoint.</p>"
    },
    "DeleteJob": {
      "name": "DeleteJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteJobRequest"
      },
      "output": {
        "shape": "DeleteJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes a specified job definition. If the job definition is not found, no exception is thrown.</p>"
    },
    "DeleteMLTransform": {
      "name": "DeleteMLTransform",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteMLTransformRequest"
      },
      "output": {
        "shape": "DeleteMLTransformResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Deletes an AWS Glue machine learning transform. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue. If you no longer need a transform, you can delete it by calling <code>DeleteMLTransforms</code>. However, any AWS Glue jobs that still reference the deleted transform will no longer succeed.</p>"
    },
    "DeletePartition": {
      "name": "DeletePartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePartitionRequest"
      },
      "output": {
        "shape": "DeletePartitionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes a specified partition.</p>"
    },
    "DeleteResourcePolicy": {
      "name": "DeleteResourcePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteResourcePolicyRequest"
      },
      "output": {
        "shape": "DeleteResourcePolicyResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ConditionCheckFailureException"
        }
      ],
      "documentation": "<p>Deletes a specified policy.</p>"
    },
    "DeleteSecurityConfiguration": {
      "name": "DeleteSecurityConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSecurityConfigurationRequest"
      },
      "output": {
        "shape": "DeleteSecurityConfigurationResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes a specified security configuration.</p>"
    },
    "DeleteTable": {
      "name": "DeleteTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTableRequest"
      },
      "output": {
        "shape": "DeleteTableResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Removes a table definition from the Data Catalog.</p> <note> <p>After completing this operation, you no longer have access to the table versions and partitions that belong to the deleted table. AWS Glue deletes these \"orphaned\" resources asynchronously in a timely manner, at the discretion of the service.</p> <p>To ensure the immediate deletion of all related resources, before calling <code>DeleteTable</code>, use <code>DeleteTableVersion</code> or <code>BatchDeleteTableVersion</code>, and <code>DeletePartition</code> or <code>BatchDeletePartition</code>, to delete any resources that belong to the table.</p> </note>"
    },
    "DeleteTableVersion": {
      "name": "DeleteTableVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTableVersionRequest"
      },
      "output": {
        "shape": "DeleteTableVersionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes a specified version of a table.</p>"
    },
    "DeleteTrigger": {
      "name": "DeleteTrigger",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTriggerRequest"
      },
      "output": {
        "shape": "DeleteTriggerResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes a specified trigger. If the trigger is not found, no exception is thrown.</p>"
    },
    "DeleteUserDefinedFunction": {
      "name": "DeleteUserDefinedFunction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUserDefinedFunctionRequest"
      },
      "output": {
        "shape": "DeleteUserDefinedFunctionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Deletes an existing function definition from the Data Catalog.</p>"
    },
    "DeleteWorkflow": {
      "name": "DeleteWorkflow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteWorkflowRequest"
      },
      "output": {
        "shape": "DeleteWorkflowResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Deletes a workflow.</p>"
    },
    "GetCatalogImportStatus": {
      "name": "GetCatalogImportStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCatalogImportStatusRequest"
      },
      "output": {
        "shape": "GetCatalogImportStatusResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the status of a migration operation.</p>"
    },
    "GetClassifier": {
      "name": "GetClassifier",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetClassifierRequest"
      },
      "output": {
        "shape": "GetClassifierResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieve a classifier by name.</p>"
    },
    "GetClassifiers": {
      "name": "GetClassifiers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetClassifiersRequest"
      },
      "output": {
        "shape": "GetClassifiersResponse"
      },
      "errors": [
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Lists all classifier objects in the Data Catalog.</p>"
    },
    "GetColumnStatisticsForPartition": {
      "name": "GetColumnStatisticsForPartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetColumnStatisticsForPartitionRequest"
      },
      "output": {
        "shape": "GetColumnStatisticsForPartitionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves partition statistics of columns.</p>"
    },
    "GetColumnStatisticsForTable": {
      "name": "GetColumnStatisticsForTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetColumnStatisticsForTableRequest"
      },
      "output": {
        "shape": "GetColumnStatisticsForTableResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves table statistics of columns.</p>"
    },
    "GetConnection": {
      "name": "GetConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConnectionRequest"
      },
      "output": {
        "shape": "GetConnectionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves a connection definition from the Data Catalog.</p>"
    },
    "GetConnections": {
      "name": "GetConnections",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetConnectionsRequest"
      },
      "output": {
        "shape": "GetConnectionsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves a list of connection definitions from the Data Catalog.</p>"
    },
    "GetCrawler": {
      "name": "GetCrawler",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCrawlerRequest"
      },
      "output": {
        "shape": "GetCrawlerResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves metadata for a specified crawler.</p>"
    },
    "GetCrawlerMetrics": {
      "name": "GetCrawlerMetrics",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCrawlerMetricsRequest"
      },
      "output": {
        "shape": "GetCrawlerMetricsResponse"
      },
      "errors": [
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves metrics about specified crawlers.</p>"
    },
    "GetCrawlers": {
      "name": "GetCrawlers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetCrawlersRequest"
      },
      "output": {
        "shape": "GetCrawlersResponse"
      },
      "errors": [
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves metadata for all crawlers defined in the customer account.</p>"
    },
    "GetDataCatalogEncryptionSettings": {
      "name": "GetDataCatalogEncryptionSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDataCatalogEncryptionSettingsRequest"
      },
      "output": {
        "shape": "GetDataCatalogEncryptionSettingsResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the security configuration for a specified catalog.</p>"
    },
    "GetDatabase": {
      "name": "GetDatabase",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDatabaseRequest"
      },
      "output": {
        "shape": "GetDatabaseResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves the definition of a specified database.</p>"
    },
    "GetDatabases": {
      "name": "GetDatabases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDatabasesRequest"
      },
      "output": {
        "shape": "GetDatabasesResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves all databases defined in a given Data Catalog.</p>"
    },
    "GetDataflowGraph": {
      "name": "GetDataflowGraph",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDataflowGraphRequest"
      },
      "output": {
        "shape": "GetDataflowGraphResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Transforms a Python script into a directed acyclic graph (DAG). </p>"
    },
    "GetDevEndpoint": {
      "name": "GetDevEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDevEndpointRequest"
      },
      "output": {
        "shape": "GetDevEndpointResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves information about a specified development endpoint.</p> <note> <p>When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address, and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address.</p> </note>"
    },
    "GetDevEndpoints": {
      "name": "GetDevEndpoints",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDevEndpointsRequest"
      },
      "output": {
        "shape": "GetDevEndpointsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves all the development endpoints in this AWS account.</p> <note> <p>When you create a development endpoint in a virtual private cloud (VPC), AWS Glue returns only a private IP address and the public IP address field is not populated. When you create a non-VPC development endpoint, AWS Glue returns only a public IP address.</p> </note>"
    },
    "GetJob": {
      "name": "GetJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetJobRequest"
      },
      "output": {
        "shape": "GetJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves an existing job definition.</p>"
    },
    "GetJobBookmark": {
      "name": "GetJobBookmark",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetJobBookmarkRequest"
      },
      "output": {
        "shape": "GetJobBookmarkResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Returns information on a job bookmark entry.</p>"
    },
    "GetJobRun": {
      "name": "GetJobRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetJobRunRequest"
      },
      "output": {
        "shape": "GetJobRunResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the metadata for a given job run.</p>"
    },
    "GetJobRuns": {
      "name": "GetJobRuns",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetJobRunsRequest"
      },
      "output": {
        "shape": "GetJobRunsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves metadata for all runs of a given job definition.</p>"
    },
    "GetJobs": {
      "name": "GetJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetJobsRequest"
      },
      "output": {
        "shape": "GetJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves all current job definitions.</p>"
    },
    "GetMLTaskRun": {
      "name": "GetMLTaskRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMLTaskRunRequest"
      },
      "output": {
        "shape": "GetMLTaskRunResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Gets details for a specific task run on a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can check the stats of any task run by calling <code>GetMLTaskRun</code> with the <code>TaskRunID</code> and its parent transform's <code>TransformID</code>.</p>"
    },
    "GetMLTaskRuns": {
      "name": "GetMLTaskRuns",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMLTaskRunsRequest"
      },
      "output": {
        "shape": "GetMLTaskRunsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Gets a list of runs for a machine learning transform. Machine learning task runs are asynchronous tasks that AWS Glue runs on your behalf as part of various machine learning workflows. You can get a sortable, filterable list of machine learning task runs by calling <code>GetMLTaskRuns</code> with their parent transform's <code>TransformID</code> and other optional parameters as documented in this section.</p> <p>This operation returns a list of historic runs and must be paginated.</p>"
    },
    "GetMLTransform": {
      "name": "GetMLTransform",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMLTransformRequest"
      },
      "output": {
        "shape": "GetMLTransformResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Gets an AWS Glue machine learning transform artifact and all its corresponding metadata. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue. You can retrieve their metadata by calling <code>GetMLTransform</code>.</p>"
    },
    "GetMLTransforms": {
      "name": "GetMLTransforms",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMLTransformsRequest"
      },
      "output": {
        "shape": "GetMLTransformsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Gets a sortable, filterable list of existing AWS Glue machine learning transforms. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by AWS Glue, and you can retrieve their metadata by calling <code>GetMLTransforms</code>.</p>"
    },
    "GetMapping": {
      "name": "GetMapping",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetMappingRequest"
      },
      "output": {
        "shape": "GetMappingResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Creates mappings.</p>"
    },
    "GetPartition": {
      "name": "GetPartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPartitionRequest"
      },
      "output": {
        "shape": "GetPartitionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves information about a specified partition.</p>"
    },
    "GetPartitionIndexes": {
      "name": "GetPartitionIndexes",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPartitionIndexesRequest"
      },
      "output": {
        "shape": "GetPartitionIndexesResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "ConflictException"
        }
      ],
      "documentation": "<p>Retrieves the partition indexes associated with a table.</p>"
    },
    "GetPartitions": {
      "name": "GetPartitions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPartitionsRequest"
      },
      "output": {
        "shape": "GetPartitionsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves information about the partitions in a table.</p>"
    },
    "GetPlan": {
      "name": "GetPlan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPlanRequest"
      },
      "output": {
        "shape": "GetPlanResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Gets code to perform a specified mapping.</p>"
    },
    "GetResourcePolicies": {
      "name": "GetResourcePolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResourcePoliciesRequest"
      },
      "output": {
        "shape": "GetResourcePoliciesResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves the security configurations for the resource policies set on individual resources, and also the account-level policy.</p> <p>This operation also returns the Data Catalog resource policy. However, if you enabled metadata encryption in Data Catalog settings, and you do not have permission on the AWS KMS key, the operation can't return the Data Catalog resource policy.</p>"
    },
    "GetResourcePolicy": {
      "name": "GetResourcePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetResourcePolicyRequest"
      },
      "output": {
        "shape": "GetResourcePolicyResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves a specified resource policy.</p>"
    },
    "GetSecurityConfiguration": {
      "name": "GetSecurityConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSecurityConfigurationRequest"
      },
      "output": {
        "shape": "GetSecurityConfigurationResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves a specified security configuration.</p>"
    },
    "GetSecurityConfigurations": {
      "name": "GetSecurityConfigurations",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSecurityConfigurationsRequest"
      },
      "output": {
        "shape": "GetSecurityConfigurationsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves a list of all security configurations.</p>"
    },
    "GetTable": {
      "name": "GetTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTableRequest"
      },
      "output": {
        "shape": "GetTableResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves the <code>Table</code> definition in a Data Catalog for a specified table.</p>"
    },
    "GetTableVersion": {
      "name": "GetTableVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTableVersionRequest"
      },
      "output": {
        "shape": "GetTableVersionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves a specified version of a table.</p>"
    },
    "GetTableVersions": {
      "name": "GetTableVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTableVersionsRequest"
      },
      "output": {
        "shape": "GetTableVersionsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves a list of strings that identify available versions of a specified table.</p>"
    },
    "GetTables": {
      "name": "GetTables",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTablesRequest"
      },
      "output": {
        "shape": "GetTablesResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves the definitions of some or all of the tables in a given <code>Database</code>.</p>"
    },
    "GetTags": {
      "name": "GetTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTagsRequest"
      },
      "output": {
        "shape": "GetTagsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves a list of tags associated with a resource.</p>"
    },
    "GetTrigger": {
      "name": "GetTrigger",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTriggerRequest"
      },
      "output": {
        "shape": "GetTriggerResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the definition of a trigger.</p>"
    },
    "GetTriggers": {
      "name": "GetTriggers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTriggersRequest"
      },
      "output": {
        "shape": "GetTriggersResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Gets all the triggers associated with a job.</p>"
    },
    "GetUserDefinedFunction": {
      "name": "GetUserDefinedFunction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetUserDefinedFunctionRequest"
      },
      "output": {
        "shape": "GetUserDefinedFunctionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves a specified function definition from the Data Catalog.</p>"
    },
    "GetUserDefinedFunctions": {
      "name": "GetUserDefinedFunctions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetUserDefinedFunctionsRequest"
      },
      "output": {
        "shape": "GetUserDefinedFunctionsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Retrieves multiple function definitions from the Data Catalog.</p>"
    },
    "GetWorkflow": {
      "name": "GetWorkflow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetWorkflowRequest"
      },
      "output": {
        "shape": "GetWorkflowResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves resource metadata for a workflow.</p>"
    },
    "GetWorkflowRun": {
      "name": "GetWorkflowRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetWorkflowRunRequest"
      },
      "output": {
        "shape": "GetWorkflowRunResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the metadata for a given workflow run. </p>"
    },
    "GetWorkflowRunProperties": {
      "name": "GetWorkflowRunProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetWorkflowRunPropertiesRequest"
      },
      "output": {
        "shape": "GetWorkflowRunPropertiesResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the workflow run properties which were set during the run.</p>"
    },
    "GetWorkflowRuns": {
      "name": "GetWorkflowRuns",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetWorkflowRunsRequest"
      },
      "output": {
        "shape": "GetWorkflowRunsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves metadata for all runs of a given workflow.</p>"
    },
    "ImportCatalogToGlue": {
      "name": "ImportCatalogToGlue",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportCatalogToGlueRequest"
      },
      "output": {
        "shape": "ImportCatalogToGlueResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Imports an existing Amazon Athena Data Catalog to AWS Glue</p>"
    },
    "ListCrawlers": {
      "name": "ListCrawlers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCrawlersRequest"
      },
      "output": {
        "shape": "ListCrawlersResponse"
      },
      "errors": [
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the names of all crawler resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.</p> <p>This operation takes the optional <code>Tags</code> field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.</p>"
    },
    "ListDevEndpoints": {
      "name": "ListDevEndpoints",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDevEndpointsRequest"
      },
      "output": {
        "shape": "ListDevEndpointsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the names of all <code>DevEndpoint</code> resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.</p> <p>This operation takes the optional <code>Tags</code> field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.</p>"
    },
    "ListJobs": {
      "name": "ListJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListJobsRequest"
      },
      "output": {
        "shape": "ListJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the names of all job resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.</p> <p>This operation takes the optional <code>Tags</code> field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.</p>"
    },
    "ListMLTransforms": {
      "name": "ListMLTransforms",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListMLTransformsRequest"
      },
      "output": {
        "shape": "ListMLTransformsResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p> Retrieves a sortable, filterable list of existing AWS Glue machine learning transforms in this AWS account, or the resources with the specified tag. This operation takes the optional <code>Tags</code> field, which you can use as a filter of the responses so that tagged resources can be retrieved as a group. If you choose to use tag filtering, only resources with the tags are retrieved. </p>"
    },
    "ListTriggers": {
      "name": "ListTriggers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTriggersRequest"
      },
      "output": {
        "shape": "ListTriggersResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Retrieves the names of all trigger resources in this AWS account, or the resources with the specified tag. This operation allows you to see which resources are available in your account, and their names.</p> <p>This operation takes the optional <code>Tags</code> field, which you can use as a filter on the response so that tagged resources can be retrieved as a group. If you choose to use tags filtering, only resources with the tag are retrieved.</p>"
    },
    "ListWorkflows": {
      "name": "ListWorkflows",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListWorkflowsRequest"
      },
      "output": {
        "shape": "ListWorkflowsResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Lists names of workflows created in the account.</p>"
    },
    "PutDataCatalogEncryptionSettings": {
      "name": "PutDataCatalogEncryptionSettings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutDataCatalogEncryptionSettingsRequest"
      },
      "output": {
        "shape": "PutDataCatalogEncryptionSettingsResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Sets the security configuration for a specified catalog. After the configuration has been set, the specified encryption is applied to every catalog write thereafter.</p>"
    },
    "PutResourcePolicy": {
      "name": "PutResourcePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutResourcePolicyRequest"
      },
      "output": {
        "shape": "PutResourcePolicyResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ConditionCheckFailureException"
        }
      ],
      "documentation": "<p>Sets the Data Catalog resource policy for access control.</p>"
    },
    "PutWorkflowRunProperties": {
      "name": "PutWorkflowRunProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutWorkflowRunPropertiesRequest"
      },
      "output": {
        "shape": "PutWorkflowRunPropertiesResponse"
      },
      "errors": [
        {
          "shape": "AlreadyExistsException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Puts the specified workflow run properties for the given workflow run. If a property already exists for the specified run, then it overrides the value otherwise adds the property to existing properties.</p>"
    },
    "ResetJobBookmark": {
      "name": "ResetJobBookmark",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetJobBookmarkRequest"
      },
      "output": {
        "shape": "ResetJobBookmarkResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Resets a bookmark entry.</p>"
    },
    "ResumeWorkflowRun": {
      "name": "ResumeWorkflowRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResumeWorkflowRunRequest"
      },
      "output": {
        "shape": "ResumeWorkflowRunResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ConcurrentRunsExceededException"
        },
        {
          "shape": "IllegalWorkflowStateException"
        }
      ],
      "documentation": "<p>Restarts selected nodes of a previous partially completed workflow run and resumes the workflow run. The selected nodes and all nodes that are downstream from the selected nodes are run.</p>"
    },
    "SearchTables": {
      "name": "SearchTables",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SearchTablesRequest"
      },
      "output": {
        "shape": "SearchTablesResponse"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Searches a set of tables based on properties in the table metadata as well as on the parent database. You can search against text or filter conditions. </p> <p>You can only get tables that you have access to based on the security policies defined in Lake Formation. You need at least a read-only access to the table for it to be returned. If you do not have access to all the columns in the table, these columns will not be searched against when returning the list of tables back to you. If you have access to the columns but not the data in the columns, those columns and the associated metadata for those columns will be included in the search. </p>"
    },
    "StartCrawler": {
      "name": "StartCrawler",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartCrawlerRequest"
      },
      "output": {
        "shape": "StartCrawlerResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "CrawlerRunningException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Starts a crawl using the specified crawler, regardless of what is scheduled. If the crawler is already running, returns a <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException\">CrawlerRunningException</a>.</p>"
    },
    "StartCrawlerSchedule": {
      "name": "StartCrawlerSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartCrawlerScheduleRequest"
      },
      "output": {
        "shape": "StartCrawlerScheduleResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "SchedulerRunningException"
        },
        {
          "shape": "SchedulerTransitioningException"
        },
        {
          "shape": "NoScheduleException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Changes the schedule state of the specified crawler to <code>SCHEDULED</code>, unless the crawler is already running or the schedule state is already <code>SCHEDULED</code>.</p>"
    },
    "StartExportLabelsTaskRun": {
      "name": "StartExportLabelsTaskRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartExportLabelsTaskRunRequest"
      },
      "output": {
        "shape": "StartExportLabelsTaskRunResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Begins an asynchronous task to export all labeled data for a particular transform. This task is the only label-related API call that is not part of the typical active learning workflow. You typically use <code>StartExportLabelsTaskRun</code> when you want to work with all of your existing labels at the same time, such as when you want to remove or change labels that were previously submitted as truth. This API operation accepts the <code>TransformId</code> whose labels you want to export and an Amazon Simple Storage Service (Amazon S3) path to export the labels to. The operation returns a <code>TaskRunId</code>. You can check on the status of your task run by calling the <code>GetMLTaskRun</code> API.</p>"
    },
    "StartImportLabelsTaskRun": {
      "name": "StartImportLabelsTaskRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartImportLabelsTaskRunRequest"
      },
      "output": {
        "shape": "StartImportLabelsTaskRunResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Enables you to provide additional labels (examples of truth) to be used to teach the machine learning transform and improve its quality. This API operation is generally used as part of the active learning workflow that starts with the <code>StartMLLabelingSetGenerationTaskRun</code> call and that ultimately results in improving the quality of your machine learning transform. </p> <p>After the <code>StartMLLabelingSetGenerationTaskRun</code> finishes, AWS Glue machine learning will have generated a series of questions for humans to answer. (Answering these questions is often called 'labeling' in the machine learning workflows). In the case of the <code>FindMatches</code> transform, these questions are of the form, “What is the correct way to group these rows together into groups composed entirely of matching records?” After the labeling process is finished, users upload their answers/labels with a call to <code>StartImportLabelsTaskRun</code>. After <code>StartImportLabelsTaskRun</code> finishes, all future runs of the machine learning transform use the new and improved labels and perform a higher-quality transformation.</p> <p>By default, <code>StartMLLabelingSetGenerationTaskRun</code> continually learns from and combines all labels that you upload unless you set <code>Replace</code> to true. If you set <code>Replace</code> to true, <code>StartImportLabelsTaskRun</code> deletes and forgets all previously uploaded labels and learns only from the exact set that you upload. Replacing labels can be helpful if you realize that you previously uploaded incorrect labels, and you believe that they are having a negative effect on your transform quality.</p> <p>You can check on the status of your task run by calling the <code>GetMLTaskRun</code> operation. </p>"
    },
    "StartJobRun": {
      "name": "StartJobRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartJobRunRequest"
      },
      "output": {
        "shape": "StartJobRunResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "ConcurrentRunsExceededException"
        }
      ],
      "documentation": "<p>Starts a job run using a job definition.</p>"
    },
    "StartMLEvaluationTaskRun": {
      "name": "StartMLEvaluationTaskRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartMLEvaluationTaskRunRequest"
      },
      "output": {
        "shape": "StartMLEvaluationTaskRunResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "ConcurrentRunsExceededException"
        },
        {
          "shape": "MLTransformNotReadyException"
        }
      ],
      "documentation": "<p>Starts a task to estimate the quality of the transform. </p> <p>When you provide label sets as examples of truth, AWS Glue machine learning uses some of those examples to learn from them. The rest of the labels are used as a test to estimate quality.</p> <p>Returns a unique identifier for the run. You can call <code>GetMLTaskRun</code> to get more information about the stats of the <code>EvaluationTaskRun</code>.</p>"
    },
    "StartMLLabelingSetGenerationTaskRun": {
      "name": "StartMLLabelingSetGenerationTaskRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartMLLabelingSetGenerationTaskRunRequest"
      },
      "output": {
        "shape": "StartMLLabelingSetGenerationTaskRunResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "ConcurrentRunsExceededException"
        }
      ],
      "documentation": "<p>Starts the active learning workflow for your machine learning transform to improve the transform's quality by generating label sets and adding labels.</p> <p>When the <code>StartMLLabelingSetGenerationTaskRun</code> finishes, AWS Glue will have generated a \"labeling set\" or a set of questions for humans to answer.</p> <p>In the case of the <code>FindMatches</code> transform, these questions are of the form, “What is the correct way to group these rows together into groups composed entirely of matching records?” </p> <p>After the labeling process is finished, you can upload your labels with a call to <code>StartImportLabelsTaskRun</code>. After <code>StartImportLabelsTaskRun</code> finishes, all future runs of the machine learning transform will use the new and improved labels and perform a higher-quality transformation.</p>"
    },
    "StartTrigger": {
      "name": "StartTrigger",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartTriggerRequest"
      },
      "output": {
        "shape": "StartTriggerResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "ConcurrentRunsExceededException"
        }
      ],
      "documentation": "<p>Starts an existing trigger. See <a href=\"https://docs.aws.amazon.com/glue/latest/dg/trigger-job.html\">Triggering Jobs</a> for information about how different types of trigger are started.</p>"
    },
    "StartWorkflowRun": {
      "name": "StartWorkflowRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartWorkflowRunRequest"
      },
      "output": {
        "shape": "StartWorkflowRunResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "ConcurrentRunsExceededException"
        }
      ],
      "documentation": "<p>Starts a new run of the specified workflow.</p>"
    },
    "StopCrawler": {
      "name": "StopCrawler",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopCrawlerRequest"
      },
      "output": {
        "shape": "StopCrawlerResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "CrawlerNotRunningException"
        },
        {
          "shape": "CrawlerStoppingException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>If the specified crawler is running, stops the crawl.</p>"
    },
    "StopCrawlerSchedule": {
      "name": "StopCrawlerSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopCrawlerScheduleRequest"
      },
      "output": {
        "shape": "StopCrawlerScheduleResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "SchedulerNotRunningException"
        },
        {
          "shape": "SchedulerTransitioningException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Sets the schedule state of the specified crawler to <code>NOT_SCHEDULED</code>, but does not stop the crawler if it is already running.</p>"
    },
    "StopTrigger": {
      "name": "StopTrigger",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopTriggerRequest"
      },
      "output": {
        "shape": "StopTriggerResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Stops a specified trigger.</p>"
    },
    "StopWorkflowRun": {
      "name": "StopWorkflowRun",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopWorkflowRunRequest"
      },
      "output": {
        "shape": "StopWorkflowRunResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "IllegalWorkflowStateException"
        }
      ],
      "documentation": "<p>Stops the execution of the specified workflow run.</p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Adds tags to a resource. A tag is a label you can assign to an AWS resource. In AWS Glue, you can tag only certain resources. For information about what resources you can tag, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">AWS Tags in AWS Glue</a>.</p>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "EntityNotFoundException"
        }
      ],
      "documentation": "<p>Removes tags from a resource.</p>"
    },
    "UpdateClassifier": {
      "name": "UpdateClassifier",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateClassifierRequest"
      },
      "output": {
        "shape": "UpdateClassifierResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "VersionMismatchException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Modifies an existing classifier (a <code>GrokClassifier</code>, an <code>XMLClassifier</code>, a <code>JsonClassifier</code>, or a <code>CsvClassifier</code>, depending on which field is present).</p>"
    },
    "UpdateColumnStatisticsForPartition": {
      "name": "UpdateColumnStatisticsForPartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateColumnStatisticsForPartitionRequest"
      },
      "output": {
        "shape": "UpdateColumnStatisticsForPartitionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Creates or updates partition statistics of columns.</p>"
    },
    "UpdateColumnStatisticsForTable": {
      "name": "UpdateColumnStatisticsForTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateColumnStatisticsForTableRequest"
      },
      "output": {
        "shape": "UpdateColumnStatisticsForTableResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Creates or updates table statistics of columns.</p>"
    },
    "UpdateConnection": {
      "name": "UpdateConnection",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateConnectionRequest"
      },
      "output": {
        "shape": "UpdateConnectionResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Updates a connection definition in the Data Catalog.</p>"
    },
    "UpdateCrawler": {
      "name": "UpdateCrawler",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateCrawlerRequest"
      },
      "output": {
        "shape": "UpdateCrawlerResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "VersionMismatchException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "CrawlerRunningException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Updates a crawler. If a crawler is running, you must stop it using <code>StopCrawler</code> before updating it.</p>"
    },
    "UpdateCrawlerSchedule": {
      "name": "UpdateCrawlerSchedule",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateCrawlerScheduleRequest"
      },
      "output": {
        "shape": "UpdateCrawlerScheduleResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "VersionMismatchException"
        },
        {
          "shape": "SchedulerTransitioningException"
        },
        {
          "shape": "OperationTimeoutException"
        }
      ],
      "documentation": "<p>Updates the schedule of a crawler using a <code>cron</code> expression. </p>"
    },
    "UpdateDatabase": {
      "name": "UpdateDatabase",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDatabaseRequest"
      },
      "output": {
        "shape": "UpdateDatabaseResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Updates an existing database definition in a Data Catalog.</p>"
    },
    "UpdateDevEndpoint": {
      "name": "UpdateDevEndpoint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateDevEndpointRequest"
      },
      "output": {
        "shape": "UpdateDevEndpointResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Updates a specified development endpoint.</p>"
    },
    "UpdateJob": {
      "name": "UpdateJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateJobRequest"
      },
      "output": {
        "shape": "UpdateJobResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates an existing job definition.</p>"
    },
    "UpdateMLTransform": {
      "name": "UpdateMLTransform",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateMLTransformRequest"
      },
      "output": {
        "shape": "UpdateMLTransformResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Updates an existing machine learning transform. Call this operation to tune the algorithm parameters to achieve better results.</p> <p>After calling this operation, you can call the <code>StartMLEvaluationTaskRun</code> operation to assess how well your new parameters achieved your goals (such as improving the quality of your machine learning transform, or making it more cost-effective).</p>"
    },
    "UpdatePartition": {
      "name": "UpdatePartition",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePartitionRequest"
      },
      "output": {
        "shape": "UpdatePartitionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Updates a partition.</p>"
    },
    "UpdateTable": {
      "name": "UpdateTable",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTableRequest"
      },
      "output": {
        "shape": "UpdateTableResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ResourceNumberLimitExceededException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Updates a metadata table in the Data Catalog.</p>"
    },
    "UpdateTrigger": {
      "name": "UpdateTrigger",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTriggerRequest"
      },
      "output": {
        "shape": "UpdateTriggerResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates a trigger definition.</p>"
    },
    "UpdateUserDefinedFunction": {
      "name": "UpdateUserDefinedFunction",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateUserDefinedFunctionRequest"
      },
      "output": {
        "shape": "UpdateUserDefinedFunctionResponse"
      },
      "errors": [
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "GlueEncryptionException"
        }
      ],
      "documentation": "<p>Updates an existing function definition in the Data Catalog.</p>"
    },
    "UpdateWorkflow": {
      "name": "UpdateWorkflow",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateWorkflowRequest"
      },
      "output": {
        "shape": "UpdateWorkflowResponse"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityNotFoundException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "OperationTimeoutException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Updates an existing workflow.</p>"
    }
  },
  "shapes": {
    "Action": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of a job to be executed.</p>"
        },
        "Arguments": {
          "shape": "GenericMap",
          "documentation": "<p>The job arguments used when this trigger fires. For this job run, they replace the default arguments set in the job definition itself.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>"
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used with this action.</p>"
        },
        "NotificationProperty": {
          "shape": "NotificationProperty",
          "documentation": "<p>Specifies configuration properties of a job run notification.</p>"
        },
        "CrawlerName": {
          "shape": "NameString",
          "documentation": "<p>The name of the crawler to be used with this action.</p>"
        }
      },
      "documentation": "<p>Defines an action to be initiated by a trigger.</p>"
    },
    "ActionList": {
      "type": "list",
      "member": {
        "shape": "Action"
      }
    },
    "AttemptCount": {
      "type": "integer"
    },
    "BatchCreatePartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionInputList"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the catalog in which the partition is to be created. Currently, this should be the AWS account ID.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the metadata database in which the partition is to be created.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the metadata table in which the partition is to be created.</p>"
        },
        "PartitionInputList": {
          "shape": "PartitionInputList",
          "documentation": "<p>A list of <code>PartitionInput</code> structures that define the partitions to be created.</p>"
        }
      }
    },
    "BatchCreatePartitionResponse": {
      "type": "structure",
      "members": {
        "Errors": {
          "shape": "PartitionErrors",
          "documentation": "<p>The errors encountered when trying to create the requested partitions.</p>"
        }
      }
    },
    "BatchDeleteConnectionRequest": {
      "type": "structure",
      "required": [
        "ConnectionNameList"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the connections reside. If none is provided, the AWS account ID is used by default.</p>"
        },
        "ConnectionNameList": {
          "shape": "DeleteConnectionNameList",
          "documentation": "<p>A list of names of the connections to delete.</p>"
        }
      }
    },
    "BatchDeleteConnectionResponse": {
      "type": "structure",
      "members": {
        "Succeeded": {
          "shape": "NameStringList",
          "documentation": "<p>A list of names of the connection definitions that were successfully deleted.</p>"
        },
        "Errors": {
          "shape": "ErrorByName",
          "documentation": "<p>A map of the names of connections that were not successfully deleted to error details.</p>"
        }
      }
    },
    "BatchDeletePartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionsToDelete"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partition to be deleted resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database in which the table in question resides.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table that contains the partitions to be deleted.</p>"
        },
        "PartitionsToDelete": {
          "shape": "BatchDeletePartitionValueList",
          "documentation": "<p>A list of <code>PartitionInput</code> structures that define the partitions to be deleted.</p>"
        }
      }
    },
    "BatchDeletePartitionResponse": {
      "type": "structure",
      "members": {
        "Errors": {
          "shape": "PartitionErrors",
          "documentation": "<p>The errors encountered when trying to delete the requested partitions.</p>"
        }
      }
    },
    "BatchDeletePartitionValueList": {
      "type": "list",
      "member": {
        "shape": "PartitionValueList"
      },
      "max": 25,
      "min": 0
    },
    "BatchDeleteTableNameList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "max": 100,
      "min": 0
    },
    "BatchDeleteTableRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TablesToDelete"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database in which the tables to delete reside. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "TablesToDelete": {
          "shape": "BatchDeleteTableNameList",
          "documentation": "<p>A list of the table to delete.</p>"
        }
      }
    },
    "BatchDeleteTableResponse": {
      "type": "structure",
      "members": {
        "Errors": {
          "shape": "TableErrors",
          "documentation": "<p>A list of errors encountered in attempting to delete the specified tables.</p>"
        }
      }
    },
    "BatchDeleteTableVersionList": {
      "type": "list",
      "member": {
        "shape": "VersionString"
      },
      "max": 100,
      "min": 0
    },
    "BatchDeleteTableVersionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "VersionIds"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "VersionIds": {
          "shape": "BatchDeleteTableVersionList",
          "documentation": "<p>A list of the IDs of versions to be deleted. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>"
        }
      }
    },
    "BatchDeleteTableVersionResponse": {
      "type": "structure",
      "members": {
        "Errors": {
          "shape": "TableVersionErrors",
          "documentation": "<p>A list of errors encountered while trying to delete the specified table versions.</p>"
        }
      }
    },
    "BatchGetCrawlersRequest": {
      "type": "structure",
      "required": [
        "CrawlerNames"
      ],
      "members": {
        "CrawlerNames": {
          "shape": "CrawlerNameList",
          "documentation": "<p>A list of crawler names, which might be the names returned from the <code>ListCrawlers</code> operation.</p>"
        }
      }
    },
    "BatchGetCrawlersResponse": {
      "type": "structure",
      "members": {
        "Crawlers": {
          "shape": "CrawlerList",
          "documentation": "<p>A list of crawler definitions.</p>"
        },
        "CrawlersNotFound": {
          "shape": "CrawlerNameList",
          "documentation": "<p>A list of names of crawlers that were not found.</p>"
        }
      }
    },
    "BatchGetDevEndpointsRequest": {
      "type": "structure",
      "required": [
        "DevEndpointNames"
      ],
      "members": {
        "DevEndpointNames": {
          "shape": "DevEndpointNames",
          "documentation": "<p>The list of <code>DevEndpoint</code> names, which might be the names returned from the <code>ListDevEndpoint</code> operation.</p>"
        }
      }
    },
    "BatchGetDevEndpointsResponse": {
      "type": "structure",
      "members": {
        "DevEndpoints": {
          "shape": "DevEndpointList",
          "documentation": "<p>A list of <code>DevEndpoint</code> definitions.</p>"
        },
        "DevEndpointsNotFound": {
          "shape": "DevEndpointNames",
          "documentation": "<p>A list of <code>DevEndpoints</code> not found.</p>"
        }
      }
    },
    "BatchGetJobsRequest": {
      "type": "structure",
      "required": [
        "JobNames"
      ],
      "members": {
        "JobNames": {
          "shape": "JobNameList",
          "documentation": "<p>A list of job names, which might be the names returned from the <code>ListJobs</code> operation.</p>"
        }
      }
    },
    "BatchGetJobsResponse": {
      "type": "structure",
      "members": {
        "Jobs": {
          "shape": "JobList",
          "documentation": "<p>A list of job definitions.</p>"
        },
        "JobsNotFound": {
          "shape": "JobNameList",
          "documentation": "<p>A list of names of jobs not found.</p>"
        }
      }
    },
    "BatchGetPartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionsToGet"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partitions reside.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partitions' table.</p>"
        },
        "PartitionsToGet": {
          "shape": "BatchGetPartitionValueList",
          "documentation": "<p>A list of partition values identifying the partitions to retrieve.</p>"
        }
      }
    },
    "BatchGetPartitionResponse": {
      "type": "structure",
      "members": {
        "Partitions": {
          "shape": "PartitionList",
          "documentation": "<p>A list of the requested partitions.</p>"
        },
        "UnprocessedKeys": {
          "shape": "BatchGetPartitionValueList",
          "documentation": "<p>A list of the partition values in the request for which partitions were not returned.</p>"
        }
      }
    },
    "BatchGetPartitionValueList": {
      "type": "list",
      "member": {
        "shape": "PartitionValueList"
      },
      "max": 1000,
      "min": 0
    },
    "BatchGetTriggersRequest": {
      "type": "structure",
      "required": [
        "TriggerNames"
      ],
      "members": {
        "TriggerNames": {
          "shape": "TriggerNameList",
          "documentation": "<p>A list of trigger names, which may be the names returned from the <code>ListTriggers</code> operation.</p>"
        }
      }
    },
    "BatchGetTriggersResponse": {
      "type": "structure",
      "members": {
        "Triggers": {
          "shape": "TriggerList",
          "documentation": "<p>A list of trigger definitions.</p>"
        },
        "TriggersNotFound": {
          "shape": "TriggerNameList",
          "documentation": "<p>A list of names of triggers not found.</p>"
        }
      }
    },
    "BatchGetWorkflowsRequest": {
      "type": "structure",
      "required": [
        "Names"
      ],
      "members": {
        "Names": {
          "shape": "WorkflowNames",
          "documentation": "<p>A list of workflow names, which may be the names returned from the <code>ListWorkflows</code> operation.</p>"
        },
        "IncludeGraph": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether to include a graph when returning the workflow resource metadata.</p>"
        }
      }
    },
    "BatchGetWorkflowsResponse": {
      "type": "structure",
      "members": {
        "Workflows": {
          "shape": "Workflows",
          "documentation": "<p>A list of workflow resource metadata.</p>"
        },
        "MissingWorkflows": {
          "shape": "WorkflowNames",
          "documentation": "<p>A list of names of workflows not found.</p>"
        }
      }
    },
    "BatchStopJobRunError": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition that is used in the job run in question.</p>"
        },
        "JobRunId": {
          "shape": "IdString",
          "documentation": "<p>The <code>JobRunId</code> of the job run in question.</p>"
        },
        "ErrorDetail": {
          "shape": "ErrorDetail",
          "documentation": "<p>Specifies details about the error that was encountered.</p>"
        }
      },
      "documentation": "<p>Records an error that occurred when attempting to stop a specified job run.</p>"
    },
    "BatchStopJobRunErrorList": {
      "type": "list",
      "member": {
        "shape": "BatchStopJobRunError"
      }
    },
    "BatchStopJobRunJobRunIdList": {
      "type": "list",
      "member": {
        "shape": "IdString"
      },
      "max": 25,
      "min": 1
    },
    "BatchStopJobRunRequest": {
      "type": "structure",
      "required": [
        "JobName",
        "JobRunIds"
      ],
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition for which to stop job runs.</p>"
        },
        "JobRunIds": {
          "shape": "BatchStopJobRunJobRunIdList",
          "documentation": "<p>A list of the <code>JobRunIds</code> that should be stopped for that job definition.</p>"
        }
      }
    },
    "BatchStopJobRunResponse": {
      "type": "structure",
      "members": {
        "SuccessfulSubmissions": {
          "shape": "BatchStopJobRunSuccessfulSubmissionList",
          "documentation": "<p>A list of the JobRuns that were successfully submitted for stopping.</p>"
        },
        "Errors": {
          "shape": "BatchStopJobRunErrorList",
          "documentation": "<p>A list of the errors that were encountered in trying to stop <code>JobRuns</code>, including the <code>JobRunId</code> for which each error was encountered and details about the error.</p>"
        }
      }
    },
    "BatchStopJobRunSuccessfulSubmission": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition used in the job run that was stopped.</p>"
        },
        "JobRunId": {
          "shape": "IdString",
          "documentation": "<p>The <code>JobRunId</code> of the job run that was stopped.</p>"
        }
      },
      "documentation": "<p>Records a successful request to stop a specified <code>JobRun</code>.</p>"
    },
    "BatchStopJobRunSuccessfulSubmissionList": {
      "type": "list",
      "member": {
        "shape": "BatchStopJobRunSuccessfulSubmission"
      }
    },
    "BinaryColumnStatisticsData": {
      "type": "structure",
      "required": [
        "MaximumLength",
        "AverageLength",
        "NumberOfNulls"
      ],
      "members": {
        "MaximumLength": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Maximum length of the column.</p>"
        },
        "AverageLength": {
          "shape": "NonNegativeDouble",
          "documentation": "<p>Average length of the column.</p>"
        },
        "NumberOfNulls": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of nulls.</p>"
        }
      },
      "documentation": "<p>Defines a binary column statistics data.</p>"
    },
    "Blob": {
      "type": "blob"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BooleanColumnStatisticsData": {
      "type": "structure",
      "required": [
        "NumberOfTrues",
        "NumberOfFalses",
        "NumberOfNulls"
      ],
      "members": {
        "NumberOfTrues": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of true value.</p>"
        },
        "NumberOfFalses": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of false value.</p>"
        },
        "NumberOfNulls": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of nulls.</p>"
        }
      },
      "documentation": "<p>Defines a boolean column statistics.</p>"
    },
    "BooleanNullable": {
      "type": "boolean"
    },
    "BooleanValue": {
      "type": "boolean"
    },
    "BoundedPartitionValueList": {
      "type": "list",
      "member": {
        "shape": "ValueString"
      },
      "max": 100,
      "min": 0
    },
    "CancelMLTaskRunRequest": {
      "type": "structure",
      "required": [
        "TransformId",
        "TaskRunId"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the machine learning transform.</p>"
        },
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>A unique identifier for the task run.</p>"
        }
      }
    },
    "CancelMLTaskRunResponse": {
      "type": "structure",
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the machine learning transform.</p>"
        },
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier for the task run.</p>"
        },
        "Status": {
          "shape": "TaskStatusType",
          "documentation": "<p>The status for this run.</p>"
        }
      }
    },
    "CatalogEncryptionMode": {
      "type": "string",
      "enum": [
        "DISABLED",
        "SSE-KMS"
      ]
    },
    "CatalogEntries": {
      "type": "list",
      "member": {
        "shape": "CatalogEntry"
      }
    },
    "CatalogEntry": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName"
      ],
      "members": {
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The database in which the table metadata resides.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table in question.</p>"
        }
      },
      "documentation": "<p>Specifies a table definition in the AWS Glue Data Catalog.</p>"
    },
    "CatalogIdString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "CatalogImportStatus": {
      "type": "structure",
      "members": {
        "ImportCompleted": {
          "shape": "Boolean",
          "documentation": "<p> <code>True</code> if the migration has completed, or <code>False</code> otherwise.</p>"
        },
        "ImportTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the migration was started.</p>"
        },
        "ImportedBy": {
          "shape": "NameString",
          "documentation": "<p>The name of the person who initiated the migration.</p>"
        }
      },
      "documentation": "<p>A structure containing migration status information.</p>"
    },
    "CatalogTablesList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "min": 1
    },
    "CatalogTarget": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "Tables"
      ],
      "members": {
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database to be synchronized.</p>"
        },
        "Tables": {
          "shape": "CatalogTablesList",
          "documentation": "<p>A list of the tables to be synchronized.</p>"
        }
      },
      "documentation": "<p>Specifies an AWS Glue Data Catalog target.</p>"
    },
    "CatalogTargetList": {
      "type": "list",
      "member": {
        "shape": "CatalogTarget"
      }
    },
    "Classification": {
      "type": "string"
    },
    "Classifier": {
      "type": "structure",
      "members": {
        "GrokClassifier": {
          "shape": "GrokClassifier",
          "documentation": "<p>A classifier that uses <code>grok</code>.</p>"
        },
        "XMLClassifier": {
          "shape": "XMLClassifier",
          "documentation": "<p>A classifier for XML content.</p>"
        },
        "JsonClassifier": {
          "shape": "JsonClassifier",
          "documentation": "<p>A classifier for JSON content.</p>"
        },
        "CsvClassifier": {
          "shape": "CsvClassifier",
          "documentation": "<p>A classifier for comma-separated values (CSV).</p>"
        }
      },
      "documentation": "<p>Classifiers are triggered during a crawl task. A classifier checks whether a given file is in a format it can handle. If it is, the classifier creates a schema in the form of a <code>StructType</code> object that matches that data format.</p> <p>You can use the standard classifiers that AWS Glue provides, or you can write your own classifiers to best categorize your data sources and specify the appropriate schemas to use for them. A classifier can be a <code>grok</code> classifier, an <code>XML</code> classifier, a <code>JSON</code> classifier, or a custom <code>CSV</code> classifier, as specified in one of the fields in the <code>Classifier</code> object.</p>"
    },
    "ClassifierList": {
      "type": "list",
      "member": {
        "shape": "Classifier"
      }
    },
    "ClassifierNameList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      }
    },
    "CloudWatchEncryption": {
      "type": "structure",
      "members": {
        "CloudWatchEncryptionMode": {
          "shape": "CloudWatchEncryptionMode",
          "documentation": "<p>The encryption mode to use for CloudWatch data.</p>"
        },
        "KmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>"
        }
      },
      "documentation": "<p>Specifies how Amazon CloudWatch data should be encrypted.</p>"
    },
    "CloudWatchEncryptionMode": {
      "type": "string",
      "enum": [
        "DISABLED",
        "SSE-KMS"
      ]
    },
    "CodeGenArgName": {
      "type": "string"
    },
    "CodeGenArgValue": {
      "type": "string"
    },
    "CodeGenEdge": {
      "type": "structure",
      "required": [
        "Source",
        "Target"
      ],
      "members": {
        "Source": {
          "shape": "CodeGenIdentifier",
          "documentation": "<p>The ID of the node at which the edge starts.</p>"
        },
        "Target": {
          "shape": "CodeGenIdentifier",
          "documentation": "<p>The ID of the node at which the edge ends.</p>"
        },
        "TargetParameter": {
          "shape": "CodeGenArgName",
          "documentation": "<p>The target of the edge.</p>"
        }
      },
      "documentation": "<p>Represents a directional edge in a directed acyclic graph (DAG).</p>"
    },
    "CodeGenIdentifier": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[A-Za-z_][A-Za-z0-9_]*"
    },
    "CodeGenNode": {
      "type": "structure",
      "required": [
        "Id",
        "NodeType",
        "Args"
      ],
      "members": {
        "Id": {
          "shape": "CodeGenIdentifier",
          "documentation": "<p>A node identifier that is unique within the node's graph.</p>"
        },
        "NodeType": {
          "shape": "CodeGenNodeType",
          "documentation": "<p>The type of node that this is.</p>"
        },
        "Args": {
          "shape": "CodeGenNodeArgs",
          "documentation": "<p>Properties of the node, in the form of name-value pairs.</p>"
        },
        "LineNumber": {
          "shape": "Integer",
          "documentation": "<p>The line number of the node.</p>"
        }
      },
      "documentation": "<p>Represents a node in a directed acyclic graph (DAG)</p>"
    },
    "CodeGenNodeArg": {
      "type": "structure",
      "required": [
        "Name",
        "Value"
      ],
      "members": {
        "Name": {
          "shape": "CodeGenArgName",
          "documentation": "<p>The name of the argument or property.</p>"
        },
        "Value": {
          "shape": "CodeGenArgValue",
          "documentation": "<p>The value of the argument or property.</p>"
        },
        "Param": {
          "shape": "Boolean",
          "documentation": "<p>True if the value is used as a parameter.</p>"
        }
      },
      "documentation": "<p>An argument or property of a node.</p>"
    },
    "CodeGenNodeArgs": {
      "type": "list",
      "member": {
        "shape": "CodeGenNodeArg"
      },
      "max": 50,
      "min": 0
    },
    "CodeGenNodeType": {
      "type": "string"
    },
    "Column": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>Column</code>.</p>"
        },
        "Type": {
          "shape": "ColumnTypeString",
          "documentation": "<p>The data type of the <code>Column</code>.</p>"
        },
        "Comment": {
          "shape": "CommentString",
          "documentation": "<p>A free-form text comment.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>These key-value pairs define properties associated with the column.</p>"
        }
      },
      "documentation": "<p>A column in a <code>Table</code>.</p>"
    },
    "ColumnError": {
      "type": "structure",
      "members": {
        "ColumnName": {
          "shape": "NameString",
          "documentation": "<p>The name of the column.</p>"
        },
        "Error": {
          "shape": "ErrorDetail",
          "documentation": "<p>The error message occurred during operation.</p>"
        }
      },
      "documentation": "<p>Defines a column containing error.</p>"
    },
    "ColumnErrors": {
      "type": "list",
      "member": {
        "shape": "ColumnError"
      }
    },
    "ColumnList": {
      "type": "list",
      "member": {
        "shape": "Column"
      }
    },
    "ColumnNameString": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "ColumnStatistics": {
      "type": "structure",
      "required": [
        "ColumnName",
        "ColumnType",
        "AnalyzedTime",
        "StatisticsData"
      ],
      "members": {
        "ColumnName": {
          "shape": "NameString",
          "documentation": "<p>The name of the column.</p>"
        },
        "ColumnType": {
          "shape": "TypeString",
          "documentation": "<p>The type of the column.</p>"
        },
        "AnalyzedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The analyzed time of the column statistics.</p>"
        },
        "StatisticsData": {
          "shape": "ColumnStatisticsData",
          "documentation": "<p>The statistics of the column.</p>"
        }
      },
      "documentation": "<p>Defines a column statistics.</p>"
    },
    "ColumnStatisticsData": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "Type": {
          "shape": "ColumnStatisticsType",
          "documentation": "<p>The name of the column.</p>"
        },
        "BooleanColumnStatisticsData": {
          "shape": "BooleanColumnStatisticsData",
          "documentation": "<p>Boolean Column Statistics Data.</p>"
        },
        "DateColumnStatisticsData": {
          "shape": "DateColumnStatisticsData",
          "documentation": "<p>Date Column Statistics Data.</p>"
        },
        "DecimalColumnStatisticsData": {
          "shape": "DecimalColumnStatisticsData",
          "documentation": "<p>Decimal Column Statistics Data.</p>"
        },
        "DoubleColumnStatisticsData": {
          "shape": "DoubleColumnStatisticsData",
          "documentation": "<p>Double Column Statistics Data.</p>"
        },
        "LongColumnStatisticsData": {
          "shape": "LongColumnStatisticsData",
          "documentation": "<p>Long Column Statistics Data.</p>"
        },
        "StringColumnStatisticsData": {
          "shape": "StringColumnStatisticsData",
          "documentation": "<p>String Column Statistics Data.</p>"
        },
        "BinaryColumnStatisticsData": {
          "shape": "BinaryColumnStatisticsData",
          "documentation": "<p>Binary Column Statistics Data.</p>"
        }
      },
      "documentation": "<p>Defines a column statistics data.</p>"
    },
    "ColumnStatisticsError": {
      "type": "structure",
      "members": {
        "ColumnStatistics": {
          "shape": "ColumnStatistics",
          "documentation": "<p>The ColumnStatistics of the column.</p>"
        },
        "Error": {
          "shape": "ErrorDetail",
          "documentation": "<p>The error message occurred during operation.</p>"
        }
      },
      "documentation": "<p>Defines a column containing error.</p>"
    },
    "ColumnStatisticsErrors": {
      "type": "list",
      "member": {
        "shape": "ColumnStatisticsError"
      }
    },
    "ColumnStatisticsList": {
      "type": "list",
      "member": {
        "shape": "ColumnStatistics"
      }
    },
    "ColumnStatisticsType": {
      "type": "string",
      "enum": [
        "BOOLEAN",
        "DATE",
        "DECIMAL",
        "DOUBLE",
        "LONG",
        "STRING",
        "BINARY"
      ]
    },
    "ColumnTypeString": {
      "type": "string",
      "max": 131072,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "ColumnValueStringList": {
      "type": "list",
      "member": {
        "shape": "ColumnValuesString"
      }
    },
    "ColumnValuesString": {
      "type": "string"
    },
    "CommentString": {
      "type": "string",
      "max": 255,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "Comparator": {
      "type": "string",
      "enum": [
        "EQUALS",
        "GREATER_THAN",
        "LESS_THAN",
        "GREATER_THAN_EQUALS",
        "LESS_THAN_EQUALS"
      ]
    },
    "Condition": {
      "type": "structure",
      "members": {
        "LogicalOperator": {
          "shape": "LogicalOperator",
          "documentation": "<p>A logical operator.</p>"
        },
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job whose <code>JobRuns</code> this condition applies to, and on which this trigger waits.</p>"
        },
        "State": {
          "shape": "JobRunState",
          "documentation": "<p>The condition state. Currently, the only job states that a trigger can listen for are <code>SUCCEEDED</code>, <code>STOPPED</code>, <code>FAILED</code>, and <code>TIMEOUT</code>. The only crawler states that a trigger can listen for are <code>SUCCEEDED</code>, <code>FAILED</code>, and <code>CANCELLED</code>.</p>"
        },
        "CrawlerName": {
          "shape": "NameString",
          "documentation": "<p>The name of the crawler to which this condition applies.</p>"
        },
        "CrawlState": {
          "shape": "CrawlState",
          "documentation": "<p>The state of the crawler to which this condition applies.</p>"
        }
      },
      "documentation": "<p>Defines a condition under which a trigger fires.</p>"
    },
    "ConditionList": {
      "type": "list",
      "member": {
        "shape": "Condition"
      }
    },
    "ConfusionMatrix": {
      "type": "structure",
      "members": {
        "NumTruePositives": {
          "shape": "RecordsCount",
          "documentation": "<p>The number of matches in the data that the transform correctly found, in the confusion matrix for your transform.</p>"
        },
        "NumFalsePositives": {
          "shape": "RecordsCount",
          "documentation": "<p>The number of nonmatches in the data that the transform incorrectly classified as a match, in the confusion matrix for your transform.</p>"
        },
        "NumTrueNegatives": {
          "shape": "RecordsCount",
          "documentation": "<p>The number of nonmatches in the data that the transform correctly rejected, in the confusion matrix for your transform.</p>"
        },
        "NumFalseNegatives": {
          "shape": "RecordsCount",
          "documentation": "<p>The number of matches in the data that the transform didn't find, in the confusion matrix for your transform.</p>"
        }
      },
      "documentation": "<p>The confusion matrix shows you what your transform is predicting accurately and what types of errors it is making.</p> <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Confusion_matrix\">Confusion matrix</a> in Wikipedia.</p>"
    },
    "Connection": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the connection definition.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>The description of the connection.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "documentation": "<p>The type of the connection. Currently, SFTP is not supported.</p>"
        },
        "MatchCriteria": {
          "shape": "MatchCriteria",
          "documentation": "<p>A list of criteria that can be used in selecting this connection.</p>"
        },
        "ConnectionProperties": {
          "shape": "ConnectionProperties",
          "documentation": "<p>These key-value pairs define parameters for the connection:</p> <ul> <li> <p> <code>HOST</code> - The host URI: either the fully qualified domain name (FQDN) or the IPv4 address of the database host.</p> </li> <li> <p> <code>PORT</code> - The port number, between 1024 and 65535, of the port on which the database host is listening for database connections.</p> </li> <li> <p> <code>USER_NAME</code> - The name under which to log in to the database. The value string for <code>USER_NAME</code> is \"<code>USERNAME</code>\".</p> </li> <li> <p> <code>PASSWORD</code> - A password, if one is used, for the user name.</p> </li> <li> <p> <code>ENCRYPTED_PASSWORD</code> - When you enable connection password protection by setting <code>ConnectionPasswordEncryption</code> in the Data Catalog encryption settings, this field stores the encrypted password.</p> </li> <li> <p> <code>JDBC_DRIVER_JAR_URI</code> - The Amazon Simple Storage Service (Amazon S3) path of the JAR file that contains the JDBC driver to use.</p> </li> <li> <p> <code>JDBC_DRIVER_CLASS_NAME</code> - The class name of the JDBC driver to use.</p> </li> <li> <p> <code>JDBC_ENGINE</code> - The name of the JDBC engine to use.</p> </li> <li> <p> <code>JDBC_ENGINE_VERSION</code> - The version of the JDBC engine to use.</p> </li> <li> <p> <code>CONFIG_FILES</code> - (Reserved for future use.)</p> </li> <li> <p> <code>INSTANCE_ID</code> - The instance ID to use.</p> </li> <li> <p> <code>JDBC_CONNECTION_URL</code> - The URL for connecting to a JDBC data source.</p> </li> <li> <p> <code>JDBC_ENFORCE_SSL</code> - A Boolean string (true, false) specifying whether Secure Sockets Layer (SSL) with hostname matching is enforced for the JDBC connection on the client. The default is false.</p> </li> <li> <p> <code>CUSTOM_JDBC_CERT</code> - An Amazon S3 location specifying the customer's root certificate. AWS Glue uses this root certificate to validate the customer’s certificate when connecting to the customer database. AWS Glue only handles X.509 certificates. The certificate provided must be DER-encoded and supplied in Base64 encoding PEM format.</p> </li> <li> <p> <code>SKIP_CUSTOM_JDBC_CERT_VALIDATION</code> - By default, this is <code>false</code>. AWS Glue validates the Signature algorithm and Subject Public Key Algorithm for the customer certificate. The only permitted algorithms for the Signature algorithm are SHA256withRSA, SHA384withRSA or SHA512withRSA. For the Subject Public Key Algorithm, the key length must be at least 2048. You can set the value of this property to <code>true</code> to skip AWS Glue’s validation of the customer certificate.</p> </li> <li> <p> <code>CUSTOM_JDBC_CERT_STRING</code> - A custom JDBC certificate string which is used for domain match or distinguished name match to prevent a man-in-the-middle attack. In Oracle database, this is used as the <code>SSL_SERVER_CERT_DN</code>; in Microsoft SQL Server, this is used as the <code>hostNameInCertificate</code>.</p> </li> <li> <p> <code>CONNECTION_URL</code> - The URL for connecting to a general (non-JDBC) data source.</p> </li> <li> <p> <code>KAFKA_BOOTSTRAP_SERVERS</code> - A comma-separated list of host and port pairs that are the addresses of the Apache Kafka brokers in a Kafka cluster to which a Kafka client will connect to and bootstrap itself.</p> </li> </ul>"
        },
        "PhysicalConnectionRequirements": {
          "shape": "PhysicalConnectionRequirements",
          "documentation": "<p>A map of physical connection requirements, such as virtual private cloud (VPC) and <code>SecurityGroup</code>, that are needed to make this connection successfully.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this connection definition was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this connection definition was updated.</p>"
        },
        "LastUpdatedBy": {
          "shape": "NameString",
          "documentation": "<p>The user, group, or role that last updated this connection definition.</p>"
        }
      },
      "documentation": "<p>Defines a connection to a data source.</p>"
    },
    "ConnectionInput": {
      "type": "structure",
      "required": [
        "Name",
        "ConnectionType",
        "ConnectionProperties"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the connection.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>The description of the connection.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "documentation": "<p>The type of the connection. Currently, these types are supported:</p> <ul> <li> <p> <code>JDBC</code> - Designates a connection to a database through Java Database Connectivity (JDBC).</p> </li> <li> <p> <code>KAFKA</code> - Designates a connection to an Apache Kafka streaming platform.</p> </li> <li> <p> <code>MONGODB</code> - Designates a connection to a MongoDB document database.</p> </li> </ul> <p>SFTP is not supported.</p>"
        },
        "MatchCriteria": {
          "shape": "MatchCriteria",
          "documentation": "<p>A list of criteria that can be used in selecting this connection.</p>"
        },
        "ConnectionProperties": {
          "shape": "ConnectionProperties",
          "documentation": "<p>These key-value pairs define parameters for the connection.</p>"
        },
        "PhysicalConnectionRequirements": {
          "shape": "PhysicalConnectionRequirements",
          "documentation": "<p>A map of physical connection requirements, such as virtual private cloud (VPC) and <code>SecurityGroup</code>, that are needed to successfully make this connection.</p>"
        }
      },
      "documentation": "<p>A structure that is used to specify a connection to create or update.</p>"
    },
    "ConnectionList": {
      "type": "list",
      "member": {
        "shape": "Connection"
      }
    },
    "ConnectionName": {
      "type": "string"
    },
    "ConnectionPasswordEncryption": {
      "type": "structure",
      "required": [
        "ReturnConnectionPasswordEncrypted"
      ],
      "members": {
        "ReturnConnectionPasswordEncrypted": {
          "shape": "Boolean",
          "documentation": "<p>When the <code>ReturnConnectionPasswordEncrypted</code> flag is set to \"true\", passwords remain encrypted in the responses of <code>GetConnection</code> and <code>GetConnections</code>. This encryption takes effect independently from catalog encryption. </p>"
        },
        "AwsKmsKeyId": {
          "shape": "NameString",
          "documentation": "<p>An AWS KMS key that is used to encrypt the connection password. </p> <p>If connection password protection is enabled, the caller of <code>CreateConnection</code> and <code>UpdateConnection</code> needs at least <code>kms:Encrypt</code> permission on the specified AWS KMS key, to encrypt passwords before storing them in the Data Catalog. </p> <p>You can set the decrypt permission to enable or restrict access on the password key according to your security requirements.</p>"
        }
      },
      "documentation": "<p>The data structure used by the Data Catalog to encrypt the password as part of <code>CreateConnection</code> or <code>UpdateConnection</code> and store it in the <code>ENCRYPTED_PASSWORD</code> field in the connection properties. You can enable catalog encryption or only password encryption.</p> <p>When a <code>CreationConnection</code> request arrives containing a password, the Data Catalog first encrypts the password using your AWS KMS key. It then encrypts the whole connection object again if catalog encryption is also enabled.</p> <p>This encryption requires that you set AWS KMS key permissions to enable or restrict access on the password key according to your security requirements. For example, you might want only administrators to have decrypt permission on the password key.</p>"
    },
    "ConnectionProperties": {
      "type": "map",
      "key": {
        "shape": "ConnectionPropertyKey"
      },
      "value": {
        "shape": "ValueString"
      },
      "max": 100,
      "min": 0
    },
    "ConnectionPropertyKey": {
      "type": "string",
      "enum": [
        "HOST",
        "PORT",
        "USERNAME",
        "PASSWORD",
        "ENCRYPTED_PASSWORD",
        "JDBC_DRIVER_JAR_URI",
        "JDBC_DRIVER_CLASS_NAME",
        "JDBC_ENGINE",
        "JDBC_ENGINE_VERSION",
        "CONFIG_FILES",
        "INSTANCE_ID",
        "JDBC_CONNECTION_URL",
        "JDBC_ENFORCE_SSL",
        "CUSTOM_JDBC_CERT",
        "SKIP_CUSTOM_JDBC_CERT_VALIDATION",
        "CUSTOM_JDBC_CERT_STRING",
        "CONNECTION_URL",
        "KAFKA_BOOTSTRAP_SERVERS",
        "KAFKA_SSL_ENABLED",
        "KAFKA_CUSTOM_CERT",
        "KAFKA_SKIP_CUSTOM_CERT_VALIDATION"
      ]
    },
    "ConnectionType": {
      "type": "string",
      "enum": [
        "JDBC",
        "SFTP",
        "MONGODB",
        "KAFKA",
        "NETWORK"
      ]
    },
    "ConnectionsList": {
      "type": "structure",
      "members": {
        "Connections": {
          "shape": "OrchestrationStringList",
          "documentation": "<p>A list of connections used by the job.</p>"
        }
      },
      "documentation": "<p>Specifies the connections used by a job.</p>"
    },
    "Crawl": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "CrawlState",
          "documentation": "<p>The state of the crawler.</p>"
        },
        "StartedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The date and time on which the crawl started.</p>"
        },
        "CompletedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The date and time on which the crawl completed.</p>"
        },
        "ErrorMessage": {
          "shape": "DescriptionString",
          "documentation": "<p>The error message associated with the crawl.</p>"
        },
        "LogGroup": {
          "shape": "LogGroup",
          "documentation": "<p>The log group associated with the crawl.</p>"
        },
        "LogStream": {
          "shape": "LogStream",
          "documentation": "<p>The log stream associated with the crawl.</p>"
        }
      },
      "documentation": "<p>The details of a crawl in the workflow.</p>"
    },
    "CrawlList": {
      "type": "list",
      "member": {
        "shape": "Crawl"
      }
    },
    "CrawlState": {
      "type": "string",
      "enum": [
        "RUNNING",
        "CANCELLING",
        "CANCELLED",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "Crawler": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the crawler.</p>"
        },
        "Role": {
          "shape": "Role",
          "documentation": "<p>The Amazon Resource Name (ARN) of an IAM role that's used to access customer resources, such as Amazon Simple Storage Service (Amazon S3) data.</p>"
        },
        "Targets": {
          "shape": "CrawlerTargets",
          "documentation": "<p>A collection of targets to crawl.</p>"
        },
        "DatabaseName": {
          "shape": "DatabaseName",
          "documentation": "<p>The name of the database in which the crawler's output is stored.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the crawler.</p>"
        },
        "Classifiers": {
          "shape": "ClassifierNameList",
          "documentation": "<p>A list of UTF-8 strings that specify the custom classifiers that are associated with the crawler.</p>"
        },
        "SchemaChangePolicy": {
          "shape": "SchemaChangePolicy",
          "documentation": "<p>The policy that specifies update and delete behaviors for the crawler.</p>"
        },
        "State": {
          "shape": "CrawlerState",
          "documentation": "<p>Indicates whether the crawler is running, or whether a run is pending.</p>"
        },
        "TablePrefix": {
          "shape": "TablePrefix",
          "documentation": "<p>The prefix added to the names of tables that are created.</p>"
        },
        "Schedule": {
          "shape": "Schedule",
          "documentation": "<p>For scheduled crawlers, the schedule when the crawler runs.</p>"
        },
        "CrawlElapsedTime": {
          "shape": "MillisecondsCount",
          "documentation": "<p>If the crawler is running, contains the total time elapsed since the last crawl began.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the crawler was created.</p>"
        },
        "LastUpdated": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the crawler was last updated.</p>"
        },
        "LastCrawl": {
          "shape": "LastCrawlInfo",
          "documentation": "<p>The status of the last crawl, and potentially error information if an error occurred.</p>"
        },
        "Version": {
          "shape": "VersionId",
          "documentation": "<p>The version of the crawler.</p>"
        },
        "Configuration": {
          "shape": "CrawlerConfiguration",
          "documentation": "<p>Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html\">Configuring a Crawler</a>.</p>"
        },
        "CrawlerSecurityConfiguration": {
          "shape": "CrawlerSecurityConfiguration",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used by this crawler.</p>"
        }
      },
      "documentation": "<p>Specifies a crawler program that examines a data source and uses classifiers to try to determine its schema. If successful, the crawler records metadata concerning the data source in the AWS Glue Data Catalog.</p>"
    },
    "CrawlerConfiguration": {
      "type": "string"
    },
    "CrawlerList": {
      "type": "list",
      "member": {
        "shape": "Crawler"
      }
    },
    "CrawlerMetrics": {
      "type": "structure",
      "members": {
        "CrawlerName": {
          "shape": "NameString",
          "documentation": "<p>The name of the crawler.</p>"
        },
        "TimeLeftSeconds": {
          "shape": "NonNegativeDouble",
          "documentation": "<p>The estimated time left to complete a running crawl.</p>"
        },
        "StillEstimating": {
          "shape": "Boolean",
          "documentation": "<p>True if the crawler is still estimating how long it will take to complete this run.</p>"
        },
        "LastRuntimeSeconds": {
          "shape": "NonNegativeDouble",
          "documentation": "<p>The duration of the crawler's most recent run, in seconds.</p>"
        },
        "MedianRuntimeSeconds": {
          "shape": "NonNegativeDouble",
          "documentation": "<p>The median duration of this crawler's runs, in seconds.</p>"
        },
        "TablesCreated": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The number of tables created by this crawler.</p>"
        },
        "TablesUpdated": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The number of tables updated by this crawler.</p>"
        },
        "TablesDeleted": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The number of tables deleted by this crawler.</p>"
        }
      },
      "documentation": "<p>Metrics for a specified crawler.</p>"
    },
    "CrawlerMetricsList": {
      "type": "list",
      "member": {
        "shape": "CrawlerMetrics"
      }
    },
    "CrawlerNameList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "max": 100,
      "min": 0
    },
    "CrawlerNodeDetails": {
      "type": "structure",
      "members": {
        "Crawls": {
          "shape": "CrawlList",
          "documentation": "<p>A list of crawls represented by the crawl node.</p>"
        }
      },
      "documentation": "<p>The details of a Crawler node present in the workflow.</p>"
    },
    "CrawlerSecurityConfiguration": {
      "type": "string",
      "max": 128,
      "min": 0
    },
    "CrawlerState": {
      "type": "string",
      "enum": [
        "READY",
        "RUNNING",
        "STOPPING"
      ]
    },
    "CrawlerTargets": {
      "type": "structure",
      "members": {
        "S3Targets": {
          "shape": "S3TargetList",
          "documentation": "<p>Specifies Amazon Simple Storage Service (Amazon S3) targets.</p>"
        },
        "JdbcTargets": {
          "shape": "JdbcTargetList",
          "documentation": "<p>Specifies JDBC targets.</p>"
        },
        "DynamoDBTargets": {
          "shape": "DynamoDBTargetList",
          "documentation": "<p>Specifies Amazon DynamoDB targets.</p>"
        },
        "CatalogTargets": {
          "shape": "CatalogTargetList",
          "documentation": "<p>Specifies AWS Glue Data Catalog targets.</p>"
        }
      },
      "documentation": "<p>Specifies data stores to crawl.</p>"
    },
    "CreateClassifierRequest": {
      "type": "structure",
      "members": {
        "GrokClassifier": {
          "shape": "CreateGrokClassifierRequest",
          "documentation": "<p>A <code>GrokClassifier</code> object specifying the classifier to create.</p>"
        },
        "XMLClassifier": {
          "shape": "CreateXMLClassifierRequest",
          "documentation": "<p>An <code>XMLClassifier</code> object specifying the classifier to create.</p>"
        },
        "JsonClassifier": {
          "shape": "CreateJsonClassifierRequest",
          "documentation": "<p>A <code>JsonClassifier</code> object specifying the classifier to create.</p>"
        },
        "CsvClassifier": {
          "shape": "CreateCsvClassifierRequest",
          "documentation": "<p>A <code>CsvClassifier</code> object specifying the classifier to create.</p>"
        }
      }
    },
    "CreateClassifierResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateConnectionRequest": {
      "type": "structure",
      "required": [
        "ConnectionInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which to create the connection. If none is provided, the AWS account ID is used by default.</p>"
        },
        "ConnectionInput": {
          "shape": "ConnectionInput",
          "documentation": "<p>A <code>ConnectionInput</code> object defining the connection to create.</p>"
        }
      }
    },
    "CreateConnectionResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateCrawlerRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Role",
        "Targets"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the new crawler.</p>"
        },
        "Role": {
          "shape": "Role",
          "documentation": "<p>The IAM role or Amazon Resource Name (ARN) of an IAM role used by the new crawler to access customer resources.</p>"
        },
        "DatabaseName": {
          "shape": "DatabaseName",
          "documentation": "<p>The AWS Glue database where results are written, such as: <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the new crawler.</p>"
        },
        "Targets": {
          "shape": "CrawlerTargets",
          "documentation": "<p>A list of collection of targets to crawl.</p>"
        },
        "Schedule": {
          "shape": "CronExpression",
          "documentation": "<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>"
        },
        "Classifiers": {
          "shape": "ClassifierNameList",
          "documentation": "<p>A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.</p>"
        },
        "TablePrefix": {
          "shape": "TablePrefix",
          "documentation": "<p>The table prefix used for catalog tables that are created.</p>"
        },
        "SchemaChangePolicy": {
          "shape": "SchemaChangePolicy",
          "documentation": "<p>The policy for the crawler's update and deletion behavior.</p>"
        },
        "Configuration": {
          "shape": "CrawlerConfiguration",
          "documentation": "<p>Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html\">Configuring a Crawler</a>.</p>"
        },
        "CrawlerSecurityConfiguration": {
          "shape": "CrawlerSecurityConfiguration",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used by this crawler.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>The tags to use with this crawler request. You may use tags to limit access to the crawler. For more information about tags in AWS Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">AWS Tags in AWS Glue</a> in the developer guide.</p>"
        }
      }
    },
    "CreateCrawlerResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateCsvClassifierRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "Delimiter": {
          "shape": "CsvColumnDelimiter",
          "documentation": "<p>A custom symbol to denote what separates each column entry in the row.</p>"
        },
        "QuoteSymbol": {
          "shape": "CsvQuoteSymbol",
          "documentation": "<p>A custom symbol to denote what combines content into a single column value. Must be different from the column delimiter.</p>"
        },
        "ContainsHeader": {
          "shape": "CsvHeaderOption",
          "documentation": "<p>Indicates whether the CSV file contains a header.</p>"
        },
        "Header": {
          "shape": "CsvHeader",
          "documentation": "<p>A list of strings representing column names.</p>"
        },
        "DisableValueTrimming": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies not to trim values before identifying the type of column values. The default value is true.</p>"
        },
        "AllowSingleColumn": {
          "shape": "NullableBoolean",
          "documentation": "<p>Enables the processing of files that contain only one column.</p>"
        }
      },
      "documentation": "<p>Specifies a custom CSV classifier for <code>CreateClassifier</code> to create.</p>"
    },
    "CreateDatabaseRequest": {
      "type": "structure",
      "required": [
        "DatabaseInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which to create the database. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseInput": {
          "shape": "DatabaseInput",
          "documentation": "<p>The metadata for the database.</p>"
        }
      }
    },
    "CreateDatabaseResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateDevEndpointRequest": {
      "type": "structure",
      "required": [
        "EndpointName",
        "RoleArn"
      ],
      "members": {
        "EndpointName": {
          "shape": "GenericString",
          "documentation": "<p>The name to be assigned to the new <code>DevEndpoint</code>.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The IAM role for the <code>DevEndpoint</code>.</p>"
        },
        "SecurityGroupIds": {
          "shape": "StringList",
          "documentation": "<p>Security group IDs for the security groups to be used by the new <code>DevEndpoint</code>.</p>"
        },
        "SubnetId": {
          "shape": "GenericString",
          "documentation": "<p>The subnet ID for the new <code>DevEndpoint</code> to use.</p>"
        },
        "PublicKey": {
          "shape": "GenericString",
          "documentation": "<p>The public key to be used by this <code>DevEndpoint</code> for authentication. This attribute is provided for backward compatibility because the recommended attribute to use is public keys.</p>"
        },
        "PublicKeys": {
          "shape": "PublicKeysList",
          "documentation": "<p>A list of public keys to be used by the development endpoints for authentication. The use of this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.</p> <note> <p>If you previously created an endpoint with a public key, you must remove that key to be able to set a list of public keys. Call the <code>UpdateDevEndpoint</code> API with the public key content in the <code>deletePublicKeys</code> attribute, and the list of new keys in the <code>addPublicKeys</code> attribute.</p> </note>"
        },
        "NumberOfNodes": {
          "shape": "IntegerValue",
          "documentation": "<p>The number of AWS Glue Data Processing Units (DPUs) to allocate to this <code>DevEndpoint</code>.</p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> </ul> <p>Known issue: when a development endpoint is created with the <code>G.2X</code> <code>WorkerType</code> configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. </p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p> <p>For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p> <p>Development endpoints that are created without specifying a Glue version default to Glue 0.9.</p> <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p> <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>"
        },
        "ExtraPythonLibsS3Path": {
          "shape": "GenericString",
          "documentation": "<p>The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a comma.</p> <note> <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on C extensions, such as the <a href=\"http://pandas.pydata.org/\">pandas</a> Python data analysis library, are not yet supported.</p> </note>"
        },
        "ExtraJarsS3Path": {
          "shape": "GenericString",
          "documentation": "<p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded in your <code>DevEndpoint</code>.</p>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used with this <code>DevEndpoint</code>.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>The tags to use with this DevEndpoint. You may use tags to limit access to the DevEndpoint. For more information about tags in AWS Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">AWS Tags in AWS Glue</a> in the developer guide.</p>"
        },
        "Arguments": {
          "shape": "MapValue",
          "documentation": "<p>A map of arguments used to configure the <code>DevEndpoint</code>.</p>"
        }
      }
    },
    "CreateDevEndpointResponse": {
      "type": "structure",
      "members": {
        "EndpointName": {
          "shape": "GenericString",
          "documentation": "<p>The name assigned to the new <code>DevEndpoint</code>.</p>"
        },
        "Status": {
          "shape": "GenericString",
          "documentation": "<p>The current status of the new <code>DevEndpoint</code>.</p>"
        },
        "SecurityGroupIds": {
          "shape": "StringList",
          "documentation": "<p>The security groups assigned to the new <code>DevEndpoint</code>.</p>"
        },
        "SubnetId": {
          "shape": "GenericString",
          "documentation": "<p>The subnet ID assigned to the new <code>DevEndpoint</code>.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the role assigned to the new <code>DevEndpoint</code>.</p>"
        },
        "YarnEndpointAddress": {
          "shape": "GenericString",
          "documentation": "<p>The address of the YARN endpoint used by this <code>DevEndpoint</code>.</p>"
        },
        "ZeppelinRemoteSparkInterpreterPort": {
          "shape": "IntegerValue",
          "documentation": "<p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>"
        },
        "NumberOfNodes": {
          "shape": "IntegerValue",
          "documentation": "<p>The number of AWS Glue Data Processing Units (DPUs) allocated to this DevEndpoint.</p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated to the development endpoint. May be a value of Standard, G.1X, or G.2X.</p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p>"
        },
        "AvailabilityZone": {
          "shape": "GenericString",
          "documentation": "<p>The AWS Availability Zone where this <code>DevEndpoint</code> is located.</p>"
        },
        "VpcId": {
          "shape": "GenericString",
          "documentation": "<p>The ID of the virtual private cloud (VPC) used by this <code>DevEndpoint</code>.</p>"
        },
        "ExtraPythonLibsS3Path": {
          "shape": "GenericString",
          "documentation": "<p>The paths to one or more Python libraries in an S3 bucket that will be loaded in your <code>DevEndpoint</code>.</p>"
        },
        "ExtraJarsS3Path": {
          "shape": "GenericString",
          "documentation": "<p>Path to one or more Java <code>.jar</code> files in an S3 bucket that will be loaded in your <code>DevEndpoint</code>.</p>"
        },
        "FailureReason": {
          "shape": "GenericString",
          "documentation": "<p>The reason for a current failure in this <code>DevEndpoint</code>.</p>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure being used with this <code>DevEndpoint</code>.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampValue",
          "documentation": "<p>The point in time at which this <code>DevEndpoint</code> was created.</p>"
        },
        "Arguments": {
          "shape": "MapValue",
          "documentation": "<p>The map of arguments used to configure this <code>DevEndpoint</code>.</p> <p>Valid arguments are:</p> <ul> <li> <p> <code>\"--enable-glue-datacatalog\": \"\"</code> </p> </li> <li> <p> <code>\"GLUE_PYTHON_VERSION\": \"3\"</code> </p> </li> <li> <p> <code>\"GLUE_PYTHON_VERSION\": \"2\"</code> </p> </li> </ul> <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>"
        }
      }
    },
    "CreateGrokClassifierRequest": {
      "type": "structure",
      "required": [
        "Classification",
        "Name",
        "GrokPattern"
      ],
      "members": {
        "Classification": {
          "shape": "Classification",
          "documentation": "<p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the new classifier.</p>"
        },
        "GrokPattern": {
          "shape": "GrokPattern",
          "documentation": "<p>The grok pattern used by this classifier.</p>"
        },
        "CustomPatterns": {
          "shape": "CustomPatterns",
          "documentation": "<p>Optional custom grok patterns used by this classifier.</p>"
        }
      },
      "documentation": "<p>Specifies a <code>grok</code> classifier for <code>CreateClassifier</code> to create.</p>"
    },
    "CreateJobRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Role",
        "Command"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name you assign to this job definition. It must be unique in your account.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>Description of the job being defined.</p>"
        },
        "LogUri": {
          "shape": "UriString",
          "documentation": "<p>This field is reserved for future use.</p>"
        },
        "Role": {
          "shape": "RoleString",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job.</p>"
        },
        "ExecutionProperty": {
          "shape": "ExecutionProperty",
          "documentation": "<p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed for this job.</p>"
        },
        "Command": {
          "shape": "JobCommand",
          "documentation": "<p>The <code>JobCommand</code> that executes this job.</p>"
        },
        "DefaultArguments": {
          "shape": "GenericMap",
          "documentation": "<p>The default arguments for this job.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>"
        },
        "NonOverridableArguments": {
          "shape": "GenericMap",
          "documentation": "<p>Non-overridable arguments for this job, specified as name-value pairs.</p>"
        },
        "Connections": {
          "shape": "ConnectionsList",
          "documentation": "<p>The connections used for this job.</p>"
        },
        "MaxRetries": {
          "shape": "MaxRetries",
          "documentation": "<p>The maximum number of times to retry this job if it fails.</p>"
        },
        "AllocatedCapacity": {
          "shape": "IntegerValue",
          "documentation": "<p>This parameter is deprecated. Use <code>MaxCapacity</code> instead.</p> <p>The number of AWS Glue data processing units (DPUs) to allocate to this Job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p>",
          "deprecated": true,
          "deprecatedMessage": "This property is deprecated, use MaxCapacity instead."
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p> <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p> <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are running a Python shell job or an Apache Spark ETL job:</p> <ul> <li> <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p> </li> <li> <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\") or Apache Spark streaming ETL job (<code>JobCommand.Name</code>=\"gluestreaming\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p> </li> </ul>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used with this job.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>The tags to use with this job. You may use tags to limit access to the job. For more information about tags in AWS Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">AWS Tags in AWS Glue</a> in the developer guide.</p>"
        },
        "NotificationProperty": {
          "shape": "NotificationProperty",
          "documentation": "<p>Specifies configuration properties of a job notification.</p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark. </p> <p>For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p> <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p> <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> </ul>"
        }
      }
    },
    "CreateJobResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The unique name that was provided for this job definition.</p>"
        }
      }
    },
    "CreateJsonClassifierRequest": {
      "type": "structure",
      "required": [
        "Name",
        "JsonPath"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "JsonPath": {
          "shape": "JsonPath",
          "documentation": "<p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json\">Writing JsonPath Custom Classifiers</a>.</p>"
        }
      },
      "documentation": "<p>Specifies a JSON classifier for <code>CreateClassifier</code> to create.</p>"
    },
    "CreateMLTransformRequest": {
      "type": "structure",
      "required": [
        "Name",
        "InputRecordTables",
        "Parameters",
        "Role"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The unique name that you give the transform when you create it.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the machine learning transform that is being defined. The default is an empty string.</p>"
        },
        "InputRecordTables": {
          "shape": "GlueTables",
          "documentation": "<p>A list of AWS Glue table definitions used by the transform.</p>"
        },
        "Parameters": {
          "shape": "TransformParameters",
          "documentation": "<p>The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type.</p>"
        },
        "Role": {
          "shape": "RoleString",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both AWS Glue service role permissions to AWS Glue resources, and Amazon S3 permissions required by the transform. </p> <ul> <li> <p>This role needs AWS Glue service role permissions to allow access to resources in AWS Glue. See <a href=\"https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html\">Attach a Policy to IAM Users That Access AWS Glue</a>.</p> </li> <li> <p>This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.</p> </li> </ul>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">AWS Glue Versions</a> in the developer guide.</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>. </p> <p> <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p> <ul> <li> <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p> </li> <li> <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p> </li> <li> <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p> </li> <li> <p> <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p> </li> </ul> <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p> <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p> </li> </ul> <p> <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p> <ul> <li> <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p> </li> <li> <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p> </li> <li> <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p> </li> <li> <p> <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p> </li> </ul>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p> <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>"
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The timeout of the task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
        },
        "MaxRetries": {
          "shape": "NullableInteger",
          "documentation": "<p>The maximum number of times to retry a task for this transform after a task run fails.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>The tags to use with this machine learning transform. You may use tags to limit access to the machine learning transform. For more information about tags in AWS Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">AWS Tags in AWS Glue</a> in the developer guide.</p>"
        }
      }
    },
    "CreateMLTransformResponse": {
      "type": "structure",
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>A unique identifier that is generated for the transform.</p>"
        }
      }
    },
    "CreatePartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The AWS account ID of the catalog in which the partition is to be created.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the metadata database in which the partition is to be created.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the metadata table in which the partition is to be created.</p>"
        },
        "PartitionInput": {
          "shape": "PartitionInput",
          "documentation": "<p>A <code>PartitionInput</code> structure defining the partition to be created.</p>"
        }
      }
    },
    "CreatePartitionResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateScriptRequest": {
      "type": "structure",
      "members": {
        "DagNodes": {
          "shape": "DagNodes",
          "documentation": "<p>A list of the nodes in the DAG.</p>"
        },
        "DagEdges": {
          "shape": "DagEdges",
          "documentation": "<p>A list of the edges in the DAG.</p>"
        },
        "Language": {
          "shape": "Language",
          "documentation": "<p>The programming language of the resulting code from the DAG.</p>"
        }
      }
    },
    "CreateScriptResponse": {
      "type": "structure",
      "members": {
        "PythonScript": {
          "shape": "PythonScript",
          "documentation": "<p>The Python script generated from the DAG.</p>"
        },
        "ScalaCode": {
          "shape": "ScalaCode",
          "documentation": "<p>The Scala code generated from the DAG.</p>"
        }
      }
    },
    "CreateSecurityConfigurationRequest": {
      "type": "structure",
      "required": [
        "Name",
        "EncryptionConfiguration"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name for the new security configuration.</p>"
        },
        "EncryptionConfiguration": {
          "shape": "EncryptionConfiguration",
          "documentation": "<p>The encryption configuration for the new security configuration.</p>"
        }
      }
    },
    "CreateSecurityConfigurationResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name assigned to the new security configuration.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampValue",
          "documentation": "<p>The time at which the new security configuration was created.</p>"
        }
      }
    },
    "CreateTableRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which to create the <code>Table</code>. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The catalog database in which to create the new table. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "TableInput": {
          "shape": "TableInput",
          "documentation": "<p>The <code>TableInput</code> object that defines the metadata table to create in the catalog.</p>"
        },
        "PartitionIndexes": {
          "shape": "PartitionIndexList",
          "documentation": "<p>A list of partition indexes, <code>PartitionIndex</code> structures, to create in the table.</p>"
        }
      }
    },
    "CreateTableResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateTriggerRequest": {
      "type": "structure",
      "required": [
        "Name",
        "Type",
        "Actions"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger.</p>"
        },
        "WorkflowName": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow associated with the trigger.</p>"
        },
        "Type": {
          "shape": "TriggerType",
          "documentation": "<p>The type of the new trigger.</p>"
        },
        "Schedule": {
          "shape": "GenericString",
          "documentation": "<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p> <p>This field is required when the trigger type is SCHEDULED.</p>"
        },
        "Predicate": {
          "shape": "Predicate",
          "documentation": "<p>A predicate to specify when the new trigger should fire.</p> <p>This field is required when the trigger type is <code>CONDITIONAL</code>.</p>"
        },
        "Actions": {
          "shape": "ActionList",
          "documentation": "<p>The actions initiated by this trigger when it fires.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the new trigger.</p>"
        },
        "StartOnCreation": {
          "shape": "BooleanValue",
          "documentation": "<p>Set to <code>true</code> to start <code>SCHEDULED</code> and <code>CONDITIONAL</code> triggers when created. True is not supported for <code>ON_DEMAND</code> triggers.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>The tags to use with this trigger. You may use tags to limit access to the trigger. For more information about tags in AWS Glue, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html\">AWS Tags in AWS Glue</a> in the developer guide. </p>"
        }
      }
    },
    "CreateTriggerResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger.</p>"
        }
      }
    },
    "CreateUserDefinedFunctionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "FunctionInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which to create the function. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database in which to create the function.</p>"
        },
        "FunctionInput": {
          "shape": "UserDefinedFunctionInput",
          "documentation": "<p>A <code>FunctionInput</code> object that defines the function to create in the Data Catalog.</p>"
        }
      }
    },
    "CreateUserDefinedFunctionResponse": {
      "type": "structure",
      "members": {}
    },
    "CreateWorkflowRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name to be assigned to the workflow. It should be unique within your account.</p>"
        },
        "Description": {
          "shape": "GenericString",
          "documentation": "<p>A description of the workflow.</p>"
        },
        "DefaultRunProperties": {
          "shape": "WorkflowRunProperties",
          "documentation": "<p>A collection of properties to be used as part of each execution of the workflow.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>The tags to be used with this workflow.</p>"
        },
        "MaxConcurrentRuns": {
          "shape": "NullableInteger",
          "documentation": "<p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>"
        }
      }
    },
    "CreateWorkflowResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow which was provided as part of the request.</p>"
        }
      }
    },
    "CreateXMLClassifierRequest": {
      "type": "structure",
      "required": [
        "Classification",
        "Name"
      ],
      "members": {
        "Classification": {
          "shape": "Classification",
          "documentation": "<p>An identifier of the data format that the classifier matches.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "RowTag": {
          "shape": "RowTag",
          "documentation": "<p>The XML tag designating the element that contains each record in an XML document being parsed. This can't identify a self-closing element (closed by <code>/&gt;</code>). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <code>&lt;row item_a=\"A\" item_b=\"B\"&gt;&lt;/row&gt;</code> is okay, but <code>&lt;row item_a=\"A\" item_b=\"B\" /&gt;</code> is not).</p>"
        }
      },
      "documentation": "<p>Specifies an XML classifier for <code>CreateClassifier</code> to create.</p>"
    },
    "CronExpression": {
      "type": "string"
    },
    "CsvClassifier": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this classifier was registered.</p>"
        },
        "LastUpdated": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this classifier was last updated.</p>"
        },
        "Version": {
          "shape": "VersionId",
          "documentation": "<p>The version of this classifier.</p>"
        },
        "Delimiter": {
          "shape": "CsvColumnDelimiter",
          "documentation": "<p>A custom symbol to denote what separates each column entry in the row.</p>"
        },
        "QuoteSymbol": {
          "shape": "CsvQuoteSymbol",
          "documentation": "<p>A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.</p>"
        },
        "ContainsHeader": {
          "shape": "CsvHeaderOption",
          "documentation": "<p>Indicates whether the CSV file contains a header.</p>"
        },
        "Header": {
          "shape": "CsvHeader",
          "documentation": "<p>A list of strings representing column names.</p>"
        },
        "DisableValueTrimming": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies not to trim values before identifying the type of column values. The default value is <code>true</code>.</p>"
        },
        "AllowSingleColumn": {
          "shape": "NullableBoolean",
          "documentation": "<p>Enables the processing of files that contain only one column.</p>"
        }
      },
      "documentation": "<p>A classifier for custom <code>CSV</code> content.</p>"
    },
    "CsvColumnDelimiter": {
      "type": "string",
      "max": 1,
      "min": 1,
      "pattern": "[^\\r\\n]"
    },
    "CsvHeader": {
      "type": "list",
      "member": {
        "shape": "NameString"
      }
    },
    "CsvHeaderOption": {
      "type": "string",
      "enum": [
        "UNKNOWN",
        "PRESENT",
        "ABSENT"
      ]
    },
    "CsvQuoteSymbol": {
      "type": "string",
      "max": 1,
      "min": 1,
      "pattern": "[^\\r\\n]"
    },
    "CustomPatterns": {
      "type": "string",
      "max": 16000,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "DagEdges": {
      "type": "list",
      "member": {
        "shape": "CodeGenEdge"
      }
    },
    "DagNodes": {
      "type": "list",
      "member": {
        "shape": "CodeGenNode"
      }
    },
    "DataCatalogEncryptionSettings": {
      "type": "structure",
      "members": {
        "EncryptionAtRest": {
          "shape": "EncryptionAtRest",
          "documentation": "<p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>"
        },
        "ConnectionPasswordEncryption": {
          "shape": "ConnectionPasswordEncryption",
          "documentation": "<p>When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of <code>CreateConnection</code> or <code>UpdateConnection</code> and store it in the <code>ENCRYPTED_PASSWORD</code> field in the connection properties. You can enable catalog encryption or only password encryption.</p>"
        }
      },
      "documentation": "<p>Contains configuration information for maintaining Data Catalog security.</p>"
    },
    "DataLakePrincipal": {
      "type": "structure",
      "members": {
        "DataLakePrincipalIdentifier": {
          "shape": "DataLakePrincipalString",
          "documentation": "<p>An identifier for the AWS Lake Formation principal.</p>"
        }
      },
      "documentation": "<p>The AWS Lake Formation principal.</p>"
    },
    "DataLakePrincipalString": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "Database": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the database. For Hive compatibility, this is folded to lowercase when it is stored.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the database.</p>"
        },
        "LocationUri": {
          "shape": "URI",
          "documentation": "<p>The location of the database (for example, an HDFS path).</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>These key-value pairs define parameters and properties of the database.</p>"
        },
        "CreateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the metadata database was created in the catalog.</p>"
        },
        "CreateTableDefaultPermissions": {
          "shape": "PrincipalPermissionsList",
          "documentation": "<p>Creates a set of default permissions on the table for principals. </p>"
        },
        "TargetDatabase": {
          "shape": "DatabaseIdentifier",
          "documentation": "<p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>"
        },
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the database resides.</p>"
        }
      },
      "documentation": "<p>The <code>Database</code> object represents a logical grouping of tables that might reside in a Hive metastore or an RDBMS.</p>"
    },
    "DatabaseIdentifier": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the database resides.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database.</p>"
        }
      },
      "documentation": "<p>A structure that describes a target database for resource linking.</p>"
    },
    "DatabaseInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the database. For Hive compatibility, this is folded to lowercase when it is stored.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the database.</p>"
        },
        "LocationUri": {
          "shape": "URI",
          "documentation": "<p>The location of the database (for example, an HDFS path). </p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>These key-value pairs define parameters and properties of the database.</p> <p>These key-value pairs define parameters and properties of the database.</p>"
        },
        "CreateTableDefaultPermissions": {
          "shape": "PrincipalPermissionsList",
          "documentation": "<p>Creates a set of default permissions on the table for principals. </p>"
        },
        "TargetDatabase": {
          "shape": "DatabaseIdentifier",
          "documentation": "<p>A <code>DatabaseIdentifier</code> structure that describes a target database for resource linking.</p>"
        }
      },
      "documentation": "<p>The structure used to create or update a database.</p>"
    },
    "DatabaseList": {
      "type": "list",
      "member": {
        "shape": "Database"
      }
    },
    "DatabaseName": {
      "type": "string"
    },
    "DateColumnStatisticsData": {
      "type": "structure",
      "required": [
        "NumberOfNulls",
        "NumberOfDistinctValues"
      ],
      "members": {
        "MinimumValue": {
          "shape": "Timestamp",
          "documentation": "<p>Minimum value of the column.</p>"
        },
        "MaximumValue": {
          "shape": "Timestamp",
          "documentation": "<p>Maximum value of the column.</p>"
        },
        "NumberOfNulls": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of nulls.</p>"
        },
        "NumberOfDistinctValues": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of distinct values.</p>"
        }
      },
      "documentation": "<p>Defines a date column statistics data.</p>"
    },
    "DecimalColumnStatisticsData": {
      "type": "structure",
      "required": [
        "NumberOfNulls",
        "NumberOfDistinctValues"
      ],
      "members": {
        "MinimumValue": {
          "shape": "DecimalNumber",
          "documentation": "<p>Minimum value of the column.</p>"
        },
        "MaximumValue": {
          "shape": "DecimalNumber",
          "documentation": "<p>Maximum value of the column.</p>"
        },
        "NumberOfNulls": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of nulls.</p>"
        },
        "NumberOfDistinctValues": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of distinct values.</p>"
        }
      },
      "documentation": "<p>Defines a decimal column statistics data.</p>"
    },
    "DecimalNumber": {
      "type": "structure",
      "required": [
        "UnscaledValue",
        "Scale"
      ],
      "members": {
        "UnscaledValue": {
          "shape": "Blob",
          "documentation": "<p>The unscaled numeric value.</p>"
        },
        "Scale": {
          "shape": "Integer",
          "documentation": "<p>The scale that determines where the decimal point falls in the unscaled value.</p>"
        }
      },
      "documentation": "<p>Contains a numeric value in decimal format.</p>"
    },
    "DeleteBehavior": {
      "type": "string",
      "enum": [
        "LOG",
        "DELETE_FROM_DATABASE",
        "DEPRECATE_IN_DATABASE"
      ]
    },
    "DeleteClassifierRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the classifier to remove.</p>"
        }
      }
    },
    "DeleteClassifierResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteColumnStatisticsForPartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionValues",
        "ColumnName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partitions reside.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partitions' table.</p>"
        },
        "PartitionValues": {
          "shape": "ValueStringList",
          "documentation": "<p>A list of partition values identifying the partition.</p>"
        },
        "ColumnName": {
          "shape": "NameString",
          "documentation": "<p>Name of the column.</p>"
        }
      }
    },
    "DeleteColumnStatisticsForPartitionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteColumnStatisticsForTableRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "ColumnName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partitions reside.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partitions' table.</p>"
        },
        "ColumnName": {
          "shape": "NameString",
          "documentation": "<p>The name of the column.</p>"
        }
      }
    },
    "DeleteColumnStatisticsForTableResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteConnectionNameList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "max": 25,
      "min": 0
    },
    "DeleteConnectionRequest": {
      "type": "structure",
      "required": [
        "ConnectionName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "ConnectionName": {
          "shape": "NameString",
          "documentation": "<p>The name of the connection to delete.</p>"
        }
      }
    },
    "DeleteConnectionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteCrawlerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the crawler to remove.</p>"
        }
      }
    },
    "DeleteCrawlerResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteDatabaseRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the database resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the database to delete. For Hive compatibility, this must be all lowercase.</p>"
        }
      }
    },
    "DeleteDatabaseResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteDevEndpointRequest": {
      "type": "structure",
      "required": [
        "EndpointName"
      ],
      "members": {
        "EndpointName": {
          "shape": "GenericString",
          "documentation": "<p>The name of the <code>DevEndpoint</code>.</p>"
        }
      }
    },
    "DeleteDevEndpointResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteJobRequest": {
      "type": "structure",
      "required": [
        "JobName"
      ],
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition to delete.</p>"
        }
      }
    },
    "DeleteJobResponse": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition that was deleted.</p>"
        }
      }
    },
    "DeleteMLTransformRequest": {
      "type": "structure",
      "required": [
        "TransformId"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the transform to delete.</p>"
        }
      }
    },
    "DeleteMLTransformResponse": {
      "type": "structure",
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the transform that was deleted.</p>"
        }
      }
    },
    "DeletePartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionValues"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partition to be deleted resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database in which the table in question resides.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table that contains the partition to be deleted.</p>"
        },
        "PartitionValues": {
          "shape": "ValueStringList",
          "documentation": "<p>The values that define the partition.</p>"
        }
      }
    },
    "DeletePartitionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteResourcePolicyRequest": {
      "type": "structure",
      "members": {
        "PolicyHashCondition": {
          "shape": "HashString",
          "documentation": "<p>The hash value returned when this policy was set.</p>"
        },
        "ResourceArn": {
          "shape": "GlueResourceArn",
          "documentation": "<p>The ARN of the AWS Glue resource for the resource policy to be deleted.</p>"
        }
      }
    },
    "DeleteResourcePolicyResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteSecurityConfigurationRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the security configuration to delete.</p>"
        }
      }
    },
    "DeleteSecurityConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteTableRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "Name"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the table to be deleted. For Hive compatibility, this name is entirely lowercase.</p>"
        }
      }
    },
    "DeleteTableResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteTableVersionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "VersionId"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "VersionId": {
          "shape": "VersionString",
          "documentation": "<p>The ID of the table version to be deleted. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>"
        }
      }
    },
    "DeleteTableVersionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteTriggerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger to delete.</p>"
        }
      }
    },
    "DeleteTriggerResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger that was deleted.</p>"
        }
      }
    },
    "DeleteUserDefinedFunctionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "FunctionName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the function to be deleted is located. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the function is located.</p>"
        },
        "FunctionName": {
          "shape": "NameString",
          "documentation": "<p>The name of the function definition to be deleted.</p>"
        }
      }
    },
    "DeleteUserDefinedFunctionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteWorkflowRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the workflow to be deleted.</p>"
        }
      }
    },
    "DeleteWorkflowResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the workflow specified in input.</p>"
        }
      }
    },
    "DescriptionString": {
      "type": "string",
      "max": 2048,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "DescriptionStringRemovable": {
      "type": "string",
      "max": 2048,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "DevEndpoint": {
      "type": "structure",
      "members": {
        "EndpointName": {
          "shape": "GenericString",
          "documentation": "<p>The name of the <code>DevEndpoint</code>.</p>"
        },
        "RoleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM role used in this <code>DevEndpoint</code>.</p>"
        },
        "SecurityGroupIds": {
          "shape": "StringList",
          "documentation": "<p>A list of security group identifiers used in this <code>DevEndpoint</code>.</p>"
        },
        "SubnetId": {
          "shape": "GenericString",
          "documentation": "<p>The subnet ID for this <code>DevEndpoint</code>.</p>"
        },
        "YarnEndpointAddress": {
          "shape": "GenericString",
          "documentation": "<p>The YARN endpoint address used by this <code>DevEndpoint</code>.</p>"
        },
        "PrivateAddress": {
          "shape": "GenericString",
          "documentation": "<p>A private IP address to access the <code>DevEndpoint</code> within a VPC if the <code>DevEndpoint</code> is created within one. The <code>PrivateAddress</code> field is present only when you create the <code>DevEndpoint</code> within your VPC.</p>"
        },
        "ZeppelinRemoteSparkInterpreterPort": {
          "shape": "IntegerValue",
          "documentation": "<p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>"
        },
        "PublicAddress": {
          "shape": "GenericString",
          "documentation": "<p>The public IP address used by this <code>DevEndpoint</code>. The <code>PublicAddress</code> field is present only when you create a non-virtual private cloud (VPC) <code>DevEndpoint</code>.</p>"
        },
        "Status": {
          "shape": "GenericString",
          "documentation": "<p>The current status of this <code>DevEndpoint</code>.</p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated to the development endpoint. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> </ul> <p>Known issue: when a development endpoint is created with the <code>G.2X</code> <code>WorkerType</code> configuration, the Spark drivers for the development endpoint will run on 4 vCPU, 16 GB of memory, and a 64 GB disk. </p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for running your ETL scripts on development endpoints. </p> <p>For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p> <p>Development endpoints that are created without specifying a Glue version default to Glue 0.9.</p> <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated to the development endpoint.</p> <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>"
        },
        "NumberOfNodes": {
          "shape": "IntegerValue",
          "documentation": "<p>The number of AWS Glue Data Processing Units (DPUs) allocated to this <code>DevEndpoint</code>.</p>"
        },
        "AvailabilityZone": {
          "shape": "GenericString",
          "documentation": "<p>The AWS Availability Zone where this <code>DevEndpoint</code> is located.</p>"
        },
        "VpcId": {
          "shape": "GenericString",
          "documentation": "<p>The ID of the virtual private cloud (VPC) used by this <code>DevEndpoint</code>.</p>"
        },
        "ExtraPythonLibsS3Path": {
          "shape": "GenericString",
          "documentation": "<p>The paths to one or more Python libraries in an Amazon S3 bucket that should be loaded in your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a comma.</p> <note> <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on C extensions, such as the <a href=\"http://pandas.pydata.org/\">pandas</a> Python data analysis library, are not currently supported.</p> </note>"
        },
        "ExtraJarsS3Path": {
          "shape": "GenericString",
          "documentation": "<p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded in your <code>DevEndpoint</code>.</p> <note> <p>You can only use pure Java/Scala libraries with a <code>DevEndpoint</code>.</p> </note>"
        },
        "FailureReason": {
          "shape": "GenericString",
          "documentation": "<p>The reason for a current failure in this <code>DevEndpoint</code>.</p>"
        },
        "LastUpdateStatus": {
          "shape": "GenericString",
          "documentation": "<p>The status of the last update.</p>"
        },
        "CreatedTimestamp": {
          "shape": "TimestampValue",
          "documentation": "<p>The point in time at which this DevEndpoint was created.</p>"
        },
        "LastModifiedTimestamp": {
          "shape": "TimestampValue",
          "documentation": "<p>The point in time at which this <code>DevEndpoint</code> was last modified.</p>"
        },
        "PublicKey": {
          "shape": "GenericString",
          "documentation": "<p>The public key to be used by this <code>DevEndpoint</code> for authentication. This attribute is provided for backward compatibility because the recommended attribute to use is public keys.</p>"
        },
        "PublicKeys": {
          "shape": "PublicKeysList",
          "documentation": "<p>A list of public keys to be used by the <code>DevEndpoints</code> for authentication. Using this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.</p> <note> <p>If you previously created an endpoint with a public key, you must remove that key to be able to set a list of public keys. Call the <code>UpdateDevEndpoint</code> API operation with the public key content in the <code>deletePublicKeys</code> attribute, and the list of new keys in the <code>addPublicKeys</code> attribute.</p> </note>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used with this <code>DevEndpoint</code>.</p>"
        },
        "Arguments": {
          "shape": "MapValue",
          "documentation": "<p>A map of arguments used to configure the <code>DevEndpoint</code>.</p> <p>Valid arguments are:</p> <ul> <li> <p> <code>\"--enable-glue-datacatalog\": \"\"</code> </p> </li> <li> <p> <code>\"GLUE_PYTHON_VERSION\": \"3\"</code> </p> </li> <li> <p> <code>\"GLUE_PYTHON_VERSION\": \"2\"</code> </p> </li> </ul> <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>"
        }
      },
      "documentation": "<p>A development endpoint where a developer can remotely debug extract, transform, and load (ETL) scripts.</p>"
    },
    "DevEndpointCustomLibraries": {
      "type": "structure",
      "members": {
        "ExtraPythonLibsS3Path": {
          "shape": "GenericString",
          "documentation": "<p>The paths to one or more Python libraries in an Amazon Simple Storage Service (Amazon S3) bucket that should be loaded in your <code>DevEndpoint</code>. Multiple values must be complete paths separated by a comma.</p> <note> <p>You can only use pure Python libraries with a <code>DevEndpoint</code>. Libraries that rely on C extensions, such as the <a href=\"http://pandas.pydata.org/\">pandas</a> Python data analysis library, are not currently supported.</p> </note>"
        },
        "ExtraJarsS3Path": {
          "shape": "GenericString",
          "documentation": "<p>The path to one or more Java <code>.jar</code> files in an S3 bucket that should be loaded in your <code>DevEndpoint</code>.</p> <note> <p>You can only use pure Java/Scala libraries with a <code>DevEndpoint</code>.</p> </note>"
        }
      },
      "documentation": "<p>Custom libraries to be loaded into a development endpoint.</p>"
    },
    "DevEndpointList": {
      "type": "list",
      "member": {
        "shape": "DevEndpoint"
      }
    },
    "DevEndpointNameList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      }
    },
    "DevEndpointNames": {
      "type": "list",
      "member": {
        "shape": "GenericString"
      },
      "max": 25,
      "min": 1
    },
    "Double": {
      "type": "double"
    },
    "DoubleColumnStatisticsData": {
      "type": "structure",
      "required": [
        "NumberOfNulls",
        "NumberOfDistinctValues"
      ],
      "members": {
        "MinimumValue": {
          "shape": "Double",
          "documentation": "<p>Minimum value of the column.</p>"
        },
        "MaximumValue": {
          "shape": "Double",
          "documentation": "<p>Maximum value of the column.</p>"
        },
        "NumberOfNulls": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of nulls.</p>"
        },
        "NumberOfDistinctValues": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of distinct values.</p>"
        }
      },
      "documentation": "<p>Defines a double column statistics data.</p>"
    },
    "DynamoDBTarget": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "Path",
          "documentation": "<p>The name of the DynamoDB table to crawl.</p>"
        },
        "scanAll": {
          "shape": "NullableBoolean",
          "documentation": "<p>Indicates whether to scan all the records, or to sample rows from the table. Scanning all the records can take a long time when the table is not a high throughput table.</p> <p>A value of <code>true</code> means to scan all records, while a value of <code>false</code> means to sample the records. If no value is specified, the value defaults to <code>true</code>.</p>"
        },
        "scanRate": {
          "shape": "NullableDouble",
          "documentation": "<p>The percentage of the configured read capacity units to use by the AWS Glue crawler. Read capacity units is a term defined by DynamoDB, and is a numeric value that acts as rate limiter for the number of reads that can be performed on that table per second.</p> <p>The valid values are null or a value between 0.1 to 1.5. A null value is used when user does not provide a value, and defaults to 0.5 of the configured Read Capacity Unit (for provisioned tables), or 0.25 of the max configured Read Capacity Unit (for tables using on-demand mode).</p>"
        }
      },
      "documentation": "<p>Specifies an Amazon DynamoDB table to crawl.</p>"
    },
    "DynamoDBTargetList": {
      "type": "list",
      "member": {
        "shape": "DynamoDBTarget"
      }
    },
    "Edge": {
      "type": "structure",
      "members": {
        "SourceId": {
          "shape": "NameString",
          "documentation": "<p>The unique of the node within the workflow where the edge starts.</p>"
        },
        "DestinationId": {
          "shape": "NameString",
          "documentation": "<p>The unique of the node within the workflow where the edge ends.</p>"
        }
      },
      "documentation": "<p>An edge represents a directed connection between two AWS Glue components that are part of the workflow the edge belongs to.</p>"
    },
    "EdgeList": {
      "type": "list",
      "member": {
        "shape": "Edge"
      }
    },
    "EnableHybridValues": {
      "type": "string",
      "enum": [
        "TRUE",
        "FALSE"
      ]
    },
    "EncryptionAtRest": {
      "type": "structure",
      "required": [
        "CatalogEncryptionMode"
      ],
      "members": {
        "CatalogEncryptionMode": {
          "shape": "CatalogEncryptionMode",
          "documentation": "<p>The encryption-at-rest mode for encrypting Data Catalog data.</p>"
        },
        "SseAwsKmsKeyId": {
          "shape": "NameString",
          "documentation": "<p>The ID of the AWS KMS key to use for encryption at rest.</p>"
        }
      },
      "documentation": "<p>Specifies the encryption-at-rest configuration for the Data Catalog.</p>"
    },
    "EncryptionConfiguration": {
      "type": "structure",
      "members": {
        "S3Encryption": {
          "shape": "S3EncryptionList",
          "documentation": "<p>The encryption configuration for Amazon Simple Storage Service (Amazon S3) data.</p>"
        },
        "CloudWatchEncryption": {
          "shape": "CloudWatchEncryption",
          "documentation": "<p>The encryption configuration for Amazon CloudWatch.</p>"
        },
        "JobBookmarksEncryption": {
          "shape": "JobBookmarksEncryption",
          "documentation": "<p>The encryption configuration for job bookmarks.</p>"
        }
      },
      "documentation": "<p>Specifies an encryption configuration.</p>"
    },
    "ErrorByName": {
      "type": "map",
      "key": {
        "shape": "NameString"
      },
      "value": {
        "shape": "ErrorDetail"
      }
    },
    "ErrorDetail": {
      "type": "structure",
      "members": {
        "ErrorCode": {
          "shape": "NameString",
          "documentation": "<p>The code associated with this error.</p>"
        },
        "ErrorMessage": {
          "shape": "DescriptionString",
          "documentation": "<p>A message describing the error.</p>"
        }
      },
      "documentation": "<p>Contains details about an error.</p>"
    },
    "ErrorString": {
      "type": "string"
    },
    "EvaluationMetrics": {
      "type": "structure",
      "required": [
        "TransformType"
      ],
      "members": {
        "TransformType": {
          "shape": "TransformType",
          "documentation": "<p>The type of machine learning transform.</p>"
        },
        "FindMatchesMetrics": {
          "shape": "FindMatchesMetrics",
          "documentation": "<p>The evaluation metrics for the find matches algorithm.</p>"
        }
      },
      "documentation": "<p>Evaluation metrics provide an estimate of the quality of your machine learning transform.</p>"
    },
    "ExecutionProperty": {
      "type": "structure",
      "members": {
        "MaxConcurrentRuns": {
          "shape": "MaxConcurrentRuns",
          "documentation": "<p>The maximum number of concurrent runs allowed for the job. The default is 1. An error is returned when this threshold is reached. The maximum value you can specify is controlled by a service limit.</p>"
        }
      },
      "documentation": "<p>An execution property of a job.</p>"
    },
    "ExecutionTime": {
      "type": "integer"
    },
    "ExistCondition": {
      "type": "string",
      "enum": [
        "MUST_EXIST",
        "NOT_EXIST",
        "NONE"
      ]
    },
    "ExportLabelsTaskRunProperties": {
      "type": "structure",
      "members": {
        "OutputS3Path": {
          "shape": "UriString",
          "documentation": "<p>The Amazon Simple Storage Service (Amazon S3) path where you will export the labels.</p>"
        }
      },
      "documentation": "<p>Specifies configuration properties for an exporting labels task run.</p>"
    },
    "FieldType": {
      "type": "string"
    },
    "FilterString": {
      "type": "string",
      "max": 2048,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "FindMatchesMetrics": {
      "type": "structure",
      "members": {
        "AreaUnderPRCurve": {
          "shape": "GenericBoundedDouble",
          "documentation": "<p>The area under the precision/recall curve (AUPRC) is a single number measuring the overall quality of the transform, that is independent of the choice made for precision vs. recall. Higher values indicate that you have a more attractive precision vs. recall tradeoff.</p> <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Precision_and_recall\">Precision and recall</a> in Wikipedia.</p>"
        },
        "Precision": {
          "shape": "GenericBoundedDouble",
          "documentation": "<p>The precision metric indicates when often your transform is correct when it predicts a match. Specifically, it measures how well the transform finds true positives from the total true positives possible.</p> <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Precision_and_recall\">Precision and recall</a> in Wikipedia.</p>"
        },
        "Recall": {
          "shape": "GenericBoundedDouble",
          "documentation": "<p>The recall metric indicates that for an actual match, how often your transform predicts the match. Specifically, it measures how well the transform finds true positives from the total records in the source data.</p> <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Precision_and_recall\">Precision and recall</a> in Wikipedia.</p>"
        },
        "F1": {
          "shape": "GenericBoundedDouble",
          "documentation": "<p>The maximum F1 metric indicates the transform's accuracy between 0 and 1, where 1 is the best accuracy.</p> <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/F1_score\">F1 score</a> in Wikipedia.</p>"
        },
        "ConfusionMatrix": {
          "shape": "ConfusionMatrix",
          "documentation": "<p>The confusion matrix shows you what your transform is predicting accurately and what types of errors it is making.</p> <p>For more information, see <a href=\"https://en.wikipedia.org/wiki/Confusion_matrix\">Confusion matrix</a> in Wikipedia.</p>"
        }
      },
      "documentation": "<p>The evaluation metrics for the find matches algorithm. The quality of your machine learning transform is measured by getting your transform to predict some matches and comparing the results to known matches from the same dataset. The quality metrics are based on a subset of your data, so they are not precise.</p>"
    },
    "FindMatchesParameters": {
      "type": "structure",
      "members": {
        "PrimaryKeyColumnName": {
          "shape": "ColumnNameString",
          "documentation": "<p>The name of a column that uniquely identifies rows in the source table. Used to help identify matching records.</p>"
        },
        "PrecisionRecallTradeoff": {
          "shape": "GenericBoundedDouble",
          "documentation": "<p>The value selected when tuning your transform for a balance between precision and recall. A value of 0.5 means no preference; a value of 1.0 means a bias purely for precision, and a value of 0.0 means a bias for recall. Because this is a tradeoff, choosing values close to 1.0 means very low recall, and choosing values close to 0.0 results in very low precision.</p> <p>The precision metric indicates how often your model is correct when it predicts a match. </p> <p>The recall metric indicates that for an actual match, how often your model predicts the match.</p>"
        },
        "AccuracyCostTradeoff": {
          "shape": "GenericBoundedDouble",
          "documentation": "<p>The value that is selected when tuning your transform for a balance between accuracy and cost. A value of 0.5 means that the system balances accuracy and cost concerns. A value of 1.0 means a bias purely for accuracy, which typically results in a higher cost, sometimes substantially higher. A value of 0.0 means a bias purely for cost, which results in a less accurate <code>FindMatches</code> transform, sometimes with unacceptable accuracy.</p> <p>Accuracy measures how well the transform finds true positives and true negatives. Increasing accuracy requires more machine resources and cost. But it also results in increased recall. </p> <p>Cost measures how many compute resources, and thus money, are consumed to run the transform.</p>"
        },
        "EnforceProvidedLabels": {
          "shape": "NullableBoolean",
          "documentation": "<p>The value to switch on or off to force the output to match the provided labels from users. If the value is <code>True</code>, the <code>find matches</code> transform forces the output to match the provided labels. The results override the normal conflation results. If the value is <code>False</code>, the <code>find matches</code> transform does not ensure all the labels provided are respected, and the results rely on the trained model.</p> <p>Note that setting this value to true may increase the conflation execution time.</p>"
        }
      },
      "documentation": "<p>The parameters to configure the find matches transform.</p>"
    },
    "FindMatchesTaskRunProperties": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "HashString",
          "documentation": "<p>The job ID for the Find Matches task run.</p>"
        },
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name assigned to the job for the Find Matches task run.</p>"
        },
        "JobRunId": {
          "shape": "HashString",
          "documentation": "<p>The job run ID for the Find Matches task run.</p>"
        }
      },
      "documentation": "<p>Specifies configuration properties for a Find Matches task run.</p>"
    },
    "FormatString": {
      "type": "string",
      "max": 128,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "GenericBoundedDouble": {
      "type": "double",
      "box": true,
      "max": 1,
      "min": 0
    },
    "GenericMap": {
      "type": "map",
      "key": {
        "shape": "GenericString"
      },
      "value": {
        "shape": "GenericString"
      }
    },
    "GenericString": {
      "type": "string"
    },
    "GetCatalogImportStatusRequest": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the catalog to migrate. Currently, this should be the AWS account ID.</p>"
        }
      }
    },
    "GetCatalogImportStatusResponse": {
      "type": "structure",
      "members": {
        "ImportStatus": {
          "shape": "CatalogImportStatus",
          "documentation": "<p>The status of the specified catalog migration.</p>"
        }
      }
    },
    "GetClassifierRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the classifier to retrieve.</p>"
        }
      }
    },
    "GetClassifierResponse": {
      "type": "structure",
      "members": {
        "Classifier": {
          "shape": "Classifier",
          "documentation": "<p>The requested classifier.</p>"
        }
      }
    },
    "GetClassifiersRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The size of the list to return (optional).</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>An optional continuation token.</p>"
        }
      }
    },
    "GetClassifiersResponse": {
      "type": "structure",
      "members": {
        "Classifiers": {
          "shape": "ClassifierList",
          "documentation": "<p>The requested list of classifier objects.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token.</p>"
        }
      }
    },
    "GetColumnNamesList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "max": 100,
      "min": 0
    },
    "GetColumnStatisticsForPartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionValues",
        "ColumnNames"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partitions reside.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partitions' table.</p>"
        },
        "PartitionValues": {
          "shape": "ValueStringList",
          "documentation": "<p>A list of partition values identifying the partition.</p>"
        },
        "ColumnNames": {
          "shape": "GetColumnNamesList",
          "documentation": "<p>A list of the column names.</p>"
        }
      }
    },
    "GetColumnStatisticsForPartitionResponse": {
      "type": "structure",
      "members": {
        "ColumnStatisticsList": {
          "shape": "ColumnStatisticsList",
          "documentation": "<p>List of ColumnStatistics that failed to be retrieved.</p>"
        },
        "Errors": {
          "shape": "ColumnErrors",
          "documentation": "<p>Error occurred during retrieving column statistics data.</p>"
        }
      }
    },
    "GetColumnStatisticsForTableRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "ColumnNames"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partitions reside.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partitions' table.</p>"
        },
        "ColumnNames": {
          "shape": "GetColumnNamesList",
          "documentation": "<p>A list of the column names.</p>"
        }
      }
    },
    "GetColumnStatisticsForTableResponse": {
      "type": "structure",
      "members": {
        "ColumnStatisticsList": {
          "shape": "ColumnStatisticsList",
          "documentation": "<p>List of ColumnStatistics that failed to be retrieved.</p>"
        },
        "Errors": {
          "shape": "ColumnErrors",
          "documentation": "<p>List of ColumnStatistics that failed to be retrieved.</p>"
        }
      }
    },
    "GetConnectionRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the connection definition to retrieve.</p>"
        },
        "HidePassword": {
          "shape": "Boolean",
          "documentation": "<p>Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.</p>"
        }
      }
    },
    "GetConnectionResponse": {
      "type": "structure",
      "members": {
        "Connection": {
          "shape": "Connection",
          "documentation": "<p>The requested connection definition.</p>"
        }
      }
    },
    "GetConnectionsFilter": {
      "type": "structure",
      "members": {
        "MatchCriteria": {
          "shape": "MatchCriteria",
          "documentation": "<p>A criteria string that must match the criteria recorded in the connection definition for that connection definition to be returned.</p>"
        },
        "ConnectionType": {
          "shape": "ConnectionType",
          "documentation": "<p>The type of connections to return. Currently, SFTP is not supported.</p>"
        }
      },
      "documentation": "<p>Filters the connection definitions that are returned by the <code>GetConnections</code> API operation.</p>"
    },
    "GetConnectionsRequest": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the connections reside. If none is provided, the AWS account ID is used by default.</p>"
        },
        "Filter": {
          "shape": "GetConnectionsFilter",
          "documentation": "<p>A filter that controls which connections are returned.</p>"
        },
        "HidePassword": {
          "shape": "Boolean",
          "documentation": "<p>Allows you to retrieve the connection metadata without returning the password. For instance, the AWS Glue console uses this flag to retrieve the connection, and does not display the password. Set this parameter when the caller might not have permission to use the AWS KMS key to decrypt the password, but it does have permission to access the rest of the connection properties.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of connections to return in one response.</p>"
        }
      }
    },
    "GetConnectionsResponse": {
      "type": "structure",
      "members": {
        "ConnectionList": {
          "shape": "ConnectionList",
          "documentation": "<p>A list of requested connection definitions.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if the list of connections returned does not include the last of the filtered connections.</p>"
        }
      }
    },
    "GetCrawlerMetricsRequest": {
      "type": "structure",
      "members": {
        "CrawlerNameList": {
          "shape": "CrawlerNameList",
          "documentation": "<p>A list of the names of crawlers about which to retrieve metrics.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of a list to return.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        }
      }
    },
    "GetCrawlerMetricsResponse": {
      "type": "structure",
      "members": {
        "CrawlerMetricsList": {
          "shape": "CrawlerMetricsList",
          "documentation": "<p>A list of metrics for the specified crawler.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if the returned list does not contain the last metric available.</p>"
        }
      }
    },
    "GetCrawlerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the crawler to retrieve metadata for.</p>"
        }
      }
    },
    "GetCrawlerResponse": {
      "type": "structure",
      "members": {
        "Crawler": {
          "shape": "Crawler",
          "documentation": "<p>The metadata for the specified crawler.</p>"
        }
      }
    },
    "GetCrawlersRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The number of crawlers to return on each call.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is a continuation request.</p>"
        }
      }
    },
    "GetCrawlersResponse": {
      "type": "structure",
      "members": {
        "Crawlers": {
          "shape": "CrawlerList",
          "documentation": "<p>A list of crawler metadata.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if the returned list has not reached the end of those defined in this customer account.</p>"
        }
      }
    },
    "GetDataCatalogEncryptionSettingsRequest": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog to retrieve the security configuration for. If none is provided, the AWS account ID is used by default.</p>"
        }
      }
    },
    "GetDataCatalogEncryptionSettingsResponse": {
      "type": "structure",
      "members": {
        "DataCatalogEncryptionSettings": {
          "shape": "DataCatalogEncryptionSettings",
          "documentation": "<p>The requested security configuration.</p>"
        }
      }
    },
    "GetDatabaseRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the database resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the database to retrieve. For Hive compatibility, this should be all lowercase.</p>"
        }
      }
    },
    "GetDatabaseResponse": {
      "type": "structure",
      "members": {
        "Database": {
          "shape": "Database",
          "documentation": "<p>The definition of the specified database in the Data Catalog.</p>"
        }
      }
    },
    "GetDatabasesRequest": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog from which to retrieve <code>Databases</code>. If none is provided, the AWS account ID is used by default.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of databases to return in one response.</p>"
        },
        "ResourceShareType": {
          "shape": "ResourceShareType",
          "documentation": "<p>Allows you to specify that you want to list the databases shared with your account. The allowable values are <code>FOREIGN</code> or <code>ALL</code>. </p> <ul> <li> <p>If set to <code>FOREIGN</code>, will list the databases shared with your account. </p> </li> <li> <p>If set to <code>ALL</code>, will list the databases shared with your account, as well as the databases in yor local account. </p> </li> </ul>"
        }
      }
    },
    "GetDatabasesResponse": {
      "type": "structure",
      "required": [
        "DatabaseList"
      ],
      "members": {
        "DatabaseList": {
          "shape": "DatabaseList",
          "documentation": "<p>A list of <code>Database</code> objects from the specified catalog.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>"
        }
      }
    },
    "GetDataflowGraphRequest": {
      "type": "structure",
      "members": {
        "PythonScript": {
          "shape": "PythonScript",
          "documentation": "<p>The Python script to transform.</p>"
        }
      }
    },
    "GetDataflowGraphResponse": {
      "type": "structure",
      "members": {
        "DagNodes": {
          "shape": "DagNodes",
          "documentation": "<p>A list of the nodes in the resulting DAG.</p>"
        },
        "DagEdges": {
          "shape": "DagEdges",
          "documentation": "<p>A list of the edges in the resulting DAG.</p>"
        }
      }
    },
    "GetDevEndpointRequest": {
      "type": "structure",
      "required": [
        "EndpointName"
      ],
      "members": {
        "EndpointName": {
          "shape": "GenericString",
          "documentation": "<p>Name of the <code>DevEndpoint</code> to retrieve information for.</p>"
        }
      }
    },
    "GetDevEndpointResponse": {
      "type": "structure",
      "members": {
        "DevEndpoint": {
          "shape": "DevEndpoint",
          "documentation": "<p>A <code>DevEndpoint</code> definition.</p>"
        }
      }
    },
    "GetDevEndpointsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of information to return.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        }
      }
    },
    "GetDevEndpointsResponse": {
      "type": "structure",
      "members": {
        "DevEndpoints": {
          "shape": "DevEndpointList",
          "documentation": "<p>A list of <code>DevEndpoint</code> definitions.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if not all <code>DevEndpoint</code> definitions have yet been returned.</p>"
        }
      }
    },
    "GetJobBookmarkRequest": {
      "type": "structure",
      "required": [
        "JobName"
      ],
      "members": {
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The name of the job in question.</p>"
        },
        "RunId": {
          "shape": "RunId",
          "documentation": "<p>The unique run identifier associated with this job run.</p>"
        }
      }
    },
    "GetJobBookmarkResponse": {
      "type": "structure",
      "members": {
        "JobBookmarkEntry": {
          "shape": "JobBookmarkEntry",
          "documentation": "<p>A structure that defines a point that a job can resume processing.</p>"
        }
      }
    },
    "GetJobRequest": {
      "type": "structure",
      "required": [
        "JobName"
      ],
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition to retrieve.</p>"
        }
      }
    },
    "GetJobResponse": {
      "type": "structure",
      "members": {
        "Job": {
          "shape": "Job",
          "documentation": "<p>The requested job definition.</p>"
        }
      }
    },
    "GetJobRunRequest": {
      "type": "structure",
      "required": [
        "JobName",
        "RunId"
      ],
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>Name of the job definition being run.</p>"
        },
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of the job run.</p>"
        },
        "PredecessorsIncluded": {
          "shape": "BooleanValue",
          "documentation": "<p>True if a list of predecessor runs should be returned.</p>"
        }
      }
    },
    "GetJobRunResponse": {
      "type": "structure",
      "members": {
        "JobRun": {
          "shape": "JobRun",
          "documentation": "<p>The requested job-run metadata.</p>"
        }
      }
    },
    "GetJobRunsRequest": {
      "type": "structure",
      "required": [
        "JobName"
      ],
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition for which to retrieve all job runs.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of the response.</p>"
        }
      }
    },
    "GetJobRunsResponse": {
      "type": "structure",
      "members": {
        "JobRuns": {
          "shape": "JobRunList",
          "documentation": "<p>A list of job-run metadata objects.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if not all requested job runs have been returned.</p>"
        }
      }
    },
    "GetJobsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of the response.</p>"
        }
      }
    },
    "GetJobsResponse": {
      "type": "structure",
      "members": {
        "Jobs": {
          "shape": "JobList",
          "documentation": "<p>A list of job definitions.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if not all job definitions have yet been returned.</p>"
        }
      }
    },
    "GetMLTaskRunRequest": {
      "type": "structure",
      "required": [
        "TransformId",
        "TaskRunId"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the machine learning transform.</p>"
        },
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the task run.</p>"
        }
      }
    },
    "GetMLTaskRunResponse": {
      "type": "structure",
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the task run.</p>"
        },
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>The unique run identifier associated with this run.</p>"
        },
        "Status": {
          "shape": "TaskStatusType",
          "documentation": "<p>The status for this task run.</p>"
        },
        "LogGroupName": {
          "shape": "GenericString",
          "documentation": "<p>The names of the log groups that are associated with the task run.</p>"
        },
        "Properties": {
          "shape": "TaskRunProperties",
          "documentation": "<p>The list of properties that are associated with the task run.</p>"
        },
        "ErrorString": {
          "shape": "GenericString",
          "documentation": "<p>The error strings that are associated with the task run.</p>"
        },
        "StartedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when this task run started.</p>"
        },
        "LastModifiedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when this task run was last modified.</p>"
        },
        "CompletedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when this task run was completed.</p>"
        },
        "ExecutionTime": {
          "shape": "ExecutionTime",
          "documentation": "<p>The amount of time (in seconds) that the task run consumed resources.</p>"
        }
      }
    },
    "GetMLTaskRunsRequest": {
      "type": "structure",
      "required": [
        "TransformId"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the machine learning transform.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A token for pagination of the results. The default is empty.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return. </p>"
        },
        "Filter": {
          "shape": "TaskRunFilterCriteria",
          "documentation": "<p>The filter criteria, in the <code>TaskRunFilterCriteria</code> structure, for the task run.</p>"
        },
        "Sort": {
          "shape": "TaskRunSortCriteria",
          "documentation": "<p>The sorting criteria, in the <code>TaskRunSortCriteria</code> structure, for the task run.</p>"
        }
      }
    },
    "GetMLTaskRunsResponse": {
      "type": "structure",
      "members": {
        "TaskRuns": {
          "shape": "TaskRunList",
          "documentation": "<p>A list of task runs that are associated with the transform.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A pagination token, if more results are available.</p>"
        }
      }
    },
    "GetMLTransformRequest": {
      "type": "structure",
      "required": [
        "TransformId"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the transform, generated at the time that the transform was created.</p>"
        }
      }
    },
    "GetMLTransformResponse": {
      "type": "structure",
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the transform, generated at the time that the transform was created.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The unique name given to the transform when it was created.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the transform.</p>"
        },
        "Status": {
          "shape": "TransformStatusType",
          "documentation": "<p>The last known status of the transform (to indicate whether it can be used or not). One of \"NOT_READY\", \"READY\", or \"DELETING\".</p>"
        },
        "CreatedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the transform was created.</p>"
        },
        "LastModifiedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time when the transform was last modified.</p>"
        },
        "InputRecordTables": {
          "shape": "GlueTables",
          "documentation": "<p>A list of AWS Glue table definitions used by the transform.</p>"
        },
        "Parameters": {
          "shape": "TransformParameters",
          "documentation": "<p>The configuration parameters that are specific to the algorithm used.</p>"
        },
        "EvaluationMetrics": {
          "shape": "EvaluationMetrics",
          "documentation": "<p>The latest evaluation metrics.</p>"
        },
        "LabelCount": {
          "shape": "LabelCount",
          "documentation": "<p>The number of labels available for this transform.</p>"
        },
        "Schema": {
          "shape": "TransformSchema",
          "documentation": "<p>The <code>Map&lt;Column, Type&gt;</code> object that represents the schema that this transform accepts. Has an upper bound of 100 columns.</p>"
        },
        "Role": {
          "shape": "RoleString",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions.</p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">AWS Glue Versions</a> in the developer guide.</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>. </p> <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p> </li> </ul>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>"
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
        },
        "MaxRetries": {
          "shape": "NullableInteger",
          "documentation": "<p>The maximum number of times to retry a task for this transform after a task run fails.</p>"
        }
      }
    },
    "GetMLTransformsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A paginated token to offset the results.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return.</p>"
        },
        "Filter": {
          "shape": "TransformFilterCriteria",
          "documentation": "<p>The filter transformation criteria.</p>"
        },
        "Sort": {
          "shape": "TransformSortCriteria",
          "documentation": "<p>The sorting criteria.</p>"
        }
      }
    },
    "GetMLTransformsResponse": {
      "type": "structure",
      "required": [
        "Transforms"
      ],
      "members": {
        "Transforms": {
          "shape": "TransformList",
          "documentation": "<p>A list of machine learning transforms.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A pagination token, if more results are available.</p>"
        }
      }
    },
    "GetMappingRequest": {
      "type": "structure",
      "required": [
        "Source"
      ],
      "members": {
        "Source": {
          "shape": "CatalogEntry",
          "documentation": "<p>Specifies the source table.</p>"
        },
        "Sinks": {
          "shape": "CatalogEntries",
          "documentation": "<p>A list of target tables.</p>"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>Parameters for the mapping.</p>"
        }
      }
    },
    "GetMappingResponse": {
      "type": "structure",
      "required": [
        "Mapping"
      ],
      "members": {
        "Mapping": {
          "shape": "MappingList",
          "documentation": "<p>A list of mappings to the specified targets.</p>"
        }
      }
    },
    "GetPartitionIndexesRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The catalog ID where the table resides.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>Specifies the name of a database from which you want to retrieve partition indexes.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>Specifies the name of a table for which you want to retrieve the partition indexes.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, included if this is a continuation call.</p>"
        }
      }
    },
    "GetPartitionIndexesResponse": {
      "type": "structure",
      "members": {
        "PartitionIndexDescriptorList": {
          "shape": "PartitionIndexDescriptorList",
          "documentation": "<p>A list of index descriptors.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, present if the current list segment is not the last.</p>"
        }
      }
    },
    "GetPartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionValues"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partition in question resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partition resides.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partition's table.</p>"
        },
        "PartitionValues": {
          "shape": "ValueStringList",
          "documentation": "<p>The values that define the partition.</p>"
        }
      }
    },
    "GetPartitionResponse": {
      "type": "structure",
      "members": {
        "Partition": {
          "shape": "Partition",
          "documentation": "<p>The requested information, in the form of a <code>Partition</code> object.</p>"
        }
      }
    },
    "GetPartitionsRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partitions in question reside. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partitions reside.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partitions' table.</p>"
        },
        "Expression": {
          "shape": "PredicateString",
          "documentation": "<p>An expression that filters the partitions to be returned.</p> <p>The expression uses SQL syntax similar to the SQL <code>WHERE</code> filter clause. The SQL statement parser <a href=\"http://jsqlparser.sourceforge.net/home.php\">JSQLParser</a> parses the expression. </p> <p> <i>Operators</i>: The following are the operators that you can use in the <code>Expression</code> API call:</p> <dl> <dt>=</dt> <dd> <p>Checks whether the values of the two operands are equal; if yes, then the condition becomes true.</p> <p>Example: Assume 'variable a' holds 10 and 'variable b' holds 20. </p> <p>(a = b) is not true.</p> </dd> <dt>&lt; &gt;</dt> <dd> <p>Checks whether the values of two operands are equal; if the values are not equal, then the condition becomes true.</p> <p>Example: (a &lt; &gt; b) is true.</p> </dd> <dt>&gt;</dt> <dd> <p>Checks whether the value of the left operand is greater than the value of the right operand; if yes, then the condition becomes true.</p> <p>Example: (a &gt; b) is not true.</p> </dd> <dt>&lt;</dt> <dd> <p>Checks whether the value of the left operand is less than the value of the right operand; if yes, then the condition becomes true.</p> <p>Example: (a &lt; b) is true.</p> </dd> <dt>&gt;=</dt> <dd> <p>Checks whether the value of the left operand is greater than or equal to the value of the right operand; if yes, then the condition becomes true.</p> <p>Example: (a &gt;= b) is not true.</p> </dd> <dt>&lt;=</dt> <dd> <p>Checks whether the value of the left operand is less than or equal to the value of the right operand; if yes, then the condition becomes true.</p> <p>Example: (a &lt;= b) is true.</p> </dd> <dt>AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL</dt> <dd> <p>Logical operators.</p> </dd> </dl> <p> <i>Supported Partition Key Types</i>: The following are the supported partition keys.</p> <ul> <li> <p> <code>string</code> </p> </li> <li> <p> <code>date</code> </p> </li> <li> <p> <code>timestamp</code> </p> </li> <li> <p> <code>int</code> </p> </li> <li> <p> <code>bigint</code> </p> </li> <li> <p> <code>long</code> </p> </li> <li> <p> <code>tinyint</code> </p> </li> <li> <p> <code>smallint</code> </p> </li> <li> <p> <code>decimal</code> </p> </li> </ul> <p>If an invalid type is encountered, an exception is thrown. </p> <p>The following list shows the valid operators on each type. When you define a crawler, the <code>partitionKey</code> type is created as a <code>STRING</code>, to be compatible with the catalog partitions. </p> <p> <i>Sample API Call</i>: </p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is not the first call to retrieve these partitions.</p>"
        },
        "Segment": {
          "shape": "Segment",
          "documentation": "<p>The segment of the table's partitions to scan in this request.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of partitions to return in a single response.</p>"
        }
      }
    },
    "GetPartitionsResponse": {
      "type": "structure",
      "members": {
        "Partitions": {
          "shape": "PartitionList",
          "documentation": "<p>A list of requested partitions.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if the returned list of partitions does not include the last one.</p>"
        }
      }
    },
    "GetPlanRequest": {
      "type": "structure",
      "required": [
        "Mapping",
        "Source"
      ],
      "members": {
        "Mapping": {
          "shape": "MappingList",
          "documentation": "<p>The list of mappings from a source table to target tables.</p>"
        },
        "Source": {
          "shape": "CatalogEntry",
          "documentation": "<p>The source table.</p>"
        },
        "Sinks": {
          "shape": "CatalogEntries",
          "documentation": "<p>The target tables.</p>"
        },
        "Location": {
          "shape": "Location",
          "documentation": "<p>The parameters for the mapping.</p>"
        },
        "Language": {
          "shape": "Language",
          "documentation": "<p>The programming language of the code to perform the mapping.</p>"
        }
      }
    },
    "GetPlanResponse": {
      "type": "structure",
      "members": {
        "PythonScript": {
          "shape": "PythonScript",
          "documentation": "<p>A Python script to perform the mapping.</p>"
        },
        "ScalaCode": {
          "shape": "ScalaCode",
          "documentation": "<p>The Scala code to perform the mapping.</p>"
        }
      }
    },
    "GetResourcePoliciesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is a continuation request.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of a list to return.</p>"
        }
      }
    },
    "GetResourcePoliciesResponse": {
      "type": "structure",
      "members": {
        "GetResourcePoliciesResponseList": {
          "shape": "GetResourcePoliciesResponseList",
          "documentation": "<p>A list of the individual resource policies and the account-level resource policy.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if the returned list does not contain the last resource policy available.</p>"
        }
      }
    },
    "GetResourcePoliciesResponseList": {
      "type": "list",
      "member": {
        "shape": "GluePolicy"
      }
    },
    "GetResourcePolicyRequest": {
      "type": "structure",
      "members": {
        "ResourceArn": {
          "shape": "GlueResourceArn",
          "documentation": "<p>The ARN of the AWS Glue resource for the resource policy to be retrieved. For more information about AWS Glue resource ARNs, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id\">AWS Glue ARN string pattern</a> </p>"
        }
      }
    },
    "GetResourcePolicyResponse": {
      "type": "structure",
      "members": {
        "PolicyInJson": {
          "shape": "PolicyJsonString",
          "documentation": "<p>Contains the requested policy document, in JSON format.</p>"
        },
        "PolicyHash": {
          "shape": "HashString",
          "documentation": "<p>Contains the hash value associated with this policy.</p>"
        },
        "CreateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time at which the policy was created.</p>"
        },
        "UpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time at which the policy was last updated.</p>"
        }
      }
    },
    "GetSecurityConfigurationRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the security configuration to retrieve.</p>"
        }
      }
    },
    "GetSecurityConfigurationResponse": {
      "type": "structure",
      "members": {
        "SecurityConfiguration": {
          "shape": "SecurityConfiguration",
          "documentation": "<p>The requested security configuration.</p>"
        }
      }
    },
    "GetSecurityConfigurationsRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of results to return.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        }
      }
    },
    "GetSecurityConfigurationsResponse": {
      "type": "structure",
      "members": {
        "SecurityConfigurations": {
          "shape": "SecurityConfigurationList",
          "documentation": "<p>A list of security configurations.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if there are more security configurations to return.</p>"
        }
      }
    },
    "GetTableRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "Name"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the table for which to retrieve the definition. For Hive compatibility, this name is entirely lowercase.</p>"
        }
      }
    },
    "GetTableResponse": {
      "type": "structure",
      "members": {
        "Table": {
          "shape": "Table",
          "documentation": "<p>The <code>Table</code> object that defines the specified table.</p>"
        }
      }
    },
    "GetTableVersionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "VersionId": {
          "shape": "VersionString",
          "documentation": "<p>The ID value of the table version to be retrieved. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1. </p>"
        }
      }
    },
    "GetTableVersionResponse": {
      "type": "structure",
      "members": {
        "TableVersion": {
          "shape": "TableVersion",
          "documentation": "<p>The requested table version.</p>"
        }
      }
    },
    "GetTableVersionsList": {
      "type": "list",
      "member": {
        "shape": "TableVersion"
      }
    },
    "GetTableVersionsRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is not the first call.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of table versions to return in one response.</p>"
        }
      }
    },
    "GetTableVersionsResponse": {
      "type": "structure",
      "members": {
        "TableVersions": {
          "shape": "GetTableVersionsList",
          "documentation": "<p>A list of strings identifying available versions of the specified table.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if the list of available versions does not include the last one.</p>"
        }
      }
    },
    "GetTablesRequest": {
      "type": "structure",
      "required": [
        "DatabaseName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the tables reside. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The database in the catalog whose tables to list. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "Expression": {
          "shape": "FilterString",
          "documentation": "<p>A regular expression pattern. If present, only those tables whose names match the pattern are returned.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, included if this is a continuation call.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of tables to return in a single response.</p>"
        }
      }
    },
    "GetTablesResponse": {
      "type": "structure",
      "members": {
        "TableList": {
          "shape": "TableList",
          "documentation": "<p>A list of the requested <code>Table</code> objects.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, present if the current list segment is not the last.</p>"
        }
      }
    },
    "GetTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "GlueResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource for which to retrieve tags.</p>"
        }
      }
    },
    "GetTagsResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>The requested tags.</p>"
        }
      }
    },
    "GetTriggerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger to retrieve.</p>"
        }
      }
    },
    "GetTriggerResponse": {
      "type": "structure",
      "members": {
        "Trigger": {
          "shape": "Trigger",
          "documentation": "<p>The requested trigger definition.</p>"
        }
      }
    },
    "GetTriggersRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        },
        "DependentJobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job to retrieve triggers for. The trigger that can start this job is returned, and if there is no such trigger, all triggers are returned.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of the response.</p>"
        }
      }
    },
    "GetTriggersResponse": {
      "type": "structure",
      "members": {
        "Triggers": {
          "shape": "TriggerList",
          "documentation": "<p>A list of triggers for the specified job.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if not all the requested triggers have yet been returned.</p>"
        }
      }
    },
    "GetUserDefinedFunctionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "FunctionName"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the function to be retrieved is located. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the function is located.</p>"
        },
        "FunctionName": {
          "shape": "NameString",
          "documentation": "<p>The name of the function.</p>"
        }
      }
    },
    "GetUserDefinedFunctionResponse": {
      "type": "structure",
      "members": {
        "UserDefinedFunction": {
          "shape": "UserDefinedFunction",
          "documentation": "<p>The requested function definition.</p>"
        }
      }
    },
    "GetUserDefinedFunctionsRequest": {
      "type": "structure",
      "required": [
        "Pattern"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the functions to be retrieved are located. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the functions are located. If none is provided, functions from all the databases across the catalog will be returned.</p>"
        },
        "Pattern": {
          "shape": "NameString",
          "documentation": "<p>An optional function-name pattern string that filters the function definitions returned.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is a continuation call.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of functions to return in one response.</p>"
        }
      }
    },
    "GetUserDefinedFunctionsResponse": {
      "type": "structure",
      "members": {
        "UserDefinedFunctions": {
          "shape": "UserDefinedFunctionList",
          "documentation": "<p>A list of requested function definitions.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if the list of functions returned does not include the last requested function.</p>"
        }
      }
    },
    "GetWorkflowRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow to retrieve.</p>"
        },
        "IncludeGraph": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether to include a graph when returning the workflow resource metadata.</p>"
        }
      }
    },
    "GetWorkflowResponse": {
      "type": "structure",
      "members": {
        "Workflow": {
          "shape": "Workflow",
          "documentation": "<p>The resource metadata for the workflow.</p>"
        }
      }
    },
    "GetWorkflowRunPropertiesRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RunId"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the workflow which was run.</p>"
        },
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of the workflow run whose run properties should be returned.</p>"
        }
      }
    },
    "GetWorkflowRunPropertiesResponse": {
      "type": "structure",
      "members": {
        "RunProperties": {
          "shape": "WorkflowRunProperties",
          "documentation": "<p>The workflow run properties which were set during the specified run.</p>"
        }
      }
    },
    "GetWorkflowRunRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RunId"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the workflow being run.</p>"
        },
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of the workflow run.</p>"
        },
        "IncludeGraph": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether to include the workflow graph in response or not.</p>"
        }
      }
    },
    "GetWorkflowRunResponse": {
      "type": "structure",
      "members": {
        "Run": {
          "shape": "WorkflowRun",
          "documentation": "<p>The requested workflow run metadata.</p>"
        }
      }
    },
    "GetWorkflowRunsRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the workflow whose metadata of runs should be returned.</p>"
        },
        "IncludeGraph": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies whether to include the workflow graph in response or not.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>The maximum size of the response.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of workflow runs to be included in the response.</p>"
        }
      }
    },
    "GetWorkflowRunsResponse": {
      "type": "structure",
      "members": {
        "Runs": {
          "shape": "WorkflowRuns",
          "documentation": "<p>A list of workflow run metadata objects.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if not all requested workflow runs have been returned.</p>"
        }
      }
    },
    "GluePolicy": {
      "type": "structure",
      "members": {
        "PolicyInJson": {
          "shape": "PolicyJsonString",
          "documentation": "<p>Contains the requested policy document, in JSON format.</p>"
        },
        "PolicyHash": {
          "shape": "HashString",
          "documentation": "<p>Contains the hash value associated with this policy.</p>"
        },
        "CreateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time at which the policy was created.</p>"
        },
        "UpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time at which the policy was last updated.</p>"
        }
      },
      "documentation": "<p>A structure for returning a resource policy.</p>"
    },
    "GlueResourceArn": {
      "type": "string",
      "max": 10240,
      "min": 1,
      "pattern": "arn:aws:glue:.*"
    },
    "GlueTable": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName"
      ],
      "members": {
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>A database name in the AWS Glue Data Catalog.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>A table name in the AWS Glue Data Catalog.</p>"
        },
        "CatalogId": {
          "shape": "NameString",
          "documentation": "<p>A unique identifier for the AWS Glue Data Catalog.</p>"
        },
        "ConnectionName": {
          "shape": "NameString",
          "documentation": "<p>The name of the connection to the AWS Glue Data Catalog.</p>"
        }
      },
      "documentation": "<p>The database and table in the AWS Glue Data Catalog that is used for input or output data.</p>"
    },
    "GlueTables": {
      "type": "list",
      "member": {
        "shape": "GlueTable"
      },
      "max": 10,
      "min": 0
    },
    "GlueVersionString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "^\\w+\\.\\w+$"
    },
    "GrokClassifier": {
      "type": "structure",
      "required": [
        "Name",
        "Classification",
        "GrokPattern"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "Classification": {
          "shape": "Classification",
          "documentation": "<p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, and so on.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this classifier was registered.</p>"
        },
        "LastUpdated": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this classifier was last updated.</p>"
        },
        "Version": {
          "shape": "VersionId",
          "documentation": "<p>The version of this classifier.</p>"
        },
        "GrokPattern": {
          "shape": "GrokPattern",
          "documentation": "<p>The grok pattern applied to a data store by this classifier. For more information, see built-in patterns in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html\">Writing Custom Classifiers</a>.</p>"
        },
        "CustomPatterns": {
          "shape": "CustomPatterns",
          "documentation": "<p>Optional custom grok patterns defined by this classifier. For more information, see custom patterns in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html\">Writing Custom Classifiers</a>.</p>"
        }
      },
      "documentation": "<p>A classifier that uses <code>grok</code> patterns.</p>"
    },
    "GrokPattern": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\t]*"
    },
    "HashString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "IdString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "ImportCatalogToGlueRequest": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the catalog to import. Currently, this should be the AWS account ID.</p>"
        }
      }
    },
    "ImportCatalogToGlueResponse": {
      "type": "structure",
      "members": {}
    },
    "ImportLabelsTaskRunProperties": {
      "type": "structure",
      "members": {
        "InputS3Path": {
          "shape": "UriString",
          "documentation": "<p>The Amazon Simple Storage Service (Amazon S3) path from where you will import the labels.</p>"
        },
        "Replace": {
          "shape": "ReplaceBoolean",
          "documentation": "<p>Indicates whether to overwrite your existing labels.</p>"
        }
      },
      "documentation": "<p>Specifies configuration properties for an importing labels task run.</p>"
    },
    "Integer": {
      "type": "integer"
    },
    "IntegerFlag": {
      "type": "integer",
      "max": 1,
      "min": 0
    },
    "IntegerValue": {
      "type": "integer"
    },
    "JdbcTarget": {
      "type": "structure",
      "members": {
        "ConnectionName": {
          "shape": "ConnectionName",
          "documentation": "<p>The name of the connection to use to connect to the JDBC target.</p>"
        },
        "Path": {
          "shape": "Path",
          "documentation": "<p>The path of the JDBC target.</p>"
        },
        "Exclusions": {
          "shape": "PathList",
          "documentation": "<p>A list of glob patterns used to exclude from the crawl. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html\">Catalog Tables with a Crawler</a>.</p>"
        }
      },
      "documentation": "<p>Specifies a JDBC data store to crawl.</p>"
    },
    "JdbcTargetList": {
      "type": "list",
      "member": {
        "shape": "JdbcTarget"
      }
    },
    "Job": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name you assign to this job definition.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the job.</p>"
        },
        "LogUri": {
          "shape": "UriString",
          "documentation": "<p>This field is reserved for future use.</p>"
        },
        "Role": {
          "shape": "RoleString",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job.</p>"
        },
        "CreatedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The time and date that this job definition was created.</p>"
        },
        "LastModifiedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The last point in time when this job definition was modified.</p>"
        },
        "ExecutionProperty": {
          "shape": "ExecutionProperty",
          "documentation": "<p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed for this job.</p>"
        },
        "Command": {
          "shape": "JobCommand",
          "documentation": "<p>The <code>JobCommand</code> that executes this job.</p>"
        },
        "DefaultArguments": {
          "shape": "GenericMap",
          "documentation": "<p>The default arguments for this job, specified as name-value pairs.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>"
        },
        "NonOverridableArguments": {
          "shape": "GenericMap",
          "documentation": "<p>Non-overridable arguments for this job, specified as name-value pairs.</p>"
        },
        "Connections": {
          "shape": "ConnectionsList",
          "documentation": "<p>The connections used for this job.</p>"
        },
        "MaxRetries": {
          "shape": "MaxRetries",
          "documentation": "<p>The maximum number of times to retry this job after a JobRun fails.</p>"
        },
        "AllocatedCapacity": {
          "shape": "IntegerValue",
          "documentation": "<p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p> <p>The number of AWS Glue data processing units (DPUs) allocated to runs of this job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p> <p/>",
          "deprecated": true,
          "deprecatedMessage": "This property is deprecated, use MaxCapacity instead."
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p> <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p> <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are running a Python shell job, an Apache Spark ETL job, or an Apache Spark streaming ETL job:</p> <ul> <li> <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p> </li> <li> <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\") or Apache Spark streaming ETL job (<code>JobCommand.Name</code>=\"gluestreaming\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p> </li> </ul>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> </ul>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p> <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used with this job.</p>"
        },
        "NotificationProperty": {
          "shape": "NotificationProperty",
          "documentation": "<p>Specifies configuration properties of a job notification.</p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark. </p> <p>For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p> <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>"
        }
      },
      "documentation": "<p>Specifies a job definition.</p>"
    },
    "JobBookmarkEntry": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The name of the job in question.</p>"
        },
        "Version": {
          "shape": "IntegerValue",
          "documentation": "<p>The version of the job.</p>"
        },
        "Run": {
          "shape": "IntegerValue",
          "documentation": "<p>The run ID number.</p>"
        },
        "Attempt": {
          "shape": "IntegerValue",
          "documentation": "<p>The attempt ID number.</p>"
        },
        "PreviousRunId": {
          "shape": "RunId",
          "documentation": "<p>The unique run identifier associated with the previous job run.</p>"
        },
        "RunId": {
          "shape": "RunId",
          "documentation": "<p>The run ID number.</p>"
        },
        "JobBookmark": {
          "shape": "JsonValue",
          "documentation": "<p>The bookmark itself.</p>"
        }
      },
      "documentation": "<p>Defines a point that a job can resume processing.</p>"
    },
    "JobBookmarksEncryption": {
      "type": "structure",
      "members": {
        "JobBookmarksEncryptionMode": {
          "shape": "JobBookmarksEncryptionMode",
          "documentation": "<p>The encryption mode to use for job bookmarks data.</p>"
        },
        "KmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>"
        }
      },
      "documentation": "<p>Specifies how job bookmark data should be encrypted.</p>"
    },
    "JobBookmarksEncryptionMode": {
      "type": "string",
      "enum": [
        "DISABLED",
        "CSE-KMS"
      ]
    },
    "JobCommand": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "GenericString",
          "documentation": "<p>The name of the job command. For an Apache Spark ETL job, this must be <code>glueetl</code>. For a Python shell job, it must be <code>pythonshell</code>. For an Apache Spark streaming ETL job, this must be <code>gluestreaming</code>.</p>"
        },
        "ScriptLocation": {
          "shape": "ScriptLocationString",
          "documentation": "<p>Specifies the Amazon Simple Storage Service (Amazon S3) path to a script that executes a job.</p>"
        },
        "PythonVersion": {
          "shape": "PythonVersionString",
          "documentation": "<p>The Python version being used to execute a Python shell job. Allowed values are 2 or 3.</p>"
        }
      },
      "documentation": "<p>Specifies code executed when a job is run.</p>"
    },
    "JobList": {
      "type": "list",
      "member": {
        "shape": "Job"
      }
    },
    "JobName": {
      "type": "string"
    },
    "JobNameList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      }
    },
    "JobNodeDetails": {
      "type": "structure",
      "members": {
        "JobRuns": {
          "shape": "JobRunList",
          "documentation": "<p>The information for the job runs represented by the job node.</p>"
        }
      },
      "documentation": "<p>The details of a Job node present in the workflow.</p>"
    },
    "JobRun": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "IdString",
          "documentation": "<p>The ID of this job run.</p>"
        },
        "Attempt": {
          "shape": "AttemptCount",
          "documentation": "<p>The number of the attempt to run this job.</p>"
        },
        "PreviousRunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of the previous run of this job. For example, the <code>JobRunId</code> specified in the <code>StartJobRun</code> action.</p>"
        },
        "TriggerName": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger that started this job run.</p>"
        },
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition being used in this run.</p>"
        },
        "StartedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The date and time at which this job run was started.</p>"
        },
        "LastModifiedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The last time that this job run was modified.</p>"
        },
        "CompletedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The date and time that this job run completed.</p>"
        },
        "JobRunState": {
          "shape": "JobRunState",
          "documentation": "<p>The current state of the job run. For more information about the statuses of jobs that have terminated abnormally, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/job-run-statuses.html\">AWS Glue Job Run Statuses</a>.</p>"
        },
        "Arguments": {
          "shape": "GenericMap",
          "documentation": "<p>The job arguments associated with this run. For this job run, they replace the default arguments set in the job definition itself.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorString",
          "documentation": "<p>An error message associated with this job run.</p>"
        },
        "PredecessorRuns": {
          "shape": "PredecessorList",
          "documentation": "<p>A list of predecessors to this job run.</p>"
        },
        "AllocatedCapacity": {
          "shape": "IntegerValue",
          "documentation": "<p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p> <p>The number of AWS Glue data processing units (DPUs) allocated to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p>",
          "deprecated": true,
          "deprecatedMessage": "This property is deprecated, use MaxCapacity instead."
        },
        "ExecutionTime": {
          "shape": "ExecutionTime",
          "documentation": "<p>The amount of time (in seconds) that the job run consumed resources.</p>"
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p> <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p> <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are running a Python shell job or an Apache Spark ETL job:</p> <ul> <li> <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p> </li> <li> <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p> </li> </ul>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p> </li> </ul>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p> <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used with this job run.</p>"
        },
        "LogGroupName": {
          "shape": "GenericString",
          "documentation": "<p>The name of the log group for secure logging that can be server-side encrypted in Amazon CloudWatch using AWS KMS. This name can be <code>/aws-glue/jobs/</code>, in which case the default encryption is <code>NONE</code>. If you add a role name and <code>SecurityConfiguration</code> name (in other words, <code>/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/</code>), then that security configuration is used to encrypt the log group.</p>"
        },
        "NotificationProperty": {
          "shape": "NotificationProperty",
          "documentation": "<p>Specifies configuration properties of a job run notification.</p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark. </p> <p>For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p> <p>Jobs that are created without specifying a Glue version default to Glue 0.9.</p>"
        }
      },
      "documentation": "<p>Contains information about a job run.</p>"
    },
    "JobRunList": {
      "type": "list",
      "member": {
        "shape": "JobRun"
      }
    },
    "JobRunState": {
      "type": "string",
      "enum": [
        "STARTING",
        "RUNNING",
        "STOPPING",
        "STOPPED",
        "SUCCEEDED",
        "FAILED",
        "TIMEOUT"
      ]
    },
    "JobUpdate": {
      "type": "structure",
      "members": {
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>Description of the job being defined.</p>"
        },
        "LogUri": {
          "shape": "UriString",
          "documentation": "<p>This field is reserved for future use.</p>"
        },
        "Role": {
          "shape": "RoleString",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the IAM role associated with this job (required).</p>"
        },
        "ExecutionProperty": {
          "shape": "ExecutionProperty",
          "documentation": "<p>An <code>ExecutionProperty</code> specifying the maximum number of concurrent runs allowed for this job.</p>"
        },
        "Command": {
          "shape": "JobCommand",
          "documentation": "<p>The <code>JobCommand</code> that executes this job (required).</p>"
        },
        "DefaultArguments": {
          "shape": "GenericMap",
          "documentation": "<p>The default arguments for this job.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>"
        },
        "NonOverridableArguments": {
          "shape": "GenericMap",
          "documentation": "<p>Non-overridable arguments for this job, specified as name-value pairs.</p>"
        },
        "Connections": {
          "shape": "ConnectionsList",
          "documentation": "<p>The connections used for this job.</p>"
        },
        "MaxRetries": {
          "shape": "MaxRetries",
          "documentation": "<p>The maximum number of times to retry this job if it fails.</p>"
        },
        "AllocatedCapacity": {
          "shape": "IntegerValue",
          "documentation": "<p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p> <p>The number of AWS Glue data processing units (DPUs) to allocate to this job. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p>",
          "deprecated": true,
          "deprecatedMessage": "This property is deprecated, use MaxCapacity instead."
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p> <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p> <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are running a Python shell job or an Apache Spark ETL job:</p> <ul> <li> <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p> </li> <li> <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\") or Apache Spark streaming ETL job (<code>JobCommand.Name</code>=\"gluestreaming\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p> </li> </ul>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB of memory, 64 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB of memory, 128 GB disk), and provides 1 executor per worker. We recommend this worker type for memory-intensive jobs.</p> </li> </ul>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p> <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used with this job.</p>"
        },
        "NotificationProperty": {
          "shape": "NotificationProperty",
          "documentation": "<p>Specifies the configuration properties of a job notification.</p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>Glue version determines the versions of Apache Spark and Python that AWS Glue supports. The Python version indicates the version supported for jobs of type Spark. </p> <p>For more information about the available AWS Glue versions and corresponding Spark and Python versions, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-job.html\">Glue version</a> in the developer guide.</p>"
        }
      },
      "documentation": "<p>Specifies information used to update an existing job definition. The previous job definition is completely overwritten by this information.</p>"
    },
    "JsonClassifier": {
      "type": "structure",
      "required": [
        "Name",
        "JsonPath"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this classifier was registered.</p>"
        },
        "LastUpdated": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this classifier was last updated.</p>"
        },
        "Version": {
          "shape": "VersionId",
          "documentation": "<p>The version of this classifier.</p>"
        },
        "JsonPath": {
          "shape": "JsonPath",
          "documentation": "<p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json\">Writing JsonPath Custom Classifiers</a>.</p>"
        }
      },
      "documentation": "<p>A classifier for <code>JSON</code> content.</p>"
    },
    "JsonPath": {
      "type": "string"
    },
    "JsonValue": {
      "type": "string"
    },
    "KeyList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "min": 1
    },
    "KeySchemaElement": {
      "type": "structure",
      "required": [
        "Name",
        "Type"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of a partition key.</p>"
        },
        "Type": {
          "shape": "ColumnTypeString",
          "documentation": "<p>The type of a partition key.</p>"
        }
      },
      "documentation": "<p>A partition key pair consisting of a name and a type.</p>"
    },
    "KeySchemaElementList": {
      "type": "list",
      "member": {
        "shape": "KeySchemaElement"
      },
      "min": 1
    },
    "KeyString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "KmsKeyArn": {
      "type": "string",
      "pattern": "arn:aws:kms:.*"
    },
    "LabelCount": {
      "type": "integer"
    },
    "LabelingSetGenerationTaskRunProperties": {
      "type": "structure",
      "members": {
        "OutputS3Path": {
          "shape": "UriString",
          "documentation": "<p>The Amazon Simple Storage Service (Amazon S3) path where you will generate the labeling set.</p>"
        }
      },
      "documentation": "<p>Specifies configuration properties for a labeling set generation task run.</p>"
    },
    "Language": {
      "type": "string",
      "enum": [
        "PYTHON",
        "SCALA"
      ]
    },
    "LastCrawlInfo": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "LastCrawlStatus",
          "documentation": "<p>Status of the last crawl.</p>"
        },
        "ErrorMessage": {
          "shape": "DescriptionString",
          "documentation": "<p>If an error occurred, the error information about the last crawl.</p>"
        },
        "LogGroup": {
          "shape": "LogGroup",
          "documentation": "<p>The log group for the last crawl.</p>"
        },
        "LogStream": {
          "shape": "LogStream",
          "documentation": "<p>The log stream for the last crawl.</p>"
        },
        "MessagePrefix": {
          "shape": "MessagePrefix",
          "documentation": "<p>The prefix for a message about this crawl.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the crawl started.</p>"
        }
      },
      "documentation": "<p>Status and error information about the most recent crawl.</p>"
    },
    "LastCrawlStatus": {
      "type": "string",
      "enum": [
        "SUCCEEDED",
        "CANCELLED",
        "FAILED"
      ]
    },
    "ListCrawlersRequest": {
      "type": "structure",
      "members": {
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of a list to return.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if this is a continuation request.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>Specifies to return only these tagged resources.</p>"
        }
      }
    },
    "ListCrawlersResponse": {
      "type": "structure",
      "members": {
        "CrawlerNames": {
          "shape": "CrawlerNameList",
          "documentation": "<p>The names of all crawlers in the account, or the crawlers with the specified tags.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, if the returned list does not contain the last metric available.</p>"
        }
      }
    },
    "ListDevEndpointsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation request.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of a list to return.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>Specifies to return only these tagged resources.</p>"
        }
      }
    },
    "ListDevEndpointsResponse": {
      "type": "structure",
      "members": {
        "DevEndpointNames": {
          "shape": "DevEndpointNameList",
          "documentation": "<p>The names of all the <code>DevEndpoint</code>s in the account, or the <code>DevEndpoint</code>s with the specified tags.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if the returned list does not contain the last metric available.</p>"
        }
      }
    },
    "ListJobsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation request.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of a list to return.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>Specifies to return only these tagged resources.</p>"
        }
      }
    },
    "ListJobsResponse": {
      "type": "structure",
      "members": {
        "JobNames": {
          "shape": "JobNameList",
          "documentation": "<p>The names of all jobs in the account, or the jobs with the specified tags.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if the returned list does not contain the last metric available.</p>"
        }
      }
    },
    "ListMLTransformsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A continuation token, if this is a continuation request.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of a list to return.</p>"
        },
        "Filter": {
          "shape": "TransformFilterCriteria",
          "documentation": "<p>A <code>TransformFilterCriteria</code> used to filter the machine learning transforms.</p>"
        },
        "Sort": {
          "shape": "TransformSortCriteria",
          "documentation": "<p>A <code>TransformSortCriteria</code> used to sort the machine learning transforms.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>Specifies to return only these tagged resources.</p>"
        }
      }
    },
    "ListMLTransformsResponse": {
      "type": "structure",
      "required": [
        "TransformIds"
      ],
      "members": {
        "TransformIds": {
          "shape": "TransformIdList",
          "documentation": "<p>The identifiers of all the machine learning transforms in the account, or the machine learning transforms with the specified tags.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>A continuation token, if the returned list does not contain the last metric available.</p>"
        }
      }
    },
    "ListTriggersRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation request.</p>"
        },
        "DependentJobName": {
          "shape": "NameString",
          "documentation": "<p> The name of the job for which to retrieve triggers. The trigger that can start this job is returned. If there is no such trigger, all triggers are returned.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of a list to return.</p>"
        },
        "Tags": {
          "shape": "TagsMap",
          "documentation": "<p>Specifies to return only these tagged resources.</p>"
        }
      }
    },
    "ListTriggersResponse": {
      "type": "structure",
      "members": {
        "TriggerNames": {
          "shape": "TriggerNameList",
          "documentation": "<p>The names of all triggers in the account, or the triggers with the specified tags.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if the returned list does not contain the last metric available.</p>"
        }
      }
    },
    "ListWorkflowsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if this is a continuation request.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum size of a list to return.</p>"
        }
      }
    },
    "ListWorkflowsResponse": {
      "type": "structure",
      "members": {
        "Workflows": {
          "shape": "WorkflowNames",
          "documentation": "<p>List of names of workflows in the account.</p>"
        },
        "NextToken": {
          "shape": "GenericString",
          "documentation": "<p>A continuation token, if not all workflow names have been returned.</p>"
        }
      }
    },
    "Location": {
      "type": "structure",
      "members": {
        "Jdbc": {
          "shape": "CodeGenNodeArgs",
          "documentation": "<p>A JDBC location.</p>"
        },
        "S3": {
          "shape": "CodeGenNodeArgs",
          "documentation": "<p>An Amazon Simple Storage Service (Amazon S3) location.</p>"
        },
        "DynamoDB": {
          "shape": "CodeGenNodeArgs",
          "documentation": "<p>An Amazon DynamoDB table location.</p>"
        }
      },
      "documentation": "<p>The location of resources.</p>"
    },
    "LocationMap": {
      "type": "map",
      "key": {
        "shape": "ColumnValuesString"
      },
      "value": {
        "shape": "ColumnValuesString"
      }
    },
    "LocationString": {
      "type": "string",
      "max": 2056,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "LogGroup": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "[\\.\\-_/#A-Za-z0-9]+"
    },
    "LogStream": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "[^:*]*"
    },
    "Logical": {
      "type": "string",
      "enum": [
        "AND",
        "ANY"
      ]
    },
    "LogicalOperator": {
      "type": "string",
      "enum": [
        "EQUALS"
      ]
    },
    "Long": {
      "type": "long"
    },
    "LongColumnStatisticsData": {
      "type": "structure",
      "required": [
        "NumberOfNulls",
        "NumberOfDistinctValues"
      ],
      "members": {
        "MinimumValue": {
          "shape": "Long",
          "documentation": "<p>Minimum value of the column.</p>"
        },
        "MaximumValue": {
          "shape": "Long",
          "documentation": "<p>Maximum value of the column.</p>"
        },
        "NumberOfNulls": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of nulls.</p>"
        },
        "NumberOfDistinctValues": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of distinct values.</p>"
        }
      },
      "documentation": "<p>Defines a long column statistics data.</p>"
    },
    "MLTransform": {
      "type": "structure",
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique transform ID that is generated for the machine learning transform. The ID is guaranteed to be unique and does not change.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>A user-defined name for the machine learning transform. Names are not guaranteed unique and can be changed at any time.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A user-defined, long-form description text for the machine learning transform. Descriptions are not guaranteed to be unique and can be changed at any time.</p>"
        },
        "Status": {
          "shape": "TransformStatusType",
          "documentation": "<p>The current status of the machine learning transform.</p>"
        },
        "CreatedOn": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp. The time and date that this machine learning transform was created.</p>"
        },
        "LastModifiedOn": {
          "shape": "Timestamp",
          "documentation": "<p>A timestamp. The last point in time when this machine learning transform was modified.</p>"
        },
        "InputRecordTables": {
          "shape": "GlueTables",
          "documentation": "<p>A list of AWS Glue table definitions used by the transform.</p>"
        },
        "Parameters": {
          "shape": "TransformParameters",
          "documentation": "<p>A <code>TransformParameters</code> object. You can use parameters to tune (customize) the behavior of the machine learning transform by specifying what data it learns from and your preference on various tradeoffs (such as precious vs. recall, or accuracy vs. cost).</p>"
        },
        "EvaluationMetrics": {
          "shape": "EvaluationMetrics",
          "documentation": "<p>An <code>EvaluationMetrics</code> object. Evaluation metrics provide an estimate of the quality of your machine learning transform.</p>"
        },
        "LabelCount": {
          "shape": "LabelCount",
          "documentation": "<p>A count identifier for the labeling files generated by AWS Glue for this transform. As you create a better transform, you can iteratively download, label, and upload the labeling file.</p>"
        },
        "Schema": {
          "shape": "TransformSchema",
          "documentation": "<p>A map of key-value pairs representing the columns and data types that this transform can run against. Has an upper bound of 100 columns.</p>"
        },
        "Role": {
          "shape": "RoleString",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions. The required permissions include both AWS Glue service role permissions to AWS Glue resources, and Amazon S3 permissions required by the transform. </p> <ul> <li> <p>This role needs AWS Glue service role permissions to allow access to resources in AWS Glue. See <a href=\"https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html\">Attach a Policy to IAM Users That Access AWS Glue</a>.</p> </li> <li> <p>This role needs permission to your Amazon Simple Storage Service (Amazon S3) sources, targets, temporary directory, scripts, and any libraries used by the task run for this transform.</p> </li> </ul>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">AWS Glue Versions</a> in the developer guide.</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"http://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>. </p> <p> <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p> <ul> <li> <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p> </li> <li> <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p> </li> <li> <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p> </li> <li> <p> <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p> </li> </ul> <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when a task of this transform runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p> </li> </ul> <p> <code>MaxCapacity</code> is a mutually exclusive option with <code>NumberOfWorkers</code> and <code>WorkerType</code>.</p> <ul> <li> <p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code> is set, then <code>MaxCapacity</code> cannot be set.</p> </li> <li> <p>If <code>MaxCapacity</code> is set then neither <code>NumberOfWorkers</code> or <code>WorkerType</code> can be set.</p> </li> <li> <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p> </li> <li> <p> <code>MaxCapacity</code> and <code>NumberOfWorkers</code> must both be at least 1.</p> </li> </ul>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when a task of the transform runs.</p> <p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code> is required (and vice versa).</p>"
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The timeout in minutes of the machine learning transform.</p>"
        },
        "MaxRetries": {
          "shape": "NullableInteger",
          "documentation": "<p>The maximum number of times to retry after an <code>MLTaskRun</code> of the machine learning transform fails.</p>"
        }
      },
      "documentation": "<p>A structure for a machine learning transform.</p>"
    },
    "MapValue": {
      "type": "map",
      "key": {
        "shape": "GenericString"
      },
      "value": {
        "shape": "GenericString"
      },
      "max": 100,
      "min": 0
    },
    "MappingEntry": {
      "type": "structure",
      "members": {
        "SourceTable": {
          "shape": "TableName",
          "documentation": "<p>The name of the source table.</p>"
        },
        "SourcePath": {
          "shape": "SchemaPathString",
          "documentation": "<p>The source path.</p>"
        },
        "SourceType": {
          "shape": "FieldType",
          "documentation": "<p>The source type.</p>"
        },
        "TargetTable": {
          "shape": "TableName",
          "documentation": "<p>The target table.</p>"
        },
        "TargetPath": {
          "shape": "SchemaPathString",
          "documentation": "<p>The target path.</p>"
        },
        "TargetType": {
          "shape": "FieldType",
          "documentation": "<p>The target type.</p>"
        }
      },
      "documentation": "<p>Defines a mapping.</p>"
    },
    "MappingList": {
      "type": "list",
      "member": {
        "shape": "MappingEntry"
      }
    },
    "MatchCriteria": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "max": 10,
      "min": 0
    },
    "MaxConcurrentRuns": {
      "type": "integer"
    },
    "MaxRetries": {
      "type": "integer"
    },
    "MessagePrefix": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "MillisecondsCount": {
      "type": "long"
    },
    "NameString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "NameStringList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      }
    },
    "Node": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "NodeType",
          "documentation": "<p>The type of AWS Glue component represented by the node.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the AWS Glue component represented by the node.</p>"
        },
        "UniqueId": {
          "shape": "NameString",
          "documentation": "<p>The unique Id assigned to the node within the workflow.</p>"
        },
        "TriggerDetails": {
          "shape": "TriggerNodeDetails",
          "documentation": "<p>Details of the Trigger when the node represents a Trigger.</p>"
        },
        "JobDetails": {
          "shape": "JobNodeDetails",
          "documentation": "<p>Details of the Job when the node represents a Job.</p>"
        },
        "CrawlerDetails": {
          "shape": "CrawlerNodeDetails",
          "documentation": "<p>Details of the crawler when the node represents a crawler.</p>"
        }
      },
      "documentation": "<p>A node represents an AWS Glue component such as a trigger, or job, etc., that is part of a workflow.</p>"
    },
    "NodeIdList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      }
    },
    "NodeList": {
      "type": "list",
      "member": {
        "shape": "Node"
      }
    },
    "NodeType": {
      "type": "string",
      "enum": [
        "CRAWLER",
        "JOB",
        "TRIGGER"
      ]
    },
    "NonNegativeDouble": {
      "type": "double",
      "min": 0
    },
    "NonNegativeInteger": {
      "type": "integer",
      "min": 0
    },
    "NonNegativeLong": {
      "type": "long",
      "min": 0
    },
    "NotificationProperty": {
      "type": "structure",
      "members": {
        "NotifyDelayAfter": {
          "shape": "NotifyDelayAfter",
          "documentation": "<p>After a job run starts, the number of minutes to wait before sending a job run delay notification.</p>"
        }
      },
      "documentation": "<p>Specifies configuration properties of a notification.</p>"
    },
    "NotifyDelayAfter": {
      "type": "integer",
      "box": true,
      "min": 1
    },
    "NullableBoolean": {
      "type": "boolean",
      "box": true
    },
    "NullableDouble": {
      "type": "double",
      "box": true
    },
    "NullableInteger": {
      "type": "integer",
      "box": true
    },
    "OrchestrationStringList": {
      "type": "list",
      "member": {
        "shape": "GenericString"
      }
    },
    "Order": {
      "type": "structure",
      "required": [
        "Column",
        "SortOrder"
      ],
      "members": {
        "Column": {
          "shape": "NameString",
          "documentation": "<p>The name of the column.</p>"
        },
        "SortOrder": {
          "shape": "IntegerFlag",
          "documentation": "<p>Indicates that the column is sorted in ascending order (<code>== 1</code>), or in descending order (<code>==0</code>).</p>"
        }
      },
      "documentation": "<p>Specifies the sort order of a sorted column.</p>"
    },
    "OrderList": {
      "type": "list",
      "member": {
        "shape": "Order"
      }
    },
    "PageSize": {
      "type": "integer",
      "box": true,
      "max": 1000,
      "min": 1
    },
    "PaginationToken": {
      "type": "string"
    },
    "ParametersMap": {
      "type": "map",
      "key": {
        "shape": "KeyString"
      },
      "value": {
        "shape": "ParametersMapValue"
      }
    },
    "ParametersMapValue": {
      "type": "string",
      "max": 512000
    },
    "Partition": {
      "type": "structure",
      "members": {
        "Values": {
          "shape": "ValueStringList",
          "documentation": "<p>The values of the partition.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database in which to create the partition.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database table in which to create the partition.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the partition was created.</p>"
        },
        "LastAccessTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time at which the partition was accessed.</p>"
        },
        "StorageDescriptor": {
          "shape": "StorageDescriptor",
          "documentation": "<p>Provides information about the physical location where the partition is stored.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>These key-value pairs define partition parameters.</p>"
        },
        "LastAnalyzedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time at which column statistics were computed for this partition.</p>"
        },
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the partition resides.</p>"
        }
      },
      "documentation": "<p>Represents a slice of table data.</p>"
    },
    "PartitionError": {
      "type": "structure",
      "members": {
        "PartitionValues": {
          "shape": "ValueStringList",
          "documentation": "<p>The values that define the partition.</p>"
        },
        "ErrorDetail": {
          "shape": "ErrorDetail",
          "documentation": "<p>The details about the partition error.</p>"
        }
      },
      "documentation": "<p>Contains information about a partition error.</p>"
    },
    "PartitionErrors": {
      "type": "list",
      "member": {
        "shape": "PartitionError"
      }
    },
    "PartitionIndex": {
      "type": "structure",
      "required": [
        "Keys",
        "IndexName"
      ],
      "members": {
        "Keys": {
          "shape": "KeyList",
          "documentation": "<p>The keys for the partition index.</p>"
        },
        "IndexName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partition index.</p>"
        }
      },
      "documentation": "<p>A structure for a partition index.</p>"
    },
    "PartitionIndexDescriptor": {
      "type": "structure",
      "required": [
        "IndexName",
        "Keys",
        "IndexStatus"
      ],
      "members": {
        "IndexName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partition index.</p>"
        },
        "Keys": {
          "shape": "KeySchemaElementList",
          "documentation": "<p>A list of one or more keys, as <code>KeySchemaElement</code> structures, for the partition index.</p>"
        },
        "IndexStatus": {
          "shape": "PartitionIndexStatus",
          "documentation": "<p>The status of the partition index. </p>"
        }
      },
      "documentation": "<p>A descriptor for a partition index in a table.</p>"
    },
    "PartitionIndexDescriptorList": {
      "type": "list",
      "member": {
        "shape": "PartitionIndexDescriptor"
      }
    },
    "PartitionIndexList": {
      "type": "list",
      "member": {
        "shape": "PartitionIndex"
      },
      "max": 3
    },
    "PartitionIndexStatus": {
      "type": "string",
      "enum": [
        "ACTIVE"
      ]
    },
    "PartitionInput": {
      "type": "structure",
      "members": {
        "Values": {
          "shape": "ValueStringList",
          "documentation": "<p>The values of the partition. Although this parameter is not required by the SDK, you must specify this parameter for a valid input.</p> <p>The values for the keys for the new partition must be passed as an array of String objects that must be ordered in the same order as the partition keys appearing in the Amazon S3 prefix. Otherwise AWS Glue will add the values to the wrong keys.</p>"
        },
        "LastAccessTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time at which the partition was accessed.</p>"
        },
        "StorageDescriptor": {
          "shape": "StorageDescriptor",
          "documentation": "<p>Provides information about the physical location where the partition is stored.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>These key-value pairs define partition parameters.</p>"
        },
        "LastAnalyzedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time at which column statistics were computed for this partition.</p>"
        }
      },
      "documentation": "<p>The structure used to create and update a partition.</p>"
    },
    "PartitionInputList": {
      "type": "list",
      "member": {
        "shape": "PartitionInput"
      },
      "max": 100,
      "min": 0
    },
    "PartitionList": {
      "type": "list",
      "member": {
        "shape": "Partition"
      }
    },
    "PartitionValueList": {
      "type": "structure",
      "required": [
        "Values"
      ],
      "members": {
        "Values": {
          "shape": "ValueStringList",
          "documentation": "<p>The list of values.</p>"
        }
      },
      "documentation": "<p>Contains a list of values defining partitions.</p>"
    },
    "Path": {
      "type": "string"
    },
    "PathList": {
      "type": "list",
      "member": {
        "shape": "Path"
      }
    },
    "Permission": {
      "type": "string",
      "enum": [
        "ALL",
        "SELECT",
        "ALTER",
        "DROP",
        "DELETE",
        "INSERT",
        "CREATE_DATABASE",
        "CREATE_TABLE",
        "DATA_LOCATION_ACCESS"
      ]
    },
    "PermissionList": {
      "type": "list",
      "member": {
        "shape": "Permission"
      }
    },
    "PhysicalConnectionRequirements": {
      "type": "structure",
      "members": {
        "SubnetId": {
          "shape": "NameString",
          "documentation": "<p>The subnet ID used by the connection.</p>"
        },
        "SecurityGroupIdList": {
          "shape": "SecurityGroupIdList",
          "documentation": "<p>The security group ID list used by the connection.</p>"
        },
        "AvailabilityZone": {
          "shape": "NameString",
          "documentation": "<p>The connection's Availability Zone. This field is redundant because the specified subnet implies the Availability Zone to be used. Currently the field must be populated, but it will be deprecated in the future.</p>"
        }
      },
      "documentation": "<p>Specifies the physical requirements for a connection.</p>"
    },
    "PolicyJsonString": {
      "type": "string",
      "max": 10240,
      "min": 2
    },
    "Predecessor": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition used by the predecessor job run.</p>"
        },
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>The job-run ID of the predecessor job run.</p>"
        }
      },
      "documentation": "<p>A job run that was used in the predicate of a conditional trigger that triggered this job run.</p>"
    },
    "PredecessorList": {
      "type": "list",
      "member": {
        "shape": "Predecessor"
      }
    },
    "Predicate": {
      "type": "structure",
      "members": {
        "Logical": {
          "shape": "Logical",
          "documentation": "<p>An optional field if only one condition is listed. If multiple conditions are listed, then this field is required.</p>"
        },
        "Conditions": {
          "shape": "ConditionList",
          "documentation": "<p>A list of the conditions that determine when the trigger will fire.</p>"
        }
      },
      "documentation": "<p>Defines the predicate of the trigger, which determines when it fires.</p>"
    },
    "PredicateString": {
      "type": "string",
      "max": 2048,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "PrincipalPermissions": {
      "type": "structure",
      "members": {
        "Principal": {
          "shape": "DataLakePrincipal",
          "documentation": "<p>The principal who is granted permissions.</p>"
        },
        "Permissions": {
          "shape": "PermissionList",
          "documentation": "<p>The permissions that are granted to the principal.</p>"
        }
      },
      "documentation": "<p>Permissions granted to a principal.</p>"
    },
    "PrincipalPermissionsList": {
      "type": "list",
      "member": {
        "shape": "PrincipalPermissions"
      }
    },
    "PrincipalType": {
      "type": "string",
      "enum": [
        "USER",
        "ROLE",
        "GROUP"
      ]
    },
    "PropertyPredicate": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "ValueString",
          "documentation": "<p>The key of the property.</p>"
        },
        "Value": {
          "shape": "ValueString",
          "documentation": "<p>The value of the property.</p>"
        },
        "Comparator": {
          "shape": "Comparator",
          "documentation": "<p>The comparator used to compare this property to others.</p>"
        }
      },
      "documentation": "<p>Defines a property predicate.</p>"
    },
    "PublicKeysList": {
      "type": "list",
      "member": {
        "shape": "GenericString"
      },
      "max": 5
    },
    "PutDataCatalogEncryptionSettingsRequest": {
      "type": "structure",
      "required": [
        "DataCatalogEncryptionSettings"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DataCatalogEncryptionSettings": {
          "shape": "DataCatalogEncryptionSettings",
          "documentation": "<p>The security configuration to set.</p>"
        }
      }
    },
    "PutDataCatalogEncryptionSettingsResponse": {
      "type": "structure",
      "members": {}
    },
    "PutResourcePolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyInJson"
      ],
      "members": {
        "PolicyInJson": {
          "shape": "PolicyJsonString",
          "documentation": "<p>Contains the policy document to set, in JSON format.</p>"
        },
        "ResourceArn": {
          "shape": "GlueResourceArn",
          "documentation": "<p>The ARN of the AWS Glue resource for the resource policy to be set. For more information about AWS Glue resource ARNs, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id\">AWS Glue ARN string pattern</a> </p>"
        },
        "PolicyHashCondition": {
          "shape": "HashString",
          "documentation": "<p>The hash value returned when the previous policy was set using <code>PutResourcePolicy</code>. Its purpose is to prevent concurrent modifications of a policy. Do not use this parameter if no previous policy has been set.</p>"
        },
        "PolicyExistsCondition": {
          "shape": "ExistCondition",
          "documentation": "<p>A value of <code>MUST_EXIST</code> is used to update a policy. A value of <code>NOT_EXIST</code> is used to create a new policy. If a value of <code>NONE</code> or a null value is used, the call will not depend on the existence of a policy.</p>"
        },
        "EnableHybrid": {
          "shape": "EnableHybridValues",
          "documentation": "<p>Allows you to specify if you want to use both resource-level and account/catalog-level resource policies. A resource-level policy is a policy attached to an individual resource such as a database or a table.</p> <p>The default value of <code>NO</code> indicates that resource-level policies cannot co-exist with an account-level policy. A value of <code>YES</code> means the use of both resource-level and account/catalog-level resource policies is allowed.</p>"
        }
      }
    },
    "PutResourcePolicyResponse": {
      "type": "structure",
      "members": {
        "PolicyHash": {
          "shape": "HashString",
          "documentation": "<p>A hash of the policy that has just been set. This must be included in a subsequent call that overwrites or updates this policy.</p>"
        }
      }
    },
    "PutWorkflowRunPropertiesRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RunId",
        "RunProperties"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the workflow which was run.</p>"
        },
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of the workflow run for which the run properties should be updated.</p>"
        },
        "RunProperties": {
          "shape": "WorkflowRunProperties",
          "documentation": "<p>The properties to put for the specified run.</p>"
        }
      }
    },
    "PutWorkflowRunPropertiesResponse": {
      "type": "structure",
      "members": {}
    },
    "PythonScript": {
      "type": "string"
    },
    "PythonVersionString": {
      "type": "string",
      "pattern": "^[2-3]$"
    },
    "RecordsCount": {
      "type": "long",
      "box": true
    },
    "ReplaceBoolean": {
      "type": "boolean"
    },
    "ResetJobBookmarkRequest": {
      "type": "structure",
      "required": [
        "JobName"
      ],
      "members": {
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The name of the job in question.</p>"
        },
        "RunId": {
          "shape": "RunId",
          "documentation": "<p>The unique run identifier associated with this job run.</p>"
        }
      }
    },
    "ResetJobBookmarkResponse": {
      "type": "structure",
      "members": {
        "JobBookmarkEntry": {
          "shape": "JobBookmarkEntry",
          "documentation": "<p>The reset bookmark entry.</p>"
        }
      }
    },
    "ResourceShareType": {
      "type": "string",
      "enum": [
        "FOREIGN",
        "ALL"
      ]
    },
    "ResourceType": {
      "type": "string",
      "enum": [
        "JAR",
        "FILE",
        "ARCHIVE"
      ]
    },
    "ResourceUri": {
      "type": "structure",
      "members": {
        "ResourceType": {
          "shape": "ResourceType",
          "documentation": "<p>The type of the resource.</p>"
        },
        "Uri": {
          "shape": "URI",
          "documentation": "<p>The URI for accessing the resource.</p>"
        }
      },
      "documentation": "<p>The URIs for function resources.</p>"
    },
    "ResourceUriList": {
      "type": "list",
      "member": {
        "shape": "ResourceUri"
      },
      "max": 1000,
      "min": 0
    },
    "ResumeWorkflowRunRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RunId",
        "NodeIds"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow to resume.</p>"
        },
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of the workflow run to resume.</p>"
        },
        "NodeIds": {
          "shape": "NodeIdList",
          "documentation": "<p>A list of the node IDs for the nodes you want to restart. The nodes that are to be restarted must have a run attempt in the original run.</p>"
        }
      }
    },
    "ResumeWorkflowRunResponse": {
      "type": "structure",
      "members": {
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>The new ID assigned to the resumed workflow run. Each resume of a workflow run will have a new run ID.</p>"
        },
        "NodeIds": {
          "shape": "NodeIdList",
          "documentation": "<p>A list of the node IDs for the nodes that were actually restarted.</p>"
        }
      }
    },
    "Role": {
      "type": "string"
    },
    "RoleArn": {
      "type": "string",
      "pattern": "arn:aws:iam::\\d{12}:role/.*"
    },
    "RoleString": {
      "type": "string"
    },
    "RowTag": {
      "type": "string"
    },
    "RunId": {
      "type": "string"
    },
    "S3Encryption": {
      "type": "structure",
      "members": {
        "S3EncryptionMode": {
          "shape": "S3EncryptionMode",
          "documentation": "<p>The encryption mode to use for Amazon S3 data.</p>"
        },
        "KmsKeyArn": {
          "shape": "KmsKeyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the KMS key to be used to encrypt the data.</p>"
        }
      },
      "documentation": "<p>Specifies how Amazon Simple Storage Service (Amazon S3) data should be encrypted.</p>"
    },
    "S3EncryptionList": {
      "type": "list",
      "member": {
        "shape": "S3Encryption"
      }
    },
    "S3EncryptionMode": {
      "type": "string",
      "enum": [
        "DISABLED",
        "SSE-KMS",
        "SSE-S3"
      ]
    },
    "S3Target": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "Path",
          "documentation": "<p>The path to the Amazon S3 target.</p>"
        },
        "Exclusions": {
          "shape": "PathList",
          "documentation": "<p>A list of glob patterns used to exclude from the crawl. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html\">Catalog Tables with a Crawler</a>.</p>"
        },
        "ConnectionName": {
          "shape": "ConnectionName",
          "documentation": "<p>The name of a connection which allows a job or crawler to access data in Amazon S3 within an Amazon Virtual Private Cloud environment (Amazon VPC).</p>"
        }
      },
      "documentation": "<p>Specifies a data store in Amazon Simple Storage Service (Amazon S3).</p>"
    },
    "S3TargetList": {
      "type": "list",
      "member": {
        "shape": "S3Target"
      }
    },
    "ScalaCode": {
      "type": "string"
    },
    "Schedule": {
      "type": "structure",
      "members": {
        "ScheduleExpression": {
          "shape": "CronExpression",
          "documentation": "<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>"
        },
        "State": {
          "shape": "ScheduleState",
          "documentation": "<p>The state of the schedule.</p>"
        }
      },
      "documentation": "<p>A scheduling object using a <code>cron</code> statement to schedule an event.</p>"
    },
    "ScheduleState": {
      "type": "string",
      "enum": [
        "SCHEDULED",
        "NOT_SCHEDULED",
        "TRANSITIONING"
      ]
    },
    "SchemaChangePolicy": {
      "type": "structure",
      "members": {
        "UpdateBehavior": {
          "shape": "UpdateBehavior",
          "documentation": "<p>The update behavior when the crawler finds a changed schema.</p>"
        },
        "DeleteBehavior": {
          "shape": "DeleteBehavior",
          "documentation": "<p>The deletion behavior when the crawler finds a deleted object.</p>"
        }
      },
      "documentation": "<p>A policy that specifies update and deletion behaviors for the crawler.</p>"
    },
    "SchemaColumn": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ColumnNameString",
          "documentation": "<p>The name of the column.</p>"
        },
        "DataType": {
          "shape": "ColumnTypeString",
          "documentation": "<p>The type of data in the column.</p>"
        }
      },
      "documentation": "<p>A key-value pair representing a column and data type that this transform can run against. The <code>Schema</code> parameter of the <code>MLTransform</code> may contain up to 100 of these structures.</p>"
    },
    "SchemaPathString": {
      "type": "string"
    },
    "ScriptLocationString": {
      "type": "string"
    },
    "SearchPropertyPredicates": {
      "type": "list",
      "member": {
        "shape": "PropertyPredicate"
      }
    },
    "SearchTablesRequest": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>A unique identifier, consisting of <code> <i>account_id</i> </code>.</p>"
        },
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, included if this is a continuation call.</p>"
        },
        "Filters": {
          "shape": "SearchPropertyPredicates",
          "documentation": "<p>A list of key-value pairs, and a comparator used to filter the search results. Returns all entities matching the predicate.</p> <p>The <code>Comparator</code> member of the <code>PropertyPredicate</code> struct is used only for time fields, and can be omitted for other field types. Also, when comparing string values, such as when <code>Key=Name</code>, a fuzzy match algorithm is used. The <code>Key</code> field (for example, the value of the <code>Name</code> field) is split on certain punctuation characters, for example, -, :, #, etc. into tokens. Then each token is exact-match compared with the <code>Value</code> member of <code>PropertyPredicate</code>. For example, if <code>Key=Name</code> and <code>Value=link</code>, tables named <code>customer-link</code> and <code>xx-link-yy</code> are returned, but <code>xxlinkyy</code> is not returned.</p>"
        },
        "SearchText": {
          "shape": "ValueString",
          "documentation": "<p>A string used for a text search.</p> <p>Specifying a value in quotes filters based on an exact match to the value.</p>"
        },
        "SortCriteria": {
          "shape": "SortCriteria",
          "documentation": "<p>A list of criteria for sorting the results by a field name, in an ascending or descending order.</p>"
        },
        "MaxResults": {
          "shape": "PageSize",
          "documentation": "<p>The maximum number of tables to return in a single response.</p>"
        },
        "ResourceShareType": {
          "shape": "ResourceShareType",
          "documentation": "<p>Allows you to specify that you want to search the tables shared with your account. The allowable values are <code>FOREIGN</code> or <code>ALL</code>. </p> <ul> <li> <p>If set to <code>FOREIGN</code>, will search the tables shared with your account. </p> </li> <li> <p>If set to <code>ALL</code>, will search the tables shared with your account, as well as the tables in yor local account. </p> </li> </ul>"
        }
      }
    },
    "SearchTablesResponse": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "Token",
          "documentation": "<p>A continuation token, present if the current list segment is not the last.</p>"
        },
        "TableList": {
          "shape": "TableList",
          "documentation": "<p>A list of the requested <code>Table</code> objects. The <code>SearchTables</code> response returns only the tables that you have access to.</p>"
        }
      }
    },
    "SecurityConfiguration": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the security configuration.</p>"
        },
        "CreatedTimeStamp": {
          "shape": "TimestampValue",
          "documentation": "<p>The time at which this security configuration was created.</p>"
        },
        "EncryptionConfiguration": {
          "shape": "EncryptionConfiguration",
          "documentation": "<p>The encryption configuration associated with this security configuration.</p>"
        }
      },
      "documentation": "<p>Specifies a security configuration.</p>"
    },
    "SecurityConfigurationList": {
      "type": "list",
      "member": {
        "shape": "SecurityConfiguration"
      }
    },
    "SecurityGroupIdList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "max": 50,
      "min": 0
    },
    "Segment": {
      "type": "structure",
      "required": [
        "SegmentNumber",
        "TotalSegments"
      ],
      "members": {
        "SegmentNumber": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The zero-based index number of the segment. For example, if the total number of segments is 4, <code>SegmentNumber</code> values range from 0 through 3.</p>"
        },
        "TotalSegments": {
          "shape": "TotalSegmentsInteger",
          "documentation": "<p>The total number of segments.</p>"
        }
      },
      "documentation": "<p>Defines a non-overlapping region of a table's partitions, allowing multiple requests to be executed in parallel.</p>"
    },
    "SerDeInfo": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the SerDe.</p>"
        },
        "SerializationLibrary": {
          "shape": "NameString",
          "documentation": "<p>Usually the class that implements the SerDe. An example is <code>org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe</code>.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>These key-value pairs define initialization parameters for the SerDe.</p>"
        }
      },
      "documentation": "<p>Information about a serialization/deserialization program (SerDe) that serves as an extractor and loader.</p>"
    },
    "SkewedInfo": {
      "type": "structure",
      "members": {
        "SkewedColumnNames": {
          "shape": "NameStringList",
          "documentation": "<p>A list of names of columns that contain skewed values.</p>"
        },
        "SkewedColumnValues": {
          "shape": "ColumnValueStringList",
          "documentation": "<p>A list of values that appear so frequently as to be considered skewed.</p>"
        },
        "SkewedColumnValueLocationMaps": {
          "shape": "LocationMap",
          "documentation": "<p>A mapping of skewed values to the columns that contain them.</p>"
        }
      },
      "documentation": "<p>Specifies skewed values in a table. Skewed values are those that occur with very high frequency.</p>"
    },
    "Sort": {
      "type": "string",
      "enum": [
        "ASC",
        "DESC"
      ]
    },
    "SortCriteria": {
      "type": "list",
      "member": {
        "shape": "SortCriterion"
      },
      "max": 1,
      "min": 0
    },
    "SortCriterion": {
      "type": "structure",
      "members": {
        "FieldName": {
          "shape": "ValueString",
          "documentation": "<p>The name of the field on which to sort.</p>"
        },
        "Sort": {
          "shape": "Sort",
          "documentation": "<p>An ascending or descending sort.</p>"
        }
      },
      "documentation": "<p>Specifies a field to sort by and a sort order.</p>"
    },
    "SortDirectionType": {
      "type": "string",
      "enum": [
        "DESCENDING",
        "ASCENDING"
      ]
    },
    "StartCrawlerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the crawler to start.</p>"
        }
      }
    },
    "StartCrawlerResponse": {
      "type": "structure",
      "members": {}
    },
    "StartCrawlerScheduleRequest": {
      "type": "structure",
      "required": [
        "CrawlerName"
      ],
      "members": {
        "CrawlerName": {
          "shape": "NameString",
          "documentation": "<p>Name of the crawler to schedule.</p>"
        }
      }
    },
    "StartCrawlerScheduleResponse": {
      "type": "structure",
      "members": {}
    },
    "StartExportLabelsTaskRunRequest": {
      "type": "structure",
      "required": [
        "TransformId",
        "OutputS3Path"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the machine learning transform.</p>"
        },
        "OutputS3Path": {
          "shape": "UriString",
          "documentation": "<p>The Amazon S3 path where you export the labels.</p>"
        }
      }
    },
    "StartExportLabelsTaskRunResponse": {
      "type": "structure",
      "members": {
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier for the task run.</p>"
        }
      }
    },
    "StartImportLabelsTaskRunRequest": {
      "type": "structure",
      "required": [
        "TransformId",
        "InputS3Path"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the machine learning transform.</p>"
        },
        "InputS3Path": {
          "shape": "UriString",
          "documentation": "<p>The Amazon Simple Storage Service (Amazon S3) path from where you import the labels.</p>"
        },
        "ReplaceAllLabels": {
          "shape": "ReplaceBoolean",
          "documentation": "<p>Indicates whether to overwrite your existing labels.</p>"
        }
      }
    },
    "StartImportLabelsTaskRunResponse": {
      "type": "structure",
      "members": {
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier for the task run.</p>"
        }
      }
    },
    "StartJobRunRequest": {
      "type": "structure",
      "required": [
        "JobName"
      ],
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition to use.</p>"
        },
        "JobRunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of a previous <code>JobRun</code> to retry.</p>"
        },
        "Arguments": {
          "shape": "GenericMap",
          "documentation": "<p>The job arguments specifically for this run. For this job run, they replace the default arguments set in the job definition itself.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html\">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html\">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>"
        },
        "AllocatedCapacity": {
          "shape": "IntegerValue",
          "documentation": "<p>This field is deprecated. Use <code>MaxCapacity</code> instead.</p> <p>The number of AWS Glue data processing units (DPUs) to allocate to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p>",
          "deprecated": true,
          "deprecatedMessage": "This property is deprecated, use MaxCapacity instead."
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The <code>JobRun</code> timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://docs.aws.amazon.com/https:/aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>.</p> <p>Do not set <code>Max Capacity</code> if using <code>WorkerType</code> and <code>NumberOfWorkers</code>.</p> <p>The value that can be allocated for <code>MaxCapacity</code> depends on whether you are running a Python shell job, or an Apache Spark ETL job:</p> <ul> <li> <p>When you specify a Python shell job (<code>JobCommand.Name</code>=\"pythonshell\"), you can allocate either 0.0625 or 1 DPU. The default is 0.0625 DPU.</p> </li> <li> <p>When you specify an Apache Spark ETL job (<code>JobCommand.Name</code>=\"glueetl\"), you can allocate from 2 to 100 DPUs. The default is 10 DPUs. This job type cannot have a fractional DPU allocation.</p> </li> </ul>"
        },
        "SecurityConfiguration": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used with this job run.</p>"
        },
        "NotificationProperty": {
          "shape": "NotificationProperty",
          "documentation": "<p>Specifies configuration properties of a job run notification.</p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p> </li> </ul>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when a job runs.</p> <p>The maximum number of workers you can define are 299 for <code>G.1X</code>, and 149 for <code>G.2X</code>. </p>"
        }
      }
    },
    "StartJobRunResponse": {
      "type": "structure",
      "members": {
        "JobRunId": {
          "shape": "IdString",
          "documentation": "<p>The ID assigned to this job run.</p>"
        }
      }
    },
    "StartMLEvaluationTaskRunRequest": {
      "type": "structure",
      "required": [
        "TransformId"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the machine learning transform.</p>"
        }
      }
    },
    "StartMLEvaluationTaskRunResponse": {
      "type": "structure",
      "members": {
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier associated with this run.</p>"
        }
      }
    },
    "StartMLLabelingSetGenerationTaskRunRequest": {
      "type": "structure",
      "required": [
        "TransformId",
        "OutputS3Path"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier of the machine learning transform.</p>"
        },
        "OutputS3Path": {
          "shape": "UriString",
          "documentation": "<p>The Amazon Simple Storage Service (Amazon S3) path where you generate the labeling set.</p>"
        }
      }
    },
    "StartMLLabelingSetGenerationTaskRunResponse": {
      "type": "structure",
      "members": {
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>The unique run identifier that is associated with this task run.</p>"
        }
      }
    },
    "StartTriggerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger to start.</p>"
        }
      }
    },
    "StartTriggerResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger that was started.</p>"
        }
      }
    },
    "StartWorkflowRunRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow to start.</p>"
        }
      }
    },
    "StartWorkflowRunResponse": {
      "type": "structure",
      "members": {
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>An Id for the new run.</p>"
        }
      }
    },
    "StopCrawlerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the crawler to stop.</p>"
        }
      }
    },
    "StopCrawlerResponse": {
      "type": "structure",
      "members": {}
    },
    "StopCrawlerScheduleRequest": {
      "type": "structure",
      "required": [
        "CrawlerName"
      ],
      "members": {
        "CrawlerName": {
          "shape": "NameString",
          "documentation": "<p>Name of the crawler whose schedule state to set.</p>"
        }
      }
    },
    "StopCrawlerScheduleResponse": {
      "type": "structure",
      "members": {}
    },
    "StopTriggerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger to stop.</p>"
        }
      }
    },
    "StopTriggerResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger that was stopped.</p>"
        }
      }
    },
    "StopWorkflowRunRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RunId"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow to stop.</p>"
        },
        "RunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of the workflow run to stop.</p>"
        }
      }
    },
    "StopWorkflowRunResponse": {
      "type": "structure",
      "members": {}
    },
    "StorageDescriptor": {
      "type": "structure",
      "members": {
        "Columns": {
          "shape": "ColumnList",
          "documentation": "<p>A list of the <code>Columns</code> in the table.</p>"
        },
        "Location": {
          "shape": "LocationString",
          "documentation": "<p>The physical location of the table. By default, this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.</p>"
        },
        "InputFormat": {
          "shape": "FormatString",
          "documentation": "<p>The input format: <code>SequenceFileInputFormat</code> (binary), or <code>TextInputFormat</code>, or a custom format.</p>"
        },
        "OutputFormat": {
          "shape": "FormatString",
          "documentation": "<p>The output format: <code>SequenceFileOutputFormat</code> (binary), or <code>IgnoreKeyTextOutputFormat</code>, or a custom format.</p>"
        },
        "Compressed": {
          "shape": "Boolean",
          "documentation": "<p> <code>True</code> if the data in the table is compressed, or <code>False</code> if not.</p>"
        },
        "NumberOfBuckets": {
          "shape": "Integer",
          "documentation": "<p>Must be specified if the table contains any dimension columns.</p>"
        },
        "SerdeInfo": {
          "shape": "SerDeInfo",
          "documentation": "<p>The serialization/deserialization (SerDe) information.</p>"
        },
        "BucketColumns": {
          "shape": "NameStringList",
          "documentation": "<p>A list of reducer grouping columns, clustering columns, and bucketing columns in the table.</p>"
        },
        "SortColumns": {
          "shape": "OrderList",
          "documentation": "<p>A list specifying the sort order of each bucket in the table.</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>The user-supplied properties in key-value form.</p>"
        },
        "SkewedInfo": {
          "shape": "SkewedInfo",
          "documentation": "<p>The information about values that appear frequently in a column (skewed values).</p>"
        },
        "StoredAsSubDirectories": {
          "shape": "Boolean",
          "documentation": "<p> <code>True</code> if the table data is stored in subdirectories, or <code>False</code> if not.</p>"
        }
      },
      "documentation": "<p>Describes the physical storage of table data.</p>"
    },
    "StringColumnStatisticsData": {
      "type": "structure",
      "required": [
        "MaximumLength",
        "AverageLength",
        "NumberOfNulls",
        "NumberOfDistinctValues"
      ],
      "members": {
        "MaximumLength": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Maximum value of the column.</p>"
        },
        "AverageLength": {
          "shape": "NonNegativeDouble",
          "documentation": "<p>Average value of the column.</p>"
        },
        "NumberOfNulls": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of nulls.</p>"
        },
        "NumberOfDistinctValues": {
          "shape": "NonNegativeLong",
          "documentation": "<p>Number of distinct values.</p>"
        }
      },
      "documentation": "<p>Defines a string column statistics data.</p>"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "GenericString"
      }
    },
    "Table": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The table name. For Hive compatibility, this must be entirely lowercase.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the database where the table metadata resides. For Hive compatibility, this must be all lowercase.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the table.</p>"
        },
        "Owner": {
          "shape": "NameString",
          "documentation": "<p>The owner of the table.</p>"
        },
        "CreateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time when the table definition was created in the Data Catalog.</p>"
        },
        "UpdateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that the table was updated.</p>"
        },
        "LastAccessTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that the table was accessed. This is usually taken from HDFS, and might not be reliable.</p>"
        },
        "LastAnalyzedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that column statistics were computed for this table.</p>"
        },
        "Retention": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The retention time for this table.</p>"
        },
        "StorageDescriptor": {
          "shape": "StorageDescriptor",
          "documentation": "<p>A storage descriptor containing information about the physical storage of this table.</p>"
        },
        "PartitionKeys": {
          "shape": "ColumnList",
          "documentation": "<p>A list of columns by which the table is partitioned. Only primitive types are supported as partition keys.</p> <p>When you create a table used by Amazon Athena, and you do not specify any <code>partitionKeys</code>, you must at least set the value of <code>partitionKeys</code> to an empty list. For example:</p> <p> <code>\"PartitionKeys\": []</code> </p>"
        },
        "ViewOriginalText": {
          "shape": "ViewTextString",
          "documentation": "<p>If the table is a view, the original text of the view; otherwise <code>null</code>.</p>"
        },
        "ViewExpandedText": {
          "shape": "ViewTextString",
          "documentation": "<p>If the table is a view, the expanded text of the view; otherwise <code>null</code>.</p>"
        },
        "TableType": {
          "shape": "TableTypeString",
          "documentation": "<p>The type of this table (<code>EXTERNAL_TABLE</code>, <code>VIRTUAL_VIEW</code>, etc.).</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>These key-value pairs define properties associated with the table.</p>"
        },
        "CreatedBy": {
          "shape": "NameString",
          "documentation": "<p>The person or entity who created the table.</p>"
        },
        "IsRegisteredWithLakeFormation": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the table has been registered with AWS Lake Formation.</p>"
        },
        "TargetTable": {
          "shape": "TableIdentifier",
          "documentation": "<p>A <code>TableIdentifier</code> structure that describes a target table for resource linking.</p>"
        },
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the table resides.</p>"
        }
      },
      "documentation": "<p>Represents a collection of related data organized in columns and rows.</p>"
    },
    "TableError": {
      "type": "structure",
      "members": {
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table. For Hive compatibility, this must be entirely lowercase.</p>"
        },
        "ErrorDetail": {
          "shape": "ErrorDetail",
          "documentation": "<p>The details about the error.</p>"
        }
      },
      "documentation": "<p>An error record for table operations.</p>"
    },
    "TableErrors": {
      "type": "list",
      "member": {
        "shape": "TableError"
      }
    },
    "TableIdentifier": {
      "type": "structure",
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the table resides.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database that contains the target table.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the target table.</p>"
        }
      },
      "documentation": "<p>A structure that describes a target table for resource linking.</p>"
    },
    "TableInput": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The table name. For Hive compatibility, this is folded to lowercase when it is stored.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the table.</p>"
        },
        "Owner": {
          "shape": "NameString",
          "documentation": "<p>The table owner.</p>"
        },
        "LastAccessTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that the table was accessed.</p>"
        },
        "LastAnalyzedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that column statistics were computed for this table.</p>"
        },
        "Retention": {
          "shape": "NonNegativeInteger",
          "documentation": "<p>The retention time for this table.</p>"
        },
        "StorageDescriptor": {
          "shape": "StorageDescriptor",
          "documentation": "<p>A storage descriptor containing information about the physical storage of this table.</p>"
        },
        "PartitionKeys": {
          "shape": "ColumnList",
          "documentation": "<p>A list of columns by which the table is partitioned. Only primitive types are supported as partition keys.</p> <p>When you create a table used by Amazon Athena, and you do not specify any <code>partitionKeys</code>, you must at least set the value of <code>partitionKeys</code> to an empty list. For example:</p> <p> <code>\"PartitionKeys\": []</code> </p>"
        },
        "ViewOriginalText": {
          "shape": "ViewTextString",
          "documentation": "<p>If the table is a view, the original text of the view; otherwise <code>null</code>.</p>"
        },
        "ViewExpandedText": {
          "shape": "ViewTextString",
          "documentation": "<p>If the table is a view, the expanded text of the view; otherwise <code>null</code>.</p>"
        },
        "TableType": {
          "shape": "TableTypeString",
          "documentation": "<p>The type of this table (<code>EXTERNAL_TABLE</code>, <code>VIRTUAL_VIEW</code>, etc.).</p>"
        },
        "Parameters": {
          "shape": "ParametersMap",
          "documentation": "<p>These key-value pairs define properties associated with the table.</p>"
        },
        "TargetTable": {
          "shape": "TableIdentifier",
          "documentation": "<p>A <code>TableIdentifier</code> structure that describes a target table for resource linking.</p>"
        }
      },
      "documentation": "<p>A structure used to define a table.</p>"
    },
    "TableList": {
      "type": "list",
      "member": {
        "shape": "Table"
      }
    },
    "TableName": {
      "type": "string"
    },
    "TablePrefix": {
      "type": "string",
      "max": 128,
      "min": 0
    },
    "TableTypeString": {
      "type": "string",
      "max": 255
    },
    "TableVersion": {
      "type": "structure",
      "members": {
        "Table": {
          "shape": "Table",
          "documentation": "<p>The table in question.</p>"
        },
        "VersionId": {
          "shape": "VersionString",
          "documentation": "<p>The ID value that identifies this table version. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>"
        }
      },
      "documentation": "<p>Specifies a version of a table.</p>"
    },
    "TableVersionError": {
      "type": "structure",
      "members": {
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table in question.</p>"
        },
        "VersionId": {
          "shape": "VersionString",
          "documentation": "<p>The ID value of the version in question. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>"
        },
        "ErrorDetail": {
          "shape": "ErrorDetail",
          "documentation": "<p>The details about the error.</p>"
        }
      },
      "documentation": "<p>An error record for table-version operations.</p>"
    },
    "TableVersionErrors": {
      "type": "list",
      "member": {
        "shape": "TableVersionError"
      }
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeysList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 50,
      "min": 0
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagsToAdd"
      ],
      "members": {
        "ResourceArn": {
          "shape": "GlueResourceArn",
          "documentation": "<p>The ARN of the AWS Glue resource to which to add the tags. For more information about AWS Glue resource ARNs, see the <a href=\"https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-common.html#aws-glue-api-regex-aws-glue-arn-id\">AWS Glue ARN string pattern</a>.</p>"
        },
        "TagsToAdd": {
          "shape": "TagsMap",
          "documentation": "<p>Tags to add to this resource.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "TagsMap": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      },
      "max": 50,
      "min": 0
    },
    "TaskRun": {
      "type": "structure",
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier for the transform.</p>"
        },
        "TaskRunId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier for this task run.</p>"
        },
        "Status": {
          "shape": "TaskStatusType",
          "documentation": "<p>The current status of the requested task run.</p>"
        },
        "LogGroupName": {
          "shape": "GenericString",
          "documentation": "<p>The names of the log group for secure logging, associated with this task run.</p>"
        },
        "Properties": {
          "shape": "TaskRunProperties",
          "documentation": "<p>Specifies configuration properties associated with this task run.</p>"
        },
        "ErrorString": {
          "shape": "GenericString",
          "documentation": "<p>The list of error strings associated with this task run.</p>"
        },
        "StartedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that this task run started.</p>"
        },
        "LastModifiedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The last point in time that the requested task run was updated.</p>"
        },
        "CompletedOn": {
          "shape": "Timestamp",
          "documentation": "<p>The last point in time that the requested task run was completed.</p>"
        },
        "ExecutionTime": {
          "shape": "ExecutionTime",
          "documentation": "<p>The amount of time (in seconds) that the task run consumed resources.</p>"
        }
      },
      "documentation": "<p>The sampling parameters that are associated with the machine learning transform.</p>"
    },
    "TaskRunFilterCriteria": {
      "type": "structure",
      "members": {
        "TaskRunType": {
          "shape": "TaskType",
          "documentation": "<p>The type of task run.</p>"
        },
        "Status": {
          "shape": "TaskStatusType",
          "documentation": "<p>The current status of the task run.</p>"
        },
        "StartedBefore": {
          "shape": "Timestamp",
          "documentation": "<p>Filter on task runs started before this date.</p>"
        },
        "StartedAfter": {
          "shape": "Timestamp",
          "documentation": "<p>Filter on task runs started after this date.</p>"
        }
      },
      "documentation": "<p>The criteria that are used to filter the task runs for the machine learning transform.</p>"
    },
    "TaskRunList": {
      "type": "list",
      "member": {
        "shape": "TaskRun"
      }
    },
    "TaskRunProperties": {
      "type": "structure",
      "members": {
        "TaskType": {
          "shape": "TaskType",
          "documentation": "<p>The type of task run.</p>"
        },
        "ImportLabelsTaskRunProperties": {
          "shape": "ImportLabelsTaskRunProperties",
          "documentation": "<p>The configuration properties for an importing labels task run.</p>"
        },
        "ExportLabelsTaskRunProperties": {
          "shape": "ExportLabelsTaskRunProperties",
          "documentation": "<p>The configuration properties for an exporting labels task run.</p>"
        },
        "LabelingSetGenerationTaskRunProperties": {
          "shape": "LabelingSetGenerationTaskRunProperties",
          "documentation": "<p>The configuration properties for a labeling set generation task run.</p>"
        },
        "FindMatchesTaskRunProperties": {
          "shape": "FindMatchesTaskRunProperties",
          "documentation": "<p>The configuration properties for a find matches task run.</p>"
        }
      },
      "documentation": "<p>The configuration properties for the task run.</p>"
    },
    "TaskRunSortColumnType": {
      "type": "string",
      "enum": [
        "TASK_RUN_TYPE",
        "STATUS",
        "STARTED"
      ]
    },
    "TaskRunSortCriteria": {
      "type": "structure",
      "required": [
        "Column",
        "SortDirection"
      ],
      "members": {
        "Column": {
          "shape": "TaskRunSortColumnType",
          "documentation": "<p>The column to be used to sort the list of task runs for the machine learning transform.</p>"
        },
        "SortDirection": {
          "shape": "SortDirectionType",
          "documentation": "<p>The sort direction to be used to sort the list of task runs for the machine learning transform.</p>"
        }
      },
      "documentation": "<p>The sorting criteria that are used to sort the list of task runs for the machine learning transform.</p>"
    },
    "TaskStatusType": {
      "type": "string",
      "enum": [
        "STARTING",
        "RUNNING",
        "STOPPING",
        "STOPPED",
        "SUCCEEDED",
        "FAILED",
        "TIMEOUT"
      ]
    },
    "TaskType": {
      "type": "string",
      "enum": [
        "EVALUATION",
        "LABELING_SET_GENERATION",
        "IMPORT_LABELS",
        "EXPORT_LABELS",
        "FIND_MATCHES"
      ]
    },
    "Timeout": {
      "type": "integer",
      "box": true,
      "min": 1
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TimestampValue": {
      "type": "timestamp"
    },
    "Token": {
      "type": "string"
    },
    "TotalSegmentsInteger": {
      "type": "integer",
      "max": 10,
      "min": 1
    },
    "TransformFilterCriteria": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>A unique transform name that is used to filter the machine learning transforms.</p>"
        },
        "TransformType": {
          "shape": "TransformType",
          "documentation": "<p>The type of machine learning transform that is used to filter the machine learning transforms.</p>"
        },
        "Status": {
          "shape": "TransformStatusType",
          "documentation": "<p>Filters the list of machine learning transforms by the last known status of the transforms (to indicate whether a transform can be used or not). One of \"NOT_READY\", \"READY\", or \"DELETING\".</p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">AWS Glue Versions</a> in the developer guide.</p>"
        },
        "CreatedBefore": {
          "shape": "Timestamp",
          "documentation": "<p>The time and date before which the transforms were created.</p>"
        },
        "CreatedAfter": {
          "shape": "Timestamp",
          "documentation": "<p>The time and date after which the transforms were created.</p>"
        },
        "LastModifiedBefore": {
          "shape": "Timestamp",
          "documentation": "<p>Filter on transforms last modified before this date.</p>"
        },
        "LastModifiedAfter": {
          "shape": "Timestamp",
          "documentation": "<p>Filter on transforms last modified after this date.</p>"
        },
        "Schema": {
          "shape": "TransformSchema",
          "documentation": "<p>Filters on datasets with a specific schema. The <code>Map&lt;Column, Type&gt;</code> object is an array of key-value pairs representing the schema this transform accepts, where <code>Column</code> is the name of a column, and <code>Type</code> is the type of the data such as an integer or string. Has an upper bound of 100 columns.</p>"
        }
      },
      "documentation": "<p>The criteria used to filter the machine learning transforms.</p>"
    },
    "TransformIdList": {
      "type": "list",
      "member": {
        "shape": "HashString"
      }
    },
    "TransformList": {
      "type": "list",
      "member": {
        "shape": "MLTransform"
      }
    },
    "TransformParameters": {
      "type": "structure",
      "required": [
        "TransformType"
      ],
      "members": {
        "TransformType": {
          "shape": "TransformType",
          "documentation": "<p>The type of machine learning transform.</p> <p>For information about the types of machine learning transforms, see <a href=\"http://docs.aws.amazon.com/glue/latest/dg/add-job-machine-learning-transform.html\">Creating Machine Learning Transforms</a>.</p>"
        },
        "FindMatchesParameters": {
          "shape": "FindMatchesParameters",
          "documentation": "<p>The parameters for the find matches algorithm.</p>"
        }
      },
      "documentation": "<p>The algorithm-specific parameters that are associated with the machine learning transform.</p>"
    },
    "TransformSchema": {
      "type": "list",
      "member": {
        "shape": "SchemaColumn"
      },
      "max": 100
    },
    "TransformSortColumnType": {
      "type": "string",
      "enum": [
        "NAME",
        "TRANSFORM_TYPE",
        "STATUS",
        "CREATED",
        "LAST_MODIFIED"
      ]
    },
    "TransformSortCriteria": {
      "type": "structure",
      "required": [
        "Column",
        "SortDirection"
      ],
      "members": {
        "Column": {
          "shape": "TransformSortColumnType",
          "documentation": "<p>The column to be used in the sorting criteria that are associated with the machine learning transform.</p>"
        },
        "SortDirection": {
          "shape": "SortDirectionType",
          "documentation": "<p>The sort direction to be used in the sorting criteria that are associated with the machine learning transform.</p>"
        }
      },
      "documentation": "<p>The sorting criteria that are associated with the machine learning transform.</p>"
    },
    "TransformStatusType": {
      "type": "string",
      "enum": [
        "NOT_READY",
        "READY",
        "DELETING"
      ]
    },
    "TransformType": {
      "type": "string",
      "enum": [
        "FIND_MATCHES"
      ]
    },
    "Trigger": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger.</p>"
        },
        "WorkflowName": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow associated with the trigger.</p>"
        },
        "Id": {
          "shape": "IdString",
          "documentation": "<p>Reserved for future use.</p>"
        },
        "Type": {
          "shape": "TriggerType",
          "documentation": "<p>The type of trigger that this is.</p>"
        },
        "State": {
          "shape": "TriggerState",
          "documentation": "<p>The current state of the trigger.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of this trigger.</p>"
        },
        "Schedule": {
          "shape": "GenericString",
          "documentation": "<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>"
        },
        "Actions": {
          "shape": "ActionList",
          "documentation": "<p>The actions initiated by this trigger.</p>"
        },
        "Predicate": {
          "shape": "Predicate",
          "documentation": "<p>The predicate of this trigger, which defines when it will fire.</p>"
        }
      },
      "documentation": "<p>Information about a specific trigger.</p>"
    },
    "TriggerList": {
      "type": "list",
      "member": {
        "shape": "Trigger"
      }
    },
    "TriggerNameList": {
      "type": "list",
      "member": {
        "shape": "NameString"
      }
    },
    "TriggerNodeDetails": {
      "type": "structure",
      "members": {
        "Trigger": {
          "shape": "Trigger",
          "documentation": "<p>The information of the trigger represented by the trigger node.</p>"
        }
      },
      "documentation": "<p>The details of a Trigger node present in the workflow.</p>"
    },
    "TriggerState": {
      "type": "string",
      "enum": [
        "CREATING",
        "CREATED",
        "ACTIVATING",
        "ACTIVATED",
        "DEACTIVATING",
        "DEACTIVATED",
        "DELETING",
        "UPDATING"
      ]
    },
    "TriggerType": {
      "type": "string",
      "enum": [
        "SCHEDULED",
        "CONDITIONAL",
        "ON_DEMAND"
      ]
    },
    "TriggerUpdate": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Reserved for future use.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of this trigger.</p>"
        },
        "Schedule": {
          "shape": "GenericString",
          "documentation": "<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>"
        },
        "Actions": {
          "shape": "ActionList",
          "documentation": "<p>The actions initiated by this trigger.</p>"
        },
        "Predicate": {
          "shape": "Predicate",
          "documentation": "<p>The predicate of this trigger, which defines when it will fire.</p>"
        }
      },
      "documentation": "<p>A structure used to provide information used to update a trigger. This object updates the previous trigger definition by overwriting it completely.</p>"
    },
    "TypeString": {
      "type": "string",
      "max": 20000,
      "min": 0,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "URI": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagsToRemove"
      ],
      "members": {
        "ResourceArn": {
          "shape": "GlueResourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource from which to remove the tags.</p>"
        },
        "TagsToRemove": {
          "shape": "TagKeysList",
          "documentation": "<p>Tags to remove from this resource.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateBehavior": {
      "type": "string",
      "enum": [
        "LOG",
        "UPDATE_IN_DATABASE"
      ]
    },
    "UpdateClassifierRequest": {
      "type": "structure",
      "members": {
        "GrokClassifier": {
          "shape": "UpdateGrokClassifierRequest",
          "documentation": "<p>A <code>GrokClassifier</code> object with updated fields.</p>"
        },
        "XMLClassifier": {
          "shape": "UpdateXMLClassifierRequest",
          "documentation": "<p>An <code>XMLClassifier</code> object with updated fields.</p>"
        },
        "JsonClassifier": {
          "shape": "UpdateJsonClassifierRequest",
          "documentation": "<p>A <code>JsonClassifier</code> object with updated fields.</p>"
        },
        "CsvClassifier": {
          "shape": "UpdateCsvClassifierRequest",
          "documentation": "<p>A <code>CsvClassifier</code> object with updated fields.</p>"
        }
      }
    },
    "UpdateClassifierResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateColumnStatisticsForPartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionValues",
        "ColumnStatisticsList"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partitions reside.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partitions' table.</p>"
        },
        "PartitionValues": {
          "shape": "ValueStringList",
          "documentation": "<p>A list of partition values identifying the partition.</p>"
        },
        "ColumnStatisticsList": {
          "shape": "UpdateColumnStatisticsList",
          "documentation": "<p>A list of the column statistics.</p>"
        }
      }
    },
    "UpdateColumnStatisticsForPartitionResponse": {
      "type": "structure",
      "members": {
        "Errors": {
          "shape": "ColumnStatisticsErrors",
          "documentation": "<p>Error occurred during updating column statistics data.</p>"
        }
      }
    },
    "UpdateColumnStatisticsForTableRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "ColumnStatisticsList"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the partitions reside.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the partitions' table.</p>"
        },
        "ColumnStatisticsList": {
          "shape": "UpdateColumnStatisticsList",
          "documentation": "<p>A list of the column statistics.</p>"
        }
      }
    },
    "UpdateColumnStatisticsForTableResponse": {
      "type": "structure",
      "members": {
        "Errors": {
          "shape": "ColumnStatisticsErrors",
          "documentation": "<p>List of ColumnStatisticsErrors.</p>"
        }
      }
    },
    "UpdateColumnStatisticsList": {
      "type": "list",
      "member": {
        "shape": "ColumnStatistics"
      },
      "max": 25,
      "min": 0
    },
    "UpdateConnectionRequest": {
      "type": "structure",
      "required": [
        "Name",
        "ConnectionInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the connection resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the connection definition to update.</p>"
        },
        "ConnectionInput": {
          "shape": "ConnectionInput",
          "documentation": "<p>A <code>ConnectionInput</code> object that redefines the connection in question.</p>"
        }
      }
    },
    "UpdateConnectionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateCrawlerRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the new crawler.</p>"
        },
        "Role": {
          "shape": "Role",
          "documentation": "<p>The IAM role or Amazon Resource Name (ARN) of an IAM role that is used by the new crawler to access customer resources.</p>"
        },
        "DatabaseName": {
          "shape": "DatabaseName",
          "documentation": "<p>The AWS Glue database where results are stored, such as: <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>"
        },
        "Description": {
          "shape": "DescriptionStringRemovable",
          "documentation": "<p>A description of the new crawler.</p>"
        },
        "Targets": {
          "shape": "CrawlerTargets",
          "documentation": "<p>A list of targets to crawl.</p>"
        },
        "Schedule": {
          "shape": "CronExpression",
          "documentation": "<p>A <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>"
        },
        "Classifiers": {
          "shape": "ClassifierNameList",
          "documentation": "<p>A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.</p>"
        },
        "TablePrefix": {
          "shape": "TablePrefix",
          "documentation": "<p>The table prefix used for catalog tables that are created.</p>"
        },
        "SchemaChangePolicy": {
          "shape": "SchemaChangePolicy",
          "documentation": "<p>The policy for the crawler's update and deletion behavior.</p>"
        },
        "Configuration": {
          "shape": "CrawlerConfiguration",
          "documentation": "<p>Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html\">Configuring a Crawler</a>.</p>"
        },
        "CrawlerSecurityConfiguration": {
          "shape": "CrawlerSecurityConfiguration",
          "documentation": "<p>The name of the <code>SecurityConfiguration</code> structure to be used by this crawler.</p>"
        }
      }
    },
    "UpdateCrawlerResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateCrawlerScheduleRequest": {
      "type": "structure",
      "required": [
        "CrawlerName"
      ],
      "members": {
        "CrawlerName": {
          "shape": "NameString",
          "documentation": "<p>The name of the crawler whose schedule to update.</p>"
        },
        "Schedule": {
          "shape": "CronExpression",
          "documentation": "<p>The updated <code>cron</code> expression used to specify the schedule (see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html\">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>"
        }
      }
    },
    "UpdateCrawlerScheduleResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateCsvClassifierRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "Delimiter": {
          "shape": "CsvColumnDelimiter",
          "documentation": "<p>A custom symbol to denote what separates each column entry in the row.</p>"
        },
        "QuoteSymbol": {
          "shape": "CsvQuoteSymbol",
          "documentation": "<p>A custom symbol to denote what combines content into a single column value. It must be different from the column delimiter.</p>"
        },
        "ContainsHeader": {
          "shape": "CsvHeaderOption",
          "documentation": "<p>Indicates whether the CSV file contains a header.</p>"
        },
        "Header": {
          "shape": "CsvHeader",
          "documentation": "<p>A list of strings representing column names.</p>"
        },
        "DisableValueTrimming": {
          "shape": "NullableBoolean",
          "documentation": "<p>Specifies not to trim values before identifying the type of column values. The default value is true.</p>"
        },
        "AllowSingleColumn": {
          "shape": "NullableBoolean",
          "documentation": "<p>Enables the processing of files that contain only one column.</p>"
        }
      },
      "documentation": "<p>Specifies a custom CSV classifier to be updated.</p>"
    },
    "UpdateDatabaseRequest": {
      "type": "structure",
      "required": [
        "Name",
        "DatabaseInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the metadata database resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the database to update in the catalog. For Hive compatibility, this is folded to lowercase.</p>"
        },
        "DatabaseInput": {
          "shape": "DatabaseInput",
          "documentation": "<p>A <code>DatabaseInput</code> object specifying the new definition of the metadata database in the catalog.</p>"
        }
      }
    },
    "UpdateDatabaseResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateDevEndpointRequest": {
      "type": "structure",
      "required": [
        "EndpointName"
      ],
      "members": {
        "EndpointName": {
          "shape": "GenericString",
          "documentation": "<p>The name of the <code>DevEndpoint</code> to be updated.</p>"
        },
        "PublicKey": {
          "shape": "GenericString",
          "documentation": "<p>The public key for the <code>DevEndpoint</code> to use.</p>"
        },
        "AddPublicKeys": {
          "shape": "PublicKeysList",
          "documentation": "<p>The list of public keys for the <code>DevEndpoint</code> to use.</p>"
        },
        "DeletePublicKeys": {
          "shape": "PublicKeysList",
          "documentation": "<p>The list of public keys to be deleted from the <code>DevEndpoint</code>.</p>"
        },
        "CustomLibraries": {
          "shape": "DevEndpointCustomLibraries",
          "documentation": "<p>Custom Python or Java libraries to be loaded in the <code>DevEndpoint</code>.</p>"
        },
        "UpdateEtlLibraries": {
          "shape": "BooleanValue",
          "documentation": "<p> <code>True</code> if the list of custom libraries to be loaded in the development endpoint needs to be updated, or <code>False</code> if otherwise.</p>"
        },
        "DeleteArguments": {
          "shape": "StringList",
          "documentation": "<p>The list of argument keys to be deleted from the map of arguments used to configure the <code>DevEndpoint</code>.</p>"
        },
        "AddArguments": {
          "shape": "MapValue",
          "documentation": "<p>The map of arguments to add the map of arguments used to configure the <code>DevEndpoint</code>.</p> <p>Valid arguments are:</p> <ul> <li> <p> <code>\"--enable-glue-datacatalog\": \"\"</code> </p> </li> <li> <p> <code>\"GLUE_PYTHON_VERSION\": \"3\"</code> </p> </li> <li> <p> <code>\"GLUE_PYTHON_VERSION\": \"2\"</code> </p> </li> </ul> <p>You can specify a version of Python support for development endpoints by using the <code>Arguments</code> parameter in the <code>CreateDevEndpoint</code> or <code>UpdateDevEndpoint</code> APIs. If no arguments are provided, the version defaults to Python 2.</p>"
        }
      }
    },
    "UpdateDevEndpointResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateGrokClassifierRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the <code>GrokClassifier</code>.</p>"
        },
        "Classification": {
          "shape": "Classification",
          "documentation": "<p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.</p>"
        },
        "GrokPattern": {
          "shape": "GrokPattern",
          "documentation": "<p>The grok pattern used by this classifier.</p>"
        },
        "CustomPatterns": {
          "shape": "CustomPatterns",
          "documentation": "<p>Optional custom grok patterns used by this classifier.</p>"
        }
      },
      "documentation": "<p>Specifies a grok classifier to update when passed to <code>UpdateClassifier</code>.</p>"
    },
    "UpdateJobRequest": {
      "type": "structure",
      "required": [
        "JobName",
        "JobUpdate"
      ],
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>The name of the job definition to update.</p>"
        },
        "JobUpdate": {
          "shape": "JobUpdate",
          "documentation": "<p>Specifies the values with which to update the job definition.</p>"
        }
      }
    },
    "UpdateJobResponse": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "NameString",
          "documentation": "<p>Returns the name of the updated job definition.</p>"
        }
      }
    },
    "UpdateJsonClassifierRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "JsonPath": {
          "shape": "JsonPath",
          "documentation": "<p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in <a href=\"https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json\">Writing JsonPath Custom Classifiers</a>.</p>"
        }
      },
      "documentation": "<p>Specifies a JSON classifier to be updated.</p>"
    },
    "UpdateMLTransformRequest": {
      "type": "structure",
      "required": [
        "TransformId"
      ],
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>A unique identifier that was generated when the transform was created.</p>"
        },
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The unique name that you gave the transform when you created it.</p>"
        },
        "Description": {
          "shape": "DescriptionString",
          "documentation": "<p>A description of the transform. The default is an empty string.</p>"
        },
        "Parameters": {
          "shape": "TransformParameters",
          "documentation": "<p>The configuration parameters that are specific to the transform type (algorithm) used. Conditionally dependent on the transform type.</p>"
        },
        "Role": {
          "shape": "RoleString",
          "documentation": "<p>The name or Amazon Resource Name (ARN) of the IAM role with the required permissions.</p>"
        },
        "GlueVersion": {
          "shape": "GlueVersionString",
          "documentation": "<p>This value determines which version of AWS Glue this machine learning transform is compatible with. Glue 1.0 is recommended for most customers. If the value is not set, the Glue compatibility defaults to Glue 0.9. For more information, see <a href=\"https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions\">AWS Glue Versions</a> in the developer guide.</p>"
        },
        "MaxCapacity": {
          "shape": "NullableDouble",
          "documentation": "<p>The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href=\"https://aws.amazon.com/glue/pricing/\">AWS Glue pricing page</a>. </p> <p>When the <code>WorkerType</code> field is set to a value other than <code>Standard</code>, the <code>MaxCapacity</code> field is set automatically and becomes read-only.</p>"
        },
        "WorkerType": {
          "shape": "WorkerType",
          "documentation": "<p>The type of predefined worker that is allocated when this task runs. Accepts a value of Standard, G.1X, or G.2X.</p> <ul> <li> <p>For the <code>Standard</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 50GB disk, and 2 executors per worker.</p> </li> <li> <p>For the <code>G.1X</code> worker type, each worker provides 4 vCPU, 16 GB of memory and a 64GB disk, and 1 executor per worker.</p> </li> <li> <p>For the <code>G.2X</code> worker type, each worker provides 8 vCPU, 32 GB of memory and a 128GB disk, and 1 executor per worker.</p> </li> </ul>"
        },
        "NumberOfWorkers": {
          "shape": "NullableInteger",
          "documentation": "<p>The number of workers of a defined <code>workerType</code> that are allocated when this task runs.</p>"
        },
        "Timeout": {
          "shape": "Timeout",
          "documentation": "<p>The timeout for a task run for this transform in minutes. This is the maximum time that a task run for this transform can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>"
        },
        "MaxRetries": {
          "shape": "NullableInteger",
          "documentation": "<p>The maximum number of times to retry a task for this transform after a task run fails.</p>"
        }
      }
    },
    "UpdateMLTransformResponse": {
      "type": "structure",
      "members": {
        "TransformId": {
          "shape": "HashString",
          "documentation": "<p>The unique identifier for the transform that was updated.</p>"
        }
      }
    },
    "UpdatePartitionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableName",
        "PartitionValueList",
        "PartitionInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the partition to be updated resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database in which the table in question resides.</p>"
        },
        "TableName": {
          "shape": "NameString",
          "documentation": "<p>The name of the table in which the partition to be updated is located.</p>"
        },
        "PartitionValueList": {
          "shape": "BoundedPartitionValueList",
          "documentation": "<p>List of partition key values that define the partition to update.</p>"
        },
        "PartitionInput": {
          "shape": "PartitionInput",
          "documentation": "<p>The new partition object to update the partition to.</p> <p>The <code>Values</code> property can't be changed. If you want to change the partition key values for a partition, delete and recreate the partition.</p>"
        }
      }
    },
    "UpdatePartitionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateTableRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "TableInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the table resides. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>"
        },
        "TableInput": {
          "shape": "TableInput",
          "documentation": "<p>An updated <code>TableInput</code> object to define the metadata table in the catalog.</p>"
        },
        "SkipArchive": {
          "shape": "BooleanNullable",
          "documentation": "<p>By default, <code>UpdateTable</code> always creates an archived version of the table before updating it. However, if <code>skipArchive</code> is set to true, <code>UpdateTable</code> does not create the archived version.</p>"
        }
      }
    },
    "UpdateTableResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateTriggerRequest": {
      "type": "structure",
      "required": [
        "Name",
        "TriggerUpdate"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the trigger to update.</p>"
        },
        "TriggerUpdate": {
          "shape": "TriggerUpdate",
          "documentation": "<p>The new values with which to update the trigger.</p>"
        }
      }
    },
    "UpdateTriggerResponse": {
      "type": "structure",
      "members": {
        "Trigger": {
          "shape": "Trigger",
          "documentation": "<p>The resulting trigger definition.</p>"
        }
      }
    },
    "UpdateUserDefinedFunctionRequest": {
      "type": "structure",
      "required": [
        "DatabaseName",
        "FunctionName",
        "FunctionInput"
      ],
      "members": {
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog where the function to be updated is located. If none is provided, the AWS account ID is used by default.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database where the function to be updated is located.</p>"
        },
        "FunctionName": {
          "shape": "NameString",
          "documentation": "<p>The name of the function.</p>"
        },
        "FunctionInput": {
          "shape": "UserDefinedFunctionInput",
          "documentation": "<p>A <code>FunctionInput</code> object that redefines the function in the Data Catalog.</p>"
        }
      }
    },
    "UpdateUserDefinedFunctionResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateWorkflowRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the workflow to be updated.</p>"
        },
        "Description": {
          "shape": "GenericString",
          "documentation": "<p>The description of the workflow.</p>"
        },
        "DefaultRunProperties": {
          "shape": "WorkflowRunProperties",
          "documentation": "<p>A collection of properties to be used as part of each execution of the workflow.</p>"
        },
        "MaxConcurrentRuns": {
          "shape": "NullableInteger",
          "documentation": "<p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>"
        }
      }
    },
    "UpdateWorkflowResponse": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow which was specified in input.</p>"
        }
      }
    },
    "UpdateXMLClassifierRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "Classification": {
          "shape": "Classification",
          "documentation": "<p>An identifier of the data format that the classifier matches.</p>"
        },
        "RowTag": {
          "shape": "RowTag",
          "documentation": "<p>The XML tag designating the element that contains each record in an XML document being parsed. This cannot identify a self-closing element (closed by <code>/&gt;</code>). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <code>&lt;row item_a=\"A\" item_b=\"B\"&gt;&lt;/row&gt;</code> is okay, but <code>&lt;row item_a=\"A\" item_b=\"B\" /&gt;</code> is not).</p>"
        }
      },
      "documentation": "<p>Specifies an XML classifier to be updated.</p>"
    },
    "UriString": {
      "type": "string"
    },
    "UserDefinedFunction": {
      "type": "structure",
      "members": {
        "FunctionName": {
          "shape": "NameString",
          "documentation": "<p>The name of the function.</p>"
        },
        "DatabaseName": {
          "shape": "NameString",
          "documentation": "<p>The name of the catalog database that contains the function.</p>"
        },
        "ClassName": {
          "shape": "NameString",
          "documentation": "<p>The Java class that contains the function code.</p>"
        },
        "OwnerName": {
          "shape": "NameString",
          "documentation": "<p>The owner of the function.</p>"
        },
        "OwnerType": {
          "shape": "PrincipalType",
          "documentation": "<p>The owner type.</p>"
        },
        "CreateTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the function was created.</p>"
        },
        "ResourceUris": {
          "shape": "ResourceUriList",
          "documentation": "<p>The resource URIs for the function.</p>"
        },
        "CatalogId": {
          "shape": "CatalogIdString",
          "documentation": "<p>The ID of the Data Catalog in which the function resides.</p>"
        }
      },
      "documentation": "<p>Represents the equivalent of a Hive user-defined function (<code>UDF</code>) definition.</p>"
    },
    "UserDefinedFunctionInput": {
      "type": "structure",
      "members": {
        "FunctionName": {
          "shape": "NameString",
          "documentation": "<p>The name of the function.</p>"
        },
        "ClassName": {
          "shape": "NameString",
          "documentation": "<p>The Java class that contains the function code.</p>"
        },
        "OwnerName": {
          "shape": "NameString",
          "documentation": "<p>The owner of the function.</p>"
        },
        "OwnerType": {
          "shape": "PrincipalType",
          "documentation": "<p>The owner type.</p>"
        },
        "ResourceUris": {
          "shape": "ResourceUriList",
          "documentation": "<p>The resource URIs for the function.</p>"
        }
      },
      "documentation": "<p>A structure used to create or update a user-defined function.</p>"
    },
    "UserDefinedFunctionList": {
      "type": "list",
      "member": {
        "shape": "UserDefinedFunction"
      }
    },
    "ValueString": {
      "type": "string",
      "max": 1024
    },
    "ValueStringList": {
      "type": "list",
      "member": {
        "shape": "ValueString"
      }
    },
    "VersionId": {
      "type": "long"
    },
    "VersionString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\t]*"
    },
    "ViewTextString": {
      "type": "string",
      "max": 409600
    },
    "WorkerType": {
      "type": "string",
      "enum": [
        "Standard",
        "G.1X",
        "G.2X"
      ]
    },
    "Workflow": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the workflow representing the flow.</p>"
        },
        "Description": {
          "shape": "GenericString",
          "documentation": "<p>A description of the workflow.</p>"
        },
        "DefaultRunProperties": {
          "shape": "WorkflowRunProperties",
          "documentation": "<p>A collection of properties to be used as part of each execution of the workflow.</p>"
        },
        "CreatedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The date and time when the workflow was created.</p>"
        },
        "LastModifiedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The date and time when the workflow was last modified.</p>"
        },
        "LastRun": {
          "shape": "WorkflowRun",
          "documentation": "<p>The information about the last execution of the workflow.</p>"
        },
        "Graph": {
          "shape": "WorkflowGraph",
          "documentation": "<p>The graph representing all the AWS Glue components that belong to the workflow as nodes and directed connections between them as edges.</p>"
        },
        "MaxConcurrentRuns": {
          "shape": "NullableInteger",
          "documentation": "<p>You can use this parameter to prevent unwanted multiple updates to data, to control costs, or in some cases, to prevent exceeding the maximum number of concurrent runs of any of the component jobs. If you leave this parameter blank, there is no limit to the number of concurrent workflow runs.</p>"
        }
      },
      "documentation": "<p>A workflow represents a flow in which AWS Glue components should be executed to complete a logical task.</p>"
    },
    "WorkflowGraph": {
      "type": "structure",
      "members": {
        "Nodes": {
          "shape": "NodeList",
          "documentation": "<p>A list of the the AWS Glue components belong to the workflow represented as nodes.</p>"
        },
        "Edges": {
          "shape": "EdgeList",
          "documentation": "<p>A list of all the directed connections between the nodes belonging to the workflow.</p>"
        }
      },
      "documentation": "<p>A workflow graph represents the complete workflow containing all the AWS Glue components present in the workflow and all the directed connections between them.</p>"
    },
    "WorkflowNames": {
      "type": "list",
      "member": {
        "shape": "NameString"
      },
      "max": 25,
      "min": 1
    },
    "WorkflowRun": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>Name of the workflow that was executed.</p>"
        },
        "WorkflowRunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of this workflow run.</p>"
        },
        "PreviousRunId": {
          "shape": "IdString",
          "documentation": "<p>The ID of the previous workflow run.</p>"
        },
        "WorkflowRunProperties": {
          "shape": "WorkflowRunProperties",
          "documentation": "<p>The workflow run properties which were set during the run.</p>"
        },
        "StartedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The date and time when the workflow run was started.</p>"
        },
        "CompletedOn": {
          "shape": "TimestampValue",
          "documentation": "<p>The date and time when the workflow run completed.</p>"
        },
        "Status": {
          "shape": "WorkflowRunStatus",
          "documentation": "<p>The status of the workflow run.</p>"
        },
        "ErrorMessage": {
          "shape": "ErrorString",
          "documentation": "<p>This error message describes any error that may have occurred in starting the workflow run. Currently the only error message is \"Concurrent runs exceeded for workflow: <code>foo</code>.\"</p>"
        },
        "Statistics": {
          "shape": "WorkflowRunStatistics",
          "documentation": "<p>The statistics of the run.</p>"
        },
        "Graph": {
          "shape": "WorkflowGraph",
          "documentation": "<p>The graph representing all the AWS Glue components that belong to the workflow as nodes and directed connections between them as edges.</p>"
        }
      },
      "documentation": "<p>A workflow run is an execution of a workflow providing all the runtime information.</p>"
    },
    "WorkflowRunProperties": {
      "type": "map",
      "key": {
        "shape": "IdString"
      },
      "value": {
        "shape": "GenericString"
      }
    },
    "WorkflowRunStatistics": {
      "type": "structure",
      "members": {
        "TotalActions": {
          "shape": "IntegerValue",
          "documentation": "<p>Total number of Actions in the workflow run.</p>"
        },
        "TimeoutActions": {
          "shape": "IntegerValue",
          "documentation": "<p>Total number of Actions that timed out.</p>"
        },
        "FailedActions": {
          "shape": "IntegerValue",
          "documentation": "<p>Total number of Actions that have failed.</p>"
        },
        "StoppedActions": {
          "shape": "IntegerValue",
          "documentation": "<p>Total number of Actions that have stopped.</p>"
        },
        "SucceededActions": {
          "shape": "IntegerValue",
          "documentation": "<p>Total number of Actions that have succeeded.</p>"
        },
        "RunningActions": {
          "shape": "IntegerValue",
          "documentation": "<p>Total number Actions in running state.</p>"
        }
      },
      "documentation": "<p>Workflow run statistics provides statistics about the workflow run.</p>"
    },
    "WorkflowRunStatus": {
      "type": "string",
      "enum": [
        "RUNNING",
        "COMPLETED",
        "STOPPING",
        "STOPPED",
        "ERROR"
      ]
    },
    "WorkflowRuns": {
      "type": "list",
      "member": {
        "shape": "WorkflowRun"
      },
      "max": 1000,
      "min": 1
    },
    "Workflows": {
      "type": "list",
      "member": {
        "shape": "Workflow"
      },
      "max": 25,
      "min": 1
    },
    "XMLClassifier": {
      "type": "structure",
      "required": [
        "Name",
        "Classification"
      ],
      "members": {
        "Name": {
          "shape": "NameString",
          "documentation": "<p>The name of the classifier.</p>"
        },
        "Classification": {
          "shape": "Classification",
          "documentation": "<p>An identifier of the data format that the classifier matches.</p>"
        },
        "CreationTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this classifier was registered.</p>"
        },
        "LastUpdated": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this classifier was last updated.</p>"
        },
        "Version": {
          "shape": "VersionId",
          "documentation": "<p>The version of this classifier.</p>"
        },
        "RowTag": {
          "shape": "RowTag",
          "documentation": "<p>The XML tag designating the element that contains each record in an XML document being parsed. This can't identify a self-closing element (closed by <code>/&gt;</code>). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <code>&lt;row item_a=\"A\" item_b=\"B\"&gt;&lt;/row&gt;</code> is okay, but <code>&lt;row item_a=\"A\" item_b=\"B\" /&gt;</code> is not).</p>"
        }
      },
      "documentation": "<p>A classifier for <code>XML</code> content.</p>"
    }
  },
  "documentation": "<fullname>AWS Glue</fullname> <p>Defines the public endpoint for the AWS Glue service.</p>"
}
]===]))