local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-09-21",
    "endpointPrefix": "api.ecr",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Amazon ECR",
    "serviceFullName": "Amazon EC2 Container Registry",
    "serviceId": "ECR",
    "signatureVersion": "v4",
    "signingName": "ecr",
    "targetPrefix": "AmazonEC2ContainerRegistry_V20150921",
    "uid": "ecr-2015-09-21"
  },
  "operations": {
    "BatchCheckLayerAvailability": {
      "name": "BatchCheckLayerAvailability",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchCheckLayerAvailabilityRequest"
      },
      "output": {
        "shape": "BatchCheckLayerAvailabilityResponse"
      },
      "errors": [
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "ServerException"
        }
      ],
      "documentation": "<p>Checks the availability of one or more image layers in a repository.</p> <p>When an image is pushed to a repository, each image layer is checked to verify if it has been uploaded before. If it has been uploaded, then the image layer is skipped.</p> <note> <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>"
    },
    "BatchDeleteImage": {
      "name": "BatchDeleteImage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchDeleteImageRequest"
      },
      "output": {
        "shape": "BatchDeleteImageResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Deletes a list of specified images within a repository. Images are specified with either an <code>imageTag</code> or <code>imageDigest</code>.</p> <p>You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository.</p> <p>You can completely delete an image (and all of its tags) by specifying the image's digest in your request.</p>"
    },
    "BatchGetImage": {
      "name": "BatchGetImage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "BatchGetImageRequest"
      },
      "output": {
        "shape": "BatchGetImageResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Gets detailed information for an image. Images are specified with either an <code>imageTag</code> or <code>imageDigest</code>.</p> <p>When an image is pulled, the BatchGetImage API is called once to retrieve the image manifest.</p>"
    },
    "CompleteLayerUpload": {
      "name": "CompleteLayerUpload",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CompleteLayerUploadRequest"
      },
      "output": {
        "shape": "CompleteLayerUploadResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "UploadNotFoundException"
        },
        {
          "shape": "InvalidLayerException"
        },
        {
          "shape": "LayerPartTooSmallException"
        },
        {
          "shape": "LayerAlreadyExistsException"
        },
        {
          "shape": "EmptyUploadException"
        },
        {
          "shape": "KmsException"
        }
      ],
      "documentation": "<p>Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID. You can optionally provide a <code>sha256</code> digest of the image layer for data validation purposes.</p> <p>When an image is pushed, the CompleteLayerUpload API is called once per each new image layer to verify that the upload has completed.</p> <note> <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>"
    },
    "CreateRepository": {
      "name": "CreateRepository",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateRepositoryRequest"
      },
      "output": {
        "shape": "CreateRepositoryResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidTagParameterException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "RepositoryAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "KmsException"
        }
      ],
      "documentation": "<p>Creates a repository. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html\">Amazon ECR Repositories</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"
    },
    "DeleteLifecyclePolicy": {
      "name": "DeleteLifecyclePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLifecyclePolicyRequest"
      },
      "output": {
        "shape": "DeleteLifecyclePolicyResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "LifecyclePolicyNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the lifecycle policy associated with the specified repository.</p>"
    },
    "DeleteRepository": {
      "name": "DeleteRepository",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRepositoryRequest"
      },
      "output": {
        "shape": "DeleteRepositoryResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "RepositoryNotEmptyException"
        },
        {
          "shape": "KmsException"
        }
      ],
      "documentation": "<p>Deletes a repository. If the repository contains images, you must either delete all images in the repository or use the <code>force</code> option to delete the repository.</p>"
    },
    "DeleteRepositoryPolicy": {
      "name": "DeleteRepositoryPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRepositoryPolicyRequest"
      },
      "output": {
        "shape": "DeleteRepositoryPolicyResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "RepositoryPolicyNotFoundException"
        }
      ],
      "documentation": "<p>Deletes the repository policy associated with the specified repository.</p>"
    },
    "DescribeImageScanFindings": {
      "name": "DescribeImageScanFindings",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeImageScanFindingsRequest"
      },
      "output": {
        "shape": "DescribeImageScanFindingsResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "ImageNotFoundException"
        },
        {
          "shape": "ScanNotFoundException"
        }
      ],
      "documentation": "<p>Returns the scan findings for the specified image.</p>"
    },
    "DescribeImages": {
      "name": "DescribeImages",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeImagesRequest"
      },
      "output": {
        "shape": "DescribeImagesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "ImageNotFoundException"
        }
      ],
      "documentation": "<p>Returns metadata about the images in a repository.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>"
    },
    "DescribeRepositories": {
      "name": "DescribeRepositories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeRepositoriesRequest"
      },
      "output": {
        "shape": "DescribeRepositoriesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Describes image repositories in a registry.</p>"
    },
    "GetAuthorizationToken": {
      "name": "GetAuthorizationToken",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAuthorizationTokenRequest"
      },
      "output": {
        "shape": "GetAuthorizationTokenResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        }
      ],
      "documentation": "<p>Retrieves an authorization token. An authorization token represents your IAM authentication credentials and can be used to access any Amazon ECR registry that your IAM principal has access to. The authorization token is valid for 12 hours.</p> <p>The <code>authorizationToken</code> returned is a base64 encoded string that can be decoded and used in a <code>docker login</code> command to authenticate to a registry. The AWS CLI offers an <code>get-login-password</code> command that simplifies the login process. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth\">Registry Authentication</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"
    },
    "GetDownloadUrlForLayer": {
      "name": "GetDownloadUrlForLayer",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetDownloadUrlForLayerRequest"
      },
      "output": {
        "shape": "GetDownloadUrlForLayerResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "LayersNotFoundException"
        },
        {
          "shape": "LayerInaccessibleException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.</p> <p>When an image is pulled, the GetDownloadUrlForLayer API is called once per image layer that is not already cached.</p> <note> <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>"
    },
    "GetLifecyclePolicy": {
      "name": "GetLifecyclePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetLifecyclePolicyRequest"
      },
      "output": {
        "shape": "GetLifecyclePolicyResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "LifecyclePolicyNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the lifecycle policy for the specified repository.</p>"
    },
    "GetLifecyclePolicyPreview": {
      "name": "GetLifecyclePolicyPreview",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetLifecyclePolicyPreviewRequest"
      },
      "output": {
        "shape": "GetLifecyclePolicyPreviewResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "LifecyclePolicyPreviewNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the results of the lifecycle policy preview request for the specified repository.</p>"
    },
    "GetRepositoryPolicy": {
      "name": "GetRepositoryPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRepositoryPolicyRequest"
      },
      "output": {
        "shape": "GetRepositoryPolicyResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "RepositoryPolicyNotFoundException"
        }
      ],
      "documentation": "<p>Retrieves the repository policy for the specified repository.</p>"
    },
    "InitiateLayerUpload": {
      "name": "InitiateLayerUpload",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "InitiateLayerUploadRequest"
      },
      "output": {
        "shape": "InitiateLayerUploadResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "KmsException"
        }
      ],
      "documentation": "<p>Notifies Amazon ECR that you intend to upload an image layer.</p> <p>When an image is pushed, the InitiateLayerUpload API is called once per image layer that has not already been uploaded. Whether or not an image layer has been uploaded is determined by the BatchCheckLayerAvailability API action.</p> <note> <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>"
    },
    "ListImages": {
      "name": "ListImages",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListImagesRequest"
      },
      "output": {
        "shape": "ListImagesResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Lists all the image IDs for the specified repository.</p> <p>You can filter images based on whether or not they are tagged by using the <code>tagStatus</code> filter and specifying either <code>TAGGED</code>, <code>UNTAGGED</code> or <code>ANY</code>. For example, you can filter your results to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your results to return only <code>TAGGED</code> images to list all of the tags in your repository.</p>"
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
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "ServerException"
        }
      ],
      "documentation": "<p>List the tags for an Amazon ECR resource.</p>"
    },
    "PutImage": {
      "name": "PutImage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutImageRequest"
      },
      "output": {
        "shape": "PutImageResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "ImageAlreadyExistsException"
        },
        {
          "shape": "LayersNotFoundException"
        },
        {
          "shape": "ReferencedImagesNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ImageTagAlreadyExistsException"
        },
        {
          "shape": "ImageDigestDoesNotMatchException"
        },
        {
          "shape": "KmsException"
        }
      ],
      "documentation": "<p>Creates or updates the image manifest and tags associated with an image.</p> <p>When an image is pushed and all new image layers have been uploaded, the PutImage API is called once to create or update the image manifest and the tags associated with the image.</p> <note> <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>"
    },
    "PutImageScanningConfiguration": {
      "name": "PutImageScanningConfiguration",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutImageScanningConfigurationRequest"
      },
      "output": {
        "shape": "PutImageScanningConfigurationResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Updates the image scanning configuration for the specified repository.</p>"
    },
    "PutImageTagMutability": {
      "name": "PutImageTagMutability",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutImageTagMutabilityRequest"
      },
      "output": {
        "shape": "PutImageTagMutabilityResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Updates the image tag mutability settings for the specified repository. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html\">Image Tag Mutability</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"
    },
    "PutLifecyclePolicy": {
      "name": "PutLifecyclePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutLifecyclePolicyRequest"
      },
      "output": {
        "shape": "PutLifecyclePolicyResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Creates or updates the lifecycle policy for the specified repository. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html\">Lifecycle Policy Template</a>.</p>"
    },
    "SetRepositoryPolicy": {
      "name": "SetRepositoryPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SetRepositoryPolicyRequest"
      },
      "output": {
        "shape": "SetRepositoryPolicyResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        }
      ],
      "documentation": "<p>Applies a repository policy to the specified repository to control access permissions. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html\">Amazon ECR Repository Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"
    },
    "StartImageScan": {
      "name": "StartImageScan",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartImageScanRequest"
      },
      "output": {
        "shape": "StartImageScanResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "UnsupportedImageTypeException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "ImageNotFoundException"
        }
      ],
      "documentation": "<p>Starts an image vulnerability scan. An image scan can only be started once per day on an individual image. This limit includes if an image was scanned on initial push. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html\">Image Scanning</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"
    },
    "StartLifecyclePolicyPreview": {
      "name": "StartLifecyclePolicyPreview",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartLifecyclePolicyPreviewRequest"
      },
      "output": {
        "shape": "StartLifecyclePolicyPreviewResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "LifecyclePolicyNotFoundException"
        },
        {
          "shape": "LifecyclePolicyPreviewInProgressException"
        }
      ],
      "documentation": "<p>Starts a preview of a lifecycle policy for the specified repository. This allows you to see the results before associating the lifecycle policy with the repository.</p>"
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
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidTagParameterException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "ServerException"
        }
      ],
      "documentation": "<p>Adds specified tags to a resource with the specified ARN. Existing tags on a resource are not changed if they are not specified in the request parameters.</p>"
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
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidTagParameterException"
        },
        {
          "shape": "TooManyTagsException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "ServerException"
        }
      ],
      "documentation": "<p>Deletes specified tags from a resource.</p>"
    },
    "UploadLayerPart": {
      "name": "UploadLayerPart",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UploadLayerPartRequest"
      },
      "output": {
        "shape": "UploadLayerPartResponse"
      },
      "errors": [
        {
          "shape": "ServerException"
        },
        {
          "shape": "InvalidParameterException"
        },
        {
          "shape": "InvalidLayerPartException"
        },
        {
          "shape": "RepositoryNotFoundException"
        },
        {
          "shape": "UploadNotFoundException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "KmsException"
        }
      ],
      "documentation": "<p>Uploads an image layer part to Amazon ECR.</p> <p>When an image is pushed, each new image layer is uploaded in parts. The maximum size of each image layer part can be 20971520 bytes (or about 20MB). The UploadLayerPart API is called once per each new image layer part.</p> <note> <p>This operation is used by the Amazon ECR proxy and is not generally used by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>"
    }
  },
  "shapes": {
    "Arn": {
      "type": "string"
    },
    "Attribute": {
      "type": "structure",
      "required": [
        "key"
      ],
      "members": {
        "key": {
          "shape": "AttributeKey",
          "documentation": "<p>The attribute key.</p>"
        },
        "value": {
          "shape": "AttributeValue",
          "documentation": "<p>The value assigned to the attribute key.</p>"
        }
      },
      "documentation": "<p>This data type is used in the <a>ImageScanFinding</a> data type.</p>"
    },
    "AttributeKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "AttributeList": {
      "type": "list",
      "member": {
        "shape": "Attribute"
      },
      "max": 50,
      "min": 0
    },
    "AttributeValue": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "AuthorizationData": {
      "type": "structure",
      "members": {
        "authorizationToken": {
          "shape": "Base64",
          "documentation": "<p>A base64-encoded string that contains authorization data for the specified Amazon ECR registry. When the string is decoded, it is presented in the format <code>user:password</code> for private registry authentication using <code>docker login</code>.</p>"
        },
        "expiresAt": {
          "shape": "ExpirationTimestamp",
          "documentation": "<p>The Unix time in seconds and milliseconds when the authorization token expires. Authorization tokens are valid for 12 hours.</p>"
        },
        "proxyEndpoint": {
          "shape": "ProxyEndpoint",
          "documentation": "<p>The registry URL to use for this authorization token in a <code>docker login</code> command. The Amazon ECR registry URL format is <code>https://aws_account_id.dkr.ecr.region.amazonaws.com</code>. For example, <code>https://012345678910.dkr.ecr.us-east-1.amazonaws.com</code>.. </p>"
        }
      },
      "documentation": "<p>An object representing authorization data for an Amazon ECR registry.</p>"
    },
    "AuthorizationDataList": {
      "type": "list",
      "member": {
        "shape": "AuthorizationData"
      }
    },
    "Base64": {
      "type": "string",
      "pattern": "^\\S+$"
    },
    "BatchCheckLayerAvailabilityRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "layerDigests"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the image layers to check. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that is associated with the image layers to check.</p>"
        },
        "layerDigests": {
          "shape": "BatchedOperationLayerDigestList",
          "documentation": "<p>The digests of the image layers to check.</p>"
        }
      }
    },
    "BatchCheckLayerAvailabilityResponse": {
      "type": "structure",
      "members": {
        "layers": {
          "shape": "LayerList",
          "documentation": "<p>A list of image layer objects corresponding to the image layer references in the request.</p>"
        },
        "failures": {
          "shape": "LayerFailureList",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "BatchDeleteImageRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "imageIds"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the image to delete. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository that contains the image to delete.</p>"
        },
        "imageIds": {
          "shape": "ImageIdentifierList",
          "documentation": "<p>A list of image ID references that correspond to images to delete. The format of the <code>imageIds</code> reference is <code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p>"
        }
      },
      "documentation": "<p>Deletes specified images within a specified repository. Images are specified with either the <code>imageTag</code> or <code>imageDigest</code>.</p>"
    },
    "BatchDeleteImageResponse": {
      "type": "structure",
      "members": {
        "imageIds": {
          "shape": "ImageIdentifierList",
          "documentation": "<p>The image IDs of the deleted images.</p>"
        },
        "failures": {
          "shape": "ImageFailureList",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "BatchGetImageRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "imageIds"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the images to describe. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository that contains the images to describe.</p>"
        },
        "imageIds": {
          "shape": "ImageIdentifierList",
          "documentation": "<p>A list of image ID references that correspond to images to describe. The format of the <code>imageIds</code> reference is <code>imageTag=tag</code> or <code>imageDigest=digest</code>.</p>"
        },
        "acceptedMediaTypes": {
          "shape": "MediaTypeList",
          "documentation": "<p>The accepted media types for the request.</p> <p>Valid values: <code>application/vnd.docker.distribution.manifest.v1+json</code> | <code>application/vnd.docker.distribution.manifest.v2+json</code> | <code>application/vnd.oci.image.manifest.v1+json</code> </p>"
        }
      }
    },
    "BatchGetImageResponse": {
      "type": "structure",
      "members": {
        "images": {
          "shape": "ImageList",
          "documentation": "<p>A list of image objects corresponding to the image references in the request.</p>"
        },
        "failures": {
          "shape": "ImageFailureList",
          "documentation": "<p>Any failures associated with the call.</p>"
        }
      }
    },
    "BatchedOperationLayerDigest": {
      "type": "string",
      "max": 1000,
      "min": 0
    },
    "BatchedOperationLayerDigestList": {
      "type": "list",
      "member": {
        "shape": "BatchedOperationLayerDigest"
      },
      "max": 100,
      "min": 1
    },
    "CompleteLayerUploadRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "uploadId",
        "layerDigests"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry to which to upload layers. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to associate with the image layer.</p>"
        },
        "uploadId": {
          "shape": "UploadId",
          "documentation": "<p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to associate with the image layer.</p>"
        },
        "layerDigests": {
          "shape": "LayerDigestList",
          "documentation": "<p>The <code>sha256</code> digest of the image layer.</p>"
        }
      }
    },
    "CompleteLayerUploadResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "uploadId": {
          "shape": "UploadId",
          "documentation": "<p>The upload ID associated with the layer.</p>"
        },
        "layerDigest": {
          "shape": "LayerDigest",
          "documentation": "<p>The <code>sha256</code> digest of the image layer.</p>"
        }
      }
    },
    "CreateRepositoryRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name to use for the repository. The repository name may be specified on its own (such as <code>nginx-web-app</code>) or it can be prepended with a namespace to group the repository into a category (such as <code>project-a/nginx-web-app</code>).</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The metadata that you apply to the repository to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>"
        },
        "imageTagMutability": {
          "shape": "ImageTagMutability",
          "documentation": "<p>The tag mutability setting for the repository. If this parameter is omitted, the default setting of <code>MUTABLE</code> will be used which will allow image tags to be overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the repository will be immutable which will prevent them from being overwritten.</p>"
        },
        "imageScanningConfiguration": {
          "shape": "ImageScanningConfiguration",
          "documentation": "<p>The image scanning configuration for the repository. This determines whether images are scanned for known vulnerabilities after being pushed to the repository.</p>"
        },
        "encryptionConfiguration": {
          "shape": "EncryptionConfiguration",
          "documentation": "<p>The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest.</p>"
        }
      }
    },
    "CreateRepositoryResponse": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "Repository",
          "documentation": "<p>The repository that was created.</p>"
        }
      }
    },
    "CreationTimestamp": {
      "type": "timestamp"
    },
    "DeleteLifecyclePolicyRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository.</p>"
        }
      }
    },
    "DeleteLifecyclePolicyResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "lifecyclePolicyText": {
          "shape": "LifecyclePolicyText",
          "documentation": "<p>The JSON lifecycle policy text.</p>"
        },
        "lastEvaluatedAt": {
          "shape": "EvaluationTimestamp",
          "documentation": "<p>The time stamp of the last time that the lifecycle policy was run.</p>"
        }
      }
    },
    "DeleteRepositoryPolicyRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository policy to delete. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that is associated with the repository policy to delete.</p>"
        }
      }
    },
    "DeleteRepositoryPolicyResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "policyText": {
          "shape": "RepositoryPolicyText",
          "documentation": "<p>The JSON repository policy that was deleted from the repository.</p>"
        }
      }
    },
    "DeleteRepositoryRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository to delete. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to delete.</p>"
        },
        "force": {
          "shape": "ForceFlag",
          "documentation": "<p> If a repository contains images, forces the deletion.</p>"
        }
      }
    },
    "DeleteRepositoryResponse": {
      "type": "structure",
      "members": {
        "repository": {
          "shape": "Repository",
          "documentation": "<p>The repository that was deleted.</p>"
        }
      }
    },
    "DescribeImageScanFindingsRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "imageId"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository in which to describe the image scan findings for. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository for the image for which to describe the scan findings.</p>"
        },
        "imageId": {
          "shape": "ImageIdentifier"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeImageScanFindings</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is null when there are no more results to return.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of image scan results returned by <code>DescribeImageScanFindings</code> in paginated output. When this parameter is used, <code>DescribeImageScanFindings</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeImageScanFindings</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 1000. If this parameter is not used, then <code>DescribeImageScanFindings</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>"
        }
      }
    },
    "DescribeImageScanFindingsResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "imageId": {
          "shape": "ImageIdentifier"
        },
        "imageScanStatus": {
          "shape": "ImageScanStatus",
          "documentation": "<p>The current state of the scan.</p>"
        },
        "imageScanFindings": {
          "shape": "ImageScanFindings",
          "documentation": "<p>The information contained in the image scan findings.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>DescribeImageScanFindings</code> request. When the results of a <code>DescribeImageScanFindings</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is null when there are no more results to return.</p>"
        }
      }
    },
    "DescribeImagesFilter": {
      "type": "structure",
      "members": {
        "tagStatus": {
          "shape": "TagStatus",
          "documentation": "<p>The tag status with which to filter your <a>DescribeImages</a> results. You can filter results based on whether they are <code>TAGGED</code> or <code>UNTAGGED</code>.</p>"
        }
      },
      "documentation": "<p>An object representing a filter on a <a>DescribeImages</a> operation.</p>"
    },
    "DescribeImagesRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository in which to describe images. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository that contains the images to describe.</p>"
        },
        "imageIds": {
          "shape": "ImageIdentifierList",
          "documentation": "<p>The list of image IDs for the requested repository.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeImages</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return. This option cannot be used when you specify images with <code>imageIds</code>.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of repository results returned by <code>DescribeImages</code> in paginated output. When this parameter is used, <code>DescribeImages</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeImages</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 1000. If this parameter is not used, then <code>DescribeImages</code> returns up to 100 results and a <code>nextToken</code> value, if applicable. This option cannot be used when you specify images with <code>imageIds</code>.</p>"
        },
        "filter": {
          "shape": "DescribeImagesFilter",
          "documentation": "<p>The filter key and value with which to filter your <code>DescribeImages</code> results.</p>"
        }
      }
    },
    "DescribeImagesResponse": {
      "type": "structure",
      "members": {
        "imageDetails": {
          "shape": "ImageDetailList",
          "documentation": "<p>A list of <a>ImageDetail</a> objects that contain data about the image.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>DescribeImages</code> request. When the results of a <code>DescribeImages</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "DescribeRepositoriesRequest": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repositories to be described. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryNames": {
          "shape": "RepositoryNameList",
          "documentation": "<p>A list of repositories to describe. If this parameter is omitted, then all repositories in a registry are described.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>DescribeRepositories</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return. This option cannot be used when you specify repositories with <code>repositoryNames</code>.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of repository results returned by <code>DescribeRepositories</code> in paginated output. When this parameter is used, <code>DescribeRepositories</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>DescribeRepositories</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 1000. If this parameter is not used, then <code>DescribeRepositories</code> returns up to 100 results and a <code>nextToken</code> value, if applicable. This option cannot be used when you specify repositories with <code>repositoryNames</code>.</p>"
        }
      }
    },
    "DescribeRepositoriesResponse": {
      "type": "structure",
      "members": {
        "repositories": {
          "shape": "RepositoryList",
          "documentation": "<p>A list of repository objects corresponding to valid repositories.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>DescribeRepositories</code> request. When the results of a <code>DescribeRepositories</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "EncryptionConfiguration": {
      "type": "structure",
      "required": [
        "encryptionType"
      ],
      "members": {
        "encryptionType": {
          "shape": "EncryptionType",
          "documentation": "<p>The encryption type to use.</p> <p>If you use the <code>KMS</code> encryption type, the contents of the repository will be encrypted using server-side encryption with customer master keys (CMKs) stored in AWS KMS. When you use AWS KMS to encrypt your data, you can either use the default AWS managed CMK for Amazon ECR, or specify your own CMK, which you already created. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingKMSEncryption.html\">Protecting Data Using Server-Side Encryption with CMKs Stored in AWS Key Management Service (SSE-KMS)</a> in the <i>Amazon Simple Storage Service Console Developer Guide.</i>.</p> <p>If you use the <code>AES256</code> encryption type, Amazon ECR uses server-side encryption with Amazon S3-managed encryption keys which encrypts the images in the repository using an AES-256 encryption algorithm. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html\">Protecting Data Using Server-Side Encryption with Amazon S3-Managed Encryption Keys (SSE-S3)</a> in the <i>Amazon Simple Storage Service Console Developer Guide.</i>.</p>"
        },
        "kmsKey": {
          "shape": "KmsKey",
          "documentation": "<p>If you use the <code>KMS</code> encryption type, specify the CMK to use for encryption. The alias, key ID, or full ARN of the CMK can be specified. The key must exist in the same Region as the repository. If no key is specified, the default AWS managed CMK for Amazon ECR will be used.</p>"
        }
      },
      "documentation": "<p>The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest.</p> <p>By default, when no encryption configuration is set or the <code>AES256</code> encryption type is used, Amazon ECR uses server-side encryption with Amazon S3-managed encryption keys which encrypts your data at rest using an AES-256 encryption algorithm. This does not require any action on your part.</p> <p>For more control over the encryption of the contents of your repository, you can use server-side encryption with customer master keys (CMKs) stored in AWS Key Management Service (AWS KMS) to encrypt your images. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/encryption-at-rest.html\">Amazon ECR encryption at rest</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"
    },
    "EncryptionType": {
      "type": "string",
      "enum": [
        "AES256",
        "KMS"
      ]
    },
    "EvaluationTimestamp": {
      "type": "timestamp"
    },
    "ExpirationTimestamp": {
      "type": "timestamp"
    },
    "FindingDescription": {
      "type": "string"
    },
    "FindingName": {
      "type": "string"
    },
    "FindingSeverity": {
      "type": "string",
      "enum": [
        "INFORMATIONAL",
        "LOW",
        "MEDIUM",
        "HIGH",
        "CRITICAL",
        "UNDEFINED"
      ]
    },
    "FindingSeverityCounts": {
      "type": "map",
      "key": {
        "shape": "FindingSeverity"
      },
      "value": {
        "shape": "SeverityCount"
      }
    },
    "ForceFlag": {
      "type": "boolean"
    },
    "GetAuthorizationTokenRegistryIdList": {
      "type": "list",
      "member": {
        "shape": "RegistryId"
      },
      "max": 10,
      "min": 1
    },
    "GetAuthorizationTokenRequest": {
      "type": "structure",
      "members": {
        "registryIds": {
          "shape": "GetAuthorizationTokenRegistryIdList",
          "documentation": "<p>A list of AWS account IDs that are associated with the registries for which to get AuthorizationData objects. If you do not specify a registry, the default registry is assumed.</p>"
        }
      }
    },
    "GetAuthorizationTokenResponse": {
      "type": "structure",
      "members": {
        "authorizationData": {
          "shape": "AuthorizationDataList",
          "documentation": "<p>A list of authorization token data objects that correspond to the <code>registryIds</code> values in the request.</p>"
        }
      }
    },
    "GetDownloadUrlForLayerRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "layerDigest"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the image layer to download. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that is associated with the image layer to download.</p>"
        },
        "layerDigest": {
          "shape": "LayerDigest",
          "documentation": "<p>The digest of the image layer to download.</p>"
        }
      }
    },
    "GetDownloadUrlForLayerResponse": {
      "type": "structure",
      "members": {
        "downloadUrl": {
          "shape": "Url",
          "documentation": "<p>The pre-signed Amazon S3 download URL for the requested layer.</p>"
        },
        "layerDigest": {
          "shape": "LayerDigest",
          "documentation": "<p>The digest of the image layer to download.</p>"
        }
      }
    },
    "GetLifecyclePolicyPreviewRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository.</p>"
        },
        "imageIds": {
          "shape": "ImageIdentifierList",
          "documentation": "<p>The list of imageIDs to be included.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated&#x2028; <code>GetLifecyclePolicyPreviewRequest</code> request where <code>maxResults</code> was used and the&#x2028; results exceeded the value of that parameter. Pagination continues from the end of the&#x2028; previous results that returned the <code>nextToken</code> value. This value is&#x2028; <code>null</code> when there are no more results to return. This option cannot be used when you specify images with <code>imageIds</code>.</p>"
        },
        "maxResults": {
          "shape": "LifecyclePreviewMaxResults",
          "documentation": "<p>The maximum number of repository results returned by <code>GetLifecyclePolicyPreviewRequest</code> in&#x2028; paginated output. When this parameter is used, <code>GetLifecyclePolicyPreviewRequest</code> only returns&#x2028; <code>maxResults</code> results in a single page along with a <code>nextToken</code>&#x2028; response element. The remaining results of the initial request can be seen by sending&#x2028; another <code>GetLifecyclePolicyPreviewRequest</code> request with the returned <code>nextToken</code>&#x2028; value. This value can be between 1 and 1000. If this&#x2028; parameter is not used, then <code>GetLifecyclePolicyPreviewRequest</code> returns up to&#x2028; 100 results and a <code>nextToken</code> value, if&#x2028; applicable. This option cannot be used when you specify images with <code>imageIds</code>.</p>"
        },
        "filter": {
          "shape": "LifecyclePolicyPreviewFilter",
          "documentation": "<p>An optional parameter that filters results based on image tag status and all tags, if tagged.</p>"
        }
      }
    },
    "GetLifecyclePolicyPreviewResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "lifecyclePolicyText": {
          "shape": "LifecyclePolicyText",
          "documentation": "<p>The JSON lifecycle policy text.</p>"
        },
        "status": {
          "shape": "LifecyclePolicyPreviewStatus",
          "documentation": "<p>The status of the lifecycle policy preview request.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>GetLifecyclePolicyPreview</code> request. When the results of a <code>GetLifecyclePolicyPreview</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        },
        "previewResults": {
          "shape": "LifecyclePolicyPreviewResultList",
          "documentation": "<p>The results of the lifecycle policy preview request.</p>"
        },
        "summary": {
          "shape": "LifecyclePolicyPreviewSummary",
          "documentation": "<p>The list of images that is returned as a result of the action.</p>"
        }
      }
    },
    "GetLifecyclePolicyRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository.</p>"
        }
      }
    },
    "GetLifecyclePolicyResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "lifecyclePolicyText": {
          "shape": "LifecyclePolicyText",
          "documentation": "<p>The JSON lifecycle policy text.</p>"
        },
        "lastEvaluatedAt": {
          "shape": "EvaluationTimestamp",
          "documentation": "<p>The time stamp of the last time that the lifecycle policy was run.</p>"
        }
      }
    },
    "GetRepositoryPolicyRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository with the policy to retrieve.</p>"
        }
      }
    },
    "GetRepositoryPolicyResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "policyText": {
          "shape": "RepositoryPolicyText",
          "documentation": "<p>The JSON repository policy text associated with the repository.</p>"
        }
      }
    },
    "Image": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry containing the image.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository associated with the image.</p>"
        },
        "imageId": {
          "shape": "ImageIdentifier",
          "documentation": "<p>An object containing the image tag and image digest associated with an image.</p>"
        },
        "imageManifest": {
          "shape": "ImageManifest",
          "documentation": "<p>The image manifest associated with the image.</p>"
        },
        "imageManifestMediaType": {
          "shape": "MediaType",
          "documentation": "<p>The manifest media type of the image.</p>"
        }
      },
      "documentation": "<p>An object representing an Amazon ECR image.</p>"
    },
    "ImageActionType": {
      "type": "string",
      "enum": [
        "EXPIRE"
      ]
    },
    "ImageCount": {
      "type": "integer",
      "min": 0
    },
    "ImageDetail": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry to which this image belongs.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to which this image belongs.</p>"
        },
        "imageDigest": {
          "shape": "ImageDigest",
          "documentation": "<p>The <code>sha256</code> digest of the image manifest.</p>"
        },
        "imageTags": {
          "shape": "ImageTagList",
          "documentation": "<p>The list of tags associated with this image.</p>"
        },
        "imageSizeInBytes": {
          "shape": "ImageSizeInBytes",
          "documentation": "<p>The size, in bytes, of the image in the repository.</p> <p>If the image is a manifest list, this will be the max size of all manifests in the list.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>"
        },
        "imagePushedAt": {
          "shape": "PushTimestamp",
          "documentation": "<p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository. </p>"
        },
        "imageScanStatus": {
          "shape": "ImageScanStatus",
          "documentation": "<p>The current state of the scan.</p>"
        },
        "imageScanFindingsSummary": {
          "shape": "ImageScanFindingsSummary",
          "documentation": "<p>A summary of the last completed image scan.</p>"
        },
        "imageManifestMediaType": {
          "shape": "MediaType",
          "documentation": "<p>The media type of the image manifest.</p>"
        },
        "artifactMediaType": {
          "shape": "MediaType",
          "documentation": "<p>The artifact media type of the image.</p>"
        }
      },
      "documentation": "<p>An object that describes an image returned by a <a>DescribeImages</a> operation.</p>"
    },
    "ImageDetailList": {
      "type": "list",
      "member": {
        "shape": "ImageDetail"
      }
    },
    "ImageDigest": {
      "type": "string"
    },
    "ImageFailure": {
      "type": "structure",
      "members": {
        "imageId": {
          "shape": "ImageIdentifier",
          "documentation": "<p>The image ID associated with the failure.</p>"
        },
        "failureCode": {
          "shape": "ImageFailureCode",
          "documentation": "<p>The code associated with the failure.</p>"
        },
        "failureReason": {
          "shape": "ImageFailureReason",
          "documentation": "<p>The reason for the failure.</p>"
        }
      },
      "documentation": "<p>An object representing an Amazon ECR image failure.</p>"
    },
    "ImageFailureCode": {
      "type": "string",
      "enum": [
        "InvalidImageDigest",
        "InvalidImageTag",
        "ImageTagDoesNotMatchDigest",
        "ImageNotFound",
        "MissingDigestAndTag",
        "ImageReferencedByManifestList",
        "KmsError"
      ]
    },
    "ImageFailureList": {
      "type": "list",
      "member": {
        "shape": "ImageFailure"
      }
    },
    "ImageFailureReason": {
      "type": "string"
    },
    "ImageIdentifier": {
      "type": "structure",
      "members": {
        "imageDigest": {
          "shape": "ImageDigest",
          "documentation": "<p>The <code>sha256</code> digest of the image manifest.</p>"
        },
        "imageTag": {
          "shape": "ImageTag",
          "documentation": "<p>The tag used for the image.</p>"
        }
      },
      "documentation": "<p>An object with identifying information for an Amazon ECR image.</p>"
    },
    "ImageIdentifierList": {
      "type": "list",
      "member": {
        "shape": "ImageIdentifier"
      },
      "max": 100,
      "min": 1
    },
    "ImageList": {
      "type": "list",
      "member": {
        "shape": "Image"
      }
    },
    "ImageManifest": {
      "type": "string",
      "max": 4194304,
      "min": 1
    },
    "ImageScanFinding": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "FindingName",
          "documentation": "<p>The name associated with the finding, usually a CVE number.</p>"
        },
        "description": {
          "shape": "FindingDescription",
          "documentation": "<p>The description of the finding.</p>"
        },
        "uri": {
          "shape": "Url",
          "documentation": "<p>A link containing additional details about the security vulnerability.</p>"
        },
        "severity": {
          "shape": "FindingSeverity",
          "documentation": "<p>The finding severity.</p>"
        },
        "attributes": {
          "shape": "AttributeList",
          "documentation": "<p>A collection of attributes of the host from which the finding is generated.</p>"
        }
      },
      "documentation": "<p>Contains information about an image scan finding.</p>"
    },
    "ImageScanFindingList": {
      "type": "list",
      "member": {
        "shape": "ImageScanFinding"
      }
    },
    "ImageScanFindings": {
      "type": "structure",
      "members": {
        "imageScanCompletedAt": {
          "shape": "ScanTimestamp",
          "documentation": "<p>The time of the last completed image scan.</p>"
        },
        "vulnerabilitySourceUpdatedAt": {
          "shape": "VulnerabilitySourceUpdateTimestamp",
          "documentation": "<p>The time when the vulnerability data was last scanned.</p>"
        },
        "findings": {
          "shape": "ImageScanFindingList",
          "documentation": "<p>The findings from the image scan.</p>"
        },
        "findingSeverityCounts": {
          "shape": "FindingSeverityCounts",
          "documentation": "<p>The image vulnerability counts, sorted by severity.</p>"
        }
      },
      "documentation": "<p>The details of an image scan.</p>"
    },
    "ImageScanFindingsSummary": {
      "type": "structure",
      "members": {
        "imageScanCompletedAt": {
          "shape": "ScanTimestamp",
          "documentation": "<p>The time of the last completed image scan.</p>"
        },
        "vulnerabilitySourceUpdatedAt": {
          "shape": "VulnerabilitySourceUpdateTimestamp",
          "documentation": "<p>The time when the vulnerability data was last scanned.</p>"
        },
        "findingSeverityCounts": {
          "shape": "FindingSeverityCounts",
          "documentation": "<p>The image vulnerability counts, sorted by severity.</p>"
        }
      },
      "documentation": "<p>A summary of the last completed image scan.</p>"
    },
    "ImageScanStatus": {
      "type": "structure",
      "members": {
        "status": {
          "shape": "ScanStatus",
          "documentation": "<p>The current state of an image scan.</p>"
        },
        "description": {
          "shape": "ScanStatusDescription",
          "documentation": "<p>The description of the image scan status.</p>"
        }
      },
      "documentation": "<p>The current status of an image scan.</p>"
    },
    "ImageScanningConfiguration": {
      "type": "structure",
      "members": {
        "scanOnPush": {
          "shape": "ScanOnPushFlag",
          "documentation": "<p>The setting that determines whether images are scanned after being pushed to a repository. If set to <code>true</code>, images will be scanned after being pushed. If this parameter is not specified, it will default to <code>false</code> and images will not be scanned unless a scan is manually started with the <a>StartImageScan</a> API.</p>"
        }
      },
      "documentation": "<p>The image scanning configuration for a repository.</p>"
    },
    "ImageSizeInBytes": {
      "type": "long"
    },
    "ImageTag": {
      "type": "string",
      "max": 300,
      "min": 1
    },
    "ImageTagList": {
      "type": "list",
      "member": {
        "shape": "ImageTag"
      }
    },
    "ImageTagMutability": {
      "type": "string",
      "enum": [
        "MUTABLE",
        "IMMUTABLE"
      ]
    },
    "InitiateLayerUploadRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry to which you intend to upload layers. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to which you intend to upload layers.</p>"
        }
      }
    },
    "InitiateLayerUploadResponse": {
      "type": "structure",
      "members": {
        "uploadId": {
          "shape": "UploadId",
          "documentation": "<p>The upload ID for the layer upload. This parameter is passed to further <a>UploadLayerPart</a> and <a>CompleteLayerUpload</a> operations.</p>"
        },
        "partSize": {
          "shape": "PartSize",
          "documentation": "<p>The size, in bytes, that Amazon ECR expects future layer part uploads to be.</p>"
        }
      }
    },
    "KmsKey": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "Layer": {
      "type": "structure",
      "members": {
        "layerDigest": {
          "shape": "LayerDigest",
          "documentation": "<p>The <code>sha256</code> digest of the image layer.</p>"
        },
        "layerAvailability": {
          "shape": "LayerAvailability",
          "documentation": "<p>The availability status of the image layer.</p>"
        },
        "layerSize": {
          "shape": "LayerSizeInBytes",
          "documentation": "<p>The size, in bytes, of the image layer.</p>"
        },
        "mediaType": {
          "shape": "MediaType",
          "documentation": "<p>The media type of the layer, such as <code>application/vnd.docker.image.rootfs.diff.tar.gzip</code> or <code>application/vnd.oci.image.layer.v1.tar+gzip</code>.</p>"
        }
      },
      "documentation": "<p>An object representing an Amazon ECR image layer.</p>"
    },
    "LayerAvailability": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "UNAVAILABLE"
      ]
    },
    "LayerDigest": {
      "type": "string",
      "pattern": "[a-zA-Z0-9-_+.]+:[a-fA-F0-9]+"
    },
    "LayerDigestList": {
      "type": "list",
      "member": {
        "shape": "LayerDigest"
      },
      "max": 100,
      "min": 1
    },
    "LayerFailure": {
      "type": "structure",
      "members": {
        "layerDigest": {
          "shape": "BatchedOperationLayerDigest",
          "documentation": "<p>The layer digest associated with the failure.</p>"
        },
        "failureCode": {
          "shape": "LayerFailureCode",
          "documentation": "<p>The failure code associated with the failure.</p>"
        },
        "failureReason": {
          "shape": "LayerFailureReason",
          "documentation": "<p>The reason for the failure.</p>"
        }
      },
      "documentation": "<p>An object representing an Amazon ECR image layer failure.</p>"
    },
    "LayerFailureCode": {
      "type": "string",
      "enum": [
        "InvalidLayerDigest",
        "MissingLayerDigest"
      ]
    },
    "LayerFailureList": {
      "type": "list",
      "member": {
        "shape": "LayerFailure"
      }
    },
    "LayerFailureReason": {
      "type": "string"
    },
    "LayerList": {
      "type": "list",
      "member": {
        "shape": "Layer"
      }
    },
    "LayerPartBlob": {
      "type": "blob",
      "max": 20971520,
      "min": 0
    },
    "LayerSizeInBytes": {
      "type": "long"
    },
    "LifecyclePolicyPreviewFilter": {
      "type": "structure",
      "members": {
        "tagStatus": {
          "shape": "TagStatus",
          "documentation": "<p>The tag status of the image.</p>"
        }
      },
      "documentation": "<p>The filter for the lifecycle policy preview.</p>"
    },
    "LifecyclePolicyPreviewResult": {
      "type": "structure",
      "members": {
        "imageTags": {
          "shape": "ImageTagList",
          "documentation": "<p>The list of tags associated with this image.</p>"
        },
        "imageDigest": {
          "shape": "ImageDigest",
          "documentation": "<p>The <code>sha256</code> digest of the image manifest.</p>"
        },
        "imagePushedAt": {
          "shape": "PushTimestamp",
          "documentation": "<p>The date and time, expressed in standard JavaScript date format, at which the current image was pushed to the repository.</p>"
        },
        "action": {
          "shape": "LifecyclePolicyRuleAction",
          "documentation": "<p>The type of action to be taken.</p>"
        },
        "appliedRulePriority": {
          "shape": "LifecyclePolicyRulePriority",
          "documentation": "<p>The priority of the applied rule.</p>"
        }
      },
      "documentation": "<p>The result of the lifecycle policy preview.</p>"
    },
    "LifecyclePolicyPreviewResultList": {
      "type": "list",
      "member": {
        "shape": "LifecyclePolicyPreviewResult"
      }
    },
    "LifecyclePolicyPreviewStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "COMPLETE",
        "EXPIRED",
        "FAILED"
      ]
    },
    "LifecyclePolicyPreviewSummary": {
      "type": "structure",
      "members": {
        "expiringImageTotalCount": {
          "shape": "ImageCount",
          "documentation": "<p>The number of expiring images.</p>"
        }
      },
      "documentation": "<p>The summary of the lifecycle policy preview request.</p>"
    },
    "LifecyclePolicyRuleAction": {
      "type": "structure",
      "members": {
        "type": {
          "shape": "ImageActionType",
          "documentation": "<p>The type of action to be taken.</p>"
        }
      },
      "documentation": "<p>The type of action to be taken.</p>"
    },
    "LifecyclePolicyRulePriority": {
      "type": "integer",
      "min": 1
    },
    "LifecyclePolicyText": {
      "type": "string",
      "max": 30720,
      "min": 100
    },
    "LifecyclePreviewMaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "ListImagesFilter": {
      "type": "structure",
      "members": {
        "tagStatus": {
          "shape": "TagStatus",
          "documentation": "<p>The tag status with which to filter your <a>ListImages</a> results. You can filter results based on whether they are <code>TAGGED</code> or <code>UNTAGGED</code>.</p>"
        }
      },
      "documentation": "<p>An object representing a filter on a <a>ListImages</a> operation.</p>"
    },
    "ListImagesRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository in which to list images. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository with image IDs to be listed.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListImages</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. This value is <code>null</code> when there are no more results to return.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of image results returned by <code>ListImages</code> in paginated output. When this parameter is used, <code>ListImages</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListImages</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 1000. If this parameter is not used, then <code>ListImages</code> returns up to 100 results and a <code>nextToken</code> value, if applicable.</p>"
        },
        "filter": {
          "shape": "ListImagesFilter",
          "documentation": "<p>The filter key and value with which to filter your <code>ListImages</code> results.</p>"
        }
      }
    },
    "ListImagesResponse": {
      "type": "structure",
      "members": {
        "imageIds": {
          "shape": "ImageIdentifierList",
          "documentation": "<p>The list of image IDs for the requested repository.</p>"
        },
        "nextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListImages</code> request. When the results of a <code>ListImages</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the only supported resource is an Amazon ECR repository.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the resource.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "MediaType": {
      "type": "string"
    },
    "MediaTypeList": {
      "type": "list",
      "member": {
        "shape": "MediaType"
      },
      "max": 100,
      "min": 1
    },
    "NextToken": {
      "type": "string"
    },
    "PartSize": {
      "type": "long",
      "min": 0
    },
    "ProxyEndpoint": {
      "type": "string"
    },
    "PushTimestamp": {
      "type": "timestamp"
    },
    "PutImageRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "imageManifest"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository in which to put the image. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository in which to put the image.</p>"
        },
        "imageManifest": {
          "shape": "ImageManifest",
          "documentation": "<p>The image manifest corresponding to the image to be uploaded.</p>"
        },
        "imageManifestMediaType": {
          "shape": "MediaType",
          "documentation": "<p>The media type of the image manifest. If you push an image manifest that does not contain the <code>mediaType</code> field, you must specify the <code>imageManifestMediaType</code> in the request.</p>"
        },
        "imageTag": {
          "shape": "ImageTag",
          "documentation": "<p>The tag to associate with the image. This parameter is required for images that use the Docker Image Manifest V2 Schema 2 or Open Container Initiative (OCI) formats.</p>"
        },
        "imageDigest": {
          "shape": "ImageDigest",
          "documentation": "<p>The image digest of the image manifest corresponding to the image.</p>"
        }
      }
    },
    "PutImageResponse": {
      "type": "structure",
      "members": {
        "image": {
          "shape": "Image",
          "documentation": "<p>Details of the image uploaded.</p>"
        }
      }
    },
    "PutImageScanningConfigurationRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "imageScanningConfiguration"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository in which to update the image scanning configuration setting. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository in which to update the image scanning configuration setting.</p>"
        },
        "imageScanningConfiguration": {
          "shape": "ImageScanningConfiguration",
          "documentation": "<p>The image scanning configuration for the repository. This setting determines whether images are scanned for known vulnerabilities after being pushed to the repository.</p>"
        }
      }
    },
    "PutImageScanningConfigurationResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "imageScanningConfiguration": {
          "shape": "ImageScanningConfiguration",
          "documentation": "<p>The image scanning configuration setting for the repository.</p>"
        }
      }
    },
    "PutImageTagMutabilityRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "imageTagMutability"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository in which to update the image tag mutability settings. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository in which to update the image tag mutability settings.</p>"
        },
        "imageTagMutability": {
          "shape": "ImageTagMutability",
          "documentation": "<p>The tag mutability setting for the repository. If <code>MUTABLE</code> is specified, image tags can be overwritten. If <code>IMMUTABLE</code> is specified, all image tags within the repository will be immutable which will prevent them from being overwritten.</p>"
        }
      }
    },
    "PutImageTagMutabilityResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "imageTagMutability": {
          "shape": "ImageTagMutability",
          "documentation": "<p>The image tag mutability setting for the repository.</p>"
        }
      }
    },
    "PutLifecyclePolicyRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "lifecyclePolicyText"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository. If you do&#x2028; not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to receive the policy.</p>"
        },
        "lifecyclePolicyText": {
          "shape": "LifecyclePolicyText",
          "documentation": "<p>The JSON repository policy text to apply to the repository.</p>"
        }
      }
    },
    "PutLifecyclePolicyResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "lifecyclePolicyText": {
          "shape": "LifecyclePolicyText",
          "documentation": "<p>The JSON repository policy text.</p>"
        }
      }
    },
    "RegistryId": {
      "type": "string",
      "pattern": "[0-9]{12}"
    },
    "Repository": {
      "type": "structure",
      "members": {
        "repositoryArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the repository. The ARN contains the <code>arn:aws:ecr</code> namespace, followed by the region of the repository, AWS account ID of the repository owner, repository namespace, and repository name. For example, <code>arn:aws:ecr:region:012345678910:repository/test</code>.</p>"
        },
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository.</p>"
        },
        "repositoryUri": {
          "shape": "Url",
          "documentation": "<p>The URI for the repository. You can use this URI for container image <code>push</code> and <code>pull</code> operations.</p>"
        },
        "createdAt": {
          "shape": "CreationTimestamp",
          "documentation": "<p>The date and time, in JavaScript date format, when the repository was created.</p>"
        },
        "imageTagMutability": {
          "shape": "ImageTagMutability",
          "documentation": "<p>The tag mutability setting for the repository.</p>"
        },
        "imageScanningConfiguration": {
          "shape": "ImageScanningConfiguration"
        },
        "encryptionConfiguration": {
          "shape": "EncryptionConfiguration",
          "documentation": "<p>The encryption configuration for the repository. This determines how the contents of your repository are encrypted at rest.</p>"
        }
      },
      "documentation": "<p>An object representing a repository.</p>"
    },
    "RepositoryList": {
      "type": "list",
      "member": {
        "shape": "Repository"
      }
    },
    "RepositoryName": {
      "type": "string",
      "max": 256,
      "min": 2,
      "pattern": "(?:[a-z0-9]+(?:[._-][a-z0-9]+)*/)*[a-z0-9]+(?:[._-][a-z0-9]+)*"
    },
    "RepositoryNameList": {
      "type": "list",
      "member": {
        "shape": "RepositoryName"
      },
      "max": 100,
      "min": 1
    },
    "RepositoryPolicyText": {
      "type": "string",
      "max": 10240,
      "min": 0
    },
    "ScanOnPushFlag": {
      "type": "boolean"
    },
    "ScanStatus": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "COMPLETE",
        "FAILED"
      ]
    },
    "ScanStatusDescription": {
      "type": "string"
    },
    "ScanTimestamp": {
      "type": "timestamp"
    },
    "SetRepositoryPolicyRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "policyText"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to receive the policy.</p>"
        },
        "policyText": {
          "shape": "RepositoryPolicyText",
          "documentation": "<p>The JSON repository policy text to apply to the repository. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policy-examples.html\">Amazon ECR Repository Policies</a> in the <i>Amazon Elastic Container Registry User Guide</i>.</p>"
        },
        "force": {
          "shape": "ForceFlag",
          "documentation": "<p>If the policy you are attempting to set on a repository policy would prevent you from setting another policy in the future, you must force the <a>SetRepositoryPolicy</a> operation. This is intended to prevent accidental repository lock outs.</p>"
        }
      }
    },
    "SetRepositoryPolicyResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "policyText": {
          "shape": "RepositoryPolicyText",
          "documentation": "<p>The JSON repository policy text applied to the repository.</p>"
        }
      }
    },
    "SeverityCount": {
      "type": "integer",
      "min": 0
    },
    "StartImageScanRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "imageId"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository in which to start an image scan request. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository that contains the images to scan.</p>"
        },
        "imageId": {
          "shape": "ImageIdentifier"
        }
      }
    },
    "StartImageScanResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "imageId": {
          "shape": "ImageIdentifier"
        },
        "imageScanStatus": {
          "shape": "ImageScanStatus",
          "documentation": "<p>The current state of the scan.</p>"
        }
      }
    },
    "StartLifecyclePolicyPreviewRequest": {
      "type": "structure",
      "required": [
        "repositoryName"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to be evaluated.</p>"
        },
        "lifecyclePolicyText": {
          "shape": "LifecyclePolicyText",
          "documentation": "<p>The policy to be evaluated against. If you do not specify a policy, the current policy for the repository is used.</p>"
        }
      }
    },
    "StartLifecyclePolicyPreviewResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "lifecyclePolicyText": {
          "shape": "LifecyclePolicyText",
          "documentation": "<p>The JSON repository policy text.</p>"
        },
        "status": {
          "shape": "LifecyclePolicyPreviewStatus",
          "documentation": "<p>The status of the lifecycle policy preview request.</p>"
        }
      }
    },
    "Tag": {
      "type": "structure",
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>One part of a key-value pair that make up a tag. A <code>key</code> is a general label that acts like a category for more specific tag values.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The optional part of a key-value pair that make up a tag. A <code>value</code> acts as a descriptor within a tag category (key).</p>"
        }
      },
      "documentation": "<p>The metadata that you apply to a resource to help you categorize and organize them. Each tag consists of a key and an optional value, both of which you define. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>"
    },
    "TagKey": {
      "type": "string"
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
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tags"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the the resource to which to add tags. Currently, the only supported resource is an Amazon ECR repository.</p>"
        },
        "tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "TagStatus": {
      "type": "string",
      "enum": [
        "TAGGED",
        "UNTAGGED",
        "ANY"
      ]
    },
    "TagValue": {
      "type": "string"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "resourceArn",
        "tagKeys"
      ],
      "members": {
        "resourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource from which to remove tags. Currently, the only supported resource is an Amazon ECR repository.</p>"
        },
        "tagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of the tags to be removed.</p>"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {}
    },
    "UploadId": {
      "type": "string",
      "pattern": "[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"
    },
    "UploadLayerPartRequest": {
      "type": "structure",
      "required": [
        "repositoryName",
        "uploadId",
        "partFirstByte",
        "partLastByte",
        "layerPartBlob"
      ],
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The AWS account ID associated with the registry to which you are uploading layer parts. If you do not specify a registry, the default registry is assumed.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the repository to which you are uploading layer parts.</p>"
        },
        "uploadId": {
          "shape": "UploadId",
          "documentation": "<p>The upload ID from a previous <a>InitiateLayerUpload</a> operation to associate with the layer part upload.</p>"
        },
        "partFirstByte": {
          "shape": "PartSize",
          "documentation": "<p>The position of the first byte of the layer part witin the overall image layer.</p>"
        },
        "partLastByte": {
          "shape": "PartSize",
          "documentation": "<p>The position of the last byte of the layer part within the overall image layer.</p>"
        },
        "layerPartBlob": {
          "shape": "LayerPartBlob",
          "documentation": "<p>The base64-encoded layer part payload.</p>"
        }
      }
    },
    "UploadLayerPartResponse": {
      "type": "structure",
      "members": {
        "registryId": {
          "shape": "RegistryId",
          "documentation": "<p>The registry ID associated with the request.</p>"
        },
        "repositoryName": {
          "shape": "RepositoryName",
          "documentation": "<p>The repository name associated with the request.</p>"
        },
        "uploadId": {
          "shape": "UploadId",
          "documentation": "<p>The upload ID associated with the request.</p>"
        },
        "lastByteReceived": {
          "shape": "PartSize",
          "documentation": "<p>The integer value of the last byte received in the request.</p>"
        }
      }
    },
    "Url": {
      "type": "string"
    },
    "VulnerabilitySourceUpdateTimestamp": {
      "type": "timestamp"
    }
  },
  "documentation": "<fullname>Amazon Elastic Container Registry</fullname> <p>Amazon Elastic Container Registry (Amazon ECR) is a managed container image registry service. Customers can use the familiar Docker CLI, or their preferred client, to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry for your Docker or Open Container Initiative (OCI) images. Amazon ECR supports private repositories with resource-based permissions using IAM so that specific users or Amazon EC2 instances can access repositories and images.</p>"
}
]===]))
