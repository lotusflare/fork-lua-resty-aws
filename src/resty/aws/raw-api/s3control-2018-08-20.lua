local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-08-20",
    "endpointPrefix": "s3-control",
    "protocol": "rest-xml",
    "serviceFullName": "AWS S3 Control",
    "serviceId": "S3 Control",
    "signatureVersion": "s3v4",
    "signingName": "s3",
    "uid": "s3control-2018-08-20"
  },
  "operations": {
    "CreateAccessPoint": {
      "name": "CreateAccessPoint",
      "http": {
        "method": "PUT",
        "requestUri": "/v20180820/accesspoint/{name}"
      },
      "input": {
        "shape": "CreateAccessPointRequest",
        "locationName": "CreateAccessPointRequest",
        "xmlNamespace": {
          "uri": "http://awss3control.amazonaws.com/doc/2018-08-20/"
        }
      },
      "documentation": "<p>Creates an access point and associates it with the specified bucket.</p>"
    },
    "CreateJob": {
      "name": "CreateJob",
      "http": {
        "method": "POST",
        "requestUri": "/v20180820/jobs"
      },
      "input": {
        "shape": "CreateJobRequest",
        "locationName": "CreateJobRequest",
        "xmlNamespace": {
          "uri": "http://awss3control.amazonaws.com/doc/2018-08-20/"
        }
      },
      "output": {
        "shape": "CreateJobResult"
      },
      "errors": [
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "IdempotencyException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>You can use Amazon S3 Batch Operations to perform large-scale Batch Operations on Amazon S3 objects. Amazon S3 Batch Operations can execute a single operation or action on lists of Amazon S3 objects that you specify. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html\">Amazon S3 Batch Operations</a> in the Amazon Simple Storage Service Developer Guide.</p> <p>Related actions include:</p> <ul> <li> <p> <a>DescribeJob</a> </p> </li> <li> <p> <a>ListJobs</a> </p> </li> <li> <p> <a>UpdateJobPriority</a> </p> </li> <li> <p> <a>UpdateJobStatus</a> </p> </li> </ul>"
    },
    "DeleteAccessPoint": {
      "name": "DeleteAccessPoint",
      "http": {
        "method": "DELETE",
        "requestUri": "/v20180820/accesspoint/{name}"
      },
      "input": {
        "shape": "DeleteAccessPointRequest"
      },
      "documentation": "<p>Deletes the specified access point.</p>"
    },
    "DeleteAccessPointPolicy": {
      "name": "DeleteAccessPointPolicy",
      "http": {
        "method": "DELETE",
        "requestUri": "/v20180820/accesspoint/{name}/policy"
      },
      "input": {
        "shape": "DeleteAccessPointPolicyRequest"
      },
      "documentation": "<p>Deletes the access point policy for the specified access point.</p>"
    },
    "DeleteJobTagging": {
      "name": "DeleteJobTagging",
      "http": {
        "method": "DELETE",
        "requestUri": "/v20180820/jobs/{id}/tagging"
      },
      "input": {
        "shape": "DeleteJobTaggingRequest"
      },
      "output": {
        "shape": "DeleteJobTaggingResult"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Removes the entire tag set from the specified Amazon S3 Batch Operations job. To use this operation, you must have permission to perform the <code>s3:DeleteJobTagging</code> action. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags\">Using Job Tags</a> in the Amazon Simple Storage Service Developer Guide.</p> <p/> <p>Related actions include:</p> <ul> <li> <p> <a>CreateJob</a> </p> </li> <li> <p> <a>GetJobTagging</a> </p> </li> <li> <p> <a>PutJobTagging</a> </p> </li> </ul>"
    },
    "DeletePublicAccessBlock": {
      "name": "DeletePublicAccessBlock",
      "http": {
        "method": "DELETE",
        "requestUri": "/v20180820/configuration/publicAccessBlock"
      },
      "input": {
        "shape": "DeletePublicAccessBlockRequest"
      },
      "documentation": "<p>Removes the <code>PublicAccessBlock</code> configuration for an Amazon Web Services account.</p>"
    },
    "DescribeJob": {
      "name": "DescribeJob",
      "http": {
        "method": "GET",
        "requestUri": "/v20180820/jobs/{id}"
      },
      "input": {
        "shape": "DescribeJobRequest"
      },
      "output": {
        "shape": "DescribeJobResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Retrieves the configuration parameters and status for a Batch Operations job. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html\">Amazon S3 Batch Operations</a> in the Amazon Simple Storage Service Developer Guide.</p> <p/> <p>Related actions include:</p> <ul> <li> <p> <a>CreateJob</a> </p> </li> <li> <p> <a>ListJobs</a> </p> </li> <li> <p> <a>UpdateJobPriority</a> </p> </li> <li> <p> <a>UpdateJobStatus</a> </p> </li> </ul>"
    },
    "GetAccessPoint": {
      "name": "GetAccessPoint",
      "http": {
        "method": "GET",
        "requestUri": "/v20180820/accesspoint/{name}"
      },
      "input": {
        "shape": "GetAccessPointRequest"
      },
      "output": {
        "shape": "GetAccessPointResult"
      },
      "documentation": "<p>Returns configuration information about the specified access point.</p>"
    },
    "GetAccessPointPolicy": {
      "name": "GetAccessPointPolicy",
      "http": {
        "method": "GET",
        "requestUri": "/v20180820/accesspoint/{name}/policy"
      },
      "input": {
        "shape": "GetAccessPointPolicyRequest"
      },
      "output": {
        "shape": "GetAccessPointPolicyResult"
      },
      "documentation": "<p>Returns the access point policy associated with the specified access point.</p>"
    },
    "GetAccessPointPolicyStatus": {
      "name": "GetAccessPointPolicyStatus",
      "http": {
        "method": "GET",
        "requestUri": "/v20180820/accesspoint/{name}/policyStatus"
      },
      "input": {
        "shape": "GetAccessPointPolicyStatusRequest"
      },
      "output": {
        "shape": "GetAccessPointPolicyStatusResult"
      },
      "documentation": "<p>Indicates whether the specified access point currently has a policy that allows public access. For more information about public access through access points, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html\">Managing Data Access with Amazon S3 Access Points</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>"
    },
    "GetJobTagging": {
      "name": "GetJobTagging",
      "http": {
        "method": "GET",
        "requestUri": "/v20180820/jobs/{id}/tagging"
      },
      "input": {
        "shape": "GetJobTaggingRequest"
      },
      "output": {
        "shape": "GetJobTaggingResult"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        }
      ],
      "documentation": "<p>Returns the tags on an Amazon S3 Batch Operations job. To use this operation, you must have permission to perform the <code>s3:GetJobTagging</code> action. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags\">Using Job Tags</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p> <p/> <p>Related actions include:</p> <ul> <li> <p> <a>CreateJob</a> </p> </li> <li> <p> <a>PutJobTagging</a> </p> </li> <li> <p> <a>DeleteJobTagging</a> </p> </li> </ul>"
    },
    "GetPublicAccessBlock": {
      "name": "GetPublicAccessBlock",
      "http": {
        "method": "GET",
        "requestUri": "/v20180820/configuration/publicAccessBlock"
      },
      "input": {
        "shape": "GetPublicAccessBlockRequest"
      },
      "output": {
        "shape": "GetPublicAccessBlockOutput"
      },
      "errors": [
        {
          "shape": "NoSuchPublicAccessBlockConfiguration"
        }
      ],
      "documentation": "<p>Retrieves the <code>PublicAccessBlock</code> configuration for an Amazon Web Services account.</p>"
    },
    "ListAccessPoints": {
      "name": "ListAccessPoints",
      "http": {
        "method": "GET",
        "requestUri": "/v20180820/accesspoint"
      },
      "input": {
        "shape": "ListAccessPointsRequest"
      },
      "output": {
        "shape": "ListAccessPointsResult"
      },
      "documentation": "<p>Returns a list of the access points currently associated with the specified bucket. You can retrieve up to 1000 access points per call. If the specified bucket has more than 1,000 access points (or the number specified in <code>maxResults</code>, whichever is less), the response will include a continuation token that you can use to list the additional access points.</p>"
    },
    "ListJobs": {
      "name": "ListJobs",
      "http": {
        "method": "GET",
        "requestUri": "/v20180820/jobs"
      },
      "input": {
        "shape": "ListJobsRequest"
      },
      "output": {
        "shape": "ListJobsResult"
      },
      "errors": [
        {
          "shape": "InvalidRequestException"
        },
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Lists current Amazon S3 Batch Operations jobs and jobs that have ended within the last 30 days for the AWS account making the request. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html\">Amazon S3 Batch Operations</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p> <p>Related actions include:</p> <p/> <ul> <li> <p> <a>CreateJob</a> </p> </li> <li> <p> <a>DescribeJob</a> </p> </li> <li> <p> <a>UpdateJobPriority</a> </p> </li> <li> <p> <a>UpdateJobStatus</a> </p> </li> </ul>"
    },
    "PutAccessPointPolicy": {
      "name": "PutAccessPointPolicy",
      "http": {
        "method": "PUT",
        "requestUri": "/v20180820/accesspoint/{name}/policy"
      },
      "input": {
        "shape": "PutAccessPointPolicyRequest",
        "locationName": "PutAccessPointPolicyRequest",
        "xmlNamespace": {
          "uri": "http://awss3control.amazonaws.com/doc/2018-08-20/"
        }
      },
      "documentation": "<p>Associates an access policy with the specified access point. Each access point can have only one policy, so a request made to this API replaces any existing policy associated with the specified access point.</p>"
    },
    "PutJobTagging": {
      "name": "PutJobTagging",
      "http": {
        "method": "PUT",
        "requestUri": "/v20180820/jobs/{id}/tagging"
      },
      "input": {
        "shape": "PutJobTaggingRequest",
        "locationName": "PutJobTaggingRequest",
        "xmlNamespace": {
          "uri": "http://awss3control.amazonaws.com/doc/2018-08-20/"
        }
      },
      "output": {
        "shape": "PutJobTaggingResult"
      },
      "errors": [
        {
          "shape": "InternalServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "TooManyTagsException"
        }
      ],
      "documentation": "<p>Set the supplied tag-set on an Amazon S3 Batch Operations job.</p> <p>A tag is a key-value pair. You can associate Amazon S3 Batch Operations tags with any job by sending a PUT request against the tagging subresource that is associated with the job. To modify the existing tag set, you can either replace the existing tag set entirely, or make changes within the existing tag set by retrieving the existing tag set using <a>GetJobTagging</a>, modify that tag set, and use this API action to replace the tag set with the one you have modified.. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags\">Using Job Tags</a> in the Amazon Simple Storage Service Developer Guide. </p> <p/> <note> <ul> <li> <p>If you send this request with an empty tag set, Amazon S3 deletes the existing tag set on the Batch Operations job. If you use this method, you will be charged for a Tier 1 Request (PUT). For more information, see <a href=\"http://aws.amazon.com/s3/pricing/\">Amazon S3 pricing</a>.</p> </li> <li> <p>For deleting existing tags for your batch operations job, <a>DeleteJobTagging</a> request is preferred because it achieves the same result without incurring charges.</p> </li> <li> <p>A few things to consider about using tags:</p> <ul> <li> <p>Amazon S3 limits the maximum number of tags to 50 tags per job.</p> </li> <li> <p>You can associate up to 50 tags with a job as long as they have unique tag keys.</p> </li> <li> <p>A tag key can be up to 128 Unicode characters in length, and tag values can be up to 256 Unicode characters in length.</p> </li> <li> <p>The key and values are case sensitive.</p> </li> <li> <p>For tagging-related restrictions related to characters and encodings, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html\">User-Defined Tag Restrictions</a>.</p> </li> </ul> </li> </ul> </note> <p/> <p>To use this operation, you must have permission to perform the <code>s3:PutJobTagging</code> action.</p> <p>Related actions include:</p> <ul> <li> <p> <a>CreateJob</a> </p> </li> <li> <p> <a>GetJobTagging</a> </p> </li> <li> <p> <a>DeleteJobTagging</a> </p> </li> </ul>"
    },
    "PutPublicAccessBlock": {
      "name": "PutPublicAccessBlock",
      "http": {
        "method": "PUT",
        "requestUri": "/v20180820/configuration/publicAccessBlock"
      },
      "input": {
        "shape": "PutPublicAccessBlockRequest"
      },
      "documentation": "<p>Creates or modifies the <code>PublicAccessBlock</code> configuration for an Amazon Web Services account.</p>"
    },
    "UpdateJobPriority": {
      "name": "UpdateJobPriority",
      "http": {
        "method": "POST",
        "requestUri": "/v20180820/jobs/{id}/priority"
      },
      "input": {
        "shape": "UpdateJobPriorityRequest"
      },
      "output": {
        "shape": "UpdateJobPriorityResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Updates an existing Amazon S3 Batch Operations job's priority. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html\">Amazon S3 Batch Operations</a> in the Amazon Simple Storage Service Developer Guide.</p> <p/> <p>Related actions include:</p> <ul> <li> <p> <a>CreateJob</a> </p> </li> <li> <p> <a>ListJobs</a> </p> </li> <li> <p> <a>DescribeJob</a> </p> </li> <li> <p> <a>UpdateJobStatus</a> </p> </li> </ul>"
    },
    "UpdateJobStatus": {
      "name": "UpdateJobStatus",
      "http": {
        "method": "POST",
        "requestUri": "/v20180820/jobs/{id}/status"
      },
      "input": {
        "shape": "UpdateJobStatusRequest"
      },
      "output": {
        "shape": "UpdateJobStatusResult"
      },
      "errors": [
        {
          "shape": "BadRequestException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "JobStatusException"
        },
        {
          "shape": "InternalServiceException"
        }
      ],
      "documentation": "<p>Updates the status for the specified job. Use this operation to confirm that you want to run a job or to cancel an existing job. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-basics.html\">Amazon S3 Batch Operations</a> in the Amazon Simple Storage Service Developer Guide.</p> <p/> <p>Related actions include:</p> <ul> <li> <p> <a>CreateJob</a> </p> </li> <li> <p> <a>ListJobs</a> </p> </li> <li> <p> <a>DescribeJob</a> </p> </li> <li> <p> <a>UpdateJobStatus</a> </p> </li> </ul>"
    }
  },
  "shapes": {
    "AccessPoint": {
      "type": "structure",
      "required": [
        "Name",
        "NetworkOrigin",
        "Bucket"
      ],
      "members": {
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name of this access point.</p>"
        },
        "NetworkOrigin": {
          "shape": "NetworkOrigin",
          "documentation": "<p>Indicates whether this access point allows access from the public internet. If <code>VpcConfiguration</code> is specified for this access point, then <code>NetworkOrigin</code> is <code>VPC</code>, and the access point doesn't allow access from the public internet. Otherwise, <code>NetworkOrigin</code> is <code>Internet</code>, and the access point allows access from the public internet, subject to the access point and bucket access policies.</p>"
        },
        "VpcConfiguration": {
          "shape": "VpcConfiguration",
          "documentation": "<p>The virtual private cloud (VPC) configuration for this access point, if one exists.</p>"
        },
        "Bucket": {
          "shape": "BucketName",
          "documentation": "<p>The name of the bucket associated with this access point.</p>"
        }
      },
      "documentation": "<p>An access point used to access a bucket.</p>"
    },
    "AccessPointList": {
      "type": "list",
      "member": {
        "shape": "AccessPoint",
        "locationName": "AccessPoint"
      }
    },
    "AccessPointName": {
      "type": "string",
      "max": 50,
      "min": 3
    },
    "AccountId": {
      "type": "string",
      "max": 64,
      "pattern": "^\\d{12}$"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BucketName": {
      "type": "string",
      "max": 255,
      "min": 3
    },
    "ConfirmationRequired": {
      "type": "boolean"
    },
    "CreateAccessPointRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Name",
        "Bucket"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID for the owner of the bucket for which you want to create an access point.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name you want to assign to this access point.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "Bucket": {
          "shape": "BucketName",
          "documentation": "<p>The name of the bucket that you want to associate this access point with.</p>"
        },
        "VpcConfiguration": {
          "shape": "VpcConfiguration",
          "documentation": "<p>If you include this field, Amazon S3 restricts access to this access point to requests from the specified virtual private cloud (VPC).</p>"
        },
        "PublicAccessBlockConfiguration": {
          "shape": "PublicAccessBlockConfiguration"
        }
      }
    },
    "CreateJobRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Operation",
        "Report",
        "ClientRequestToken",
        "Manifest",
        "Priority",
        "RoleArn"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p/>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "ConfirmationRequired": {
          "shape": "ConfirmationRequired",
          "documentation": "<p>Indicates whether confirmation is required before Amazon S3 runs the job. Confirmation is only required for jobs created through the Amazon S3 console.</p>",
          "box": true
        },
        "Operation": {
          "shape": "JobOperation",
          "documentation": "<p>The operation that you want this job to perform on each object listed in the manifest. For more information about the available operations, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html\">Available Operations</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>"
        },
        "Report": {
          "shape": "JobReport",
          "documentation": "<p>Configuration parameters for the optional job-completion report.</p>"
        },
        "ClientRequestToken": {
          "shape": "NonEmptyMaxLength64String",
          "documentation": "<p>An idempotency token to ensure that you don't accidentally submit the same request twice. You can use any string up to the maximum length.</p>",
          "idempotencyToken": true
        },
        "Manifest": {
          "shape": "JobManifest",
          "documentation": "<p>Configuration parameters for the manifest.</p>"
        },
        "Description": {
          "shape": "NonEmptyMaxLength256String",
          "documentation": "<p>A description for this job. You can use any string within the permitted length. Descriptions don't need to be unique and can be used for multiple jobs.</p>"
        },
        "Priority": {
          "shape": "JobPriority",
          "documentation": "<p>The numerical priority for this job. Higher numbers indicate higher priority.</p>",
          "box": true
        },
        "RoleArn": {
          "shape": "IAMRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the AWS Identity and Access Management (IAM) role that Batch Operations will use to execute this job's operation on each object in the manifest.</p>"
        },
        "Tags": {
          "shape": "S3TagSet",
          "documentation": "<p>A set of tags to associate with the Amazon S3 Batch Operations job. This is an optional parameter. </p>"
        }
      }
    },
    "CreateJobResult": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for this job. Amazon S3 generates this ID automatically and returns it after a successful <code>Create Job</code> request.</p>"
        }
      }
    },
    "CreationDate": {
      "type": "timestamp"
    },
    "DeleteAccessPointPolicyRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Name"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the account that owns the specified access point.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name of the access point whose policy you want to delete.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DeleteAccessPointRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Name"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the account that owns the specified access point.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name of the access point you want to delete.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "DeleteJobTaggingRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "JobId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID associated with the Amazon S3 Batch Operations job.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the Amazon S3 Batch Operations job whose tags you want to delete.</p>",
          "location": "uri",
          "locationName": "id"
        }
      }
    },
    "DeleteJobTaggingResult": {
      "type": "structure",
      "members": {}
    },
    "DeletePublicAccessBlockRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration you want to remove.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        }
      }
    },
    "DescribeJobRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "JobId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p/>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the job whose information you want to retrieve.</p>",
          "location": "uri",
          "locationName": "id"
        }
      }
    },
    "DescribeJobResult": {
      "type": "structure",
      "members": {
        "Job": {
          "shape": "JobDescriptor",
          "documentation": "<p>Contains the configuration parameters and status for the job specified in the <code>Describe Job</code> request.</p>"
        }
      }
    },
    "FunctionArnString": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST|[a-zA-Z0-9-_]+))?"
    },
    "GetAccessPointPolicyRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Name"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the account that owns the specified access point.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name of the access point whose policy you want to retrieve.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "GetAccessPointPolicyResult": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>The access point policy associated with the specified access point.</p>"
        }
      }
    },
    "GetAccessPointPolicyStatusRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Name"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the account that owns the specified access point.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name of the access point whose policy status you want to retrieve.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "GetAccessPointPolicyStatusResult": {
      "type": "structure",
      "members": {
        "PolicyStatus": {
          "shape": "PolicyStatus",
          "documentation": "<p>Indicates the current policy status of the specified access point.</p>"
        }
      }
    },
    "GetAccessPointRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Name"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the account that owns the specified access point.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name of the access point whose configuration information you want to retrieve.</p>",
          "location": "uri",
          "locationName": "name"
        }
      }
    },
    "GetAccessPointResult": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name of the specified access point.</p>"
        },
        "Bucket": {
          "shape": "BucketName",
          "documentation": "<p>The name of the bucket associated with the specified access point.</p>"
        },
        "NetworkOrigin": {
          "shape": "NetworkOrigin",
          "documentation": "<p>Indicates whether this access point allows access from the public internet. If <code>VpcConfiguration</code> is specified for this access point, then <code>NetworkOrigin</code> is <code>VPC</code>, and the access point doesn't allow access from the public internet. Otherwise, <code>NetworkOrigin</code> is <code>Internet</code>, and the access point allows access from the public internet, subject to the access point and bucket access policies.</p>"
        },
        "VpcConfiguration": {
          "shape": "VpcConfiguration",
          "documentation": "<p>Contains the virtual private cloud (VPC) configuration for the specified access point.</p>"
        },
        "PublicAccessBlockConfiguration": {
          "shape": "PublicAccessBlockConfiguration"
        },
        "CreationDate": {
          "shape": "CreationDate",
          "documentation": "<p>The date and time when the specified access point was created.</p>"
        }
      }
    },
    "GetJobTaggingRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "JobId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID associated with the Amazon S3 Batch Operations job.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the Amazon S3 Batch Operations job whose tags you want to retrieve.</p>",
          "location": "uri",
          "locationName": "id"
        }
      }
    },
    "GetJobTaggingResult": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "S3TagSet",
          "documentation": "<p>The set of tags associated with the Amazon S3 Batch Operations job.</p>"
        }
      }
    },
    "GetPublicAccessBlockOutput": {
      "type": "structure",
      "members": {
        "PublicAccessBlockConfiguration": {
          "shape": "PublicAccessBlockConfiguration",
          "documentation": "<p>The <code>PublicAccessBlock</code> configuration currently in effect for this Amazon Web Services account.</p>"
        }
      },
      "payload": "PublicAccessBlockConfiguration"
    },
    "GetPublicAccessBlockRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration you want to retrieve.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        }
      }
    },
    "IAMRoleArn": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "arn:[^:]+:iam::\\d{12}:role/.*"
    },
    "IsPublic": {
      "type": "boolean"
    },
    "JobArn": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "arn:[^:]+:s3:[a-zA-Z0-9\\-]+:\\d{12}:job\\/.*"
    },
    "JobCreationTime": {
      "type": "timestamp"
    },
    "JobDescriptor": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the specified job.</p>"
        },
        "ConfirmationRequired": {
          "shape": "ConfirmationRequired",
          "documentation": "<p>Indicates whether confirmation is required before Amazon S3 begins running the specified job. Confirmation is required only for jobs created through the Amazon S3 console.</p>",
          "box": true
        },
        "Description": {
          "shape": "NonEmptyMaxLength256String",
          "documentation": "<p>The description for this job, if one was provided in this job's <code>Create Job</code> request.</p>",
          "box": true
        },
        "JobArn": {
          "shape": "JobArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for this job.</p>",
          "box": true
        },
        "Status": {
          "shape": "JobStatus",
          "documentation": "<p>The current status of the specified job.</p>"
        },
        "Manifest": {
          "shape": "JobManifest",
          "documentation": "<p>The configuration information for the specified job's manifest object.</p>",
          "box": true
        },
        "Operation": {
          "shape": "JobOperation",
          "documentation": "<p>The operation that the specified job is configured to execute on the objects listed in the manifest.</p>",
          "box": true
        },
        "Priority": {
          "shape": "JobPriority",
          "documentation": "<p>The priority of the specified job.</p>"
        },
        "ProgressSummary": {
          "shape": "JobProgressSummary",
          "documentation": "<p>Describes the total number of tasks that the specified job has executed, the number of tasks that succeeded, and the number of tasks that failed.</p>",
          "box": true
        },
        "StatusUpdateReason": {
          "shape": "JobStatusUpdateReason",
          "documentation": "<p/>",
          "box": true
        },
        "FailureReasons": {
          "shape": "JobFailureList",
          "documentation": "<p>If the specified job failed, this field contains information describing the failure.</p>",
          "box": true
        },
        "Report": {
          "shape": "JobReport",
          "documentation": "<p>Contains the configuration information for the job-completion report if you requested one in the <code>Create Job</code> request.</p>",
          "box": true
        },
        "CreationTime": {
          "shape": "JobCreationTime",
          "documentation": "<p>A timestamp indicating when this job was created.</p>"
        },
        "TerminationDate": {
          "shape": "JobTerminationDate",
          "documentation": "<p>A timestamp indicating when this job terminated. A job's termination date is the date and time when it succeeded, failed, or was canceled.</p>",
          "box": true
        },
        "RoleArn": {
          "shape": "IAMRoleArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the AWS Identity and Access Management (IAM) role assigned to execute the tasks for this job.</p>",
          "box": true
        },
        "SuspendedDate": {
          "shape": "SuspendedDate",
          "documentation": "<p>The timestamp when this job was suspended, if it has been suspended.</p>",
          "box": true
        },
        "SuspendedCause": {
          "shape": "SuspendedCause",
          "documentation": "<p>The reason why the specified job was suspended. A job is only suspended if you create it through the Amazon S3 console. When you create the job, it enters the <code>Suspended</code> state to await confirmation before running. After you confirm the job, it automatically exits the <code>Suspended</code> state.</p>",
          "box": true
        }
      },
      "documentation": "<p>A container element for the job configuration and status information returned by a <code>Describe Job</code> request.</p>"
    },
    "JobFailure": {
      "type": "structure",
      "members": {
        "FailureCode": {
          "shape": "JobFailureCode",
          "documentation": "<p>The failure code, if any, for the specified job.</p>"
        },
        "FailureReason": {
          "shape": "JobFailureReason",
          "documentation": "<p>The failure reason, if any, for the specified job.</p>"
        }
      },
      "documentation": "<p>If this job failed, this element indicates why the job failed.</p>"
    },
    "JobFailureCode": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "JobFailureList": {
      "type": "list",
      "member": {
        "shape": "JobFailure"
      }
    },
    "JobFailureReason": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "JobId": {
      "type": "string",
      "max": 36,
      "min": 5,
      "pattern": "[a-zA-Z0-9\\-\\_]+"
    },
    "JobListDescriptor": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the specified job.</p>"
        },
        "Description": {
          "shape": "NonEmptyMaxLength256String",
          "documentation": "<p>The user-specified description that was included in the specified job's <code>Create Job</code> request.</p>"
        },
        "Operation": {
          "shape": "OperationName",
          "documentation": "<p>The operation that the specified job is configured to run on each object listed in the manifest.</p>"
        },
        "Priority": {
          "shape": "JobPriority",
          "documentation": "<p>The current priority for the specified job.</p>"
        },
        "Status": {
          "shape": "JobStatus",
          "documentation": "<p>The specified job's current status.</p>"
        },
        "CreationTime": {
          "shape": "JobCreationTime",
          "documentation": "<p>A timestamp indicating when the specified job was created.</p>"
        },
        "TerminationDate": {
          "shape": "JobTerminationDate",
          "documentation": "<p>A timestamp indicating when the specified job terminated. A job's termination date is the date and time when it succeeded, failed, or was canceled.</p>"
        },
        "ProgressSummary": {
          "shape": "JobProgressSummary",
          "documentation": "<p>Describes the total number of tasks that the specified job has executed, the number of tasks that succeeded, and the number of tasks that failed.</p>"
        }
      },
      "documentation": "<p>Contains the configuration and status information for a single job retrieved as part of a job list.</p>"
    },
    "JobListDescriptorList": {
      "type": "list",
      "member": {
        "shape": "JobListDescriptor"
      }
    },
    "JobManifest": {
      "type": "structure",
      "required": [
        "Spec",
        "Location"
      ],
      "members": {
        "Spec": {
          "shape": "JobManifestSpec",
          "documentation": "<p>Describes the format of the specified job's manifest. If the manifest is in CSV format, also describes the columns contained within the manifest.</p>"
        },
        "Location": {
          "shape": "JobManifestLocation",
          "documentation": "<p>Contains the information required to locate the specified job's manifest.</p>"
        }
      },
      "documentation": "<p>Contains the configuration information for a job's manifest.</p>"
    },
    "JobManifestFieldList": {
      "type": "list",
      "member": {
        "shape": "JobManifestFieldName"
      }
    },
    "JobManifestFieldName": {
      "type": "string",
      "enum": [
        "Ignore",
        "Bucket",
        "Key",
        "VersionId"
      ]
    },
    "JobManifestFormat": {
      "type": "string",
      "enum": [
        "S3BatchOperations_CSV_20180820",
        "S3InventoryReport_CSV_20161130"
      ]
    },
    "JobManifestLocation": {
      "type": "structure",
      "required": [
        "ObjectArn",
        "ETag"
      ],
      "members": {
        "ObjectArn": {
          "shape": "S3KeyArnString",
          "documentation": "<p>The Amazon Resource Name (ARN) for a manifest object.</p>"
        },
        "ObjectVersionId": {
          "shape": "S3ObjectVersionId",
          "documentation": "<p>The optional version ID to identify a specific version of the manifest object.</p>",
          "box": true
        },
        "ETag": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p>The ETag for the specified manifest object.</p>"
        }
      },
      "documentation": "<p>Contains the information required to locate a manifest object.</p>"
    },
    "JobManifestSpec": {
      "type": "structure",
      "required": [
        "Format"
      ],
      "members": {
        "Format": {
          "shape": "JobManifestFormat",
          "documentation": "<p>Indicates which of the available formats the specified manifest uses.</p>"
        },
        "Fields": {
          "shape": "JobManifestFieldList",
          "documentation": "<p>If the specified manifest object is in the <code>S3BatchOperations_CSV_20180820</code> format, this element describes which columns contain the required data.</p>",
          "box": true
        }
      },
      "documentation": "<p>Describes the format of a manifest. If the manifest is in CSV format, also describes the columns contained within the manifest.</p>"
    },
    "JobNumberOfTasksFailed": {
      "type": "long",
      "min": 0
    },
    "JobNumberOfTasksSucceeded": {
      "type": "long",
      "min": 0
    },
    "JobOperation": {
      "type": "structure",
      "members": {
        "LambdaInvoke": {
          "shape": "LambdaInvokeOperation",
          "documentation": "<p>Directs the specified job to invoke an AWS Lambda function on each object in the manifest.</p>",
          "box": true
        },
        "S3PutObjectCopy": {
          "shape": "S3CopyObjectOperation",
          "documentation": "<p>Directs the specified job to execute a PUT Copy object call on each object in the manifest.</p>",
          "box": true
        },
        "S3PutObjectAcl": {
          "shape": "S3SetObjectAclOperation",
          "documentation": "<p>Directs the specified job to execute a PUT Object acl call on each object in the manifest.</p>",
          "box": true
        },
        "S3PutObjectTagging": {
          "shape": "S3SetObjectTaggingOperation",
          "documentation": "<p>Directs the specified job to execute a PUT Object tagging call on each object in the manifest.</p>",
          "box": true
        },
        "S3InitiateRestoreObject": {
          "shape": "S3InitiateRestoreObjectOperation",
          "documentation": "<p>Directs the specified job to execute an Initiate Glacier Restore call on each object in the manifest.</p>",
          "box": true
        },
        "S3PutObjectLegalHold": {
          "shape": "S3SetObjectLegalHoldOperation",
          "box": true
        },
        "S3PutObjectRetention": {
          "shape": "S3SetObjectRetentionOperation",
          "box": true
        }
      },
      "documentation": "<p>The operation that you want this job to perform on each object listed in the manifest. For more information about the available operations, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html\">Available Operations</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>"
    },
    "JobPriority": {
      "type": "integer",
      "max": 2147483647,
      "min": 0
    },
    "JobProgressSummary": {
      "type": "structure",
      "members": {
        "TotalNumberOfTasks": {
          "shape": "JobTotalNumberOfTasks",
          "documentation": "<p/>",
          "box": true
        },
        "NumberOfTasksSucceeded": {
          "shape": "JobNumberOfTasksSucceeded",
          "documentation": "<p/>",
          "box": true
        },
        "NumberOfTasksFailed": {
          "shape": "JobNumberOfTasksFailed",
          "documentation": "<p/>",
          "box": true
        }
      },
      "documentation": "<p>Describes the total number of tasks that the specified job has executed, the number of tasks that succeeded, and the number of tasks that failed.</p>"
    },
    "JobReport": {
      "type": "structure",
      "required": [
        "Enabled"
      ],
      "members": {
        "Bucket": {
          "shape": "S3BucketArnString",
          "documentation": "<p>The Amazon Resource Name (ARN) for the bucket where specified job-completion report will be stored.</p>",
          "box": true
        },
        "Format": {
          "shape": "JobReportFormat",
          "documentation": "<p>The format of the specified job-completion report.</p>",
          "box": true
        },
        "Enabled": {
          "shape": "Boolean",
          "documentation": "<p>Indicates whether the specified job will generate a job-completion report.</p>"
        },
        "Prefix": {
          "shape": "ReportPrefixString",
          "documentation": "<p>An optional prefix to describe where in the specified bucket the job-completion report will be stored. Amazon S3 will store the job-completion report at &lt;prefix&gt;/job-&lt;job-id&gt;/report.json.</p>",
          "box": true
        },
        "ReportScope": {
          "shape": "JobReportScope",
          "documentation": "<p>Indicates whether the job-completion report will include details of all tasks or only failed tasks.</p>",
          "box": true
        }
      },
      "documentation": "<p>Contains the configuration parameters for a job-completion report.</p>"
    },
    "JobReportFormat": {
      "type": "string",
      "enum": [
        "Report_CSV_20180820"
      ]
    },
    "JobReportScope": {
      "type": "string",
      "enum": [
        "AllTasks",
        "FailedTasksOnly"
      ]
    },
    "JobStatus": {
      "type": "string",
      "enum": [
        "Active",
        "Cancelled",
        "Cancelling",
        "Complete",
        "Completing",
        "Failed",
        "Failing",
        "New",
        "Paused",
        "Pausing",
        "Preparing",
        "Ready",
        "Suspended"
      ]
    },
    "JobStatusList": {
      "type": "list",
      "member": {
        "shape": "JobStatus"
      }
    },
    "JobStatusUpdateReason": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "JobTerminationDate": {
      "type": "timestamp"
    },
    "JobTotalNumberOfTasks": {
      "type": "long",
      "min": 0
    },
    "KmsKeyArnString": {
      "type": "string",
      "max": 2000,
      "min": 1
    },
    "LambdaInvokeOperation": {
      "type": "structure",
      "members": {
        "FunctionArn": {
          "shape": "FunctionArnString",
          "documentation": "<p>The Amazon Resource Name (ARN) for the AWS Lambda function that the specified job will invoke for each object in the manifest.</p>"
        }
      },
      "documentation": "<p>Contains the configuration parameters for a <code>Lambda Invoke</code> operation.</p>"
    },
    "ListAccessPointsRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID for owner of the bucket whose access points you want to list.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "Bucket": {
          "shape": "BucketName",
          "documentation": "<p>The name of the bucket whose associated access points you want to list.</p>",
          "location": "querystring",
          "locationName": "bucket"
        },
        "NextToken": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p>A continuation token. If a previous call to <code>ListAccessPoints</code> returned a continuation token in the <code>NextToken</code> field, then providing that value here causes Amazon S3 to retrieve the next page of results.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of access points that you want to include in the list. If the specified bucket has more than this number of access points, then the response will include a continuation token in the <code>NextToken</code> field that you can use to retrieve the next page of access points.</p>",
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListAccessPointsResult": {
      "type": "structure",
      "members": {
        "AccessPointList": {
          "shape": "AccessPointList",
          "documentation": "<p>Contains identification and configuration information for one or more access points associated with the specified bucket.</p>"
        },
        "NextToken": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p>If the specified bucket has more access points than can be returned in one call to this API, then this field contains a continuation token that you can provide in subsequent calls to this API to retrieve additional access points.</p>"
        }
      }
    },
    "ListJobsRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p/>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "JobStatuses": {
          "shape": "JobStatusList",
          "documentation": "<p>The <code>List Jobs</code> request returns jobs that match the statuses listed in this element.</p>",
          "location": "querystring",
          "locationName": "jobStatuses"
        },
        "NextToken": {
          "shape": "StringForNextToken",
          "documentation": "<p>A pagination token to request the next page of results. Use the token that Amazon S3 returned in the <code>NextToken</code> element of the <code>ListJobsResult</code> from the previous <code>List Jobs</code> request.</p>",
          "location": "querystring",
          "locationName": "nextToken"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of jobs that Amazon S3 will include in the <code>List Jobs</code> response. If there are more jobs than this number, the response will include a pagination token in the <code>NextToken</code> field to enable you to retrieve the next page of results.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "maxResults"
        }
      }
    },
    "ListJobsResult": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "StringForNextToken",
          "documentation": "<p>If the <code>List Jobs</code> request produced more than the maximum number of results, you can pass this value into a subsequent <code>List Jobs</code> request in order to retrieve the next page of results.</p>"
        },
        "Jobs": {
          "shape": "JobListDescriptorList",
          "documentation": "<p>The list of current jobs and jobs that have ended within the last 30 days.</p>"
        }
      }
    },
    "MaxLength1024String": {
      "type": "string",
      "max": 1024
    },
    "MaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "NetworkOrigin": {
      "type": "string",
      "enum": [
        "Internet",
        "VPC"
      ]
    },
    "NonEmptyMaxLength1024String": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "NonEmptyMaxLength2048String": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "NonEmptyMaxLength256String": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "NonEmptyMaxLength64String": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "OperationName": {
      "type": "string",
      "enum": [
        "LambdaInvoke",
        "S3PutObjectCopy",
        "S3PutObjectAcl",
        "S3PutObjectTagging",
        "S3InitiateRestoreObject",
        "S3PutObjectLegalHold",
        "S3PutObjectRetention"
      ]
    },
    "Policy": {
      "type": "string"
    },
    "PolicyStatus": {
      "type": "structure",
      "members": {
        "IsPublic": {
          "shape": "IsPublic",
          "documentation": "<p/>",
          "locationName": "IsPublic"
        }
      },
      "documentation": "<p>Indicates whether this access point policy is public. For more information about how Amazon S3 evaluates policies to determine whether they are public, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status\">The Meaning of \"Public\"</a> in the <i>Amazon Simple Storage Service Developer Guide</i>. </p>"
    },
    "PublicAccessBlockConfiguration": {
      "type": "structure",
      "members": {
        "BlockPublicAcls": {
          "shape": "Setting",
          "documentation": "<p>Specifies whether Amazon S3 should block public access control lists (ACLs) for buckets in this account. Setting this element to <code>TRUE</code> causes the following behavior:</p> <ul> <li> <p>PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.</p> </li> <li> <p>PUT Object calls fail if the request includes a public ACL.</p> </li> <li> <p>PUT Bucket calls fail if the request includes a public ACL.</p> </li> </ul> <p>Enabling this setting doesn't affect existing policies or ACLs.</p>",
          "locationName": "BlockPublicAcls"
        },
        "IgnorePublicAcls": {
          "shape": "Setting",
          "documentation": "<p>Specifies whether Amazon S3 should ignore public ACLs for buckets in this account. Setting this element to <code>TRUE</code> causes Amazon S3 to ignore all public ACLs on buckets in this account and any objects that they contain. </p> <p>Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set.</p>",
          "locationName": "IgnorePublicAcls"
        },
        "BlockPublicPolicy": {
          "shape": "Setting",
          "documentation": "<p>Specifies whether Amazon S3 should block public bucket policies for buckets in this account. Setting this element to <code>TRUE</code> causes Amazon S3 to reject calls to PUT Bucket policy if the specified bucket policy allows public access. </p> <p>Enabling this setting doesn't affect existing bucket policies.</p>",
          "locationName": "BlockPublicPolicy"
        },
        "RestrictPublicBuckets": {
          "shape": "Setting",
          "documentation": "<p>Specifies whether Amazon S3 should restrict public bucket policies for buckets in this account. Setting this element to <code>TRUE</code> restricts access to buckets with public policies to only AWS services and authorized users within this account.</p> <p>Enabling this setting doesn't affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked.</p>",
          "locationName": "RestrictPublicBuckets"
        }
      },
      "documentation": "<p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status\">The Meaning of \"Public\"</a> in the Amazon Simple Storage Service Developer Guide.</p>"
    },
    "PutAccessPointPolicyRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "Name",
        "Policy"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID for owner of the bucket associated with the specified access point.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "Name": {
          "shape": "AccessPointName",
          "documentation": "<p>The name of the access point that you want to associate with the specified policy.</p>",
          "location": "uri",
          "locationName": "name"
        },
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>The policy that you want to apply to the specified access point. For more information about access point policies, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/access-points.html\">Managing Data Access with Amazon S3 Access Points</a> in the <i>Amazon Simple Storage Service Developer Guide</i>.</p>"
        }
      }
    },
    "PutJobTaggingRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "JobId",
        "Tags"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The AWS account ID associated with the Amazon S3 Batch Operations job.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the Amazon S3 Batch Operations job whose tags you want to replace.</p>",
          "location": "uri",
          "locationName": "id"
        },
        "Tags": {
          "shape": "S3TagSet",
          "documentation": "<p>The set of tags to associate with the Amazon S3 Batch Operations job.</p>"
        }
      }
    },
    "PutJobTaggingResult": {
      "type": "structure",
      "members": {}
    },
    "PutPublicAccessBlockRequest": {
      "type": "structure",
      "required": [
        "PublicAccessBlockConfiguration",
        "AccountId"
      ],
      "members": {
        "PublicAccessBlockConfiguration": {
          "shape": "PublicAccessBlockConfiguration",
          "documentation": "<p>The <code>PublicAccessBlock</code> configuration that you want to apply to the specified Amazon Web Services account.</p>",
          "locationName": "PublicAccessBlockConfiguration",
          "xmlNamespace": {
            "uri": "http://awss3control.amazonaws.com/doc/2018-08-20/"
          }
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID for the Amazon Web Services account whose <code>PublicAccessBlock</code> configuration you want to set.</p>",
          "location": "header",
          "locationName": "x-amz-account-id"
        }
      },
      "payload": "PublicAccessBlockConfiguration"
    },
    "ReportPrefixString": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "RequestedJobStatus": {
      "type": "string",
      "enum": [
        "Cancelled",
        "Ready"
      ]
    },
    "S3AccessControlList": {
      "type": "structure",
      "required": [
        "Owner"
      ],
      "members": {
        "Owner": {
          "shape": "S3ObjectOwner",
          "documentation": "<p/>"
        },
        "Grants": {
          "shape": "S3GrantList",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "S3AccessControlPolicy": {
      "type": "structure",
      "members": {
        "AccessControlList": {
          "shape": "S3AccessControlList",
          "documentation": "<p/>",
          "box": true
        },
        "CannedAccessControlList": {
          "shape": "S3CannedAccessControlList",
          "documentation": "<p/>",
          "box": true
        }
      },
      "documentation": "<p/>"
    },
    "S3BucketArnString": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "arn:[^:]+:s3:.*"
    },
    "S3CannedAccessControlList": {
      "type": "string",
      "enum": [
        "private",
        "public-read",
        "public-read-write",
        "aws-exec-read",
        "authenticated-read",
        "bucket-owner-read",
        "bucket-owner-full-control"
      ]
    },
    "S3ContentLength": {
      "type": "long",
      "min": 0
    },
    "S3CopyObjectOperation": {
      "type": "structure",
      "members": {
        "TargetResource": {
          "shape": "S3BucketArnString",
          "documentation": "<p/>"
        },
        "CannedAccessControlList": {
          "shape": "S3CannedAccessControlList",
          "documentation": "<p/>",
          "box": true
        },
        "AccessControlGrants": {
          "shape": "S3GrantList",
          "documentation": "<p/>",
          "box": true
        },
        "MetadataDirective": {
          "shape": "S3MetadataDirective",
          "documentation": "<p/>"
        },
        "ModifiedSinceConstraint": {
          "shape": "TimeStamp",
          "documentation": "<p/>"
        },
        "NewObjectMetadata": {
          "shape": "S3ObjectMetadata",
          "documentation": "<p/>"
        },
        "NewObjectTagging": {
          "shape": "S3TagSet",
          "documentation": "<p/>"
        },
        "RedirectLocation": {
          "shape": "NonEmptyMaxLength2048String",
          "documentation": "<p/>"
        },
        "RequesterPays": {
          "shape": "Boolean",
          "documentation": "<p/>"
        },
        "StorageClass": {
          "shape": "S3StorageClass",
          "documentation": "<p/>"
        },
        "UnModifiedSinceConstraint": {
          "shape": "TimeStamp",
          "documentation": "<p/>"
        },
        "SSEAwsKmsKeyId": {
          "shape": "KmsKeyArnString",
          "documentation": "<p/>"
        },
        "TargetKeyPrefix": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        },
        "ObjectLockLegalHoldStatus": {
          "shape": "S3ObjectLockLegalHoldStatus",
          "documentation": "<p>The Legal Hold status to be applied to all objects in the Batch Operations job.</p>"
        },
        "ObjectLockMode": {
          "shape": "S3ObjectLockMode",
          "documentation": "<p>The Retention mode to be applied to all objects in the Batch Operations job.</p>"
        },
        "ObjectLockRetainUntilDate": {
          "shape": "TimeStamp",
          "documentation": "<p>The date when the applied Object Retention configuration will expire on all objects in the Batch Operations job.</p>"
        }
      },
      "documentation": "<p>Contains the configuration parameters for a PUT Copy object operation. Amazon S3 Batch Operations passes each value through to the underlying PUT Copy object API. For more information about the parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectCOPY.html\">PUT Object - Copy</a>.</p>"
    },
    "S3ExpirationInDays": {
      "type": "integer",
      "min": 0
    },
    "S3GlacierJobTier": {
      "type": "string",
      "enum": [
        "BULK",
        "STANDARD"
      ]
    },
    "S3Grant": {
      "type": "structure",
      "members": {
        "Grantee": {
          "shape": "S3Grantee",
          "documentation": "<p/>"
        },
        "Permission": {
          "shape": "S3Permission",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "S3GrantList": {
      "type": "list",
      "member": {
        "shape": "S3Grant"
      }
    },
    "S3Grantee": {
      "type": "structure",
      "members": {
        "TypeIdentifier": {
          "shape": "S3GranteeTypeIdentifier",
          "documentation": "<p/>"
        },
        "Identifier": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>",
          "box": true
        },
        "DisplayName": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "S3GranteeTypeIdentifier": {
      "type": "string",
      "enum": [
        "id",
        "emailAddress",
        "uri"
      ]
    },
    "S3InitiateRestoreObjectOperation": {
      "type": "structure",
      "members": {
        "ExpirationInDays": {
          "shape": "S3ExpirationInDays",
          "documentation": "<p/>"
        },
        "GlacierJobTier": {
          "shape": "S3GlacierJobTier",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>Contains the configuration parameters for an Initiate Glacier Restore job. Amazon S3 Batch Operations passes each value through to the underlying POST Object restore API. For more information about the parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPOSTrestore.html#RESTObjectPOSTrestore-restore-request\">Restoring Archives</a>.</p>"
    },
    "S3KeyArnString": {
      "type": "string",
      "max": 2000,
      "min": 1,
      "pattern": "arn:[^:]+:s3:.*"
    },
    "S3MetadataDirective": {
      "type": "string",
      "enum": [
        "COPY",
        "REPLACE"
      ]
    },
    "S3ObjectLockLegalHold": {
      "type": "structure",
      "required": [
        "Status"
      ],
      "members": {
        "Status": {
          "shape": "S3ObjectLockLegalHoldStatus",
          "documentation": "<p>The Legal Hold status to be applied to all objects in the Batch Operations job.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "S3ObjectLockLegalHoldStatus": {
      "type": "string",
      "enum": [
        "OFF",
        "ON"
      ]
    },
    "S3ObjectLockMode": {
      "type": "string",
      "enum": [
        "COMPLIANCE",
        "GOVERNANCE"
      ]
    },
    "S3ObjectLockRetentionMode": {
      "type": "string",
      "enum": [
        "COMPLIANCE",
        "GOVERNANCE"
      ]
    },
    "S3ObjectMetadata": {
      "type": "structure",
      "members": {
        "CacheControl": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        },
        "ContentDisposition": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        },
        "ContentEncoding": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        },
        "ContentLanguage": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        },
        "UserMetadata": {
          "shape": "S3UserMetadata",
          "documentation": "<p/>"
        },
        "ContentLength": {
          "shape": "S3ContentLength",
          "documentation": "<p/>",
          "box": true
        },
        "ContentMD5": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        },
        "ContentType": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        },
        "HttpExpiresDate": {
          "shape": "TimeStamp",
          "documentation": "<p/>"
        },
        "RequesterCharged": {
          "shape": "Boolean",
          "documentation": "<p/>"
        },
        "SSEAlgorithm": {
          "shape": "S3SSEAlgorithm",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "S3ObjectOwner": {
      "type": "structure",
      "members": {
        "ID": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        },
        "DisplayName": {
          "shape": "NonEmptyMaxLength1024String",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "S3ObjectVersionId": {
      "type": "string",
      "max": 2000,
      "min": 1
    },
    "S3Permission": {
      "type": "string",
      "enum": [
        "FULL_CONTROL",
        "READ",
        "WRITE",
        "READ_ACP",
        "WRITE_ACP"
      ]
    },
    "S3Retention": {
      "type": "structure",
      "members": {
        "RetainUntilDate": {
          "shape": "TimeStamp",
          "documentation": "<p>The date when the applied Object Retention will expire on all objects in the Batch Operations job.</p>"
        },
        "Mode": {
          "shape": "S3ObjectLockRetentionMode",
          "documentation": "<p>The Retention mode to be applied to all objects in the Batch Operations job.</p>"
        }
      },
      "documentation": "<p/>"
    },
    "S3SSEAlgorithm": {
      "type": "string",
      "enum": [
        "AES256",
        "KMS"
      ]
    },
    "S3SetObjectAclOperation": {
      "type": "structure",
      "members": {
        "AccessControlPolicy": {
          "shape": "S3AccessControlPolicy",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>Contains the configuration parameters for a Set Object ACL operation. Amazon S3 Batch Operations passes each value through to the underlying PUT Object acl API. For more information about the parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTacl.html\">PUT Object acl</a>.</p>"
    },
    "S3SetObjectLegalHoldOperation": {
      "type": "structure",
      "required": [
        "LegalHold"
      ],
      "members": {
        "LegalHold": {
          "shape": "S3ObjectLockLegalHold",
          "documentation": "<p>The Legal Hold contains the status to be applied to all objects in the Batch Operations job.</p>"
        }
      },
      "documentation": "<p>Contains the configuration parameters for a Set Object Legal Hold operation. Amazon S3 Batch Operations passes each value through to the underlying PUT Object Legal Hold API. For more information about the parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.htmll#object-lock-legal-holds\">PUT Object Legal Hold</a>.</p>"
    },
    "S3SetObjectRetentionOperation": {
      "type": "structure",
      "required": [
        "Retention"
      ],
      "members": {
        "BypassGovernanceRetention": {
          "shape": "Boolean",
          "documentation": "<p>Indicates if the operation should be applied to objects in the Batch Operations job even if they have Governance-type Object Lock in place.</p>",
          "box": true
        },
        "Retention": {
          "shape": "S3Retention",
          "documentation": "<p>Amazon S3 object lock Retention contains the retention mode to be applied to all objects in the Batch Operations job.</p>"
        }
      },
      "documentation": "<p>Contains the configuration parameters for a Set Object Retention operation. Amazon S3 Batch Operations passes each value through to the underlying PUT Object Retention API. For more information about the parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock-overview.html#object-lock-retention-modes\">PUT Object Retention</a>.</p>"
    },
    "S3SetObjectTaggingOperation": {
      "type": "structure",
      "members": {
        "TagSet": {
          "shape": "S3TagSet",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p>Contains the configuration parameters for a Set Object Tagging operation. Amazon S3 Batch Operations passes each value through to the underlying PUT Object tagging API. For more information about the parameters for this operation, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTtagging.html\">PUT Object tagging</a>.</p>"
    },
    "S3StorageClass": {
      "type": "string",
      "enum": [
        "STANDARD",
        "STANDARD_IA",
        "ONEZONE_IA",
        "GLACIER",
        "INTELLIGENT_TIERING",
        "DEEP_ARCHIVE"
      ]
    },
    "S3Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagKeyString",
          "documentation": "<p/>"
        },
        "Value": {
          "shape": "TagValueString",
          "documentation": "<p/>"
        }
      },
      "documentation": "<p/>"
    },
    "S3TagSet": {
      "type": "list",
      "member": {
        "shape": "S3Tag"
      }
    },
    "S3UserMetadata": {
      "type": "map",
      "key": {
        "shape": "NonEmptyMaxLength1024String"
      },
      "value": {
        "shape": "MaxLength1024String"
      },
      "max": 8192
    },
    "Setting": {
      "type": "boolean"
    },
    "StringForNextToken": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^[A-Za-z0-9\\+\\:\\/\\=\\?\\#-_]+$"
    },
    "SuspendedCause": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "SuspendedDate": {
      "type": "timestamp"
    },
    "TagKeyString": {
      "type": "string",
      "max": 1024,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:=+\\-@%]*)$"
    },
    "TagValueString": {
      "type": "string",
      "max": 1024,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:=+\\-@%]*)$"
    },
    "TimeStamp": {
      "type": "timestamp"
    },
    "UpdateJobPriorityRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "JobId",
        "Priority"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p/>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the job whose priority you want to update.</p>",
          "location": "uri",
          "locationName": "id"
        },
        "Priority": {
          "shape": "JobPriority",
          "documentation": "<p>The priority you want to assign to this job.</p>",
          "location": "querystring",
          "locationName": "priority"
        }
      }
    },
    "UpdateJobPriorityResult": {
      "type": "structure",
      "required": [
        "JobId",
        "Priority"
      ],
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the job whose priority Amazon S3 updated.</p>"
        },
        "Priority": {
          "shape": "JobPriority",
          "documentation": "<p>The new priority assigned to the specified job.</p>"
        }
      }
    },
    "UpdateJobStatusRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "JobId",
        "RequestedJobStatus"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p/>",
          "location": "header",
          "locationName": "x-amz-account-id"
        },
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID of the job whose status you want to update.</p>",
          "location": "uri",
          "locationName": "id"
        },
        "RequestedJobStatus": {
          "shape": "RequestedJobStatus",
          "documentation": "<p>The status that you want to move the specified job to.</p>",
          "location": "querystring",
          "locationName": "requestedJobStatus"
        },
        "StatusUpdateReason": {
          "shape": "JobStatusUpdateReason",
          "documentation": "<p>A description of the reason why you want to change the specified job's status. This field can be any string up to the maximum length.</p>",
          "location": "querystring",
          "locationName": "statusUpdateReason"
        }
      }
    },
    "UpdateJobStatusResult": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "JobId",
          "documentation": "<p>The ID for the job whose status was updated.</p>"
        },
        "Status": {
          "shape": "JobStatus",
          "documentation": "<p>The current status for the specified job.</p>"
        },
        "StatusUpdateReason": {
          "shape": "JobStatusUpdateReason",
          "documentation": "<p>The reason that the specified job's status was updated.</p>"
        }
      }
    },
    "VpcConfiguration": {
      "type": "structure",
      "required": [
        "VpcId"
      ],
      "members": {
        "VpcId": {
          "shape": "VpcId",
          "documentation": "<p>If this field is specified, this access point will only allow connections from the specified VPC ID.</p>"
        }
      },
      "documentation": "<p>The virtual private cloud (VPC) configuration for an access point.</p>"
    },
    "VpcId": {
      "type": "string",
      "max": 1024,
      "min": 1
    }
  },
  "documentation": "<p> AWS S3 Control provides access to Amazon S3 control plane operations. </p>"
}
]===]))
