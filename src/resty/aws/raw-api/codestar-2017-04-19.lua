local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2017-04-19",
    "endpointPrefix": "codestar",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "CodeStar",
    "serviceFullName": "AWS CodeStar",
    "serviceId": "CodeStar",
    "signatureVersion": "v4",
    "targetPrefix": "CodeStar_20170419",
    "uid": "codestar-2017-04-19"
  },
  "operations": {
    "AssociateTeamMember": {
      "name": "AssociateTeamMember",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateTeamMemberRequest"
      },
      "output": {
        "shape": "AssociateTeamMemberResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "TeamMemberAlreadyAssociatedException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidServiceRoleException"
        },
        {
          "shape": "ProjectConfigurationException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Adds an IAM user to the team for an AWS CodeStar project.</p>"
    },
    "CreateProject": {
      "name": "CreateProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateProjectRequest"
      },
      "output": {
        "shape": "CreateProjectResult"
      },
      "errors": [
        {
          "shape": "ProjectAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "ProjectCreationFailedException"
        },
        {
          "shape": "InvalidServiceRoleException"
        },
        {
          "shape": "ProjectConfigurationException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Creates a project, including project resources. This action creates a project based on a submitted project request. A set of source code files and a toolchain template file can be included with the project request. If these are not provided, an empty project is created.</p>"
    },
    "CreateUserProfile": {
      "name": "CreateUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateUserProfileRequest"
      },
      "output": {
        "shape": "CreateUserProfileResult"
      },
      "errors": [
        {
          "shape": "UserProfileAlreadyExistsException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar.</p>"
    },
    "DeleteProject": {
      "name": "DeleteProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteProjectRequest"
      },
      "output": {
        "shape": "DeleteProjectResult"
      },
      "errors": [
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidServiceRoleException"
        }
      ],
      "documentation": "<p>Deletes a project, including project resources. Does not delete users associated with the project, but does delete the IAM roles that allowed access to the project.</p>"
    },
    "DeleteUserProfile": {
      "name": "DeleteUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUserProfileRequest"
      },
      "output": {
        "shape": "DeleteUserProfileResult"
      },
      "errors": [
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Deletes a user profile in AWS CodeStar, including all personal preference data associated with that profile, such as display name and email address. It does not delete the history of that user, for example the history of commits made by that user.</p>"
    },
    "DescribeProject": {
      "name": "DescribeProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeProjectRequest"
      },
      "output": {
        "shape": "DescribeProjectResult"
      },
      "errors": [
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidServiceRoleException"
        },
        {
          "shape": "ProjectConfigurationException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Describes a project and its resources.</p>"
    },
    "DescribeUserProfile": {
      "name": "DescribeUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeUserProfileRequest"
      },
      "output": {
        "shape": "DescribeUserProfileResult"
      },
      "errors": [
        {
          "shape": "UserProfileNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Describes a user in AWS CodeStar and the user attributes across all projects.</p>"
    },
    "DisassociateTeamMember": {
      "name": "DisassociateTeamMember",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateTeamMemberRequest"
      },
      "output": {
        "shape": "DisassociateTeamMemberResult"
      },
      "errors": [
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidServiceRoleException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Removes a user from a project. Removing a user from a project also removes the IAM policies from that user that allowed access to the project and its resources. Disassociating a team member does not remove that user's profile from AWS CodeStar. It does not remove the user from IAM.</p>"
    },
    "ListProjects": {
      "name": "ListProjects",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListProjectsRequest"
      },
      "output": {
        "shape": "ListProjectsResult"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Lists all projects in AWS CodeStar associated with your AWS account.</p>"
    },
    "ListResources": {
      "name": "ListResources",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListResourcesRequest"
      },
      "output": {
        "shape": "ListResourcesResult"
      },
      "errors": [
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Lists resources associated with a project in AWS CodeStar.</p>"
    },
    "ListTagsForProject": {
      "name": "ListTagsForProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTagsForProjectRequest"
      },
      "output": {
        "shape": "ListTagsForProjectResult"
      },
      "errors": [
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidNextTokenException"
        }
      ],
      "documentation": "<p>Gets the tags for a project.</p>"
    },
    "ListTeamMembers": {
      "name": "ListTeamMembers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTeamMembersRequest"
      },
      "output": {
        "shape": "ListTeamMembersResult"
      },
      "errors": [
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Lists all team members associated with a project.</p>"
    },
    "ListUserProfiles": {
      "name": "ListUserProfiles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListUserProfilesRequest"
      },
      "output": {
        "shape": "ListUserProfilesResult"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Lists all the user profiles configured for your AWS account in AWS CodeStar.</p>"
    },
    "TagProject": {
      "name": "TagProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagProjectRequest"
      },
      "output": {
        "shape": "TagProjectResult"
      },
      "errors": [
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Adds tags to a project.</p>"
    },
    "UntagProject": {
      "name": "UntagProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagProjectRequest"
      },
      "output": {
        "shape": "UntagProjectResult"
      },
      "errors": [
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ConcurrentModificationException"
        }
      ],
      "documentation": "<p>Removes tags from a project.</p>"
    },
    "UpdateProject": {
      "name": "UpdateProject",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateProjectRequest"
      },
      "output": {
        "shape": "UpdateProjectResult"
      },
      "errors": [
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Updates a project in AWS CodeStar.</p>"
    },
    "UpdateTeamMember": {
      "name": "UpdateTeamMember",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateTeamMemberRequest"
      },
      "output": {
        "shape": "UpdateTeamMemberResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ProjectNotFoundException"
        },
        {
          "shape": "ValidationException"
        },
        {
          "shape": "InvalidServiceRoleException"
        },
        {
          "shape": "ProjectConfigurationException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "TeamMemberNotFoundException"
        }
      ],
      "documentation": "<p>Updates a team member's attributes in an AWS CodeStar project. For example, you can change a team member's role in the project, or change whether they have remote access to project resources.</p>"
    },
    "UpdateUserProfile": {
      "name": "UpdateUserProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateUserProfileRequest"
      },
      "output": {
        "shape": "UpdateUserProfileResult"
      },
      "errors": [
        {
          "shape": "UserProfileNotFoundException"
        },
        {
          "shape": "ValidationException"
        }
      ],
      "documentation": "<p>Updates a user's profile in AWS CodeStar. The user profile is not project-specific. Information in the user profile is displayed wherever the user's information appears to other users in AWS CodeStar. </p>"
    }
  },
  "shapes": {
    "AssociateTeamMemberRequest": {
      "type": "structure",
      "required": [
        "projectId",
        "userArn",
        "projectRole"
      ],
      "members": {
        "projectId": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project to which you will add the IAM user.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A user- or system-generated token that identifies the entity that requested the team member association to the project. This token can be used to repeat the request.</p>"
        },
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar project.</p>"
        },
        "projectRole": {
          "shape": "Role",
          "documentation": "<p>The AWS CodeStar project role that will apply to this user. This role determines what actions a user can take in an AWS CodeStar project.</p>"
        },
        "remoteAccessAllowed": {
          "shape": "RemoteAccessAllowed",
          "documentation": "<p>Whether the team member is allowed to use an SSH public/private key pair to remotely access project resources, for example Amazon EC2 instances.</p>",
          "box": true
        }
      }
    },
    "AssociateTeamMemberResult": {
      "type": "structure",
      "members": {
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>The user- or system-generated token from the initial request that can be used to repeat the request.</p>"
        }
      }
    },
    "BucketKey": {
      "type": "string"
    },
    "BucketName": {
      "type": "string",
      "max": 63,
      "min": 3
    },
    "ClientRequestToken": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[\\w:/-]+$"
    },
    "Code": {
      "type": "structure",
      "required": [
        "source",
        "destination"
      ],
      "members": {
        "source": {
          "shape": "CodeSource",
          "documentation": "<p>The location where the source code files provided with the project request are stored. AWS CodeStar retrieves the files during project creation.</p>"
        },
        "destination": {
          "shape": "CodeDestination",
          "documentation": "<p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the source code files provided with the project request are placed in the repository.</p>"
        }
      },
      "documentation": "<p>Location and destination information about the source code files provided with the project request. The source code is uploaded to the new project source repository after project creation.</p>"
    },
    "CodeCommitCodeDestination": {
      "type": "structure",
      "required": [
        "name"
      ],
      "members": {
        "name": {
          "shape": "RepositoryName",
          "documentation": "<p>The name of the AWS CodeCommit repository to be created in AWS CodeStar.</p>"
        }
      },
      "documentation": "<p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>"
    },
    "CodeDestination": {
      "type": "structure",
      "members": {
        "codeCommit": {
          "shape": "CodeCommitCodeDestination",
          "documentation": "<p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>"
        },
        "gitHub": {
          "shape": "GitHubCodeDestination",
          "documentation": "<p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>"
        }
      },
      "documentation": "<p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the source code files provided with the project request are placed in the repository.</p>"
    },
    "CodeSource": {
      "type": "structure",
      "required": [
        "s3"
      ],
      "members": {
        "s3": {
          "shape": "S3Location",
          "documentation": "<p>Information about the Amazon S3 location where the source code files provided with the project request are stored. </p>"
        }
      },
      "documentation": "<p>The location where the source code files provided with the project request are stored. AWS CodeStar retrieves the files during project creation.</p>"
    },
    "CreateProjectRequest": {
      "type": "structure",
      "required": [
        "name",
        "id"
      ],
      "members": {
        "name": {
          "shape": "ProjectName",
          "documentation": "<p>The display name for the project to be created in AWS CodeStar.</p>"
        },
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project to be created in AWS CodeStar.</p>"
        },
        "description": {
          "shape": "ProjectDescription",
          "documentation": "<p>The description of the project, if any.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A user- or system-generated token that identifies the entity that requested project creation. This token can be used to repeat the request.</p>"
        },
        "sourceCode": {
          "shape": "SourceCode",
          "documentation": "<p>A list of the Code objects submitted with the project request. If this parameter is specified, the request must also include the toolchain parameter.</p>"
        },
        "toolchain": {
          "shape": "Toolchain",
          "documentation": "<p>The name of the toolchain template file submitted with the project request. If this parameter is specified, the request must also include the sourceCode parameter.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags created for the project.</p>"
        }
      }
    },
    "CreateProjectResult": {
      "type": "structure",
      "required": [
        "id",
        "arn"
      ],
      "members": {
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project.</p>"
        },
        "arn": {
          "shape": "ProjectArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the created project.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A user- or system-generated token that identifies the entity that requested project creation.</p>"
        },
        "projectTemplateId": {
          "shape": "ProjectTemplateId",
          "documentation": "<p>Reserved for future use.</p>"
        }
      }
    },
    "CreateUserProfileRequest": {
      "type": "structure",
      "required": [
        "userArn",
        "displayName",
        "emailAddress"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user in IAM.</p>"
        },
        "displayName": {
          "shape": "UserProfileDisplayName",
          "documentation": "<p>The name that will be displayed as the friendly name for the user in AWS CodeStar. </p>"
        },
        "emailAddress": {
          "shape": "Email",
          "documentation": "<p>The email address that will be displayed as part of the user's profile in AWS CodeStar.</p>"
        },
        "sshPublicKey": {
          "shape": "SshPublicKey",
          "documentation": "<p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>"
        }
      }
    },
    "CreateUserProfileResult": {
      "type": "structure",
      "required": [
        "userArn"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user in IAM.</p>"
        },
        "displayName": {
          "shape": "UserProfileDisplayName",
          "documentation": "<p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>"
        },
        "emailAddress": {
          "shape": "Email",
          "documentation": "<p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>"
        },
        "sshPublicKey": {
          "shape": "SshPublicKey",
          "documentation": "<p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.</p>"
        },
        "createdTimestamp": {
          "shape": "CreatedTimestamp",
          "documentation": "<p>The date the user profile was created, in timestamp format.</p>"
        },
        "lastModifiedTimestamp": {
          "shape": "LastModifiedTimestamp",
          "documentation": "<p>The date the user profile was last modified, in timestamp format.</p>"
        }
      }
    },
    "CreatedTimestamp": {
      "type": "timestamp"
    },
    "DeleteProjectRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project to be deleted in AWS CodeStar.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A user- or system-generated token that identifies the entity that requested project deletion. This token can be used to repeat the request. </p>"
        },
        "deleteStack": {
          "shape": "DeleteStack",
          "documentation": "<p>Whether to send a delete request for the primary stack in AWS CloudFormation originally used to generate the project and its resources. This option will delete all AWS resources for the project (except for any buckets in Amazon S3) as well as deleting the project itself. Recommended for most use cases.</p>"
        }
      }
    },
    "DeleteProjectResult": {
      "type": "structure",
      "members": {
        "stackId": {
          "shape": "StackId",
          "documentation": "<p>The ID of the primary stack in AWS CloudFormation that will be deleted as part of deleting the project and its resources.</p>"
        },
        "projectArn": {
          "shape": "ProjectArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deleted project.</p>"
        }
      }
    },
    "DeleteStack": {
      "type": "boolean"
    },
    "DeleteUserProfileRequest": {
      "type": "structure",
      "required": [
        "userArn"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.</p>"
        }
      }
    },
    "DeleteUserProfileResult": {
      "type": "structure",
      "required": [
        "userArn"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user deleted from AWS CodeStar.</p>"
        }
      }
    },
    "DescribeProjectRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project.</p>"
        }
      }
    },
    "DescribeProjectResult": {
      "type": "structure",
      "members": {
        "name": {
          "shape": "ProjectName",
          "documentation": "<p>The display name for the project.</p>"
        },
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project.</p>"
        },
        "arn": {
          "shape": "ProjectArn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the project.</p>"
        },
        "description": {
          "shape": "ProjectDescription",
          "documentation": "<p>The description of the project, if any.</p>"
        },
        "clientRequestToken": {
          "shape": "ClientRequestToken",
          "documentation": "<p>A user- or system-generated token that identifies the entity that requested project creation. </p>"
        },
        "createdTimeStamp": {
          "shape": "CreatedTimestamp",
          "documentation": "<p>The date and time the project was created, in timestamp format.</p>"
        },
        "stackId": {
          "shape": "StackId",
          "documentation": "<p>The ID of the primary stack in AWS CloudFormation used to generate resources for the project.</p>"
        },
        "projectTemplateId": {
          "shape": "ProjectTemplateId",
          "documentation": "<p>The ID for the AWS CodeStar project template used to create the project.</p>"
        },
        "status": {
          "shape": "ProjectStatus",
          "documentation": "<p>The project creation or deletion status.</p>"
        }
      }
    },
    "DescribeUserProfileRequest": {
      "type": "structure",
      "required": [
        "userArn"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user.</p>"
        }
      }
    },
    "DescribeUserProfileResult": {
      "type": "structure",
      "required": [
        "userArn",
        "createdTimestamp",
        "lastModifiedTimestamp"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user.</p>"
        },
        "displayName": {
          "shape": "UserProfileDisplayName",
          "documentation": "<p>The display name shown for the user in AWS CodeStar projects. For example, this could be set to both first and last name (\"Mary Major\") or a single name (\"Mary\"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example \"Mary Jane Major\") would generate an initial icon using the first character and the first character after the space (\"MJ\", not \"MM\").</p>"
        },
        "emailAddress": {
          "shape": "Email",
          "documentation": "<p>The email address for the user. Optional.</p>"
        },
        "sshPublicKey": {
          "shape": "SshPublicKey",
          "documentation": "<p>The SSH public key associated with the user. This SSH public key is associated with the user profile, and can be used in conjunction with the associated private key for access to project resources, such as Amazon EC2 instances, if a project owner grants remote access to those resources.</p>"
        },
        "createdTimestamp": {
          "shape": "CreatedTimestamp",
          "documentation": "<p>The date and time when the user profile was created in AWS CodeStar, in timestamp format.</p>"
        },
        "lastModifiedTimestamp": {
          "shape": "LastModifiedTimestamp",
          "documentation": "<p>The date and time when the user profile was last modified, in timestamp format.</p>"
        }
      }
    },
    "DisassociateTeamMemberRequest": {
      "type": "structure",
      "required": [
        "projectId",
        "userArn"
      ],
      "members": {
        "projectId": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the AWS CodeStar project from which you want to remove a team member.</p>"
        },
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from the project.</p>"
        }
      }
    },
    "DisassociateTeamMemberResult": {
      "type": "structure",
      "members": {}
    },
    "Email": {
      "type": "string",
      "max": 128,
      "min": 3,
      "pattern": "^[\\w-.+]+@[\\w-.+]+$",
      "sensitive": true
    },
    "GitHubCodeDestination": {
      "type": "structure",
      "required": [
        "name",
        "type",
        "owner",
        "privateRepository",
        "issuesEnabled",
        "token"
      ],
      "members": {
        "name": {
          "shape": "RepositoryName",
          "documentation": "<p>Name of the GitHub repository to be created in AWS CodeStar.</p>"
        },
        "description": {
          "shape": "RepositoryDescription",
          "documentation": "<p>Description for the GitHub repository to be created in AWS CodeStar. This description displays in GitHub after the repository is created.</p>"
        },
        "type": {
          "shape": "RepositoryType",
          "documentation": "<p>The type of GitHub repository to be created in AWS CodeStar. Valid values are User or Organization.</p>"
        },
        "owner": {
          "shape": "RepositoryOwner",
          "documentation": "<p>The GitHub username for the owner of the GitHub repository to be created in AWS CodeStar. If this repository should be owned by a GitHub organization, provide its name.</p>"
        },
        "privateRepository": {
          "shape": "RepositoryIsPrivate",
          "documentation": "<p>Whether the GitHub repository is to be a private repository.</p>"
        },
        "issuesEnabled": {
          "shape": "RepositoryEnableIssues",
          "documentation": "<p>Whether to enable issues for the GitHub repository.</p>"
        },
        "token": {
          "shape": "GitHubPersonalToken",
          "documentation": "<p>The GitHub user's personal access token for the GitHub repository.</p>"
        }
      },
      "documentation": "<p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the project request will be uploaded after project creation.</p>"
    },
    "GitHubPersonalToken": {
      "type": "string",
      "min": 1,
      "sensitive": true
    },
    "LastModifiedTimestamp": {
      "type": "timestamp"
    },
    "ListProjectsRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The continuation token to be used to return the next set of results, if the results cannot be returned in one response.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum amount of data that can be contained in a single set of results.</p>",
          "box": true
        }
      }
    },
    "ListProjectsResult": {
      "type": "structure",
      "required": [
        "projects"
      ],
      "members": {
        "projects": {
          "shape": "ProjectsList",
          "documentation": "<p>A list of projects.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>"
        }
      }
    },
    "ListResourcesRequest": {
      "type": "structure",
      "required": [
        "projectId"
      ],
      "members": {
        "projectId": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum amount of data that can be contained in a single set of results.</p>",
          "box": true
        }
      }
    },
    "ListResourcesResult": {
      "type": "structure",
      "members": {
        "resources": {
          "shape": "ResourcesResult",
          "documentation": "<p>An array of resources associated with the project. </p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>"
        }
      }
    },
    "ListTagsForProjectRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project to get tags for.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>Reserved for future use.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>Reserved for future use.</p>",
          "box": true
        }
      }
    },
    "ListTagsForProjectResult": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags for the project.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>Reserved for future use.</p>"
        }
      }
    },
    "ListTeamMembersRequest": {
      "type": "structure",
      "required": [
        "projectId"
      ],
      "members": {
        "projectId": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project for which you want to list team members.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of team members you want returned in a response.</p>",
          "box": true
        }
      }
    },
    "ListTeamMembersResult": {
      "type": "structure",
      "required": [
        "teamMembers"
      ],
      "members": {
        "teamMembers": {
          "shape": "TeamMemberResult",
          "documentation": "<p>A list of team member objects for the project.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>"
        }
      }
    },
    "ListUserProfilesRequest": {
      "type": "structure",
      "members": {
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The continuation token for the next set of results, if the results cannot be returned in one response.</p>"
        },
        "maxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return in a response.</p>",
          "box": true
        }
      }
    },
    "ListUserProfilesResult": {
      "type": "structure",
      "required": [
        "userProfiles"
      ],
      "members": {
        "userProfiles": {
          "shape": "UserProfilesList",
          "documentation": "<p>All the user profiles configured in AWS CodeStar for an AWS account.</p>"
        },
        "nextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The continuation token to use when requesting the next set of results, if there are more results to be returned.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "PaginationToken": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "^[\\w/+=]+$"
    },
    "ProjectArn": {
      "type": "string",
      "pattern": "^arn:aws[^:\\s]*:codestar:[^:\\s]+:[0-9]{12}:project\\/[a-z]([a-z0-9|-])+$"
    },
    "ProjectDescription": {
      "type": "string",
      "max": 1024,
      "pattern": "^$|^\\S(.*\\S)?$",
      "sensitive": true
    },
    "ProjectId": {
      "type": "string",
      "max": 15,
      "min": 2,
      "pattern": "^[a-z][a-z0-9-]+$"
    },
    "ProjectName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^\\S(.*\\S)?$",
      "sensitive": true
    },
    "ProjectStatus": {
      "type": "structure",
      "required": [
        "state"
      ],
      "members": {
        "state": {
          "shape": "State",
          "documentation": "<p>The phase of completion for a project creation or deletion.</p>"
        },
        "reason": {
          "shape": "Reason",
          "documentation": "<p>In the case of a project creation or deletion failure, a reason for the failure.</p>"
        }
      },
      "documentation": "<p>An indication of whether a project creation or deletion is failed or successful.</p>"
    },
    "ProjectSummary": {
      "type": "structure",
      "members": {
        "projectId": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project.</p>"
        },
        "projectArn": {
          "shape": "ProjectArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the project.</p>"
        }
      },
      "documentation": "<p>Information about the metadata for a project.</p>"
    },
    "ProjectTemplateId": {
      "type": "string",
      "min": 1,
      "pattern": "^arn:aws[^:\\s]{0,5}:codestar:[^:\\s]+::project-template(\\/(github|codecommit))?\\/[a-z0-9-]+$"
    },
    "ProjectsList": {
      "type": "list",
      "member": {
        "shape": "ProjectSummary"
      }
    },
    "Reason": {
      "type": "string",
      "max": 1024,
      "pattern": "^$|^\\S(.*\\S)?$"
    },
    "RemoteAccessAllowed": {
      "type": "boolean"
    },
    "RepositoryDescription": {
      "type": "string",
      "max": 1000,
      "min": 1,
      "pattern": "^\\S(.*\\S)?$"
    },
    "RepositoryEnableIssues": {
      "type": "boolean"
    },
    "RepositoryIsPrivate": {
      "type": "boolean"
    },
    "RepositoryName": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^\\S[\\w.-]*$"
    },
    "RepositoryOwner": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^\\S(.*\\S)?$"
    },
    "RepositoryType": {
      "type": "string",
      "pattern": "^(user|organization|User|Organization)$"
    },
    "Resource": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "ResourceId",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        }
      },
      "documentation": "<p>Information about a resource for a project.</p>"
    },
    "ResourceId": {
      "type": "string",
      "min": 11,
      "pattern": "^arn\\:aws\\:\\S.*\\:.*"
    },
    "ResourcesResult": {
      "type": "list",
      "member": {
        "shape": "Resource"
      }
    },
    "Role": {
      "type": "string",
      "pattern": "^(Owner|Viewer|Contributor)$"
    },
    "RoleArn": {
      "type": "string",
      "max": 1224,
      "min": 1
    },
    "S3Location": {
      "type": "structure",
      "members": {
        "bucketName": {
          "shape": "BucketName",
          "documentation": "<p>The Amazon S3 bucket name where the source code files provided with the project request are stored.</p>"
        },
        "bucketKey": {
          "shape": "BucketKey",
          "documentation": "<p>The Amazon S3 object key where the source code files provided with the project request are stored.</p>"
        }
      },
      "documentation": "<p>The Amazon S3 location where the source code files provided with the project request are stored.</p>"
    },
    "SourceCode": {
      "type": "list",
      "member": {
        "shape": "Code"
      }
    },
    "SshPublicKey": {
      "type": "string",
      "max": 16384,
      "pattern": "^[\\t\\r\\n\\u0020-\\u00FF]*$"
    },
    "StackId": {
      "type": "string",
      "pattern": "^arn:aws[^:\\s]*:cloudformation:[^:\\s]+:[0-9]{12}:stack\\/[^:\\s]+\\/[^:\\s]+$"
    },
    "State": {
      "type": "string",
      "pattern": "^(CreateInProgress|CreateComplete|CreateFailed|DeleteComplete|DeleteFailed|DeleteInProgress|UpdateComplete|UpdateInProgress|UpdateFailed|Unknown)$"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TagKeys": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      }
    },
    "TagProjectRequest": {
      "type": "structure",
      "required": [
        "id",
        "tags"
      ],
      "members": {
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project you want to add a tag to.</p>"
        },
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags you want to add to the project.</p>"
        }
      }
    },
    "TagProjectResult": {
      "type": "structure",
      "members": {
        "tags": {
          "shape": "Tags",
          "documentation": "<p>The tags for the project.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "Tags": {
      "type": "map",
      "key": {
        "shape": "TagKey"
      },
      "value": {
        "shape": "TagValue"
      }
    },
    "TeamMember": {
      "type": "structure",
      "required": [
        "userArn",
        "projectRole"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user in IAM.</p>"
        },
        "projectRole": {
          "shape": "Role",
          "documentation": "<p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href=\"http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html\">Working with Teams</a> in the <i>AWS CodeStar User Guide</i>. </p>"
        },
        "remoteAccessAllowed": {
          "shape": "RemoteAccessAllowed",
          "documentation": "<p>Whether the user is allowed to remotely access project resources using an SSH public/private key pair.</p>",
          "box": true
        }
      },
      "documentation": "<p>Information about a team member in a project.</p>"
    },
    "TeamMemberResult": {
      "type": "list",
      "member": {
        "shape": "TeamMember"
      }
    },
    "TemplateParameterKey": {
      "type": "string",
      "max": 30,
      "min": 1,
      "pattern": "^\\S(.*\\S)?$"
    },
    "TemplateParameterMap": {
      "type": "map",
      "key": {
        "shape": "TemplateParameterKey"
      },
      "value": {
        "shape": "TemplateParameterValue"
      },
      "max": 25
    },
    "TemplateParameterValue": {
      "type": "string",
      "max": 100,
      "min": 1,
      "pattern": "^\\S(.*\\S)?$",
      "sensitive": true
    },
    "Toolchain": {
      "type": "structure",
      "required": [
        "source"
      ],
      "members": {
        "source": {
          "shape": "ToolchainSource",
          "documentation": "<p>The Amazon S3 location where the toolchain template file provided with the project request is stored. AWS CodeStar retrieves the file during project creation.</p>"
        },
        "roleArn": {
          "shape": "RoleArn",
          "documentation": "<p>The service role ARN for AWS CodeStar to use for the toolchain template during stack provisioning.</p>"
        },
        "stackParameters": {
          "shape": "TemplateParameterMap",
          "documentation": "<p>The list of parameter overrides to be passed into the toolchain template during stack provisioning, if any.</p>"
        }
      },
      "documentation": "<p>The toolchain template file provided with the project request. AWS CodeStar uses the template to provision the toolchain stack in AWS CloudFormation.</p>"
    },
    "ToolchainSource": {
      "type": "structure",
      "required": [
        "s3"
      ],
      "members": {
        "s3": {
          "shape": "S3Location",
          "documentation": "<p>The Amazon S3 bucket where the toolchain template file provided with the project request is stored.</p>"
        }
      },
      "documentation": "<p>The Amazon S3 location where the toolchain template file provided with the project request is stored. AWS CodeStar retrieves the file during project creation.</p>"
    },
    "UntagProjectRequest": {
      "type": "structure",
      "required": [
        "id",
        "tags"
      ],
      "members": {
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project to remove tags from.</p>"
        },
        "tags": {
          "shape": "TagKeys",
          "documentation": "<p>The tags to remove from the project.</p>"
        }
      }
    },
    "UntagProjectResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateProjectRequest": {
      "type": "structure",
      "required": [
        "id"
      ],
      "members": {
        "id": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project you want to update.</p>"
        },
        "name": {
          "shape": "ProjectName",
          "documentation": "<p>The name of the project you want to update.</p>"
        },
        "description": {
          "shape": "ProjectDescription",
          "documentation": "<p>The description of the project, if any.</p>"
        }
      }
    },
    "UpdateProjectResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateTeamMemberRequest": {
      "type": "structure",
      "required": [
        "projectId",
        "userArn"
      ],
      "members": {
        "projectId": {
          "shape": "ProjectId",
          "documentation": "<p>The ID of the project.</p>"
        },
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user for whom you want to change team membership attributes.</p>"
        },
        "projectRole": {
          "shape": "Role",
          "documentation": "<p>The role assigned to the user in the project. Project roles have different levels of access. For more information, see <a href=\"http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html\">Working with Teams</a> in the <i>AWS CodeStar User Guide</i>.</p>"
        },
        "remoteAccessAllowed": {
          "shape": "RemoteAccessAllowed",
          "documentation": "<p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile. Even if this is set to True, the user must associate a public key with their profile before the user can access resources.</p>",
          "box": true
        }
      }
    },
    "UpdateTeamMemberResult": {
      "type": "structure",
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user whose team membership attributes were updated.</p>"
        },
        "projectRole": {
          "shape": "Role",
          "documentation": "<p>The project role granted to the user.</p>"
        },
        "remoteAccessAllowed": {
          "shape": "RemoteAccessAllowed",
          "documentation": "<p>Whether a team member is allowed to remotely access project resources using the SSH public key associated with the user's profile.</p>",
          "box": true
        }
      }
    },
    "UpdateUserProfileRequest": {
      "type": "structure",
      "required": [
        "userArn"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The name that will be displayed as the friendly name for the user in AWS CodeStar.</p>"
        },
        "displayName": {
          "shape": "UserProfileDisplayName",
          "documentation": "<p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>"
        },
        "emailAddress": {
          "shape": "Email",
          "documentation": "<p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>"
        },
        "sshPublicKey": {
          "shape": "SshPublicKey",
          "documentation": "<p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>"
        }
      }
    },
    "UpdateUserProfileResult": {
      "type": "structure",
      "required": [
        "userArn"
      ],
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user in IAM.</p>"
        },
        "displayName": {
          "shape": "UserProfileDisplayName",
          "documentation": "<p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>"
        },
        "emailAddress": {
          "shape": "Email",
          "documentation": "<p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>"
        },
        "sshPublicKey": {
          "shape": "SshPublicKey",
          "documentation": "<p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the public/private keypair the user can use to access project resources if a project owner allows the user remote access to those resources.</p>"
        },
        "createdTimestamp": {
          "shape": "CreatedTimestamp",
          "documentation": "<p>The date the user profile was created, in timestamp format.</p>"
        },
        "lastModifiedTimestamp": {
          "shape": "LastModifiedTimestamp",
          "documentation": "<p>The date the user profile was last modified, in timestamp format.</p>"
        }
      }
    },
    "UserArn": {
      "type": "string",
      "max": 95,
      "min": 32,
      "pattern": "^arn:aws:iam::\\d{12}:user(?:(\\u002F)|(\\u002F[\\u0021-\\u007E]+\\u002F))[\\w+=,.@-]+$"
    },
    "UserProfileDisplayName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^\\S(.*\\S)?$",
      "sensitive": true
    },
    "UserProfileSummary": {
      "type": "structure",
      "members": {
        "userArn": {
          "shape": "UserArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the user in IAM.</p>"
        },
        "displayName": {
          "shape": "UserProfileDisplayName",
          "documentation": "<p>The display name of a user in AWS CodeStar. For example, this could be set to both first and last name (\"Mary Major\") or a single name (\"Mary\"). The display name is also used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the display name, the first character that appears after the space will be used as the second character in the user initial icon. The initial icon displays a maximum of two characters, so a display name with more than one space (for example \"Mary Jane Major\") would generate an initial icon using the first character and the first character after the space (\"MJ\", not \"MM\").</p>"
        },
        "emailAddress": {
          "shape": "Email",
          "documentation": "<p>The email address associated with the user.</p>"
        },
        "sshPublicKey": {
          "shape": "SshPublicKey",
          "documentation": "<p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the user remote access to project resources, this public key will be used along with the user's private key for SSH access.</p>"
        }
      },
      "documentation": "<p>Information about a user's profile in AWS CodeStar.</p>"
    },
    "UserProfilesList": {
      "type": "list",
      "member": {
        "shape": "UserProfileSummary"
      }
    }
  },
  "documentation": "<fullname>AWS CodeStar</fullname> <p>This is the API reference for AWS CodeStar. This reference provides descriptions of the operations and data types for the AWS CodeStar API along with usage examples.</p> <p>You can use the AWS CodeStar API to work with:</p> <p>Projects and their resources, by calling the following:</p> <ul> <li> <p> <code>DeleteProject</code>, which deletes a project.</p> </li> <li> <p> <code>DescribeProject</code>, which lists the attributes of a project.</p> </li> <li> <p> <code>ListProjects</code>, which lists all projects associated with your AWS account.</p> </li> <li> <p> <code>ListResources</code>, which lists the resources associated with a project.</p> </li> <li> <p> <code>ListTagsForProject</code>, which lists the tags associated with a project.</p> </li> <li> <p> <code>TagProject</code>, which adds tags to a project.</p> </li> <li> <p> <code>UntagProject</code>, which removes tags from a project.</p> </li> <li> <p> <code>UpdateProject</code>, which updates the attributes of a project.</p> </li> </ul> <p>Teams and team members, by calling the following:</p> <ul> <li> <p> <code>AssociateTeamMember</code>, which adds an IAM user to the team for a project.</p> </li> <li> <p> <code>DisassociateTeamMember</code>, which removes an IAM user from the team for a project.</p> </li> <li> <p> <code>ListTeamMembers</code>, which lists all the IAM users in the team for a project, including their roles and attributes.</p> </li> <li> <p> <code>UpdateTeamMember</code>, which updates a team member's attributes in a project.</p> </li> </ul> <p>Users, by calling the following:</p> <ul> <li> <p> <code>CreateUserProfile</code>, which creates a user profile that contains data associated with the user across all projects.</p> </li> <li> <p> <code>DeleteUserProfile</code>, which deletes all user profile information across all projects.</p> </li> <li> <p> <code>DescribeUserProfile</code>, which describes the profile of a user.</p> </li> <li> <p> <code>ListUserProfiles</code>, which lists all user profiles.</p> </li> <li> <p> <code>UpdateUserProfile</code>, which updates the profile for a user.</p> </li> </ul>"
}
]===]))
