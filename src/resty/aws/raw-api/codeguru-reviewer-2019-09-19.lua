local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2019-09-19",
    "endpointPrefix": "codeguru-reviewer",
    "jsonVersion": "1.1",
    "protocol": "rest-json",
    "serviceAbbreviation": "CodeGuruReviewer",
    "serviceFullName": "Amazon CodeGuru Reviewer",
    "serviceId": "CodeGuru Reviewer",
    "signatureVersion": "v4",
    "signingName": "codeguru-reviewer",
    "uid": "codeguru-reviewer-2019-09-19"
  },
  "operations": {
    "AssociateRepository": {
      "name": "AssociateRepository",
      "http": {
        "method": "POST",
        "requestUri": "/associations"
      },
      "input": {
        "shape": "AssociateRepositoryRequest"
      },
      "output": {
        "shape": "AssociateRepositoryResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Use to associate an AWS CodeCommit repository or a repostory managed by AWS CodeStar Connections with Amazon CodeGuru Reviewer. When you associate a repository, CodeGuru Reviewer reviews source code changes in the repository's pull requests and provides automatic recommendations. You can view recommendations using the CodeGuru Reviewer console. For more information, see <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/recommendations.html\">Recommendations in Amazon CodeGuru Reviewer</a> in the <i>Amazon CodeGuru Reviewer User Guide.</i> </p> <p>If you associate a CodeCommit repository, it must be in the same AWS Region and AWS account where its CodeGuru Reviewer code reviews are configured.</p> <p>Bitbucket and GitHub Enterprise Server repositories are managed by AWS CodeStar Connections to connect to CodeGuru Reviewer. For more information, see <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/reviewer-ug/step-one.html#select-repository-source-provider\">Connect to a repository source provider</a> in the <i>Amazon CodeGuru Reviewer User Guide.</i> </p> <note> <p> You cannot use the CodeGuru Reviewer SDK or the AWS CLI to associate a GitHub repository with Amazon CodeGuru Reviewer. To associate a GitHub repository, use the console. For more information, see <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/getting-started-with-guru.html\">Getting started with CodeGuru Reviewer</a> in the <i>CodeGuru Reviewer User Guide.</i> </p> </note>"
    },
    "CreateCodeReview": {
      "name": "CreateCodeReview",
      "http": {
        "method": "POST",
        "requestUri": "/codereviews"
      },
      "input": {
        "shape": "CreateCodeReviewRequest"
      },
      "output": {
        "shape": "CreateCodeReviewResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Use to create a code review for a repository analysis. </p>"
    },
    "DescribeCodeReview": {
      "name": "DescribeCodeReview",
      "http": {
        "method": "GET",
        "requestUri": "/codereviews/{CodeReviewArn}"
      },
      "input": {
        "shape": "DescribeCodeReviewRequest"
      },
      "output": {
        "shape": "DescribeCodeReviewResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Returns the metadata associated with the code review along with its status.</p>"
    },
    "DescribeRecommendationFeedback": {
      "name": "DescribeRecommendationFeedback",
      "http": {
        "method": "GET",
        "requestUri": "/feedback/{CodeReviewArn}"
      },
      "input": {
        "shape": "DescribeRecommendationFeedbackRequest"
      },
      "output": {
        "shape": "DescribeRecommendationFeedbackResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Describes the customer feedback for a CodeGuru Reviewer recommendation. </p>"
    },
    "DescribeRepositoryAssociation": {
      "name": "DescribeRepositoryAssociation",
      "http": {
        "method": "GET",
        "requestUri": "/associations/{AssociationArn}"
      },
      "input": {
        "shape": "DescribeRepositoryAssociationRequest"
      },
      "output": {
        "shape": "DescribeRepositoryAssociationResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Returns a <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\"> <code>RepositoryAssociation</code> </a> object that contains information about the requested repository association. </p>"
    },
    "DisassociateRepository": {
      "name": "DisassociateRepository",
      "http": {
        "method": "DELETE",
        "requestUri": "/associations/{AssociationArn}"
      },
      "input": {
        "shape": "DisassociateRepositoryRequest"
      },
      "output": {
        "shape": "DisassociateRepositoryResponse"
      },
      "errors": [
        {
          "shape": "NotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p>Removes the association between Amazon CodeGuru Reviewer and a repository.</p>"
    },
    "ListCodeReviews": {
      "name": "ListCodeReviews",
      "http": {
        "method": "GET",
        "requestUri": "/codereviews"
      },
      "input": {
        "shape": "ListCodeReviewsRequest"
      },
      "output": {
        "shape": "ListCodeReviewsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p> Lists all the code reviews that the customer has created in the past 90 days. </p>"
    },
    "ListRecommendationFeedback": {
      "name": "ListRecommendationFeedback",
      "http": {
        "method": "GET",
        "requestUri": "/feedback/{CodeReviewArn}/RecommendationFeedback"
      },
      "input": {
        "shape": "ListRecommendationFeedbackRequest"
      },
      "output": {
        "shape": "ListRecommendationFeedbackResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RecommendationFeedbackSummary.html\"> <code>RecommendationFeedbackSummary</code> </a> objects that contain customer recommendation feedback for all CodeGuru Reviewer users. </p>"
    },
    "ListRecommendations": {
      "name": "ListRecommendations",
      "http": {
        "method": "GET",
        "requestUri": "/codereviews/{CodeReviewArn}/Recommendations"
      },
      "input": {
        "shape": "ListRecommendationsRequest"
      },
      "output": {
        "shape": "ListRecommendationsResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Returns the list of all recommendations for a completed code review. </p>"
    },
    "ListRepositoryAssociations": {
      "name": "ListRepositoryAssociations",
      "http": {
        "method": "GET",
        "requestUri": "/associations"
      },
      "input": {
        "shape": "ListRepositoryAssociationsRequest"
      },
      "output": {
        "shape": "ListRepositoryAssociationsResponse"
      },
      "errors": [
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Returns a list of <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html\"> <code>RepositoryAssociationSummary</code> </a> objects that contain summary information about a repository association. You can filter the returned list by <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType\"> <code>ProviderType</code> </a>, <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name\"> <code>Name</code> </a>, <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State\"> <code>State</code> </a>, and <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner\"> <code>Owner</code> </a>. </p>"
    },
    "PutRecommendationFeedback": {
      "name": "PutRecommendationFeedback",
      "http": {
        "method": "PUT",
        "requestUri": "/feedback"
      },
      "input": {
        "shape": "PutRecommendationFeedbackRequest"
      },
      "output": {
        "shape": "PutRecommendationFeedbackResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalServerException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        }
      ],
      "documentation": "<p> Stores customer feedback for a CodeGuru Reviewer recommendation. When this API is called again with different reactions the previous feedback is overwritten. </p>"
    }
  },
  "shapes": {
    "Arn": {
      "type": "string",
      "max": 1600,
      "min": 1,
      "pattern": "^arn:aws[^:\\s]*:codeguru-reviewer:[^:\\s]+:[\\d]{12}:[a-z-]+:[\\w-]+$"
    },
    "AssociateRepositoryRequest": {
      "type": "structure",
      "required": [
        "Repository"
      ],
      "members": {
        "Repository": {
          "shape": "Repository",
          "documentation": "<p>The repository to associate.</p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate repository associations if there are failures and retries. </p>",
          "idempotencyToken": true
        }
      }
    },
    "AssociateRepositoryResponse": {
      "type": "structure",
      "members": {
        "RepositoryAssociation": {
          "shape": "RepositoryAssociation",
          "documentation": "<p>Information about the repository association.</p>"
        }
      }
    },
    "AssociationId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "BranchName": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ClientRequestToken": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[\\w-]+$"
    },
    "CodeCommitRepository": {
      "type": "structure",
      "required": [
        "Name"
      ],
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the AWS CodeCommit repository. For more information, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/APIReference/API_GetRepository.html#CodeCommit-GetRepository-request-repositoryName\">repositoryName</a> in the <i>AWS CodeCommit API Reference</i>.</p>"
        }
      },
      "documentation": "<p>Information about an AWS CodeCommit repository. The CodeCommit repository must be in the same AWS Region and AWS account where its CodeGuru Reviewer code reviews are configured. </p>"
    },
    "CodeReview": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p> The name of the code review. </p>"
        },
        "CodeReviewArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\"> <code>CodeReview</code> </a> object. </p>"
        },
        "RepositoryName": {
          "shape": "Name",
          "documentation": "<p> The name of the repository. </p>"
        },
        "Owner": {
          "shape": "Owner",
          "documentation": "<p>The owner of the repository. For an AWS CodeCommit repository, this is the AWS account ID of the account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.</p>"
        },
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p> The type of repository that contains the reviewed code (for example, GitHub or Bitbucket). </p>"
        },
        "State": {
          "shape": "JobState",
          "documentation": "<p>The valid code review states are:</p> <ul> <li> <p> <code>Completed</code>: The code review is complete. </p> </li> <li> <p> <code>Pending</code>: The code review started and has not completed or failed. </p> </li> <li> <p> <code>Failed</code>: The code review failed. </p> </li> <li> <p> <code>Deleting</code>: The code review is being deleted. </p> </li> </ul>"
        },
        "StateReason": {
          "shape": "StateReason",
          "documentation": "<p> The reason for the state of the code review. </p>"
        },
        "CreatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p> The time, in milliseconds since the epoch, when the code review was created. </p>"
        },
        "LastUpdatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p> The time, in milliseconds since the epoch, when the code review was last updated. </p>"
        },
        "Type": {
          "shape": "Type",
          "documentation": "<p> The type of code review. </p>"
        },
        "PullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p> The pull request ID for the code review. </p>"
        },
        "SourceCodeType": {
          "shape": "SourceCodeType",
          "documentation": "<p> The type of the source code for the code review. </p>"
        },
        "Metrics": {
          "shape": "Metrics",
          "documentation": "<p> The statistics from the code review. </p>"
        }
      },
      "documentation": "<p> Information about a code review. </p>"
    },
    "CodeReviewName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "[a-zA-Z0-9-_]*"
    },
    "CodeReviewSummaries": {
      "type": "list",
      "member": {
        "shape": "CodeReviewSummary"
      }
    },
    "CodeReviewSummary": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p> The name of the code review. </p>"
        },
        "CodeReviewArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\"> <code>CodeReview</code> </a> object. </p>"
        },
        "RepositoryName": {
          "shape": "Name",
          "documentation": "<p> The name of the repository. </p>"
        },
        "Owner": {
          "shape": "Owner",
          "documentation": "<p>The owner of the repository. For an AWS CodeCommit repository, this is the AWS account ID of the account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.</p>"
        },
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p> The provider type of the repository association. </p>"
        },
        "State": {
          "shape": "JobState",
          "documentation": "<p> The state of the code review. </p> <p>The valid code review states are:</p> <ul> <li> <p> <code>Completed</code>: The code review is complete. </p> </li> <li> <p> <code>Pending</code>: The code review started and has not completed or failed. </p> </li> <li> <p> <code>Failed</code>: The code review failed. </p> </li> <li> <p> <code>Deleting</code>: The code review is being deleted. </p> </li> </ul>"
        },
        "CreatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p> The time, in milliseconds since the epoch, when the code review was created. </p>"
        },
        "LastUpdatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p> The time, in milliseconds since the epoch, when the code review was last updated. </p>"
        },
        "Type": {
          "shape": "Type",
          "documentation": "<p> The type of the code review. </p>"
        },
        "PullRequestId": {
          "shape": "PullRequestId",
          "documentation": "<p> The pull request ID for the code review. </p>"
        },
        "MetricsSummary": {
          "shape": "MetricsSummary",
          "documentation": "<p> The statistics from the code review. </p>"
        }
      },
      "documentation": "<p> Information about the summary of the code review. </p>"
    },
    "CodeReviewType": {
      "type": "structure",
      "required": [
        "RepositoryAnalysis"
      ],
      "members": {
        "RepositoryAnalysis": {
          "shape": "RepositoryAnalysis",
          "documentation": "<p> A code review that analyzes all code under a specified branch in an associated respository. The assocated repository is specified using its ARN in <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview\"> <code>CreateCodeReview</code> </a> </p>"
        }
      },
      "documentation": "<p> The type of a code review. There are two code review types: </p> <ul> <li> <p> <code>PullRequest</code> - A code review that is automatically triggered by a pull request on an assocaited repository. Because this type of code review is automatically generated, you cannot specify this code review type using <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview\"> <code>CreateCodeReview</code> </a>. </p> </li> <li> <p> <code>RepositoryAnalysis</code> - A code review that analyzes all code under a specified branch in an associated respository. The assocated repository is specified using its ARN in <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview\"> <code>CreateCodeReview</code> </a>. </p> </li> </ul>"
    },
    "CommitDiffSourceCodeType": {
      "type": "structure",
      "members": {
        "SourceCommit": {
          "shape": "CommitId",
          "documentation": "<p> The SHA of the source commit used to generate a commit diff. </p>"
        },
        "DestinationCommit": {
          "shape": "CommitId",
          "documentation": "<p> The SHA of the destination commit used to generate a commit diff. </p>"
        }
      },
      "documentation": "<p> A type of <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\"> <code>SourceCodeType</code> </a> that specifies the commit diff for a pull request on an associated repository. </p>"
    },
    "CommitId": {
      "type": "string",
      "max": 64,
      "min": 6
    },
    "ConnectionArn": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "arn:aws(-[\\w]+)*:.+:.+:[0-9]{12}:.+"
    },
    "CreateCodeReviewRequest": {
      "type": "structure",
      "required": [
        "Name",
        "RepositoryAssociationArn",
        "Type"
      ],
      "members": {
        "Name": {
          "shape": "CodeReviewName",
          "documentation": "<p> The name of the code review. Each code review of the same code review type must have a unique name in your AWS account. </p>"
        },
        "RepositoryAssociationArn": {
          "shape": "Arn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\"> <code>RepositoryAssociation</code> </a> object. You can retrieve this ARN by calling <code>ListRepositories</code>. </p> <p> A code review can only be created on an associated repository. This is the ARN of the associated repository. </p>"
        },
        "Type": {
          "shape": "CodeReviewType",
          "documentation": "<p> The type of code review to create. This is specified using a <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html\"> <code>CodeReviewType</code> </a> object. </p>"
        },
        "ClientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p> Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate code reviews if there are failures and retries. </p>",
          "idempotencyToken": true
        }
      }
    },
    "CreateCodeReviewResponse": {
      "type": "structure",
      "members": {
        "CodeReview": {
          "shape": "CodeReview"
        }
      }
    },
    "DescribeCodeReviewRequest": {
      "type": "structure",
      "required": [
        "CodeReviewArn"
      ],
      "members": {
        "CodeReviewArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\"> <code>CodeReview</code> </a> object. </p>",
          "location": "uri",
          "locationName": "CodeReviewArn"
        }
      }
    },
    "DescribeCodeReviewResponse": {
      "type": "structure",
      "members": {
        "CodeReview": {
          "shape": "CodeReview",
          "documentation": "<p> Information about the code review. </p>"
        }
      }
    },
    "DescribeRecommendationFeedbackRequest": {
      "type": "structure",
      "required": [
        "CodeReviewArn",
        "RecommendationId"
      ],
      "members": {
        "CodeReviewArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\"> <code>CodeReview</code> </a> object. </p>",
          "location": "uri",
          "locationName": "CodeReviewArn"
        },
        "RecommendationId": {
          "shape": "RecommendationId",
          "documentation": "<p> The recommendation ID that can be used to track the provided recommendations and then to collect the feedback. </p>",
          "location": "querystring",
          "locationName": "RecommendationId"
        },
        "UserId": {
          "shape": "UserId",
          "documentation": "<p> Optional parameter to describe the feedback for a given user. If this is not supplied, it defaults to the user making the request. </p> <p> The <code>UserId</code> is an IAM principal that can be specified as an AWS account ID or an Amazon Resource Name (ARN). For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying\"> Specifying a Principal</a> in the <i>AWS Identity and Access Management User Guide</i>. </p>",
          "location": "querystring",
          "locationName": "UserId"
        }
      }
    },
    "DescribeRecommendationFeedbackResponse": {
      "type": "structure",
      "members": {
        "RecommendationFeedback": {
          "shape": "RecommendationFeedback",
          "documentation": "<p> The recommendation feedback given by the user. </p>"
        }
      }
    },
    "DescribeRepositoryAssociationRequest": {
      "type": "structure",
      "required": [
        "AssociationArn"
      ],
      "members": {
        "AssociationArn": {
          "shape": "Arn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\"> <code>RepositoryAssociation</code> </a> object. You can retrieve this ARN by calling <code>ListRepositories</code>. </p>",
          "location": "uri",
          "locationName": "AssociationArn"
        }
      }
    },
    "DescribeRepositoryAssociationResponse": {
      "type": "structure",
      "members": {
        "RepositoryAssociation": {
          "shape": "RepositoryAssociation",
          "documentation": "<p>Information about the repository association.</p>"
        }
      }
    },
    "DisassociateRepositoryRequest": {
      "type": "structure",
      "required": [
        "AssociationArn"
      ],
      "members": {
        "AssociationArn": {
          "shape": "Arn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\"> <code>RepositoryAssociation</code> </a> object. You can retrieve this ARN by calling <code>ListRepositories</code>. </p>",
          "location": "uri",
          "locationName": "AssociationArn"
        }
      }
    },
    "DisassociateRepositoryResponse": {
      "type": "structure",
      "members": {
        "RepositoryAssociation": {
          "shape": "RepositoryAssociation",
          "documentation": "<p>Information about the disassociated repository.</p>"
        }
      }
    },
    "FilePath": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "FindingsCount": {
      "type": "long"
    },
    "JobState": {
      "type": "string",
      "enum": [
        "Completed",
        "Pending",
        "Failed",
        "Deleting"
      ]
    },
    "JobStates": {
      "type": "list",
      "member": {
        "shape": "JobState"
      },
      "max": 3,
      "min": 1
    },
    "LineNumber": {
      "type": "integer"
    },
    "ListCodeReviewsMaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "ListCodeReviewsRequest": {
      "type": "structure",
      "required": [
        "Type"
      ],
      "members": {
        "ProviderTypes": {
          "shape": "ProviderTypes",
          "documentation": "<p> List of provider types for filtering that needs to be applied before displaying the result. For example, <code>providerTypes=[GitHub]</code> lists code reviews from GitHub. </p>",
          "location": "querystring",
          "locationName": "ProviderTypes"
        },
        "States": {
          "shape": "JobStates",
          "documentation": "<p> List of states for filtering that needs to be applied before displaying the result. For example, <code>states=[Pending]</code> lists code reviews in the Pending state. </p> <p>The valid code review states are:</p> <ul> <li> <p> <code>Completed</code>: The code review is complete. </p> </li> <li> <p> <code>Pending</code>: The code review started and has not completed or failed. </p> </li> <li> <p> <code>Failed</code>: The code review failed. </p> </li> <li> <p> <code>Deleting</code>: The code review is being deleted. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "States"
        },
        "RepositoryNames": {
          "shape": "RepositoryNames",
          "documentation": "<p> List of repository names for filtering that needs to be applied before displaying the result. </p>",
          "location": "querystring",
          "locationName": "RepositoryNames"
        },
        "Type": {
          "shape": "Type",
          "documentation": "<p> The type of code reviews to list in the response. </p>",
          "location": "querystring",
          "locationName": "Type"
        },
        "MaxResults": {
          "shape": "ListCodeReviewsMaxResults",
          "documentation": "<p> The maximum number of results that are returned per call. The default is 100. </p>",
          "location": "querystring",
          "locationName": "MaxResults"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>",
          "location": "querystring",
          "locationName": "NextToken"
        }
      }
    },
    "ListCodeReviewsResponse": {
      "type": "structure",
      "members": {
        "CodeReviewSummaries": {
          "shape": "CodeReviewSummaries",
          "documentation": "<p> A list of code reviews that meet the criteria of the request. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> Pagination token. </p>"
        }
      }
    },
    "ListRecommendationFeedbackRequest": {
      "type": "structure",
      "required": [
        "CodeReviewArn"
      ],
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> If <code>nextToken</code> is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p> The maximum number of results that are returned per call. The default is 100. </p>",
          "location": "querystring",
          "locationName": "MaxResults"
        },
        "CodeReviewArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\"> <code>CodeReview</code> </a> object. </p>",
          "location": "uri",
          "locationName": "CodeReviewArn"
        },
        "UserIds": {
          "shape": "UserIds",
          "documentation": "<p> An AWS user's account ID or Amazon Resource Name (ARN). Use this ID to query the recommendation feedback for a code review from that user. </p> <p> The <code>UserId</code> is an IAM principal that can be specified as an AWS account ID or an Amazon Resource Name (ARN). For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying\"> Specifying a Principal</a> in the <i>AWS Identity and Access Management User Guide</i>. </p>",
          "location": "querystring",
          "locationName": "UserIds"
        },
        "RecommendationIds": {
          "shape": "RecommendationIds",
          "documentation": "<p> Used to query the recommendation feedback for a given recommendation. </p>",
          "location": "querystring",
          "locationName": "RecommendationIds"
        }
      }
    },
    "ListRecommendationFeedbackResponse": {
      "type": "structure",
      "members": {
        "RecommendationFeedbackSummaries": {
          "shape": "RecommendationFeedbackSummaries",
          "documentation": "<p> Recommendation feedback summaries corresponding to the code review ARN. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>"
        }
      }
    },
    "ListRecommendationsRequest": {
      "type": "structure",
      "required": [
        "CodeReviewArn"
      ],
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> Pagination token. </p>",
          "location": "querystring",
          "locationName": "NextToken"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p> The maximum number of results that are returned per call. The default is 100. </p>",
          "location": "querystring",
          "locationName": "MaxResults"
        },
        "CodeReviewArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\"> <code>CodeReview</code> </a> object. </p>",
          "location": "uri",
          "locationName": "CodeReviewArn"
        }
      }
    },
    "ListRecommendationsResponse": {
      "type": "structure",
      "members": {
        "RecommendationSummaries": {
          "shape": "RecommendationSummaries",
          "documentation": "<p> List of recommendations for the requested code review. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p> Pagination token. </p>"
        }
      }
    },
    "ListRepositoryAssociationsRequest": {
      "type": "structure",
      "members": {
        "ProviderTypes": {
          "shape": "ProviderTypes",
          "documentation": "<p>List of provider types to use as a filter.</p>",
          "location": "querystring",
          "locationName": "ProviderType"
        },
        "States": {
          "shape": "RepositoryAssociationStates",
          "documentation": "<p>List of repository association states to use as a filter.</p> <p>The valid repository association states are:</p> <ul> <li> <p> <b>Associated</b>: The repository association is complete. </p> </li> <li> <p> <b>Associating</b>: CodeGuru Reviewer is: </p> <ul> <li> <p> Setting up pull request notifications. This is required for pull requests to trigger a CodeGuru Reviewer review. </p> <note> <p> If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, reviews of code in your repository cannot be triggered. </p> </note> </li> <li> <p> Setting up source code access. This is required for CodeGuru Reviewer to securely clone code in your repository. </p> </li> </ul> </li> <li> <p> <b>Failed</b>: The repository failed to associate or disassociate. </p> </li> <li> <p> <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and source code access. </p> </li> </ul>",
          "location": "querystring",
          "locationName": "State"
        },
        "Names": {
          "shape": "Names",
          "documentation": "<p>List of repository names to use as a filter.</p>",
          "location": "querystring",
          "locationName": "Name"
        },
        "Owners": {
          "shape": "Owners",
          "documentation": "<p>List of owners to use as a filter. For AWS CodeCommit, it is the name of the CodeCommit account that was used to associate the repository. For other repository source providers, such as Bitbucket and GitHub Enterprise Server, this is name of the account that was used to associate the repository. </p>",
          "location": "querystring",
          "locationName": "Owner"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of repository association results returned by <code>ListRepositoryAssociations</code> in paginated output. When this parameter is used, <code>ListRepositoryAssociations</code> only returns <code>maxResults</code> results in a single page with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListRepositoryAssociations</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, <code>ListRepositoryAssociations</code> returns up to 100 results and a <code>nextToken</code> value if applicable. </p>",
          "location": "querystring",
          "locationName": "MaxResults"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value returned from a previous paginated <code>ListRepositoryAssociations</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value. </p> <note> <p>Treat this token as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>",
          "location": "querystring",
          "locationName": "NextToken"
        }
      }
    },
    "ListRepositoryAssociationsResponse": {
      "type": "structure",
      "members": {
        "RepositoryAssociationSummaries": {
          "shape": "RepositoryAssociationSummaries",
          "documentation": "<p>A list of repository associations that meet the criteria of the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The <code>nextToken</code> value to include in a future <code>ListRecommendations</code> request. When the results of a <code>ListRecommendations</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return. </p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MeteredLinesOfCodeCount": {
      "type": "long"
    },
    "Metrics": {
      "type": "structure",
      "members": {
        "MeteredLinesOfCodeCount": {
          "shape": "MeteredLinesOfCodeCount",
          "documentation": "<p> Lines of code metered in the code review. For the initial code review pull request and all subsequent revisions, this includes all lines of code in the files added to the pull request. In subsequent revisions, for files that already existed in the pull request, this includes only the changed lines of code. In both cases, this does not include non-code lines such as comments and import statements. For example, if you submit a pull request containing 5 files, each with 500 lines of code, and in a subsequent revision you added a new file with 200 lines of code, and also modified a total of 25 lines across the initial 5 files, <code>MeteredLinesOfCodeCount</code> includes the first 5 files (5 * 500 = 2,500 lines), the new file (200 lines) and the 25 changed lines of code for a total of 2,725 lines of code. </p>"
        },
        "FindingsCount": {
          "shape": "FindingsCount",
          "documentation": "<p> Total number of recommendations found in the code review. </p>"
        }
      },
      "documentation": "<p> Information about the statistics from the code review. </p>"
    },
    "MetricsSummary": {
      "type": "structure",
      "members": {
        "MeteredLinesOfCodeCount": {
          "shape": "MeteredLinesOfCodeCount",
          "documentation": "<p> Lines of code metered in the code review. For the initial code review pull request and all subsequent revisions, this includes all lines of code in the files added to the pull request. In subsequent revisions, for files that already existed in the pull request, this includes only the changed lines of code. In both cases, this does not include non-code lines such as comments and import statements. For example, if you submit a pull request containing 5 files, each with 500 lines of code, and in a subsequent revision you added a new file with 200 lines of code, and also modified a total of 25 lines across the initial 5 files, <code>MeteredLinesOfCodeCount</code> includes the first 5 files (5 * 500 = 2,500 lines), the new file (200 lines) and the 25 changed lines of code for a total of 2,725 lines of code. </p>"
        },
        "FindingsCount": {
          "shape": "FindingsCount",
          "documentation": "<p> Total number of recommendations found in the code review. </p>"
        }
      },
      "documentation": "<p> Information about metrics summaries. </p>"
    },
    "Name": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^\\S[\\w.-]*$"
    },
    "Names": {
      "type": "list",
      "member": {
        "shape": "Name"
      },
      "max": 3,
      "min": 1
    },
    "NextToken": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "Owner": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^\\S(.*\\S)?$"
    },
    "Owners": {
      "type": "list",
      "member": {
        "shape": "Owner"
      },
      "max": 3,
      "min": 1
    },
    "ProviderType": {
      "type": "string",
      "enum": [
        "CodeCommit",
        "GitHub",
        "Bitbucket",
        "GitHubEnterpriseServer"
      ]
    },
    "ProviderTypes": {
      "type": "list",
      "member": {
        "shape": "ProviderType"
      },
      "max": 3,
      "min": 1
    },
    "PullRequestId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "PutRecommendationFeedbackRequest": {
      "type": "structure",
      "required": [
        "CodeReviewArn",
        "RecommendationId",
        "Reactions"
      ],
      "members": {
        "CodeReviewArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\"> <code>CodeReview</code> </a> object. </p>"
        },
        "RecommendationId": {
          "shape": "RecommendationId",
          "documentation": "<p> The recommendation ID that can be used to track the provided recommendations and then to collect the feedback. </p>"
        },
        "Reactions": {
          "shape": "Reactions",
          "documentation": "<p> List for storing reactions. Reactions are utf-8 text code for emojis. If you send an empty list it clears all your feedback. </p>"
        }
      }
    },
    "PutRecommendationFeedbackResponse": {
      "type": "structure",
      "members": {}
    },
    "Reaction": {
      "type": "string",
      "enum": [
        "ThumbsUp",
        "ThumbsDown"
      ]
    },
    "Reactions": {
      "type": "list",
      "member": {
        "shape": "Reaction"
      },
      "max": 1,
      "min": 0
    },
    "RecommendationFeedback": {
      "type": "structure",
      "members": {
        "CodeReviewArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\"> <code>CodeReview</code> </a> object. </p>"
        },
        "RecommendationId": {
          "shape": "RecommendationId",
          "documentation": "<p> The recommendation ID that can be used to track the provided recommendations. Later on it can be used to collect the feedback. </p>"
        },
        "Reactions": {
          "shape": "Reactions",
          "documentation": "<p> List for storing reactions. Reactions are utf-8 text code for emojis. You can send an empty list to clear off all your feedback. </p>"
        },
        "UserId": {
          "shape": "UserId",
          "documentation": "<p> The ID of the user that made the API call. </p> <p> The <code>UserId</code> is an IAM principal that can be specified as an AWS account ID or an Amazon Resource Name (ARN). For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying\"> Specifying a Principal</a> in the <i>AWS Identity and Access Management User Guide</i>. </p>"
        },
        "CreatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p> The time at which the feedback was created. </p>"
        },
        "LastUpdatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p> The time at which the feedback was last updated. </p>"
        }
      },
      "documentation": "<p> Information about the recommendation feedback. </p>"
    },
    "RecommendationFeedbackSummaries": {
      "type": "list",
      "member": {
        "shape": "RecommendationFeedbackSummary"
      }
    },
    "RecommendationFeedbackSummary": {
      "type": "structure",
      "members": {
        "RecommendationId": {
          "shape": "RecommendationId",
          "documentation": "<p> The recommendation ID that can be used to track the provided recommendations. Later on it can be used to collect the feedback. </p>"
        },
        "Reactions": {
          "shape": "Reactions",
          "documentation": "<p> List for storing reactions. Reactions are utf-8 text code for emojis. </p>"
        },
        "UserId": {
          "shape": "UserId",
          "documentation": "<p> The ID of the user that gave the feedback. </p> <p> The <code>UserId</code> is an IAM principal that can be specified as an AWS account ID or an Amazon Resource Name (ARN). For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying\"> Specifying a Principal</a> in the <i>AWS Identity and Access Management User Guide</i>. </p>"
        }
      },
      "documentation": "<p> Information about recommendation feedback summaries. </p>"
    },
    "RecommendationId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "RecommendationIds": {
      "type": "list",
      "member": {
        "shape": "RecommendationId"
      },
      "max": 100,
      "min": 1
    },
    "RecommendationSummaries": {
      "type": "list",
      "member": {
        "shape": "RecommendationSummary"
      }
    },
    "RecommendationSummary": {
      "type": "structure",
      "members": {
        "FilePath": {
          "shape": "FilePath",
          "documentation": "<p>Name of the file on which a recommendation is provided.</p>"
        },
        "RecommendationId": {
          "shape": "RecommendationId",
          "documentation": "<p> The recommendation ID that can be used to track the provided recommendations. Later on it can be used to collect the feedback. </p>"
        },
        "StartLine": {
          "shape": "LineNumber",
          "documentation": "<p> Start line from where the recommendation is applicable in the source commit or source branch. </p>"
        },
        "EndLine": {
          "shape": "LineNumber",
          "documentation": "<p> Last line where the recommendation is applicable in the source commit or source branch. For a single line comment the start line and end line values are the same. </p>"
        },
        "Description": {
          "shape": "Text",
          "documentation": "<p> A description of the recommendation generated by CodeGuru Reviewer for the lines of code between the start line and the end line. </p>"
        }
      },
      "documentation": "<p> Information about recommendations. </p>"
    },
    "Repository": {
      "type": "structure",
      "members": {
        "CodeCommit": {
          "shape": "CodeCommitRepository",
          "documentation": "<p>Information about an AWS CodeCommit repository.</p>"
        },
        "Bitbucket": {
          "shape": "ThirdPartySourceRepository",
          "documentation": "<p> Information about a Bitbucket repository. </p>"
        },
        "GitHubEnterpriseServer": {
          "shape": "ThirdPartySourceRepository",
          "documentation": "<p> Information about a GitHub Enterprise Server repository. </p>"
        }
      },
      "documentation": "<p> Information about an associated AWS CodeCommit repository or an associated repository that is managed by AWS CodeStar Connections (for example, Bitbucket). This <code>Repository</code> object is not used if your source code is in an associated GitHub repository. </p>"
    },
    "RepositoryAnalysis": {
      "type": "structure",
      "required": [
        "RepositoryHead"
      ],
      "members": {
        "RepositoryHead": {
          "shape": "RepositoryHeadSourceCodeType",
          "documentation": "<p> A <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\"> <code>SourceCodeType</code> </a> that specifies the tip of a branch in an associated repository. </p>"
        }
      },
      "documentation": "<p> A code review type that analyzes all code under a specified branch in an associated respository. The assocated repository is specified using its ARN when you call <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview\"> <code>CreateCodeReview</code> </a>. </p>"
    },
    "RepositoryAssociation": {
      "type": "structure",
      "members": {
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p>The ID of the repository association.</p>"
        },
        "AssociationArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) identifying the repository association.</p>"
        },
        "ConnectionArn": {
          "shape": "ConnectionArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection. Its format is <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see <a href=\"https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html\"> <code>Connection</code> </a> in the <i>AWS CodeStar Connections API Reference</i>. </p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the repository.</p>"
        },
        "Owner": {
          "shape": "Owner",
          "documentation": "<p>The owner of the repository. For an AWS CodeCommit repository, this is the AWS account ID of the account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.</p>"
        },
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p>The provider type of the repository association.</p>"
        },
        "State": {
          "shape": "RepositoryAssociationState",
          "documentation": "<p>The state of the repository association.</p> <p>The valid repository association states are:</p> <ul> <li> <p> <b>Associated</b>: The repository association is complete. </p> </li> <li> <p> <b>Associating</b>: CodeGuru Reviewer is: </p> <ul> <li> <p> Setting up pull request notifications. This is required for pull requests to trigger a CodeGuru Reviewer review. </p> <note> <p> If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, reviews of code in your repository cannot be triggered. </p> </note> </li> <li> <p> Setting up source code access. This is required for CodeGuru Reviewer to securely clone code in your repository. </p> </li> </ul> </li> <li> <p> <b>Failed</b>: The repository failed to associate or disassociate. </p> </li> <li> <p> <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and source code access. </p> </li> </ul>"
        },
        "StateReason": {
          "shape": "StateReason",
          "documentation": "<p>A description of why the repository association is in the current state.</p>"
        },
        "LastUpdatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p>The time, in milliseconds since the epoch, when the repository association was last updated.</p>"
        },
        "CreatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p>The time, in milliseconds since the epoch, when the repository association was created.</p>"
        }
      },
      "documentation": "<p>Information about a repository association. The <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_DescribeRepositoryAssociation.html\"> <code>DescribeRepositoryAssociation</code> </a> operation returns a <code>RepositoryAssociation</code> object.</p>"
    },
    "RepositoryAssociationState": {
      "type": "string",
      "enum": [
        "Associated",
        "Associating",
        "Failed",
        "Disassociating"
      ]
    },
    "RepositoryAssociationStates": {
      "type": "list",
      "member": {
        "shape": "RepositoryAssociationState"
      },
      "max": 3,
      "min": 1
    },
    "RepositoryAssociationSummaries": {
      "type": "list",
      "member": {
        "shape": "RepositoryAssociationSummary"
      }
    },
    "RepositoryAssociationSummary": {
      "type": "structure",
      "members": {
        "AssociationArn": {
          "shape": "Arn",
          "documentation": "<p> The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\"> <code>RepositoryAssociation</code> </a> object. You can retrieve this ARN by calling <code>ListRepositories</code>. </p>"
        },
        "ConnectionArn": {
          "shape": "ConnectionArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection. Its format is <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see <a href=\"https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html\"> <code>Connection</code> </a> in the <i>AWS CodeStar Connections API Reference</i>. </p>"
        },
        "LastUpdatedTimeStamp": {
          "shape": "TimeStamp",
          "documentation": "<p>The time, in milliseconds since the epoch, since the repository association was last updated. </p>"
        },
        "AssociationId": {
          "shape": "AssociationId",
          "documentation": "<p> The repository association ID. </p>"
        },
        "Name": {
          "shape": "Name",
          "documentation": "<p>The name of the repository association.</p>"
        },
        "Owner": {
          "shape": "Owner",
          "documentation": "<p>The owner of the repository. For an AWS CodeCommit repository, this is the AWS account ID of the account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.</p>"
        },
        "ProviderType": {
          "shape": "ProviderType",
          "documentation": "<p>The provider type of the repository association.</p>"
        },
        "State": {
          "shape": "RepositoryAssociationState",
          "documentation": "<p>The state of the repository association.</p> <p>The valid repository association states are:</p> <ul> <li> <p> <b>Associated</b>: The repository association is complete. </p> </li> <li> <p> <b>Associating</b>: CodeGuru Reviewer is: </p> <ul> <li> <p> Setting up pull request notifications. This is required for pull requests to trigger a CodeGuru Reviewer review. </p> <note> <p> If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, reviews of code in your repository cannot be triggered. </p> </note> </li> <li> <p> Setting up source code access. This is required for CodeGuru Reviewer to securely clone code in your repository. </p> </li> </ul> </li> <li> <p> <b>Failed</b>: The repository failed to associate or disassociate. </p> </li> <li> <p> <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and source code access. </p> </li> </ul>"
        }
      },
      "documentation": "<p>Summary information about a repository association. The <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\"> <code>ListRepositoryAssociations</code> </a> operation returns a list of <code>RepositoryAssociationSummary</code> objects.</p>"
    },
    "RepositoryHeadSourceCodeType": {
      "type": "structure",
      "required": [
        "BranchName"
      ],
      "members": {
        "BranchName": {
          "shape": "BranchName",
          "documentation": "<p> The name of the branch in an associated repository. The <code>RepositoryHeadSourceCodeType</code> specifies the tip of this branch. </p>"
        }
      },
      "documentation": "<p> A <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\"> <code>SourceCodeType</code> </a> that specifies the tip of a branch in an associated repository. </p>"
    },
    "RepositoryNames": {
      "type": "list",
      "member": {
        "shape": "Name"
      },
      "max": 100,
      "min": 1
    },
    "SourceCodeType": {
      "type": "structure",
      "members": {
        "CommitDiff": {
          "shape": "CommitDiffSourceCodeType",
          "documentation": "<p> A <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\"> <code>SourceCodeType</code> </a> that specifies a commit diff created by a pull request on an associated repository. </p>"
        },
        "RepositoryHead": {
          "shape": "RepositoryHeadSourceCodeType"
        }
      },
      "documentation": "<p> Specifies the source code that is analyzed in a code review. A code review can analyze the source code that is specified using a pull request diff or a branch in an associated repository. </p>"
    },
    "StateReason": {
      "type": "string",
      "max": 256,
      "min": 0
    },
    "Text": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "ThirdPartySourceRepository": {
      "type": "structure",
      "required": [
        "Name",
        "ConnectionArn",
        "Owner"
      ],
      "members": {
        "Name": {
          "shape": "Name",
          "documentation": "<p> The name of the third party source repository. </p>"
        },
        "ConnectionArn": {
          "shape": "ConnectionArn",
          "documentation": "<p> The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection. Its format is <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see <a href=\"https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html\"> <code>Connection</code> </a> in the <i>AWS CodeStar Connections API Reference</i>. </p>"
        },
        "Owner": {
          "shape": "Owner",
          "documentation": "<p> The owner of the repository. For a GitHub, GitHub Enterprise, or Bitbucket repository, this is the username for the account that owns the repository. </p>"
        }
      },
      "documentation": "<p> Information about a third-party source repository connected to CodeGuru Reviewer. </p>"
    },
    "TimeStamp": {
      "type": "timestamp"
    },
    "Type": {
      "type": "string",
      "enum": [
        "PullRequest",
        "RepositoryAnalysis"
      ]
    },
    "UserId": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "UserIds": {
      "type": "list",
      "member": {
        "shape": "UserId"
      },
      "max": 100,
      "min": 1
    }
  },
  "documentation": "<p>This section provides documentation for the Amazon CodeGuru Reviewer API operations. CodeGuru Reviewer is a service that uses program analysis and machine learning to detect potential defects that are difficult for developers to find and recommends fixes in your Java code.</p> <p>By proactively detecting and providing recommendations for addressing code defects and implementing best practices, CodeGuru Reviewer improves the overall quality and maintainability of your code base during the code review stage. For more information about CodeGuru Reviewer, see the <i> <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html\">Amazon CodeGuru Reviewer User Guide</a>.</i> </p>"
}
]===]))