local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2015-04-08",
    "endpointPrefix": "workspaces",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceFullName": "Amazon WorkSpaces",
    "serviceId": "WorkSpaces",
    "signatureVersion": "v4",
    "targetPrefix": "WorkspacesService",
    "uid": "workspaces-2015-04-08"
  },
  "operations": {
    "AssociateConnectionAlias": {
      "name": "AssociateConnectionAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateConnectionAliasRequest"
      },
      "output": {
        "shape": "AssociateConnectionAliasResult"
      },
      "errors": [
        {
          "shape": "ResourceAssociatedException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Associates the specified connection alias with the specified directory to enable cross-Region redirection. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p> <note> <p>Before performing this operation, call <a href=\"https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html\"> DescribeConnectionAliases</a> to make sure that the current state of the connection alias is <code>CREATED</code>.</p> </note>"
    },
    "AssociateIpGroups": {
      "name": "AssociateIpGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AssociateIpGroupsRequest"
      },
      "output": {
        "shape": "AssociateIpGroupsResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Associates the specified IP access control group with the specified directory.</p>"
    },
    "AuthorizeIpRules": {
      "name": "AuthorizeIpRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AuthorizeIpRulesRequest"
      },
      "output": {
        "shape": "AuthorizeIpRulesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Adds one or more rules to the specified IP access control group.</p> <p>This action gives users permission to access their WorkSpaces from the CIDR address ranges specified in the rules.</p>"
    },
    "CopyWorkspaceImage": {
      "name": "CopyWorkspaceImage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CopyWorkspaceImageRequest"
      },
      "output": {
        "shape": "CopyWorkspaceImageResult"
      },
      "errors": [
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "OperationNotSupportedException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        }
      ],
      "documentation": "<p>Copies the specified image from the specified Region to the current Region.</p>"
    },
    "CreateConnectionAlias": {
      "name": "CreateConnectionAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateConnectionAliasRequest"
      },
      "output": {
        "shape": "CreateConnectionAliasResult"
      },
      "errors": [
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Creates the specified connection alias for use with cross-Region redirection. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p>"
    },
    "CreateIpGroup": {
      "name": "CreateIpGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateIpGroupRequest"
      },
      "output": {
        "shape": "CreateIpGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceCreationFailedException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Creates an IP access control group.</p> <p>An IP access control group provides you with the ability to control the IP addresses from which users are allowed to access their WorkSpaces. To specify the CIDR address ranges, add rules to your IP access control group and then associate the group with your directory. You can add rules when you create the group or at any time using <a>AuthorizeIpRules</a>.</p> <p>There is a default IP access control group associated with your directory. If you don't associate an IP access control group with your directory, the default group is used. The default group includes a default rule that allows users to access their WorkSpaces from anywhere. You cannot modify the default IP access control group for your directory.</p>"
    },
    "CreateTags": {
      "name": "CreateTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateTagsRequest"
      },
      "output": {
        "shape": "CreateTagsResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceLimitExceededException"
        }
      ],
      "documentation": "<p>Creates the specified tags for the specified WorkSpaces resource.</p>"
    },
    "CreateWorkspaces": {
      "name": "CreateWorkspaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateWorkspacesRequest"
      },
      "output": {
        "shape": "CreateWorkspacesResult"
      },
      "errors": [
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InvalidParameterValuesException"
        }
      ],
      "documentation": "<p>Creates one or more WorkSpaces.</p> <p>This operation is asynchronous and returns before the WorkSpaces are created.</p>"
    },
    "DeleteConnectionAlias": {
      "name": "DeleteConnectionAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteConnectionAliasRequest"
      },
      "output": {
        "shape": "DeleteConnectionAliasResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAssociatedException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Deletes the specified connection alias. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p> <important> <p> <b>If you will no longer be using a fully qualified domain name (FQDN) as the registration code for your WorkSpaces users, you must take certain precautions to prevent potential security issues.</b> For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations\"> Security Considerations if You Stop Using Cross-Region Redirection</a>.</p> </important> <note> <p>To delete a connection alias that has been shared, the shared account must first disassociate the connection alias from any directories it has been associated with. Then you must unshare the connection alias from the account it has been shared with. You can delete a connection alias only after it is no longer shared with any accounts or associated with any directories.</p> </note>"
    },
    "DeleteIpGroup": {
      "name": "DeleteIpGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteIpGroupRequest"
      },
      "output": {
        "shape": "DeleteIpGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAssociatedException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes the specified IP access control group.</p> <p>You cannot delete an IP access control group that is associated with a directory.</p>"
    },
    "DeleteTags": {
      "name": "DeleteTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteTagsRequest"
      },
      "output": {
        "shape": "DeleteTagsResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValuesException"
        }
      ],
      "documentation": "<p>Deletes the specified tags from the specified WorkSpaces resource.</p>"
    },
    "DeleteWorkspaceImage": {
      "name": "DeleteWorkspaceImage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteWorkspaceImageRequest"
      },
      "output": {
        "shape": "DeleteWorkspaceImageResult"
      },
      "errors": [
        {
          "shape": "ResourceAssociatedException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Deletes the specified image from your account. To delete an image, you must first delete any bundles that are associated with the image and unshare the image if it is shared with other accounts. </p>"
    },
    "DeregisterWorkspaceDirectory": {
      "name": "DeregisterWorkspaceDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterWorkspaceDirectoryRequest"
      },
      "output": {
        "shape": "DeregisterWorkspaceDirectoryResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "OperationNotSupportedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidResourceStateException"
        }
      ],
      "documentation": "<p>Deregisters the specified directory. This operation is asynchronous and returns before the WorkSpace directory is deregistered. If any WorkSpaces are registered to this directory, you must remove them before you can deregister the directory.</p>"
    },
    "DescribeAccount": {
      "name": "DescribeAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAccountRequest"
      },
      "output": {
        "shape": "DescribeAccountResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Retrieves a list that describes the configuration of Bring Your Own License (BYOL) for the specified account.</p>"
    },
    "DescribeAccountModifications": {
      "name": "DescribeAccountModifications",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeAccountModificationsRequest"
      },
      "output": {
        "shape": "DescribeAccountModificationsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Retrieves a list that describes modifications to the configuration of Bring Your Own License (BYOL) for the specified account.</p>"
    },
    "DescribeClientProperties": {
      "name": "DescribeClientProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeClientPropertiesRequest"
      },
      "output": {
        "shape": "DescribeClientPropertiesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Retrieves a list that describes one or more specified Amazon WorkSpaces clients.</p>"
    },
    "DescribeConnectionAliasPermissions": {
      "name": "DescribeConnectionAliasPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConnectionAliasPermissionsRequest"
      },
      "output": {
        "shape": "DescribeConnectionAliasPermissionsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Describes the permissions that the owner of a connection alias has granted to another AWS account for the specified connection alias. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p>"
    },
    "DescribeConnectionAliases": {
      "name": "DescribeConnectionAliases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeConnectionAliasesRequest"
      },
      "output": {
        "shape": "DescribeConnectionAliasesResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Retrieves a list that describes the connection aliases used for cross-Region redirection. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p>"
    },
    "DescribeIpGroups": {
      "name": "DescribeIpGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeIpGroupsRequest"
      },
      "output": {
        "shape": "DescribeIpGroupsResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Describes one or more of your IP access control groups.</p>"
    },
    "DescribeTags": {
      "name": "DescribeTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeTagsRequest"
      },
      "output": {
        "shape": "DescribeTagsResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Describes the specified tags for the specified WorkSpaces resource.</p>"
    },
    "DescribeWorkspaceBundles": {
      "name": "DescribeWorkspaceBundles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkspaceBundlesRequest"
      },
      "output": {
        "shape": "DescribeWorkspaceBundlesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        }
      ],
      "documentation": "<p>Retrieves a list that describes the available WorkSpace bundles.</p> <p>You can filter the results using either bundle ID or owner, but not both.</p>"
    },
    "DescribeWorkspaceDirectories": {
      "name": "DescribeWorkspaceDirectories",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkspaceDirectoriesRequest"
      },
      "output": {
        "shape": "DescribeWorkspaceDirectoriesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        }
      ],
      "documentation": "<p>Describes the available directories that are registered with Amazon WorkSpaces.</p>"
    },
    "DescribeWorkspaceImagePermissions": {
      "name": "DescribeWorkspaceImagePermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkspaceImagePermissionsRequest"
      },
      "output": {
        "shape": "DescribeWorkspaceImagePermissionsResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        }
      ],
      "documentation": "<p>Describes the permissions that the owner of an image has granted to other AWS accounts for an image.</p>"
    },
    "DescribeWorkspaceImages": {
      "name": "DescribeWorkspaceImages",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkspaceImagesRequest"
      },
      "output": {
        "shape": "DescribeWorkspaceImagesResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Retrieves a list that describes one or more specified images, if the image identifiers are provided. Otherwise, all images in the account are described. </p>"
    },
    "DescribeWorkspaceSnapshots": {
      "name": "DescribeWorkspaceSnapshots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkspaceSnapshotsRequest"
      },
      "output": {
        "shape": "DescribeWorkspaceSnapshotsResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Describes the snapshots for the specified WorkSpace.</p>"
    },
    "DescribeWorkspaces": {
      "name": "DescribeWorkspaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkspacesRequest"
      },
      "output": {
        "shape": "DescribeWorkspacesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Describes the specified WorkSpaces.</p> <p>You can filter the results by using the bundle identifier, directory identifier, or owner, but you can specify only one filter at a time.</p>"
    },
    "DescribeWorkspacesConnectionStatus": {
      "name": "DescribeWorkspacesConnectionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeWorkspacesConnectionStatusRequest"
      },
      "output": {
        "shape": "DescribeWorkspacesConnectionStatusResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        }
      ],
      "documentation": "<p>Describes the connection status of the specified WorkSpaces.</p>"
    },
    "DisassociateConnectionAlias": {
      "name": "DisassociateConnectionAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateConnectionAliasRequest"
      },
      "output": {
        "shape": "DisassociateConnectionAliasResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Disassociates a connection alias from a directory. Disassociating a connection alias disables cross-Region redirection between two directories in different AWS Regions. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p> <note> <p>Before performing this operation, call <a href=\"https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html\"> DescribeConnectionAliases</a> to make sure that the current state of the connection alias is <code>CREATED</code>.</p> </note>"
    },
    "DisassociateIpGroups": {
      "name": "DisassociateIpGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisassociateIpGroupsRequest"
      },
      "output": {
        "shape": "DisassociateIpGroupsResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Disassociates the specified IP access control group from the specified directory.</p>"
    },
    "ImportWorkspaceImage": {
      "name": "ImportWorkspaceImage",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ImportWorkspaceImageRequest"
      },
      "output": {
        "shape": "ImportWorkspaceImageResult"
      },
      "errors": [
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ResourceAlreadyExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OperationNotSupportedException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        }
      ],
      "documentation": "<p>Imports the specified Windows 10 Bring Your Own License (BYOL) image into Amazon WorkSpaces. The image must be an already licensed Amazon EC2 image that is in your AWS account, and you must own the image. For more information about creating BYOL images, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\"> Bring Your Own Windows Desktop Licenses</a>.</p>"
    },
    "ListAvailableManagementCidrRanges": {
      "name": "ListAvailableManagementCidrRanges",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAvailableManagementCidrRangesRequest"
      },
      "output": {
        "shape": "ListAvailableManagementCidrRangesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use for the network management interface when you enable Bring Your Own License (BYOL). </p> <p>The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>"
    },
    "MigrateWorkspace": {
      "name": "MigrateWorkspace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MigrateWorkspaceRequest"
      },
      "output": {
        "shape": "MigrateWorkspaceResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "OperationNotSupportedException"
        },
        {
          "shape": "OperationInProgressException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Migrates a WorkSpace from one operating system or bundle type to another, while retaining the data on the user volume.</p> <p>The migration process recreates the WorkSpace by using a new root volume from the target bundle image and the user volume from the last available snapshot of the original WorkSpace. During migration, the original <code>D:\\Users\\%USERNAME%</code> user profile folder is renamed to <code>D:\\Users\\%USERNAME%MMddyyTHHmmss%.NotMigrated</code>. A new <code>D:\\Users\\%USERNAME%\\</code> folder is generated by the new OS. Certain files in the old user profile are moved to the new user profile.</p> <p>For available migration scenarios, details about what happens during migration, and best practices, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html\">Migrate a WorkSpace</a>.</p>"
    },
    "ModifyAccount": {
      "name": "ModifyAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyAccountRequest"
      },
      "output": {
        "shape": "ModifyAccountResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Modifies the configuration of Bring Your Own License (BYOL) for the specified account.</p>"
    },
    "ModifyClientProperties": {
      "name": "ModifyClientProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyClientPropertiesRequest"
      },
      "output": {
        "shape": "ModifyClientPropertiesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Modifies the properties of the specified Amazon WorkSpaces clients.</p>"
    },
    "ModifySelfservicePermissions": {
      "name": "ModifySelfservicePermissions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifySelfservicePermissionsRequest"
      },
      "output": {
        "shape": "ModifySelfservicePermissionsResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Modifies the self-service WorkSpace management capabilities for your users. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html\">Enable Self-Service WorkSpace Management Capabilities for Your Users</a>.</p>"
    },
    "ModifyWorkspaceAccessProperties": {
      "name": "ModifyWorkspaceAccessProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyWorkspaceAccessPropertiesRequest"
      },
      "output": {
        "shape": "ModifyWorkspaceAccessPropertiesResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Specifies which devices and operating systems users can use to access their WorkSpaces. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access\"> Control Device Access</a>.</p>"
    },
    "ModifyWorkspaceCreationProperties": {
      "name": "ModifyWorkspaceCreationProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyWorkspaceCreationPropertiesRequest"
      },
      "output": {
        "shape": "ModifyWorkspaceCreationPropertiesResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Modify the default properties used to create WorkSpaces.</p>"
    },
    "ModifyWorkspaceProperties": {
      "name": "ModifyWorkspaceProperties",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyWorkspacePropertiesRequest"
      },
      "output": {
        "shape": "ModifyWorkspacePropertiesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "OperationInProgressException"
        },
        {
          "shape": "UnsupportedWorkspaceConfigurationException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Modifies the specified WorkSpace properties. For important information about how to modify the size of the root and user volumes, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html\"> Modify a WorkSpace</a>. </p>"
    },
    "ModifyWorkspaceState": {
      "name": "ModifyWorkspaceState",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ModifyWorkspaceStateRequest"
      },
      "output": {
        "shape": "ModifyWorkspaceStateResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "ResourceNotFoundException"
        }
      ],
      "documentation": "<p>Sets the state of the specified WorkSpace.</p> <p>To maintain a WorkSpace without being interrupted, set the WorkSpace state to <code>ADMIN_MAINTENANCE</code>. WorkSpaces in this state do not respond to requests to reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this state is not stopped. Users cannot log into a WorkSpace in the <code>ADMIN_MAINTENANCE</code> state.</p>"
    },
    "RebootWorkspaces": {
      "name": "RebootWorkspaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebootWorkspacesRequest"
      },
      "output": {
        "shape": "RebootWorkspacesResult"
      },
      "documentation": "<p>Reboots the specified WorkSpaces.</p> <p>You cannot reboot a WorkSpace unless its state is <code>AVAILABLE</code> or <code>UNHEALTHY</code>.</p> <p>This operation is asynchronous and returns before the WorkSpaces have rebooted.</p>"
    },
    "RebuildWorkspaces": {
      "name": "RebuildWorkspaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RebuildWorkspacesRequest"
      },
      "output": {
        "shape": "RebuildWorkspacesResult"
      },
      "documentation": "<p>Rebuilds the specified WorkSpace.</p> <p>You cannot rebuild a WorkSpace unless its state is <code>AVAILABLE</code>, <code>ERROR</code>, <code>UNHEALTHY</code>, <code>STOPPED</code>, or <code>REBOOTING</code>.</p> <p>Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html\">Rebuild a WorkSpace</a>.</p> <p>This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.</p>"
    },
    "RegisterWorkspaceDirectory": {
      "name": "RegisterWorkspaceDirectory",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterWorkspaceDirectoryRequest"
      },
      "output": {
        "shape": "RegisterWorkspaceDirectoryResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "WorkspacesDefaultRoleNotFoundException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "UnsupportedNetworkConfigurationException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Registers the specified directory. This operation is asynchronous and returns before the WorkSpace directory is registered. If this is the first time you are registering a directory, you will need to create the workspaces_DefaultRole role before you can register a directory. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role\"> Creating the workspaces_DefaultRole Role</a>.</p>"
    },
    "RestoreWorkspace": {
      "name": "RestoreWorkspace",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RestoreWorkspaceRequest"
      },
      "output": {
        "shape": "RestoreWorkspaceResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Restores the specified WorkSpace to its last known healthy state.</p> <p>You cannot restore a WorkSpace unless its state is <code> AVAILABLE</code>, <code>ERROR</code>, <code>UNHEALTHY</code>, or <code>STOPPED</code>.</p> <p>Restoring a WorkSpace is a potentially destructive action that can result in the loss of data. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html\">Restore a WorkSpace</a>.</p> <p>This operation is asynchronous and returns before the WorkSpace is completely restored.</p>"
    },
    "RevokeIpRules": {
      "name": "RevokeIpRules",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RevokeIpRulesRequest"
      },
      "output": {
        "shape": "RevokeIpRulesResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Removes one or more rules from the specified IP access control group.</p>"
    },
    "StartWorkspaces": {
      "name": "StartWorkspaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StartWorkspacesRequest"
      },
      "output": {
        "shape": "StartWorkspacesResult"
      },
      "documentation": "<p>Starts the specified WorkSpaces.</p> <p>You cannot start a WorkSpace unless it has a running mode of <code>AutoStop</code> and a state of <code>STOPPED</code>.</p>"
    },
    "StopWorkspaces": {
      "name": "StopWorkspaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "StopWorkspacesRequest"
      },
      "output": {
        "shape": "StopWorkspacesResult"
      },
      "documentation": "<p> Stops the specified WorkSpaces.</p> <p>You cannot stop a WorkSpace unless it has a running mode of <code>AutoStop</code> and a state of <code>AVAILABLE</code>, <code>IMPAIRED</code>, <code>UNHEALTHY</code>, or <code>ERROR</code>.</p>"
    },
    "TerminateWorkspaces": {
      "name": "TerminateWorkspaces",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TerminateWorkspacesRequest"
      },
      "output": {
        "shape": "TerminateWorkspacesResult"
      },
      "documentation": "<p>Terminates the specified WorkSpaces.</p> <p>Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace.</p> <p>You can terminate a WorkSpace that is in any state except <code>SUSPENDED</code>.</p> <p>This operation is asynchronous and returns before the WorkSpaces have been completely terminated.</p>"
    },
    "UpdateConnectionAliasPermission": {
      "name": "UpdateConnectionAliasPermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateConnectionAliasPermissionRequest"
      },
      "output": {
        "shape": "UpdateConnectionAliasPermissionResult"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceAssociatedException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Shares or unshares a connection alias with one account by specifying whether that account has permission to associate the connection alias with a directory. If the association permission is granted, the connection alias is shared with that account. If the association permission is revoked, the connection alias is unshared with the account. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p> <note> <ul> <li> <p>Before performing this operation, call <a href=\"https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html\"> DescribeConnectionAliases</a> to make sure that the current state of the connection alias is <code>CREATED</code>.</p> </li> <li> <p>To delete a connection alias that has been shared, the shared account must first disassociate the connection alias from any directories it has been associated with. Then you must unshare the connection alias from the account it has been shared with. You can delete a connection alias only after it is no longer shared with any accounts or associated with any directories.</p> </li> </ul> </note>"
    },
    "UpdateRulesOfIpGroup": {
      "name": "UpdateRulesOfIpGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRulesOfIpGroupRequest"
      },
      "output": {
        "shape": "UpdateRulesOfIpGroupResult"
      },
      "errors": [
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceLimitExceededException"
        },
        {
          "shape": "InvalidResourceStateException"
        },
        {
          "shape": "AccessDeniedException"
        }
      ],
      "documentation": "<p>Replaces the current rules of the specified IP access control group with the specified rules.</p>"
    },
    "UpdateWorkspaceImagePermission": {
      "name": "UpdateWorkspaceImagePermission",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateWorkspaceImagePermissionRequest"
      },
      "output": {
        "shape": "UpdateWorkspaceImagePermissionResult"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceUnavailableException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValuesException"
        },
        {
          "shape": "OperationNotSupportedException"
        }
      ],
      "documentation": "<p>Shares or unshares an image with one account by specifying whether that account has permission to copy the image. If the copy image permission is granted, the image is shared with that account. If the copy image permission is revoked, the image is unshared with the account.</p> <note> <ul> <li> <p>To delete an image that has been shared, you must unshare the image before you delete it.</p> </li> <li> <p>Sharing Bring Your Own License (BYOL) images across AWS accounts isn't supported at this time in the AWS GovCloud (US-West) Region. To share BYOL images across accounts in the AWS GovCloud (US-West) Region, contact AWS Support.</p> </li> </ul> </note>"
    }
  },
  "shapes": {
    "ARN": {
      "type": "string",
      "pattern": "^arn:aws:[A-Za-z0-9][A-za-z0-9_/.-]{0,62}:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-za-z0-9_/.-]{0,127}$"
    },
    "AccessPropertyValue": {
      "type": "string",
      "enum": [
        "ALLOW",
        "DENY"
      ]
    },
    "AccountModification": {
      "type": "structure",
      "members": {
        "ModificationState": {
          "shape": "DedicatedTenancyModificationStateEnum",
          "documentation": "<p>The state of the modification to the configuration of BYOL.</p>"
        },
        "DedicatedTenancySupport": {
          "shape": "DedicatedTenancySupportResultEnum",
          "documentation": "<p>The status of BYOL (whether BYOL is being enabled or disabled).</p>"
        },
        "DedicatedTenancyManagementCidrRange": {
          "shape": "DedicatedTenancyManagementCidrRange",
          "documentation": "<p>The IP address range, specified as an IPv4 CIDR block, for the management network interface used for the account.</p>"
        },
        "StartTime": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp when the modification of the BYOL configuration was started.</p>"
        },
        "ErrorCode": {
          "shape": "WorkspaceErrorCode",
          "documentation": "<p>The error code that is returned if the configuration of BYOL cannot be modified.</p>"
        },
        "ErrorMessage": {
          "shape": "Description",
          "documentation": "<p>The text of the error message that is returned if the configuration of BYOL cannot be modified.</p>"
        }
      },
      "documentation": "<p>Describes a modification to the configuration of Bring Your Own License (BYOL) for the specified account. </p>"
    },
    "AccountModificationList": {
      "type": "list",
      "member": {
        "shape": "AccountModification"
      }
    },
    "Alias": {
      "type": "string"
    },
    "Application": {
      "type": "string",
      "enum": [
        "Microsoft_Office_2016",
        "Microsoft_Office_2019"
      ]
    },
    "ApplicationList": {
      "type": "list",
      "member": {
        "shape": "Application"
      },
      "max": 5,
      "min": 1
    },
    "AssociateConnectionAliasRequest": {
      "type": "structure",
      "required": [
        "AliasId",
        "ResourceId"
      ],
      "members": {
        "AliasId": {
          "shape": "ConnectionAliasId",
          "documentation": "<p>The identifier of the connection alias.</p>"
        },
        "ResourceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the directory to associate the connection alias with.</p>"
        }
      }
    },
    "AssociateConnectionAliasResult": {
      "type": "structure",
      "members": {
        "ConnectionIdentifier": {
          "shape": "ConnectionIdentifier",
          "documentation": "<p>The identifier of the connection alias association. You use the connection identifier in the DNS TXT record when you're configuring your DNS routing policies. </p>"
        }
      }
    },
    "AssociateIpGroupsRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "GroupIds"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "GroupIds": {
          "shape": "IpGroupIdList",
          "documentation": "<p>The identifiers of one or more IP access control groups.</p>"
        }
      }
    },
    "AssociateIpGroupsResult": {
      "type": "structure",
      "members": {}
    },
    "AssociationStatus": {
      "type": "string",
      "enum": [
        "NOT_ASSOCIATED",
        "ASSOCIATED_WITH_OWNER_ACCOUNT",
        "ASSOCIATED_WITH_SHARED_ACCOUNT",
        "PENDING_ASSOCIATION",
        "PENDING_DISASSOCIATION"
      ]
    },
    "AuthorizeIpRulesRequest": {
      "type": "structure",
      "required": [
        "GroupId",
        "UserRules"
      ],
      "members": {
        "GroupId": {
          "shape": "IpGroupId",
          "documentation": "<p>The identifier of the group.</p>"
        },
        "UserRules": {
          "shape": "IpRuleList",
          "documentation": "<p>The rules to add to the group.</p>"
        }
      }
    },
    "AuthorizeIpRulesResult": {
      "type": "structure",
      "members": {}
    },
    "AwsAccount": {
      "type": "string",
      "pattern": "^\\d{12}$"
    },
    "BooleanObject": {
      "type": "boolean"
    },
    "BundleId": {
      "type": "string",
      "pattern": "^wsb-[0-9a-z]{8,63}$"
    },
    "BundleIdList": {
      "type": "list",
      "member": {
        "shape": "BundleId"
      },
      "max": 25,
      "min": 1
    },
    "BundleList": {
      "type": "list",
      "member": {
        "shape": "WorkspaceBundle"
      }
    },
    "BundleOwner": {
      "type": "string"
    },
    "ClientProperties": {
      "type": "structure",
      "members": {
        "ReconnectEnabled": {
          "shape": "ReconnectEnum",
          "documentation": "<p>Specifies whether users can cache their credentials on the Amazon WorkSpaces client. When enabled, users can choose to reconnect to their WorkSpaces without re-entering their credentials. </p>"
        }
      },
      "documentation": "<p>Describes an Amazon WorkSpaces client.</p>"
    },
    "ClientPropertiesList": {
      "type": "list",
      "member": {
        "shape": "ClientPropertiesResult"
      }
    },
    "ClientPropertiesResult": {
      "type": "structure",
      "members": {
        "ResourceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The resource identifier, in the form of a directory ID.</p>"
        },
        "ClientProperties": {
          "shape": "ClientProperties",
          "documentation": "<p>Information about the Amazon WorkSpaces client.</p>"
        }
      },
      "documentation": "<p>Information about the Amazon WorkSpaces client.</p>"
    },
    "Compute": {
      "type": "string",
      "enum": [
        "VALUE",
        "STANDARD",
        "PERFORMANCE",
        "POWER",
        "GRAPHICS",
        "POWERPRO",
        "GRAPHICSPRO"
      ]
    },
    "ComputeType": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "Compute",
          "documentation": "<p>The compute type.</p>"
        }
      },
      "documentation": "<p>Describes the compute type.</p>"
    },
    "ComputerName": {
      "type": "string"
    },
    "ConnectionAlias": {
      "type": "structure",
      "members": {
        "ConnectionString": {
          "shape": "ConnectionString",
          "documentation": "<p>The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as <code>www.example.com</code>.</p>"
        },
        "AliasId": {
          "shape": "ConnectionAliasId",
          "documentation": "<p>The identifier of the connection alias.</p>"
        },
        "State": {
          "shape": "ConnectionAliasState",
          "documentation": "<p>The current state of the connection alias.</p>"
        },
        "OwnerAccountId": {
          "shape": "AwsAccount",
          "documentation": "<p>The identifier of the AWS account that owns the connection alias.</p>"
        },
        "Associations": {
          "shape": "ConnectionAliasAssociationList",
          "documentation": "<p>The association status of the connection alias.</p>"
        }
      },
      "documentation": "<p>Describes a connection alias. Connection aliases are used for cross-Region redirection. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p>"
    },
    "ConnectionAliasAssociation": {
      "type": "structure",
      "members": {
        "AssociationStatus": {
          "shape": "AssociationStatus",
          "documentation": "<p>The association status of the connection alias.</p>"
        },
        "AssociatedAccountId": {
          "shape": "AwsAccount",
          "documentation": "<p>The identifier of the AWS account that associated the connection alias with a directory.</p>"
        },
        "ResourceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the directory associated with a connection alias.</p>"
        },
        "ConnectionIdentifier": {
          "shape": "ConnectionIdentifier",
          "documentation": "<p>The identifier of the connection alias association. You use the connection identifier in the DNS TXT record when you're configuring your DNS routing policies.</p>"
        }
      },
      "documentation": "<p>Describes a connection alias association that is used for cross-Region redirection. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p>"
    },
    "ConnectionAliasAssociationList": {
      "type": "list",
      "member": {
        "shape": "ConnectionAliasAssociation"
      },
      "max": 25,
      "min": 1
    },
    "ConnectionAliasId": {
      "type": "string",
      "max": 68,
      "min": 13,
      "pattern": "^wsca-[0-9a-z]{8,63}$"
    },
    "ConnectionAliasIdList": {
      "type": "list",
      "member": {
        "shape": "ConnectionAliasId"
      },
      "max": 25,
      "min": 1
    },
    "ConnectionAliasList": {
      "type": "list",
      "member": {
        "shape": "ConnectionAlias"
      },
      "max": 25,
      "min": 1
    },
    "ConnectionAliasPermission": {
      "type": "structure",
      "required": [
        "SharedAccountId",
        "AllowAssociation"
      ],
      "members": {
        "SharedAccountId": {
          "shape": "AwsAccount",
          "documentation": "<p>The identifier of the AWS account that the connection alias is shared with.</p>"
        },
        "AllowAssociation": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether the specified AWS account is allowed to associate the connection alias with a directory.</p>"
        }
      },
      "documentation": "<p>Describes the permissions for a connection alias. Connection aliases are used for cross-Region redirection. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html\"> Cross-Region Redirection for Amazon WorkSpaces</a>.</p>"
    },
    "ConnectionAliasPermissions": {
      "type": "list",
      "member": {
        "shape": "ConnectionAliasPermission"
      },
      "max": 25,
      "min": 1
    },
    "ConnectionAliasState": {
      "type": "string",
      "enum": [
        "CREATING",
        "CREATED",
        "DELETING"
      ]
    },
    "ConnectionIdentifier": {
      "type": "string",
      "max": 20,
      "min": 1,
      "pattern": "^[a-zA-Z0-9]+$"
    },
    "ConnectionState": {
      "type": "string",
      "enum": [
        "CONNECTED",
        "DISCONNECTED",
        "UNKNOWN"
      ]
    },
    "ConnectionString": {
      "type": "string",
      "max": 255,
      "min": 1,
      "pattern": "^[.0-9a-zA-Z\\-]{1,255}$"
    },
    "CopyWorkspaceImageRequest": {
      "type": "structure",
      "required": [
        "Name",
        "SourceImageId",
        "SourceRegion"
      ],
      "members": {
        "Name": {
          "shape": "WorkspaceImageName",
          "documentation": "<p>The name of the image.</p>"
        },
        "Description": {
          "shape": "WorkspaceImageDescription",
          "documentation": "<p>A description of the image.</p>"
        },
        "SourceImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The identifier of the source image.</p>"
        },
        "SourceRegion": {
          "shape": "Region",
          "documentation": "<p>The identifier of the source Region.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the image.</p>"
        }
      }
    },
    "CopyWorkspaceImageResult": {
      "type": "structure",
      "members": {
        "ImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The identifier of the image.</p>"
        }
      }
    },
    "CreateConnectionAliasRequest": {
      "type": "structure",
      "required": [
        "ConnectionString"
      ],
      "members": {
        "ConnectionString": {
          "shape": "ConnectionString",
          "documentation": "<p>A connection string in the form of a fully qualified domain name (FQDN), such as <code>www.example.com</code>.</p> <important> <p>After you create a connection string, it is always associated to your AWS account. You cannot recreate the same connection string with a different account, even if you delete all instances of it from the original account. The connection string is globally reserved for your account.</p> </important>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags to associate with the connection alias.</p>"
        }
      }
    },
    "CreateConnectionAliasResult": {
      "type": "structure",
      "members": {
        "AliasId": {
          "shape": "ConnectionAliasId",
          "documentation": "<p>The identifier of the connection alias.</p>"
        }
      }
    },
    "CreateIpGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName"
      ],
      "members": {
        "GroupName": {
          "shape": "IpGroupName",
          "documentation": "<p>The name of the group.</p>"
        },
        "GroupDesc": {
          "shape": "IpGroupDesc",
          "documentation": "<p>The description of the group.</p>"
        },
        "UserRules": {
          "shape": "IpRuleList",
          "documentation": "<p>The rules to add to the group.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>"
        }
      }
    },
    "CreateIpGroupResult": {
      "type": "structure",
      "members": {
        "GroupId": {
          "shape": "IpGroupId",
          "documentation": "<p>The identifier of the group.</p>"
        }
      }
    },
    "CreateTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "Tags"
      ],
      "members": {
        "ResourceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces, registered directories, images, custom bundles, IP access control groups, and connection aliases.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags. If you want to add new tags to a set of existing tags, you must submit all of the existing tags along with the new ones.</p>"
        }
      }
    },
    "CreateTagsResult": {
      "type": "structure",
      "members": {}
    },
    "CreateWorkspacesRequest": {
      "type": "structure",
      "required": [
        "Workspaces"
      ],
      "members": {
        "Workspaces": {
          "shape": "WorkspaceRequestList",
          "documentation": "<p>The WorkSpaces to create. You can specify up to 25 WorkSpaces.</p>"
        }
      }
    },
    "CreateWorkspacesResult": {
      "type": "structure",
      "members": {
        "FailedRequests": {
          "shape": "FailedCreateWorkspaceRequests",
          "documentation": "<p>Information about the WorkSpaces that could not be created.</p>"
        },
        "PendingRequests": {
          "shape": "WorkspaceList",
          "documentation": "<p>Information about the WorkSpaces that were created.</p> <p>Because this operation is asynchronous, the identifier returned is not immediately available for use with other operations. For example, if you call <a>DescribeWorkspaces</a> before the WorkSpace is created, the information returned can be incomplete.</p>"
        }
      }
    },
    "DedicatedTenancyCidrRangeList": {
      "type": "list",
      "member": {
        "shape": "DedicatedTenancyManagementCidrRange"
      }
    },
    "DedicatedTenancyManagementCidrRange": {
      "type": "string",
      "pattern": "(^([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.0\\.0)(\\/(16$))$"
    },
    "DedicatedTenancyModificationStateEnum": {
      "type": "string",
      "enum": [
        "PENDING",
        "COMPLETED",
        "FAILED"
      ]
    },
    "DedicatedTenancySupportEnum": {
      "type": "string",
      "enum": [
        "ENABLED"
      ]
    },
    "DedicatedTenancySupportResultEnum": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "DefaultOu": {
      "type": "string"
    },
    "DefaultWorkspaceCreationProperties": {
      "type": "structure",
      "members": {
        "EnableWorkDocs": {
          "shape": "BooleanObject",
          "documentation": "<p>Specifies whether the directory is enabled for Amazon WorkDocs.</p>"
        },
        "EnableInternetAccess": {
          "shape": "BooleanObject",
          "documentation": "<p>Specifies whether to automatically assign an Elastic public IP address to WorkSpaces in this directory by default. If enabled, the Elastic public IP address allows outbound internet access from your WorkSpaces when you’re using an internet gateway in the Amazon VPC in which your WorkSpaces are located. If you're using a Network Address Translation (NAT) gateway for outbound internet access from your VPC, or if your WorkSpaces are in public subnets and you manually assign them Elastic IP addresses, you should disable this setting. This setting applies to new WorkSpaces that you launch or to existing WorkSpaces that you rebuild. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html\"> Configure a VPC for Amazon WorkSpaces</a>.</p>"
        },
        "DefaultOu": {
          "shape": "DefaultOu",
          "documentation": "<p>The organizational unit (OU) in the directory for the WorkSpace machine accounts.</p>"
        },
        "CustomSecurityGroupId": {
          "shape": "SecurityGroupId",
          "documentation": "<p>The identifier of the default security group to apply to WorkSpaces when they are created. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html\"> Security Groups for Your WorkSpaces</a>.</p>"
        },
        "UserEnabledAsLocalAdministrator": {
          "shape": "BooleanObject",
          "documentation": "<p>Specifies whether WorkSpace users are local administrators on their WorkSpaces.</p>"
        },
        "EnableMaintenanceMode": {
          "shape": "BooleanObject",
          "documentation": "<p>Specifies whether maintenance mode is enabled for WorkSpaces. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html\">WorkSpace Maintenance</a>.</p>"
        }
      },
      "documentation": "<p>Describes the default values that are used to create WorkSpaces. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html\">Update Directory Details for Your WorkSpaces</a>.</p>"
    },
    "DeleteConnectionAliasRequest": {
      "type": "structure",
      "required": [
        "AliasId"
      ],
      "members": {
        "AliasId": {
          "shape": "ConnectionAliasId",
          "documentation": "<p>The identifier of the connection alias to delete.</p>"
        }
      }
    },
    "DeleteConnectionAliasResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteIpGroupRequest": {
      "type": "structure",
      "required": [
        "GroupId"
      ],
      "members": {
        "GroupId": {
          "shape": "IpGroupId",
          "documentation": "<p>The identifier of the IP access control group.</p>"
        }
      }
    },
    "DeleteIpGroupResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "TagKeys"
      ],
      "members": {
        "ResourceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces, registered directories, images, custom bundles, IP access control groups, and connection aliases.</p>"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The tag keys.</p>"
        }
      }
    },
    "DeleteTagsResult": {
      "type": "structure",
      "members": {}
    },
    "DeleteWorkspaceImageRequest": {
      "type": "structure",
      "required": [
        "ImageId"
      ],
      "members": {
        "ImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The identifier of the image.</p>"
        }
      }
    },
    "DeleteWorkspaceImageResult": {
      "type": "structure",
      "members": {}
    },
    "DeregisterWorkspaceDirectoryRequest": {
      "type": "structure",
      "required": [
        "DirectoryId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory. If any WorkSpaces are registered to this directory, you must remove them before you deregister the directory, or you will receive an OperationNotSupportedException error.</p>"
        }
      }
    },
    "DeregisterWorkspaceDirectoryResult": {
      "type": "structure",
      "members": {}
    },
    "DescribeAccountModificationsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"
        }
      }
    },
    "DescribeAccountModificationsResult": {
      "type": "structure",
      "members": {
        "AccountModifications": {
          "shape": "AccountModificationList",
          "documentation": "<p>The list of modifications to the configuration of BYOL.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "DescribeAccountRequest": {
      "type": "structure",
      "members": {}
    },
    "DescribeAccountResult": {
      "type": "structure",
      "members": {
        "DedicatedTenancySupport": {
          "shape": "DedicatedTenancySupportResultEnum",
          "documentation": "<p>The status of BYOL (whether BYOL is enabled or disabled).</p>"
        },
        "DedicatedTenancyManagementCidrRange": {
          "shape": "DedicatedTenancyManagementCidrRange",
          "documentation": "<p>The IP address range, specified as an IPv4 CIDR block, used for the management network interface.</p> <p>The management network interface is connected to a secure Amazon WorkSpaces management network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>"
        }
      }
    },
    "DescribeClientPropertiesRequest": {
      "type": "structure",
      "required": [
        "ResourceIds"
      ],
      "members": {
        "ResourceIds": {
          "shape": "ResourceIdList",
          "documentation": "<p>The resource identifier, in the form of directory IDs.</p>"
        }
      }
    },
    "DescribeClientPropertiesResult": {
      "type": "structure",
      "members": {
        "ClientPropertiesList": {
          "shape": "ClientPropertiesList",
          "documentation": "<p>Information about the specified Amazon WorkSpaces clients.</p>"
        }
      }
    },
    "DescribeConnectionAliasPermissionsRequest": {
      "type": "structure",
      "required": [
        "AliasId"
      ],
      "members": {
        "AliasId": {
          "shape": "ConnectionAliasId",
          "documentation": "<p>The identifier of the connection alias.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results. </p>"
        },
        "MaxResults": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of results to return.</p>"
        }
      }
    },
    "DescribeConnectionAliasPermissionsResult": {
      "type": "structure",
      "members": {
        "AliasId": {
          "shape": "ConnectionAliasId",
          "documentation": "<p>The identifier of the connection alias.</p>"
        },
        "ConnectionAliasPermissions": {
          "shape": "ConnectionAliasPermissions",
          "documentation": "<p>The permissions associated with a connection alias.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "DescribeConnectionAliasesRequest": {
      "type": "structure",
      "members": {
        "AliasIds": {
          "shape": "ConnectionAliasIdList",
          "documentation": "<p>The identifiers of the connection aliases to describe.</p>"
        },
        "ResourceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the directory associated with the connection alias.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of connection aliases to return.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results. </p>"
        }
      }
    },
    "DescribeConnectionAliasesResult": {
      "type": "structure",
      "members": {
        "ConnectionAliases": {
          "shape": "ConnectionAliasList",
          "documentation": "<p>Information about the specified connection aliases.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "DescribeIpGroupsRequest": {
      "type": "structure",
      "members": {
        "GroupIds": {
          "shape": "IpGroupIdList",
          "documentation": "<p>The identifiers of one or more IP access control groups.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"
        },
        "MaxResults": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of items to return.</p>"
        }
      }
    },
    "DescribeIpGroupsResult": {
      "type": "structure",
      "members": {
        "Result": {
          "shape": "WorkspacesIpGroupsList",
          "documentation": "<p>Information about the IP access control groups.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "DescribeTagsRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "ResourceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces, registered directories, images, custom bundles, IP access control groups, and connection aliases.</p>"
        }
      }
    },
    "DescribeTagsResult": {
      "type": "structure",
      "members": {
        "TagList": {
          "shape": "TagList",
          "documentation": "<p>The tags.</p>"
        }
      }
    },
    "DescribeWorkspaceBundlesRequest": {
      "type": "structure",
      "members": {
        "BundleIds": {
          "shape": "BundleIdList",
          "documentation": "<p>The identifiers of the bundles. You cannot combine this parameter with any other filter.</p>"
        },
        "Owner": {
          "shape": "BundleOwner",
          "documentation": "<p>The owner of the bundles. You cannot combine this parameter with any other filter.</p> <p>Specify <code>AMAZON</code> to describe the bundles provided by AWS or null to describe the bundles that belong to your account.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token for the next set of results. (You received this token from a previous call.)</p>"
        }
      }
    },
    "DescribeWorkspaceBundlesResult": {
      "type": "structure",
      "members": {
        "Bundles": {
          "shape": "BundleList",
          "documentation": "<p>Information about the bundles.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if there are no more results available. This token is valid for one day and must be used within that time frame.</p>"
        }
      }
    },
    "DescribeWorkspaceDirectoriesRequest": {
      "type": "structure",
      "members": {
        "DirectoryIds": {
          "shape": "DirectoryIdList",
          "documentation": "<p>The identifiers of the directories. If the value is null, all directories are retrieved.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of directories to return.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"
        }
      }
    },
    "DescribeWorkspaceDirectoriesResult": {
      "type": "structure",
      "members": {
        "Directories": {
          "shape": "DirectoryList",
          "documentation": "<p>Information about the directories.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "DescribeWorkspaceImagePermissionsRequest": {
      "type": "structure",
      "required": [
        "ImageId"
      ],
      "members": {
        "ImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The identifier of the image.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"
        },
        "MaxResults": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of items to return.</p>"
        }
      }
    },
    "DescribeWorkspaceImagePermissionsResult": {
      "type": "structure",
      "members": {
        "ImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The identifier of the image.</p>"
        },
        "ImagePermissions": {
          "shape": "ImagePermissions",
          "documentation": "<p>The identifiers of the AWS accounts that the image has been shared with.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "DescribeWorkspaceImagesRequest": {
      "type": "structure",
      "members": {
        "ImageIds": {
          "shape": "WorkspaceImageIdList",
          "documentation": "<p>The identifier of the image.</p>"
        },
        "ImageType": {
          "shape": "ImageType",
          "documentation": "<p>The type (owned or shared) of the image.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"
        },
        "MaxResults": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of items to return.</p>"
        }
      }
    },
    "DescribeWorkspaceImagesResult": {
      "type": "structure",
      "members": {
        "Images": {
          "shape": "WorkspaceImageList",
          "documentation": "<p>Information about the images.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "DescribeWorkspaceSnapshotsRequest": {
      "type": "structure",
      "required": [
        "WorkspaceId"
      ],
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        }
      }
    },
    "DescribeWorkspaceSnapshotsResult": {
      "type": "structure",
      "members": {
        "RebuildSnapshots": {
          "shape": "SnapshotList",
          "documentation": "<p>Information about the snapshots that can be used to rebuild a WorkSpace. These snapshots include the user volume.</p>"
        },
        "RestoreSnapshots": {
          "shape": "SnapshotList",
          "documentation": "<p>Information about the snapshots that can be used to restore a WorkSpace. These snapshots include both the root volume and the user volume.</p>"
        }
      }
    },
    "DescribeWorkspacesConnectionStatusRequest": {
      "type": "structure",
      "members": {
        "WorkspaceIds": {
          "shape": "WorkspaceIdList",
          "documentation": "<p>The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"
        }
      }
    },
    "DescribeWorkspacesConnectionStatusResult": {
      "type": "structure",
      "members": {
        "WorkspacesConnectionStatus": {
          "shape": "WorkspaceConnectionStatusList",
          "documentation": "<p>Information about the connection status of the WorkSpace.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "DescribeWorkspacesRequest": {
      "type": "structure",
      "members": {
        "WorkspaceIds": {
          "shape": "WorkspaceIdList",
          "documentation": "<p>The identifiers of the WorkSpaces. You cannot combine this parameter with any other filter.</p> <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>"
        },
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory. In addition, you can optionally specify a specific directory user (see <code>UserName</code>). You cannot combine this parameter with any other filter.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The name of the directory user. You must specify this parameter with <code>DirectoryId</code>.</p>"
        },
        "BundleId": {
          "shape": "BundleId",
          "documentation": "<p>The identifier of the bundle. All WorkSpaces that are created from this bundle are retrieved. You cannot combine this parameter with any other filter.</p>"
        },
        "Limit": {
          "shape": "Limit",
          "documentation": "<p>The maximum number of items to return.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"
        }
      }
    },
    "DescribeWorkspacesResult": {
      "type": "structure",
      "members": {
        "Workspaces": {
          "shape": "WorkspaceList",
          "documentation": "<p>Information about the WorkSpaces.</p> <p>Because <a>CreateWorkspaces</a> is an asynchronous operation, some of the returned information could be incomplete.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "Description": {
      "type": "string"
    },
    "DirectoryId": {
      "type": "string",
      "max": 65,
      "min": 10,
      "pattern": "^d-[0-9a-f]{8,63}$"
    },
    "DirectoryIdList": {
      "type": "list",
      "member": {
        "shape": "DirectoryId"
      },
      "max": 25,
      "min": 1
    },
    "DirectoryList": {
      "type": "list",
      "member": {
        "shape": "WorkspaceDirectory"
      }
    },
    "DirectoryName": {
      "type": "string"
    },
    "DisassociateConnectionAliasRequest": {
      "type": "structure",
      "required": [
        "AliasId"
      ],
      "members": {
        "AliasId": {
          "shape": "ConnectionAliasId",
          "documentation": "<p>The identifier of the connection alias to disassociate.</p>"
        }
      }
    },
    "DisassociateConnectionAliasResult": {
      "type": "structure",
      "members": {}
    },
    "DisassociateIpGroupsRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "GroupIds"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "GroupIds": {
          "shape": "IpGroupIdList",
          "documentation": "<p>The identifiers of one or more IP access control groups.</p>"
        }
      }
    },
    "DisassociateIpGroupsResult": {
      "type": "structure",
      "members": {}
    },
    "DnsIpAddresses": {
      "type": "list",
      "member": {
        "shape": "IpAddress"
      }
    },
    "Ec2ImageId": {
      "type": "string",
      "pattern": "^ami\\-([a-f0-9]{8}|[a-f0-9]{17})$"
    },
    "ErrorType": {
      "type": "string"
    },
    "FailedCreateWorkspaceRequest": {
      "type": "structure",
      "members": {
        "WorkspaceRequest": {
          "shape": "WorkspaceRequest",
          "documentation": "<p>Information about the WorkSpace.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorType",
          "documentation": "<p>The error code that is returned if the WorkSpace cannot be created.</p>"
        },
        "ErrorMessage": {
          "shape": "Description",
          "documentation": "<p>The text of the error message that is returned if the WorkSpace cannot be created.</p>"
        }
      },
      "documentation": "<p>Describes a WorkSpace that cannot be created.</p>"
    },
    "FailedCreateWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "FailedCreateWorkspaceRequest"
      }
    },
    "FailedRebootWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "FailedWorkspaceChangeRequest"
      }
    },
    "FailedRebuildWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "FailedWorkspaceChangeRequest"
      }
    },
    "FailedStartWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "FailedWorkspaceChangeRequest"
      }
    },
    "FailedStopWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "FailedWorkspaceChangeRequest"
      }
    },
    "FailedTerminateWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "FailedWorkspaceChangeRequest"
      }
    },
    "FailedWorkspaceChangeRequest": {
      "type": "structure",
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        },
        "ErrorCode": {
          "shape": "ErrorType",
          "documentation": "<p>The error code that is returned if the WorkSpace cannot be rebooted.</p>"
        },
        "ErrorMessage": {
          "shape": "Description",
          "documentation": "<p>The text of the error message that is returned if the WorkSpace cannot be rebooted.</p>"
        }
      },
      "documentation": "<p>Describes a WorkSpace that could not be rebooted. (<a>RebootWorkspaces</a>), rebuilt (<a>RebuildWorkspaces</a>), restored (<a>RestoreWorkspace</a>), terminated (<a>TerminateWorkspaces</a>), started (<a>StartWorkspaces</a>), or stopped (<a>StopWorkspaces</a>).</p>"
    },
    "ImagePermission": {
      "type": "structure",
      "members": {
        "SharedAccountId": {
          "shape": "AwsAccount",
          "documentation": "<p>The identifier of the AWS account that an image has been shared with.</p>"
        }
      },
      "documentation": "<p>Describes the AWS accounts that have been granted permission to use a shared image.</p>"
    },
    "ImagePermissions": {
      "type": "list",
      "member": {
        "shape": "ImagePermission"
      }
    },
    "ImageType": {
      "type": "string",
      "enum": [
        "OWNED",
        "SHARED"
      ]
    },
    "ImportWorkspaceImageRequest": {
      "type": "structure",
      "required": [
        "Ec2ImageId",
        "IngestionProcess",
        "ImageName",
        "ImageDescription"
      ],
      "members": {
        "Ec2ImageId": {
          "shape": "Ec2ImageId",
          "documentation": "<p>The identifier of the EC2 image.</p>"
        },
        "IngestionProcess": {
          "shape": "WorkspaceImageIngestionProcess",
          "documentation": "<p>The ingestion process to be used when importing the image. For non-GPU-enabled bundles (bundles other than Graphics or GraphicsPro), specify <code>BYOL_REGULAR</code>.</p>"
        },
        "ImageName": {
          "shape": "WorkspaceImageName",
          "documentation": "<p>The name of the WorkSpace image.</p>"
        },
        "ImageDescription": {
          "shape": "WorkspaceImageDescription",
          "documentation": "<p>The description of the WorkSpace image.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>"
        },
        "Applications": {
          "shape": "ApplicationList",
          "documentation": "<p>If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10 BYOL images. For more information about subscribing to Office for BYOL images, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\"> Bring Your Own Windows Desktop Licenses</a>.</p> <note> <p>Although this parameter is an array, only one item is allowed at this time.</p> </note>"
        }
      }
    },
    "ImportWorkspaceImageResult": {
      "type": "structure",
      "members": {
        "ImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The identifier of the WorkSpace image.</p>"
        }
      }
    },
    "IpAddress": {
      "type": "string"
    },
    "IpGroupDesc": {
      "type": "string"
    },
    "IpGroupId": {
      "type": "string",
      "pattern": "wsipg-[0-9a-z]{8,63}$"
    },
    "IpGroupIdList": {
      "type": "list",
      "member": {
        "shape": "IpGroupId"
      }
    },
    "IpGroupName": {
      "type": "string"
    },
    "IpRevokedRuleList": {
      "type": "list",
      "member": {
        "shape": "IpRule"
      }
    },
    "IpRule": {
      "type": "string"
    },
    "IpRuleDesc": {
      "type": "string"
    },
    "IpRuleItem": {
      "type": "structure",
      "members": {
        "ipRule": {
          "shape": "IpRule",
          "documentation": "<p>The IP address range, in CIDR notation.</p>"
        },
        "ruleDesc": {
          "shape": "IpRuleDesc",
          "documentation": "<p>The description.</p>"
        }
      },
      "documentation": "<p>Describes a rule for an IP access control group.</p>"
    },
    "IpRuleList": {
      "type": "list",
      "member": {
        "shape": "IpRuleItem"
      }
    },
    "Limit": {
      "type": "integer",
      "max": 25,
      "min": 1
    },
    "ListAvailableManagementCidrRangesRequest": {
      "type": "structure",
      "required": [
        "ManagementCidrRangeConstraint"
      ],
      "members": {
        "ManagementCidrRangeConstraint": {
          "shape": "ManagementCidrRangeConstraint",
          "documentation": "<p>The IP address range to search. Specify an IP address range that is compatible with your network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).</p>"
        },
        "MaxResults": {
          "shape": "ManagementCidrRangeMaxResults",
          "documentation": "<p>The maximum number of items to return.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>"
        }
      }
    },
    "ListAvailableManagementCidrRangesResult": {
      "type": "structure",
      "members": {
        "ManagementCidrRanges": {
          "shape": "DedicatedTenancyCidrRangeList",
          "documentation": "<p>The list of available IP address ranges, specified as IPv4 CIDR blocks.</p>"
        },
        "NextToken": {
          "shape": "PaginationToken",
          "documentation": "<p>The token to use to retrieve the next set of results, or null if no more results are available.</p>"
        }
      }
    },
    "ManagementCidrRangeConstraint": {
      "type": "string",
      "pattern": "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(3[0-2]|[1-2][0-9]|[0-9]))$"
    },
    "ManagementCidrRangeMaxResults": {
      "type": "integer",
      "max": 5,
      "min": 1
    },
    "MigrateWorkspaceRequest": {
      "type": "structure",
      "required": [
        "SourceWorkspaceId",
        "BundleId"
      ],
      "members": {
        "SourceWorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace to migrate from.</p>"
        },
        "BundleId": {
          "shape": "BundleId",
          "documentation": "<p>The identifier of the target bundle type to migrate the WorkSpace to.</p>"
        }
      }
    },
    "MigrateWorkspaceResult": {
      "type": "structure",
      "members": {
        "SourceWorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The original identifier of the WorkSpace that is being migrated.</p>"
        },
        "TargetWorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The new identifier of the WorkSpace that is being migrated. If the migration does not succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the original WorkSpace ID.</p>"
        }
      }
    },
    "ModificationResourceEnum": {
      "type": "string",
      "enum": [
        "ROOT_VOLUME",
        "USER_VOLUME",
        "COMPUTE_TYPE"
      ]
    },
    "ModificationState": {
      "type": "structure",
      "members": {
        "Resource": {
          "shape": "ModificationResourceEnum",
          "documentation": "<p>The resource.</p>"
        },
        "State": {
          "shape": "ModificationStateEnum",
          "documentation": "<p>The modification state.</p>"
        }
      },
      "documentation": "<p>Describes a WorkSpace modification.</p>"
    },
    "ModificationStateEnum": {
      "type": "string",
      "enum": [
        "UPDATE_INITIATED",
        "UPDATE_IN_PROGRESS"
      ]
    },
    "ModificationStateList": {
      "type": "list",
      "member": {
        "shape": "ModificationState"
      }
    },
    "ModifyAccountRequest": {
      "type": "structure",
      "members": {
        "DedicatedTenancySupport": {
          "shape": "DedicatedTenancySupportEnum",
          "documentation": "<p>The status of BYOL.</p>"
        },
        "DedicatedTenancyManagementCidrRange": {
          "shape": "DedicatedTenancyManagementCidrRange",
          "documentation": "<p>The IP address range, specified as an IPv4 CIDR block, for the management network interface. Specify an IP address range that is compatible with your network and in CIDR notation (that is, specify the range as an IPv4 CIDR block). The CIDR block size must be /16 (for example, 203.0.113.25/16). It must also be specified as available by the <code>ListAvailableManagementCidrRanges</code> operation.</p>"
        }
      }
    },
    "ModifyAccountResult": {
      "type": "structure",
      "members": {}
    },
    "ModifyClientPropertiesRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "ClientProperties"
      ],
      "members": {
        "ResourceId": {
          "shape": "NonEmptyString",
          "documentation": "<p>The resource identifiers, in the form of directory IDs.</p>"
        },
        "ClientProperties": {
          "shape": "ClientProperties",
          "documentation": "<p>Information about the Amazon WorkSpaces client.</p>"
        }
      }
    },
    "ModifyClientPropertiesResult": {
      "type": "structure",
      "members": {}
    },
    "ModifySelfservicePermissionsRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "SelfservicePermissions"
      ],
      "members": {
        "ResourceId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "SelfservicePermissions": {
          "shape": "SelfservicePermissions",
          "documentation": "<p>The permissions to enable or disable self-service capabilities.</p>"
        }
      }
    },
    "ModifySelfservicePermissionsResult": {
      "type": "structure",
      "members": {}
    },
    "ModifyWorkspaceAccessPropertiesRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "WorkspaceAccessProperties"
      ],
      "members": {
        "ResourceId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "WorkspaceAccessProperties": {
          "shape": "WorkspaceAccessProperties",
          "documentation": "<p>The device types and operating systems to enable or disable for access.</p>"
        }
      }
    },
    "ModifyWorkspaceAccessPropertiesResult": {
      "type": "structure",
      "members": {}
    },
    "ModifyWorkspaceCreationPropertiesRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "WorkspaceCreationProperties"
      ],
      "members": {
        "ResourceId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory.</p>"
        },
        "WorkspaceCreationProperties": {
          "shape": "WorkspaceCreationProperties",
          "documentation": "<p>The default properties for creating WorkSpaces.</p>"
        }
      }
    },
    "ModifyWorkspaceCreationPropertiesResult": {
      "type": "structure",
      "members": {}
    },
    "ModifyWorkspacePropertiesRequest": {
      "type": "structure",
      "required": [
        "WorkspaceId",
        "WorkspaceProperties"
      ],
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        },
        "WorkspaceProperties": {
          "shape": "WorkspaceProperties",
          "documentation": "<p>The properties of the WorkSpace.</p>"
        }
      }
    },
    "ModifyWorkspacePropertiesResult": {
      "type": "structure",
      "members": {}
    },
    "ModifyWorkspaceStateRequest": {
      "type": "structure",
      "required": [
        "WorkspaceId",
        "WorkspaceState"
      ],
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        },
        "WorkspaceState": {
          "shape": "TargetWorkspaceState",
          "documentation": "<p>The WorkSpace state.</p>"
        }
      }
    },
    "ModifyWorkspaceStateResult": {
      "type": "structure",
      "members": {}
    },
    "NonEmptyString": {
      "type": "string",
      "min": 1
    },
    "OperatingSystem": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "OperatingSystemType",
          "documentation": "<p>The operating system.</p>"
        }
      },
      "documentation": "<p>The operating system that the image is running.</p>"
    },
    "OperatingSystemType": {
      "type": "string",
      "enum": [
        "WINDOWS",
        "LINUX"
      ]
    },
    "PaginationToken": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "RebootRequest": {
      "type": "structure",
      "required": [
        "WorkspaceId"
      ],
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        }
      },
      "documentation": "<p>Describes the information used to reboot a WorkSpace.</p>"
    },
    "RebootWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "RebootRequest"
      },
      "max": 25,
      "min": 1
    },
    "RebootWorkspacesRequest": {
      "type": "structure",
      "required": [
        "RebootWorkspaceRequests"
      ],
      "members": {
        "RebootWorkspaceRequests": {
          "shape": "RebootWorkspaceRequests",
          "documentation": "<p>The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.</p>"
        }
      }
    },
    "RebootWorkspacesResult": {
      "type": "structure",
      "members": {
        "FailedRequests": {
          "shape": "FailedRebootWorkspaceRequests",
          "documentation": "<p>Information about the WorkSpaces that could not be rebooted.</p>"
        }
      }
    },
    "RebuildRequest": {
      "type": "structure",
      "required": [
        "WorkspaceId"
      ],
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        }
      },
      "documentation": "<p>Describes the information used to rebuild a WorkSpace.</p>"
    },
    "RebuildWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "RebuildRequest"
      },
      "max": 1,
      "min": 1
    },
    "RebuildWorkspacesRequest": {
      "type": "structure",
      "required": [
        "RebuildWorkspaceRequests"
      ],
      "members": {
        "RebuildWorkspaceRequests": {
          "shape": "RebuildWorkspaceRequests",
          "documentation": "<p>The WorkSpace to rebuild. You can specify a single WorkSpace.</p>"
        }
      }
    },
    "RebuildWorkspacesResult": {
      "type": "structure",
      "members": {
        "FailedRequests": {
          "shape": "FailedRebuildWorkspaceRequests",
          "documentation": "<p>Information about the WorkSpace that could not be rebuilt.</p>"
        }
      }
    },
    "ReconnectEnum": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "Region": {
      "type": "string",
      "max": 31,
      "min": 1,
      "pattern": "^[-0-9a-z]{1,31}$"
    },
    "RegisterWorkspaceDirectoryRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "EnableWorkDocs"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the directory. You cannot register a directory if it does not have a status of Active. If the directory does not have a status of Active, you will receive an InvalidResourceStateException error. If you have already registered the maximum number of directories that you can register with Amazon WorkSpaces, you will receive a ResourceLimitExceededException error. Deregister directories that you are not using for WorkSpaces, and try again.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The identifiers of the subnets for your virtual private cloud (VPC). Make sure that the subnets are in supported Availability Zones. The subnets must also be in separate Availability Zones. If these conditions are not met, you will receive an OperationNotSupportedException error.</p>"
        },
        "EnableWorkDocs": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether Amazon WorkDocs is enabled or disabled. If you have enabled this parameter and WorkDocs is not available in the Region, you will receive an OperationNotSupportedException error. Set <code>EnableWorkDocs</code> to disabled, and try again.</p>"
        },
        "EnableSelfService": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether self-service capabilities are enabled or disabled.</p>"
        },
        "Tenancy": {
          "shape": "Tenancy",
          "documentation": "<p>Indicates whether your WorkSpace directory is dedicated or shared. To use Bring Your Own License (BYOL) images, this value must be set to <code>DEDICATED</code> and your AWS account must be enabled for BYOL. If your account has not been enabled for BYOL, you will receive an InvalidParameterValuesException error. For more information about BYOL images, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring Your Own Windows Desktop Images</a>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags associated with the directory.</p>"
        }
      }
    },
    "RegisterWorkspaceDirectoryResult": {
      "type": "structure",
      "members": {}
    },
    "RegistrationCode": {
      "type": "string",
      "max": 20,
      "min": 1
    },
    "ResourceIdList": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      },
      "max": 25,
      "min": 1
    },
    "RestoreWorkspaceRequest": {
      "type": "structure",
      "required": [
        "WorkspaceId"
      ],
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        }
      }
    },
    "RestoreWorkspaceResult": {
      "type": "structure",
      "members": {}
    },
    "RevokeIpRulesRequest": {
      "type": "structure",
      "required": [
        "GroupId",
        "UserRules"
      ],
      "members": {
        "GroupId": {
          "shape": "IpGroupId",
          "documentation": "<p>The identifier of the group.</p>"
        },
        "UserRules": {
          "shape": "IpRevokedRuleList",
          "documentation": "<p>The rules to remove from the group.</p>"
        }
      }
    },
    "RevokeIpRulesResult": {
      "type": "structure",
      "members": {}
    },
    "RootStorage": {
      "type": "structure",
      "members": {
        "Capacity": {
          "shape": "NonEmptyString",
          "documentation": "<p>The size of the root volume.</p>"
        }
      },
      "documentation": "<p>Describes the root volume for a WorkSpace bundle.</p>"
    },
    "RootVolumeSizeGib": {
      "type": "integer"
    },
    "RunningMode": {
      "type": "string",
      "enum": [
        "AUTO_STOP",
        "ALWAYS_ON"
      ]
    },
    "RunningModeAutoStopTimeoutInMinutes": {
      "type": "integer"
    },
    "SecurityGroupId": {
      "type": "string",
      "max": 20,
      "min": 11,
      "pattern": "^(sg-([0-9a-f]{8}|[0-9a-f]{17}))$"
    },
    "SelfservicePermissions": {
      "type": "structure",
      "members": {
        "RestartWorkspace": {
          "shape": "ReconnectEnum",
          "documentation": "<p>Specifies whether users can restart their WorkSpace.</p>"
        },
        "IncreaseVolumeSize": {
          "shape": "ReconnectEnum",
          "documentation": "<p>Specifies whether users can increase the volume size of the drives on their WorkSpace.</p>"
        },
        "ChangeComputeType": {
          "shape": "ReconnectEnum",
          "documentation": "<p>Specifies whether users can change the compute type (bundle) for their WorkSpace.</p>"
        },
        "SwitchRunningMode": {
          "shape": "ReconnectEnum",
          "documentation": "<p>Specifies whether users can switch the running mode of their WorkSpace.</p>"
        },
        "RebuildWorkspace": {
          "shape": "ReconnectEnum",
          "documentation": "<p>Specifies whether users can rebuild the operating system of a WorkSpace to its original state.</p>"
        }
      },
      "documentation": "<p>Describes the self-service permissions for a directory. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html\">Enable Self-Service WorkSpace Management Capabilities for Your Users</a>.</p>"
    },
    "Snapshot": {
      "type": "structure",
      "members": {
        "SnapshotTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time when the snapshot was created.</p>"
        }
      },
      "documentation": "<p>Describes a snapshot.</p>"
    },
    "SnapshotList": {
      "type": "list",
      "member": {
        "shape": "Snapshot"
      }
    },
    "StartRequest": {
      "type": "structure",
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        }
      },
      "documentation": "<p>Information used to start a WorkSpace.</p>"
    },
    "StartWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "StartRequest"
      },
      "max": 25,
      "min": 1
    },
    "StartWorkspacesRequest": {
      "type": "structure",
      "required": [
        "StartWorkspaceRequests"
      ],
      "members": {
        "StartWorkspaceRequests": {
          "shape": "StartWorkspaceRequests",
          "documentation": "<p>The WorkSpaces to start. You can specify up to 25 WorkSpaces.</p>"
        }
      }
    },
    "StartWorkspacesResult": {
      "type": "structure",
      "members": {
        "FailedRequests": {
          "shape": "FailedStartWorkspaceRequests",
          "documentation": "<p>Information about the WorkSpaces that could not be started.</p>"
        }
      }
    },
    "StopRequest": {
      "type": "structure",
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        }
      },
      "documentation": "<p>Describes the information used to stop a WorkSpace.</p>"
    },
    "StopWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "StopRequest"
      },
      "max": 25,
      "min": 1
    },
    "StopWorkspacesRequest": {
      "type": "structure",
      "required": [
        "StopWorkspaceRequests"
      ],
      "members": {
        "StopWorkspaceRequests": {
          "shape": "StopWorkspaceRequests",
          "documentation": "<p>The WorkSpaces to stop. You can specify up to 25 WorkSpaces.</p>"
        }
      }
    },
    "StopWorkspacesResult": {
      "type": "structure",
      "members": {
        "FailedRequests": {
          "shape": "FailedStopWorkspaceRequests",
          "documentation": "<p>Information about the WorkSpaces that could not be stopped.</p>"
        }
      }
    },
    "SubnetId": {
      "type": "string",
      "max": 24,
      "min": 15,
      "pattern": "^(subnet-([0-9a-f]{8}|[0-9a-f]{17}))$"
    },
    "SubnetIds": {
      "type": "list",
      "member": {
        "shape": "SubnetId"
      },
      "max": 2
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>The key of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The value of the tag.</p>"
        }
      },
      "documentation": "<p>Describes a tag.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 127,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "NonEmptyString"
      }
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TagValue": {
      "type": "string",
      "max": 255
    },
    "TargetWorkspaceState": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "ADMIN_MAINTENANCE"
      ]
    },
    "Tenancy": {
      "type": "string",
      "enum": [
        "DEDICATED",
        "SHARED"
      ]
    },
    "TerminateRequest": {
      "type": "structure",
      "required": [
        "WorkspaceId"
      ],
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        }
      },
      "documentation": "<p>Describes the information used to terminate a WorkSpace.</p>"
    },
    "TerminateWorkspaceRequests": {
      "type": "list",
      "member": {
        "shape": "TerminateRequest"
      },
      "max": 25,
      "min": 1
    },
    "TerminateWorkspacesRequest": {
      "type": "structure",
      "required": [
        "TerminateWorkspaceRequests"
      ],
      "members": {
        "TerminateWorkspaceRequests": {
          "shape": "TerminateWorkspaceRequests",
          "documentation": "<p>The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.</p>"
        }
      }
    },
    "TerminateWorkspacesResult": {
      "type": "structure",
      "members": {
        "FailedRequests": {
          "shape": "FailedTerminateWorkspaceRequests",
          "documentation": "<p>Information about the WorkSpaces that could not be terminated.</p>"
        }
      }
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UpdateConnectionAliasPermissionRequest": {
      "type": "structure",
      "required": [
        "AliasId",
        "ConnectionAliasPermission"
      ],
      "members": {
        "AliasId": {
          "shape": "ConnectionAliasId",
          "documentation": "<p>The identifier of the connection alias that you want to update permissions for.</p>"
        },
        "ConnectionAliasPermission": {
          "shape": "ConnectionAliasPermission",
          "documentation": "<p>Indicates whether to share or unshare the connection alias with the specified AWS account.</p>"
        }
      }
    },
    "UpdateConnectionAliasPermissionResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateRulesOfIpGroupRequest": {
      "type": "structure",
      "required": [
        "GroupId",
        "UserRules"
      ],
      "members": {
        "GroupId": {
          "shape": "IpGroupId",
          "documentation": "<p>The identifier of the group.</p>"
        },
        "UserRules": {
          "shape": "IpRuleList",
          "documentation": "<p>One or more rules.</p>"
        }
      }
    },
    "UpdateRulesOfIpGroupResult": {
      "type": "structure",
      "members": {}
    },
    "UpdateWorkspaceImagePermissionRequest": {
      "type": "structure",
      "required": [
        "ImageId",
        "AllowCopyImage",
        "SharedAccountId"
      ],
      "members": {
        "ImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The identifier of the image.</p>"
        },
        "AllowCopyImage": {
          "shape": "BooleanObject",
          "documentation": "<p>The permission to copy the image. This permission can be revoked only after an image has been shared.</p>"
        },
        "SharedAccountId": {
          "shape": "AwsAccount",
          "documentation": "<p>The identifier of the AWS account to share or unshare the image with.</p>"
        }
      }
    },
    "UpdateWorkspaceImagePermissionResult": {
      "type": "structure",
      "members": {}
    },
    "UserName": {
      "type": "string",
      "max": 63,
      "min": 1
    },
    "UserStorage": {
      "type": "structure",
      "members": {
        "Capacity": {
          "shape": "NonEmptyString",
          "documentation": "<p>The size of the user storage.</p>"
        }
      },
      "documentation": "<p>Describes the user storage for a WorkSpace bundle.</p>"
    },
    "UserVolumeSizeGib": {
      "type": "integer"
    },
    "VolumeEncryptionKey": {
      "type": "string"
    },
    "Workspace": {
      "type": "structure",
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        },
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the AWS Directory Service directory for the WorkSpace.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The user for the WorkSpace.</p>"
        },
        "IpAddress": {
          "shape": "IpAddress",
          "documentation": "<p>The IP address of the WorkSpace.</p>"
        },
        "State": {
          "shape": "WorkspaceState",
          "documentation": "<p>The operational state of the WorkSpace.</p>"
        },
        "BundleId": {
          "shape": "BundleId",
          "documentation": "<p>The identifier of the bundle used to create the WorkSpace.</p>"
        },
        "SubnetId": {
          "shape": "SubnetId",
          "documentation": "<p>The identifier of the subnet for the WorkSpace.</p>"
        },
        "ErrorMessage": {
          "shape": "Description",
          "documentation": "<p>The text of the error message that is returned if the WorkSpace cannot be created.</p>"
        },
        "ErrorCode": {
          "shape": "WorkspaceErrorCode",
          "documentation": "<p>The error code that is returned if the WorkSpace cannot be created.</p>"
        },
        "ComputerName": {
          "shape": "ComputerName",
          "documentation": "<p>The name of the WorkSpace, as seen by the operating system. The format of this name varies. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/launch-workspaces-tutorials.html\"> Launch a WorkSpace</a>. </p>"
        },
        "VolumeEncryptionKey": {
          "shape": "VolumeEncryptionKey",
          "documentation": "<p>The symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.</p>"
        },
        "UserVolumeEncryptionEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether the data stored on the user volume is encrypted.</p>"
        },
        "RootVolumeEncryptionEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether the data stored on the root volume is encrypted.</p>"
        },
        "WorkspaceProperties": {
          "shape": "WorkspaceProperties",
          "documentation": "<p>The properties of the WorkSpace.</p>"
        },
        "ModificationStates": {
          "shape": "ModificationStateList",
          "documentation": "<p>The modification states of the WorkSpace.</p>"
        }
      },
      "documentation": "<p>Describes a WorkSpace.</p>"
    },
    "WorkspaceAccessProperties": {
      "type": "structure",
      "members": {
        "DeviceTypeWindows": {
          "shape": "AccessPropertyValue",
          "documentation": "<p>Indicates whether users can use Windows clients to access their WorkSpaces. To restrict WorkSpaces access to trusted devices (also known as managed devices) with valid certificates, specify a value of <code>TRUST</code>. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html\">Restrict WorkSpaces Access to Trusted Devices</a>. </p>"
        },
        "DeviceTypeOsx": {
          "shape": "AccessPropertyValue",
          "documentation": "<p>Indicates whether users can use macOS clients to access their WorkSpaces. To restrict WorkSpaces access to trusted devices (also known as managed devices) with valid certificates, specify a value of <code>TRUST</code>. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/trusted-devices.html\">Restrict WorkSpaces Access to Trusted Devices</a>. </p>"
        },
        "DeviceTypeWeb": {
          "shape": "AccessPropertyValue",
          "documentation": "<p>Indicates whether users can access their WorkSpaces through a web browser.</p>"
        },
        "DeviceTypeIos": {
          "shape": "AccessPropertyValue",
          "documentation": "<p>Indicates whether users can use iOS devices to access their WorkSpaces.</p>"
        },
        "DeviceTypeAndroid": {
          "shape": "AccessPropertyValue",
          "documentation": "<p>Indicates whether users can use Android devices to access their WorkSpaces.</p>"
        },
        "DeviceTypeChromeOs": {
          "shape": "AccessPropertyValue",
          "documentation": "<p>Indicates whether users can use Chromebooks to access their WorkSpaces.</p>"
        },
        "DeviceTypeZeroClient": {
          "shape": "AccessPropertyValue",
          "documentation": "<p>Indicates whether users can use zero client devices to access their WorkSpaces.</p>"
        }
      },
      "documentation": "<p>The device types and operating systems that can be used to access a WorkSpace. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-network-requirements.html\">Amazon WorkSpaces Client Network Requirements</a>.</p>"
    },
    "WorkspaceBundle": {
      "type": "structure",
      "members": {
        "BundleId": {
          "shape": "BundleId",
          "documentation": "<p>The bundle identifier.</p>"
        },
        "Name": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the bundle.</p>"
        },
        "Owner": {
          "shape": "BundleOwner",
          "documentation": "<p>The owner of the bundle. This is the account identifier of the owner, or <code>AMAZON</code> if the bundle is provided by AWS.</p>"
        },
        "Description": {
          "shape": "Description",
          "documentation": "<p>A description.</p>"
        },
        "ImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The image identifier of the bundle.</p>"
        },
        "RootStorage": {
          "shape": "RootStorage",
          "documentation": "<p>The size of the root volume.</p>"
        },
        "UserStorage": {
          "shape": "UserStorage",
          "documentation": "<p>The size of the user storage.</p>"
        },
        "ComputeType": {
          "shape": "ComputeType",
          "documentation": "<p>The compute type. For more information, see <a href=\"http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles\">Amazon WorkSpaces Bundles</a>.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that the bundle was updated.</p>"
        }
      },
      "documentation": "<p>Describes a WorkSpace bundle.</p>"
    },
    "WorkspaceConnectionStatus": {
      "type": "structure",
      "members": {
        "WorkspaceId": {
          "shape": "WorkspaceId",
          "documentation": "<p>The identifier of the WorkSpace.</p>"
        },
        "ConnectionState": {
          "shape": "ConnectionState",
          "documentation": "<p>The connection state of the WorkSpace. The connection state is unknown if the WorkSpace is stopped.</p>"
        },
        "ConnectionStateCheckTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp of the connection status check.</p>"
        },
        "LastKnownUserConnectionTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The timestamp of the last known user connection.</p>"
        }
      },
      "documentation": "<p>Describes the connection status of a WorkSpace.</p>"
    },
    "WorkspaceConnectionStatusList": {
      "type": "list",
      "member": {
        "shape": "WorkspaceConnectionStatus"
      }
    },
    "WorkspaceCreationProperties": {
      "type": "structure",
      "members": {
        "EnableWorkDocs": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether Amazon WorkDocs is enabled for your WorkSpaces.</p> <note> <p>If WorkDocs is already enabled for a WorkSpaces directory and you disable it, new WorkSpaces launched in the directory will not have WorkDocs enabled. However, WorkDocs remains enabled for any existing WorkSpaces, unless you either disable users' access to WorkDocs or you delete the WorkDocs site. To disable users' access to WorkDocs, see <a href=\"https://docs.aws.amazon.com/workdocs/latest/adminguide/inactive-user.html\">Disabling Users</a> in the <i>Amazon WorkDocs Administration Guide</i>. To delete a WorkDocs site, see <a href=\"https://docs.aws.amazon.com/workdocs/latest/adminguide/manage-sites.html\">Deleting a Site</a> in the <i>Amazon WorkDocs Administration Guide</i>.</p> <p>If you enable WorkDocs on a directory that already has existing WorkSpaces, the existing WorkSpaces and any new WorkSpaces that are launched in the directory will have WorkDocs enabled.</p> </note>"
        },
        "EnableInternetAccess": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether internet access is enabled for your WorkSpaces.</p>"
        },
        "DefaultOu": {
          "shape": "DefaultOu",
          "documentation": "<p>The default organizational unit (OU) for your WorkSpaces directories. This string must be the full Lightweight Directory Access Protocol (LDAP) distinguished name for the target domain and OU. It must be in the form <code>\"OU=<i>value</i>,DC=<i>value</i>,DC=<i>value</i>\"</code>, where <i>value</i> is any string of characters, and the number of domain components (DCs) is two or more. For example, <code>OU=WorkSpaces_machines,DC=machines,DC=example,DC=com</code>. </p> <important> <ul> <li> <p>To avoid errors, certain characters in the distinguished name must be escaped. For more information, see <a href=\"https://docs.microsoft.com/previous-versions/windows/desktop/ldap/distinguished-names\"> Distinguished Names</a> in the Microsoft documentation.</p> </li> <li> <p>The API doesn't validate whether the OU exists.</p> </li> </ul> </important>"
        },
        "CustomSecurityGroupId": {
          "shape": "SecurityGroupId",
          "documentation": "<p>The identifier of your custom security group.</p>"
        },
        "UserEnabledAsLocalAdministrator": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether users are local administrators of their WorkSpaces.</p>"
        },
        "EnableMaintenanceMode": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether maintenance mode is enabled for your WorkSpaces. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html\">WorkSpace Maintenance</a>. </p>"
        }
      },
      "documentation": "<p>Describes the default properties that are used for creating WorkSpaces. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html\">Update Directory Details for Your WorkSpaces</a>. </p>"
    },
    "WorkspaceDirectory": {
      "type": "structure",
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The directory identifier.</p>"
        },
        "Alias": {
          "shape": "Alias",
          "documentation": "<p>The directory alias.</p>"
        },
        "DirectoryName": {
          "shape": "DirectoryName",
          "documentation": "<p>The name of the directory.</p>"
        },
        "RegistrationCode": {
          "shape": "RegistrationCode",
          "documentation": "<p>The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.</p>"
        },
        "SubnetIds": {
          "shape": "SubnetIds",
          "documentation": "<p>The identifiers of the subnets used with the directory.</p>"
        },
        "DnsIpAddresses": {
          "shape": "DnsIpAddresses",
          "documentation": "<p>The IP addresses of the DNS servers for the directory.</p>"
        },
        "CustomerUserName": {
          "shape": "UserName",
          "documentation": "<p>The user name for the service account.</p>"
        },
        "IamRoleId": {
          "shape": "ARN",
          "documentation": "<p>The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.</p>"
        },
        "DirectoryType": {
          "shape": "WorkspaceDirectoryType",
          "documentation": "<p>The directory type.</p>"
        },
        "WorkspaceSecurityGroupId": {
          "shape": "SecurityGroupId",
          "documentation": "<p>The identifier of the security group that is assigned to new WorkSpaces.</p>"
        },
        "State": {
          "shape": "WorkspaceDirectoryState",
          "documentation": "<p>The state of the directory's registration with Amazon WorkSpaces.</p>"
        },
        "WorkspaceCreationProperties": {
          "shape": "DefaultWorkspaceCreationProperties",
          "documentation": "<p>The default creation properties for all WorkSpaces in the directory.</p>"
        },
        "ipGroupIds": {
          "shape": "IpGroupIdList",
          "documentation": "<p>The identifiers of the IP access control groups associated with the directory.</p>"
        },
        "WorkspaceAccessProperties": {
          "shape": "WorkspaceAccessProperties",
          "documentation": "<p>The devices and operating systems that users can use to access WorkSpaces.</p>"
        },
        "Tenancy": {
          "shape": "Tenancy",
          "documentation": "<p>Specifies whether the directory is dedicated or shared. To use Bring Your Own License (BYOL), this value must be set to <code>DEDICATED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring Your Own Windows Desktop Images</a>.</p>"
        },
        "SelfservicePermissions": {
          "shape": "SelfservicePermissions",
          "documentation": "<p>The default self-service permissions for WorkSpaces in the directory.</p>"
        }
      },
      "documentation": "<p>Describes a directory that is used with Amazon WorkSpaces.</p>"
    },
    "WorkspaceDirectoryState": {
      "type": "string",
      "enum": [
        "REGISTERING",
        "REGISTERED",
        "DEREGISTERING",
        "DEREGISTERED",
        "ERROR"
      ]
    },
    "WorkspaceDirectoryType": {
      "type": "string",
      "enum": [
        "SIMPLE_AD",
        "AD_CONNECTOR"
      ]
    },
    "WorkspaceErrorCode": {
      "type": "string"
    },
    "WorkspaceId": {
      "type": "string",
      "pattern": "^ws-[0-9a-z]{8,63}$"
    },
    "WorkspaceIdList": {
      "type": "list",
      "member": {
        "shape": "WorkspaceId"
      },
      "max": 25,
      "min": 1
    },
    "WorkspaceImage": {
      "type": "structure",
      "members": {
        "ImageId": {
          "shape": "WorkspaceImageId",
          "documentation": "<p>The identifier of the image.</p>"
        },
        "Name": {
          "shape": "WorkspaceImageName",
          "documentation": "<p>The name of the image.</p>"
        },
        "Description": {
          "shape": "WorkspaceImageDescription",
          "documentation": "<p>The description of the image.</p>"
        },
        "OperatingSystem": {
          "shape": "OperatingSystem",
          "documentation": "<p>The operating system that the image is running. </p>"
        },
        "State": {
          "shape": "WorkspaceImageState",
          "documentation": "<p>The status of the image.</p>"
        },
        "RequiredTenancy": {
          "shape": "WorkspaceImageRequiredTenancy",
          "documentation": "<p>Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to <code>DEDICATED</code>. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html\">Bring Your Own Windows Desktop Images</a>.</p>"
        },
        "ErrorCode": {
          "shape": "WorkspaceImageErrorCode",
          "documentation": "<p>The error code that is returned for the image.</p>"
        },
        "ErrorMessage": {
          "shape": "Description",
          "documentation": "<p>The text of the error message that is returned for the image.</p>"
        },
        "Created": {
          "shape": "Timestamp",
          "documentation": "<p>The date when the image was created. If the image has been shared, the AWS account that the image has been shared with sees the original creation date of the image.</p>"
        },
        "OwnerAccountId": {
          "shape": "AwsAccount",
          "documentation": "<p>The identifier of the AWS account that owns the image.</p>"
        }
      },
      "documentation": "<p>Describes a WorkSpace image.</p>"
    },
    "WorkspaceImageDescription": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_./() -]+$"
    },
    "WorkspaceImageErrorCode": {
      "type": "string"
    },
    "WorkspaceImageId": {
      "type": "string",
      "pattern": "wsi-[0-9a-z]{9,63}$"
    },
    "WorkspaceImageIdList": {
      "type": "list",
      "member": {
        "shape": "WorkspaceImageId"
      },
      "max": 25,
      "min": 1
    },
    "WorkspaceImageIngestionProcess": {
      "type": "string",
      "enum": [
        "BYOL_REGULAR",
        "BYOL_GRAPHICS",
        "BYOL_GRAPHICSPRO"
      ]
    },
    "WorkspaceImageList": {
      "type": "list",
      "member": {
        "shape": "WorkspaceImage"
      }
    },
    "WorkspaceImageName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[a-zA-Z0-9_./()\\\\-]+$"
    },
    "WorkspaceImageRequiredTenancy": {
      "type": "string",
      "enum": [
        "DEFAULT",
        "DEDICATED"
      ]
    },
    "WorkspaceImageState": {
      "type": "string",
      "enum": [
        "AVAILABLE",
        "PENDING",
        "ERROR"
      ]
    },
    "WorkspaceList": {
      "type": "list",
      "member": {
        "shape": "Workspace"
      }
    },
    "WorkspaceProperties": {
      "type": "structure",
      "members": {
        "RunningMode": {
          "shape": "RunningMode",
          "documentation": "<p>The running mode. For more information, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html\">Manage the WorkSpace Running Mode</a>.</p>"
        },
        "RunningModeAutoStopTimeoutInMinutes": {
          "shape": "RunningModeAutoStopTimeoutInMinutes",
          "documentation": "<p>The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals.</p>"
        },
        "RootVolumeSizeGib": {
          "shape": "RootVolumeSizeGib",
          "documentation": "<p>The size of the root volume. For important information about how to modify the size of the root and user volumes, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html\">Modify a WorkSpace</a>.</p>"
        },
        "UserVolumeSizeGib": {
          "shape": "UserVolumeSizeGib",
          "documentation": "<p>The size of the user storage. For important information about how to modify the size of the root and user volumes, see <a href=\"https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html\">Modify a WorkSpace</a>.</p>"
        },
        "ComputeTypeName": {
          "shape": "Compute",
          "documentation": "<p>The compute type. For more information, see <a href=\"http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles\">Amazon WorkSpaces Bundles</a>.</p>"
        }
      },
      "documentation": "<p>Describes a WorkSpace.</p>"
    },
    "WorkspaceRequest": {
      "type": "structure",
      "required": [
        "DirectoryId",
        "UserName",
        "BundleId"
      ],
      "members": {
        "DirectoryId": {
          "shape": "DirectoryId",
          "documentation": "<p>The identifier of the AWS Directory Service directory for the WorkSpace. You can use <a>DescribeWorkspaceDirectories</a> to list the available directories.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The user name of the user for the WorkSpace. This user name must exist in the AWS Directory Service directory for the WorkSpace.</p>"
        },
        "BundleId": {
          "shape": "BundleId",
          "documentation": "<p>The identifier of the bundle for the WorkSpace. You can use <a>DescribeWorkspaceBundles</a> to list the available bundles.</p>"
        },
        "VolumeEncryptionKey": {
          "shape": "VolumeEncryptionKey",
          "documentation": "<p>The symmetric AWS KMS customer master key (CMK) used to encrypt data stored on your WorkSpace. Amazon WorkSpaces does not support asymmetric CMKs.</p>"
        },
        "UserVolumeEncryptionEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether the data stored on the user volume is encrypted.</p>"
        },
        "RootVolumeEncryptionEnabled": {
          "shape": "BooleanObject",
          "documentation": "<p>Indicates whether the data stored on the root volume is encrypted.</p>"
        },
        "WorkspaceProperties": {
          "shape": "WorkspaceProperties",
          "documentation": "<p>The WorkSpace properties.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags for the WorkSpace.</p>"
        }
      },
      "documentation": "<p>Describes the information used to create a WorkSpace.</p>"
    },
    "WorkspaceRequestList": {
      "type": "list",
      "member": {
        "shape": "WorkspaceRequest"
      },
      "max": 25,
      "min": 1
    },
    "WorkspaceState": {
      "type": "string",
      "enum": [
        "PENDING",
        "AVAILABLE",
        "IMPAIRED",
        "UNHEALTHY",
        "REBOOTING",
        "STARTING",
        "REBUILDING",
        "RESTORING",
        "MAINTENANCE",
        "ADMIN_MAINTENANCE",
        "TERMINATING",
        "TERMINATED",
        "SUSPENDED",
        "UPDATING",
        "STOPPING",
        "STOPPED",
        "ERROR"
      ]
    },
    "WorkspacesIpGroup": {
      "type": "structure",
      "members": {
        "groupId": {
          "shape": "IpGroupId",
          "documentation": "<p>The identifier of the group.</p>"
        },
        "groupName": {
          "shape": "IpGroupName",
          "documentation": "<p>The name of the group.</p>"
        },
        "groupDesc": {
          "shape": "IpGroupDesc",
          "documentation": "<p>The description of the group.</p>"
        },
        "userRules": {
          "shape": "IpRuleList",
          "documentation": "<p>The rules.</p>"
        }
      },
      "documentation": "<p>Describes an IP access control group.</p>"
    },
    "WorkspacesIpGroupsList": {
      "type": "list",
      "member": {
        "shape": "WorkspacesIpGroup"
      }
    }
  },
  "documentation": "<fullname>Amazon WorkSpaces Service</fullname> <p>Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft Windows and Amazon Linux desktops for your users.</p>"
}
]===]))