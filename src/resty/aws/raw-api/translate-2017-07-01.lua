local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-07-01",
    "endpointPrefix": "translate",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon Translate",
    "serviceId": "Translate",
    "signatureVersion": "v4",
    "signingName": "translate",
    "targetPrefix": "AWSShineFrontendService_20170701",
    "uid": "translate-2017-07-01"
  },
  "operations": {
    "DeleteTerminology": {
      "name": "DeleteTerminology",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTerminologyRequest"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>A synchronous action that deletes a custom terminology.</p>"
    },
    "DescribeTextTranslationJob": {
      "name": "DescribeTextTranslationJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTextTranslationJobRequest"
      },
      "output": {
        "shape": "DescribeTextTranslationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets the properties associated with an asycnhronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on.</p>"
    },
    "GetTerminology": {
      "name": "GetTerminology",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetTerminologyRequest"
      },
      "output": {
        "shape": "GetTerminologyResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Retrieves a custom terminology.</p>"
    },
    "ImportTerminology": {
      "name": "ImportTerminology",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportTerminologyRequest"
      },
      "output": {
        "shape": "ImportTerminologyResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name. Importing a terminology with the same name as an existing one will merge the terminologies based on the chosen merge strategy. Currently, the only supported merge strategy is OVERWRITE, and so the imported terminology will overwrite an existing terminology of the same name.</p> <p>If you import a terminology that overwrites an existing one, the new terminology take up to 10 minutes to fully propagate and be available for use in a translation due to cache policies with the DataPlane service that performs the translations.</p>"
    },
    "ListTerminologies": {
      "name": "ListTerminologies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTerminologiesRequest"
      },
      "output": {
        "shape": "ListTerminologiesResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Provides a list of custom terminologies associated with your account.</p>"
    },
    "ListTextTranslationJobs": {
      "name": "ListTextTranslationJobs",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTextTranslationJobsRequest"
      },
      "output": {
        "shape": "ListTextTranslationJobsResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InvalidFilterException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Gets a list of the batch translation jobs that you have submitted.</p>"
    },
    "StartTextTranslationJob": {
      "name": "StartTextTranslationJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartTextTranslationJobRequest"
      },
      "output": {
        "shape": "StartTextTranslationJobResponse"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedLanguagePairException"
        },
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Starts an asynchronous batch translation job. Batch translation jobs can be used to translate large volumes of text across multiple documents at once. For more information, see <a>async</a>.</p> <p>Batch translation jobs can be described with the <a>DescribeTextTranslationJob</a> operation, listed with the <a>ListTextTranslationJobs</a> operation, and stopped with the <a>StopTextTranslationJob</a> operation.</p> <note> <p>Amazon Translate does not support batch translation of multiple source languages at once.</p> </note>"
    },
    "StopTextTranslationJob": {
      "name": "StopTextTranslationJob",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopTextTranslationJobRequest"
      },
      "output": {
        "shape": "StopTextTranslationJobResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "InternalServerException"
        }
      ],
      "documentation": "<p>Stops an asynchronous batch translation job that is in progress.</p> <p>If the job's state is <code>IN_PROGRESS</code>, the job will be marked for termination and put into the <code>STOP_REQUESTED</code> state. If the job completes before it can be stopped, it is put into the <code>COMPLETED</code> state. Otherwise, the job is put into the <code>STOPPED</code> state.</p> <p>Asynchronous batch translation jobs are started with the <a>StartTextTranslationJob</a> operation. You can use the <a>DescribeTextTranslationJob</a> or <a>ListTextTranslationJobs</a> operations to get a batch translation job's <code>JobId</code>.</p>"
    },
    "TranslateText": {
      "name": "TranslateText",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TranslateTextRequest"
      },
      "output": {
        "shape": "TranslateTextResponse"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "TextSizeLimitExceededException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedLanguagePairException"
        },
        {
          "shape": "DetectedLanguageLowConfidenceException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ServiceUnavailableException"
        }
      ],
      "documentation": "<p>Translates input text from the source language to the target language. For a list of available languages and language codes, see <a>what-is-languages</a>.</p>"
    }
  },
  "shapes": {
    "AppliedTerminology": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the custom terminology applied to the input text by Amazon Translate for the translated text response.</p>"
        },
        "Terms": {
          "shape": "TermList",
          "documentation": "<p>The specific terms of the custom terminology applied to the input text by Amazon Translate for the translated text response. A maximum of 250 terms will be returned, and the specific terms applied will be the first 250 terms in the source text. </p>"
        }
      },
      "documentation": "<p>The custom terminology applied to the input text by Amazon Translate for the translated text response. This is optional in the response and will only be present if you specified terminology input in the request. Currently, only one terminology can be applied per TranslateText request.</p>"
    },
    "AppliedTerminologyList": {
      "type": "list",
      "member": {
        "shape": "AppliedTerminology"
      }
    },
    "BoundedLengthString": {
      "type": "string",
      "max": 5000,
      "min": 1,
      "pattern": "[\\P{M}\\p{M}]{1,5000}"
    },
    "ClientTokenString": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[a-zA-Z0-9-]+$"
    },
    "ContentType": {
      "type": "string",
      "max": 256,
      "pattern": "^[-\\w.]+\\/[-\\w.+]+$"
    },
    "DeleteTerminologyRequest": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the custom terminology being deleted. </p>"
        }
      }
    },
    "DescribeTextTranslationJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier that Amazon Translate generated for the job. The <a>StartTextTranslationJob</a> operation returns this identifier in its response.</p>"
        }
      }
    },
    "DescribeTextTranslationJobResponse": {
      "type": "structure",
      "members": {
        "TextTranslationJobProperties": {
          "shape": "TextTranslationJobProperties",
          "documentation": "<p>An object that contains the properties associated with an asynchronous batch translation job.</p>"
        }
      }
    },
    "Description": {
      "type": "string",
      "max": 256,
      "pattern": "[\\P{M}\\p{M}]{0,256}"
    },
    "EncryptionKey": {
      "type": "structure",
      "required": [
        "Type",
        "Id"
      ],
      "members": {
        "Type": {
          "shape": "EncryptionKeyType",
          "documentation": "<p>The type of encryption key used by Amazon Translate to encrypt custom terminologies.</p>"
        },
        "Id": {
          "shape": "EncryptionKeyID",
          "documentation": "<p>The Amazon Resource Name (ARN) of the encryption key being used to encrypt the custom terminology.</p>"
        }
      },
      "documentation": "<p>The encryption key used to encrypt the custom terminologies used by Amazon Translate.</p>"
    },
    "EncryptionKeyID": {
      "type": "string",
      "max": 400,
      "min": 1,
      "pattern": "(arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:kms:)?([a-z]{2}-[a-z]+(-[a-z]+)?-\\d:)?(\\d{12}:)?(((key/)?[a-zA-Z0-9-_]+)|(alias/[a-zA-Z0-9:/_-]+))"
    },
    "EncryptionKeyType": {
      "type": "string",
      "enum": [
        "KMS"
      ]
    },
    "GetTerminologyRequest": {
      "type": "structure",
      "required": [
        "Name",
        "TerminologyDataFormat"
      ],
      "members": {
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the custom terminology being retrieved.</p>"
        },
        "TerminologyDataFormat": {
          "shape": "TerminologyDataFormat",
          "documentation": "<p>The data format of the custom terminology being retrieved, either CSV or TMX.</p>"
        }
      }
    },
    "GetTerminologyResponse": {
      "type": "structure",
      "members": {
        "TerminologyProperties": {
          "shape": "TerminologyProperties",
          "documentation": "<p>The properties of the custom terminology being retrieved.</p>"
        },
        "TerminologyDataLocation": {
          "shape": "TerminologyDataLocation",
          "documentation": "<p>The data location of the custom terminology being retrieved. The custom terminology file is returned in a presigned url that has a 30 minute expiration.</p>"
        }
      }
    },
    "IamRoleArn": {
      "type": "string",
      "max": 2048,
      "min": 20,
      "pattern": "arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+"
    },
    "ImportTerminologyRequest": {
      "type": "structure",
      "required": [
        "Name",
        "MergeStrategy",
        "TerminologyData"
      ],
      "members": {
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the custom terminology being imported.</p>"
        },
        "MergeStrategy": {
          "shape": "MergeStrategy",
          "documentation": "<p>The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE merge strategy is supported. In this case, the imported terminology will overwrite an existing terminology of the same name.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the custom terminology being imported.</p>"
        },
        "TerminologyData": {
          "shape": "TerminologyData",
          "documentation": "<p>The terminology data for the custom terminology being imported.</p>"
        },
        "EncryptionKey": {
          "shape": "EncryptionKey",
          "documentation": "<p>The encryption key for the custom terminology being imported.</p>"
        }
      }
    },
    "ImportTerminologyResponse": {
      "type": "structure",
      "members": {
        "TerminologyProperties": {
          "shape": "TerminologyProperties",
          "documentation": "<p>The properties of the custom terminology being imported.</p>"
        }
      }
    },
    "InputDataConfig": {
      "type": "structure",
      "required": [
        "S3Uri",
        "ContentType"
      ],
      "members": {
        "S3Uri": {
          "shape": "S3Uri",
          "documentation": "<p>The URI of the AWS S3 folder that contains the input file. The folder must be in the same Region as the API endpoint you are calling.</p>"
        },
        "ContentType": {
          "shape": "ContentType",
          "documentation": "<p>The multipurpose internet mail extension (MIME) type of the input files. Valid values are <code>text/plain</code> for plaintext files and <code>text/html</code> for HTML files.</p>"
        }
      },
      "documentation": "<p>The input configuration properties for requesting a batch translation job.</p>"
    },
    "Integer": {
      "type": "integer"
    },
    "JobDetails": {
      "type": "structure",
      "members": {
        "TranslatedDocumentsCount": {
          "shape": "Integer",
          "documentation": "<p>The number of documents successfully processed during a translation job.</p>"
        },
        "DocumentsWithErrorsCount": {
          "shape": "Integer",
          "documentation": "<p>The number of documents that could not be processed during a translation job.</p>"
        },
        "InputDocumentsCount": {
          "shape": "Integer",
          "documentation": "<p>The number of documents used as input in a translation job.</p>"
        }
      },
      "documentation": "<p>The number of documents successfully and unsuccessfully processed during a translation job.</p>"
    },
    "JobId": {
      "type": "string",
      "max": 32,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"
    },
    "JobName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$"
    },
    "JobStatus": {
      "type": "string",
      "enum": [
        "SUBMITTED",
        "IN_PROGRESS",
        "COMPLETED",
        "COMPLETED_WITH_ERROR",
        "FAILED",
        "STOP_REQUESTED",
        "STOPPED"
      ]
    },
    "LanguageCodeString": {
      "type": "string",
      "max": 5,
      "min": 2
    },
    "LanguageCodeStringList": {
      "type": "list",
      "member": {
        "shape": "LanguageCodeString"
      }
    },
    "ListTerminologiesRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If the result of the request to ListTerminologies was truncated, include the NextToken to fetch the next group of custom terminologies. </p>"
        },
        "MaxResults": {
          "shape": "MaxResultsInteger",
          "documentation": "<p>The maximum number of custom terminologies returned per list request.</p>"
        }
      }
    },
    "ListTerminologiesResponse": {
      "type": "structure",
      "members": {
        "TerminologyPropertiesList": {
          "shape": "TerminologyPropertiesList",
          "documentation": "<p>The properties list of the custom terminologies returned on the list request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> If the response to the ListTerminologies was truncated, the NextToken fetches the next group of custom terminologies.</p>"
        }
      }
    },
    "ListTextTranslationJobsRequest": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "TextTranslationJobFilter",
          "documentation": "<p>The parameters that specify which batch translation jobs to retrieve. Filters include job name, job status, and submission time. You can only set one filter at a time.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to request the next page of results.</p>"
        },
        "MaxResults": {
          "shape": "MaxResultsInteger",
          "documentation": "<p>The maximum number of results to return in each page. The default value is 100.</p>"
        }
      }
    },
    "ListTextTranslationJobsResponse": {
      "type": "structure",
      "members": {
        "TextTranslationJobPropertiesList": {
          "shape": "TextTranslationJobPropertiesList",
          "documentation": "<p>A list containing the properties of each job that is returned.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The token to use to retreive the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "MaxResultsInteger": {
      "type": "integer",
      "max": 500,
      "min": 1
    },
    "MergeStrategy": {
      "type": "string",
      "enum": [
        "OVERWRITE"
      ]
    },
    "NextToken": {
      "type": "string",
      "max": 8192,
      "pattern": "\\p{ASCII}{0,8192}"
    },
    "OutputDataConfig": {
      "type": "structure",
      "required": [
        "S3Uri"
      ],
      "members": {
        "S3Uri": {
          "shape": "S3Uri",
          "documentation": "<p>The URI of the S3 folder that contains a translation job's output file. The folder must be in the same Region as the API endpoint that you are calling.</p>"
        }
      },
      "documentation": "<p>The output configuration properties for a batch translation job.</p>"
    },
    "ResourceName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^([A-Za-z0-9-]_?)+$"
    },
    "ResourceNameList": {
      "type": "list",
      "member": {
        "shape": "ResourceName"
      }
    },
    "S3Uri": {
      "type": "string",
      "max": 1024,
      "pattern": "s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"
    },
    "StartTextTranslationJobRequest": {
      "type": "structure",
      "required": [
        "InputDataConfig",
        "OutputDataConfig",
        "DataAccessRoleArn",
        "SourceLanguageCode",
        "TargetLanguageCodes",
        "ClientToken"
      ],
      "members": {
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The name of the batch translation job to be performed.</p>"
        },
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>Specifies the format and S3 location of the input documents for the translation job.</p>"
        },
        "OutputDataConfig": {
          "shape": "OutputDataConfig",
          "documentation": "<p>Specifies the S3 folder to which your job output will be saved. </p>"
        },
        "DataAccessRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that grants Amazon Translate read access to your input data. For more nformation, see <a>identity-and-access-management</a>.</p>"
        },
        "SourceLanguageCode": {
          "shape": "LanguageCodeString",
          "documentation": "<p>The language code of the input language. For a list of language codes, see <a>what-is-languages</a>.</p> <p>Amazon Translate does not automatically detect a source language during batch translation jobs.</p>"
        },
        "TargetLanguageCodes": {
          "shape": "TargetLanguageCodeStringList",
          "documentation": "<p>The language code of the output language.</p>"
        },
        "TerminologyNames": {
          "shape": "ResourceNameList",
          "documentation": "<p>The name of the terminology to use in the batch translation job. For a list of available terminologies, use the <a>ListTerminologies</a> operation.</p>"
        },
        "ClientToken": {
          "shape": "ClientTokenString",
          "documentation": "<p>The client token of the EC2 instance calling the request. This token is auto-generated when using the Amazon Translate SDK. Otherwise, use the <a href=\"docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html\">DescribeInstances</a> EC2 operation to retreive an instance's client token. For more information, see <a href=\"docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html#client-tokens\">Client Tokens</a> in the EC2 User Guide.</p>",
          "idempotencyToken": true
        }
      }
    },
    "StartTextTranslationJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The identifier generated for the job. To get the status of a job, use this ID with the <a>DescribeTextTranslationJob</a> operation.</p>"
        },
        "JobStatus": {
          "shape": "JobStatus",
          "documentation": "<p>The status of the job. Possible values include:</p> <ul> <li> <p> <code>SUBMITTED</code> - The job has been received and is queued for processing.</p> </li> <li> <p> <code>IN_PROGRESS</code> - Amazon Translate is processing the job.</p> </li> <li> <p> <code>COMPLETED</code> - The job was successfully completed and the output is available.</p> </li> <li> <p> <code>COMPLETED_WITH_ERRORS</code> - The job was completed with errors. The errors can be analyzed in the job's output.</p> </li> <li> <p> <code>FAILED</code> - The job did not complete. To get details, use the <a>DescribeTextTranslationJob</a> operation.</p> </li> <li> <p> <code>STOP_REQUESTED</code> - The user who started the job has requested that it be stopped.</p> </li> <li> <p> <code>STOPPED</code> - The job has been stopped.</p> </li> </ul>"
        }
      }
    },
    "StopTextTranslationJobRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The job ID of the job to be stopped.</p>"
        }
      }
    },
    "StopTextTranslationJobResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The job ID of the stopped batch translation job.</p>"
        },
        "JobStatus": {
          "shape": "JobStatus",
          "documentation": "<p>The status of the designated job. Upon successful completion, the job's status will be <code>STOPPED</code>.</p>"
        }
      }
    },
    "String": {
      "type": "string",
      "max": 10000,
      "pattern": "[\\P{M}\\p{M}]{0,10000}"
    },
    "TargetLanguageCodeStringList": {
      "type": "list",
      "member": {
        "shape": "LanguageCodeString"
      },
      "max": 1,
      "min": 1
    },
    "Term": {
      "type": "structure",
      "members": {
        "SourceText": {
          "shape": "String",
          "documentation": "<p>The source text of the term being translated by the custom terminology.</p>"
        },
        "TargetText": {
          "shape": "String",
          "documentation": "<p>The target text of the term being translated by the custom terminology.</p>"
        }
      },
      "documentation": "<p>The term being translated by the custom terminology.</p>"
    },
    "TermList": {
      "type": "list",
      "member": {
        "shape": "Term"
      }
    },
    "TerminologyArn": {
      "type": "string",
      "pattern": "^arn:aws((-us-gov)|(-iso)|(-iso-b)|(-cn))?:translate:[a-zA-Z0-9-]+:[0-9]{12}:terminology/.+?/.+?$"
    },
    "TerminologyData": {
      "type": "structure",
      "required": [
        "File",
        "Format"
      ],
      "members": {
        "File": {
          "shape": "TerminologyFile",
          "documentation": "<p>The file containing the custom terminology data. Your version of the AWS SDK performs a Base64-encoding on this field before sending a request to the AWS service. Users of the SDK should not perform Base64-encoding themselves.</p>"
        },
        "Format": {
          "shape": "TerminologyDataFormat",
          "documentation": "<p>The data format of the custom terminology. Either CSV or TMX.</p>"
        }
      },
      "documentation": "<p>The data associated with the custom terminology.</p>"
    },
    "TerminologyDataFormat": {
      "type": "string",
      "enum": [
        "CSV",
        "TMX"
      ]
    },
    "TerminologyDataLocation": {
      "type": "structure",
      "required": [
        "RepositoryType",
        "Location"
      ],
      "members": {
        "RepositoryType": {
          "shape": "String",
          "documentation": "<p>The repository type for the custom terminology data.</p>"
        },
        "Location": {
          "shape": "String",
          "documentation": "<p>The location of the custom terminology data.</p>"
        }
      },
      "documentation": "<p>The location of the custom terminology data.</p>"
    },
    "TerminologyFile": {
      "type": "blob",
      "max": 10485760,
      "sensitive": true
    },
    "TerminologyProperties": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The name of the custom terminology.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>The description of the custom terminology properties.</p>"
        },
        "Arn": {
          "shape": "TerminologyArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the custom terminology. </p>"
        },
        "SourceLanguageCode": {
          "shape": "LanguageCodeString",
          "documentation": "<p>The language code for the source text of the translation request for which the custom terminology is being used.</p>"
        },
        "TargetLanguageCodes": {
          "shape": "LanguageCodeStringList",
          "documentation": "<p>The language codes for the target languages available with the custom terminology file. All possible target languages are returned in array.</p>"
        },
        "EncryptionKey": {
          "shape": "EncryptionKey",
          "documentation": "<p>The encryption key for the custom terminology.</p>"
        },
        "SizeBytes": {
          "shape": "Integer",
          "documentation": "<p>The size of the file used when importing a custom terminology.</p>"
        },
        "TermCount": {
          "shape": "Integer",
          "documentation": "<p>The number of terms included in the custom terminology.</p>"
        },
        "CreatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the custom terminology was created, based on the timestamp.</p>"
        },
        "LastUpdatedAt": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the custom terminology was last update, based on the timestamp.</p>"
        }
      },
      "documentation": "<p>The properties of the custom terminology.</p>"
    },
    "TerminologyPropertiesList": {
      "type": "list",
      "member": {
        "shape": "TerminologyProperties"
      }
    },
    "TextTranslationJobFilter": {
      "type": "structure",
      "members": {
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>Filters the list of jobs by name.</p>"
        },
        "JobStatus": {
          "shape": "JobStatus",
          "documentation": "<p>Filters the list of jobs based by job status.</p>"
        },
        "SubmittedBeforeTime": {
          "shape": "Timestamp",
          "documentation": "<p>Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted before the specified time. Jobs are returned in ascending order, oldest to newest.</p>"
        },
        "SubmittedAfterTime": {
          "shape": "Timestamp",
          "documentation": "<p>Filters the list of jobs based on the time that the job was submitted for processing and returns only the jobs submitted after the specified time. Jobs are returned in descending order, newest to oldest.</p>"
        }
      },
      "documentation": "<p>Provides information for filtering a list of translation jobs. For more information, see <a>ListTextTranslationJobs</a>.</p>"
    },
    "TextTranslationJobProperties": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID of the translation job.</p>"
        },
        "JobName": {
          "shape": "JobName",
          "documentation": "<p>The user-defined name of the translation job.</p>"
        },
        "JobStatus": {
          "shape": "JobStatus",
          "documentation": "<p>The status of the translation job.</p>"
        },
        "JobDetails": {
          "shape": "JobDetails",
          "documentation": "<p>The number of documents successfully and unsuccessfully processed during the translation job.</p>"
        },
        "SourceLanguageCode": {
          "shape": "LanguageCodeString",
          "documentation": "<p>The language code of the language of the source text. The language must be a language supported by Amazon Translate.</p>"
        },
        "TargetLanguageCodes": {
          "shape": "TargetLanguageCodeStringList",
          "documentation": "<p>The language code of the language of the target text. The language must be a language supported by Amazon Translate.</p>"
        },
        "TerminologyNames": {
          "shape": "ResourceNameList",
          "documentation": "<p>A list containing the names of the terminologies applied to a translation job. Only one terminology can be applied per <a>StartTextTranslationJob</a> request at this time.</p>"
        },
        "Message": {
          "shape": "UnboundedLengthString",
          "documentation": "<p>An explanation of any errors that may have occured during the translation job.</p>"
        },
        "SubmittedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the translation job was submitted.</p>"
        },
        "EndTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time at which the translation job ended.</p>"
        },
        "InputDataConfig": {
          "shape": "InputDataConfig",
          "documentation": "<p>The input configuration properties that were specified when the job was requested.</p>"
        },
        "OutputDataConfig": {
          "shape": "OutputDataConfig",
          "documentation": "<p>The output configuration properties that were specified when the job was requested.</p>"
        },
        "DataAccessRoleArn": {
          "shape": "IamRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an AWS Identity Access and Management (IAM) role that granted Amazon Translate read access to the job's input data.</p>"
        }
      },
      "documentation": "<p>Provides information about a translation job.</p>"
    },
    "TextTranslationJobPropertiesList": {
      "type": "list",
      "member": {
        "shape": "TextTranslationJobProperties"
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TranslateTextRequest": {
      "type": "structure",
      "required": [
        "Text",
        "SourceLanguageCode",
        "TargetLanguageCode"
      ],
      "members": {
        "Text": {
          "shape": "BoundedLengthString",
          "documentation": "<p>The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on your character set, this may be fewer than 5,000 characters.</p>"
        },
        "TerminologyNames": {
          "shape": "ResourceNameList",
          "documentation": "<p>The name of the terminology list file to be used in the TranslateText request. You can use 1 terminology list at most in a <code>TranslateText</code> request. Terminology lists can contain a maximum of 256 terms.</p>"
        },
        "SourceLanguageCode": {
          "shape": "LanguageCodeString",
          "documentation": "<p>The language code for the language of the source text. The language must be a language supported by Amazon Translate. For a list of language codes, see <a>what-is-languages</a>.</p> <p>To have Amazon Translate determine the source language of your text, you can specify <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify <code>auto</code>, Amazon Translate will call <a href=\"https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html\">Amazon Comprehend</a> to determine the source language.</p>"
        },
        "TargetLanguageCode": {
          "shape": "LanguageCodeString",
          "documentation": "<p>The language code requested for the language of the target text. The language must be a language supported by Amazon Translate.</p>"
        }
      }
    },
    "TranslateTextResponse": {
      "type": "structure",
      "required": [
        "TranslatedText",
        "SourceLanguageCode",
        "TargetLanguageCode"
      ],
      "members": {
        "TranslatedText": {
          "shape": "String",
          "documentation": "<p>The translated text.</p>"
        },
        "SourceLanguageCode": {
          "shape": "LanguageCodeString",
          "documentation": "<p>The language code for the language of the source text.</p>"
        },
        "TargetLanguageCode": {
          "shape": "LanguageCodeString",
          "documentation": "<p>The language code for the language of the target text. </p>"
        },
        "AppliedTerminologies": {
          "shape": "AppliedTerminologyList",
          "documentation": "<p>The names of the custom terminologies applied to the input text by Amazon Translate for the translated text response.</p>"
        }
      }
    },
    "UnboundedLengthString": {
      "type": "string"
    }
  },
  "documentation": "<p>Provides translation between one source language and another of the same set of languages.</p>"
}
]===]))
