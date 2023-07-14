local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-11-05",
    "endpointPrefix": "cloudfront",
    "globalEndpoint": "cloudfront.amazonaws.com",
    "protocol": "rest-xml",
    "serviceAbbreviation": "CloudFront",
    "serviceFullName": "Amazon CloudFront",
    "serviceId": "CloudFront",
    "signatureVersion": "v4",
    "uid": "cloudfront-2018-11-05"
  },
  "operations": {
    "CreateCloudFrontOriginAccessIdentity": {
      "name": "CreateCloudFrontOriginAccessIdentity2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/origin-access-identity/cloudfront",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateCloudFrontOriginAccessIdentityRequest"
      },
      "output": {
        "shape": "CreateCloudFrontOriginAccessIdentityResult"
      },
      "errors": [
        {
          "shape": "CloudFrontOriginAccessIdentityAlreadyExists"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyCloudFrontOriginAccessIdentities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateDistribution": {
      "name": "CreateDistribution2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/distribution",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateDistributionRequest"
      },
      "output": {
        "shape": "CreateDistributionResult"
      },
      "errors": [
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "DistributionAlreadyExists"
        },
        {
          "shape": "InvalidOrigin"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "InvalidViewerCertificate"
        },
        {
          "shape": "InvalidMinimumProtocolVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyDistributionCNAMEs"
        },
        {
          "shape": "TooManyDistributions"
        },
        {
          "shape": "InvalidDefaultRootObject"
        },
        {
          "shape": "InvalidRelativePath"
        },
        {
          "shape": "InvalidErrorCode"
        },
        {
          "shape": "InvalidResponseCode"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidRequiredProtocol"
        },
        {
          "shape": "NoSuchOrigin"
        },
        {
          "shape": "TooManyOrigins"
        },
        {
          "shape": "TooManyOriginGroupsPerDistribution"
        },
        {
          "shape": "TooManyCacheBehaviors"
        },
        {
          "shape": "TooManyCookieNamesInWhiteList"
        },
        {
          "shape": "InvalidForwardCookies"
        },
        {
          "shape": "TooManyHeadersInForwardedValues"
        },
        {
          "shape": "InvalidHeadersForS3Origin"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "TooManyCertificates"
        },
        {
          "shape": "InvalidLocationCode"
        },
        {
          "shape": "InvalidGeoRestrictionParameter"
        },
        {
          "shape": "InvalidProtocolSettings"
        },
        {
          "shape": "InvalidTTLOrder"
        },
        {
          "shape": "InvalidWebACLId"
        },
        {
          "shape": "TooManyOriginCustomHeaders"
        },
        {
          "shape": "TooManyQueryStringParameters"
        },
        {
          "shape": "InvalidQueryStringParameters"
        },
        {
          "shape": "TooManyDistributionsWithLambdaAssociations"
        },
        {
          "shape": "TooManyLambdaFunctionAssociations"
        },
        {
          "shape": "InvalidLambdaFunctionAssociation"
        },
        {
          "shape": "InvalidOriginReadTimeout"
        },
        {
          "shape": "InvalidOriginKeepaliveTimeout"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"
        },
        {
          "shape": "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"
        }
      ],
      "documentation": "<p>Creates a new web distribution. You create a CloudFront distribution to tell CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery. Send a <code>POST</code> request to the <code>/<i>CloudFront API version</i>/distribution</code>/<code>distribution ID</code> resource.</p> <important> <p>When you update a distribution, there are more required fields than when you create a distribution. When you update your distribution by using <a>UpdateDistribution</a>, follow the steps included in the documentation to get the current configuration and then make your updates. This helps to make sure that you include all of the required fields. To view a summary, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html\">Required Fields for Create Distribution and Update Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </important> <p>If you are using Adobe Flash Media Server's RTMP protocol, you set up a different kind of CloudFront distribution. For more information, see <a>CreateStreamingDistribution</a>.</p>"
    },
    "CreateDistributionWithTags": {
      "name": "CreateDistributionWithTags2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/distribution?WithTags",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateDistributionWithTagsRequest"
      },
      "output": {
        "shape": "CreateDistributionWithTagsResult"
      },
      "errors": [
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "DistributionAlreadyExists"
        },
        {
          "shape": "InvalidOrigin"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "InvalidViewerCertificate"
        },
        {
          "shape": "InvalidMinimumProtocolVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyDistributionCNAMEs"
        },
        {
          "shape": "TooManyDistributions"
        },
        {
          "shape": "InvalidDefaultRootObject"
        },
        {
          "shape": "InvalidRelativePath"
        },
        {
          "shape": "InvalidErrorCode"
        },
        {
          "shape": "InvalidResponseCode"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidRequiredProtocol"
        },
        {
          "shape": "NoSuchOrigin"
        },
        {
          "shape": "TooManyOrigins"
        },
        {
          "shape": "TooManyOriginGroupsPerDistribution"
        },
        {
          "shape": "TooManyCacheBehaviors"
        },
        {
          "shape": "TooManyCookieNamesInWhiteList"
        },
        {
          "shape": "InvalidForwardCookies"
        },
        {
          "shape": "TooManyHeadersInForwardedValues"
        },
        {
          "shape": "InvalidHeadersForS3Origin"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "TooManyCertificates"
        },
        {
          "shape": "InvalidLocationCode"
        },
        {
          "shape": "InvalidGeoRestrictionParameter"
        },
        {
          "shape": "InvalidProtocolSettings"
        },
        {
          "shape": "InvalidTTLOrder"
        },
        {
          "shape": "InvalidWebACLId"
        },
        {
          "shape": "TooManyOriginCustomHeaders"
        },
        {
          "shape": "InvalidTagging"
        },
        {
          "shape": "TooManyQueryStringParameters"
        },
        {
          "shape": "InvalidQueryStringParameters"
        },
        {
          "shape": "TooManyDistributionsWithLambdaAssociations"
        },
        {
          "shape": "TooManyLambdaFunctionAssociations"
        },
        {
          "shape": "InvalidLambdaFunctionAssociation"
        },
        {
          "shape": "InvalidOriginReadTimeout"
        },
        {
          "shape": "InvalidOriginKeepaliveTimeout"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"
        },
        {
          "shape": "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"
        }
      ],
      "documentation": "<p>Create a new distribution with tags.</p>"
    },
    "CreateFieldLevelEncryptionConfig": {
      "name": "CreateFieldLevelEncryptionConfig2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/field-level-encryption",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateFieldLevelEncryptionConfigRequest"
      },
      "output": {
        "shape": "CreateFieldLevelEncryptionConfigResult"
      },
      "errors": [
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        },
        {
          "shape": "FieldLevelEncryptionConfigAlreadyExists"
        },
        {
          "shape": "TooManyFieldLevelEncryptionConfigs"
        },
        {
          "shape": "TooManyFieldLevelEncryptionQueryArgProfiles"
        },
        {
          "shape": "TooManyFieldLevelEncryptionContentTypeProfiles"
        },
        {
          "shape": "QueryArgProfileEmpty"
        }
      ],
      "documentation": "<p>Create a new field-level encryption configuration.</p>"
    },
    "CreateFieldLevelEncryptionProfile": {
      "name": "CreateFieldLevelEncryptionProfile2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/field-level-encryption-profile",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateFieldLevelEncryptionProfileRequest"
      },
      "output": {
        "shape": "CreateFieldLevelEncryptionProfileResult"
      },
      "errors": [
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "NoSuchPublicKey"
        },
        {
          "shape": "FieldLevelEncryptionProfileAlreadyExists"
        },
        {
          "shape": "FieldLevelEncryptionProfileSizeExceeded"
        },
        {
          "shape": "TooManyFieldLevelEncryptionProfiles"
        },
        {
          "shape": "TooManyFieldLevelEncryptionEncryptionEntities"
        },
        {
          "shape": "TooManyFieldLevelEncryptionFieldPatterns"
        }
      ],
      "documentation": "<p>Create a field-level encryption profile.</p>"
    },
    "CreateInvalidation": {
      "name": "CreateInvalidation2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/distribution/{DistributionId}/invalidation",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateInvalidationRequest"
      },
      "output": {
        "shape": "CreateInvalidationResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "BatchTooLarge"
        },
        {
          "shape": "TooManyInvalidationsInProgress"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Create a new invalidation. </p>"
    },
    "CreatePublicKey": {
      "name": "CreatePublicKey2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/public-key",
        "responseCode": 201
      },
      "input": {
        "shape": "CreatePublicKeyRequest"
      },
      "output": {
        "shape": "CreatePublicKeyResult"
      },
      "errors": [
        {
          "shape": "PublicKeyAlreadyExists"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "TooManyPublicKeys"
        }
      ],
      "documentation": "<p>Add a new public key to CloudFront to use, for example, for field-level encryption. You can add a maximum of 10 public keys with one AWS account.</p>"
    },
    "CreateStreamingDistribution": {
      "name": "CreateStreamingDistribution2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/streaming-distribution",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateStreamingDistributionRequest"
      },
      "output": {
        "shape": "CreateStreamingDistributionResult"
      },
      "errors": [
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "StreamingDistributionAlreadyExists"
        },
        {
          "shape": "InvalidOrigin"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyStreamingDistributionCNAMEs"
        },
        {
          "shape": "TooManyStreamingDistributions"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Creates a new RMTP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP. </p> <p>To create a new web distribution, submit a <code>POST</code> request to the <i>CloudFront API version</i>/distribution resource. The request body must include a document with a <i>StreamingDistributionConfig</i> element. The response echoes the <code>StreamingDistributionConfig</code> element and returns other information about the RTMP distribution.</p> <p>To get the status of your request, use the <i>GET StreamingDistribution</i> API action. When the value of <code>Enabled</code> is <code>true</code> and the value of <code>Status</code> is <code>Deployed</code>, your distribution is ready. A distribution usually deploys in less than 15 minutes.</p> <p>For more information about web distributions, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html\">Working with RTMP Distributions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <important> <p>Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the <code>Quantity</code> element and the number of values specified.</p> </important>"
    },
    "CreateStreamingDistributionWithTags": {
      "name": "CreateStreamingDistributionWithTags2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/streaming-distribution?WithTags",
        "responseCode": 201
      },
      "input": {
        "shape": "CreateStreamingDistributionWithTagsRequest"
      },
      "output": {
        "shape": "CreateStreamingDistributionWithTagsResult"
      },
      "errors": [
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "StreamingDistributionAlreadyExists"
        },
        {
          "shape": "InvalidOrigin"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "TooManyStreamingDistributionCNAMEs"
        },
        {
          "shape": "TooManyStreamingDistributions"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidTagging"
        }
      ],
      "documentation": "<p>Create a new streaming distribution with tags.</p>"
    },
    "DeleteCloudFrontOriginAccessIdentity": {
      "name": "DeleteCloudFrontOriginAccessIdentity2018_11_05",
      "http": {
        "method": "DELETE",
        "requestUri": "/2018-11-05/origin-access-identity/cloudfront/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteCloudFrontOriginAccessIdentityRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchCloudFrontOriginAccessIdentity"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "CloudFrontOriginAccessIdentityInUse"
        }
      ],
      "documentation": "<p>Delete an origin access identity. </p>"
    },
    "DeleteDistribution": {
      "name": "DeleteDistribution2018_11_05",
      "http": {
        "method": "DELETE",
        "requestUri": "/2018-11-05/distribution/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteDistributionRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "DistributionNotDisabled"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "PreconditionFailed"
        }
      ],
      "documentation": "<p>Delete a distribution. </p>"
    },
    "DeleteFieldLevelEncryptionConfig": {
      "name": "DeleteFieldLevelEncryptionConfig2018_11_05",
      "http": {
        "method": "DELETE",
        "requestUri": "/2018-11-05/field-level-encryption/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteFieldLevelEncryptionConfigRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "FieldLevelEncryptionConfigInUse"
        }
      ],
      "documentation": "<p>Remove a field-level encryption configuration.</p>"
    },
    "DeleteFieldLevelEncryptionProfile": {
      "name": "DeleteFieldLevelEncryptionProfile2018_11_05",
      "http": {
        "method": "DELETE",
        "requestUri": "/2018-11-05/field-level-encryption-profile/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteFieldLevelEncryptionProfileRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "FieldLevelEncryptionProfileInUse"
        }
      ],
      "documentation": "<p>Remove a field-level encryption profile.</p>"
    },
    "DeletePublicKey": {
      "name": "DeletePublicKey2018_11_05",
      "http": {
        "method": "DELETE",
        "requestUri": "/2018-11-05/public-key/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeletePublicKeyRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "PublicKeyInUse"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchPublicKey"
        },
        {
          "shape": "PreconditionFailed"
        }
      ],
      "documentation": "<p>Remove a public key you previously added to CloudFront.</p>"
    },
    "DeleteStreamingDistribution": {
      "name": "DeleteStreamingDistribution2018_11_05",
      "http": {
        "method": "DELETE",
        "requestUri": "/2018-11-05/streaming-distribution/{Id}",
        "responseCode": 204
      },
      "input": {
        "shape": "DeleteStreamingDistributionRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "StreamingDistributionNotDisabled"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchStreamingDistribution"
        },
        {
          "shape": "PreconditionFailed"
        }
      ],
      "documentation": "<p>Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete an RTMP distribution using the CloudFront API</b>:</p> <ol> <li> <p>Disable the RTMP distribution.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution. </p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Streaming Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Streaming Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Streaming Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Streaming Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to your <code>DELETE Streaming Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html\">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "GetCloudFrontOriginAccessIdentity": {
      "name": "GetCloudFrontOriginAccessIdentity2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/origin-access-identity/cloudfront/{Id}"
      },
      "input": {
        "shape": "GetCloudFrontOriginAccessIdentityRequest"
      },
      "output": {
        "shape": "GetCloudFrontOriginAccessIdentityResult"
      },
      "errors": [
        {
          "shape": "NoSuchCloudFrontOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the information about an origin access identity. </p>"
    },
    "GetCloudFrontOriginAccessIdentityConfig": {
      "name": "GetCloudFrontOriginAccessIdentityConfig2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/origin-access-identity/cloudfront/{Id}/config"
      },
      "input": {
        "shape": "GetCloudFrontOriginAccessIdentityConfigRequest"
      },
      "output": {
        "shape": "GetCloudFrontOriginAccessIdentityConfigResult"
      },
      "errors": [
        {
          "shape": "NoSuchCloudFrontOriginAccessIdentity"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the configuration information about an origin access identity. </p>"
    },
    "GetDistribution": {
      "name": "GetDistribution2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/distribution/{Id}"
      },
      "input": {
        "shape": "GetDistributionRequest"
      },
      "output": {
        "shape": "GetDistributionResult"
      },
      "errors": [
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the information about a distribution. </p>"
    },
    "GetDistributionConfig": {
      "name": "GetDistributionConfig2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/distribution/{Id}/config"
      },
      "input": {
        "shape": "GetDistributionConfigRequest"
      },
      "output": {
        "shape": "GetDistributionConfigResult"
      },
      "errors": [
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the configuration information about a distribution. </p>"
    },
    "GetFieldLevelEncryption": {
      "name": "GetFieldLevelEncryption2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/field-level-encryption/{Id}"
      },
      "input": {
        "shape": "GetFieldLevelEncryptionRequest"
      },
      "output": {
        "shape": "GetFieldLevelEncryptionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        }
      ],
      "documentation": "<p>Get the field-level encryption configuration information.</p>"
    },
    "GetFieldLevelEncryptionConfig": {
      "name": "GetFieldLevelEncryptionConfig2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/field-level-encryption/{Id}/config"
      },
      "input": {
        "shape": "GetFieldLevelEncryptionConfigRequest"
      },
      "output": {
        "shape": "GetFieldLevelEncryptionConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        }
      ],
      "documentation": "<p>Get the field-level encryption configuration information.</p>"
    },
    "GetFieldLevelEncryptionProfile": {
      "name": "GetFieldLevelEncryptionProfile2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/field-level-encryption-profile/{Id}"
      },
      "input": {
        "shape": "GetFieldLevelEncryptionProfileRequest"
      },
      "output": {
        "shape": "GetFieldLevelEncryptionProfileResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        }
      ],
      "documentation": "<p>Get the field-level encryption profile information.</p>"
    },
    "GetFieldLevelEncryptionProfileConfig": {
      "name": "GetFieldLevelEncryptionProfileConfig2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/field-level-encryption-profile/{Id}/config"
      },
      "input": {
        "shape": "GetFieldLevelEncryptionProfileConfigRequest"
      },
      "output": {
        "shape": "GetFieldLevelEncryptionProfileConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        }
      ],
      "documentation": "<p>Get the field-level encryption profile configuration information.</p>"
    },
    "GetInvalidation": {
      "name": "GetInvalidation2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/distribution/{DistributionId}/invalidation/{Id}"
      },
      "input": {
        "shape": "GetInvalidationRequest"
      },
      "output": {
        "shape": "GetInvalidationResult"
      },
      "errors": [
        {
          "shape": "NoSuchInvalidation"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the information about an invalidation. </p>"
    },
    "GetPublicKey": {
      "name": "GetPublicKey2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/public-key/{Id}"
      },
      "input": {
        "shape": "GetPublicKeyRequest"
      },
      "output": {
        "shape": "GetPublicKeyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchPublicKey"
        }
      ],
      "documentation": "<p>Get the public key information.</p>"
    },
    "GetPublicKeyConfig": {
      "name": "GetPublicKeyConfig2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/public-key/{Id}/config"
      },
      "input": {
        "shape": "GetPublicKeyConfigRequest"
      },
      "output": {
        "shape": "GetPublicKeyConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "NoSuchPublicKey"
        }
      ],
      "documentation": "<p>Return public key configuration informaation</p>"
    },
    "GetStreamingDistribution": {
      "name": "GetStreamingDistribution2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/streaming-distribution/{Id}"
      },
      "input": {
        "shape": "GetStreamingDistributionRequest"
      },
      "output": {
        "shape": "GetStreamingDistributionResult"
      },
      "errors": [
        {
          "shape": "NoSuchStreamingDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Gets information about a specified RTMP distribution, including the distribution configuration.</p>"
    },
    "GetStreamingDistributionConfig": {
      "name": "GetStreamingDistributionConfig2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/streaming-distribution/{Id}/config"
      },
      "input": {
        "shape": "GetStreamingDistributionConfigRequest"
      },
      "output": {
        "shape": "GetStreamingDistributionConfigResult"
      },
      "errors": [
        {
          "shape": "NoSuchStreamingDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Get the configuration information about a streaming distribution. </p>"
    },
    "ListCloudFrontOriginAccessIdentities": {
      "name": "ListCloudFrontOriginAccessIdentities2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/origin-access-identity/cloudfront"
      },
      "input": {
        "shape": "ListCloudFrontOriginAccessIdentitiesRequest"
      },
      "output": {
        "shape": "ListCloudFrontOriginAccessIdentitiesResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Lists origin access identities.</p>"
    },
    "ListDistributions": {
      "name": "ListDistributions2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/distribution"
      },
      "input": {
        "shape": "ListDistributionsRequest"
      },
      "output": {
        "shape": "ListDistributionsResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>List distributions. </p>"
    },
    "ListDistributionsByWebACLId": {
      "name": "ListDistributionsByWebACLId2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/distributionsByWebACLId/{WebACLId}"
      },
      "input": {
        "shape": "ListDistributionsByWebACLIdRequest"
      },
      "output": {
        "shape": "ListDistributionsByWebACLIdResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidWebACLId"
        }
      ],
      "documentation": "<p>List the distributions that are associated with a specified AWS WAF web ACL. </p>"
    },
    "ListFieldLevelEncryptionConfigs": {
      "name": "ListFieldLevelEncryptionConfigs2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/field-level-encryption"
      },
      "input": {
        "shape": "ListFieldLevelEncryptionConfigsRequest"
      },
      "output": {
        "shape": "ListFieldLevelEncryptionConfigsResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>List all field-level encryption configurations that have been created in CloudFront for this account.</p>"
    },
    "ListFieldLevelEncryptionProfiles": {
      "name": "ListFieldLevelEncryptionProfiles2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/field-level-encryption-profile"
      },
      "input": {
        "shape": "ListFieldLevelEncryptionProfilesRequest"
      },
      "output": {
        "shape": "ListFieldLevelEncryptionProfilesResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>Request a list of field-level encryption profiles that have been created in CloudFront for this account.</p>"
    },
    "ListInvalidations": {
      "name": "ListInvalidations2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/distribution/{DistributionId}/invalidation"
      },
      "input": {
        "shape": "ListInvalidationsRequest"
      },
      "output": {
        "shape": "ListInvalidationsResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "AccessDenied"
        }
      ],
      "documentation": "<p>Lists invalidation batches. </p>"
    },
    "ListPublicKeys": {
      "name": "ListPublicKeys2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/public-key"
      },
      "input": {
        "shape": "ListPublicKeysRequest"
      },
      "output": {
        "shape": "ListPublicKeysResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>List all public keys that have been added to CloudFront for this account.</p>"
    },
    "ListStreamingDistributions": {
      "name": "ListStreamingDistributions2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/streaming-distribution"
      },
      "input": {
        "shape": "ListStreamingDistributionsRequest"
      },
      "output": {
        "shape": "ListStreamingDistributionsResult"
      },
      "errors": [
        {
          "shape": "InvalidArgument"
        }
      ],
      "documentation": "<p>List streaming distributions. </p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource2018_11_05",
      "http": {
        "method": "GET",
        "requestUri": "/2018-11-05/tagging"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidTagging"
        },
        {
          "shape": "NoSuchResource"
        }
      ],
      "documentation": "<p>List tags for a CloudFront resource.</p>"
    },
    "TagResource": {
      "name": "TagResource2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/tagging?Operation=Tag",
        "responseCode": 204
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidTagging"
        },
        {
          "shape": "NoSuchResource"
        }
      ],
      "documentation": "<p>Add tags to a CloudFront resource.</p>"
    },
    "UntagResource": {
      "name": "UntagResource2018_11_05",
      "http": {
        "method": "POST",
        "requestUri": "/2018-11-05/tagging?Operation=Untag",
        "responseCode": 204
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidTagging"
        },
        {
          "shape": "NoSuchResource"
        }
      ],
      "documentation": "<p>Remove tags from a CloudFront resource.</p>"
    },
    "UpdateCloudFrontOriginAccessIdentity": {
      "name": "UpdateCloudFrontOriginAccessIdentity2018_11_05",
      "http": {
        "method": "PUT",
        "requestUri": "/2018-11-05/origin-access-identity/cloudfront/{Id}/config"
      },
      "input": {
        "shape": "UpdateCloudFrontOriginAccessIdentityRequest"
      },
      "output": {
        "shape": "UpdateCloudFrontOriginAccessIdentityResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "NoSuchCloudFrontOriginAccessIdentity"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Update an origin access identity. </p>"
    },
    "UpdateDistribution": {
      "name": "UpdateDistribution2018_11_05",
      "http": {
        "method": "PUT",
        "requestUri": "/2018-11-05/distribution/{Id}/config"
      },
      "input": {
        "shape": "UpdateDistributionRequest"
      },
      "output": {
        "shape": "UpdateDistributionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "NoSuchDistribution"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "TooManyDistributionCNAMEs"
        },
        {
          "shape": "InvalidDefaultRootObject"
        },
        {
          "shape": "InvalidRelativePath"
        },
        {
          "shape": "InvalidErrorCode"
        },
        {
          "shape": "InvalidResponseCode"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "InvalidViewerCertificate"
        },
        {
          "shape": "InvalidMinimumProtocolVersion"
        },
        {
          "shape": "InvalidRequiredProtocol"
        },
        {
          "shape": "NoSuchOrigin"
        },
        {
          "shape": "TooManyOrigins"
        },
        {
          "shape": "TooManyOriginGroupsPerDistribution"
        },
        {
          "shape": "TooManyCacheBehaviors"
        },
        {
          "shape": "TooManyCookieNamesInWhiteList"
        },
        {
          "shape": "InvalidForwardCookies"
        },
        {
          "shape": "TooManyHeadersInForwardedValues"
        },
        {
          "shape": "InvalidHeadersForS3Origin"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "TooManyCertificates"
        },
        {
          "shape": "InvalidLocationCode"
        },
        {
          "shape": "InvalidGeoRestrictionParameter"
        },
        {
          "shape": "InvalidTTLOrder"
        },
        {
          "shape": "InvalidWebACLId"
        },
        {
          "shape": "TooManyOriginCustomHeaders"
        },
        {
          "shape": "TooManyQueryStringParameters"
        },
        {
          "shape": "InvalidQueryStringParameters"
        },
        {
          "shape": "TooManyDistributionsWithLambdaAssociations"
        },
        {
          "shape": "TooManyLambdaFunctionAssociations"
        },
        {
          "shape": "InvalidLambdaFunctionAssociation"
        },
        {
          "shape": "InvalidOriginReadTimeout"
        },
        {
          "shape": "InvalidOriginKeepaliveTimeout"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior"
        },
        {
          "shape": "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig"
        }
      ],
      "documentation": "<p>Updates the configuration for a web distribution. </p> <important> <p>When you update a distribution, there are more required fields than when you create a distribution. When you update your distribution by using this API action, follow the steps here to get the current configuration and then make your updates, to make sure that you include all of the required fields. To view a summary, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-overview-required-fields.html\">Required Fields for Create Distribution and Update Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </important> <p>The update process includes getting the current distribution configuration, updating the XML document that is returned to make your changes, and then submitting an <code>UpdateDistribution</code> request to make the updates.</p> <p>For information about updating a distribution using the CloudFront console instead, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-creating-console.html\">Creating a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p> <b>To update a web distribution using the CloudFront API</b> </p> <ol> <li> <p>Submit a <a>GetDistributionConfig</a> request to get the current configuration and an <code>Etag</code> header for the distribution.</p> <note> <p>If you update the distribution again, you must get a new <code>Etag</code> header.</p> </note> </li> <li> <p>Update the XML document that was returned in the response to your <code>GetDistributionConfig</code> request to include your changes. </p> <important> <p>When you edit the XML file, be aware of the following:</p> <ul> <li> <p>You must strip out the ETag parameter that is returned.</p> </li> <li> <p>Additional fields are required when you update a distribution. There may be fields included in the XML file for features that you haven't configured for your distribution. This is expected and required to successfully update the distribution.</p> </li> <li> <p>You can't change the value of <code>CallerReference</code>. If you try to change this value, CloudFront returns an <code>IllegalUpdate</code> error. </p> </li> <li> <p>The new configuration replaces the existing configuration; the values that you specify in an <code>UpdateDistribution</code> request are not merged into your existing configuration. When you add, delete, or replace values in an element that allows multiple values (for example, <code>CNAME</code>), you must specify all of the values that you want to appear in the updated distribution. In addition, you must update the corresponding <code>Quantity</code> element.</p> </li> </ul> </important> </li> <li> <p>Submit an <code>UpdateDistribution</code> request to update the configuration for your distribution:</p> <ul> <li> <p>In the request body, include the XML document that you updated in Step 2. The request body must include an XML document with a <code>DistributionConfig</code> element.</p> </li> <li> <p>Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GetDistributionConfig</code> request in Step 1.</p> </li> </ul> </li> <li> <p>Review the response to the <code>UpdateDistribution</code> request to confirm that the configuration was successfully updated.</p> </li> <li> <p>Optional: Submit a <a>GetDistribution</a> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> </ol>"
    },
    "UpdateFieldLevelEncryptionConfig": {
      "name": "UpdateFieldLevelEncryptionConfig2018_11_05",
      "http": {
        "method": "PUT",
        "requestUri": "/2018-11-05/field-level-encryption/{Id}/config"
      },
      "input": {
        "shape": "UpdateFieldLevelEncryptionConfigRequest"
      },
      "output": {
        "shape": "UpdateFieldLevelEncryptionConfigResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionConfig"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "TooManyFieldLevelEncryptionQueryArgProfiles"
        },
        {
          "shape": "TooManyFieldLevelEncryptionContentTypeProfiles"
        },
        {
          "shape": "QueryArgProfileEmpty"
        }
      ],
      "documentation": "<p>Update a field-level encryption configuration. </p>"
    },
    "UpdateFieldLevelEncryptionProfile": {
      "name": "UpdateFieldLevelEncryptionProfile2018_11_05",
      "http": {
        "method": "PUT",
        "requestUri": "/2018-11-05/field-level-encryption-profile/{Id}/config"
      },
      "input": {
        "shape": "UpdateFieldLevelEncryptionProfileRequest"
      },
      "output": {
        "shape": "UpdateFieldLevelEncryptionProfileResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "FieldLevelEncryptionProfileAlreadyExists"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InconsistentQuantities"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "NoSuchPublicKey"
        },
        {
          "shape": "NoSuchFieldLevelEncryptionProfile"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "FieldLevelEncryptionProfileSizeExceeded"
        },
        {
          "shape": "TooManyFieldLevelEncryptionEncryptionEntities"
        },
        {
          "shape": "TooManyFieldLevelEncryptionFieldPatterns"
        }
      ],
      "documentation": "<p>Update a field-level encryption profile. </p>"
    },
    "UpdatePublicKey": {
      "name": "UpdatePublicKey2018_11_05",
      "http": {
        "method": "PUT",
        "requestUri": "/2018-11-05/public-key/{Id}/config"
      },
      "input": {
        "shape": "UpdatePublicKeyRequest"
      },
      "output": {
        "shape": "UpdatePublicKeyResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "CannotChangeImmutablePublicKeyFields"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "NoSuchPublicKey"
        },
        {
          "shape": "PreconditionFailed"
        }
      ],
      "documentation": "<p>Update public key information. Note that the only value you can change is the comment.</p>"
    },
    "UpdateStreamingDistribution": {
      "name": "UpdateStreamingDistribution2018_11_05",
      "http": {
        "method": "PUT",
        "requestUri": "/2018-11-05/streaming-distribution/{Id}/config"
      },
      "input": {
        "shape": "UpdateStreamingDistributionRequest"
      },
      "output": {
        "shape": "UpdateStreamingDistributionResult"
      },
      "errors": [
        {
          "shape": "AccessDenied"
        },
        {
          "shape": "CNAMEAlreadyExists"
        },
        {
          "shape": "IllegalUpdate"
        },
        {
          "shape": "InvalidIfMatchVersion"
        },
        {
          "shape": "MissingBody"
        },
        {
          "shape": "NoSuchStreamingDistribution"
        },
        {
          "shape": "PreconditionFailed"
        },
        {
          "shape": "TooManyStreamingDistributionCNAMEs"
        },
        {
          "shape": "InvalidArgument"
        },
        {
          "shape": "InvalidOriginAccessIdentity"
        },
        {
          "shape": "TooManyTrustedSigners"
        },
        {
          "shape": "TrustedSignerDoesNotExist"
        },
        {
          "shape": "InconsistentQuantities"
        }
      ],
      "documentation": "<p>Update a streaming distribution. </p>"
    }
  },
  "shapes": {
    "ActiveTrustedSigners": {
      "type": "structure",
      "required": [
        "Enabled",
        "Quantity"
      ],
      "members": {
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Enabled is <code>true</code> if any of the AWS accounts listed in the <code>TrustedSigners</code> complex type for this RTMP distribution have active CloudFront key pairs. If not, <code>Enabled</code> is <code>false</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>A complex type that contains one <code>Signer</code> complex type for each trusted signer specified in the <code>TrustedSigners</code> complex type.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
        },
        "Items": {
          "shape": "SignerList",
          "documentation": "<p>A complex type that contains one <code>Signer</code> complex type for each trusted signer that is specified in the <code>TrustedSigners</code> complex type.</p> <p>For more information, see <a>ActiveTrustedSigners</a>. </p>"
        }
      },
      "documentation": "<p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs. </p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "AliasList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "CNAME"
      }
    },
    "Aliases": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of CNAME aliases, if any, that you want to associate with this distribution.</p>"
        },
        "Items": {
          "shape": "AliasList",
          "documentation": "<p>A complex type that contains the CNAME aliases, if any, that you want to associate with this distribution.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. </p>"
    },
    "AllowedMethods": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>"
        },
        "Items": {
          "shape": "MethodsList",
          "documentation": "<p>A complex type that contains the HTTP methods that you want CloudFront to process and forward to your origin.</p>"
        },
        "CachedMethods": {
          "shape": "CachedMethods"
        }
      },
      "documentation": "<p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>"
    },
    "AwsAccountNumberList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "AwsAccountNumber"
      }
    },
    "CacheBehavior": {
      "type": "structure",
      "required": [
        "PathPattern",
        "TargetOriginId",
        "ForwardedValues",
        "TrustedSigners",
        "ViewerProtocolPolicy",
        "MinTTL"
      ],
      "members": {
        "PathPattern": {
          "shape": "string",
          "documentation": "<p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to apply the behavior to. When CloudFront receives a viewer request, the requested path is compared with path patterns in the order in which cache behaviors are listed in the distribution.</p> <note> <p>You can optionally include a slash (<code>/</code>) at the beginning of the path pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without the leading <code>/</code>.</p> </note> <p>The path pattern for the default cache behavior is <code>*</code> and cannot be changed. If the request for an object does not match the path pattern for any cache behaviors, CloudFront applies the behavior in the default cache behavior.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern\">Path Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>"
        },
        "TargetOriginId": {
          "shape": "string",
          "documentation": "<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior in your distribution.</p>"
        },
        "ForwardedValues": {
          "shape": "ForwardedValues",
          "documentation": "<p>A complex type that specifies how CloudFront handles query strings and cookies.</p>"
        },
        "TrustedSigners": {
          "shape": "TrustedSigners",
          "documentation": "<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>"
        },
        "ViewerProtocolPolicy": {
          "shape": "ViewerProtocolPolicy",
          "documentation": "<p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL. </p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden). </p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html\">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>"
        },
        "MinTTL": {
          "shape": "long",
          "documentation": "<p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>"
        },
        "AllowedMethods": {
          "shape": "AllowedMethods"
        },
        "SmoothStreaming": {
          "shape": "boolean",
          "documentation": "<p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>"
        },
        "DefaultTTL": {
          "shape": "long",
          "documentation": "<p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "MaxTTL": {
          "shape": "long",
          "documentation": "<p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Compress": {
          "shape": "boolean",
          "documentation": "<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify true; if not, specify false. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "LambdaFunctionAssociations": {
          "shape": "LambdaFunctionAssociations",
          "documentation": "<p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>"
        },
        "FieldLevelEncryptionId": {
          "shape": "string",
          "documentation": "<p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for a cache behavior or for the default cache behavior in your distribution.</p>"
        }
      },
      "documentation": "<p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current limit on the number of cache behaviors that you can add to a distribution, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront\">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p> <p>If you don't want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don't include an empty <code>CacheBehavior</code> element, or CloudFront returns a <code>MalformedXML</code> error.</p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <p>For more information about cache behaviors, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior\">Cache Behaviors</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CacheBehaviorList": {
      "type": "list",
      "member": {
        "shape": "CacheBehavior",
        "locationName": "CacheBehavior"
      }
    },
    "CacheBehaviors": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of cache behaviors for this distribution. </p>"
        },
        "Items": {
          "shape": "CacheBehaviorList",
          "documentation": "<p>Optional: A complex type that contains cache behaviors for this distribution. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>"
    },
    "CachedMethods": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are <code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests) and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests).</p>"
        },
        "Items": {
          "shape": "MethodsList",
          "documentation": "<p>A complex type that contains the HTTP methods that you want CloudFront to cache responses to.</p>"
        }
      },
      "documentation": "<p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. </p>"
    },
    "CertificateSource": {
      "type": "string",
      "enum": [
        "cloudfront",
        "iam",
        "acm"
      ]
    },
    "CloudFrontOriginAccessIdentity": {
      "type": "structure",
      "required": [
        "Id",
        "S3CanonicalUserId"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID for the origin access identity, for example, <code>E74FTE3AJFJ256A</code>. </p>"
        },
        "S3CanonicalUserId": {
          "shape": "string",
          "documentation": "<p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin access identity read permission to an object in Amazon S3. </p>"
        },
        "CloudFrontOriginAccessIdentityConfig": {
          "shape": "CloudFrontOriginAccessIdentityConfig",
          "documentation": "<p>The current configuration information for the identity. </p>"
        }
      },
      "documentation": "<p>CloudFront origin access identity.</p>"
    },
    "CloudFrontOriginAccessIdentityConfig": {
      "type": "structure",
      "required": [
        "CallerReference",
        "Comment"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is created.</p> <p>If the <code>CallerReference</code> is a value already sent in a previous identity request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request. </p> <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity, but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>Any comments you want to include about the origin access identity. </p>"
        }
      },
      "documentation": "<p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. </p>"
    },
    "CloudFrontOriginAccessIdentityList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page). </p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your origin access identities where they left off. </p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of origin access identities you want in the response body. </p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more origin access identities remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more items in the list.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of CloudFront origin access identities that were created by the current AWS account. </p>"
        },
        "Items": {
          "shape": "CloudFrontOriginAccessIdentitySummaryList",
          "documentation": "<p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code> element for each origin access identity that was created by the current AWS account.</p>"
        }
      },
      "documentation": "<p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "CloudFrontOriginAccessIdentitySummary": {
      "type": "structure",
      "required": [
        "Id",
        "S3CanonicalUserId",
        "Comment"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>.</p>"
        },
        "S3CanonicalUserId": {
          "shape": "string",
          "documentation": "<p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>The comment for this origin access identity, as originally specified when created.</p>"
        }
      },
      "documentation": "<p>Summary of the information about a CloudFront origin access identity.</p>"
    },
    "CloudFrontOriginAccessIdentitySummaryList": {
      "type": "list",
      "member": {
        "shape": "CloudFrontOriginAccessIdentitySummary",
        "locationName": "CloudFrontOriginAccessIdentitySummary"
      }
    },
    "ContentTypeProfile": {
      "type": "structure",
      "required": [
        "Format",
        "ContentType"
      ],
      "members": {
        "Format": {
          "shape": "Format",
          "documentation": "<p>The format for a field-level encryption content type-profile mapping. </p>"
        },
        "ProfileId": {
          "shape": "string",
          "documentation": "<p>The profile ID for a field-level encryption content type-profile mapping. </p>"
        },
        "ContentType": {
          "shape": "string",
          "documentation": "<p>The content type for a field-level encryption content type-profile mapping. </p>"
        }
      },
      "documentation": "<p>A field-level encryption content type profile. </p>"
    },
    "ContentTypeProfileConfig": {
      "type": "structure",
      "required": [
        "ForwardWhenContentTypeIsUnknown"
      ],
      "members": {
        "ForwardWhenContentTypeIsUnknown": {
          "shape": "boolean",
          "documentation": "<p>The setting in a field-level encryption content type-profile mapping that specifies what to do when an unknown content type is provided for the profile. If true, content is forwarded without being encrypted when the content type is unknown. If false (the default), an error is returned when the content type is unknown. </p>"
        },
        "ContentTypeProfiles": {
          "shape": "ContentTypeProfiles",
          "documentation": "<p>The configuration for a field-level encryption content type-profile. </p>"
        }
      },
      "documentation": "<p>The configuration for a field-level encryption content type-profile mapping. </p>"
    },
    "ContentTypeProfileList": {
      "type": "list",
      "member": {
        "shape": "ContentTypeProfile",
        "locationName": "ContentTypeProfile"
      }
    },
    "ContentTypeProfiles": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of field-level encryption content type-profile mappings. </p>"
        },
        "Items": {
          "shape": "ContentTypeProfileList",
          "documentation": "<p>Items in a field-level encryption content type-profile mapping. </p>"
        }
      },
      "documentation": "<p>Field-level encryption content type-profile. </p>"
    },
    "CookieNameList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Name"
      }
    },
    "CookieNames": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of different cookies that you want CloudFront to forward to the origin for this cache behavior.</p>"
        },
        "Items": {
          "shape": "CookieNameList",
          "documentation": "<p>A complex type that contains one <code>Name</code> element for each cookie that you want CloudFront to forward to the origin for this cache behavior.</p>"
        }
      },
      "documentation": "<p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CookiePreference": {
      "type": "structure",
      "required": [
        "Forward"
      ],
      "members": {
        "Forward": {
          "shape": "ItemSelection",
          "documentation": "<p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p> <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the <code>Forward</code> element. </p>"
        },
        "WhitelistedNames": {
          "shape": "CookieNames",
          "documentation": "<p>Required if you specify <code>whitelist</code> for the value of <code>Forward:</code>. A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.</p> <p>If you specify <code>all</code> or none for the value of <code>Forward</code>, omit <code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from <code>whitelist</code> to all or none and you don't delete the <code>WhitelistedNames</code> element and its child elements, CloudFront deletes them automatically.</p> <p>For the current limit on the number of cookie names that you can whitelist for each cache behavior, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront\">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>"
        }
      },
      "documentation": "<p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CreateCloudFrontOriginAccessIdentityRequest": {
      "type": "structure",
      "required": [
        "CloudFrontOriginAccessIdentityConfig"
      ],
      "members": {
        "CloudFrontOriginAccessIdentityConfig": {
          "shape": "CloudFrontOriginAccessIdentityConfig",
          "documentation": "<p>The current configuration information for the identity.</p>",
          "locationName": "CloudFrontOriginAccessIdentityConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "documentation": "<p>The request to create a new origin access identity.</p>",
      "payload": "CloudFrontOriginAccessIdentityConfig"
    },
    "CreateCloudFrontOriginAccessIdentityResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentity": {
          "shape": "CloudFrontOriginAccessIdentity",
          "documentation": "<p>The origin access identity's information.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new origin access identity just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the origin access identity created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "CloudFrontOriginAccessIdentity"
    },
    "CreateDistributionRequest": {
      "type": "structure",
      "required": [
        "DistributionConfig"
      ],
      "members": {
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>The distribution's configuration information.</p>",
          "locationName": "DistributionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "documentation": "<p>The request to create a new distribution.</p>",
      "payload": "DistributionConfig"
    },
    "CreateDistributionResult": {
      "type": "structure",
      "members": {
        "Distribution": {
          "shape": "Distribution",
          "documentation": "<p>The distribution's information.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the distribution created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Distribution"
    },
    "CreateDistributionWithTagsRequest": {
      "type": "structure",
      "required": [
        "DistributionConfigWithTags"
      ],
      "members": {
        "DistributionConfigWithTags": {
          "shape": "DistributionConfigWithTags",
          "documentation": "<p>The distribution's configuration information. </p>",
          "locationName": "DistributionConfigWithTags",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "documentation": "<p>The request to create a new distribution with tags. </p>",
      "payload": "DistributionConfigWithTags"
    },
    "CreateDistributionWithTagsResult": {
      "type": "structure",
      "members": {
        "Distribution": {
          "shape": "Distribution",
          "documentation": "<p>The distribution's information. </p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5</code>. </p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the distribution created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "Distribution"
    },
    "CreateFieldLevelEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "FieldLevelEncryptionConfig"
      ],
      "members": {
        "FieldLevelEncryptionConfig": {
          "shape": "FieldLevelEncryptionConfig",
          "documentation": "<p>The request to create a new field-level encryption configuration.</p>",
          "locationName": "FieldLevelEncryptionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "payload": "FieldLevelEncryptionConfig"
    },
    "CreateFieldLevelEncryptionConfigResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryption": {
          "shape": "FieldLevelEncryption",
          "documentation": "<p>Returned when you create a new field-level encryption configuration.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new configuration resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-config/EDFDVBD632BHDS5</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryption"
    },
    "CreateFieldLevelEncryptionProfileRequest": {
      "type": "structure",
      "required": [
        "FieldLevelEncryptionProfileConfig"
      ],
      "members": {
        "FieldLevelEncryptionProfileConfig": {
          "shape": "FieldLevelEncryptionProfileConfig",
          "documentation": "<p>The request to create a field-level encryption profile.</p>",
          "locationName": "FieldLevelEncryptionProfileConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "payload": "FieldLevelEncryptionProfileConfig"
    },
    "CreateFieldLevelEncryptionProfileResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfile": {
          "shape": "FieldLevelEncryptionProfile",
          "documentation": "<p>Returned when you create a new field-level encryption profile.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new profile resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-profile/EDFDVBD632BHDS5</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionProfile"
    },
    "CreateInvalidationRequest": {
      "type": "structure",
      "required": [
        "DistributionId",
        "InvalidationBatch"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The distribution's id.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        },
        "InvalidationBatch": {
          "shape": "InvalidationBatch",
          "documentation": "<p>The batch information for the invalidation.</p>",
          "locationName": "InvalidationBatch",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "documentation": "<p>The request to create an invalidation.</p>",
      "payload": "InvalidationBatch"
    },
    "CreateInvalidationResult": {
      "type": "structure",
      "members": {
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the distribution and invalidation batch request, including the <code>Invalidation ID</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "Invalidation": {
          "shape": "Invalidation",
          "documentation": "<p>The invalidation's information.</p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Invalidation"
    },
    "CreatePublicKeyRequest": {
      "type": "structure",
      "required": [
        "PublicKeyConfig"
      ],
      "members": {
        "PublicKeyConfig": {
          "shape": "PublicKeyConfig",
          "documentation": "<p>The request to add a public key to CloudFront.</p>",
          "locationName": "PublicKeyConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "payload": "PublicKeyConfig"
    },
    "CreatePublicKeyResult": {
      "type": "structure",
      "members": {
        "PublicKey": {
          "shape": "PublicKey",
          "documentation": "<p>Returned when you add a public key.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new public key resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/cloudfront-public-key/EDFDVBD632BHDS5</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the public key. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "PublicKey"
    },
    "CreateStreamingDistributionRequest": {
      "type": "structure",
      "required": [
        "StreamingDistributionConfig"
      ],
      "members": {
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>The streaming distribution's configuration information.</p>",
          "locationName": "StreamingDistributionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "documentation": "<p>The request to create a new streaming distribution.</p>",
      "payload": "StreamingDistributionConfig"
    },
    "CreateStreamingDistributionResult": {
      "type": "structure",
      "members": {
        "StreamingDistribution": {
          "shape": "StreamingDistribution",
          "documentation": "<p>The streaming distribution's information.</p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new streaming distribution resource just created. For example: <code>https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the streaming distribution created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "StreamingDistribution"
    },
    "CreateStreamingDistributionWithTagsRequest": {
      "type": "structure",
      "required": [
        "StreamingDistributionConfigWithTags"
      ],
      "members": {
        "StreamingDistributionConfigWithTags": {
          "shape": "StreamingDistributionConfigWithTags",
          "documentation": "<p> The streaming distribution's configuration information. </p>",
          "locationName": "StreamingDistributionConfigWithTags",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "documentation": "<p>The request to create a new streaming distribution with tags.</p>",
      "payload": "StreamingDistributionConfigWithTags"
    },
    "CreateStreamingDistributionWithTagsResult": {
      "type": "structure",
      "members": {
        "StreamingDistribution": {
          "shape": "StreamingDistribution",
          "documentation": "<p>The streaming distribution's information. </p>"
        },
        "Location": {
          "shape": "string",
          "documentation": "<p>The fully qualified URI of the new streaming distribution resource just created. For example:<code> https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8</code>.</p>",
          "location": "header",
          "locationName": "Location"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the distribution created.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "StreamingDistribution"
    },
    "CustomErrorResponse": {
      "type": "structure",
      "required": [
        "ErrorCode"
      ],
      "members": {
        "ErrorCode": {
          "shape": "integer",
          "documentation": "<p>The HTTP status code for which you want to specify a custom error page and/or a caching duration.</p>"
        },
        "ResponsePagePath": {
          "shape": "string",
          "documentation": "<p>The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by <code>ErrorCode</code>, for example, <code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your custom error pages in different locations, your distribution must include a cache behavior for which the following is true:</p> <ul> <li> <p>The value of <code>PathPattern</code> matches the path to your custom error messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a cache behavior for which the path pattern routes requests for your custom error pages to that location, for example, <code>/4xx-errors/*</code>. </p> </li> <li> <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code> element for the origin that contains your custom error pages.</p> </li> </ul> <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value for <code>ResponseCode</code>. If you don't want to specify a value, include an empty element, <code>&lt;ResponsePagePath&gt;</code>, in the XML document.</p> <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the files that you want to return to viewers because the origin server is unavailable.</p>"
        },
        "ResponseCode": {
          "shape": "string",
          "documentation": "<p>The HTTP status code that you want CloudFront to return to the viewer along with the custom error page. There are a variety of reasons that you might want CloudFront to return a status code different from the status code that your origin returned to CloudFront, for example:</p> <ul> <li> <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you substitute <code>200</code>, the response typically won't be intercepted.</p> </li> <li> <p>If you don't care about distinguishing among different client errors or server errors, you can specify <code>400</code> or <code>500</code> as the <code>ResponseCode</code> for all 4xx or 5xx errors.</p> </li> <li> <p>You might want to return a <code>200</code> status code (OK) and static website so your customers don't know that your website is down.</p> </li> </ul> <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for <code>ResponsePagePath</code>. If you don't want to specify a value, include an empty element, <code>&lt;ResponseCode&gt;</code>, in the XML document.</p>"
        },
        "ErrorCachingMinTTL": {
          "shape": "long",
          "documentation": "<p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your origin to see whether the problem that caused the error has been resolved and the requested object is now available.</p> <p>If you don't want to specify a value, include an empty element, <code>&lt;ErrorCachingMinTTL&gt;</code>, in the XML document.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. </p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CustomErrorResponseList": {
      "type": "list",
      "member": {
        "shape": "CustomErrorResponse",
        "locationName": "CustomErrorResponse"
      }
    },
    "CustomErrorResponses": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of HTTP status codes for which you want to specify a custom error page and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        },
        "Items": {
          "shape": "CustomErrorResponseList",
          "documentation": "<p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP status code for which you want to specify a custom error page and/or a caching duration. </p>"
        }
      },
      "documentation": "<p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "CustomHeaders": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of custom headers, if any, for this distribution.</p>"
        },
        "Items": {
          "shape": "OriginCustomHeadersList",
          "documentation": "<p> <b>Optional</b>: A list that contains one <code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that contains the list of Custom Headers for each origin. </p>"
    },
    "CustomOriginConfig": {
      "type": "structure",
      "required": [
        "HTTPPort",
        "HTTPSPort",
        "OriginProtocolPolicy"
      ],
      "members": {
        "HTTPPort": {
          "shape": "integer",
          "documentation": "<p>The HTTP port the custom origin listens on.</p>"
        },
        "HTTPSPort": {
          "shape": "integer",
          "documentation": "<p>The HTTPS port the custom origin listens on.</p>"
        },
        "OriginProtocolPolicy": {
          "shape": "OriginProtocolPolicy",
          "documentation": "<p>The origin protocol policy to apply to your origin.</p>"
        },
        "OriginSslProtocols": {
          "shape": "OriginSslProtocols",
          "documentation": "<p>The SSL/TLS protocols that you want CloudFront to use when communicating with your origin over HTTPS.</p>"
        },
        "OriginReadTimeout": {
          "shape": "integer",
          "documentation": "<p>You can create a custom origin read timeout. All timeout units are in seconds. The default origin read timeout is 30 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 4 seconds; the maximum is 60 seconds.</p> <p>If you need to increase the maximum time limit, contact the <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support Center</a>.</p>"
        },
        "OriginKeepaliveTimeout": {
          "shape": "integer",
          "documentation": "<p>You can create a custom keep-alive timeout. All timeout units are in seconds. The default keep-alive timeout is 5 seconds, but you can configure custom timeout lengths using the CloudFront API. The minimum timeout length is 1 second; the maximum is 60 seconds.</p> <p>If you need to increase the maximum time limit, contact the <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support Center</a>.</p>"
        }
      },
      "documentation": "<p>A customer origin or an Amazon S3 bucket configured as a website endpoint.</p>"
    },
    "DefaultCacheBehavior": {
      "type": "structure",
      "required": [
        "TargetOriginId",
        "ForwardedValues",
        "TrustedSigners",
        "ViewerProtocolPolicy",
        "MinTTL"
      ],
      "members": {
        "TargetOriginId": {
          "shape": "string",
          "documentation": "<p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when a request matches the path pattern either for a cache behavior or for the default cache behavior in your distribution.</p>"
        },
        "ForwardedValues": {
          "shape": "ForwardedValues",
          "documentation": "<p>A complex type that specifies how CloudFront handles query strings and cookies.</p>"
        },
        "TrustedSigners": {
          "shape": "TrustedSigners",
          "documentation": "<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>"
        },
        "ViewerProtocolPolicy": {
          "shape": "ViewerProtocolPolicy",
          "documentation": "<p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html\">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>"
        },
        "MinTTL": {
          "shape": "long",
          "documentation": "<p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>"
        },
        "AllowedMethods": {
          "shape": "AllowedMethods"
        },
        "SmoothStreaming": {
          "shape": "boolean",
          "documentation": "<p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>. </p>"
        },
        "DefaultTTL": {
          "shape": "long",
          "documentation": "<p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html\">Specifying How Long Objects and Errors Stay in a CloudFront Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "MaxTTL": {
          "shape": "long"
        },
        "Compress": {
          "shape": "boolean",
          "documentation": "<p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html\">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "LambdaFunctionAssociations": {
          "shape": "LambdaFunctionAssociations",
          "documentation": "<p>A complex type that contains zero or more Lambda function associations for a cache behavior.</p>"
        },
        "FieldLevelEncryptionId": {
          "shape": "string",
          "documentation": "<p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for a cache behavior or for the default cache behavior in your distribution.</p>"
        }
      },
      "documentation": "<p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
    },
    "DeleteCloudFrontOriginAccessIdentityRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The origin access identity's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>Deletes a origin access identity.</p>"
    },
    "DeleteDistributionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution ID. </p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when you disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>. </p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete a web distribution using the CloudFront API:</b> </p> <ol> <li> <p>Disable the web distribution </p> </li> <li> <p>Submit a <code>GET Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution.</p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Distribution</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 6.</p> </li> <li> <p>Review the response to your <code>DELETE Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html\">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "DeleteFieldLevelEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID of the configuration you want to delete from CloudFront.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      }
    },
    "DeleteFieldLevelEncryptionProfileRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID of the profile you want to delete from CloudFront.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      }
    },
    "DeletePublicKeyRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID of the public key you want to remove from CloudFront.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      }
    },
    "DeleteStreamingDistributionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution ID. </p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when you disabled the streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>The request to delete a streaming distribution.</p>"
    },
    "Distribution": {
      "type": "structure",
      "required": [
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "InProgressInvalidationBatches",
        "DomainName",
        "ActiveTrustedSigners",
        "DistributionConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>. </p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>This response element indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge locations. </p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time the distribution was last modified. </p>"
        },
        "InProgressInvalidationBatches": {
          "shape": "integer",
          "documentation": "<p>The number of invalidation batches currently in progress. </p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>. </p>"
        },
        "ActiveTrustedSigners": {
          "shape": "ActiveTrustedSigners",
          "documentation": "<p>CloudFront automatically adds this element to the response only if you've set up the distribution to serve private content with signed URLs. The element lists the key pair IDs that CloudFront is aware of for each trusted signer. The <code>Signer</code> child element lists the AWS account number of the trusted signer (or an empty <code>Self</code> element if the signer is you). The <code>Signer</code> element also includes the IDs of any active key pairs associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create working signed URLs.</p>"
        },
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>The current configuration information for the distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution ID/config</code> resource.</p>"
        }
      },
      "documentation": "<p>The distribution's information.</p>"
    },
    "DistributionConfig": {
      "type": "structure",
      "required": [
        "CallerReference",
        "Origins",
        "DefaultCacheBehavior",
        "Comment",
        "Enabled"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>DistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value that you already sent in a previous request to create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>"
        },
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>"
        },
        "DefaultRootObject": {
          "shape": "string",
          "documentation": "<p>The object that you want CloudFront to request from your origin (for example, <code>index.html</code>) when a viewer requests the root URL for your distribution (<code>http://www.example.com</code>) instead of an object in your distribution (<code>http://www.example.com/product-description.html</code>). Specifying a default root object avoids exposing the contents of your distribution.</p> <p>Specify only the object name, for example, <code>index.html</code>. Don't add a <code>/</code> before the object name.</p> <p>If you don't want to specify a default root object when you create a distribution, include an empty <code>DefaultRootObject</code> element.</p> <p>To delete the default root object from an existing distribution, update the distribution configuration and include an empty <code>DefaultRootObject</code> element.</p> <p>To replace the default root object, update the distribution configuration and specify the new object.</p> <p>For more information about the default root object, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html\">Creating a Default Root Object</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Origins": {
          "shape": "Origins",
          "documentation": "<p>A complex type that contains information about origins for this distribution. </p>"
        },
        "OriginGroups": {
          "shape": "OriginGroups",
          "documentation": "<p> A complex type that contains information about origin groups for this distribution.</p>"
        },
        "DefaultCacheBehavior": {
          "shape": "DefaultCacheBehavior",
          "documentation": "<p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
        },
        "CacheBehaviors": {
          "shape": "CacheBehaviors",
          "documentation": "<p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>"
        },
        "CustomErrorResponses": {
          "shape": "CustomErrorResponses",
          "documentation": "<p>A complex type that controls the following:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html\">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>Any comments you want to include about the distribution.</p> <p>If you don't want to specify a comment, include an empty <code>Comment</code> element.</p> <p>To delete an existing comment, update the distribution configuration and include an empty <code>Comment</code> element.</p> <p>To add or change a comment, update the distribution configuration and specify the new comment.</p>"
        },
        "Logging": {
          "shape": "LoggingConfig",
          "documentation": "<p>A complex type that controls whether access logs are written for the distribution.</p> <p>For more information about logging, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html\">Access Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "PriceClass": {
          "shape": "PriceClass",
          "documentation": "<p>The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your objects from all CloudFront edge locations.</p> <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance.</p> <p>For more information about price classes, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html\">Choosing the Price Class for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For information about CloudFront pricing, including how price classes (such as Price Class 100) map to CloudFront regions, see <a href=\"https://aws.amazon.com/cloudfront/pricing/\">Amazon CloudFront Pricing</a>. For price class information, scroll down to see the table at the bottom of the page.</p>"
        },
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>From this field, you can enable or disable the selected distribution.</p>"
        },
        "ViewerCertificate": {
          "shape": "ViewerCertificate",
          "documentation": "<p/>"
        },
        "Restrictions": {
          "shape": "Restrictions",
          "documentation": "<p/>"
        },
        "WebACLId": {
          "shape": "string",
          "documentation": "<p>A unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution.</p> <p>AWS WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about AWS WAF, see the <a href=\"http://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html\">AWS WAF Developer Guide</a>. </p>"
        },
        "HttpVersion": {
          "shape": "HttpVersion",
          "documentation": "<p>(Optional) Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is http2. Viewers that don't support HTTP/2 automatically use an earlier HTTP version.</p> <p>For viewers and CloudFront to use HTTP/2, viewers must support TLS 1.2 or later, and must support Server Name Identification (SNI).</p> <p>In general, configuring CloudFront to communicate with viewers using HTTP/2 reduces latency. You can improve performance by optimizing for HTTP/2. For more information, do an Internet search for \"http/2 optimization.\" </p>"
        },
        "IsIPV6Enabled": {
          "shape": "boolean",
          "documentation": "<p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution. </p> <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the <code>IpAddress</code> parameter to restrict the IP addresses that can access your content, don't enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html\">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you're using an Amazon Route 53 alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:</p> <ul> <li> <p>You enable IPv6 for the distribution</p> </li> <li> <p>You're using alternate domain names in the URLs for your objects</p> </li> </ul> <p>For more information, see <a href=\"http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html\">Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you created a CNAME resource record set, either with Amazon Route 53 or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.</p>"
        }
      },
      "documentation": "<p>A distribution configuration.</p>"
    },
    "DistributionConfigWithTags": {
      "type": "structure",
      "required": [
        "DistributionConfig",
        "Tags"
      ],
      "members": {
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>A distribution configuration.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation": "<p>A distribution Configuration and a list of tags to be associated with the distribution.</p>"
    },
    "DistributionList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value you provided for the <code>Marker</code> request parameter.</p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your distributions where they left off. </p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The value you provided for the <code>MaxItems</code> request parameter.</p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of distributions that were created by the current AWS account. </p>"
        },
        "Items": {
          "shape": "DistributionSummaryList",
          "documentation": "<p>A complex type that contains one <code>DistributionSummary</code> element for each distribution that was created by the current AWS account.</p>"
        }
      },
      "documentation": "<p>A distribution list.</p>"
    },
    "DistributionSummary": {
      "type": "structure",
      "required": [
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "DomainName",
        "Aliases",
        "Origins",
        "DefaultCacheBehavior",
        "CacheBehaviors",
        "CustomErrorResponses",
        "Comment",
        "PriceClass",
        "Enabled",
        "ViewerCertificate",
        "Restrictions",
        "WebACLId",
        "HttpVersion",
        "IsIPV6Enabled"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>The current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time the distribution was last modified.</p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name that corresponds to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>"
        },
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>"
        },
        "Origins": {
          "shape": "Origins",
          "documentation": "<p>A complex type that contains information about origins for this distribution.</p>"
        },
        "OriginGroups": {
          "shape": "OriginGroups",
          "documentation": "<p> A complex type that contains information about origin groups for this distribution.</p>"
        },
        "DefaultCacheBehavior": {
          "shape": "DefaultCacheBehavior",
          "documentation": "<p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>"
        },
        "CacheBehaviors": {
          "shape": "CacheBehaviors",
          "documentation": "<p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>"
        },
        "CustomErrorResponses": {
          "shape": "CustomErrorResponses",
          "documentation": "<p>A complex type that contains zero or more <code>CustomErrorResponses</code> elements.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>The comment originally specified when this distribution was created.</p>"
        },
        "PriceClass": {
          "shape": "PriceClass",
          "documentation": "<p>A complex type that contains information about price class for this streaming distribution. </p>"
        },
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Whether the distribution is enabled to accept user requests for content.</p>"
        },
        "ViewerCertificate": {
          "shape": "ViewerCertificate",
          "documentation": "<p/>"
        },
        "Restrictions": {
          "shape": "Restrictions",
          "documentation": "<p/>"
        },
        "WebACLId": {
          "shape": "string",
          "documentation": "<p>The Web ACL Id (if any) associated with the distribution.</p>"
        },
        "HttpVersion": {
          "shape": "HttpVersion",
          "documentation": "<p> Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support <code>HTTP/2</code> will automatically use an earlier version.</p>"
        },
        "IsIPV6Enabled": {
          "shape": "boolean",
          "documentation": "<p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution.</p>"
        }
      },
      "documentation": "<p>A summary of the information about a CloudFront distribution.</p>"
    },
    "DistributionSummaryList": {
      "type": "list",
      "member": {
        "shape": "DistributionSummary",
        "locationName": "DistributionSummary"
      }
    },
    "EncryptionEntities": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>Number of field pattern items in a field-level encryption content type-profile mapping. </p>"
        },
        "Items": {
          "shape": "EncryptionEntityList",
          "documentation": "<p>An array of field patterns in a field-level encryption content type-profile mapping. </p>"
        }
      },
      "documentation": "<p>Complex data type for field-level encryption profiles that includes all of the encryption entities. </p>"
    },
    "EncryptionEntity": {
      "type": "structure",
      "required": [
        "PublicKeyId",
        "ProviderId",
        "FieldPatterns"
      ],
      "members": {
        "PublicKeyId": {
          "shape": "string",
          "documentation": "<p>The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns. </p>"
        },
        "ProviderId": {
          "shape": "string",
          "documentation": "<p>The provider associated with the public key being used for encryption. This value must also be provided with the private key for applications to be able to decrypt data.</p>"
        },
        "FieldPatterns": {
          "shape": "FieldPatterns",
          "documentation": "<p>Field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted. You can provide the full field name, or any beginning characters followed by a wildcard (*). You can't overlap field patterns. For example, you can't have both ABC* and AB*. Note that field patterns are case-sensitive. </p>"
        }
      },
      "documentation": "<p>Complex data type for field-level encryption profiles that includes the encryption key and field pattern specifications. </p>"
    },
    "EncryptionEntityList": {
      "type": "list",
      "member": {
        "shape": "EncryptionEntity",
        "locationName": "EncryptionEntity"
      }
    },
    "EventType": {
      "type": "string",
      "enum": [
        "viewer-request",
        "viewer-response",
        "origin-request",
        "origin-response"
      ]
    },
    "FieldLevelEncryption": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime",
        "FieldLevelEncryptionConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The configuration ID for a field-level encryption configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The last time the field-level encryption configuration was changed. </p>"
        },
        "FieldLevelEncryptionConfig": {
          "shape": "FieldLevelEncryptionConfig",
          "documentation": "<p>A complex data type that includes the profile configurations specified for field-level encryption. </p>"
        }
      },
      "documentation": "<p>A complex data type that includes the profile configurations and other options specified for field-level encryption. </p>"
    },
    "FieldLevelEncryptionConfig": {
      "type": "structure",
      "required": [
        "CallerReference"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique number that ensures the request can't be replayed.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment about the configuration.</p>"
        },
        "QueryArgProfileConfig": {
          "shape": "QueryArgProfileConfig",
          "documentation": "<p>A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.</p>"
        },
        "ContentTypeProfileConfig": {
          "shape": "ContentTypeProfileConfig",
          "documentation": "<p>A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.</p>"
        }
      },
      "documentation": "<p>A complex data type that includes the profile configurations specified for field-level encryption. </p>"
    },
    "FieldLevelEncryptionList": {
      "type": "structure",
      "required": [
        "MaxItems",
        "Quantity"
      ],
      "members": {
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your configurations where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of elements you want in the response body. </p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of field-level encryption items.</p>"
        },
        "Items": {
          "shape": "FieldLevelEncryptionSummaryList",
          "documentation": "<p>An array of field-level encryption items.</p>"
        }
      },
      "documentation": "<p>List of field-level encrpytion configurations.</p>"
    },
    "FieldLevelEncryptionProfile": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime",
        "FieldLevelEncryptionProfileConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID for a field-level encryption profile configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The last time the field-level encryption profile was updated.</p>"
        },
        "FieldLevelEncryptionProfileConfig": {
          "shape": "FieldLevelEncryptionProfileConfig",
          "documentation": "<p>A complex data type that includes the profile name and the encryption entities for the field-level encryption profile.</p>"
        }
      },
      "documentation": "<p>A complex data type for field-level encryption profiles.</p>"
    },
    "FieldLevelEncryptionProfileConfig": {
      "type": "structure",
      "required": [
        "Name",
        "CallerReference",
        "EncryptionEntities"
      ],
      "members": {
        "Name": {
          "shape": "string",
          "documentation": "<p>Profile name for the field-level encryption profile.</p>"
        },
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique number that ensures that the request can't be replayed.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment for the field-level encryption profile.</p>"
        },
        "EncryptionEntities": {
          "shape": "EncryptionEntities",
          "documentation": "<p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>"
        }
      },
      "documentation": "<p>A complex data type of profiles for the field-level encryption.</p>"
    },
    "FieldLevelEncryptionProfileList": {
      "type": "structure",
      "required": [
        "MaxItems",
        "Quantity"
      ],
      "members": {
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your profiles where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of field-level encryption profiles you want in the response body. </p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of field-level encryption profiles.</p>"
        },
        "Items": {
          "shape": "FieldLevelEncryptionProfileSummaryList",
          "documentation": "<p>The field-level encryption profile items.</p>"
        }
      },
      "documentation": "<p>List of field-level encryption profiles.</p>"
    },
    "FieldLevelEncryptionProfileSummary": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime",
        "Name",
        "EncryptionEntities"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>ID for the field-level encryption profile summary.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The time when the the field-level encryption profile summary was last updated.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>Name for the field-level encryption profile summary.</p>"
        },
        "EncryptionEntities": {
          "shape": "EncryptionEntities",
          "documentation": "<p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment for the field-level encryption profile summary.</p>"
        }
      },
      "documentation": "<p>The field-level encryption profile summary.</p>"
    },
    "FieldLevelEncryptionProfileSummaryList": {
      "type": "list",
      "member": {
        "shape": "FieldLevelEncryptionProfileSummary",
        "locationName": "FieldLevelEncryptionProfileSummary"
      }
    },
    "FieldLevelEncryptionSummary": {
      "type": "structure",
      "required": [
        "Id",
        "LastModifiedTime"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique ID of a field-level encryption item.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The last time that the summary of field-level encryption items was modified.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment about the field-level encryption item.</p>"
        },
        "QueryArgProfileConfig": {
          "shape": "QueryArgProfileConfig",
          "documentation": "<p> A summary of a query argument-profile mapping. </p>"
        },
        "ContentTypeProfileConfig": {
          "shape": "ContentTypeProfileConfig",
          "documentation": "<p> A summary of a content type-profile mapping. </p>"
        }
      },
      "documentation": "<p>A summary of a field-level encryption item.</p>"
    },
    "FieldLevelEncryptionSummaryList": {
      "type": "list",
      "member": {
        "shape": "FieldLevelEncryptionSummary",
        "locationName": "FieldLevelEncryptionSummary"
      }
    },
    "FieldPatternList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "FieldPattern"
      }
    },
    "FieldPatterns": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of field-level encryption field patterns.</p>"
        },
        "Items": {
          "shape": "FieldPatternList",
          "documentation": "<p>An array of the field-level encryption field patterns.</p>"
        }
      },
      "documentation": "<p>A complex data type that includes the field patterns to match for field-level encryption.</p>"
    },
    "Format": {
      "type": "string",
      "enum": [
        "URLEncoded"
      ]
    },
    "ForwardedValues": {
      "type": "structure",
      "required": [
        "QueryString",
        "Cookies"
      ],
      "members": {
        "QueryString": {
          "shape": "boolean",
          "documentation": "<p>Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of <code>QueryString</code> and on the values that you specify for <code>QueryStringCacheKeys</code>, if any:</p> <p>If you specify true for <code>QueryString</code> and you don't specify any values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.</p> <p>If you specify true for <code>QueryString</code> and you specify one or more values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.</p> <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html\">Configuring CloudFront to Cache Based on Query String Parameters</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Cookies": {
          "shape": "CookiePreference",
          "documentation": "<p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html\">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Headers": {
          "shape": "Headers",
          "documentation": "<p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to base caching on for this cache behavior. </p>"
        },
        "QueryStringCacheKeys": {
          "shape": "QueryStringCacheKeys",
          "documentation": "<p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.</p>"
        }
      },
      "documentation": "<p>A complex type that specifies how CloudFront handles query strings and cookies.</p>"
    },
    "GeoRestriction": {
      "type": "structure",
      "required": [
        "RestrictionType",
        "Quantity"
      ],
      "members": {
        "RestrictionType": {
          "shape": "GeoRestrictionType",
          "documentation": "<p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geo restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you don't want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>When geo restriction is <code>enabled</code>, this is the number of countries in your <code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled, <code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>"
        },
        "Items": {
          "shape": "LocationList",
          "documentation": "<p> A complex type that contains a <code>Location</code> element for each country in which you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute your content (<code>blacklist</code>).</p> <p>The <code>Location</code> element is a two-letter, uppercase country code for a country that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one <code>Location</code> element for each country.</p> <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code> code on the <i>International Organization for Standardization</i> website. You can also refer to the country list on the CloudFront console, which includes both country names and codes.</p>"
        }
      },
      "documentation": "<p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>"
    },
    "GeoRestrictionType": {
      "type": "string",
      "enum": [
        "blacklist",
        "whitelist",
        "none"
      ]
    },
    "GetCloudFrontOriginAccessIdentityConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identity's ID. </p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The origin access identity's configuration information. For more information, see <a>CloudFrontOriginAccessIdentityConfigComplexType</a>.</p>"
    },
    "GetCloudFrontOriginAccessIdentityConfigResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentityConfig": {
          "shape": "CloudFrontOriginAccessIdentityConfig",
          "documentation": "<p>The origin access identity's configuration information. </p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "CloudFrontOriginAccessIdentityConfig"
    },
    "GetCloudFrontOriginAccessIdentityRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identity's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get an origin access identity's information.</p>"
    },
    "GetCloudFrontOriginAccessIdentityResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentity": {
          "shape": "CloudFrontOriginAccessIdentity",
          "documentation": "<p>The origin access identity's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the origin access identity's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "CloudFrontOriginAccessIdentity"
    },
    "GetDistributionConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get a distribution configuration.</p>"
    },
    "GetDistributionConfigResult": {
      "type": "structure",
      "members": {
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>The distribution's configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "DistributionConfig"
    },
    "GetDistributionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get a distribution's information.</p>"
    },
    "GetDistributionResult": {
      "type": "structure",
      "members": {
        "Distribution": {
          "shape": "Distribution",
          "documentation": "<p>The distribution's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Distribution"
    },
    "GetFieldLevelEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID for the field-level encryption configuration information.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetFieldLevelEncryptionConfigResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionConfig": {
          "shape": "FieldLevelEncryptionConfig",
          "documentation": "<p>Return the field-level encryption configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionConfig"
    },
    "GetFieldLevelEncryptionProfileConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Get the ID for the field-level encryption profile configuration information.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetFieldLevelEncryptionProfileConfigResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfileConfig": {
          "shape": "FieldLevelEncryptionProfileConfig",
          "documentation": "<p>Return the field-level encryption profile configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field-level encryption profile configuration result. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionProfileConfig"
    },
    "GetFieldLevelEncryptionProfileRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Get the ID for the field-level encryption profile information.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetFieldLevelEncryptionProfileResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfile": {
          "shape": "FieldLevelEncryptionProfile",
          "documentation": "<p>Return the field-level encryption profile information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionProfile"
    },
    "GetFieldLevelEncryptionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID for the field-level encryption configuration information.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetFieldLevelEncryptionResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryption": {
          "shape": "FieldLevelEncryption",
          "documentation": "<p>Return the field-level encryption configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryption"
    },
    "GetInvalidationRequest": {
      "type": "structure",
      "required": [
        "DistributionId",
        "Id"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The distribution's ID.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the invalidation request, for example, <code>IDFDVBD632BHDS5</code>.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get an invalidation's information. </p>"
    },
    "GetInvalidationResult": {
      "type": "structure",
      "members": {
        "Invalidation": {
          "shape": "Invalidation",
          "documentation": "<p>The invalidation's information. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html\">Invalidation Complex Type</a>. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Invalidation"
    },
    "GetPublicKeyConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID for the public key configuration.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetPublicKeyConfigResult": {
      "type": "structure",
      "members": {
        "PublicKeyConfig": {
          "shape": "PublicKeyConfig",
          "documentation": "<p>Return the result for the public key configuration.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the public key configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "PublicKeyConfig"
    },
    "GetPublicKeyRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>Request the ID for the public key.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      }
    },
    "GetPublicKeyResult": {
      "type": "structure",
      "members": {
        "PublicKey": {
          "shape": "PublicKey",
          "documentation": "<p>Return the public key.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the public key. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "PublicKey"
    },
    "GetStreamingDistributionConfigRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The streaming distribution's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>To request to get a streaming distribution configuration.</p>"
    },
    "GetStreamingDistributionConfigResult": {
      "type": "structure",
      "members": {
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>The streaming distribution's configuration information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>. </p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "StreamingDistributionConfig"
    },
    "GetStreamingDistributionRequest": {
      "type": "structure",
      "required": [
        "Id"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The streaming distribution's ID.</p>",
          "location": "uri",
          "locationName": "Id"
        }
      },
      "documentation": "<p>The request to get a streaming distribution's information.</p>"
    },
    "GetStreamingDistributionResult": {
      "type": "structure",
      "members": {
        "StreamingDistribution": {
          "shape": "StreamingDistribution",
          "documentation": "<p>The streaming distribution's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the streaming distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "StreamingDistribution"
    },
    "HeaderList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Name"
      }
    },
    "Headers": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of different headers that you want CloudFront to base caching on for this cache behavior. You can configure each cache behavior in a web distribution to do one of the following:</p> <ul> <li> <p> <b>Forward all headers to your origin</b>: Specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>.</p> <important> <p>CloudFront doesn't cache the objects that are associated with this cache behavior. Instead, CloudFront sends every request to the origin. </p> </important> </li> <li> <p> <b>Forward a whitelist of headers you specify</b>: Specify the number of headers that you want CloudFront to base caching on. Then specify the header names in <code>Name</code> elements. CloudFront caches your objects based on the values in the specified headers.</p> </li> <li> <p> <b>Forward only the default headers</b>: Specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. In this configuration, CloudFront doesn't cache based on the values in the request headers.</p> </li> </ul> <p>Regardless of which option you choose, CloudFront forwards headers to your origin based on whether the origin is an S3 bucket or a custom origin. See the following documentation:</p> <ul> <li> <p> <b>S3 bucket</b>: See <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorS3Origin.html#request-s3-removed-headers\">HTTP Request Headers That CloudFront Removes or Updates</a> </p> </li> <li> <p> <b>Custom origin</b>: See <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorCustomOrigin.html#request-custom-headers-behavior\">HTTP Request Headers and CloudFront Behavior</a> </p> </li> </ul>"
        },
        "Items": {
          "shape": "HeaderList",
          "documentation": "<p>A list that contains one <code>Name</code> element for each header that you want CloudFront to use for caching in this cache behavior. If <code>Quantity</code> is <code>0</code>, omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that specifies the request headers, if any, that you want CloudFront to base caching on for this cache behavior. </p> <p>For the headers that you specify, CloudFront caches separate versions of a specified object based on the header values in viewer requests. For example, suppose viewer requests for <code>logo.jpg</code> contain a custom <code>product</code> header that has a value of either <code>acme</code> or <code>apex</code>, and you configure CloudFront to cache your content based on values in the <code>product</code> header. CloudFront forwards the <code>product</code> header to the origin and caches the response from the origin once for each header value. For more information about caching based on header values, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html\">How CloudFront Forwards and Caches Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "HttpVersion": {
      "type": "string",
      "enum": [
        "http1.1",
        "http2"
      ]
    },
    "Invalidation": {
      "type": "structure",
      "required": [
        "Id",
        "Status",
        "CreateTime",
        "InvalidationBatch"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the invalidation request. For example: <code>IDFDVBD632BHDS5</code>.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>The status of the invalidation request. When the invalidation batch is finished, the status is <code>Completed</code>.</p>"
        },
        "CreateTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time the invalidation request was first made. </p>"
        },
        "InvalidationBatch": {
          "shape": "InvalidationBatch",
          "documentation": "<p>The current invalidation information for the batch request. </p>"
        }
      },
      "documentation": "<p>An invalidation. </p>"
    },
    "InvalidationBatch": {
      "type": "structure",
      "required": [
        "Paths",
        "CallerReference"
      ],
      "members": {
        "Paths": {
          "shape": "Paths",
          "documentation": "<p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the value to prevent you from accidentally resubmitting an identical request. Whenever you create a new invalidation request, you must specify a new value for <code>CallerReference</code> and change other values in the request as applicable. One way to ensure that the value of <code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example, <code>20120301090000</code>.</p> <p>If you make a second invalidation request with the same value for <code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't create a new invalidation request. Instead, CloudFront returns information about the invalidation request that you previously created with the same <code>CallerReference</code>.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation batch request but the content of any <code>Path</code> is different from the original request, CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>"
        }
      },
      "documentation": "<p>An invalidation batch.</p>"
    },
    "InvalidationList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value that you provided for the <code>Marker</code> request parameter.</p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your invalidation batches where they left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more invalidation batches in the list.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of invalidation batches that were created by the current AWS account. </p>"
        },
        "Items": {
          "shape": "InvalidationSummaryList",
          "documentation": "<p>A complex type that contains one <code>InvalidationSummary</code> element for each invalidation batch created by the current AWS account.</p>"
        }
      },
      "documentation": "<p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html\">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "InvalidationSummary": {
      "type": "structure",
      "required": [
        "Id",
        "CreateTime",
        "Status"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The unique ID for an invalidation request.</p>"
        },
        "CreateTime": {
          "shape": "timestamp",
          "documentation": "<p>The time that an invalidation request was created.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>The status of an invalidation request.</p>"
        }
      },
      "documentation": "<p>A summary of an invalidation request.</p>"
    },
    "InvalidationSummaryList": {
      "type": "list",
      "member": {
        "shape": "InvalidationSummary",
        "locationName": "InvalidationSummary"
      }
    },
    "ItemSelection": {
      "type": "string",
      "enum": [
        "none",
        "whitelist",
        "all"
      ]
    },
    "KeyPairIdList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "KeyPairId"
      }
    },
    "KeyPairIds": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of active CloudFront key pairs for <code>AwsAccountNumber</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
        },
        "Items": {
          "shape": "KeyPairIdList",
          "documentation": "<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
        }
      },
      "documentation": "<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>. </p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>"
    },
    "LambdaFunctionARN": {
      "type": "string"
    },
    "LambdaFunctionAssociation": {
      "type": "structure",
      "required": [
        "LambdaFunctionARN",
        "EventType"
      ],
      "members": {
        "LambdaFunctionARN": {
          "shape": "LambdaFunctionARN",
          "documentation": "<p>The ARN of the Lambda function. You must specify the ARN of a function version; you can't specify a Lambda alias or $LATEST.</p>"
        },
        "EventType": {
          "shape": "EventType",
          "documentation": "<p>Specifies the event type that triggers a Lambda function invocation. You can specify the following values:</p> <ul> <li> <p> <code>viewer-request</code>: The function executes when CloudFront receives a request from a viewer and before it checks to see whether the requested object is in the edge cache. </p> </li> <li> <p> <code>origin-request</code>: The function executes only when CloudFront forwards a request to your origin. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>origin-response</code>: The function executes after CloudFront receives a response from the origin and before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>viewer-response</code>: The function executes before CloudFront returns the requested object to the viewer. The function executes regardless of whether the object was already in the edge cache.</p> <p>If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.</p> </li> </ul>"
        },
        "IncludeBody": {
          "shape": "boolean",
          "documentation": "<p>A flag that allows a Lambda function to have read access to the body content. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html\">Accessing the Request Body by Choosing the Include Body Option</a> in the Amazon CloudFront Developer Guide.</p>"
        }
      },
      "documentation": "<p>A complex type that contains a Lambda function association.</p>"
    },
    "LambdaFunctionAssociationList": {
      "type": "list",
      "member": {
        "shape": "LambdaFunctionAssociation",
        "locationName": "LambdaFunctionAssociation"
      }
    },
    "LambdaFunctionAssociations": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of Lambda function associations for this cache behavior.</p>"
        },
        "Items": {
          "shape": "LambdaFunctionAssociationList",
          "documentation": "<p> <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that specifies a list of Lambda functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with the Lambda function only once.</p> <p>If you don't want to invoke any Lambda functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. </p>"
    },
    "ListCloudFrontOriginAccessIdentitiesRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of origin access identities you want in the response body. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      },
      "documentation": "<p>The request to list origin access identities. </p>"
    },
    "ListCloudFrontOriginAccessIdentitiesResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentityList": {
          "shape": "CloudFrontOriginAccessIdentityList",
          "documentation": "<p>The <code>CloudFrontOriginAccessIdentityList</code> type. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "CloudFrontOriginAccessIdentityList"
    },
    "ListDistributionsByWebACLIdRequest": {
      "type": "structure",
      "required": [
        "WebACLId"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If you have more than <code>MaxItems</code> distributions that satisfy the request, the response includes a <code>NextMarker</code> element. To get the next page of results, submit another request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> from the last response. (For the first request, omit <code>Marker</code>.) </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        },
        "WebACLId": {
          "shape": "string",
          "documentation": "<p>The ID of the AWS WAF web ACL that you want to list the associated distributions. If you specify \"null\" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. </p>",
          "location": "uri",
          "locationName": "WebACLId"
        }
      },
      "documentation": "<p>The request to list distributions that are associated with a specified AWS WAF web ACL. </p>"
    },
    "ListDistributionsByWebACLIdResult": {
      "type": "structure",
      "members": {
        "DistributionList": {
          "shape": "DistributionList",
          "documentation": "<p>The <code>DistributionList</code> type. </p>"
        }
      },
      "documentation": "<p>The response to a request to list the distributions that are associated with a specified AWS WAF web ACL. </p>",
      "payload": "DistributionList"
    },
    "ListDistributionsRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last distribution on that page).</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of distributions you want in the response body.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      },
      "documentation": "<p>The request to list your distributions. </p>"
    },
    "ListDistributionsResult": {
      "type": "structure",
      "members": {
        "DistributionList": {
          "shape": "DistributionList",
          "documentation": "<p>The <code>DistributionList</code> type. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "DistributionList"
    },
    "ListFieldLevelEncryptionConfigsRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page). </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of field-level encryption configurations you want in the response body. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      }
    },
    "ListFieldLevelEncryptionConfigsResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionList": {
          "shape": "FieldLevelEncryptionList",
          "documentation": "<p>Returns a list of all field-level encryption configurations that have been created in CloudFront for this account.</p>"
        }
      },
      "payload": "FieldLevelEncryptionList"
    },
    "ListFieldLevelEncryptionProfilesRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page). </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of field-level encryption profiles you want in the response body. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      }
    },
    "ListFieldLevelEncryptionProfilesResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfileList": {
          "shape": "FieldLevelEncryptionProfileList",
          "documentation": "<p>Returns a list of the field-level encryption profiles that have been created in CloudFront for this account.</p>"
        }
      },
      "payload": "FieldLevelEncryptionProfileList"
    },
    "ListInvalidationsRequest": {
      "type": "structure",
      "required": [
        "DistributionId"
      ],
      "members": {
        "DistributionId": {
          "shape": "string",
          "documentation": "<p>The distribution's ID.</p>",
          "location": "uri",
          "locationName": "DistributionId"
        },
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page. </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of invalidation batches that you want in the response body.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      },
      "documentation": "<p>The request to list invalidations. </p>"
    },
    "ListInvalidationsResult": {
      "type": "structure",
      "members": {
        "InvalidationList": {
          "shape": "InvalidationList",
          "documentation": "<p>Information about invalidation batches. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "InvalidationList"
    },
    "ListPublicKeysRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page). </p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The maximum number of public keys you want in the response body. </p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      }
    },
    "ListPublicKeysResult": {
      "type": "structure",
      "members": {
        "PublicKeyList": {
          "shape": "PublicKeyList",
          "documentation": "<p>Returns a list of all public keys that have been added to CloudFront for this account.</p>"
        }
      },
      "payload": "PublicKeyList"
    },
    "ListStreamingDistributionsRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value that you provided for the <code>Marker</code> request parameter.</p>",
          "location": "querystring",
          "locationName": "Marker"
        },
        "MaxItems": {
          "shape": "string",
          "documentation": "<p>The value that you provided for the <code>MaxItems</code> request parameter.</p>",
          "location": "querystring",
          "locationName": "MaxItems"
        }
      },
      "documentation": "<p>The request to list your streaming distributions. </p>"
    },
    "ListStreamingDistributionsResult": {
      "type": "structure",
      "members": {
        "StreamingDistributionList": {
          "shape": "StreamingDistributionList",
          "documentation": "<p>The <code>StreamingDistributionList</code> type. </p>"
        }
      },
      "documentation": "<p>The returned result of the corresponding request. </p>",
      "payload": "StreamingDistributionList"
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "Resource"
      ],
      "members": {
        "Resource": {
          "shape": "ResourceARN",
          "documentation": "<p> An ARN of a CloudFront resource.</p>",
          "location": "querystring",
          "locationName": "Resource"
        }
      },
      "documentation": "<p> The request to list tags for a CloudFront resource.</p>"
    },
    "ListTagsForResourceResult": {
      "type": "structure",
      "required": [
        "Tags"
      ],
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation": "<p> The returned result of the corresponding request.</p>",
      "payload": "Tags"
    },
    "LocationList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Location"
      }
    },
    "LoggingConfig": {
      "type": "structure",
      "required": [
        "Enabled",
        "IncludeCookies",
        "Bucket",
        "Prefix"
      ],
      "members": {
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a distribution or if you want to disable logging for an existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty <code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code>, <code>prefix</code>, and <code>IncludeCookies</code>, the values are automatically deleted.</p>"
        },
        "IncludeCookies": {
          "shape": "boolean",
          "documentation": "<p>Specifies whether you want CloudFront to include cookies in access logs, specify <code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify <code>false</code> for <code>IncludeCookies</code>.</p>"
        },
        "Bucket": {
          "shape": "string",
          "documentation": "<p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>"
        },
        "Prefix": {
          "shape": "string",
          "documentation": "<p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>"
        }
      },
      "documentation": "<p>A complex type that controls whether access logs are written for the distribution.</p>"
    },
    "Method": {
      "type": "string",
      "enum": [
        "GET",
        "HEAD",
        "POST",
        "PUT",
        "PATCH",
        "OPTIONS",
        "DELETE"
      ]
    },
    "MethodsList": {
      "type": "list",
      "member": {
        "shape": "Method",
        "locationName": "Method"
      }
    },
    "MinimumProtocolVersion": {
      "type": "string",
      "enum": [
        "SSLv3",
        "TLSv1",
        "TLSv1_2016",
        "TLSv1.1_2016",
        "TLSv1.2_2018"
      ]
    },
    "Origin": {
      "type": "structure",
      "required": [
        "Id",
        "DomainName"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>A unique identifier for the origin or origin group. The value of <code>Id</code> must be unique within the distribution.</p> <p>When you specify the value of <code>TargetOriginId</code> for the default cache behavior or for another cache behavior, you indicate the origin to which you want the cache behavior to route requests by specifying the value of the <code>Id</code> element for that origin. When a request matches the path pattern for that cache behavior, CloudFront routes the request to the specified origin. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior\">Cache Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p> <b>Amazon S3 origins</b>: The DNS name of the Amazon S3 bucket from which you want CloudFront to get objects for this origin, for example, <code>myawsbucket.s3.amazonaws.com</code>. If you set up your bucket to be configured as a website endpoint, enter the Amazon S3 static website hosting endpoint for the bucket.</p> <p>For more information about specifying this value for different types of origins, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName\">Origin Domain Name</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Constraints for Amazon S3 origins: </p> <ul> <li> <p>If you configured Amazon S3 Transfer Acceleration for your bucket, don't specify the <code>s3-accelerate</code> endpoint for <code>DomainName</code>.</p> </li> <li> <p>The bucket name must be between 3 and 63 characters long (inclusive).</p> </li> <li> <p>The bucket name must contain only lowercase characters, numbers, periods, underscores, and dashes.</p> </li> <li> <p>The bucket name must not contain adjacent periods.</p> </li> </ul> <p> <b>Custom Origins</b>: The DNS domain name for the HTTP server from which you want CloudFront to get objects for this origin, for example, <code>www.example.com</code>. </p> <p>Constraints for custom origins:</p> <ul> <li> <p> <code>DomainName</code> must be a valid DNS name that contains only a-z, A-Z, 0-9, dot (.), hyphen (-), or underscore (_) characters.</p> </li> <li> <p>The name cannot exceed 128 characters.</p> </li> </ul>"
        },
        "OriginPath": {
          "shape": "string",
          "documentation": "<p>An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin. When you include the <code>OriginPath</code> element, specify the directory name, beginning with a <code>/</code>. CloudFront appends the directory name to the value of <code>DomainName</code>, for example, <code>example.com/production</code>. Do not include a <code>/</code> at the end of the directory name.</p> <p>For example, suppose you've specified the following values for your distribution:</p> <ul> <li> <p> <code>DomainName</code>: An Amazon S3 bucket named <code>myawsbucket</code>.</p> </li> <li> <p> <code>OriginPath</code>: <code>/production</code> </p> </li> <li> <p> <code>CNAME</code>: <code>example.com</code> </p> </li> </ul> <p>When a user enters <code>example.com/index.html</code> in a browser, CloudFront sends a request to Amazon S3 for <code>myawsbucket/production/index.html</code>.</p> <p>When a user enters <code>example.com/acme/index.html</code> in a browser, CloudFront sends a request to Amazon S3 for <code>myawsbucket/production/acme/index.html</code>.</p>"
        },
        "CustomHeaders": {
          "shape": "CustomHeaders",
          "documentation": "<p>A complex type that contains names and values for the custom headers that you want.</p>"
        },
        "S3OriginConfig": {
          "shape": "S3OriginConfig",
          "documentation": "<p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>"
        },
        "CustomOriginConfig": {
          "shape": "CustomOriginConfig",
          "documentation": "<p>A complex type that contains information about a custom origin. If the origin is an Amazon S3 bucket, use the <code>S3OriginConfig</code> element instead.</p>"
        }
      },
      "documentation": "<p>A complex type that describes the Amazon S3 bucket, HTTP server (for example, a web server), Amazon MediaStore, or other server from which CloudFront gets your files. This can also be an origin group, if you've created an origin group. You must specify at least one origin or origin group.</p> <p>For the current limit on the number of origins or origin groups that you can specify for a distribution, see <a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront\">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>"
    },
    "OriginCustomHeader": {
      "type": "structure",
      "required": [
        "HeaderName",
        "HeaderValue"
      ],
      "members": {
        "HeaderName": {
          "shape": "string",
          "documentation": "<p>The name of a header that you want CloudFront to forward to your origin. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html\">Forwarding Custom Headers to Your Origin (Web Distributions Only)</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>"
        },
        "HeaderValue": {
          "shape": "string",
          "documentation": "<p>The value for the header that you specified in the <code>HeaderName</code> field.</p>"
        }
      },
      "documentation": "<p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution. </p>"
    },
    "OriginCustomHeadersList": {
      "type": "list",
      "member": {
        "shape": "OriginCustomHeader",
        "locationName": "OriginCustomHeader"
      }
    },
    "OriginGroup": {
      "type": "structure",
      "required": [
        "Id",
        "FailoverCriteria",
        "Members"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The origin group's ID.</p>"
        },
        "FailoverCriteria": {
          "shape": "OriginGroupFailoverCriteria",
          "documentation": "<p>A complex type that contains information about the failover criteria for an origin group.</p>"
        },
        "Members": {
          "shape": "OriginGroupMembers",
          "documentation": "<p>A complex type that contains information about the origins in an origin group.</p>"
        }
      },
      "documentation": "<p>An origin group includes two origins (a primary origin and a second origin to failover to) and a failover criteria that you specify. You create an origin group to support origin failover in CloudFront. When you create or update a distribution, you can specifiy the origin group instead of a single origin, and CloudFront will failover from the primary origin to the second origin under the failover conditions that you've chosen.</p>"
    },
    "OriginGroupFailoverCriteria": {
      "type": "structure",
      "required": [
        "StatusCodes"
      ],
      "members": {
        "StatusCodes": {
          "shape": "StatusCodes",
          "documentation": "<p>The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin.</p>"
        }
      },
      "documentation": "<p>A complex data type that includes information about the failover criteria for an origin group, including the status codes for which CloudFront will failover from the primary origin to the second origin.</p>"
    },
    "OriginGroupList": {
      "type": "list",
      "member": {
        "shape": "OriginGroup",
        "locationName": "OriginGroup"
      },
      "documentation": "<p>List of origin groups for a distribution.</p>"
    },
    "OriginGroupMember": {
      "type": "structure",
      "required": [
        "OriginId"
      ],
      "members": {
        "OriginId": {
          "shape": "string",
          "documentation": "<p>The ID for an origin in an origin group.</p>"
        }
      },
      "documentation": "<p>An origin in an origin group.</p>"
    },
    "OriginGroupMemberList": {
      "type": "list",
      "member": {
        "shape": "OriginGroupMember",
        "locationName": "OriginGroupMember"
      },
      "documentation": "<p>List of origins in an origin group.</p>",
      "max": 2,
      "min": 2
    },
    "OriginGroupMembers": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of origins in an origin group.</p>"
        },
        "Items": {
          "shape": "OriginGroupMemberList",
          "documentation": "<p>Items (origins) in an origin group.</p>"
        }
      },
      "documentation": "<p>A complex data type for the origins included in an origin group.</p>"
    },
    "OriginGroups": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of origin groups.</p>"
        },
        "Items": {
          "shape": "OriginGroupList",
          "documentation": "<p>The items (origin groups) in a distribution.</p>"
        }
      },
      "documentation": "<p>A complex data type for the origin groups specified for a distribution.</p>"
    },
    "OriginList": {
      "type": "list",
      "member": {
        "shape": "Origin",
        "locationName": "Origin"
      },
      "min": 1
    },
    "OriginProtocolPolicy": {
      "type": "string",
      "enum": [
        "http-only",
        "match-viewer",
        "https-only"
      ]
    },
    "OriginSslProtocols": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an HTTPS connection with this origin. </p>"
        },
        "Items": {
          "shape": "SslProtocolsList",
          "documentation": "<p>A list that contains allowed SSL/TLS protocols for this distribution.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. </p>"
    },
    "Origins": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of origins or origin groups for this distribution.</p>"
        },
        "Items": {
          "shape": "OriginList",
          "documentation": "<p>A complex type that contains origins or origin groups for this distribution.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about origins and origin groups for this distribution. </p>"
    },
    "PathList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Path"
      }
    },
    "Paths": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of objects that you want to invalidate.</p>"
        },
        "Items": {
          "shape": "PathList",
          "documentation": "<p>A complex type that contains a list of the paths that you want to invalidate.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects\">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
    },
    "PriceClass": {
      "type": "string",
      "enum": [
        "PriceClass_100",
        "PriceClass_200",
        "PriceClass_All"
      ]
    },
    "PublicKey": {
      "type": "structure",
      "required": [
        "Id",
        "CreatedTime",
        "PublicKeyConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>A unique ID assigned to a public key you've added to CloudFront.</p>"
        },
        "CreatedTime": {
          "shape": "timestamp",
          "documentation": "<p>A time you added a public key to CloudFront.</p>"
        },
        "PublicKeyConfig": {
          "shape": "PublicKeyConfig",
          "documentation": "<p>A complex data type for a public key you add to CloudFront to use with features like field-level encryption.</p>"
        }
      },
      "documentation": "<p>A complex data type of public keys you add to CloudFront to use with features like field-level encryption.</p>"
    },
    "PublicKeyConfig": {
      "type": "structure",
      "required": [
        "CallerReference",
        "Name",
        "EncodedKey"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique number that ensures that the request can't be replayed.</p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p>The name for a public key you add to CloudFront to use with features like field-level encryption.</p>"
        },
        "EncodedKey": {
          "shape": "string",
          "documentation": "<p>The encoded public key that you want to add to CloudFront to use with features like field-level encryption.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>An optional comment about a public key.</p>"
        }
      },
      "documentation": "<p>Information about a public key you add to CloudFront to use with features like field-level encryption.</p>"
    },
    "PublicKeyList": {
      "type": "structure",
      "required": [
        "MaxItems",
        "Quantity"
      ],
      "members": {
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your public keys where you left off.</p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The maximum number of public keys you want in the response body. </p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of public keys you added to CloudFront to use with features like field-level encryption.</p>"
        },
        "Items": {
          "shape": "PublicKeySummaryList",
          "documentation": "<p>An array of information about a public key you add to CloudFront to use with features like field-level encryption.</p>"
        }
      },
      "documentation": "<p>A list of public keys you've added to CloudFront to use with features like field-level encryption.</p>"
    },
    "PublicKeySummary": {
      "type": "structure",
      "required": [
        "Id",
        "Name",
        "CreatedTime",
        "EncodedKey"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p> ID for public key information summary. </p>"
        },
        "Name": {
          "shape": "string",
          "documentation": "<p> Name for public key information summary. </p>"
        },
        "CreatedTime": {
          "shape": "timestamp",
          "documentation": "<p> Creation time for public key information summary. </p>"
        },
        "EncodedKey": {
          "shape": "string",
          "documentation": "<p> Encoded key for public key information summary. </p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p> Comment for public key information summary. </p>"
        }
      },
      "documentation": "<p>A complex data type for public key information. </p>"
    },
    "PublicKeySummaryList": {
      "type": "list",
      "member": {
        "shape": "PublicKeySummary",
        "locationName": "PublicKeySummary"
      }
    },
    "QueryArgProfile": {
      "type": "structure",
      "required": [
        "QueryArg",
        "ProfileId"
      ],
      "members": {
        "QueryArg": {
          "shape": "string",
          "documentation": "<p>Query argument for field-level encryption query argument-profile mapping.</p>"
        },
        "ProfileId": {
          "shape": "string",
          "documentation": "<p>ID of profile to use for field-level encryption query argument-profile mapping</p>"
        }
      },
      "documentation": "<p>Query argument-profile mapping for field-level encryption.</p>"
    },
    "QueryArgProfileConfig": {
      "type": "structure",
      "required": [
        "ForwardWhenQueryArgProfileIsUnknown"
      ],
      "members": {
        "ForwardWhenQueryArgProfileIsUnknown": {
          "shape": "boolean",
          "documentation": "<p>Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.</p>"
        },
        "QueryArgProfiles": {
          "shape": "QueryArgProfiles",
          "documentation": "<p>Profiles specified for query argument-profile mapping for field-level encryption.</p>"
        }
      },
      "documentation": "<p>Configuration for query argument-profile mapping for field-level encryption.</p>"
    },
    "QueryArgProfileList": {
      "type": "list",
      "member": {
        "shape": "QueryArgProfile",
        "locationName": "QueryArgProfile"
      }
    },
    "QueryArgProfiles": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>Number of profiles for query argument-profile mapping for field-level encryption.</p>"
        },
        "Items": {
          "shape": "QueryArgProfileList",
          "documentation": "<p>Number of items for query argument-profile mapping for field-level encryption.</p>"
        }
      },
      "documentation": "<p>Query argument-profile mapping for field-level encryption.</p>"
    },
    "QueryStringCacheKeys": {
      "type": "structure",
      "required": [
        "Quantity"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of <code>whitelisted</code> query string parameters for this cache behavior.</p>"
        },
        "Items": {
          "shape": "QueryStringCacheKeysList",
          "documentation": "<p>(Optional) A list that contains the query string parameters that you want CloudFront to use as a basis for caching for this cache behavior. If <code>Quantity</code> is 0, you can omit <code>Items</code>. </p>"
        }
      }
    },
    "QueryStringCacheKeysList": {
      "type": "list",
      "member": {
        "shape": "string",
        "locationName": "Name"
      }
    },
    "ResourceARN": {
      "type": "string",
      "pattern": "arn:aws:cloudfront::[0-9]+:.*"
    },
    "Restrictions": {
      "type": "structure",
      "required": [
        "GeoRestriction"
      ],
      "members": {
        "GeoRestriction": {
          "shape": "GeoRestriction"
        }
      },
      "documentation": "<p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>"
    },
    "S3Origin": {
      "type": "structure",
      "required": [
        "DomainName",
        "OriginAccessIdentity"
      ],
      "members": {
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The DNS name of the Amazon S3 origin. </p>"
        },
        "OriginAccessIdentity": {
          "shape": "string",
          "documentation": "<p>The CloudFront origin access identity to associate with the RTMP distribution. Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.</p> <p>If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html\">Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>"
    },
    "S3OriginConfig": {
      "type": "structure",
      "required": [
        "OriginAccessIdentity"
      ],
      "members": {
        "OriginAccessIdentity": {
          "shape": "string",
          "documentation": "<p>The CloudFront origin access identity to associate with the origin. Use an origin access identity to configure the origin so that viewers can <i>only</i> access objects in an Amazon S3 bucket through CloudFront. The format of the value is:</p> <p>origin-access-identity/cloudfront/<i>ID-of-origin-access-identity</i> </p> <p>where <code> <i>ID-of-origin-access-identity</i> </code> is the value that CloudFront returned in the <code>ID</code> element when you created the origin access identity.</p> <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information about the origin access identity, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        }
      },
      "documentation": "<p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>"
    },
    "SSLSupportMethod": {
      "type": "string",
      "enum": [
        "sni-only",
        "vip"
      ]
    },
    "Signer": {
      "type": "structure",
      "members": {
        "AwsAccountNumber": {
          "shape": "string",
          "documentation": "<p>An AWS account that is included in the <code>TrustedSigners</code> complex type for this RTMP distribution. Valid values include:</p> <ul> <li> <p> <code>self</code>, which is the AWS account used to create the distribution.</p> </li> <li> <p>An AWS account number.</p> </li> </ul>"
        },
        "KeyPairIds": {
          "shape": "KeyPairIds",
          "documentation": "<p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that lists the AWS accounts that were included in the <code>TrustedSigners</code> complex type, as well as their active CloudFront key pair IDs, if any. </p>"
    },
    "SignerList": {
      "type": "list",
      "member": {
        "shape": "Signer",
        "locationName": "Signer"
      }
    },
    "SslProtocol": {
      "type": "string",
      "enum": [
        "SSLv3",
        "TLSv1",
        "TLSv1.1",
        "TLSv1.2"
      ]
    },
    "SslProtocolsList": {
      "type": "list",
      "member": {
        "shape": "SslProtocol",
        "locationName": "SslProtocol"
      }
    },
    "StatusCodeList": {
      "type": "list",
      "member": {
        "shape": "integer",
        "locationName": "StatusCode"
      },
      "documentation": "<p>List of status codes for origin failover.</p>",
      "min": 1
    },
    "StatusCodes": {
      "type": "structure",
      "required": [
        "Quantity",
        "Items"
      ],
      "members": {
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of status codes.</p>"
        },
        "Items": {
          "shape": "StatusCodeList",
          "documentation": "<p>The items (status codes) for an origin group.</p>"
        }
      },
      "documentation": "<p>A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.</p>"
    },
    "StreamingDistribution": {
      "type": "structure",
      "required": [
        "Id",
        "ARN",
        "Status",
        "DomainName",
        "ActiveTrustedSigners",
        "StreamingDistributionConfig"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the RTMP distribution. For example: <code>EGTXBD79EXAMPLE</code>.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p>The current status of the RTMP distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time that the distribution was last modified. </p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name that corresponds to the streaming distribution, for example, <code>s5c39gqb8ow64r.cloudfront.net</code>. </p>"
        },
        "ActiveTrustedSigners": {
          "shape": "ActiveTrustedSigners",
          "documentation": "<p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>The current configuration information for the RTMP distribution.</p>"
        }
      },
      "documentation": "<p>A streaming distribution. </p>"
    },
    "StreamingDistributionConfig": {
      "type": "structure",
      "required": [
        "CallerReference",
        "S3Origin",
        "Comment",
        "TrustedSigners",
        "Enabled"
      ],
      "members": {
        "CallerReference": {
          "shape": "string",
          "documentation": "<p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>StreamingDistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value that you already sent in a previous request to create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>"
        },
        "S3Origin": {
          "shape": "S3Origin",
          "documentation": "<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution. </p>"
        },
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution. </p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>Any comments you want to include about the streaming distribution. </p>"
        },
        "Logging": {
          "shape": "StreamingLoggingConfig",
          "documentation": "<p>A complex type that controls whether access logs are written for the streaming distribution. </p>"
        },
        "TrustedSigners": {
          "shape": "TrustedSigners",
          "documentation": "<p>A complex type that specifies any AWS accounts that you want to permit to create signed URLs for private content. If you want the distribution to use signed URLs, include this element; if you want the distribution to use public URLs, remove this element. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>"
        },
        "PriceClass": {
          "shape": "PriceClass",
          "documentation": "<p>A complex type that contains information about price class for this streaming distribution. </p>"
        },
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Whether the streaming distribution is enabled to accept user requests for content.</p>"
        }
      },
      "documentation": "<p>The RTMP distribution's configuration information.</p>"
    },
    "StreamingDistributionConfigWithTags": {
      "type": "structure",
      "required": [
        "StreamingDistributionConfig",
        "Tags"
      ],
      "members": {
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>A streaming distribution Configuration.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>A complex type that contains zero or more <code>Tag</code> elements.</p>"
        }
      },
      "documentation": "<p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>"
    },
    "StreamingDistributionList": {
      "type": "structure",
      "required": [
        "Marker",
        "MaxItems",
        "IsTruncated",
        "Quantity"
      ],
      "members": {
        "Marker": {
          "shape": "string",
          "documentation": "<p>The value you provided for the <code>Marker</code> request parameter. </p>"
        },
        "NextMarker": {
          "shape": "string",
          "documentation": "<p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your RTMP distributions where they left off. </p>"
        },
        "MaxItems": {
          "shape": "integer",
          "documentation": "<p>The value you provided for the <code>MaxItems</code> request parameter. </p>"
        },
        "IsTruncated": {
          "shape": "boolean",
          "documentation": "<p>A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list. </p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of streaming distributions that were created by the current AWS account. </p>"
        },
        "Items": {
          "shape": "StreamingDistributionSummaryList",
          "documentation": "<p>A complex type that contains one <code>StreamingDistributionSummary</code> element for each distribution that was created by the current AWS account.</p>"
        }
      },
      "documentation": "<p>A streaming distribution list. </p>"
    },
    "StreamingDistributionSummary": {
      "type": "structure",
      "required": [
        "Id",
        "ARN",
        "Status",
        "LastModifiedTime",
        "DomainName",
        "S3Origin",
        "Aliases",
        "TrustedSigners",
        "Comment",
        "PriceClass",
        "Enabled"
      ],
      "members": {
        "Id": {
          "shape": "string",
          "documentation": "<p>The identifier for the distribution, for example, <code>EDFDVBD632BHDS5</code>.</p>"
        },
        "ARN": {
          "shape": "string",
          "documentation": "<p> The ARN (Amazon Resource Name) for the streaming distribution. For example: <code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your AWS account ID.</p>"
        },
        "Status": {
          "shape": "string",
          "documentation": "<p> Indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated throughout the Amazon CloudFront system.</p>"
        },
        "LastModifiedTime": {
          "shape": "timestamp",
          "documentation": "<p>The date and time the distribution was last modified.</p>"
        },
        "DomainName": {
          "shape": "string",
          "documentation": "<p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>"
        },
        "S3Origin": {
          "shape": "S3Origin",
          "documentation": "<p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>"
        },
        "Aliases": {
          "shape": "Aliases",
          "documentation": "<p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>"
        },
        "TrustedSigners": {
          "shape": "TrustedSigners",
          "documentation": "<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>. To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p>"
        },
        "Comment": {
          "shape": "string",
          "documentation": "<p>The comment originally specified when this distribution was created.</p>"
        },
        "PriceClass": {
          "shape": "PriceClass",
          "documentation": "<p/>"
        },
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Whether the distribution is enabled to accept end user requests for content.</p>"
        }
      },
      "documentation": "<p> A summary of the information for an Amazon CloudFront streaming distribution.</p>"
    },
    "StreamingDistributionSummaryList": {
      "type": "list",
      "member": {
        "shape": "StreamingDistributionSummary",
        "locationName": "StreamingDistributionSummary"
      }
    },
    "StreamingLoggingConfig": {
      "type": "structure",
      "required": [
        "Enabled",
        "Bucket",
        "Prefix"
      ],
      "members": {
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a streaming distribution or if you want to disable logging for an existing streaming distribution, specify <code>false</code> for <code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted. </p>"
        },
        "Bucket": {
          "shape": "string",
          "documentation": "<p>The Amazon S3 bucket to store the access logs in, for example, <code>myawslogbucket.s3.amazonaws.com</code>.</p>"
        },
        "Prefix": {
          "shape": "string",
          "documentation": "<p>An optional string that you want CloudFront to prefix to the access log filenames for this streaming distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>"
        }
      },
      "documentation": "<p>A complex type that controls whether access logs are written for this streaming distribution.</p>"
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p> A string that contains an optional <code>Tag</code> value.</p> <p>The string length should be between 0 and 256 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>"
        }
      },
      "documentation": "<p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>"
    },
    "TagKey": {
      "type": "string",
      "documentation": "<p> A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey",
        "locationName": "Key"
      }
    },
    "TagKeys": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "TagKeyList",
          "documentation": "<p> A complex type that contains <code>Tag</code> key elements.</p>"
        }
      },
      "documentation": "<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag",
        "locationName": "Tag"
      }
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "Resource",
        "Tags"
      ],
      "members": {
        "Resource": {
          "shape": "ResourceARN",
          "documentation": "<p> An ARN of a CloudFront resource.</p>",
          "location": "querystring",
          "locationName": "Resource"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p> A complex type that contains zero or more <code>Tag</code> elements.</p>",
          "locationName": "Tags",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "documentation": "<p> The request to add tags to a CloudFront resource.</p>",
      "payload": "Tags"
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "structure",
      "members": {
        "Items": {
          "shape": "TagList",
          "documentation": "<p> A complex type that contains <code>Tag</code> elements.</p>"
        }
      },
      "documentation": "<p> A complex type that contains zero or more <code>Tag</code> elements.</p>"
    },
    "TrustedSigners": {
      "type": "structure",
      "required": [
        "Enabled",
        "Quantity"
      ],
      "members": {
        "Enabled": {
          "shape": "boolean",
          "documentation": "<p>Specifies whether you want to require viewers to use signed URLs to access the files specified by <code>PathPattern</code> and <code>TargetOriginId</code>.</p>"
        },
        "Quantity": {
          "shape": "integer",
          "documentation": "<p>The number of trusted signers for this cache behavior.</p>"
        },
        "Items": {
          "shape": "AwsAccountNumberList",
          "documentation": "<p> <b>Optional</b>: A complex type that contains trusted signers for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>"
        }
      },
      "documentation": "<p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html\">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information about updating the distribution configuration, see <a>DistributionConfig</a> .</p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "Resource",
        "TagKeys"
      ],
      "members": {
        "Resource": {
          "shape": "ResourceARN",
          "documentation": "<p> An ARN of a CloudFront resource.</p>",
          "location": "querystring",
          "locationName": "Resource"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p> A complex type that contains zero or more <code>Tag</code> key elements.</p>",
          "locationName": "TagKeys",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        }
      },
      "documentation": "<p> The request to remove tags from a CloudFront resource.</p>",
      "payload": "TagKeys"
    },
    "UpdateCloudFrontOriginAccessIdentityRequest": {
      "type": "structure",
      "required": [
        "CloudFrontOriginAccessIdentityConfig",
        "Id"
      ],
      "members": {
        "CloudFrontOriginAccessIdentityConfig": {
          "shape": "CloudFrontOriginAccessIdentityConfig",
          "documentation": "<p>The identity's configuration information.</p>",
          "locationName": "CloudFrontOriginAccessIdentityConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The identity's id.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>The request to update an origin access identity.</p>",
      "payload": "CloudFrontOriginAccessIdentityConfig"
    },
    "UpdateCloudFrontOriginAccessIdentityResult": {
      "type": "structure",
      "members": {
        "CloudFrontOriginAccessIdentity": {
          "shape": "CloudFrontOriginAccessIdentity",
          "documentation": "<p>The origin access identity's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "CloudFrontOriginAccessIdentity"
    },
    "UpdateDistributionRequest": {
      "type": "structure",
      "required": [
        "DistributionConfig",
        "Id"
      ],
      "members": {
        "DistributionConfig": {
          "shape": "DistributionConfig",
          "documentation": "<p>The distribution's configuration information.</p>",
          "locationName": "DistributionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The distribution's id.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>The request to update a distribution.</p>",
      "payload": "DistributionConfig"
    },
    "UpdateDistributionResult": {
      "type": "structure",
      "members": {
        "Distribution": {
          "shape": "Distribution",
          "documentation": "<p>The distribution's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "Distribution"
    },
    "UpdateFieldLevelEncryptionConfigRequest": {
      "type": "structure",
      "required": [
        "FieldLevelEncryptionConfig",
        "Id"
      ],
      "members": {
        "FieldLevelEncryptionConfig": {
          "shape": "FieldLevelEncryptionConfig",
          "documentation": "<p>Request to update a field-level encryption configuration. </p>",
          "locationName": "FieldLevelEncryptionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID of the configuration you want to update.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "payload": "FieldLevelEncryptionConfig"
    },
    "UpdateFieldLevelEncryptionConfigResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryption": {
          "shape": "FieldLevelEncryption",
          "documentation": "<p>Return the results of updating the configuration.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when updating the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryption"
    },
    "UpdateFieldLevelEncryptionProfileRequest": {
      "type": "structure",
      "required": [
        "FieldLevelEncryptionProfileConfig",
        "Id"
      ],
      "members": {
        "FieldLevelEncryptionProfileConfig": {
          "shape": "FieldLevelEncryptionProfileConfig",
          "documentation": "<p>Request to update a field-level encryption profile. </p>",
          "locationName": "FieldLevelEncryptionProfileConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The ID of the field-level encryption profile request. </p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "payload": "FieldLevelEncryptionProfileConfig"
    },
    "UpdateFieldLevelEncryptionProfileResult": {
      "type": "structure",
      "members": {
        "FieldLevelEncryptionProfile": {
          "shape": "FieldLevelEncryptionProfile",
          "documentation": "<p>Return the results of updating the profile.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The result of the field-level encryption profile request. </p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "FieldLevelEncryptionProfile"
    },
    "UpdatePublicKeyRequest": {
      "type": "structure",
      "required": [
        "PublicKeyConfig",
        "Id"
      ],
      "members": {
        "PublicKeyConfig": {
          "shape": "PublicKeyConfig",
          "documentation": "<p>Request to update public key information.</p>",
          "locationName": "PublicKeyConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>ID of the public key to be updated.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the public key to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "payload": "PublicKeyConfig"
    },
    "UpdatePublicKeyResult": {
      "type": "structure",
      "members": {
        "PublicKey": {
          "shape": "PublicKey",
          "documentation": "<p>Return the results of updating the public key.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the update public key result. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "payload": "PublicKey"
    },
    "UpdateStreamingDistributionRequest": {
      "type": "structure",
      "required": [
        "StreamingDistributionConfig",
        "Id"
      ],
      "members": {
        "StreamingDistributionConfig": {
          "shape": "StreamingDistributionConfig",
          "documentation": "<p>The streaming distribution's configuration information.</p>",
          "locationName": "StreamingDistributionConfig",
          "xmlNamespace": {
            "uri": "http://cloudfront.amazonaws.com/doc/2018-11-05/"
          }
        },
        "Id": {
          "shape": "string",
          "documentation": "<p>The streaming distribution's id.</p>",
          "location": "uri",
          "locationName": "Id"
        },
        "IfMatch": {
          "shape": "string",
          "documentation": "<p>The value of the <code>ETag</code> header that you received when retrieving the streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "If-Match"
        }
      },
      "documentation": "<p>The request to update a streaming distribution.</p>",
      "payload": "StreamingDistributionConfig"
    },
    "UpdateStreamingDistributionResult": {
      "type": "structure",
      "members": {
        "StreamingDistribution": {
          "shape": "StreamingDistribution",
          "documentation": "<p>The streaming distribution's information.</p>"
        },
        "ETag": {
          "shape": "string",
          "documentation": "<p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>",
          "location": "header",
          "locationName": "ETag"
        }
      },
      "documentation": "<p>The returned result of the corresponding request.</p>",
      "payload": "StreamingDistribution"
    },
    "ViewerCertificate": {
      "type": "structure",
      "members": {
        "CloudFrontDefaultCertificate": {
          "shape": "boolean",
          "documentation": "<p>For information about how and when to use <code>CloudFrontDefaultCertificate</code>, see <a>ViewerCertificate</a>.</p>"
        },
        "IAMCertificateId": {
          "shape": "string",
          "documentation": "<p>For information about how and when to use <code>IAMCertificateId</code>, see <a>ViewerCertificate</a>.</p>"
        },
        "ACMCertificateArn": {
          "shape": "string",
          "documentation": "<p>For information about how and when to use <code>ACMCertificateArn</code>, see <a>ViewerCertificate</a>.</p>"
        },
        "SSLSupportMethod": {
          "shape": "SSLSupportMethod",
          "documentation": "<p>If you specify a value for <a>ViewerCertificate$ACMCertificateArn</a> or for <a>ViewerCertificate$IAMCertificateId</a>, you must also specify how you want CloudFront to serve HTTPS requests: using a method that works for all clients or one that works for most clients:</p> <ul> <li> <p> <code>vip</code>: CloudFront uses dedicated IP addresses for your content and can respond to HTTPS requests from any viewer. However, you will incur additional monthly charges.</p> </li> <li> <p> <code>sni-only</code>: CloudFront can respond to HTTPS requests from viewers that support Server Name Indication (SNI). All modern browsers support SNI, but some browsers still in use don't support SNI. If some of your users' browsers don't support SNI, we recommend that you do one of the following:</p> <ul> <li> <p>Use the <code>vip</code> option (dedicated IP addresses) instead of <code>sni-only</code>.</p> </li> <li> <p>Use the CloudFront SSL/TLS certificate instead of a custom certificate. This requires that you use the CloudFront domain name of your distribution in the URLs for your objects, for example, <code>https://d111111abcdef8.cloudfront.net/logo.png</code>.</p> </li> <li> <p>If you can control which browser your users use, upgrade the browser to one that supports SNI.</p> </li> <li> <p>Use HTTP instead of HTTPS.</p> </li> </ul> </li> </ul> <p>Don't specify a value for <code>SSLSupportMethod</code> if you specified <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code>.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS.html\">Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "MinimumProtocolVersion": {
          "shape": "MinimumProtocolVersion",
          "documentation": "<p>Specify the security policy that you want CloudFront to use for HTTPS connections. A security policy determines two settings:</p> <ul> <li> <p>The minimum SSL/TLS protocol that CloudFront uses to communicate with viewers</p> </li> <li> <p>The cipher that CloudFront uses to encrypt the content that it returns to viewers</p> </li> </ul> <note> <p>On the CloudFront console, this setting is called <b>Security policy</b>.</p> </note> <p>We recommend that you specify <code>TLSv1.1_2016</code> unless your users are using browsers or devices that do not support TLSv1.1 or later.</p> <p>When both of the following are true, you must specify <code>TLSv1</code> or later for the security policy: </p> <ul> <li> <p>You're using a custom certificate: you specified a value for <code>ACMCertificateArn</code> or for <code>IAMCertificateId</code> </p> </li> <li> <p>You're using SNI: you specified <code>sni-only</code> for <code>SSLSupportMethod</code> </p> </li> </ul> <p>If you specify <code>true</code> for <code>CloudFrontDefaultCertificate</code>, CloudFront automatically sets the security policy to <code>TLSv1</code> regardless of the value that you specify for <code>MinimumProtocolVersion</code>.</p> <p>For information about the relationship between the security policy that you choose and the protocols and ciphers that CloudFront uses to communicate with viewers, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers\"> Supported SSL/TLS Protocols and Ciphers for Communication Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
        },
        "Certificate": {
          "shape": "string",
          "documentation": "<p>This field has been deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <a>ViewerCertificate$ACMCertificateArn</a> </p> </li> <li> <p> <a>ViewerCertificate$IAMCertificateId</a> </p> </li> <li> <p> <a>ViewerCertificate$CloudFrontDefaultCertificate</a> </p> </li> </ul>",
          "deprecated": true
        },
        "CertificateSource": {
          "shape": "CertificateSource",
          "documentation": "<p>This field has been deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <a>ViewerCertificate$ACMCertificateArn</a> </p> </li> <li> <p> <a>ViewerCertificate$IAMCertificateId</a> </p> </li> <li> <p> <a>ViewerCertificate$CloudFrontDefaultCertificate</a> </p> </li> </ul>",
          "deprecated": true
        }
      },
      "documentation": "<p>A complex type that specifies the following:</p> <ul> <li> <p>Whether you want viewers to use HTTP or HTTPS to request your objects.</p> </li> <li> <p>If you want viewers to use HTTPS, whether you're using an alternate domain name such as <code>example.com</code> or the CloudFront domain name for your distribution, such as <code>d111111abcdef8.cloudfront.net</code>.</p> </li> <li> <p>If you're using an alternate domain name, whether AWS Certificate Manager (ACM) provided the certificate, or you purchased a certificate from a third-party certificate authority and imported it into ACM or uploaded it to the IAM certificate store.</p> </li> </ul> <p>You must specify only one of the following values: </p> <ul> <li> <p> <a>ViewerCertificate$ACMCertificateArn</a> </p> </li> <li> <p> <a>ViewerCertificate$IAMCertificateId</a> </p> </li> <li> <p> <a>ViewerCertificate$CloudFrontDefaultCertificate</a> </p> </li> </ul> <p>Don't specify <code>false</code> for <code>CloudFrontDefaultCertificate</code>.</p> <p> <b>If you want viewers to use HTTP instead of HTTPS to request your objects</b>: Specify the following value:</p> <p> <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt;</code> </p> <p>In addition, specify <code>allow-all</code> for <code>ViewerProtocolPolicy</code> for all of your cache behaviors.</p> <p> <b>If you want viewers to use HTTPS to request your objects</b>: Choose the type of certificate that you want to use based on whether you're using an alternate domain name for your objects or the CloudFront domain name:</p> <ul> <li> <p> <b>If you're using an alternate domain name, such as example.com</b>: Specify one of the following values, depending on whether ACM provided your certificate or you purchased your certificate from third-party certificate authority:</p> <ul> <li> <p> <code>&lt;ACMCertificateArn&gt;<i>ARN for ACM SSL/TLS certificate</i>&lt;ACMCertificateArn&gt;</code> where <code> <i>ARN for ACM SSL/TLS certificate</i> </code> is the ARN for the ACM SSL/TLS certificate that you want to use for this distribution.</p> </li> <li> <p> <code>&lt;IAMCertificateId&gt;<i>IAM certificate ID</i>&lt;IAMCertificateId&gt;</code> where <code> <i>IAM certificate ID</i> </code> is the ID that IAM returned when you added the certificate to the IAM certificate store.</p> </li> </ul> <p>If you specify <code>ACMCertificateArn</code> or <code>IAMCertificateId</code>, you must also specify a value for <code>SSLSupportMethod</code>.</p> <p>If you choose to use an ACM certificate or a certificate in the IAM certificate store, we recommend that you use only an alternate domain name in your object URLs (<code>https://example.com/logo.jpg</code>). If you use the domain name that is associated with your CloudFront distribution (such as <code>https://d111111abcdef8.cloudfront.net/logo.jpg</code>) and the viewer supports <code>SNI</code>, then CloudFront behaves normally. However, if the browser does not support SNI, the user's experience depends on the value that you choose for <code>SSLSupportMethod</code>:</p> <ul> <li> <p> <code>vip</code>: The viewer displays a warning because there is a mismatch between the CloudFront domain name and the domain name in your SSL/TLS certificate.</p> </li> <li> <p> <code>sni-only</code>: CloudFront drops the connection with the browser without returning the object.</p> </li> </ul> </li> <li> <p> <b>If you're using the CloudFront domain name for your distribution, such as <code>d111111abcdef8.cloudfront.net</code> </b>: Specify the following value:</p> <p> <code>&lt;CloudFrontDefaultCertificate&gt;true&lt;CloudFrontDefaultCertificate&gt; </code> </p> </li> </ul> <p>If you want viewers to use HTTPS, you must also specify one of the following values in your cache behaviors:</p> <ul> <li> <p> <code> &lt;ViewerProtocolPolicy&gt;https-only&lt;ViewerProtocolPolicy&gt;</code> </p> </li> <li> <p> <code>&lt;ViewerProtocolPolicy&gt;redirect-to-https&lt;ViewerProtocolPolicy&gt;</code> </p> </li> </ul> <p>You can also optionally require that CloudFront use HTTPS to communicate with your origin by specifying one of the following values for the applicable origins:</p> <ul> <li> <p> <code>&lt;OriginProtocolPolicy&gt;https-only&lt;OriginProtocolPolicy&gt; </code> </p> </li> <li> <p> <code>&lt;OriginProtocolPolicy&gt;match-viewer&lt;OriginProtocolPolicy&gt; </code> </p> </li> </ul> <p>For more information, see <a href=\"http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS\">Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>"
    },
    "ViewerProtocolPolicy": {
      "type": "string",
      "enum": [
        "allow-all",
        "https-only",
        "redirect-to-https"
      ]
    },
    "boolean": {
      "type": "boolean"
    },
    "integer": {
      "type": "integer"
    },
    "long": {
      "type": "long"
    },
    "string": {
      "type": "string"
    },
    "timestamp": {
      "type": "timestamp"
    }
  },
  "documentation": "<fullname>Amazon CloudFront</fullname> <p>This is the <i>Amazon CloudFront API Reference</i>. This guide is for developers who need detailed information about CloudFront API actions, data types, and errors. For detailed information about CloudFront features, see the <i>Amazon CloudFront Developer Guide</i>.</p>"
}
]===]))
