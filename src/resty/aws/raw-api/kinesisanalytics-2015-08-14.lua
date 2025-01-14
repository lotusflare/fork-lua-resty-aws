local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-08-14",
    "endpointPrefix": "kinesisanalytics",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Kinesis Analytics",
    "serviceFullName": "Amazon Kinesis Analytics",
    "serviceId": "Kinesis Analytics",
    "signatureVersion": "v4",
    "targetPrefix": "KinesisAnalytics_20150814",
    "uid": "kinesisanalytics-2015-08-14"
  },
  "operations": {
    "AddApplicationCloudWatchLoggingOption": {
      "name": "AddApplicationCloudWatchLoggingOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationCloudWatchLoggingOptionRequest"
      },
      "output": {
        "shape": "AddApplicationCloudWatchLoggingOptionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Adds a CloudWatch log stream to monitor application configuration errors. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html\">Working with Amazon CloudWatch Logs</a>.</p>"
    },
    "AddApplicationInput": {
      "name": "AddApplicationInput",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationInputRequest"
      },
      "output": {
        "shape": "AddApplicationInputResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "CodeValidationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p> Adds a streaming source to your Amazon Kinesis application. For conceptual information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. </p> <p>You can add a streaming source either when you create an application or you can use this operation to add a streaming source after you create an application. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_CreateApplication.html\">CreateApplication</a>.</p> <p>Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to find the current application version. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationInput</code> action.</p>"
    },
    "AddApplicationInputProcessingConfiguration": {
      "name": "AddApplicationInputProcessingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationInputProcessingConfigurationRequest"
      },
      "output": {
        "shape": "AddApplicationInputProcessingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Adds an <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> to an application. An input processor preprocesses records on the input stream before the application's SQL code executes. Currently, the only input processor available is <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a>.</p>"
    },
    "AddApplicationOutput": {
      "name": "AddApplicationOutput",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationOutputRequest"
      },
      "output": {
        "shape": "AddApplicationOutputResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Adds an external destination to your Amazon Kinesis Analytics application.</p> <p>If you want Amazon Kinesis Analytics to deliver data from an in-application stream within your application to an external destination (such as an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.</p> <p> You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Understanding Application Output (Destination)</a>. </p> <p> Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to find the current application version.</p> <p>For the limits on the number of application inputs and outputs you can configure, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html\">Limits</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.</p>"
    },
    "AddApplicationReferenceDataSource": {
      "name": "AddApplicationReferenceDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddApplicationReferenceDataSourceRequest"
      },
      "output": {
        "shape": "AddApplicationReferenceDataSourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Adds a reference data source to an existing application.</p> <p>Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.</p> <p> For conceptual information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. For the limits on data sources you can add to your application, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html\">Limits</a>. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action. </p>"
    },
    "CreateApplication": {
      "name": "CreateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateApplicationRequest"
      },
      "output": {
        "shape": "CreateApplicationResponse"
      },
      "errors": [
        {
          "shape": "CodeValidationException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p> Creates an Amazon Kinesis Analytics application. You can configure each application with one streaming source as input, application code to process the input, and up to three destinations where you want Amazon Kinesis Analytics to write the output data from your application. For an overview, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html\">How it Works</a>. </p> <p>In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a data element in the streaming source.</p> <p>Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps.</p> <p>In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to three destinations.</p> <p> To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the <code>kinesisanalytics:CreateApplication</code> action. </p> <p> For introductory exercises to create an Amazon Kinesis Analytics application, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html\">Getting Started</a>. </p>"
    },
    "DeleteApplication": {
      "name": "DeleteApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationRequest"
      },
      "output": {
        "shape": "DeleteApplicationResponse"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplication</code> action.</p>"
    },
    "DeleteApplicationCloudWatchLoggingOption": {
      "name": "DeleteApplicationCloudWatchLoggingOption",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationCloudWatchLoggingOptionRequest"
      },
      "output": {
        "shape": "DeleteApplicationCloudWatchLoggingOptionResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes a CloudWatch log stream from an application. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html\">Working with Amazon CloudWatch Logs</a>.</p>"
    },
    "DeleteApplicationInputProcessingConfiguration": {
      "name": "DeleteApplicationInputProcessingConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationInputProcessingConfigurationRequest"
      },
      "output": {
        "shape": "DeleteApplicationInputProcessingConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes an <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> from an input.</p>"
    },
    "DeleteApplicationOutput": {
      "name": "DeleteApplicationOutput",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationOutputRequest"
      },
      "output": {
        "shape": "DeleteApplicationOutputResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplicationOutput</code> action.</p>"
    },
    "DeleteApplicationReferenceDataSource": {
      "name": "DeleteApplicationReferenceDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteApplicationReferenceDataSourceRequest"
      },
      "output": {
        "shape": "DeleteApplicationReferenceDataSourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Deletes a reference data source configuration from the specified application configuration.</p> <p>If the application is running, Amazon Kinesis Analytics immediately removes the in-application table that you created using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html\">AddApplicationReferenceDataSource</a> operation. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics.DeleteApplicationReferenceDataSource</code> action.</p>"
    },
    "DescribeApplication": {
      "name": "DescribeApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeApplicationRequest"
      },
      "output": {
        "shape": "DescribeApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Returns information about a specific Amazon Kinesis Analytics application.</p> <p>If you want to retrieve a list of all applications in your account, use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_ListApplications.html\">ListApplications</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DescribeApplication</code> action. You can use <code>DescribeApplication</code> to get the current application versionId, which you need to call other operations such as <code>Update</code>. </p>"
    },
    "DiscoverInputSchema": {
      "name": "DiscoverInputSchema",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DiscoverInputSchemaRequest"
      },
      "output": {
        "shape": "DiscoverInputSchemaResponse"
      },
      "errors": [
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "UnableToDetectSchemaException"
        },
        {
          "shape": "ResourceProvisionedThroughputExceededException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream) or S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.</p> <p> You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:DiscoverInputSchema</code> action. </p>"
    },
    "ListApplications": {
      "name": "ListApplications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListApplicationsRequest"
      },
      "output": {
        "shape": "ListApplicationsResponse"
      },
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Returns a list of Amazon Kinesis Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If the response returns the <code>HasMoreApplications</code> value as true, you can send another request by adding the <code>ExclusiveStartApplicationName</code> in the request body, and set the value of this to the last application name from the previous response. </p> <p>If you want detailed information about a specific application, use <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:ListApplications</code> action.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Retrieves the list of key-value tags assigned to the application. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html\">Using Tagging</a>.</p>"
    },
    "StartApplication": {
      "name": "StartApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartApplicationRequest"
      },
      "output": {
        "shape": "StartApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "InvalidApplicationConfigurationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.</p> <p>After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.</p> <p> The application status must be <code>READY</code> for you to start an application. You can get the application status in the console or using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p> <p>After you start the application, you can stop the application from processing the input by calling the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_StopApplication.html\">StopApplication</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StartApplication</code> action.</p>"
    },
    "StopApplication": {
      "name": "StopApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopApplicationRequest"
      },
      "output": {
        "shape": "StopApplicationResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Stops the application from processing input data. You can stop an application only if it is in the running state. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to find the application state. After the application is stopped, Amazon Kinesis Analytics stops reading data from the input, the application stops processing data, and there is no output written to the destination. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StopApplication</code> action.</p>"
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Adds one or more key-value tags to a Kinesis Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html\">Using Tagging</a>.</p>"
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
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Removes one or more tags from a Kinesis Analytics application. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html\">Using Tagging</a>.</p>"
    },
    "UpdateApplication": {
      "name": "UpdateApplication",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateApplicationRequest"
      },
      "output": {
        "shape": "UpdateApplicationResponse"
      },
      "errors": [
        {
          "shape": "CodeValidationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceInUseException"
        },
        {
          "shape": "InvalidArgumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "UnsupportedOperationException"
        }
      ],
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Updates an existing Amazon Kinesis Analytics application. Using this API, you can update application code, input configuration, and output configuration. </p> <p>Note that Amazon Kinesis Analytics updates the <code>CurrentApplicationVersionId</code> each time you update your application. </p> <p>This operation requires permission for the <code>kinesisanalytics:UpdateApplication</code> action.</p>"
    }
  },
  "shapes": {
    "AddApplicationCloudWatchLoggingOptionRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "CloudWatchLoggingOption"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The Kinesis Analytics application name.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version ID of the Kinesis Analytics application.</p>"
        },
        "CloudWatchLoggingOption": {
          "shape": "CloudWatchLoggingOption",
          "documentation": "<p>Provides the CloudWatch log stream Amazon Resource Name (ARN) and the IAM role ARN. Note: To write application messages to CloudWatch, the IAM role that is used must have the <code>PutLogEvents</code> policy action enabled.</p>"
        }
      }
    },
    "AddApplicationCloudWatchLoggingOptionResponse": {
      "type": "structure",
      "members": {}
    },
    "AddApplicationInputProcessingConfigurationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "InputId",
        "InputProcessingConfiguration"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the application to which you want to add the input processing configuration.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Version of the application to which you want to add the input processing configuration. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>"
        },
        "InputId": {
          "shape": "Id",
          "documentation": "<p>The ID of the input configuration to add the input processing configuration to. You can get a list of the input IDs for an application using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>"
        },
        "InputProcessingConfiguration": {
          "shape": "InputProcessingConfiguration",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> to add to the application.</p>"
        }
      }
    },
    "AddApplicationInputProcessingConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "AddApplicationInputRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "Input"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of your existing Amazon Kinesis Analytics application to which you want to add the streaming source.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Current version of your Amazon Kinesis Analytics application. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to find the current application version.</p>"
        },
        "Input": {
          "shape": "Input",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html\">Input</a> to add.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "AddApplicationInputResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "AddApplicationOutputRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "Output"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the application to which you want to add the output configuration.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Version of the application to which you want to add the output configuration. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned. </p>"
        },
        "Output": {
          "shape": "Output",
          "documentation": "<p>An array of objects, each describing one output configuration. In the output configuration, you specify the name of an in-application stream, a destination (that is, an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery stream, or an AWS Lambda function), and record the formation to use when writing to the destination.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "AddApplicationOutputResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "AddApplicationReferenceDataSourceRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "ReferenceDataSource"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of an existing application.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Version of the application for which you are adding the reference data source. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>"
        },
        "ReferenceDataSource": {
          "shape": "ReferenceDataSource",
          "documentation": "<p>The reference data source can be an object in your Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies the data into the in-application table that is created. You provide an S3 bucket, object key name, and the resulting in-application table that is created. You must also provide an IAM role with the necessary permissions that Amazon Kinesis Analytics can assume to read the object from your S3 bucket on your behalf.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "AddApplicationReferenceDataSourceResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "ApplicationCode": {
      "type": "string",
      "max": 102400,
      "min": 0
    },
    "ApplicationDescription": {
      "type": "string",
      "max": 1024,
      "min": 0
    },
    "ApplicationDetail": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "ApplicationARN",
        "ApplicationStatus",
        "ApplicationVersionId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the application.</p>"
        },
        "ApplicationDescription": {
          "shape": "ApplicationDescription",
          "documentation": "<p>Description of the application.</p>"
        },
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>ARN of the application.</p>"
        },
        "ApplicationStatus": {
          "shape": "ApplicationStatus",
          "documentation": "<p>Status of the application.</p>"
        },
        "CreateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp when the application version was created.</p>"
        },
        "LastUpdateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>Time stamp when the application was last updated.</p>"
        },
        "InputDescriptions": {
          "shape": "InputDescriptions",
          "documentation": "<p>Describes the application input configuration. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. </p>"
        },
        "OutputDescriptions": {
          "shape": "OutputDescriptions",
          "documentation": "<p>Describes the application output configuration. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>. </p>"
        },
        "ReferenceDataSourceDescriptions": {
          "shape": "ReferenceDataSourceDescriptions",
          "documentation": "<p>Describes reference data sources configured for the application. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. </p>"
        },
        "CloudWatchLoggingOptionDescriptions": {
          "shape": "CloudWatchLoggingOptionDescriptions",
          "documentation": "<p>Describes the CloudWatch log streams that are configured to receive application messages. For more information about using CloudWatch log streams with Amazon Kinesis Analytics applications, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html\">Working with Amazon CloudWatch Logs</a>. </p>"
        },
        "ApplicationCode": {
          "shape": "ApplicationCode",
          "documentation": "<p>Returns the application code that you provided to perform data analysis on any of the in-application streams in your application.</p>"
        },
        "ApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Provides the current application version.</p>"
        }
      },
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Provides a description of the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configuration.</p>"
    },
    "ApplicationName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "ApplicationStatus": {
      "type": "string",
      "enum": [
        "DELETING",
        "STARTING",
        "STOPPING",
        "READY",
        "RUNNING",
        "UPDATING"
      ]
    },
    "ApplicationSummaries": {
      "type": "list",
      "member": {
        "shape": "ApplicationSummary"
      }
    },
    "ApplicationSummary": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "ApplicationARN",
        "ApplicationStatus"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the application.</p>"
        },
        "ApplicationARN": {
          "shape": "ResourceARN",
          "documentation": "<p>ARN of the application.</p>"
        },
        "ApplicationStatus": {
          "shape": "ApplicationStatus",
          "documentation": "<p>Status of the application.</p>"
        }
      },
      "documentation": "<note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>"
    },
    "ApplicationUpdate": {
      "type": "structure",
      "members": {
        "InputUpdates": {
          "shape": "InputUpdates",
          "documentation": "<p>Describes application input configuration updates.</p>"
        },
        "ApplicationCodeUpdate": {
          "shape": "ApplicationCode",
          "documentation": "<p>Describes application code updates.</p>"
        },
        "OutputUpdates": {
          "shape": "OutputUpdates",
          "documentation": "<p>Describes application output configuration updates.</p>"
        },
        "ReferenceDataSourceUpdates": {
          "shape": "ReferenceDataSourceUpdates",
          "documentation": "<p>Describes application reference data source updates.</p>"
        },
        "CloudWatchLoggingOptionUpdates": {
          "shape": "CloudWatchLoggingOptionUpdates",
          "documentation": "<p>Describes application CloudWatch logging option updates.</p>"
        }
      },
      "documentation": "<p>Describes updates to apply to an existing Amazon Kinesis Analytics application.</p>"
    },
    "ApplicationVersionId": {
      "type": "long",
      "max": 999999999,
      "min": 1
    },
    "BooleanObject": {
      "type": "boolean"
    },
    "BucketARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:.*"
    },
    "CSVMappingParameters": {
      "type": "structure",
      "required": [
        "RecordRowDelimiter",
        "RecordColumnDelimiter"
      ],
      "members": {
        "RecordRowDelimiter": {
          "shape": "RecordRowDelimiter",
          "documentation": "<p>Row delimiter. For example, in a CSV format, <i>'\\n'</i> is the typical row delimiter.</p>"
        },
        "RecordColumnDelimiter": {
          "shape": "RecordColumnDelimiter",
          "documentation": "<p>Column delimiter. For example, in a CSV format, a comma (\",\") is the typical column delimiter.</p>"
        }
      },
      "documentation": "<p>Provides additional mapping information when the record format uses delimiters, such as CSV. For example, the following sample records use CSV format, where the records use the <i>'\\n'</i> as the row delimiter and a comma (\",\") as the column delimiter: </p> <p> <code>\"name1\", \"address1\"</code> </p> <p> <code>\"name2\", \"address2\"</code> </p>"
    },
    "CloudWatchLoggingOption": {
      "type": "structure",
      "required": [
        "LogStreamARN",
        "RoleARN"
      ],
      "members": {
        "LogStreamARN": {
          "shape": "LogStreamARN",
          "documentation": "<p>ARN of the CloudWatch log to receive application messages.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role that is used must have the <code>PutLogEvents</code> policy action enabled.</p>"
        }
      },
      "documentation": "<p>Provides a description of CloudWatch logging options, including the log stream Amazon Resource Name (ARN) and the role ARN.</p>"
    },
    "CloudWatchLoggingOptionDescription": {
      "type": "structure",
      "required": [
        "LogStreamARN",
        "RoleARN"
      ],
      "members": {
        "CloudWatchLoggingOptionId": {
          "shape": "Id",
          "documentation": "<p>ID of the CloudWatch logging option description.</p>"
        },
        "LogStreamARN": {
          "shape": "LogStreamARN",
          "documentation": "<p>ARN of the CloudWatch log to receive application messages.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>"
        }
      },
      "documentation": "<p>Description of the CloudWatch logging option.</p>"
    },
    "CloudWatchLoggingOptionDescriptions": {
      "type": "list",
      "member": {
        "shape": "CloudWatchLoggingOptionDescription"
      }
    },
    "CloudWatchLoggingOptionUpdate": {
      "type": "structure",
      "required": [
        "CloudWatchLoggingOptionId"
      ],
      "members": {
        "CloudWatchLoggingOptionId": {
          "shape": "Id",
          "documentation": "<p>ID of the CloudWatch logging option to update</p>"
        },
        "LogStreamARNUpdate": {
          "shape": "LogStreamARN",
          "documentation": "<p>ARN of the CloudWatch log to receive application messages.</p>"
        },
        "RoleARNUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>IAM ARN of the role to use to send application messages. Note: To write application messages to CloudWatch, the IAM role used must have the <code>PutLogEvents</code> policy action enabled.</p>"
        }
      },
      "documentation": "<p>Describes CloudWatch logging option updates.</p>"
    },
    "CloudWatchLoggingOptionUpdates": {
      "type": "list",
      "member": {
        "shape": "CloudWatchLoggingOptionUpdate"
      }
    },
    "CloudWatchLoggingOptions": {
      "type": "list",
      "member": {
        "shape": "CloudWatchLoggingOption"
      }
    },
    "CreateApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of your Amazon Kinesis Analytics application (for example, <code>sample-app</code>).</p>"
        },
        "ApplicationDescription": {
          "shape": "ApplicationDescription",
          "documentation": "<p>Summary description of the application.</p>"
        },
        "Inputs": {
          "shape": "Inputs",
          "documentation": "<p>Use this parameter to configure the application input.</p> <p>You can configure your application to receive input from a single streaming source. In this configuration, you map this streaming source to an in-application stream that is created. Your application code can then query the in-application stream like a table (you can think of it as a constantly updating table).</p> <p>For the streaming source, you provide its Amazon Resource Name (ARN) and format of data on the stream (for example, JSON, CSV, etc.). You also must provide an IAM role that Amazon Kinesis Analytics can assume to read this stream on your behalf.</p> <p>To create the in-application stream, you need to specify a schema to transform your data into a schematized version used in SQL. In the schema, you provide the necessary mapping of the data elements in the streaming source to record columns in the in-app stream.</p>"
        },
        "Outputs": {
          "shape": "Outputs",
          "documentation": "<p>You can configure application output to write data from any of the in-application streams to up to three destinations.</p> <p>These destinations can be Amazon Kinesis streams, Amazon Kinesis Firehose delivery streams, AWS Lambda destinations, or any combination of the three.</p> <p>In the configuration, you specify the in-application stream name, the destination stream or Lambda function Amazon Resource Name (ARN), and the format to use when writing data. You must also provide an IAM role that Amazon Kinesis Analytics can assume to write to the destination stream or Lambda function on your behalf.</p> <p>In the output configuration, you also provide the output stream or Lambda function ARN. For stream destinations, you provide the format of data in the stream (for example, JSON, CSV). You also must provide an IAM role that Amazon Kinesis Analytics can assume to write to the stream or Lambda function on your behalf.</p>"
        },
        "CloudWatchLoggingOptions": {
          "shape": "CloudWatchLoggingOptions",
          "documentation": "<p>Use this parameter to configure a CloudWatch log stream to monitor application configuration errors. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html\">Working with Amazon CloudWatch Logs</a>.</p>"
        },
        "ApplicationCode": {
          "shape": "ApplicationCode",
          "documentation": "<p>One or more SQL statements that read input data, transform it, and generate output. For example, you can write a SQL statement that reads data from one in-application stream, generates a running average of the number of advertisement clicks by vendor, and insert resulting rows in another in-application stream using pumps. For more information about the typical pattern, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html\">Application Code</a>. </p> <p>You can provide such series of SQL statements, where output of one statement can be used as the input for the next statement. You store intermediate results by creating in-application streams and pumps.</p> <p>Note that the application code must create the streams with names specified in the <code>Outputs</code>. For example, if your <code>Outputs</code> defines output streams named <code>ExampleOutputStream1</code> and <code>ExampleOutputStream2</code>, then your application code must create these streams. </p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html\">Using Tagging</a>.</p>"
        }
      },
      "documentation": "<p>TBD</p>"
    },
    "CreateApplicationResponse": {
      "type": "structure",
      "required": [
        "ApplicationSummary"
      ],
      "members": {
        "ApplicationSummary": {
          "shape": "ApplicationSummary",
          "documentation": "<p>In response to your <code>CreateApplication</code> request, Amazon Kinesis Analytics returns a response with a summary of the application it created, including the application Amazon Resource Name (ARN), name, and status.</p>"
        }
      },
      "documentation": "<p>TBD</p>"
    },
    "DeleteApplicationCloudWatchLoggingOptionRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "CloudWatchLoggingOptionId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The Kinesis Analytics application name.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version ID of the Kinesis Analytics application.</p>"
        },
        "CloudWatchLoggingOptionId": {
          "shape": "Id",
          "documentation": "<p>The <code>CloudWatchLoggingOptionId</code> of the CloudWatch logging option to delete. You can get the <code>CloudWatchLoggingOptionId</code> by using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation. </p>"
        }
      }
    },
    "DeleteApplicationCloudWatchLoggingOptionResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteApplicationInputProcessingConfigurationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "InputId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>The Kinesis Analytics application name.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The version ID of the Kinesis Analytics application.</p>"
        },
        "InputId": {
          "shape": "Id",
          "documentation": "<p>The ID of the input configuration from which to delete the input processing configuration. You can get a list of the input IDs for an application by using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>"
        }
      }
    },
    "DeleteApplicationInputProcessingConfigurationResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteApplicationOutputRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "OutputId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Amazon Kinesis Analytics application name.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Amazon Kinesis Analytics application version. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned. </p>"
        },
        "OutputId": {
          "shape": "Id",
          "documentation": "<p>The ID of the configuration to delete. Each output configuration that is added to the application, either when the application is created or later using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationOutput.html\">AddApplicationOutput</a> operation, has a unique ID. You need to provide the ID to uniquely identify the output configuration that you want to delete from the application configuration. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the specific <code>OutputId</code>. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteApplicationOutputResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "DeleteApplicationReferenceDataSourceRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "ReferenceId"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of an existing application.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>Version of the application. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the current application version. If the version specified is not the current version, the <code>ConcurrentModificationException</code> is returned.</p>"
        },
        "ReferenceId": {
          "shape": "Id",
          "documentation": "<p>ID of the reference data source. When you add a reference data source to your application using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html\">AddApplicationReferenceDataSource</a>, Amazon Kinesis Analytics assigns an ID. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get the reference ID. </p>"
        }
      }
    },
    "DeleteApplicationReferenceDataSourceResponse": {
      "type": "structure",
      "members": {}
    },
    "DeleteApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CreateTimestamp"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the Amazon Kinesis Analytics application to delete.</p>"
        },
        "CreateTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p> You can use the <code>DescribeApplication</code> operation to get this value. </p>"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteApplicationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "DescribeApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the application.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DescribeApplicationResponse": {
      "type": "structure",
      "required": [
        "ApplicationDetail"
      ],
      "members": {
        "ApplicationDetail": {
          "shape": "ApplicationDetail",
          "documentation": "<p>Provides a description of the application, such as the application Amazon Resource Name (ARN), status, latest version, and input and output configuration details.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "DestinationSchema": {
      "type": "structure",
      "required": [
        "RecordFormatType"
      ],
      "members": {
        "RecordFormatType": {
          "shape": "RecordFormatType",
          "documentation": "<p>Specifies the format of the records on the output stream.</p>"
        }
      },
      "documentation": "<p>Describes the data format when records are written to the destination. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>. </p>"
    },
    "DiscoverInputSchemaRequest": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the streaming source.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf.</p>"
        },
        "InputStartingPositionConfiguration": {
          "shape": "InputStartingPositionConfiguration",
          "documentation": "<p>Point at which you want Amazon Kinesis Analytics to start reading records from the specified streaming source discovery purposes.</p>"
        },
        "S3Configuration": {
          "shape": "S3Configuration",
          "documentation": "<p>Specify this parameter to discover a schema from data in an Amazon S3 object.</p>"
        },
        "InputProcessingConfiguration": {
          "shape": "InputProcessingConfiguration",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> to use to preprocess the records before discovering the schema of the records.</p>"
        }
      }
    },
    "DiscoverInputSchemaResponse": {
      "type": "structure",
      "members": {
        "InputSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Schema inferred from the streaming source. It identifies the format of the data in the streaming source and how each data element maps to corresponding columns in the in-application stream that you can create.</p>"
        },
        "ParsedInputRecords": {
          "shape": "ParsedInputRecords",
          "documentation": "<p>An array of elements, where each element corresponds to a row in a stream record (a stream record can have more than one row).</p>"
        },
        "ProcessedInputRecords": {
          "shape": "ProcessedInputRecords",
          "documentation": "<p>Stream data that was modified by the processor specified in the <code>InputProcessingConfiguration</code> parameter.</p>"
        },
        "RawInputRecords": {
          "shape": "RawInputRecords",
          "documentation": "<p>Raw stream data that was sampled to infer the schema.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "FileKey": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "Id": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": "[a-zA-Z0-9_.-]+"
    },
    "InAppStreamName": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "InAppStreamNames": {
      "type": "list",
      "member": {
        "shape": "InAppStreamName"
      }
    },
    "InAppTableName": {
      "type": "string",
      "max": 32,
      "min": 1
    },
    "Input": {
      "type": "structure",
      "required": [
        "NamePrefix",
        "InputSchema"
      ],
      "members": {
        "NamePrefix": {
          "shape": "InAppStreamName",
          "documentation": "<p>Name prefix to use when creating an in-application stream. Suppose that you specify a prefix \"MyInApplicationStream.\" Amazon Kinesis Analytics then creates one or more (as per the <code>InputParallelism</code> count you specified) in-application streams with names \"MyInApplicationStream_001,\" \"MyInApplicationStream_002,\" and so on. </p>"
        },
        "InputProcessingConfiguration": {
          "shape": "InputProcessingConfiguration",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a> for the input. An input processor transforms records as they are received from the stream, before the application's SQL code executes. Currently, the only input processing configuration available is <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a>.</p>"
        },
        "KinesisStreamsInput": {
          "shape": "KinesisStreamsInput",
          "documentation": "<p>If the streaming source is an Amazon Kinesis stream, identifies the stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.</p> <p>Note: Either <code>KinesisStreamsInput</code> or <code>KinesisFirehoseInput</code> is required.</p>"
        },
        "KinesisFirehoseInput": {
          "shape": "KinesisFirehoseInput",
          "documentation": "<p>If the streaming source is an Amazon Kinesis Firehose delivery stream, identifies the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.</p> <p>Note: Either <code>KinesisStreamsInput</code> or <code>KinesisFirehoseInput</code> is required.</p>"
        },
        "InputParallelism": {
          "shape": "InputParallelism",
          "documentation": "<p>Describes the number of in-application streams to create. </p> <p>Data from your source is routed to these in-application input streams.</p> <p> (see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>.</p>"
        },
        "InputSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.</p> <p>Also used to describe the format of the reference data source.</p>"
        }
      },
      "documentation": "<p>When you configure the application input, you specify the streaming source, the in-application stream name that is created, and the mapping between the two. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. </p>"
    },
    "InputConfiguration": {
      "type": "structure",
      "required": [
        "Id",
        "InputStartingPositionConfiguration"
      ],
      "members": {
        "Id": {
          "shape": "Id",
          "documentation": "<p>Input source ID. You can get this ID by calling the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation.</p>"
        },
        "InputStartingPositionConfiguration": {
          "shape": "InputStartingPositionConfiguration",
          "documentation": "<p>Point at which you want the application to start processing records from the streaming source.</p>"
        }
      },
      "documentation": "<p>When you start your application, you provide this configuration, which identifies the input source and the point in the input source at which you want the application to start processing records.</p>"
    },
    "InputConfigurations": {
      "type": "list",
      "member": {
        "shape": "InputConfiguration"
      }
    },
    "InputDescription": {
      "type": "structure",
      "members": {
        "InputId": {
          "shape": "Id",
          "documentation": "<p>Input ID associated with the application input. This is the ID that Amazon Kinesis Analytics assigns to each input configuration you add to your application. </p>"
        },
        "NamePrefix": {
          "shape": "InAppStreamName",
          "documentation": "<p>In-application name prefix.</p>"
        },
        "InAppStreamNames": {
          "shape": "InAppStreamNames",
          "documentation": "<p>Returns the in-application stream names that are mapped to the stream source.</p>"
        },
        "InputProcessingConfigurationDescription": {
          "shape": "InputProcessingConfigurationDescription",
          "documentation": "<p>The description of the preprocessor that executes on records in this input before the application's code is run.</p>"
        },
        "KinesisStreamsInputDescription": {
          "shape": "KinesisStreamsInputDescription",
          "documentation": "<p>If an Amazon Kinesis stream is configured as streaming source, provides Amazon Kinesis stream's Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>"
        },
        "KinesisFirehoseInputDescription": {
          "shape": "KinesisFirehoseInputDescription",
          "documentation": "<p>If an Amazon Kinesis Firehose delivery stream is configured as a streaming source, provides the delivery stream's ARN and an IAM role that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>"
        },
        "InputSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created. </p>"
        },
        "InputParallelism": {
          "shape": "InputParallelism",
          "documentation": "<p>Describes the configured parallelism (number of in-application streams mapped to the streaming source).</p>"
        },
        "InputStartingPositionConfiguration": {
          "shape": "InputStartingPositionConfiguration",
          "documentation": "<p>Point at which the application is configured to read from the input stream.</p>"
        }
      },
      "documentation": "<p>Describes the application input configuration. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. </p>"
    },
    "InputDescriptions": {
      "type": "list",
      "member": {
        "shape": "InputDescription"
      }
    },
    "InputLambdaProcessor": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "RoleARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that operates on records in the stream.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that is used to access the AWS Lambda function.</p>"
        }
      },
      "documentation": "<p>An object that contains the Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that is used to preprocess records in the stream, and the ARN of the IAM role that is used to access the AWS Lambda function. </p>"
    },
    "InputLambdaProcessorDescription": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>The ARN of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that is used to preprocess the records in the stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the IAM role that is used to access the AWS Lambda function.</p>"
        }
      },
      "documentation": "<p>An object that contains the Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that is used to preprocess records in the stream, and the ARN of the IAM role that is used to access the AWS Lambda expression.</p>"
    },
    "InputLambdaProcessorUpdate": {
      "type": "structure",
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>The Amazon Resource Name (ARN) of the new <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a> function that is used to preprocess the records in the stream.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        },
        "RoleARNUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>The ARN of the new IAM role that is used to access the AWS Lambda function.</p>"
        }
      },
      "documentation": "<p>Represents an update to the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a> that is used to preprocess the records in the stream.</p>"
    },
    "InputParallelism": {
      "type": "structure",
      "members": {
        "Count": {
          "shape": "InputParallelismCount",
          "documentation": "<p>Number of in-application streams to create. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html\">Limits</a>. </p>"
        }
      },
      "documentation": "<p>Describes the number of in-application streams to create for a given streaming source. For information about parallelism, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html\">Configuring Application Input</a>. </p>"
    },
    "InputParallelismCount": {
      "type": "integer",
      "max": 64,
      "min": 1
    },
    "InputParallelismUpdate": {
      "type": "structure",
      "members": {
        "CountUpdate": {
          "shape": "InputParallelismCount",
          "documentation": "<p>Number of in-application streams to create for the specified streaming source.</p>"
        }
      },
      "documentation": "<p>Provides updates to the parallelism count.</p>"
    },
    "InputProcessingConfiguration": {
      "type": "structure",
      "required": [
        "InputLambdaProcessor"
      ],
      "members": {
        "InputLambdaProcessor": {
          "shape": "InputLambdaProcessor",
          "documentation": "<p>The <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a> that is used to preprocess the records in the stream before being processed by your application code.</p>"
        }
      },
      "documentation": "<p>Provides a description of a processor that is used to preprocess the records in the stream before being processed by your application code. Currently, the only input processor available is <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a>.</p>"
    },
    "InputProcessingConfigurationDescription": {
      "type": "structure",
      "members": {
        "InputLambdaProcessorDescription": {
          "shape": "InputLambdaProcessorDescription",
          "documentation": "<p>Provides configuration information about the associated <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessorDescription.html\">InputLambdaProcessorDescription</a>.</p>"
        }
      },
      "documentation": "<p>Provides configuration information about an input processor. Currently, the only input processor available is <a href=\"https://docs.aws.amazon.com/lambda/\">AWS Lambda</a>.</p>"
    },
    "InputProcessingConfigurationUpdate": {
      "type": "structure",
      "required": [
        "InputLambdaProcessorUpdate"
      ],
      "members": {
        "InputLambdaProcessorUpdate": {
          "shape": "InputLambdaProcessorUpdate",
          "documentation": "<p>Provides update information for an <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html\">InputLambdaProcessor</a>.</p>"
        }
      },
      "documentation": "<p>Describes updates to an <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html\">InputProcessingConfiguration</a>. </p>"
    },
    "InputSchemaUpdate": {
      "type": "structure",
      "members": {
        "RecordFormatUpdate": {
          "shape": "RecordFormat",
          "documentation": "<p>Specifies the format of the records on the streaming source.</p>"
        },
        "RecordEncodingUpdate": {
          "shape": "RecordEncoding",
          "documentation": "<p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>"
        },
        "RecordColumnUpdates": {
          "shape": "RecordColumns",
          "documentation": "<p>A list of <code>RecordColumn</code> objects. Each object describes the mapping of the streaming source element to the corresponding column in the in-application stream. </p>"
        }
      },
      "documentation": "<p>Describes updates for the application's input schema.</p>"
    },
    "InputStartingPosition": {
      "type": "string",
      "enum": [
        "NOW",
        "TRIM_HORIZON",
        "LAST_STOPPED_POINT"
      ]
    },
    "InputStartingPositionConfiguration": {
      "type": "structure",
      "members": {
        "InputStartingPosition": {
          "shape": "InputStartingPosition",
          "documentation": "<p>The starting position on the stream.</p> <ul> <li> <p> <code>NOW</code> - Start reading just after the most recent record in the stream, start at the request time stamp that the customer issued.</p> </li> <li> <p> <code>TRIM_HORIZON</code> - Start reading at the last untrimmed record in the stream, which is the oldest record available in the stream. This option is not available for an Amazon Kinesis Firehose delivery stream.</p> </li> <li> <p> <code>LAST_STOPPED_POINT</code> - Resume reading from where the application last stopped reading.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Describes the point at which the application reads from the streaming source.</p>"
    },
    "InputUpdate": {
      "type": "structure",
      "required": [
        "InputId"
      ],
      "members": {
        "InputId": {
          "shape": "Id",
          "documentation": "<p>Input ID of the application input to be updated.</p>"
        },
        "NamePrefixUpdate": {
          "shape": "InAppStreamName",
          "documentation": "<p>Name prefix for in-application streams that Amazon Kinesis Analytics creates for the specific streaming source.</p>"
        },
        "InputProcessingConfigurationUpdate": {
          "shape": "InputProcessingConfigurationUpdate",
          "documentation": "<p>Describes updates for an input processing configuration.</p>"
        },
        "KinesisStreamsInputUpdate": {
          "shape": "KinesisStreamsInputUpdate",
          "documentation": "<p>If an Amazon Kinesis stream is the streaming source to be updated, provides an updated stream Amazon Resource Name (ARN) and IAM role ARN.</p>"
        },
        "KinesisFirehoseInputUpdate": {
          "shape": "KinesisFirehoseInputUpdate",
          "documentation": "<p>If an Amazon Kinesis Firehose delivery stream is the streaming source to be updated, provides an updated stream ARN and IAM role ARN.</p>"
        },
        "InputSchemaUpdate": {
          "shape": "InputSchemaUpdate",
          "documentation": "<p>Describes the data format on the streaming source, and how record elements on the streaming source map to columns of the in-application stream that is created.</p>"
        },
        "InputParallelismUpdate": {
          "shape": "InputParallelismUpdate",
          "documentation": "<p>Describes the parallelism updates (the number in-application streams Amazon Kinesis Analytics creates for the specific streaming source).</p>"
        }
      },
      "documentation": "<p>Describes updates to a specific input configuration (identified by the <code>InputId</code> of an application). </p>"
    },
    "InputUpdates": {
      "type": "list",
      "member": {
        "shape": "InputUpdate"
      }
    },
    "Inputs": {
      "type": "list",
      "member": {
        "shape": "Input"
      }
    },
    "JSONMappingParameters": {
      "type": "structure",
      "required": [
        "RecordRowPath"
      ],
      "members": {
        "RecordRowPath": {
          "shape": "RecordRowPath",
          "documentation": "<p>Path to the top-level parent that contains the records.</p>"
        }
      },
      "documentation": "<p>Provides additional mapping information when JSON is the record format on the streaming source.</p>"
    },
    "KinesisAnalyticsARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:aws:kinesisanalytics:[a-z]{2}-[a-z]+-\\d{1}+:\\d{12}+:application/[a-zA-Z0-9_.-]{1,128}"
    },
    "KinesisFirehoseInput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "RoleARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>ARN of the input delivery stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to make sure that the role has the necessary permissions to access the stream.</p>"
        }
      },
      "documentation": "<p> Identifies an Amazon Kinesis Firehose delivery stream as the streaming source. You provide the delivery stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>"
    },
    "KinesisFirehoseInputDescription": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics assumes to access the stream.</p>"
        }
      },
      "documentation": "<p> Describes the Amazon Kinesis Firehose delivery stream that is configured as the streaming source in the application input configuration. </p>"
    },
    "KinesisFirehoseInputUpdate": {
      "type": "structure",
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the input Amazon Kinesis Firehose delivery stream to read.</p>"
        },
        "RoleARNUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"
        }
      },
      "documentation": "<p>When updating application input configuration, provides information about an Amazon Kinesis Firehose delivery stream as the streaming source.</p>"
    },
    "KinesisFirehoseOutput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "RoleARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>ARN of the destination Amazon Kinesis Firehose delivery stream to write to.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>"
        }
      },
      "documentation": "<p>When configuring application output, identifies an Amazon Kinesis Firehose delivery stream as the destination. You provide the stream Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to write to the stream on your behalf.</p>"
    },
    "KinesisFirehoseOutputDescription": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"
        }
      },
      "documentation": "<p> For an application output, describes the Amazon Kinesis Firehose delivery stream configured as its destination. </p>"
    },
    "KinesisFirehoseOutputUpdate": {
      "type": "structure",
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the Amazon Kinesis Firehose delivery stream to write to.</p>"
        },
        "RoleARNUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"
        }
      },
      "documentation": "<p> When updating an output configuration using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html\">UpdateApplication</a> operation, provides information about an Amazon Kinesis Firehose delivery stream configured as the destination. </p>"
    },
    "KinesisStreamsInput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "RoleARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>ARN of the input Amazon Kinesis stream to read.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"
        }
      },
      "documentation": "<p> Identifies an Amazon Kinesis stream as the streaming source. You provide the stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>"
    },
    "KinesisStreamsInputDescription": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"
        }
      },
      "documentation": "<p> Describes the Amazon Kinesis stream that is configured as the streaming source in the application input configuration. </p>"
    },
    "KinesisStreamsInputUpdate": {
      "type": "structure",
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the input Amazon Kinesis stream to read.</p>"
        },
        "RoleARNUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"
        }
      },
      "documentation": "<p>When updating application input configuration, provides information about an Amazon Kinesis stream as the streaming source.</p>"
    },
    "KinesisStreamsOutput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "RoleARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>ARN of the destination Amazon Kinesis stream to write to.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination stream on your behalf. You need to grant the necessary permissions to this role.</p>"
        }
      },
      "documentation": "<p>When configuring application output, identifies an Amazon Kinesis stream as the destination. You provide the stream Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the stream on your behalf.</p>"
    },
    "KinesisStreamsOutputDescription": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream.</p>"
        }
      },
      "documentation": "<p> For an application output, describes the Amazon Kinesis stream configured as its destination. </p>"
    },
    "KinesisStreamsOutputUpdate": {
      "type": "structure",
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the Amazon Kinesis stream where you want to write the output.</p>"
        },
        "RoleARNUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to access the stream on your behalf. You need to grant the necessary permissions to this role.</p>"
        }
      },
      "documentation": "<p> When updating an output configuration using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html\">UpdateApplication</a> operation, provides information about an Amazon Kinesis stream configured as the destination. </p>"
    },
    "LambdaOutput": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "RoleARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the destination Lambda function to write to.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf. You need to grant the necessary permissions to this role. </p>"
        }
      },
      "documentation": "<p>When configuring application output, identifies an AWS Lambda function as the destination. You provide the function Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the function on your behalf. </p>"
    },
    "LambdaOutputDescription": {
      "type": "structure",
      "members": {
        "ResourceARN": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the destination Lambda function.</p>"
        },
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function.</p>"
        }
      },
      "documentation": "<p>For an application output, describes the AWS Lambda function configured as its destination. </p>"
    },
    "LambdaOutputUpdate": {
      "type": "structure",
      "members": {
        "ResourceARNUpdate": {
          "shape": "ResourceARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the destination Lambda function.</p> <note> <p>To specify an earlier version of the Lambda function than the latest, include the Lambda function version in the Lambda function ARN. For more information about Lambda ARNs, see <a href=\"/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-lambda\">Example ARNs: AWS Lambda</a> </p> </note>"
        },
        "RoleARNUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to write to the destination function on your behalf. You need to grant the necessary permissions to this role. </p>"
        }
      },
      "documentation": "<p>When updating an output configuration using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html\">UpdateApplication</a> operation, provides information about an AWS Lambda function configured as the destination.</p>"
    },
    "ListApplicationsInputLimit": {
      "type": "integer",
      "max": 50,
      "min": 1
    },
    "ListApplicationsRequest": {
      "type": "structure",
      "members": {
        "Limit": {
          "shape": "ListApplicationsInputLimit",
          "documentation": "<p>Maximum number of applications to list.</p>"
        },
        "ExclusiveStartApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the application to start the list with. When using pagination to retrieve the list, you don't need to specify this parameter in the first request. However, in subsequent requests, you add the last application name from the previous response to get the next page of applications.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListApplicationsResponse": {
      "type": "structure",
      "required": [
        "ApplicationSummaries",
        "HasMoreApplications"
      ],
      "members": {
        "ApplicationSummaries": {
          "shape": "ApplicationSummaries",
          "documentation": "<p>List of <code>ApplicationSummary</code> objects. </p>"
        },
        "HasMoreApplications": {
          "shape": "BooleanObject",
          "documentation": "<p>Returns true if there are more applications to retrieve.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN"
      ],
      "members": {
        "ResourceARN": {
          "shape": "KinesisAnalyticsARN",
          "documentation": "<p>The ARN of the application for which to retrieve tags.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The key-value tags assigned to the application.</p>"
        }
      }
    },
    "LogStreamARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:.*"
    },
    "MappingParameters": {
      "type": "structure",
      "members": {
        "JSONMappingParameters": {
          "shape": "JSONMappingParameters",
          "documentation": "<p>Provides additional mapping information when JSON is the record format on the streaming source.</p>"
        },
        "CSVMappingParameters": {
          "shape": "CSVMappingParameters",
          "documentation": "<p>Provides additional mapping information when the record format uses delimiters (for example, CSV).</p>"
        }
      },
      "documentation": "<p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>"
    },
    "Output": {
      "type": "structure",
      "required": [
        "Name",
        "DestinationSchema"
      ],
      "members": {
        "Name": {
          "shape": "InAppStreamName",
          "documentation": "<p>Name of the in-application stream.</p>"
        },
        "KinesisStreamsOutput": {
          "shape": "KinesisStreamsOutput",
          "documentation": "<p>Identifies an Amazon Kinesis stream as the destination.</p>"
        },
        "KinesisFirehoseOutput": {
          "shape": "KinesisFirehoseOutput",
          "documentation": "<p>Identifies an Amazon Kinesis Firehose delivery stream as the destination.</p>"
        },
        "LambdaOutput": {
          "shape": "LambdaOutput",
          "documentation": "<p>Identifies an AWS Lambda function as the destination.</p>"
        },
        "DestinationSchema": {
          "shape": "DestinationSchema",
          "documentation": "<p>Describes the data format when records are written to the destination. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>.</p>"
        }
      },
      "documentation": "<p> Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p> <p/> <p>For limits on how many destinations an application can write and other limitations, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html\">Limits</a>. </p>"
    },
    "OutputDescription": {
      "type": "structure",
      "members": {
        "OutputId": {
          "shape": "Id",
          "documentation": "<p>A unique identifier for the output configuration.</p>"
        },
        "Name": {
          "shape": "InAppStreamName",
          "documentation": "<p>Name of the in-application stream configured as output.</p>"
        },
        "KinesisStreamsOutputDescription": {
          "shape": "KinesisStreamsOutputDescription",
          "documentation": "<p>Describes Amazon Kinesis stream configured as the destination where output is written.</p>"
        },
        "KinesisFirehoseOutputDescription": {
          "shape": "KinesisFirehoseOutputDescription",
          "documentation": "<p>Describes the Amazon Kinesis Firehose delivery stream configured as the destination where output is written.</p>"
        },
        "LambdaOutputDescription": {
          "shape": "LambdaOutputDescription",
          "documentation": "<p>Describes the AWS Lambda function configured as the destination where output is written.</p>"
        },
        "DestinationSchema": {
          "shape": "DestinationSchema",
          "documentation": "<p>Data format used for writing data to the destination.</p>"
        }
      },
      "documentation": "<p>Describes the application output configuration, which includes the in-application stream name and the destination where the stream data is written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p>"
    },
    "OutputDescriptions": {
      "type": "list",
      "member": {
        "shape": "OutputDescription"
      }
    },
    "OutputUpdate": {
      "type": "structure",
      "required": [
        "OutputId"
      ],
      "members": {
        "OutputId": {
          "shape": "Id",
          "documentation": "<p>Identifies the specific output configuration that you want to update.</p>"
        },
        "NameUpdate": {
          "shape": "InAppStreamName",
          "documentation": "<p>If you want to specify a different in-application stream for this output configuration, use this field to specify the new in-application stream name.</p>"
        },
        "KinesisStreamsOutputUpdate": {
          "shape": "KinesisStreamsOutputUpdate",
          "documentation": "<p>Describes an Amazon Kinesis stream as the destination for the output.</p>"
        },
        "KinesisFirehoseOutputUpdate": {
          "shape": "KinesisFirehoseOutputUpdate",
          "documentation": "<p>Describes an Amazon Kinesis Firehose delivery stream as the destination for the output.</p>"
        },
        "LambdaOutputUpdate": {
          "shape": "LambdaOutputUpdate",
          "documentation": "<p>Describes an AWS Lambda function as the destination for the output.</p>"
        },
        "DestinationSchemaUpdate": {
          "shape": "DestinationSchema",
          "documentation": "<p>Describes the data format when records are written to the destination. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html\">Configuring Application Output</a>.</p>"
        }
      },
      "documentation": "<p> Describes updates to the output configuration identified by the <code>OutputId</code>. </p>"
    },
    "OutputUpdates": {
      "type": "list",
      "member": {
        "shape": "OutputUpdate"
      }
    },
    "Outputs": {
      "type": "list",
      "member": {
        "shape": "Output"
      }
    },
    "ParsedInputRecord": {
      "type": "list",
      "member": {
        "shape": "ParsedInputRecordField"
      }
    },
    "ParsedInputRecordField": {
      "type": "string"
    },
    "ParsedInputRecords": {
      "type": "list",
      "member": {
        "shape": "ParsedInputRecord"
      }
    },
    "ProcessedInputRecord": {
      "type": "string"
    },
    "ProcessedInputRecords": {
      "type": "list",
      "member": {
        "shape": "ProcessedInputRecord"
      }
    },
    "RawInputRecord": {
      "type": "string"
    },
    "RawInputRecords": {
      "type": "list",
      "member": {
        "shape": "RawInputRecord"
      }
    },
    "RecordColumn": {
      "type": "structure",
      "required": [
        "Name",
        "SqlType"
      ],
      "members": {
        "Name": {
          "shape": "RecordColumnName",
          "documentation": "<p>Name of the column created in the in-application input stream or reference table.</p>"
        },
        "Mapping": {
          "shape": "RecordColumnMapping",
          "documentation": "<p>Reference to the data element in the streaming input or the reference data source. This element is required if the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_RecordFormat.html#analytics-Type-RecordFormat-RecordFormatTypel\">RecordFormatType</a> is <code>JSON</code>.</p>"
        },
        "SqlType": {
          "shape": "RecordColumnSqlType",
          "documentation": "<p>Type of column created in the in-application input stream or reference table.</p>"
        }
      },
      "documentation": "<p>Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.</p> <p>Also used to describe the format of the reference data source.</p>"
    },
    "RecordColumnDelimiter": {
      "type": "string",
      "min": 1
    },
    "RecordColumnMapping": {
      "type": "string"
    },
    "RecordColumnName": {
      "type": "string"
    },
    "RecordColumnSqlType": {
      "type": "string",
      "min": 1
    },
    "RecordColumns": {
      "type": "list",
      "member": {
        "shape": "RecordColumn"
      },
      "max": 1000,
      "min": 1
    },
    "RecordEncoding": {
      "type": "string",
      "pattern": "UTF-8"
    },
    "RecordFormat": {
      "type": "structure",
      "required": [
        "RecordFormatType"
      ],
      "members": {
        "RecordFormatType": {
          "shape": "RecordFormatType",
          "documentation": "<p>The type of record format.</p>"
        },
        "MappingParameters": {
          "shape": "MappingParameters",
          "documentation": "<p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>"
        }
      },
      "documentation": "<p> Describes the record format and relevant mapping information that should be applied to schematize the records on the stream. </p>"
    },
    "RecordFormatType": {
      "type": "string",
      "enum": [
        "JSON",
        "CSV"
      ]
    },
    "RecordRowDelimiter": {
      "type": "string",
      "min": 1
    },
    "RecordRowPath": {
      "type": "string",
      "min": 1
    },
    "ReferenceDataSource": {
      "type": "structure",
      "required": [
        "TableName",
        "ReferenceSchema"
      ],
      "members": {
        "TableName": {
          "shape": "InAppTableName",
          "documentation": "<p>Name of the in-application table to create.</p>"
        },
        "S3ReferenceDataSource": {
          "shape": "S3ReferenceDataSource",
          "documentation": "<p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf. An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <code>UpdateApplication</code> operation to trigger reloading of data into your application. </p>"
        },
        "ReferenceSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
        }
      },
      "documentation": "<p>Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.</p>"
    },
    "ReferenceDataSourceDescription": {
      "type": "structure",
      "required": [
        "ReferenceId",
        "TableName",
        "S3ReferenceDataSourceDescription"
      ],
      "members": {
        "ReferenceId": {
          "shape": "Id",
          "documentation": "<p>ID of the reference data source. This is the ID that Amazon Kinesis Analytics assigns when you add the reference data source to your application using the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_AddApplicationReferenceDataSource.html\">AddApplicationReferenceDataSource</a> operation.</p>"
        },
        "TableName": {
          "shape": "InAppTableName",
          "documentation": "<p>The in-application table name created by the specific reference data source configuration.</p>"
        },
        "S3ReferenceDataSourceDescription": {
          "shape": "S3ReferenceDataSourceDescription",
          "documentation": "<p>Provides the S3 bucket name, the object key name that contains the reference data. It also provides the Amazon Resource Name (ARN) of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application reference table.</p>"
        },
        "ReferenceSchema": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
        }
      },
      "documentation": "<p>Describes the reference data source configured for an application.</p>"
    },
    "ReferenceDataSourceDescriptions": {
      "type": "list",
      "member": {
        "shape": "ReferenceDataSourceDescription"
      }
    },
    "ReferenceDataSourceUpdate": {
      "type": "structure",
      "required": [
        "ReferenceId"
      ],
      "members": {
        "ReferenceId": {
          "shape": "Id",
          "documentation": "<p>ID of the reference data source being updated. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get this value.</p>"
        },
        "TableNameUpdate": {
          "shape": "InAppTableName",
          "documentation": "<p>In-application table name that is created by this update.</p>"
        },
        "S3ReferenceDataSourceUpdate": {
          "shape": "S3ReferenceDataSourceUpdate",
          "documentation": "<p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>"
        },
        "ReferenceSchemaUpdate": {
          "shape": "SourceSchema",
          "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream. </p>"
        }
      },
      "documentation": "<p>When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.</p>"
    },
    "ReferenceDataSourceUpdates": {
      "type": "list",
      "member": {
        "shape": "ReferenceDataSourceUpdate"
      }
    },
    "ResourceARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:.*"
    },
    "RoleARN": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:aws:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+"
    },
    "S3Configuration": {
      "type": "structure",
      "required": [
        "RoleARN",
        "BucketARN",
        "FileKey"
      ],
      "members": {
        "RoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>IAM ARN of the role used to access the data.</p>"
        },
        "BucketARN": {
          "shape": "BucketARN",
          "documentation": "<p>ARN of the S3 bucket that contains the data.</p>"
        },
        "FileKey": {
          "shape": "FileKey",
          "documentation": "<p>The name of the object that contains the data.</p>"
        }
      },
      "documentation": "<p>Provides a description of an Amazon S3 data source, including the Amazon Resource Name (ARN) of the S3 bucket, the ARN of the IAM role that is used to access the bucket, and the name of the Amazon S3 object that contains the data.</p>"
    },
    "S3ReferenceDataSource": {
      "type": "structure",
      "required": [
        "BucketARN",
        "FileKey",
        "ReferenceRoleARN"
      ],
      "members": {
        "BucketARN": {
          "shape": "BucketARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the S3 bucket.</p>"
        },
        "FileKey": {
          "shape": "FileKey",
          "documentation": "<p>Object key name containing reference data.</p>"
        },
        "ReferenceRoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that the service can assume to read data on your behalf. This role must have permission for the <code>s3:GetObject</code> action on the object and trust policy that allows Amazon Kinesis Analytics service principal to assume this role.</p>"
        }
      },
      "documentation": "<p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.</p> <p>An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_UpdateApplication.html\">UpdateApplication</a> operation to trigger reloading of data into your application.</p>"
    },
    "S3ReferenceDataSourceDescription": {
      "type": "structure",
      "required": [
        "BucketARN",
        "FileKey",
        "ReferenceRoleARN"
      ],
      "members": {
        "BucketARN": {
          "shape": "BucketARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the S3 bucket.</p>"
        },
        "FileKey": {
          "shape": "FileKey",
          "documentation": "<p>Amazon S3 object key name.</p>"
        },
        "ReferenceRoleARN": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf to populate the in-application reference table.</p>"
        }
      },
      "documentation": "<p>Provides the bucket name and object key name that stores the reference data.</p>"
    },
    "S3ReferenceDataSourceUpdate": {
      "type": "structure",
      "members": {
        "BucketARNUpdate": {
          "shape": "BucketARN",
          "documentation": "<p>Amazon Resource Name (ARN) of the S3 bucket.</p>"
        },
        "FileKeyUpdate": {
          "shape": "FileKey",
          "documentation": "<p>Object key name.</p>"
        },
        "ReferenceRoleARNUpdate": {
          "shape": "RoleARN",
          "documentation": "<p>ARN of the IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object and populate the in-application.</p>"
        }
      },
      "documentation": "<p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>"
    },
    "SourceSchema": {
      "type": "structure",
      "required": [
        "RecordFormat",
        "RecordColumns"
      ],
      "members": {
        "RecordFormat": {
          "shape": "RecordFormat",
          "documentation": "<p>Specifies the format of the records on the streaming source.</p>"
        },
        "RecordEncoding": {
          "shape": "RecordEncoding",
          "documentation": "<p>Specifies the encoding of the records in the streaming source. For example, UTF-8.</p>"
        },
        "RecordColumns": {
          "shape": "RecordColumns",
          "documentation": "<p>A list of <code>RecordColumn</code> objects.</p>"
        }
      },
      "documentation": "<p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>"
    },
    "StartApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "InputConfigurations"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the application.</p>"
        },
        "InputConfigurations": {
          "shape": "InputConfigurations",
          "documentation": "<p>Identifies the specific input, by ID, that the application starts consuming. Amazon Kinesis Analytics starts reading the streaming source associated with the input. You can also specify where in the streaming source you want Amazon Kinesis Analytics to start reading.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "StartApplicationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "StopApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the running application to stop.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "StopApplicationResponse": {
      "type": "structure",
      "members": {},
      "documentation": "<p/>"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key of the key-value tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the key-value tag. The value is optional.</p>"
        }
      },
      "documentation": "<p>A key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html\">Using Tagging</a>.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "Tags"
      ],
      "members": {
        "ResourceARN": {
          "shape": "KinesisAnalyticsARN",
          "documentation": "<p>The ARN of the application to assign the tags.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The key-value tags to assign to the application.</p>"
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
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 1
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceARN",
        "TagKeys"
      ],
      "members": {
        "ResourceARN": {
          "shape": "KinesisAnalyticsARN",
          "documentation": "<p>The ARN of the Kinesis Analytics application from which to remove the tags.</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>A list of keys of tags to remove from the specified application.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateApplicationRequest": {
      "type": "structure",
      "required": [
        "ApplicationName",
        "CurrentApplicationVersionId",
        "ApplicationUpdate"
      ],
      "members": {
        "ApplicationName": {
          "shape": "ApplicationName",
          "documentation": "<p>Name of the Amazon Kinesis Analytics application to update.</p>"
        },
        "CurrentApplicationVersionId": {
          "shape": "ApplicationVersionId",
          "documentation": "<p>The current application version ID. You can use the <a href=\"https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html\">DescribeApplication</a> operation to get this value.</p>"
        },
        "ApplicationUpdate": {
          "shape": "ApplicationUpdate",
          "documentation": "<p>Describes application updates.</p>"
        }
      }
    },
    "UpdateApplicationResponse": {
      "type": "structure",
      "members": {}
    }
  },
  "documentation": "<fullname>Amazon Kinesis Analytics</fullname> <p> <b>Overview</b> </p> <note> <p>This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see <a href=\"/kinesisanalytics/latest/apiv2/Welcome.html\">Amazon Kinesis Data Analytics API V2 Documentation</a>.</p> </note> <p>This is the <i>Amazon Kinesis Analytics v1 API Reference</i>. The Amazon Kinesis Analytics Developer Guide provides additional information. </p>"
}
]===]))
