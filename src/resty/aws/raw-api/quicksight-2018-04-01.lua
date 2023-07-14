local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2018-04-01",
    "endpointPrefix": "quicksight",
    "jsonVersion": "1.0",
    "protocol": "rest-json",
    "serviceFullName": "Amazon QuickSight",
    "serviceId": "QuickSight",
    "signatureVersion": "v4",
    "uid": "quicksight-2018-04-01"
  },
  "operations": {
    "CancelIngestion": {
      "name": "CancelIngestion",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}"
      },
      "input": {
        "shape": "CancelIngestionRequest"
      },
      "output": {
        "shape": "CancelIngestionResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Cancels an ongoing ingestion of data into SPICE.</p>"
    },
    "CreateAccountCustomization": {
      "name": "CreateAccountCustomization",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/customizations"
      },
      "input": {
        "shape": "CreateAccountCustomizationRequest"
      },
      "output": {
        "shape": "CreateAccountCustomizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Creates Amazon QuickSight customizations the current AWS Region. Currently, you can add a custom default theme by using the <code>CreateAccountCustomization</code> or <code>UpdateAccountCustomization</code> API operation. To further customize QuickSight by removing QuickSight sample assets and videos for all new users, see <a href=\"https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html\">Customizing QuickSight</a> in the Amazon QuickSight User Guide.</p> <p>You can create customizations for your AWS account or, if you specify a namespace, for a QuickSight namespace instead. Customizations that apply to a namespace always override customizations that apply to an AWS account. To find out which customizations apply, use the <code>DescribeAccountCustomization</code> API operation.</p> <p>Before you add a theme as the namespace default, make sure that you first share the theme with the namespace. If you don't share it with the namespace, the theme won't be visible to your users even if you use this API operation to make it the default theme. </p>"
    },
    "CreateAnalysis": {
      "name": "CreateAnalysis",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/analyses/{AnalysisId}"
      },
      "input": {
        "shape": "CreateAnalysisRequest"
      },
      "output": {
        "shape": "CreateAnalysisResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates an analysis in Amazon QuickSight.</p>"
    },
    "CreateDashboard": {
      "name": "CreateDashboard",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}"
      },
      "input": {
        "shape": "CreateDashboardRequest"
      },
      "output": {
        "shape": "CreateDashboardResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a dashboard from a template. To first create a template, see the <code> <a>CreateTemplate</a> </code> API operation.</p> <p>A dashboard is an entity in QuickSight that identifies QuickSight reports, created from analyses. You can share QuickSight dashboards. With the right permissions, you can create scheduled email reports from them. If you have the correct permissions, you can create a dashboard from a template that exists in a different AWS account.</p>"
    },
    "CreateDataSet": {
      "name": "CreateDataSet",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/data-sets"
      },
      "input": {
        "shape": "CreateDataSetRequest"
      },
      "output": {
        "shape": "CreateDataSetResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a dataset.</p>"
    },
    "CreateDataSource": {
      "name": "CreateDataSource",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/data-sources"
      },
      "input": {
        "shape": "CreateDataSourceRequest"
      },
      "output": {
        "shape": "CreateDataSourceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a data source.</p>"
    },
    "CreateGroup": {
      "name": "CreateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups"
      },
      "input": {
        "shape": "CreateGroupRequest"
      },
      "output": {
        "shape": "CreateGroupResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Creates an Amazon QuickSight group.</p> <p>The permissions resource is <code>arn:aws:quicksight:us-east-1:<i>&lt;relevant-aws-account-id&gt;</i>:group/default/<i>&lt;group-name&gt;</i> </code>.</p> <p>The response is a group object.</p>"
    },
    "CreateGroupMembership": {
      "name": "CreateGroupMembership",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}"
      },
      "input": {
        "shape": "CreateGroupMembershipRequest"
      },
      "output": {
        "shape": "CreateGroupMembershipResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Adds an Amazon QuickSight user to an Amazon QuickSight group. </p>"
    },
    "CreateIAMPolicyAssignment": {
      "name": "CreateIAMPolicyAssignment",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/"
      },
      "input": {
        "shape": "CreateIAMPolicyAssignmentRequest"
      },
      "output": {
        "shape": "CreateIAMPolicyAssignmentResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConcurrentUpdatingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates an assignment with one specified IAM policy, identified by its Amazon Resource Name (ARN). This policy will be assigned to specified groups or users of Amazon QuickSight. The users and groups need to be in the same namespace. </p>"
    },
    "CreateIngestion": {
      "name": "CreateIngestion",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}"
      },
      "input": {
        "shape": "CreateIngestionRequest"
      },
      "output": {
        "shape": "CreateIngestionResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates and starts a new SPICE ingestion on a dataset</p> <p>Any ingestions operating on tagged datasets inherit the same tags automatically for use in access control. For an example, see <a href=\"https://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/\">How do I create an IAM policy to control access to Amazon EC2 resources using tags?</a> in the AWS Knowledge Center. Tags are visible on the tagged dataset, but not on the ingestion resource.</p>"
    },
    "CreateNamespace": {
      "name": "CreateNamespace",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}"
      },
      "input": {
        "shape": "CreateNamespaceRequest"
      },
      "output": {
        "shape": "CreateNamespaceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>(Enterprise edition only) Creates a new namespace for you to use with Amazon QuickSight.</p> <p>A namespace allows you to isolate the QuickSight users and groups that are registered for that namespace. Users that access the namespace can share assets only with other users or groups in the same namespace. They can't see users and groups in other namespaces. You can create a namespace after your AWS account is subscribed to QuickSight. The namespace must be unique within the AWS account. By default, there is a limit of 100 namespaces per AWS account. To increase your limit, create a ticket with AWS Support. </p>"
    },
    "CreateTemplate": {
      "name": "CreateTemplate",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}"
      },
      "input": {
        "shape": "CreateTemplateRequest"
      },
      "output": {
        "shape": "CreateTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a template from an existing QuickSight analysis or template. You can use the resulting template to create a dashboard.</p> <p>A <i>template</i> is an entity in QuickSight that encapsulates the metadata required to create an analysis and that you can use to create s dashboard. A template adds a layer of abstraction by using placeholders to replace the dataset associated with the analysis. You can use templates to create dashboards by replacing dataset placeholders with datasets that follow the same schema that was used to create the source analysis and template.</p>"
    },
    "CreateTemplateAlias": {
      "name": "CreateTemplateAlias",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}"
      },
      "input": {
        "shape": "CreateTemplateAliasRequest"
      },
      "output": {
        "shape": "CreateTemplateAliasResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a template alias for a template.</p>"
    },
    "CreateTheme": {
      "name": "CreateTheme",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}"
      },
      "input": {
        "shape": "CreateThemeRequest"
      },
      "output": {
        "shape": "CreateThemeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a theme.</p> <p>A <i>theme</i> is set of configuration options for color and layout. Themes apply to analyses and dashboards. For more information, see <a href=\"https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html\">Using Themes in Amazon QuickSight</a> in the <i>Amazon QuickSight User Guide</i>.</p>"
    },
    "CreateThemeAlias": {
      "name": "CreateThemeAlias",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}"
      },
      "input": {
        "shape": "CreateThemeAliasRequest"
      },
      "output": {
        "shape": "CreateThemeAliasResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Creates a theme alias for a theme.</p>"
    },
    "DeleteAccountCustomization": {
      "name": "DeleteAccountCustomization",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/customizations"
      },
      "input": {
        "shape": "DeleteAccountCustomizationRequest"
      },
      "output": {
        "shape": "DeleteAccountCustomizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes all Amazon QuickSight customizations in this AWS Region for the specified AWS Account and QuickSight namespace.</p>"
    },
    "DeleteAnalysis": {
      "name": "DeleteAnalysis",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/analyses/{AnalysisId}"
      },
      "input": {
        "shape": "DeleteAnalysisRequest"
      },
      "output": {
        "shape": "DeleteAnalysisResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes an analysis from Amazon QuickSight. You can optionally include a recovery window during which you can restore the analysis. If you don't specify a recovery window value, the operation defaults to 30 days. QuickSight attaches a <code>DeletionTime</code> stamp to the response that specifies the end of the recovery window. At the end of the recovery window, QuickSight deletes the analysis permanently.</p> <p>At any time before recovery window ends, you can use the <code>RestoreAnalysis</code> API operation to remove the <code>DeletionTime</code> stamp and cancel the deletion of the analysis. The analysis remains visible in the API until it's deleted, so you can describe it but you can't make a template from it.</p> <p>An analysis that's scheduled for deletion isn't accessible in the QuickSight console. To access it in the console, restore it. Deleting an analysis doesn't delete the dashboards that you publish from it.</p>"
    },
    "DeleteDashboard": {
      "name": "DeleteDashboard",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}"
      },
      "input": {
        "shape": "DeleteDashboardRequest"
      },
      "output": {
        "shape": "DeleteDashboardResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes a dashboard.</p>"
    },
    "DeleteDataSet": {
      "name": "DeleteDataSet",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}"
      },
      "input": {
        "shape": "DeleteDataSetRequest"
      },
      "output": {
        "shape": "DeleteDataSetResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes a dataset.</p>"
    },
    "DeleteDataSource": {
      "name": "DeleteDataSource",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/data-sources/{DataSourceId}"
      },
      "input": {
        "shape": "DeleteDataSourceRequest"
      },
      "output": {
        "shape": "DeleteDataSourceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes the data source permanently. This operation breaks all the datasets that reference the deleted data source.</p>"
    },
    "DeleteGroup": {
      "name": "DeleteGroup",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
      },
      "input": {
        "shape": "DeleteGroupRequest"
      },
      "output": {
        "shape": "DeleteGroupResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Removes a user group from Amazon QuickSight. </p>"
    },
    "DeleteGroupMembership": {
      "name": "DeleteGroupMembership",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}"
      },
      "input": {
        "shape": "DeleteGroupMembershipRequest"
      },
      "output": {
        "shape": "DeleteGroupMembershipResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Removes a user from a group so that the user is no longer a member of the group.</p>"
    },
    "DeleteIAMPolicyAssignment": {
      "name": "DeleteIAMPolicyAssignment",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/namespace/{Namespace}/iam-policy-assignments/{AssignmentName}"
      },
      "input": {
        "shape": "DeleteIAMPolicyAssignmentRequest"
      },
      "output": {
        "shape": "DeleteIAMPolicyAssignmentResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConcurrentUpdatingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes an existing IAM policy assignment.</p>"
    },
    "DeleteNamespace": {
      "name": "DeleteNamespace",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}"
      },
      "input": {
        "shape": "DeleteNamespaceRequest"
      },
      "output": {
        "shape": "DeleteNamespaceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes a namespace and the users and groups that are associated with the namespace. This is an asynchronous process. Assets including dashboards, analyses, datasets and data sources are not deleted. To delete these assets, you use the API operations for the relevant asset. </p>"
    },
    "DeleteTemplate": {
      "name": "DeleteTemplate",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}"
      },
      "input": {
        "shape": "DeleteTemplateRequest"
      },
      "output": {
        "shape": "DeleteTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes a template.</p>"
    },
    "DeleteTemplateAlias": {
      "name": "DeleteTemplateAlias",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}"
      },
      "input": {
        "shape": "DeleteTemplateAliasRequest"
      },
      "output": {
        "shape": "DeleteTemplateAliasResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes the item that the specified template alias points to. If you provide a specific alias, you delete the version of the template that the alias points to.</p>"
    },
    "DeleteTheme": {
      "name": "DeleteTheme",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}"
      },
      "input": {
        "shape": "DeleteThemeRequest"
      },
      "output": {
        "shape": "DeleteThemeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes a theme.</p>"
    },
    "DeleteThemeAlias": {
      "name": "DeleteThemeAlias",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}"
      },
      "input": {
        "shape": "DeleteThemeAliasRequest"
      },
      "output": {
        "shape": "DeleteThemeAliasResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Deletes the version of the theme that the specified theme alias points to. If you provide a specific alias, you delete the version of the theme that the alias points to.</p>"
    },
    "DeleteUser": {
      "name": "DeleteUser",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
      },
      "input": {
        "shape": "DeleteUserRequest"
      },
      "output": {
        "shape": "DeleteUserResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call. The IAM user isn't deleted as a result of this call. </p>"
    },
    "DeleteUserByPrincipalId": {
      "name": "DeleteUserByPrincipalId",
      "http": {
        "method": "DELETE",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/user-principals/{PrincipalId}"
      },
      "input": {
        "shape": "DeleteUserByPrincipalIdRequest"
      },
      "output": {
        "shape": "DeleteUserByPrincipalIdResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Deletes a user identified by its principal ID. </p>"
    },
    "DescribeAccountCustomization": {
      "name": "DescribeAccountCustomization",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/customizations"
      },
      "input": {
        "shape": "DescribeAccountCustomizationRequest"
      },
      "output": {
        "shape": "DescribeAccountCustomizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Describes the customizations associated with the provided AWS account and Amazon QuickSight namespace in an AWS Region. The QuickSight console evaluates which customizations to apply by running this API operation with the <code>Resolved</code> flag included. </p> <p>To determine what customizations display when you run this command, it can help to visualize the relationship of the entities involved. </p> <ul> <li> <p> <code>AWS Account</code> - The AWS account exists at the top of the hierarchy. It has the potential to use all of the AWS Regions and AWS Services. When you subscribe to QuickSight, you choose one AWS Region to use as your home region. That's where your free SPICE capacity is located. You can use QuickSight in any supported AWS Region. </p> </li> <li> <p> <code>AWS Region</code> - In each AWS Region where you sign in to QuickSight at least once, QuickSight acts as a separate instance of the same service. If you have a user directory, it resides in us-east-1, which is the US East (N. Virginia). Generally speaking, these users have access to QuickSight in any AWS Region, unless they are constrained to a namespace. </p> <p>To run the command in a different AWS Region, you change your region settings. If you're using the AWS CLI, you can use one of the following options:</p> <ul> <li> <p>Use <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html\">command line options</a>. </p> </li> <li> <p>Use <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html\">named profiles</a>. </p> </li> <li> <p>Run <code>aws configure</code> to change your default AWS Region. Use Enter to key the same settings for your keys. For more information, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html\">Configuring the AWS CLI</a>.</p> </li> </ul> </li> <li> <p> <code>Namespace</code> - A QuickSight namespace is a partition that contains users and assets (data sources, datasets, dashboards, and so on). To access assets that are in a specific namespace, users and groups must also be part of the same namespace. People who share a namespace are completely isolated from users and assets in other namespaces, even if they are in the same AWS account and AWS Region.</p> </li> <li> <p> <code>Applied customizations</code> - Within an AWS Region, a set of QuickSight customizations can apply to an AWS account or to a namespace. Settings that you apply to a namespace override settings that you apply to an AWS Account. All settings are isolated to a single AWS Region. To apply them in other AWS Regions, run the <code>CreateAccountCustomization</code> command in each AWS Region where you want to apply the same customizations. </p> </li> </ul>"
    },
    "DescribeAccountSettings": {
      "name": "DescribeAccountSettings",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/settings"
      },
      "input": {
        "shape": "DescribeAccountSettingsRequest"
      },
      "output": {
        "shape": "DescribeAccountSettingsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Describes the settings that were used when your QuickSight subscription was first created in this AWS Account.</p>"
    },
    "DescribeAnalysis": {
      "name": "DescribeAnalysis",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/analyses/{AnalysisId}"
      },
      "input": {
        "shape": "DescribeAnalysisRequest"
      },
      "output": {
        "shape": "DescribeAnalysisResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Provides a summary of the metadata for an analysis.</p>"
    },
    "DescribeAnalysisPermissions": {
      "name": "DescribeAnalysisPermissions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions"
      },
      "input": {
        "shape": "DescribeAnalysisPermissionsRequest"
      },
      "output": {
        "shape": "DescribeAnalysisPermissionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Provides the read and write permissions for an analysis.</p>"
    },
    "DescribeDashboard": {
      "name": "DescribeDashboard",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}"
      },
      "input": {
        "shape": "DescribeDashboardRequest"
      },
      "output": {
        "shape": "DescribeDashboardResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Provides a summary for a dashboard.</p>"
    },
    "DescribeDashboardPermissions": {
      "name": "DescribeDashboardPermissions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions"
      },
      "input": {
        "shape": "DescribeDashboardPermissionsRequest"
      },
      "output": {
        "shape": "DescribeDashboardPermissionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes read and write permissions for a dashboard.</p>"
    },
    "DescribeDataSet": {
      "name": "DescribeDataSet",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}"
      },
      "input": {
        "shape": "DescribeDataSetRequest"
      },
      "output": {
        "shape": "DescribeDataSetResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes a dataset. </p>"
    },
    "DescribeDataSetPermissions": {
      "name": "DescribeDataSetPermissions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions"
      },
      "input": {
        "shape": "DescribeDataSetPermissionsRequest"
      },
      "output": {
        "shape": "DescribeDataSetPermissionsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes the permissions on a dataset.</p> <p>The permissions resource is <code>arn:aws:quicksight:region:aws-account-id:dataset/data-set-id</code>.</p>"
    },
    "DescribeDataSource": {
      "name": "DescribeDataSource",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/data-sources/{DataSourceId}"
      },
      "input": {
        "shape": "DescribeDataSourceRequest"
      },
      "output": {
        "shape": "DescribeDataSourceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes a data source.</p>"
    },
    "DescribeDataSourcePermissions": {
      "name": "DescribeDataSourcePermissions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions"
      },
      "input": {
        "shape": "DescribeDataSourcePermissionsRequest"
      },
      "output": {
        "shape": "DescribeDataSourcePermissionsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes the resource permissions for a data source.</p>"
    },
    "DescribeGroup": {
      "name": "DescribeGroup",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
      },
      "input": {
        "shape": "DescribeGroupRequest"
      },
      "output": {
        "shape": "DescribeGroupResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN). </p>"
    },
    "DescribeIAMPolicyAssignment": {
      "name": "DescribeIAMPolicyAssignment",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}"
      },
      "input": {
        "shape": "DescribeIAMPolicyAssignmentRequest"
      },
      "output": {
        "shape": "DescribeIAMPolicyAssignmentResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes an existing IAM policy assignment, as specified by the assignment name.</p>"
    },
    "DescribeIngestion": {
      "name": "DescribeIngestion",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}"
      },
      "input": {
        "shape": "DescribeIngestionRequest"
      },
      "output": {
        "shape": "DescribeIngestionResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes a SPICE ingestion.</p>"
    },
    "DescribeNamespace": {
      "name": "DescribeNamespace",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}"
      },
      "input": {
        "shape": "DescribeNamespaceRequest"
      },
      "output": {
        "shape": "DescribeNamespaceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Describes the current namespace.</p>"
    },
    "DescribeTemplate": {
      "name": "DescribeTemplate",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}"
      },
      "input": {
        "shape": "DescribeTemplateRequest"
      },
      "output": {
        "shape": "DescribeTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes a template's metadata.</p>"
    },
    "DescribeTemplateAlias": {
      "name": "DescribeTemplateAlias",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}"
      },
      "input": {
        "shape": "DescribeTemplateAliasRequest"
      },
      "output": {
        "shape": "DescribeTemplateAliasResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes the template alias for a template.</p>"
    },
    "DescribeTemplatePermissions": {
      "name": "DescribeTemplatePermissions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions"
      },
      "input": {
        "shape": "DescribeTemplatePermissionsRequest"
      },
      "output": {
        "shape": "DescribeTemplatePermissionsResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes read and write permissions on a template.</p>"
    },
    "DescribeTheme": {
      "name": "DescribeTheme",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}"
      },
      "input": {
        "shape": "DescribeThemeRequest"
      },
      "output": {
        "shape": "DescribeThemeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes a theme.</p>"
    },
    "DescribeThemeAlias": {
      "name": "DescribeThemeAlias",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}"
      },
      "input": {
        "shape": "DescribeThemeAliasRequest"
      },
      "output": {
        "shape": "DescribeThemeAliasResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes the alias for a theme.</p>"
    },
    "DescribeThemePermissions": {
      "name": "DescribeThemePermissions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}/permissions"
      },
      "input": {
        "shape": "DescribeThemePermissionsRequest"
      },
      "output": {
        "shape": "DescribeThemePermissionsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Describes the read and write permissions for a theme.</p>"
    },
    "DescribeUser": {
      "name": "DescribeUser",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
      },
      "input": {
        "shape": "DescribeUserRequest"
      },
      "output": {
        "shape": "DescribeUserResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Returns information about a user, given the user name. </p>"
    },
    "GetDashboardEmbedUrl": {
      "name": "GetDashboardEmbedUrl",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url"
      },
      "input": {
        "shape": "GetDashboardEmbedUrlRequest"
      },
      "output": {
        "shape": "GetDashboardEmbedUrlResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "DomainNotWhitelistedException"
        },
        {
          "shape": "QuickSightUserNotFoundException"
        },
        {
          "shape": "IdentityTypeNotSupportedException"
        },
        {
          "shape": "SessionLifetimeInMinutesInvalidException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Generates a session URL and authorization code that you can use to embed an Amazon QuickSight read-only dashboard in your web server code. Before you use this command, make sure that you have configured the dashboards and permissions. </p> <p>Currently, you can use <code>GetDashboardEmbedURL</code> only from the server, not from the user's browser. The following rules apply to the combination of URL and authorization code:</p> <ul> <li> <p>They must be used together.</p> </li> <li> <p>They can be used one time only.</p> </li> <li> <p>They are valid for 5 minutes after you run this command.</p> </li> <li> <p>The resulting user session is valid for 10 hours.</p> </li> </ul> <p>For more information, see <a href=\"https://docs.aws.amazon.com/quicksight/latest/user/embedding-dashboards.html\">Embedding Amazon QuickSight</a> in the <i>Amazon QuickSight User Guide</i> .</p>"
    },
    "GetSessionEmbedUrl": {
      "name": "GetSessionEmbedUrl",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/session-embed-url"
      },
      "input": {
        "shape": "GetSessionEmbedUrlRequest"
      },
      "output": {
        "shape": "GetSessionEmbedUrlResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "QuickSightUserNotFoundException"
        },
        {
          "shape": "SessionLifetimeInMinutesInvalidException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Generates a session URL and authorization code that you can use to embed the Amazon QuickSight console in your web server code. Use <code>GetSessionEmbedUrl</code> where you want to provide an authoring portal that allows users to create data sources, datasets, analyses, and dashboards. The users who access an embedded QuickSight console need belong to the author or admin security cohort. If you want to restrict permissions to some of these features, add a custom permissions profile to the user with the <code> <a>UpdateUser</a> </code> API operation. Use <code> <a>RegisterUser</a> </code> API operation to add a new user with a custom permission profile attached. For more information, see the following sections in the <i>Amazon QuickSight User Guide</i>:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/quicksight/latest/user/embedding-the-quicksight-console.html\">Embedding the Amazon QuickSight Console</a> </p> </li> <li> <p> <a href=\"https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html\">Customizing Access to the Amazon QuickSight Console</a> </p> </li> </ul>"
    },
    "ListAnalyses": {
      "name": "ListAnalyses",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/analyses"
      },
      "input": {
        "shape": "ListAnalysesRequest"
      },
      "output": {
        "shape": "ListAnalysesResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists Amazon QuickSight analyses that exist in the specified AWS account.</p>"
    },
    "ListDashboardVersions": {
      "name": "ListDashboardVersions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions"
      },
      "input": {
        "shape": "ListDashboardVersionsRequest"
      },
      "output": {
        "shape": "ListDashboardVersionsResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all the versions of the dashboards in the QuickSight subscription.</p>"
    },
    "ListDashboards": {
      "name": "ListDashboards",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/dashboards"
      },
      "input": {
        "shape": "ListDashboardsRequest"
      },
      "output": {
        "shape": "ListDashboardsResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists dashboards in an AWS account.</p>"
    },
    "ListDataSets": {
      "name": "ListDataSets",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/data-sets"
      },
      "input": {
        "shape": "ListDataSetsRequest"
      },
      "output": {
        "shape": "ListDataSetsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all of the datasets belonging to the current AWS account in an AWS Region.</p> <p>The permissions resource is <code>arn:aws:quicksight:region:aws-account-id:dataset/*</code>.</p>"
    },
    "ListDataSources": {
      "name": "ListDataSources",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/data-sources"
      },
      "input": {
        "shape": "ListDataSourcesRequest"
      },
      "output": {
        "shape": "ListDataSourcesResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists data sources in current AWS Region that belong to this AWS account.</p>"
    },
    "ListGroupMemberships": {
      "name": "ListGroupMemberships",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members"
      },
      "input": {
        "shape": "ListGroupMembershipsRequest"
      },
      "output": {
        "shape": "ListGroupMembershipsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Lists member users in a group.</p>"
    },
    "ListGroups": {
      "name": "ListGroups",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups"
      },
      "input": {
        "shape": "ListGroupsRequest"
      },
      "output": {
        "shape": "ListGroupsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Lists all user groups in Amazon QuickSight. </p>"
    },
    "ListIAMPolicyAssignments": {
      "name": "ListIAMPolicyAssignments",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments"
      },
      "input": {
        "shape": "ListIAMPolicyAssignmentsRequest"
      },
      "output": {
        "shape": "ListIAMPolicyAssignmentsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists IAM policy assignments in the current Amazon QuickSight account.</p>"
    },
    "ListIAMPolicyAssignmentsForUser": {
      "name": "ListIAMPolicyAssignmentsForUser",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/iam-policy-assignments"
      },
      "input": {
        "shape": "ListIAMPolicyAssignmentsForUserRequest"
      },
      "output": {
        "shape": "ListIAMPolicyAssignmentsForUserResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConcurrentUpdatingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all the IAM policy assignments, including the Amazon Resource Names (ARNs) for the IAM policies assigned to the specified user and group or groups that the user belongs to.</p>"
    },
    "ListIngestions": {
      "name": "ListIngestions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions"
      },
      "input": {
        "shape": "ListIngestionsRequest"
      },
      "output": {
        "shape": "ListIngestionsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists the history of SPICE ingestions for a dataset.</p>"
    },
    "ListNamespaces": {
      "name": "ListNamespaces",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces"
      },
      "input": {
        "shape": "ListNamespacesRequest"
      },
      "output": {
        "shape": "ListNamespacesResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Lists the namespaces for the specified AWS account.</p>"
    },
    "ListTagsForResource": {
      "name": "ListTagsForResource",
      "http": {
        "method": "GET",
        "requestUri": "/resources/{ResourceArn}/tags"
      },
      "input": {
        "shape": "ListTagsForResourceRequest"
      },
      "output": {
        "shape": "ListTagsForResourceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists the tags assigned to a resource.</p>"
    },
    "ListTemplateAliases": {
      "name": "ListTemplateAliases",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases"
      },
      "input": {
        "shape": "ListTemplateAliasesRequest"
      },
      "output": {
        "shape": "ListTemplateAliasesResponse"
      },
      "errors": [
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all the aliases of a template.</p>"
    },
    "ListTemplateVersions": {
      "name": "ListTemplateVersions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}/versions"
      },
      "input": {
        "shape": "ListTemplateVersionsRequest"
      },
      "output": {
        "shape": "ListTemplateVersionsResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all the versions of the templates in the current Amazon QuickSight account.</p>"
    },
    "ListTemplates": {
      "name": "ListTemplates",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/templates"
      },
      "input": {
        "shape": "ListTemplatesRequest"
      },
      "output": {
        "shape": "ListTemplatesResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all the templates in the current Amazon QuickSight account.</p>"
    },
    "ListThemeAliases": {
      "name": "ListThemeAliases",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases"
      },
      "input": {
        "shape": "ListThemeAliasesRequest"
      },
      "output": {
        "shape": "ListThemeAliasesResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all the aliases of a theme.</p>"
    },
    "ListThemeVersions": {
      "name": "ListThemeVersions",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}/versions"
      },
      "input": {
        "shape": "ListThemeVersionsRequest"
      },
      "output": {
        "shape": "ListThemeVersionsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all the versions of the themes in the current AWS account.</p>"
    },
    "ListThemes": {
      "name": "ListThemes",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/themes"
      },
      "input": {
        "shape": "ListThemesRequest"
      },
      "output": {
        "shape": "ListThemesResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Lists all the themes in the current AWS account.</p>"
    },
    "ListUserGroups": {
      "name": "ListUserGroups",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups"
      },
      "input": {
        "shape": "ListUserGroupsRequest"
      },
      "output": {
        "shape": "ListUserGroupsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of.</p>"
    },
    "ListUsers": {
      "name": "ListUsers",
      "http": {
        "method": "GET",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/users"
      },
      "input": {
        "shape": "ListUsersRequest"
      },
      "output": {
        "shape": "ListUsersResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Returns a list of all of the Amazon QuickSight users belonging to this account. </p>"
    },
    "RegisterUser": {
      "name": "RegisterUser",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/users"
      },
      "input": {
        "shape": "RegisterUserRequest"
      },
      "output": {
        "shape": "RegisterUserResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request. </p>"
    },
    "RestoreAnalysis": {
      "name": "RestoreAnalysis",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/restore/analyses/{AnalysisId}"
      },
      "input": {
        "shape": "RestoreAnalysisRequest"
      },
      "output": {
        "shape": "RestoreAnalysisResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Restores an analysis.</p>"
    },
    "SearchAnalyses": {
      "name": "SearchAnalyses",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/search/analyses"
      },
      "input": {
        "shape": "SearchAnalysesRequest"
      },
      "output": {
        "shape": "SearchAnalysesResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Searches for analyses that belong to the user specified in the filter.</p>"
    },
    "SearchDashboards": {
      "name": "SearchDashboards",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/search/dashboards"
      },
      "input": {
        "shape": "SearchDashboardsRequest"
      },
      "output": {
        "shape": "SearchDashboardsResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InvalidNextTokenException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Searches for dashboards that belong to a user. </p>"
    },
    "TagResource": {
      "name": "TagResource",
      "http": {
        "method": "POST",
        "requestUri": "/resources/{ResourceArn}/tags"
      },
      "input": {
        "shape": "TagResourceRequest"
      },
      "output": {
        "shape": "TagResourceResponse"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Assigns one or more tags (key-value pairs) to the specified QuickSight resource. </p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. You can use the <code>TagResource</code> operation with a resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.</p> <p>You can associate as many as 50 tags with a resource. QuickSight supports tagging on data set, data source, dashboard, and template. </p> <p>Tagging for QuickSight works in a similar way to tagging for other AWS services, except for the following:</p> <ul> <li> <p>You can't use tags to track AWS costs for QuickSight. This restriction is because QuickSight costs are based on users and SPICE capacity, which aren't taggable resources.</p> </li> <li> <p>QuickSight doesn't currently support the Tag Editor for AWS Resource Groups.</p> </li> </ul>"
    },
    "UntagResource": {
      "name": "UntagResource",
      "http": {
        "method": "DELETE",
        "requestUri": "/resources/{ResourceArn}/tags"
      },
      "input": {
        "shape": "UntagResourceRequest"
      },
      "output": {
        "shape": "UntagResourceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Removes a tag or tags from a resource.</p>"
    },
    "UpdateAccountCustomization": {
      "name": "UpdateAccountCustomization",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/customizations"
      },
      "input": {
        "shape": "UpdateAccountCustomizationRequest"
      },
      "output": {
        "shape": "UpdateAccountCustomizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Updates Amazon QuickSight customizations the current AWS Region. Currently, the only customization you can use is a theme.</p> <p>You can use customizations for your AWS account or, if you specify a namespace, for a QuickSight namespace instead. Customizations that apply to a namespace override customizations that apply to an AWS account. To find out which customizations apply, use the <code>DescribeAccountCustomization</code> API operation. </p>"
    },
    "UpdateAccountSettings": {
      "name": "UpdateAccountSettings",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/settings"
      },
      "input": {
        "shape": "UpdateAccountSettingsRequest"
      },
      "output": {
        "shape": "UpdateAccountSettingsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Updates the Amazon QuickSight settings in your AWS Account.</p>"
    },
    "UpdateAnalysis": {
      "name": "UpdateAnalysis",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/analyses/{AnalysisId}"
      },
      "input": {
        "shape": "UpdateAnalysisRequest"
      },
      "output": {
        "shape": "UpdateAnalysisResponse"
      },
      "errors": [
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates an analysis in Amazon QuickSight</p>"
    },
    "UpdateAnalysisPermissions": {
      "name": "UpdateAnalysisPermissions",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions"
      },
      "input": {
        "shape": "UpdateAnalysisPermissionsRequest"
      },
      "output": {
        "shape": "UpdateAnalysisPermissionsResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the read and write permissions for an analysis.</p>"
    },
    "UpdateDashboard": {
      "name": "UpdateDashboard",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}"
      },
      "input": {
        "shape": "UpdateDashboardRequest"
      },
      "output": {
        "shape": "UpdateDashboardResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a dashboard in an AWS account.</p>"
    },
    "UpdateDashboardPermissions": {
      "name": "UpdateDashboardPermissions",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions"
      },
      "input": {
        "shape": "UpdateDashboardPermissionsRequest"
      },
      "output": {
        "shape": "UpdateDashboardPermissionsResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates read and write permissions on a dashboard.</p>"
    },
    "UpdateDashboardPublishedVersion": {
      "name": "UpdateDashboardPublishedVersion",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions/{VersionNumber}"
      },
      "input": {
        "shape": "UpdateDashboardPublishedVersionRequest"
      },
      "output": {
        "shape": "UpdateDashboardPublishedVersionResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the published version of a dashboard.</p>"
    },
    "UpdateDataSet": {
      "name": "UpdateDataSet",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}"
      },
      "input": {
        "shape": "UpdateDataSetRequest"
      },
      "output": {
        "shape": "UpdateDataSetResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a dataset.</p>"
    },
    "UpdateDataSetPermissions": {
      "name": "UpdateDataSetPermissions",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions"
      },
      "input": {
        "shape": "UpdateDataSetPermissionsRequest"
      },
      "output": {
        "shape": "UpdateDataSetPermissionsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the permissions on a dataset.</p> <p>The permissions resource is <code>arn:aws:quicksight:region:aws-account-id:dataset/data-set-id</code>.</p>"
    },
    "UpdateDataSource": {
      "name": "UpdateDataSource",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/data-sources/{DataSourceId}"
      },
      "input": {
        "shape": "UpdateDataSourceRequest"
      },
      "output": {
        "shape": "UpdateDataSourceResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a data source.</p>"
    },
    "UpdateDataSourcePermissions": {
      "name": "UpdateDataSourcePermissions",
      "http": {
        "method": "POST",
        "requestUri": "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions"
      },
      "input": {
        "shape": "UpdateDataSourcePermissionsRequest"
      },
      "output": {
        "shape": "UpdateDataSourcePermissionsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the permissions to a data source.</p>"
    },
    "UpdateGroup": {
      "name": "UpdateGroup",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
      },
      "input": {
        "shape": "UpdateGroupRequest"
      },
      "output": {
        "shape": "UpdateGroupResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Changes a group description. </p>"
    },
    "UpdateIAMPolicyAssignment": {
      "name": "UpdateIAMPolicyAssignment",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}"
      },
      "input": {
        "shape": "UpdateIAMPolicyAssignmentRequest"
      },
      "output": {
        "shape": "UpdateIAMPolicyAssignmentResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConcurrentUpdatingException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates an existing IAM policy assignment. This operation updates only the optional parameter or parameters that are specified in the request.</p>"
    },
    "UpdateTemplate": {
      "name": "UpdateTemplate",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}"
      },
      "input": {
        "shape": "UpdateTemplateRequest"
      },
      "output": {
        "shape": "UpdateTemplateResponse"
      },
      "errors": [
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a template from an existing Amazon QuickSight analysis or another template.</p>"
    },
    "UpdateTemplateAlias": {
      "name": "UpdateTemplateAlias",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}"
      },
      "input": {
        "shape": "UpdateTemplateAliasRequest"
      },
      "output": {
        "shape": "UpdateTemplateAliasResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the template alias of a template.</p>"
    },
    "UpdateTemplatePermissions": {
      "name": "UpdateTemplatePermissions",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions"
      },
      "input": {
        "shape": "UpdateTemplatePermissionsRequest"
      },
      "output": {
        "shape": "UpdateTemplatePermissionsResponse"
      },
      "errors": [
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ConflictException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the resource permissions for a template.</p>"
    },
    "UpdateTheme": {
      "name": "UpdateTheme",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}"
      },
      "input": {
        "shape": "UpdateThemeRequest"
      },
      "output": {
        "shape": "UpdateThemeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates a theme.</p>"
    },
    "UpdateThemeAlias": {
      "name": "UpdateThemeAlias",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}"
      },
      "input": {
        "shape": "UpdateThemeAliasRequest"
      },
      "output": {
        "shape": "UpdateThemeAliasResponse"
      },
      "errors": [
        {
          "shape": "ConflictException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceExistsException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates an alias of a theme.</p>"
    },
    "UpdateThemePermissions": {
      "name": "UpdateThemePermissions",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/themes/{ThemeId}/permissions"
      },
      "input": {
        "shape": "UpdateThemePermissionsRequest"
      },
      "output": {
        "shape": "UpdateThemePermissionsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "UnsupportedUserEditionException"
        },
        {
          "shape": "InternalFailureException"
        }
      ],
      "documentation": "<p>Updates the resource permissions for a theme. Permissions apply to the action to grant or revoke permissions on, for example <code>\"quicksight:DescribeTheme\"</code>.</p> <p>Theme permissions apply in groupings. Valid groupings include the following for the three levels of permissions, which are user, owner, or no permissions: </p> <ul> <li> <p>User</p> <ul> <li> <p> <code>\"quicksight:DescribeTheme\"</code> </p> </li> <li> <p> <code>\"quicksight:DescribeThemeAlias\"</code> </p> </li> <li> <p> <code>\"quicksight:ListThemeAliases\"</code> </p> </li> <li> <p> <code>\"quicksight:ListThemeVersions\"</code> </p> </li> </ul> </li> <li> <p>Owner</p> <ul> <li> <p> <code>\"quicksight:DescribeTheme\"</code> </p> </li> <li> <p> <code>\"quicksight:DescribeThemeAlias\"</code> </p> </li> <li> <p> <code>\"quicksight:ListThemeAliases\"</code> </p> </li> <li> <p> <code>\"quicksight:ListThemeVersions\"</code> </p> </li> <li> <p> <code>\"quicksight:DeleteTheme\"</code> </p> </li> <li> <p> <code>\"quicksight:UpdateTheme\"</code> </p> </li> <li> <p> <code>\"quicksight:CreateThemeAlias\"</code> </p> </li> <li> <p> <code>\"quicksight:DeleteThemeAlias\"</code> </p> </li> <li> <p> <code>\"quicksight:UpdateThemeAlias\"</code> </p> </li> <li> <p> <code>\"quicksight:UpdateThemePermissions\"</code> </p> </li> <li> <p> <code>\"quicksight:DescribeThemePermissions\"</code> </p> </li> </ul> </li> <li> <p>To specify no permissions, omit the permissions list.</p> </li> </ul>"
    },
    "UpdateUser": {
      "name": "UpdateUser",
      "http": {
        "method": "PUT",
        "requestUri": "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
      },
      "input": {
        "shape": "UpdateUserRequest"
      },
      "output": {
        "shape": "UpdateUserResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidParameterValueException"
        },
        {
          "shape": "ResourceNotFoundException"
        },
        {
          "shape": "ThrottlingException"
        },
        {
          "shape": "PreconditionNotMetException"
        },
        {
          "shape": "InternalFailureException"
        },
        {
          "shape": "ResourceUnavailableException"
        }
      ],
      "documentation": "<p>Updates an Amazon QuickSight user.</p>"
    }
  },
  "shapes": {
    "AccountCustomization": {
      "type": "structure",
      "members": {
        "DefaultTheme": {
          "shape": "Arn",
          "documentation": "<p>The default theme for this QuickSight subscription.</p>"
        }
      },
      "documentation": "<p>The Amazon QuickSight customizations associated with your AWS account or a QuickSight namespace in a specific AWS Region.</p>"
    },
    "AccountSettings": {
      "type": "structure",
      "members": {
        "AccountName": {
          "shape": "String",
          "documentation": "<p>The \"account name\" you provided for the QuickSight subscription in your AWS account. You create this name when you sign up for QuickSight. It is unique in all of AWS and it appears only in the console when users sign in.</p>"
        },
        "Edition": {
          "shape": "Edition",
          "documentation": "<p>The edition of QuickSight that you're currently subscribed to: Enterprise edition or Standard edition.</p>"
        },
        "DefaultNamespace": {
          "shape": "Namespace",
          "documentation": "<p>The default QuickSight namespace for your AWS account. </p>"
        },
        "NotificationEmail": {
          "shape": "String",
          "documentation": "<p>The main notification email for your QuickSight subscription.</p>"
        }
      },
      "documentation": "<p>The QuickSight settings associated with your AWS account.</p>"
    },
    "ActionList": {
      "type": "list",
      "member": {
        "shape": "String"
      },
      "max": 16,
      "min": 1
    },
    "ActiveIAMPolicyAssignment": {
      "type": "structure",
      "members": {
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>A name for the IAM policy assignment.</p>"
        },
        "PolicyArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        }
      },
      "documentation": "<p>The active AWS Identity and Access Management (IAM) policy assignment.</p>"
    },
    "ActiveIAMPolicyAssignmentList": {
      "type": "list",
      "member": {
        "shape": "ActiveIAMPolicyAssignment"
      }
    },
    "AdHocFilteringOption": {
      "type": "structure",
      "members": {
        "AvailabilityStatus": {
          "shape": "DashboardBehavior",
          "documentation": "<p>Availability status.</p>"
        }
      },
      "documentation": "<p>Ad hoc (one-time) filtering option.</p>"
    },
    "AliasName": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[\\w\\-]+|(\\$LATEST)|(\\$PUBLISHED)"
    },
    "AmazonElasticsearchParameters": {
      "type": "structure",
      "required": [
        "Domain"
      ],
      "members": {
        "Domain": {
          "shape": "Domain",
          "documentation": "<p>The Amazon Elasticsearch Service domain.</p>"
        }
      },
      "documentation": "<p>Amazon Elasticsearch Service parameters.</p>"
    },
    "Analysis": {
      "type": "structure",
      "members": {
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the analysis.</p>"
        },
        "Name": {
          "shape": "AnalysisName",
          "documentation": "<p>The descriptive name of the analysis.</p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>Status associated with the analysis.</p>"
        },
        "Errors": {
          "shape": "AnalysisErrorList",
          "documentation": "<p>Errors associated with the analysis.</p>"
        },
        "DataSetArns": {
          "shape": "DataSetArnsList",
          "documentation": "<p>The ARNs of the datasets of the analysis.</p>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the theme of the analysis.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the analysis was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the analysis was last updated.</p>"
        }
      },
      "documentation": "<p>Metadata structure for an analysis in Amazon QuickSight</p>"
    },
    "AnalysisError": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "AnalysisErrorType",
          "documentation": "<p>The type of the analysis error.</p>"
        },
        "Message": {
          "shape": "NonEmptyString",
          "documentation": "<p>The message associated with the analysis error.</p>"
        }
      },
      "documentation": "<p>A metadata error structure for an analysis.</p>"
    },
    "AnalysisErrorList": {
      "type": "list",
      "member": {
        "shape": "AnalysisError"
      },
      "min": 1
    },
    "AnalysisErrorType": {
      "type": "string",
      "enum": [
        "ACCESS_DENIED",
        "SOURCE_NOT_FOUND",
        "DATA_SET_NOT_FOUND",
        "INTERNAL_FAILURE",
        "PARAMETER_VALUE_INCOMPATIBLE",
        "PARAMETER_TYPE_INVALID",
        "PARAMETER_NOT_FOUND",
        "COLUMN_TYPE_MISMATCH",
        "COLUMN_GEOGRAPHIC_ROLE_MISMATCH",
        "COLUMN_REPLACEMENT_MISSING"
      ]
    },
    "AnalysisFilterAttribute": {
      "type": "string",
      "enum": [
        "QUICKSIGHT_USER"
      ]
    },
    "AnalysisName": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "AnalysisSearchFilter": {
      "type": "structure",
      "members": {
        "Operator": {
          "shape": "FilterOperator",
          "documentation": "<p>The comparison operator that you want to use as a filter, for example <code>\"Operator\": \"StringEquals\"</code>.</p>"
        },
        "Name": {
          "shape": "AnalysisFilterAttribute",
          "documentation": "<p>The name of the value that you want to use as a filter, for example <code>\"Name\": \"QUICKSIGHT_USER\"</code>.</p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The value of the named item, in this case <code>QUICKSIGHT_USER</code>, that you want to use as a filter, for example <code>\"Value\"</code>. An example is <code>\"arn:aws:quicksight:us-east-1:1:user/default/UserName1\"</code>.</p>"
        }
      },
      "documentation": "<p>A filter that you apply when searching for one or more analyses.</p>"
    },
    "AnalysisSearchFilterList": {
      "type": "list",
      "member": {
        "shape": "AnalysisSearchFilter"
      },
      "max": 1
    },
    "AnalysisSourceEntity": {
      "type": "structure",
      "members": {
        "SourceTemplate": {
          "shape": "AnalysisSourceTemplate",
          "documentation": "<p>The source template for the source entity of the analysis.</p>"
        }
      },
      "documentation": "<p>The source entity of an analysis.</p>"
    },
    "AnalysisSourceTemplate": {
      "type": "structure",
      "required": [
        "DataSetReferences",
        "Arn"
      ],
      "members": {
        "DataSetReferences": {
          "shape": "DataSetReferenceList",
          "documentation": "<p>The dataset references of the source template of an analysis.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the source template of an analysis.</p>"
        }
      },
      "documentation": "<p>The source template of an analysis.</p>"
    },
    "AnalysisSummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the analysis.</p>"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis. This ID displays in the URL.</p>"
        },
        "Name": {
          "shape": "AnalysisName",
          "documentation": "<p>The name of the analysis. This name is displayed in the QuickSight console. </p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>The last known status for the analysis.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the analysis was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that the analysis was last updated.</p>"
        }
      },
      "documentation": "<p>The summary metadata that describes an analysis.</p>"
    },
    "AnalysisSummaryList": {
      "type": "list",
      "member": {
        "shape": "AnalysisSummary"
      },
      "max": 100
    },
    "Arn": {
      "type": "string"
    },
    "AssignmentStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DRAFT",
        "DISABLED"
      ]
    },
    "AthenaParameters": {
      "type": "structure",
      "members": {
        "WorkGroup": {
          "shape": "WorkGroup",
          "documentation": "<p>The workgroup that Amazon Athena uses.</p>"
        }
      },
      "documentation": "<p>Amazon Athena parameters.</p>"
    },
    "AuroraParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port",
        "Database"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        }
      },
      "documentation": "<p>Amazon Aurora parameters.</p>"
    },
    "AuroraPostgreSqlParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port",
        "Database"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        }
      },
      "documentation": "<p>Amazon Aurora with PostgreSQL compatibility parameters.</p>"
    },
    "AwsAccountId": {
      "type": "string",
      "max": 12,
      "min": 12,
      "pattern": "^[0-9]{12}$"
    },
    "AwsAndAccountId": {
      "type": "string",
      "pattern": "^(aws|[0-9]{12})$"
    },
    "AwsIotAnalyticsParameters": {
      "type": "structure",
      "required": [
        "DataSetName"
      ],
      "members": {
        "DataSetName": {
          "shape": "DataSetName",
          "documentation": "<p>Dataset name.</p>"
        }
      },
      "documentation": "<p>AWS IoT Analytics parameters.</p>"
    },
    "Boolean": {
      "type": "boolean"
    },
    "BorderStyle": {
      "type": "structure",
      "members": {
        "Show": {
          "shape": "boolean",
          "documentation": "<p>The option to enable display of borders for visuals.</p>",
          "box": true
        }
      },
      "documentation": "<p>The display options for tile borders for visuals.</p>"
    },
    "CalculatedColumn": {
      "type": "structure",
      "required": [
        "ColumnName",
        "ColumnId",
        "Expression"
      ],
      "members": {
        "ColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>Column name.</p>"
        },
        "ColumnId": {
          "shape": "ColumnId",
          "documentation": "<p>A unique ID to identify a calculated column. During a dataset update, if the column ID of a calculated column matches that of an existing calculated column, Amazon QuickSight preserves the existing calculated column.</p>"
        },
        "Expression": {
          "shape": "Expression",
          "documentation": "<p>An expression that defines the calculated column.</p>"
        }
      },
      "documentation": "<p>A calculated column for a dataset.</p>"
    },
    "CalculatedColumnList": {
      "type": "list",
      "member": {
        "shape": "CalculatedColumn"
      },
      "max": 128,
      "min": 1
    },
    "CancelIngestionRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSetId",
        "IngestionId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSetId": {
          "shape": "string",
          "documentation": "<p>The ID of the dataset used in the ingestion.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        },
        "IngestionId": {
          "shape": "IngestionId",
          "documentation": "<p>An ID for the ingestion.</p>",
          "location": "uri",
          "locationName": "IngestionId"
        }
      }
    },
    "CancelIngestionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the data ingestion.</p>"
        },
        "IngestionId": {
          "shape": "IngestionId",
          "documentation": "<p>An ID for the ingestion.</p>"
        },
        "RequestId": {
          "shape": "string",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "CastColumnTypeOperation": {
      "type": "structure",
      "required": [
        "ColumnName",
        "NewColumnType"
      ],
      "members": {
        "ColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>Column name.</p>"
        },
        "NewColumnType": {
          "shape": "ColumnDataType",
          "documentation": "<p>New column data type.</p>"
        },
        "Format": {
          "shape": "TypeCastFormat",
          "documentation": "<p>When casting a column from string to datetime type, you can supply a string in a format supported by Amazon QuickSight to denote the source data format.</p>"
        }
      },
      "documentation": "<p>A transform operation that casts a column to a different type.</p>"
    },
    "Catalog": {
      "type": "string",
      "max": 128
    },
    "ClusterId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ColorList": {
      "type": "list",
      "member": {
        "shape": "HexColor"
      },
      "max": 100
    },
    "ColumnDataType": {
      "type": "string",
      "enum": [
        "STRING",
        "INTEGER",
        "DECIMAL",
        "DATETIME"
      ]
    },
    "ColumnGroup": {
      "type": "structure",
      "members": {
        "GeoSpatialColumnGroup": {
          "shape": "GeoSpatialColumnGroup",
          "documentation": "<p>Geospatial column group that denotes a hierarchy.</p>"
        }
      },
      "documentation": "<p>Groupings of columns that work together in certain Amazon QuickSight features. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>"
    },
    "ColumnGroupColumnSchema": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the column group's column schema.</p>"
        }
      },
      "documentation": "<p>A structure describing the name, data type, and geographic role of the columns.</p>"
    },
    "ColumnGroupColumnSchemaList": {
      "type": "list",
      "member": {
        "shape": "ColumnGroupColumnSchema"
      },
      "max": 500
    },
    "ColumnGroupList": {
      "type": "list",
      "member": {
        "shape": "ColumnGroup"
      },
      "max": 8,
      "min": 1
    },
    "ColumnGroupName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ColumnGroupSchema": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the column group schema.</p>"
        },
        "ColumnGroupColumnSchemaList": {
          "shape": "ColumnGroupColumnSchemaList",
          "documentation": "<p>A structure containing the list of schemas for column group columns.</p>"
        }
      },
      "documentation": "<p>The column group schema.</p>"
    },
    "ColumnGroupSchemaList": {
      "type": "list",
      "member": {
        "shape": "ColumnGroupSchema"
      },
      "max": 500
    },
    "ColumnId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ColumnList": {
      "type": "list",
      "member": {
        "shape": "ColumnName"
      },
      "max": 16,
      "min": 1
    },
    "ColumnName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "ColumnSchema": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "String",
          "documentation": "<p>The name of the column schema.</p>"
        },
        "DataType": {
          "shape": "String",
          "documentation": "<p>The data type of the column schema.</p>"
        },
        "GeographicRole": {
          "shape": "String",
          "documentation": "<p>The geographic role of the column schema.</p>"
        }
      },
      "documentation": "<p>The column schema.</p>"
    },
    "ColumnSchemaList": {
      "type": "list",
      "member": {
        "shape": "ColumnSchema"
      },
      "max": 500
    },
    "ColumnTag": {
      "type": "structure",
      "members": {
        "ColumnGeographicRole": {
          "shape": "GeoSpatialDataRole",
          "documentation": "<p>A geospatial role for a column.</p>"
        }
      },
      "documentation": "<p>A tag for a column in a <a>TagColumnOperation</a> structure. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>"
    },
    "ColumnTagList": {
      "type": "list",
      "member": {
        "shape": "ColumnTag"
      },
      "max": 16,
      "min": 1
    },
    "CopySourceArn": {
      "type": "string",
      "pattern": "^arn:[-a-z0-9]*:quicksight:[-a-z0-9]*:[0-9]{12}:datasource/.+"
    },
    "CreateAccountCustomizationRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AccountCustomization"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you want to customize QuickSight for.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The QuickSight namespace that you want to add customizations to.</p>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "AccountCustomization": {
          "shape": "AccountCustomization",
          "documentation": "<p>The QuickSight customizations you're adding in the current AWS Region. You can add these to an AWS account and a QuickSight namespace. </p> <p>For example, you could add a default theme by setting <code>AccountCustomization</code> to the midnight theme: <code>\"AccountCustomization\": { \"DefaultTheme\": \"arn:aws:quicksight::aws:theme/MIDNIGHT\" }. </code>. Or, you could add a custom theme by specifying <code>\"AccountCustomization\": { \"DefaultTheme\": \"arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639\" }</code>. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A list of the tags that you want to attach to this resource.</p>"
        }
      }
    },
    "CreateAccountCustomizationResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the customization that you created for this AWS account.</p>"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you want to customize QuickSight for.</p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace associated with the customization you're creating. </p>"
        },
        "AccountCustomization": {
          "shape": "AccountCustomization",
          "documentation": "<p>The QuickSight customizations you're adding in the current AWS Region. </p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "CreateAnalysisRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AnalysisId",
        "Name",
        "SourceEntity"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account where you are creating an analysis.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the analysis that you're creating. This ID displays in the URL of the analysis.</p>",
          "location": "uri",
          "locationName": "AnalysisId"
        },
        "Name": {
          "shape": "AnalysisName",
          "documentation": "<p>A descriptive name for the analysis that you're creating. This name displays for the analysis in the QuickSight console. </p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>The parameter names and override values that you want to use. An analysis can have any parameter type, and some parameters might accept multiple values. </p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A structure that describes the principals and the resource-level permissions on an analysis. You can use the <code>Permissions</code> structure to grant permissions by providing a list of AWS Identity and Access Management (IAM) action information for each principal listed by Amazon Resource Name (ARN). </p> <p>To specify no permissions, omit <code>Permissions</code>.</p>"
        },
        "SourceEntity": {
          "shape": "AnalysisSourceEntity",
          "documentation": "<p>A source entity to use for the analysis that you're creating. This metadata structure contains details that describe a source template and one or more datasets.</p>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the theme to apply to the analysis that you're creating. To see the theme in the QuickSight console, make sure that you have access to it.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the analysis.</p>"
        }
      }
    },
    "CreateAnalysisResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the analysis.</p>"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis.</p>"
        },
        "CreationStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The status of the creation of the analysis. </p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "CreateColumnsOperation": {
      "type": "structure",
      "required": [
        "Columns"
      ],
      "members": {
        "Columns": {
          "shape": "CalculatedColumnList",
          "documentation": "<p>Calculated columns to create.</p>"
        }
      },
      "documentation": "<p>A transform operation that creates calculated columns. Columns created in one such operation form a lexical closure.</p>"
    },
    "CreateDashboardRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId",
        "Name",
        "SourceEntity"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account where you want to create the dashboard.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard, also added to the IAM policy.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        },
        "Name": {
          "shape": "DashboardName",
          "documentation": "<p>The display name of the dashboard.</p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. </p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A structure that contains the permissions of the dashboard. You can use this structure for granting permissions by providing a list of IAM action information for each principal ARN. </p> <p>To specify no permissions, omit the permissions list.</p>"
        },
        "SourceEntity": {
          "shape": "DashboardSourceEntity",
          "documentation": "<p>The entity that you are using as a source when you create the dashboard. In <code>SourceEntity</code>, you specify the type of object you're using as source. You can only create a dashboard from a template, so you use a <code>SourceTemplate</code> entity. If you need to create a dashboard from an analysis, first convert the analysis to a template by using the <a>CreateTemplate</a> API operation. For <code>SourceTemplate</code>, specify the Amazon Resource Name (ARN) of the source template. The <code>SourceTemplate</code>ARN can contain any AWS Account and any QuickSight-supported AWS Region. </p> <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> to list the replacement datasets for the placeholders listed in the original. The schema in each dataset must match its placeholder. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the dashboard.</p>"
        },
        "VersionDescription": {
          "shape": "VersionDescription",
          "documentation": "<p>A description for the first version of the dashboard being created.</p>"
        },
        "DashboardPublishOptions": {
          "shape": "DashboardPublishOptions",
          "documentation": "<p>Options for publishing the dashboard when you create it:</p> <ul> <li> <p> <code>AvailabilityStatus</code> for <code>AdHocFilteringOption</code> - This status can be either <code>ENABLED</code> or <code>DISABLED</code>. When this is set to <code>DISABLED</code>, QuickSight disables the left filter pane on the published dashboard, which can be used for ad hoc (one-time) filtering. This option is <code>ENABLED</code> by default. </p> </li> <li> <p> <code>AvailabilityStatus</code> for <code>ExportToCSVOption</code> - This status can be either <code>ENABLED</code> or <code>DISABLED</code>. The visual option to export data to .CSV format isn't enabled when this is set to <code>DISABLED</code>. This option is <code>ENABLED</code> by default. </p> </li> <li> <p> <code>VisibilityState</code> for <code>SheetControlsOption</code> - This visibility state can be either <code>COLLAPSED</code> or <code>EXPANDED</code>. This option is <code>COLLAPSED</code> by default. </p> </li> </ul>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If you add a value for this field, it overrides the value that is used in the source entity. The theme ARN must exist in the same AWS account where you create the dashboard.</p>"
        }
      }
    },
    "CreateDashboardResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dashboard.</p>"
        },
        "VersionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dashboard, including the version number of the first version that is created.</p>"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>"
        },
        "CreationStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The status of the dashboard creation request.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "CreateDataSetRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSetId",
        "Name",
        "PhysicalTableMap",
        "ImportMode"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>An ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The display name for the dataset.</p>"
        },
        "PhysicalTableMap": {
          "shape": "PhysicalTableMap",
          "documentation": "<p>Declares the physical tables that are available in the underlying data sources.</p>"
        },
        "LogicalTableMap": {
          "shape": "LogicalTableMap",
          "documentation": "<p>Configures the combination and transformation of the data from the physical tables.</p>"
        },
        "ImportMode": {
          "shape": "DataSetImportMode",
          "documentation": "<p>Indicates whether you want to import the data into SPICE.</p>"
        },
        "ColumnGroups": {
          "shape": "ColumnGroupList",
          "documentation": "<p>Groupings of columns that work together in certain QuickSight features. Currently, only geospatial hierarchy is supported.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions on the dataset.</p>"
        },
        "RowLevelPermissionDataSet": {
          "shape": "RowLevelPermissionDataSet",
          "documentation": "<p>The row-level security configuration for the data that you want to create.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the dataset.</p>"
        }
      }
    },
    "CreateDataSetResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "IngestionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the ingestion, which is triggered as a result of dataset creation if the import mode is SPICE.</p>"
        },
        "IngestionId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the ingestion, which is triggered as a result of dataset creation if the import mode is SPICE.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "CreateDataSourceRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSourceId",
        "Name",
        "Type"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>An ID for the data source. This ID is unique per AWS Region for each AWS account. </p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>A display name for the data source.</p>"
        },
        "Type": {
          "shape": "DataSourceType",
          "documentation": "<p>The type of the data source. Currently, the supported types for this operation are: <code>ATHENA, AURORA, AURORA_POSTGRESQL, MARIADB, MYSQL, POSTGRESQL, PRESTO, REDSHIFT, S3, SNOWFLAKE, SPARK, SQLSERVER, TERADATA</code>. Use <code>ListDataSources</code> to return a list of all data sources.</p>"
        },
        "DataSourceParameters": {
          "shape": "DataSourceParameters",
          "documentation": "<p>The parameters that QuickSight uses to connect to your underlying source.</p>"
        },
        "Credentials": {
          "shape": "DataSourceCredentials",
          "documentation": "<p>The credentials QuickSight that uses to connect to your underlying source. Currently, only credentials based on user name and password are supported.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions on the data source.</p>"
        },
        "VpcConnectionProperties": {
          "shape": "VpcConnectionProperties",
          "documentation": "<p>Use this parameter only when you want QuickSight to use a VPC connection when connecting to your underlying source.</p>"
        },
        "SslProperties": {
          "shape": "SslProperties",
          "documentation": "<p>Secure Socket Layer (SSL) properties that apply when QuickSight connects to your underlying source.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the data source.</p>"
        }
      }
    },
    "CreateDataSourceResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the data source.</p>"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "CreationStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The status of creating the data source.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "CreateGroupMembershipRequest": {
      "type": "structure",
      "required": [
        "MemberName",
        "GroupName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "MemberName": {
          "shape": "GroupMemberName",
          "documentation": "<p>The name of the user that you want to add to the group membership.</p>",
          "location": "uri",
          "locationName": "MemberName"
        },
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group that you want to add the user to.</p>",
          "location": "uri",
          "locationName": "GroupName"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "CreateGroupMembershipResponse": {
      "type": "structure",
      "members": {
        "GroupMember": {
          "shape": "GroupMember",
          "documentation": "<p>The group member.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "CreateGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>A name for the group that you want to create.</p>"
        },
        "Description": {
          "shape": "GroupDescription",
          "documentation": "<p>A description for the group that you want to create.</p>"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      },
      "documentation": "<p>The request object for this operation. </p>"
    },
    "CreateGroupResponse": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>The name of the group.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      },
      "documentation": "<p>The response object for this operation.</p>"
    },
    "CreateIAMPolicyAssignmentRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AssignmentName",
        "AssignmentStatus",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account where you want to assign an IAM policy to QuickSight users or groups.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>The name of the assignment. It must be unique within an AWS account.</p>"
        },
        "AssignmentStatus": {
          "shape": "AssignmentStatus",
          "documentation": "<p>The status of the assignment. Possible values are as follows:</p> <ul> <li> <p> <code>ENABLED</code> - Anything specified in this assignment is used when creating the data source.</p> </li> <li> <p> <code>DISABLED</code> - This assignment isn't used when creating the data source.</p> </li> <li> <p> <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the data source.</p> </li> </ul>"
        },
        "PolicyArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the IAM policy to apply to the QuickSight users and groups specified in this assignment.</p>"
        },
        "Identities": {
          "shape": "IdentityMap",
          "documentation": "<p>The QuickSight users, groups, or both that you want to assign the policy to.</p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace that contains the assignment.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "CreateIAMPolicyAssignmentResponse": {
      "type": "structure",
      "members": {
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>The name of the assignment. This name must be unique within the AWS account.</p>"
        },
        "AssignmentId": {
          "shape": "String",
          "documentation": "<p>The ID for the assignment.</p>"
        },
        "AssignmentStatus": {
          "shape": "AssignmentStatus",
          "documentation": "<p>The status of the assignment. Possible values are as follows:</p> <ul> <li> <p> <code>ENABLED</code> - Anything specified in this assignment is used when creating the data source.</p> </li> <li> <p> <code>DISABLED</code> - This assignment isn't used when creating the data source.</p> </li> <li> <p> <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the data source.</p> </li> </ul>"
        },
        "PolicyArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the IAM policy that is applied to the QuickSight users and groups specified in this assignment.</p>"
        },
        "Identities": {
          "shape": "IdentityMap",
          "documentation": "<p>The QuickSight users, groups, or both that the IAM policy is assigned to.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "CreateIngestionRequest": {
      "type": "structure",
      "required": [
        "DataSetId",
        "IngestionId",
        "AwsAccountId"
      ],
      "members": {
        "DataSetId": {
          "shape": "string",
          "documentation": "<p>The ID of the dataset used in the ingestion.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        },
        "IngestionId": {
          "shape": "IngestionId",
          "documentation": "<p>An ID for the ingestion.</p>",
          "location": "uri",
          "locationName": "IngestionId"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        }
      }
    },
    "CreateIngestionResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the data ingestion.</p>"
        },
        "IngestionId": {
          "shape": "IngestionId",
          "documentation": "<p>An ID for the ingestion.</p>"
        },
        "IngestionStatus": {
          "shape": "IngestionStatus",
          "documentation": "<p>The ingestion status.</p>"
        },
        "RequestId": {
          "shape": "string",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "CreateNamespaceRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "Namespace",
        "IdentityStore"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you want to create the QuickSight namespace in.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The name that you want to use to describe the new namespace.</p>"
        },
        "IdentityStore": {
          "shape": "IdentityStore",
          "documentation": "<p>Specifies the type of your user identity directory. Currently, this supports users with an identity type of <code>QUICKSIGHT</code>.</p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>The tags that you want to associate with the namespace that you're creating.</p>"
        }
      }
    },
    "CreateNamespaceResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the QuickSight namespace you created. </p>"
        },
        "Name": {
          "shape": "Namespace",
          "documentation": "<p>The name of the new namespace that you created.</p>"
        },
        "CapacityRegion": {
          "shape": "String",
          "documentation": "<p>The AWS Region that you want to use for the free SPICE capacity for the new namespace. This is set to the region that you run CreateNamespace in. </p>"
        },
        "CreationStatus": {
          "shape": "NamespaceStatus",
          "documentation": "<p>The status of the creation of the namespace. This is an asynchronous process. A status of <code>CREATED</code> means that your namespace is ready to use. If an error occurs, it indicates if the process is <code>retryable</code> or <code>non-retryable</code>. In the case of a non-retryable error, refer to the error message for follow-up tasks.</p>"
        },
        "IdentityStore": {
          "shape": "IdentityStore",
          "documentation": "<p>Specifies the type of your user identity directory. Currently, this supports users with an identity type of <code>QUICKSIGHT</code>.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "CreateTemplateAliasRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId",
        "AliasName",
        "TemplateVersionNumber"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template that you creating an alias for.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The name that you want to give to the template alias that you're creating. Don't start the alias name with the <code>$</code> character. Alias names that start with <code>$</code> are reserved by QuickSight. </p>",
          "location": "uri",
          "locationName": "AliasName"
        },
        "TemplateVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the template.</p>"
        }
      }
    },
    "CreateTemplateAliasResponse": {
      "type": "structure",
      "members": {
        "TemplateAlias": {
          "shape": "TemplateAlias",
          "documentation": "<p>Information about the template alias.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "CreateTemplateRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId",
        "SourceEntity"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the template that you want to create. This template is unique per AWS Region in each AWS account.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "Name": {
          "shape": "TemplateName",
          "documentation": "<p>A display name for the template.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions to be set on the template. </p>"
        },
        "SourceEntity": {
          "shape": "TemplateSourceEntity",
          "documentation": "<p>The entity that you are using as a source when you create the template. In <code>SourceEntity</code>, you specify the type of object you're using as source: <code>SourceTemplate</code> for a template or <code>SourceAnalysis</code> for an analysis. Both of these require an Amazon Resource Name (ARN). For <code>SourceTemplate</code>, specify the ARN of the source template. For <code>SourceAnalysis</code>, specify the ARN of the source analysis. The <code>SourceTemplate</code> ARN can contain any AWS Account and any QuickSight-supported AWS Region. </p> <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> or <code>SourceAnalysis</code> to list the replacement datasets for the placeholders listed in the original. The schema in each dataset must match its placeholder. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>"
        },
        "VersionDescription": {
          "shape": "VersionDescription",
          "documentation": "<p>A description of the current template version being created. This API operation creates the first version of the template. Every time <code>UpdateTemplate</code> is called, a new version is created. Each version of the template maintains a description of the version in the <code>VersionDescription</code> field.</p>"
        }
      }
    },
    "CreateTemplateResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the template.</p>"
        },
        "VersionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the template, including the version information of the first version.</p>"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the template.</p>"
        },
        "CreationStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The template creation status.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "CreateThemeAliasRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId",
        "AliasName",
        "ThemeVersionNumber"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme for the new theme alias.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the theme alias.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The name that you want to give to the theme alias that you are creating. The alias name can't begin with a <code>$</code>. Alias names that start with <code>$</code> are reserved by Amazon QuickSight. </p>",
          "location": "uri",
          "locationName": "AliasName"
        },
        "ThemeVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the theme.</p>"
        }
      }
    },
    "CreateThemeAliasResponse": {
      "type": "structure",
      "members": {
        "ThemeAlias": {
          "shape": "ThemeAlias",
          "documentation": "<p>Information about the theme alias.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "CreateThemeRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId",
        "Name",
        "BaseThemeId",
        "Configuration"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account where you want to store the new theme. </p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the theme that you want to create. The theme ID is unique per AWS Region in each AWS account.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "Name": {
          "shape": "ThemeName",
          "documentation": "<p>A display name for the theme.</p>"
        },
        "BaseThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the theme that a custom theme will inherit from. All themes inherit from one of the starting themes defined by Amazon QuickSight. For a list of the starting themes, use <code>ListThemes</code> or choose <b>Themes</b> from within a QuickSight analysis. </p>"
        },
        "VersionDescription": {
          "shape": "VersionDescription",
          "documentation": "<p>A description of the first version of the theme that you're creating. Every time <code>UpdateTheme</code> is called, a new version is created. Each version of the theme has a description of the version in the <code>VersionDescription</code> field.</p>"
        },
        "Configuration": {
          "shape": "ThemeConfiguration",
          "documentation": "<p>The theme configuration, which contains the theme display properties.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A valid grouping of resource permissions to apply to the new theme. </p>"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>A map of the key-value pairs for the resource tag or tags that you want to add to the resource.</p>"
        }
      }
    },
    "CreateThemeResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the theme.</p>"
        },
        "VersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the new theme.</p>"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the theme.</p>"
        },
        "CreationStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The theme creation status.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "CredentialPair": {
      "type": "structure",
      "required": [
        "Username",
        "Password"
      ],
      "members": {
        "Username": {
          "shape": "Username",
          "documentation": "<p>User name.</p>"
        },
        "Password": {
          "shape": "Password",
          "documentation": "<p>Password.</p>"
        },
        "AlternateDataSourceParameters": {
          "shape": "DataSourceParametersList",
          "documentation": "<p>A set of alternate data source parameters that you want to share for these credentials. The credentials are applied in tandem with the data source parameters when you copy a data source by using a create or update request. The API operation compares the <code>DataSourceParameters</code> structure that's in the request with the structures in the <code>AlternateDataSourceParameters</code> allowlist. If the structures are an exact match, the request is allowed to use the new data source with the existing credentials. If the <code>AlternateDataSourceParameters</code> list is null, the <code>DataSourceParameters</code> originally used with these <code>Credentials</code> is automatically allowed.</p>"
        }
      },
      "documentation": "<p>The combination of user name and password that are used as credentials.</p>"
    },
    "CustomSql": {
      "type": "structure",
      "required": [
        "DataSourceArn",
        "Name",
        "SqlQuery"
      ],
      "members": {
        "DataSourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the data source.</p>"
        },
        "Name": {
          "shape": "CustomSqlName",
          "documentation": "<p>A display name for the SQL query result.</p>"
        },
        "SqlQuery": {
          "shape": "SqlQuery",
          "documentation": "<p>The SQL query.</p>"
        },
        "Columns": {
          "shape": "InputColumnList",
          "documentation": "<p>The column schema from the SQL query result set.</p>"
        }
      },
      "documentation": "<p>A physical table type built from the results of the custom SQL query.</p>"
    },
    "CustomSqlName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "Dashboard": {
      "type": "structure",
      "members": {
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>Dashboard ID.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "Name": {
          "shape": "DashboardName",
          "documentation": "<p>A display name for the dashboard.</p>"
        },
        "Version": {
          "shape": "DashboardVersion",
          "documentation": "<p>Version.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this dataset was created.</p>"
        },
        "LastPublishedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this dataset was published.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this dataset was updated.</p>"
        }
      },
      "documentation": "<p>Dashboard.</p>"
    },
    "DashboardBehavior": {
      "type": "string",
      "enum": [
        "ENABLED",
        "DISABLED"
      ]
    },
    "DashboardError": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "DashboardErrorType",
          "documentation": "<p>Type.</p>"
        },
        "Message": {
          "shape": "NonEmptyString",
          "documentation": "<p>Message.</p>"
        }
      },
      "documentation": "<p>Dashboard error.</p>"
    },
    "DashboardErrorList": {
      "type": "list",
      "member": {
        "shape": "DashboardError"
      },
      "min": 1
    },
    "DashboardErrorType": {
      "type": "string",
      "enum": [
        "ACCESS_DENIED",
        "SOURCE_NOT_FOUND",
        "DATA_SET_NOT_FOUND",
        "INTERNAL_FAILURE",
        "PARAMETER_VALUE_INCOMPATIBLE",
        "PARAMETER_TYPE_INVALID",
        "PARAMETER_NOT_FOUND",
        "COLUMN_TYPE_MISMATCH",
        "COLUMN_GEOGRAPHIC_ROLE_MISMATCH",
        "COLUMN_REPLACEMENT_MISSING"
      ]
    },
    "DashboardFilterAttribute": {
      "type": "string",
      "enum": [
        "QUICKSIGHT_USER"
      ]
    },
    "DashboardName": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "DashboardPublishOptions": {
      "type": "structure",
      "members": {
        "AdHocFilteringOption": {
          "shape": "AdHocFilteringOption",
          "documentation": "<p>Ad hoc (one-time) filtering option.</p>"
        },
        "ExportToCSVOption": {
          "shape": "ExportToCSVOption",
          "documentation": "<p>Export to .csv option.</p>"
        },
        "SheetControlsOption": {
          "shape": "SheetControlsOption",
          "documentation": "<p>Sheet controls option.</p>"
        }
      },
      "documentation": "<p>Dashboard publish options.</p>"
    },
    "DashboardSearchFilter": {
      "type": "structure",
      "required": [
        "Operator"
      ],
      "members": {
        "Operator": {
          "shape": "FilterOperator",
          "documentation": "<p>The comparison operator that you want to use as a filter, for example, <code>\"Operator\": \"StringEquals\"</code>.</p>"
        },
        "Name": {
          "shape": "DashboardFilterAttribute",
          "documentation": "<p>The name of the value that you want to use as a filter, for example, <code>\"Name\": \"QUICKSIGHT_USER\"</code>. </p>"
        },
        "Value": {
          "shape": "String",
          "documentation": "<p>The value of the named item, in this case <code>QUICKSIGHT_USER</code>, that you want to use as a filter, for example, <code>\"Value\": \"arn:aws:quicksight:us-east-1:1:user/default/UserName1\"</code>. </p>"
        }
      },
      "documentation": "<p>A filter that you apply when searching for dashboards. </p>"
    },
    "DashboardSearchFilterList": {
      "type": "list",
      "member": {
        "shape": "DashboardSearchFilter"
      },
      "max": 1
    },
    "DashboardSourceEntity": {
      "type": "structure",
      "members": {
        "SourceTemplate": {
          "shape": "DashboardSourceTemplate",
          "documentation": "<p>Source template.</p>"
        }
      },
      "documentation": "<p>Dashboard source entity.</p>"
    },
    "DashboardSourceTemplate": {
      "type": "structure",
      "required": [
        "DataSetReferences",
        "Arn"
      ],
      "members": {
        "DataSetReferences": {
          "shape": "DataSetReferenceList",
          "documentation": "<p>Dataset references.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        }
      },
      "documentation": "<p>Dashboard source template.</p>"
    },
    "DashboardSummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>Dashboard ID.</p>"
        },
        "Name": {
          "shape": "DashboardName",
          "documentation": "<p>A display name for the dashboard.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this dashboard was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this dashboard was updated.</p>"
        },
        "PublishedVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>Published version number.</p>"
        },
        "LastPublishedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this dashboard was published.</p>"
        }
      },
      "documentation": "<p>Dashboard summary.</p>"
    },
    "DashboardSummaryList": {
      "type": "list",
      "member": {
        "shape": "DashboardSummary"
      },
      "max": 100
    },
    "DashboardUIState": {
      "type": "string",
      "enum": [
        "EXPANDED",
        "COLLAPSED"
      ]
    },
    "DashboardVersion": {
      "type": "structure",
      "members": {
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this dashboard version was created.</p>"
        },
        "Errors": {
          "shape": "DashboardErrorList",
          "documentation": "<p>Errors associated with this dashboard version.</p>"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>Version number for this version of the dashboard.</p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>The HTTP status of the request.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "SourceEntityArn": {
          "shape": "Arn",
          "documentation": "<p>Source entity ARN.</p>"
        },
        "DataSetArns": {
          "shape": "DataSetArnsList",
          "documentation": "<p>The Amazon Resource Numbers (ARNs) for the datasets that are associated with this version of the dashboard.</p>"
        },
        "Description": {
          "shape": "VersionDescription",
          "documentation": "<p>Description.</p>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the theme associated with a version of the dashboard.</p>"
        }
      },
      "documentation": "<p>Dashboard version.</p>"
    },
    "DashboardVersionSummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this dashboard version was created.</p>"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>Version number.</p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>The HTTP status of the request.</p>"
        },
        "SourceEntityArn": {
          "shape": "Arn",
          "documentation": "<p>Source entity ARN.</p>"
        },
        "Description": {
          "shape": "VersionDescription",
          "documentation": "<p>Description.</p>"
        }
      },
      "documentation": "<p>Dashboard version summary.</p>"
    },
    "DashboardVersionSummaryList": {
      "type": "list",
      "member": {
        "shape": "DashboardVersionSummary"
      },
      "max": 100
    },
    "DataColorPalette": {
      "type": "structure",
      "members": {
        "Colors": {
          "shape": "ColorList",
          "documentation": "<p>The hexadecimal codes for the colors.</p>"
        },
        "MinMaxGradient": {
          "shape": "ColorList",
          "documentation": "<p>The minimum and maximum hexadecimal codes that describe a color gradient. </p>"
        },
        "EmptyFillColor": {
          "shape": "HexColor",
          "documentation": "<p>The hexadecimal code of a color that applies to charts where a lack of data is highlighted.</p>"
        }
      },
      "documentation": "<p>The theme colors that are used for data colors in charts. The colors description is a hexidecimal color code that consists of six alphanumerical characters, prefixed with <code>#</code>, for example #37BFF5. </p>"
    },
    "DataSet": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the dataset.</p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>A display name for the dataset.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this dataset was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this dataset was updated.</p>"
        },
        "PhysicalTableMap": {
          "shape": "PhysicalTableMap",
          "documentation": "<p>Declares the physical tables that are available in the underlying data sources.</p>"
        },
        "LogicalTableMap": {
          "shape": "LogicalTableMap",
          "documentation": "<p>Configures the combination and transformation of the data from the physical tables.</p>"
        },
        "OutputColumns": {
          "shape": "OutputColumnList",
          "documentation": "<p>The list of columns after all transforms. These columns are available in templates, analyses, and dashboards.</p>"
        },
        "ImportMode": {
          "shape": "DataSetImportMode",
          "documentation": "<p>Indicates whether you want to import the data into SPICE.</p>"
        },
        "ConsumedSpiceCapacityInBytes": {
          "shape": "Long",
          "documentation": "<p>The amount of SPICE capacity used by this dataset. This is 0 if the dataset isn't imported into SPICE.</p>"
        },
        "ColumnGroups": {
          "shape": "ColumnGroupList",
          "documentation": "<p>Groupings of columns that work together in certain Amazon QuickSight features. Currently, only geospatial hierarchy is supported.</p>"
        },
        "RowLevelPermissionDataSet": {
          "shape": "RowLevelPermissionDataSet",
          "documentation": "<p>The row-level security configuration for the dataset.</p>"
        }
      },
      "documentation": "<p>Dataset.</p>"
    },
    "DataSetArnsList": {
      "type": "list",
      "member": {
        "shape": "Arn"
      },
      "max": 100
    },
    "DataSetConfiguration": {
      "type": "structure",
      "members": {
        "Placeholder": {
          "shape": "String",
          "documentation": "<p>Placeholder.</p>"
        },
        "DataSetSchema": {
          "shape": "DataSetSchema",
          "documentation": "<p>Dataset schema.</p>"
        },
        "ColumnGroupSchemaList": {
          "shape": "ColumnGroupSchemaList",
          "documentation": "<p>A structure containing the list of column group schemas.</p>"
        }
      },
      "documentation": "<p>Dataset configuration.</p>"
    },
    "DataSetConfigurationList": {
      "type": "list",
      "member": {
        "shape": "DataSetConfiguration"
      },
      "max": 30
    },
    "DataSetImportMode": {
      "type": "string",
      "enum": [
        "SPICE",
        "DIRECT_QUERY"
      ]
    },
    "DataSetName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "DataSetReference": {
      "type": "structure",
      "required": [
        "DataSetPlaceholder",
        "DataSetArn"
      ],
      "members": {
        "DataSetPlaceholder": {
          "shape": "NonEmptyString",
          "documentation": "<p>Dataset placeholder.</p>"
        },
        "DataSetArn": {
          "shape": "Arn",
          "documentation": "<p>Dataset Amazon Resource Name (ARN).</p>"
        }
      },
      "documentation": "<p>Dataset reference.</p>"
    },
    "DataSetReferenceList": {
      "type": "list",
      "member": {
        "shape": "DataSetReference"
      },
      "min": 1
    },
    "DataSetSchema": {
      "type": "structure",
      "members": {
        "ColumnSchemaList": {
          "shape": "ColumnSchemaList",
          "documentation": "<p>A structure containing the list of column schemas.</p>"
        }
      },
      "documentation": "<p>Dataset schema.</p>"
    },
    "DataSetSummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the dataset.</p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>A display name for the dataset.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this dataset was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this dataset was updated.</p>"
        },
        "ImportMode": {
          "shape": "DataSetImportMode",
          "documentation": "<p>Indicates whether you want to import the data into SPICE.</p>"
        },
        "RowLevelPermissionDataSet": {
          "shape": "RowLevelPermissionDataSet",
          "documentation": "<p>The row-level security configuration for the dataset.</p>"
        }
      },
      "documentation": "<p>Dataset summary.</p>"
    },
    "DataSetSummaryList": {
      "type": "list",
      "member": {
        "shape": "DataSetSummary"
      }
    },
    "DataSource": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the data source.</p>"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>A display name for the data source.</p>"
        },
        "Type": {
          "shape": "DataSourceType",
          "documentation": "<p>The type of the data source. This type indicates which database engine the data source connects to.</p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>The HTTP status of the request.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this data source was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this data source was updated.</p>"
        },
        "DataSourceParameters": {
          "shape": "DataSourceParameters",
          "documentation": "<p>The parameters that Amazon QuickSight uses to connect to your underlying source. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>"
        },
        "AlternateDataSourceParameters": {
          "shape": "DataSourceParametersList",
          "documentation": "<p>A set of alternate data source parameters that you want to share for the credentials stored with this data source. The credentials are applied in tandem with the data source parameters when you copy a data source by using a create or update request. The API operation compares the <code>DataSourceParameters</code> structure that's in the request with the structures in the <code>AlternateDataSourceParameters</code> allowlist. If the structures are an exact match, the request is allowed to use the credentials from this existing data source. If the <code>AlternateDataSourceParameters</code> list is null, the <code>Credentials</code> originally used with this <code>DataSourceParameters</code> are automatically allowed.</p>"
        },
        "VpcConnectionProperties": {
          "shape": "VpcConnectionProperties",
          "documentation": "<p>The VPC connection information. You need to use this parameter only when you want QuickSight to use a VPC connection when connecting to your underlying source.</p>"
        },
        "SslProperties": {
          "shape": "SslProperties",
          "documentation": "<p>Secure Socket Layer (SSL) properties that apply when QuickSight connects to your underlying source.</p>"
        },
        "ErrorInfo": {
          "shape": "DataSourceErrorInfo",
          "documentation": "<p>Error information from the last update or the creation of the data source.</p>"
        }
      },
      "documentation": "<p>The structure of a data source.</p>"
    },
    "DataSourceCredentials": {
      "type": "structure",
      "members": {
        "CredentialPair": {
          "shape": "CredentialPair",
          "documentation": "<p>Credential pair. For more information, see <a>CredentialPair</a>.</p>"
        },
        "CopySourceArn": {
          "shape": "CopySourceArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a data source that has the credential pair that you want to use. When <code>CopySourceArn</code> is not null, the credential pair from the data source in the ARN is used as the credentials for the <code>DataSourceCredentials</code> structure.</p>"
        }
      },
      "documentation": "<p>Data source credentials. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>",
      "sensitive": true
    },
    "DataSourceErrorInfo": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "DataSourceErrorInfoType",
          "documentation": "<p>Error type.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>Error message.</p>"
        }
      },
      "documentation": "<p>Error information for the data source creation or update.</p>"
    },
    "DataSourceErrorInfoType": {
      "type": "string",
      "enum": [
        "ACCESS_DENIED",
        "COPY_SOURCE_NOT_FOUND",
        "TIMEOUT",
        "ENGINE_VERSION_NOT_SUPPORTED",
        "UNKNOWN_HOST",
        "GENERIC_SQL_FAILURE",
        "CONFLICT",
        "UNKNOWN"
      ]
    },
    "DataSourceList": {
      "type": "list",
      "member": {
        "shape": "DataSource"
      }
    },
    "DataSourceParameters": {
      "type": "structure",
      "members": {
        "AmazonElasticsearchParameters": {
          "shape": "AmazonElasticsearchParameters",
          "documentation": "<p>Amazon Elasticsearch Service parameters.</p>"
        },
        "AthenaParameters": {
          "shape": "AthenaParameters",
          "documentation": "<p>Amazon Athena parameters.</p>"
        },
        "AuroraParameters": {
          "shape": "AuroraParameters",
          "documentation": "<p>Amazon Aurora MySQL parameters.</p>"
        },
        "AuroraPostgreSqlParameters": {
          "shape": "AuroraPostgreSqlParameters",
          "documentation": "<p>Aurora PostgreSQL parameters.</p>"
        },
        "AwsIotAnalyticsParameters": {
          "shape": "AwsIotAnalyticsParameters",
          "documentation": "<p>AWS IoT Analytics parameters.</p>"
        },
        "JiraParameters": {
          "shape": "JiraParameters",
          "documentation": "<p>Jira parameters.</p>"
        },
        "MariaDbParameters": {
          "shape": "MariaDbParameters",
          "documentation": "<p>MariaDB parameters.</p>"
        },
        "MySqlParameters": {
          "shape": "MySqlParameters",
          "documentation": "<p>MySQL parameters.</p>"
        },
        "PostgreSqlParameters": {
          "shape": "PostgreSqlParameters",
          "documentation": "<p>PostgreSQL parameters.</p>"
        },
        "PrestoParameters": {
          "shape": "PrestoParameters",
          "documentation": "<p>Presto parameters.</p>"
        },
        "RdsParameters": {
          "shape": "RdsParameters",
          "documentation": "<p>Amazon RDS parameters.</p>"
        },
        "RedshiftParameters": {
          "shape": "RedshiftParameters",
          "documentation": "<p>Amazon Redshift parameters.</p>"
        },
        "S3Parameters": {
          "shape": "S3Parameters",
          "documentation": "<p>S3 parameters.</p>"
        },
        "ServiceNowParameters": {
          "shape": "ServiceNowParameters",
          "documentation": "<p>ServiceNow parameters.</p>"
        },
        "SnowflakeParameters": {
          "shape": "SnowflakeParameters",
          "documentation": "<p>Snowflake parameters.</p>"
        },
        "SparkParameters": {
          "shape": "SparkParameters",
          "documentation": "<p>Spark parameters.</p>"
        },
        "SqlServerParameters": {
          "shape": "SqlServerParameters",
          "documentation": "<p>SQL Server parameters.</p>"
        },
        "TeradataParameters": {
          "shape": "TeradataParameters",
          "documentation": "<p>Teradata parameters.</p>"
        },
        "TwitterParameters": {
          "shape": "TwitterParameters",
          "documentation": "<p>Twitter parameters.</p>"
        }
      },
      "documentation": "<p>The parameters that Amazon QuickSight uses to connect to your underlying data source. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>"
    },
    "DataSourceParametersList": {
      "type": "list",
      "member": {
        "shape": "DataSourceParameters"
      },
      "max": 50,
      "min": 1
    },
    "DataSourceType": {
      "type": "string",
      "enum": [
        "ADOBE_ANALYTICS",
        "AMAZON_ELASTICSEARCH",
        "ATHENA",
        "AURORA",
        "AURORA_POSTGRESQL",
        "AWS_IOT_ANALYTICS",
        "GITHUB",
        "JIRA",
        "MARIADB",
        "MYSQL",
        "POSTGRESQL",
        "PRESTO",
        "REDSHIFT",
        "S3",
        "SALESFORCE",
        "SERVICENOW",
        "SNOWFLAKE",
        "SPARK",
        "SQLSERVER",
        "TERADATA",
        "TWITTER"
      ]
    },
    "Database": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "DateTimeParameter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "NonEmptyString",
          "documentation": "<p>A display name for the date-time parameter.</p>"
        },
        "Values": {
          "shape": "TimestampList",
          "documentation": "<p>The values for the date-time parameter.</p>"
        }
      },
      "documentation": "<p>A date-time parameter.</p>"
    },
    "DateTimeParameterList": {
      "type": "list",
      "member": {
        "shape": "DateTimeParameter"
      },
      "max": 100
    },
    "DecimalParameter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "NonEmptyString",
          "documentation": "<p>A display name for the decimal parameter.</p>"
        },
        "Values": {
          "shape": "DoubleList",
          "documentation": "<p>The values for the decimal parameter.</p>"
        }
      },
      "documentation": "<p>A decimal parameter.</p>"
    },
    "DecimalParameterList": {
      "type": "list",
      "member": {
        "shape": "DecimalParameter"
      },
      "max": 100
    },
    "DeleteAccountCustomizationRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you want to delete QuickSight customizations from in this AWS Region.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The QuickSight namespace that you're deleting the customizations from.</p>",
          "location": "querystring",
          "locationName": "namespace"
        }
      }
    },
    "DeleteAccountCustomizationResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteAnalysisRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AnalysisId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account where you want to delete an analysis.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis that you're deleting.</p>",
          "location": "uri",
          "locationName": "AnalysisId"
        },
        "RecoveryWindowInDays": {
          "shape": "RecoveryWindowInDays",
          "documentation": "<p>A value that specifies the number of days that QuickSight waits before it deletes the analysis. You can't use this parameter with the <code>ForceDeleteWithoutRecovery</code> option in the same API call. The default value is 30.</p>",
          "location": "querystring",
          "locationName": "recovery-window-in-days"
        },
        "ForceDeleteWithoutRecovery": {
          "shape": "boolean",
          "documentation": "<p>This option defaults to the value <code>NoForceDeleteWithoutRecovery</code>. To immediately delete the analysis, add the <code>ForceDeleteWithoutRecovery</code> option. You can't restore an analysis after it's deleted. </p>",
          "location": "querystring",
          "locationName": "force-delete-without-recovery"
        }
      }
    },
    "DeleteAnalysisResponse": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the deleted analysis.</p>"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the deleted analysis.</p>"
        },
        "DeletionTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the analysis is scheduled to be deleted.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DeleteDashboardRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the dashboard that you're deleting.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the dashboard. If the version number property is provided, only the specified version of the dashboard is deleted.</p>",
          "location": "querystring",
          "locationName": "version-number"
        }
      }
    },
    "DeleteDashboardResponse": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Secure Socket Layer (SSL) properties that apply for the resource.</p>"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the dashboard.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DeleteDataSetRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSetId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        }
      }
    },
    "DeleteDataSetResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteDataSourceRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSourceId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>",
          "location": "uri",
          "locationName": "DataSourceId"
        }
      }
    },
    "DeleteDataSourceResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the data source that you deleted.</p>"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteGroupMembershipRequest": {
      "type": "structure",
      "required": [
        "MemberName",
        "GroupName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "MemberName": {
          "shape": "GroupMemberName",
          "documentation": "<p>The name of the user that you want to delete from the group membership.</p>",
          "location": "uri",
          "locationName": "MemberName"
        },
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group that you want to delete the user from.</p>",
          "location": "uri",
          "locationName": "GroupName"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DeleteGroupMembershipResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group that you want to delete.</p>",
          "location": "uri",
          "locationName": "GroupName"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DeleteGroupResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteIAMPolicyAssignmentRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AssignmentName",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID where you want to delete the IAM policy assignment.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>The name of the assignment. </p>",
          "location": "uri",
          "locationName": "AssignmentName"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace that contains the assignment.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DeleteIAMPolicyAssignmentResponse": {
      "type": "structure",
      "members": {
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>The name of the assignment. </p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteNamespaceRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you want to delete the QuickSight namespace from.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace that you want to delete.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DeleteNamespaceResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteTemplateAliasRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId",
        "AliasName"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the item to delete.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template that the specified alias is for.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The name for the template alias. To delete a specific alias, you delete the version that the alias points to. You can specify the alias name, or specify the latest version of the template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code> parameter. </p>",
          "location": "uri",
          "locationName": "AliasName"
        }
      }
    },
    "DeleteTemplateAliasResponse": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the template associated with the deletion.</p>"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The name for the template alias.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the template you want to delete.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DeleteTemplateRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template that you're deleting.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the template you want to delete.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>Specifies the version of the template that you want to delete. If you don't provide a version number, <code>DeleteTemplate</code> deletes all versions of the template. </p>",
          "location": "querystring",
          "locationName": "version-number"
        }
      }
    },
    "DeleteTemplateResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the template.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteThemeAliasRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId",
        "AliasName"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme alias to delete.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme that the specified alias is for.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The unique name for the theme alias to delete.</p>",
          "location": "uri",
          "locationName": "AliasName"
        }
      }
    },
    "DeleteThemeAliasResponse": {
      "type": "structure",
      "members": {
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The name for the theme alias.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the theme resource using the deleted alias.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the theme associated with the deletion.</p>"
        }
      }
    },
    "DeleteThemeRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme that you're deleting.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the theme that you want to delete.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version of the theme that you want to delete. </p> <p> <b>Note:</b> If you don't provide a version number, you're using this call to <code>DeleteTheme</code> to delete all versions of the theme.</p>",
          "location": "querystring",
          "locationName": "version-number"
        }
      }
    },
    "DeleteThemeResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>An ID for the theme.</p>"
        }
      }
    },
    "DeleteUserByPrincipalIdRequest": {
      "type": "structure",
      "required": [
        "PrincipalId",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "PrincipalId": {
          "shape": "String",
          "documentation": "<p>The principal ID of the user.</p>",
          "location": "uri",
          "locationName": "PrincipalId"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      },
      "documentation": "<p/>"
    },
    "DeleteUserByPrincipalIdResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DeleteUserRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The name of the user that you want to delete.</p>",
          "location": "uri",
          "locationName": "UserName"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DeleteUserResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "Delimiter": {
      "type": "string",
      "max": 1,
      "min": 1
    },
    "DescribeAccountCustomizationRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you want to describe QuickSight customizations for.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The QuickSight namespace that you want to describe QuickSight customizations for.</p>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "Resolved": {
          "shape": "boolean",
          "documentation": "<p>The <code>Resolved</code> flag works with the other parameters to determine which view of QuickSight customizations is returned. You can add this flag to your command to use the same view that QuickSight uses to identify which customizations to apply to the console. Omit this flag, or set it to <code>no-resolved</code>, to reveal customizations that are configured at different levels. </p>",
          "location": "querystring",
          "locationName": "resolved"
        }
      }
    },
    "DescribeAccountCustomizationResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the customization that's associated with this AWS account.</p>"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you're describing.</p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The QuickSight namespace that you're describing. </p>"
        },
        "AccountCustomization": {
          "shape": "AccountCustomization",
          "documentation": "<p>The QuickSight customizations that exist in the current AWS Region. </p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeAccountSettingsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that contains the settings that you want to list.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        }
      }
    },
    "DescribeAccountSettingsResponse": {
      "type": "structure",
      "members": {
        "AccountSettings": {
          "shape": "AccountSettings",
          "documentation": "<p>The QuickSight settings for this AWS account. This information includes the edition of Amazon QuickSight that you subscribed to (Standard or Enterprise) and the notification email for the QuickSight subscription. The QuickSight console, the QuickSight subscription is sometimes referred to as a QuickSight \"account\" even though it's technically not an account by itself. Instead, it's a subscription to the QuickSight service for your AWS account. The edition that you subscribe to applies to QuickSight in every AWS Region where you use it. </p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeAnalysisPermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AnalysisId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the analysis whose permissions you're describing. You must be using the AWS account that the analysis is in.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis whose permissions you're describing. The ID is part of the analysis URL.</p>",
          "location": "uri",
          "locationName": "AnalysisId"
        }
      }
    },
    "DescribeAnalysisPermissionsResponse": {
      "type": "structure",
      "members": {
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis whose permissions you're describing.</p>"
        },
        "AnalysisArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the analysis whose permissions you're describing.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A structure that describes the principals and the resource-level permissions on an analysis.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DescribeAnalysisRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AnalysisId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the analysis. You must be using the AWS account that the analysis is in.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis that you're describing. The ID is part of the URL of the analysis.</p>",
          "location": "uri",
          "locationName": "AnalysisId"
        }
      }
    },
    "DescribeAnalysisResponse": {
      "type": "structure",
      "members": {
        "Analysis": {
          "shape": "Analysis",
          "documentation": "<p>A metadata structure that contains summary information for the analysis that you're describing.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DescribeDashboardPermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the dashboard that you're describing permissions for.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard, also added to the IAM policy.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        }
      }
    },
    "DescribeDashboardPermissionsResponse": {
      "type": "structure",
      "members": {
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>"
        },
        "DashboardArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dashboard.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A structure that contains the permissions for the dashboard.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DescribeDashboardRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the dashboard that you're describing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number for the dashboard. If a version number isn't passed, the latest published dashboard version is described. </p>",
          "location": "querystring",
          "locationName": "version-number"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The alias name.</p>",
          "location": "querystring",
          "locationName": "alias-name"
        }
      }
    },
    "DescribeDashboardResponse": {
      "type": "structure",
      "members": {
        "Dashboard": {
          "shape": "Dashboard",
          "documentation": "<p>Information about the dashboard.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of this request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DescribeDataSetPermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSetId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        }
      }
    },
    "DescribeDataSetPermissionsResponse": {
      "type": "structure",
      "members": {
        "DataSetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions on the dataset.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeDataSetRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSetId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        }
      }
    },
    "DescribeDataSetResponse": {
      "type": "structure",
      "members": {
        "DataSet": {
          "shape": "DataSet",
          "documentation": "<p>Information on the dataset.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeDataSourcePermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSourceId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>",
          "location": "uri",
          "locationName": "DataSourceId"
        }
      }
    },
    "DescribeDataSourcePermissionsResponse": {
      "type": "structure",
      "members": {
        "DataSourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the data source.</p>"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions on the data source.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeDataSourceRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSourceId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>",
          "location": "uri",
          "locationName": "DataSourceId"
        }
      }
    },
    "DescribeDataSourceResponse": {
      "type": "structure",
      "members": {
        "DataSource": {
          "shape": "DataSource",
          "documentation": "<p>The information on the data source.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group that you want to describe.</p>",
          "location": "uri",
          "locationName": "GroupName"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DescribeGroupResponse": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>The name of the group.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeIAMPolicyAssignmentRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AssignmentName",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the assignment that you want to describe.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>The name of the assignment. </p>",
          "location": "uri",
          "locationName": "AssignmentName"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace that contains the assignment.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DescribeIAMPolicyAssignmentResponse": {
      "type": "structure",
      "members": {
        "IAMPolicyAssignment": {
          "shape": "IAMPolicyAssignment",
          "documentation": "<p>Information describing the IAM policy assignment.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeIngestionRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSetId",
        "IngestionId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSetId": {
          "shape": "string",
          "documentation": "<p>The ID of the dataset used in the ingestion.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        },
        "IngestionId": {
          "shape": "IngestionId",
          "documentation": "<p>An ID for the ingestion.</p>",
          "location": "uri",
          "locationName": "IngestionId"
        }
      }
    },
    "DescribeIngestionResponse": {
      "type": "structure",
      "members": {
        "Ingestion": {
          "shape": "Ingestion",
          "documentation": "<p>Information about the ingestion.</p>"
        },
        "RequestId": {
          "shape": "string",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeNamespaceRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that contains the QuickSight namespace that you want to describe.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace that you want to describe.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DescribeNamespaceResponse": {
      "type": "structure",
      "members": {
        "Namespace": {
          "shape": "NamespaceInfoV2",
          "documentation": "<p>The information about the namespace that you're describing. The response includes the namespace ARN, name, AWS Region, creation status, and identity store. <code>DescribeNamespace</code> also works for namespaces that are in the process of being created. For incomplete namespaces, this API operation lists the namespace error types and messages associated with the creation process.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeTemplateAliasRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId",
        "AliasName"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template alias that you're describing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The name of the template alias that you want to describe. If you name a specific alias, you describe the version that the alias points to. You can specify the latest version of the template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code> parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>",
          "location": "uri",
          "locationName": "AliasName"
        }
      }
    },
    "DescribeTemplateAliasResponse": {
      "type": "structure",
      "members": {
        "TemplateAlias": {
          "shape": "TemplateAlias",
          "documentation": "<p>Information about the template alias.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DescribeTemplatePermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template that you're describing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        }
      }
    },
    "DescribeTemplatePermissionsResponse": {
      "type": "structure",
      "members": {
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>"
        },
        "TemplateArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the template.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions to be set on the template. </p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeTemplateRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template that you're describing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>(Optional) The number for the version to describe. If a <code>VersionNumber</code> parameter value isn't provided, the latest version of the template is described.</p>",
          "location": "querystring",
          "locationName": "version-number"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The alias of the template that you want to describe. If you name a specific alias, you describe the version that the alias points to. You can specify the latest version of the template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code> parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>",
          "location": "querystring",
          "locationName": "alias-name"
        }
      }
    },
    "DescribeTemplateResponse": {
      "type": "structure",
      "members": {
        "Template": {
          "shape": "Template",
          "documentation": "<p>The template structure for the object you want to describe.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DescribeThemeAliasRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId",
        "AliasName"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme alias that you're describing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The name of the theme alias that you want to describe.</p>",
          "location": "uri",
          "locationName": "AliasName"
        }
      }
    },
    "DescribeThemeAliasResponse": {
      "type": "structure",
      "members": {
        "ThemeAlias": {
          "shape": "ThemeAlias",
          "documentation": "<p>Information about the theme alias.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DescribeThemePermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme that you're describing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme that you want to describe permissions for.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        }
      }
    },
    "DescribeThemePermissionsResponse": {
      "type": "structure",
      "members": {
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the theme.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions set on the theme. </p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "DescribeThemeRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAndAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme that you're describing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number for the version to describe. If a <code>VersionNumber</code> parameter value isn't provided, the latest version of the theme is described.</p>",
          "location": "querystring",
          "locationName": "version-number"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The alias of the theme that you want to describe. If you name a specific alias, you describe the version that the alias points to. You can specify the latest version of the theme by providing the keyword <code>$LATEST</code> in the <code>AliasName</code> parameter. The keyword <code>$PUBLISHED</code> doesn't apply to themes.</p>",
          "location": "querystring",
          "locationName": "alias-name"
        }
      }
    },
    "DescribeThemeResponse": {
      "type": "structure",
      "members": {
        "Theme": {
          "shape": "Theme",
          "documentation": "<p>The information about the theme that you are describing.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "DescribeUserRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The name of the user that you want to describe.</p>",
          "location": "uri",
          "locationName": "UserName"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "DescribeUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The user name.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "Domain": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "Double": {
      "type": "double"
    },
    "DoubleList": {
      "type": "list",
      "member": {
        "shape": "Double"
      }
    },
    "Edition": {
      "type": "string",
      "enum": [
        "STANDARD",
        "ENTERPRISE"
      ]
    },
    "EmbeddingUrl": {
      "type": "string",
      "sensitive": true
    },
    "EntryPoint": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "ErrorInfo": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "IngestionErrorType",
          "documentation": "<p>Error type.</p>"
        },
        "Message": {
          "shape": "string",
          "documentation": "<p>Error message.</p>"
        }
      },
      "documentation": "<p>Error information for the SPICE ingestion of a dataset.</p>"
    },
    "ExportToCSVOption": {
      "type": "structure",
      "members": {
        "AvailabilityStatus": {
          "shape": "DashboardBehavior",
          "documentation": "<p>Availability status.</p>"
        }
      },
      "documentation": "<p>Export to .csv option.</p>"
    },
    "Expression": {
      "type": "string",
      "max": 4096,
      "min": 1
    },
    "FileFormat": {
      "type": "string",
      "enum": [
        "CSV",
        "TSV",
        "CLF",
        "ELF",
        "XLSX",
        "JSON"
      ]
    },
    "FilterOperation": {
      "type": "structure",
      "required": [
        "ConditionExpression"
      ],
      "members": {
        "ConditionExpression": {
          "shape": "Expression",
          "documentation": "<p>An expression that must evaluate to a Boolean value. Rows for which the expression evaluates to true are kept in the dataset.</p>"
        }
      },
      "documentation": "<p>A transform operation that filters rows based on a condition.</p>"
    },
    "FilterOperator": {
      "type": "string",
      "enum": [
        "StringEquals"
      ]
    },
    "GeoSpatialColumnGroup": {
      "type": "structure",
      "required": [
        "Name",
        "CountryCode",
        "Columns"
      ],
      "members": {
        "Name": {
          "shape": "ColumnGroupName",
          "documentation": "<p>A display name for the hierarchy.</p>"
        },
        "CountryCode": {
          "shape": "GeoSpatialCountryCode",
          "documentation": "<p>Country code.</p>"
        },
        "Columns": {
          "shape": "ColumnList",
          "documentation": "<p>Columns in this hierarchy.</p>"
        }
      },
      "documentation": "<p>Geospatial column group that denotes a hierarchy.</p>"
    },
    "GeoSpatialCountryCode": {
      "type": "string",
      "enum": [
        "US"
      ]
    },
    "GeoSpatialDataRole": {
      "type": "string",
      "enum": [
        "COUNTRY",
        "STATE",
        "COUNTY",
        "CITY",
        "POSTCODE",
        "LONGITUDE",
        "LATITUDE"
      ]
    },
    "GetDashboardEmbedUrlRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId",
        "IdentityType"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that contains the dashboard that you're embedding.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard, also added to the IAM policy.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        },
        "IdentityType": {
          "shape": "IdentityType",
          "documentation": "<p>The authentication method that the user uses to sign in.</p>",
          "location": "querystring",
          "locationName": "creds-type"
        },
        "SessionLifetimeInMinutes": {
          "shape": "SessionLifetimeInMinutes",
          "documentation": "<p>How many minutes the session is valid. The session lifetime must be 15-600 minutes.</p>",
          "location": "querystring",
          "locationName": "session-lifetime"
        },
        "UndoRedoDisabled": {
          "shape": "boolean",
          "documentation": "<p>Remove the undo/redo button on the embedded dashboard. The default is FALSE, which enables the undo/redo button.</p>",
          "location": "querystring",
          "locationName": "undo-redo-disabled"
        },
        "ResetDisabled": {
          "shape": "boolean",
          "documentation": "<p>Remove the reset button on the embedded dashboard. The default is FALSE, which enables the reset button.</p>",
          "location": "querystring",
          "locationName": "reset-disabled"
        },
        "UserArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use with <code>QUICKSIGHT</code> identity type. You can use this for any Amazon QuickSight users in your account (readers, authors, or admins) authenticated as one of the following:</p> <ul> <li> <p>Active Directory (AD) users or group members</p> </li> <li> <p>Invited nonfederated users</p> </li> <li> <p>IAM users and IAM role-based sessions authenticated through Federated Single Sign-On using SAML, OpenID Connect, or IAM federation.</p> </li> </ul> <p>Omit this parameter for users in the third group – IAM users and IAM role-based sessions.</p>",
          "location": "querystring",
          "locationName": "user-arn"
        }
      }
    },
    "GetDashboardEmbedUrlResponse": {
      "type": "structure",
      "members": {
        "EmbedUrl": {
          "shape": "EmbeddingUrl",
          "documentation": "<p>A single-use URL that you can put into your server-side webpage to embed your dashboard. This URL is valid for 5 minutes. The API operation provides the URL with an <code>auth_code</code> value that enables one (and only one) sign-on to a user session that is valid for 10 hours. </p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "GetSessionEmbedUrlRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account associated with your QuickSight subscription.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "EntryPoint": {
          "shape": "EntryPoint",
          "documentation": "<p>The URL you use to access the embedded session. The entry point URL is constrained to the following paths:</p> <ul> <li> <p> <code>/start</code> </p> </li> <li> <p> <code>/start/analyses</code> </p> </li> <li> <p> <code>/start/dashboards</code> </p> </li> <li> <p> <code>/start/favorites</code> </p> </li> <li> <p> <code>/dashboards/<i>DashboardId</i> </code> - where <code>DashboardId</code> is the actual ID key from the QuickSight console URL of the dashboard</p> </li> <li> <p> <code>/analyses/<i>AnalysisId</i> </code> - where <code>AnalysisId</code> is the actual ID key from the QuickSight console URL of the analysis</p> </li> </ul>",
          "location": "querystring",
          "locationName": "entry-point"
        },
        "SessionLifetimeInMinutes": {
          "shape": "SessionLifetimeInMinutes",
          "documentation": "<p>How many minutes the session is valid. The session lifetime must be 15-600 minutes.</p>",
          "location": "querystring",
          "locationName": "session-lifetime"
        },
        "UserArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon QuickSight user's Amazon Resource Name (ARN), for use with <code>QUICKSIGHT</code> identity type. You can use this for any type of Amazon QuickSight users in your account (readers, authors, or admins). They need to be authenticated as one of the following:</p> <ol> <li> <p>Active Directory (AD) users or group members</p> </li> <li> <p>Invited nonfederated users</p> </li> <li> <p>IAM users and IAM role-based sessions authenticated through Federated Single Sign-On using SAML, OpenID Connect, or IAM federation</p> </li> </ol> <p>Omit this parameter for users in the third group – IAM users and IAM role-based sessions.</p>",
          "location": "querystring",
          "locationName": "user-arn"
        }
      }
    },
    "GetSessionEmbedUrlResponse": {
      "type": "structure",
      "members": {
        "EmbedUrl": {
          "shape": "EmbeddingUrl",
          "documentation": "<p>A single-use URL that you can put into your server-side web page to embed your QuickSight session. This URL is valid for 5 minutes. The API operation provides the URL with an <code>auth_code</code> value that enables one (and only one) sign-on to a user session that is valid for 10 hours. </p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "Group": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the group.</p>"
        },
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group.</p>"
        },
        "Description": {
          "shape": "GroupDescription",
          "documentation": "<p>The group description.</p>"
        },
        "PrincipalId": {
          "shape": "String",
          "documentation": "<p>The principal ID of the group.</p>"
        }
      },
      "documentation": "<p>A <i>group</i> in Amazon QuickSight consists of a set of users. You can use groups to make it easier to manage access and security. </p>"
    },
    "GroupDescription": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "GroupList": {
      "type": "list",
      "member": {
        "shape": "Group"
      }
    },
    "GroupMember": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the group member (user).</p>"
        },
        "MemberName": {
          "shape": "GroupMemberName",
          "documentation": "<p>The name of the group member (user).</p>"
        }
      },
      "documentation": "<p>A member of an Amazon QuickSight group. Currently, group members must be users. Groups can't be members of another group. .</p>"
    },
    "GroupMemberList": {
      "type": "list",
      "member": {
        "shape": "GroupMember"
      }
    },
    "GroupMemberName": {
      "type": "string",
      "max": 256,
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "GroupName": {
      "type": "string",
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "GutterStyle": {
      "type": "structure",
      "members": {
        "Show": {
          "shape": "boolean",
          "documentation": "<p>This Boolean value controls whether to display a gutter space between sheet tiles. </p>",
          "box": true
        }
      },
      "documentation": "<p>The display options for gutter spacing between tiles on a sheet.</p>"
    },
    "HexColor": {
      "type": "string",
      "pattern": "^#[A-F0-9]{6}$"
    },
    "Host": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "IAMPolicyAssignment": {
      "type": "structure",
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>"
        },
        "AssignmentId": {
          "shape": "String",
          "documentation": "<p>Assignment ID.</p>"
        },
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>Assignment name.</p>"
        },
        "PolicyArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the IAM policy.</p>"
        },
        "Identities": {
          "shape": "IdentityMap",
          "documentation": "<p>Identities.</p>"
        },
        "AssignmentStatus": {
          "shape": "AssignmentStatus",
          "documentation": "<p>Assignment status.</p>"
        }
      },
      "documentation": "<p>An AWS Identity and Access Management (IAM) policy assignment.</p>"
    },
    "IAMPolicyAssignmentName": {
      "type": "string",
      "min": 1,
      "pattern": "(?=^.{2,256}$)(?!.*\\s)[0-9a-zA-Z-_.:=+@]*$"
    },
    "IAMPolicyAssignmentSummary": {
      "type": "structure",
      "members": {
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>Assignment name.</p>"
        },
        "AssignmentStatus": {
          "shape": "AssignmentStatus",
          "documentation": "<p>Assignment status.</p>"
        }
      },
      "documentation": "<p>IAM policy assignment summary.</p>"
    },
    "IAMPolicyAssignmentSummaryList": {
      "type": "list",
      "member": {
        "shape": "IAMPolicyAssignmentSummary"
      }
    },
    "IdentityMap": {
      "type": "map",
      "key": {
        "shape": "String"
      },
      "value": {
        "shape": "IdentityNameList"
      }
    },
    "IdentityName": {
      "type": "string",
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "IdentityNameList": {
      "type": "list",
      "member": {
        "shape": "IdentityName"
      }
    },
    "IdentityStore": {
      "type": "string",
      "enum": [
        "QUICKSIGHT"
      ]
    },
    "IdentityType": {
      "type": "string",
      "enum": [
        "IAM",
        "QUICKSIGHT"
      ]
    },
    "Ingestion": {
      "type": "structure",
      "required": [
        "Arn",
        "IngestionStatus",
        "CreatedTime"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "IngestionId": {
          "shape": "IngestionId",
          "documentation": "<p>Ingestion ID.</p>"
        },
        "IngestionStatus": {
          "shape": "IngestionStatus",
          "documentation": "<p>Ingestion status.</p>"
        },
        "ErrorInfo": {
          "shape": "ErrorInfo",
          "documentation": "<p>Error information for this ingestion.</p>"
        },
        "RowInfo": {
          "shape": "RowInfo"
        },
        "QueueInfo": {
          "shape": "QueueInfo"
        },
        "CreatedTime": {
          "shape": "timestamp",
          "documentation": "<p>The time that this ingestion started.</p>"
        },
        "IngestionTimeInSeconds": {
          "shape": "long",
          "documentation": "<p>The time that this ingestion took, measured in seconds.</p>",
          "box": true
        },
        "IngestionSizeInBytes": {
          "shape": "long",
          "documentation": "<p>The size of the data ingested, in bytes.</p>",
          "box": true
        },
        "RequestSource": {
          "shape": "IngestionRequestSource",
          "documentation": "<p>Event source for this ingestion.</p>"
        },
        "RequestType": {
          "shape": "IngestionRequestType",
          "documentation": "<p>Type of this ingestion.</p>"
        }
      },
      "documentation": "<p>Information about the SPICE ingestion for a dataset.</p>"
    },
    "IngestionErrorType": {
      "type": "string",
      "enum": [
        "FAILURE_TO_ASSUME_ROLE",
        "INGESTION_SUPERSEDED",
        "INGESTION_CANCELED",
        "DATA_SET_DELETED",
        "DATA_SET_NOT_SPICE",
        "S3_UPLOADED_FILE_DELETED",
        "S3_MANIFEST_ERROR",
        "DATA_TOLERANCE_EXCEPTION",
        "SPICE_TABLE_NOT_FOUND",
        "DATA_SET_SIZE_LIMIT_EXCEEDED",
        "ROW_SIZE_LIMIT_EXCEEDED",
        "ACCOUNT_CAPACITY_LIMIT_EXCEEDED",
        "CUSTOMER_ERROR",
        "DATA_SOURCE_NOT_FOUND",
        "IAM_ROLE_NOT_AVAILABLE",
        "CONNECTION_FAILURE",
        "SQL_TABLE_NOT_FOUND",
        "PERMISSION_DENIED",
        "SSL_CERTIFICATE_VALIDATION_FAILURE",
        "OAUTH_TOKEN_FAILURE",
        "SOURCE_API_LIMIT_EXCEEDED_FAILURE",
        "PASSWORD_AUTHENTICATION_FAILURE",
        "SQL_SCHEMA_MISMATCH_ERROR",
        "INVALID_DATE_FORMAT",
        "INVALID_DATAPREP_SYNTAX",
        "SOURCE_RESOURCE_LIMIT_EXCEEDED",
        "SQL_INVALID_PARAMETER_VALUE",
        "QUERY_TIMEOUT",
        "SQL_NUMERIC_OVERFLOW",
        "UNRESOLVABLE_HOST",
        "UNROUTABLE_HOST",
        "SQL_EXCEPTION",
        "S3_FILE_INACCESSIBLE",
        "IOT_FILE_NOT_FOUND",
        "IOT_DATA_SET_FILE_EMPTY",
        "INVALID_DATA_SOURCE_CONFIG",
        "DATA_SOURCE_AUTH_FAILED",
        "DATA_SOURCE_CONNECTION_FAILED",
        "FAILURE_TO_PROCESS_JSON_FILE",
        "INTERNAL_SERVICE_ERROR"
      ]
    },
    "IngestionId": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "^[a-zA-Z0-9-_]+$"
    },
    "IngestionMaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "IngestionRequestSource": {
      "type": "string",
      "enum": [
        "MANUAL",
        "SCHEDULED"
      ]
    },
    "IngestionRequestType": {
      "type": "string",
      "enum": [
        "INITIAL_INGESTION",
        "EDIT",
        "INCREMENTAL_REFRESH",
        "FULL_REFRESH"
      ]
    },
    "IngestionStatus": {
      "type": "string",
      "enum": [
        "INITIALIZED",
        "QUEUED",
        "RUNNING",
        "FAILED",
        "COMPLETED",
        "CANCELLED"
      ]
    },
    "Ingestions": {
      "type": "list",
      "member": {
        "shape": "Ingestion"
      }
    },
    "InputColumn": {
      "type": "structure",
      "required": [
        "Name",
        "Type"
      ],
      "members": {
        "Name": {
          "shape": "ColumnName",
          "documentation": "<p>The name of this column in the underlying data source.</p>"
        },
        "Type": {
          "shape": "InputColumnDataType",
          "documentation": "<p>The data type of the column.</p>"
        }
      },
      "documentation": "<p>Metadata for a column that is used as the input of a transform operation.</p>"
    },
    "InputColumnDataType": {
      "type": "string",
      "enum": [
        "STRING",
        "INTEGER",
        "DECIMAL",
        "DATETIME",
        "BIT",
        "BOOLEAN",
        "JSON"
      ]
    },
    "InputColumnList": {
      "type": "list",
      "member": {
        "shape": "InputColumn"
      },
      "max": 2048,
      "min": 1
    },
    "InstanceId": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "IntegerParameter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "NonEmptyString",
          "documentation": "<p>The name of the integer parameter.</p>"
        },
        "Values": {
          "shape": "LongList",
          "documentation": "<p>The values for the integer parameter.</p>"
        }
      },
      "documentation": "<p>An integer parameter.</p>"
    },
    "IntegerParameterList": {
      "type": "list",
      "member": {
        "shape": "IntegerParameter"
      },
      "max": 100
    },
    "JiraParameters": {
      "type": "structure",
      "required": [
        "SiteBaseUrl"
      ],
      "members": {
        "SiteBaseUrl": {
          "shape": "SiteBaseUrl",
          "documentation": "<p>The base URL of the Jira site.</p>"
        }
      },
      "documentation": "<p>Jira parameters.</p>"
    },
    "JoinInstruction": {
      "type": "structure",
      "required": [
        "LeftOperand",
        "RightOperand",
        "Type",
        "OnClause"
      ],
      "members": {
        "LeftOperand": {
          "shape": "LogicalTableId",
          "documentation": "<p>Left operand.</p>"
        },
        "RightOperand": {
          "shape": "LogicalTableId",
          "documentation": "<p>Right operand.</p>"
        },
        "Type": {
          "shape": "JoinType",
          "documentation": "<p>Type.</p>"
        },
        "OnClause": {
          "shape": "OnClause",
          "documentation": "<p>On Clause.</p>"
        }
      },
      "documentation": "<p>Join instruction.</p>"
    },
    "JoinType": {
      "type": "string",
      "enum": [
        "INNER",
        "OUTER",
        "LEFT",
        "RIGHT"
      ]
    },
    "ListAnalysesRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the analyses.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListAnalysesResponse": {
      "type": "structure",
      "members": {
        "AnalysisSummaryList": {
          "shape": "AnalysisSummaryList",
          "documentation": "<p>Metadata describing each of the analyses that are listed.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "ListDashboardVersionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the dashboard that you're listing versions for.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListDashboardVersionsResponse": {
      "type": "structure",
      "members": {
        "DashboardVersionSummaryList": {
          "shape": "DashboardVersionSummaryList",
          "documentation": "<p>A structure that contains information about each version of the dashboard.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "ListDashboardsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the dashboards that you're listing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListDashboardsResponse": {
      "type": "structure",
      "members": {
        "DashboardSummaryList": {
          "shape": "DashboardSummaryList",
          "documentation": "<p>A structure that contains all of the dashboards in your AWS account. This structure provides basic information about the dashboards.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "ListDataSetsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListDataSetsResponse": {
      "type": "structure",
      "members": {
        "DataSetSummaries": {
          "shape": "DataSetSummaryList",
          "documentation": "<p>The list of dataset summaries.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListDataSourcesRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListDataSourcesResponse": {
      "type": "structure",
      "members": {
        "DataSources": {
          "shape": "DataSourceList",
          "documentation": "<p>A list of data sources.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListGroupMembershipsRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group that you want to see a membership list of.</p>",
          "location": "uri",
          "locationName": "GroupName"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return from this request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "ListGroupMembershipsResponse": {
      "type": "structure",
      "members": {
        "GroupMemberList": {
          "shape": "GroupMemberList",
          "documentation": "<p>The list of the members of the group.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListGroupsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "ListGroupsResponse": {
      "type": "structure",
      "members": {
        "GroupList": {
          "shape": "GroupList",
          "documentation": "<p>The list of the groups.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListIAMPolicyAssignmentsForUserRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "UserName",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the assignments.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The name of the user.</p>",
          "location": "uri",
          "locationName": "UserName"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace of the assignment.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "ListIAMPolicyAssignmentsForUserResponse": {
      "type": "structure",
      "members": {
        "ActiveAssignments": {
          "shape": "ActiveIAMPolicyAssignmentList",
          "documentation": "<p>The active assignments for this user.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListIAMPolicyAssignmentsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains these IAM policy assignments.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AssignmentStatus": {
          "shape": "AssignmentStatus",
          "documentation": "<p>The status of the assignments.</p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace for the assignments.</p>",
          "location": "uri",
          "locationName": "Namespace"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListIAMPolicyAssignmentsResponse": {
      "type": "structure",
      "members": {
        "IAMPolicyAssignments": {
          "shape": "IAMPolicyAssignmentSummaryList",
          "documentation": "<p>Information describing the IAM policy assignments.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListIngestionsRequest": {
      "type": "structure",
      "required": [
        "DataSetId",
        "AwsAccountId"
      ],
      "members": {
        "DataSetId": {
          "shape": "string",
          "documentation": "<p>The ID of the dataset used in the ingestion.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        },
        "NextToken": {
          "shape": "string",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "MaxResults": {
          "shape": "IngestionMaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListIngestionsResponse": {
      "type": "structure",
      "members": {
        "Ingestions": {
          "shape": "Ingestions",
          "documentation": "<p>A list of the ingestions.</p>"
        },
        "NextToken": {
          "shape": "string",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "RequestId": {
          "shape": "string",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListNamespacesRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that contains the QuickSight namespaces that you want to list.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListNamespacesResponse": {
      "type": "structure",
      "members": {
        "Namespaces": {
          "shape": "Namespaces",
          "documentation": "<p>The information about the namespaces in this AWS account. The response includes the namespace ARN, name, AWS Region, notification email address, creation status, and identity store.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want a list of tags for.</p>",
          "location": "uri",
          "locationName": "ResourceArn"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListTemplateAliasesRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template aliases that you're listing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-result"
        }
      }
    },
    "ListTemplateAliasesResponse": {
      "type": "structure",
      "members": {
        "TemplateAliasList": {
          "shape": "TemplateAliasList",
          "documentation": "<p>A structure containing the list of the template's aliases.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        }
      }
    },
    "ListTemplateVersionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the templates that you're listing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListTemplateVersionsResponse": {
      "type": "structure",
      "members": {
        "TemplateVersionSummaryList": {
          "shape": "TemplateVersionSummaryList",
          "documentation": "<p>A structure containing a list of all the versions of the specified template.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "ListTemplatesRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the templates that you're listing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-result"
        }
      }
    },
    "ListTemplatesResponse": {
      "type": "structure",
      "members": {
        "TemplateSummaryList": {
          "shape": "TemplateSummaryList",
          "documentation": "<p>A structure containing information about the templates in the list.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "ListThemeAliasesRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme aliases that you're listing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-result"
        }
      }
    },
    "ListThemeAliasesResponse": {
      "type": "structure",
      "members": {
        "ThemeAliasList": {
          "shape": "ThemeAliasList",
          "documentation": "<p>A structure containing the list of the theme's aliases.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        }
      }
    },
    "ListThemeVersionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the themes that you're listing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListThemeVersionsResponse": {
      "type": "structure",
      "members": {
        "ThemeVersionSummaryList": {
          "shape": "ThemeVersionSummaryList",
          "documentation": "<p>A structure containing a list of all the versions of the specified theme.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "ListThemesRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the themes that you're listing.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        },
        "Type": {
          "shape": "ThemeType",
          "documentation": "<p>The type of themes that you want to list. Valid options include the following:</p> <ul> <li> <p> <code>ALL (default)</code>- Display all existing themes.</p> </li> <li> <p> <code>CUSTOM</code> - Display only the themes created by people using Amazon QuickSight.</p> </li> <li> <p> <code>QUICKSIGHT</code> - Display only the starting themes defined by QuickSight.</p> </li> </ul>",
          "location": "querystring",
          "locationName": "type"
        }
      }
    },
    "ListThemesResponse": {
      "type": "structure",
      "members": {
        "ThemeSummaryList": {
          "shape": "ThemeSummaryList",
          "documentation": "<p>Information about the themes in the list.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "ListUserGroupsRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The Amazon QuickSight user name that you want to list group memberships for.</p>",
          "location": "uri",
          "locationName": "UserName"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return from this request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        }
      }
    },
    "ListUserGroupsResponse": {
      "type": "structure",
      "members": {
        "GroupList": {
          "shape": "GroupList",
          "documentation": "<p>The list of groups the user is a member of.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "ListUsersRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>",
          "location": "querystring",
          "locationName": "next-token"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return from this request.</p>",
          "box": true,
          "location": "querystring",
          "locationName": "max-results"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "ListUsersResponse": {
      "type": "structure",
      "members": {
        "UserList": {
          "shape": "UserList",
          "documentation": "<p>The list of users.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "LogicalTable": {
      "type": "structure",
      "required": [
        "Alias",
        "Source"
      ],
      "members": {
        "Alias": {
          "shape": "LogicalTableAlias",
          "documentation": "<p>A display name for the logical table.</p>"
        },
        "DataTransforms": {
          "shape": "TransformOperationList",
          "documentation": "<p>Transform operations that act on this logical table.</p>"
        },
        "Source": {
          "shape": "LogicalTableSource",
          "documentation": "<p>Source of this logical table.</p>"
        }
      },
      "documentation": "<p>A <i>logical table</i> is a unit that joins and that data transformations operate on. A logical table has a source, which can be either a physical table or result of a join. When a logical table points to a physical table, the logical table acts as a mutable copy of that physical table through transform operations.</p>"
    },
    "LogicalTableAlias": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "LogicalTableId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[0-9a-zA-Z-]*"
    },
    "LogicalTableMap": {
      "type": "map",
      "key": {
        "shape": "LogicalTableId"
      },
      "value": {
        "shape": "LogicalTable"
      },
      "max": 32,
      "min": 1
    },
    "LogicalTableSource": {
      "type": "structure",
      "members": {
        "JoinInstruction": {
          "shape": "JoinInstruction",
          "documentation": "<p>Specifies the result of a join of two logical tables.</p>"
        },
        "PhysicalTableId": {
          "shape": "PhysicalTableId",
          "documentation": "<p>Physical table ID.</p>"
        }
      },
      "documentation": "<p>Information about the source of a logical table. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>"
    },
    "Long": {
      "type": "long"
    },
    "LongList": {
      "type": "list",
      "member": {
        "shape": "Long"
      }
    },
    "ManifestFileLocation": {
      "type": "structure",
      "required": [
        "Bucket",
        "Key"
      ],
      "members": {
        "Bucket": {
          "shape": "S3Bucket",
          "documentation": "<p>Amazon S3 bucket.</p>"
        },
        "Key": {
          "shape": "S3Key",
          "documentation": "<p>Amazon S3 key that identifies an object.</p>"
        }
      },
      "documentation": "<p>Amazon S3 manifest file location.</p>"
    },
    "MarginStyle": {
      "type": "structure",
      "members": {
        "Show": {
          "shape": "boolean",
          "documentation": "<p>This Boolean value controls whether to display sheet margins.</p>",
          "box": true
        }
      },
      "documentation": "<p>The display options for margins around the outside edge of sheets.</p>"
    },
    "MariaDbParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port",
        "Database"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        }
      },
      "documentation": "<p>MariaDB parameters.</p>"
    },
    "MaxResults": {
      "type": "integer",
      "max": 100,
      "min": 1
    },
    "MySqlParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port",
        "Database"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        }
      },
      "documentation": "<p>MySQL parameters.</p>"
    },
    "Namespace": {
      "type": "string",
      "max": 64,
      "pattern": "^[a-zA-Z0-9._-]*$"
    },
    "NamespaceError": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "NamespaceErrorType",
          "documentation": "<p>The error type.</p>"
        },
        "Message": {
          "shape": "String",
          "documentation": "<p>The message for the error.</p>"
        }
      },
      "documentation": "<p>Errors that occur during namespace creation.</p>"
    },
    "NamespaceErrorType": {
      "type": "string",
      "enum": [
        "PERMISSION_DENIED",
        "INTERNAL_SERVICE_ERROR"
      ]
    },
    "NamespaceInfoV2": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "Namespace",
          "documentation": "<p>The name of the error.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The namespace ARN.</p>"
        },
        "CapacityRegion": {
          "shape": "String",
          "documentation": "<p>The namespace AWS Region.</p>"
        },
        "CreationStatus": {
          "shape": "NamespaceStatus",
          "documentation": "<p>The creation status of a namespace that is not yet completely created.</p>"
        },
        "IdentityStore": {
          "shape": "IdentityStore",
          "documentation": "<p>The identity store used for the namespace.</p>"
        },
        "NamespaceError": {
          "shape": "NamespaceError",
          "documentation": "<p>An error that occurred when the namespace was created.</p>"
        }
      },
      "documentation": "<p>The error type.</p>"
    },
    "NamespaceStatus": {
      "type": "string",
      "enum": [
        "CREATED",
        "CREATING",
        "DELETING",
        "RETRYABLE_FAILURE",
        "NON_RETRYABLE_FAILURE"
      ]
    },
    "Namespaces": {
      "type": "list",
      "member": {
        "shape": "NamespaceInfoV2"
      }
    },
    "NonEmptyString": {
      "type": "string",
      "pattern": ".*\\S.*"
    },
    "OnClause": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "OptionalPort": {
      "type": "integer",
      "max": 65535,
      "min": 0
    },
    "OutputColumn": {
      "type": "structure",
      "members": {
        "Name": {
          "shape": "ColumnName",
          "documentation": "<p>A display name for the dataset.</p>"
        },
        "Type": {
          "shape": "ColumnDataType",
          "documentation": "<p>Type.</p>"
        }
      },
      "documentation": "<p>Output column.</p>"
    },
    "OutputColumnList": {
      "type": "list",
      "member": {
        "shape": "OutputColumn"
      }
    },
    "Parameters": {
      "type": "structure",
      "members": {
        "StringParameters": {
          "shape": "StringParameterList",
          "documentation": "<p>String parameters.</p>"
        },
        "IntegerParameters": {
          "shape": "IntegerParameterList",
          "documentation": "<p>Integer parameters.</p>"
        },
        "DecimalParameters": {
          "shape": "DecimalParameterList",
          "documentation": "<p>Decimal parameters.</p>"
        },
        "DateTimeParameters": {
          "shape": "DateTimeParameterList",
          "documentation": "<p>Date-time parameters.</p>"
        }
      },
      "documentation": "<p>A list of QuickSight parameters and the list's override values.</p>"
    },
    "Password": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "PhysicalTable": {
      "type": "structure",
      "members": {
        "RelationalTable": {
          "shape": "RelationalTable",
          "documentation": "<p>A physical table type for relational data sources.</p>"
        },
        "CustomSql": {
          "shape": "CustomSql",
          "documentation": "<p>A physical table type built from the results of the custom SQL query.</p>"
        },
        "S3Source": {
          "shape": "S3Source",
          "documentation": "<p>A physical table type for as S3 data source.</p>"
        }
      },
      "documentation": "<p>A view of a data source that contains information about the shape of the data in the underlying source. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>"
    },
    "PhysicalTableId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[0-9a-zA-Z-]*"
    },
    "PhysicalTableMap": {
      "type": "map",
      "key": {
        "shape": "PhysicalTableId"
      },
      "value": {
        "shape": "PhysicalTable"
      },
      "max": 16,
      "min": 1
    },
    "Port": {
      "type": "integer",
      "max": 65535,
      "min": 1
    },
    "PositiveInteger": {
      "type": "integer",
      "min": 1
    },
    "PostgreSqlParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port",
        "Database"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        }
      },
      "documentation": "<p>PostgreSQL parameters.</p>"
    },
    "PrestoParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port",
        "Catalog"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        },
        "Catalog": {
          "shape": "Catalog",
          "documentation": "<p>Catalog.</p>"
        }
      },
      "documentation": "<p>Presto parameters.</p>"
    },
    "Principal": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "ProjectOperation": {
      "type": "structure",
      "required": [
        "ProjectedColumns"
      ],
      "members": {
        "ProjectedColumns": {
          "shape": "ProjectedColumnList",
          "documentation": "<p>Projected columns.</p>"
        }
      },
      "documentation": "<p>A transform operation that projects columns. Operations that come after a projection can only refer to projected columns.</p>"
    },
    "ProjectedColumnList": {
      "type": "list",
      "member": {
        "shape": "String"
      },
      "max": 2000,
      "min": 1
    },
    "Query": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "QueueInfo": {
      "type": "structure",
      "required": [
        "WaitingOnIngestion",
        "QueuedIngestion"
      ],
      "members": {
        "WaitingOnIngestion": {
          "shape": "string",
          "documentation": "<p>The ID of the queued ingestion.</p>"
        },
        "QueuedIngestion": {
          "shape": "string",
          "documentation": "<p>The ID of the ongoing ingestion. The queued ingestion is waiting for the ongoing ingestion to complete.</p>"
        }
      },
      "documentation": "<p>Information about a queued dataset SPICE ingestion.</p>"
    },
    "RdsParameters": {
      "type": "structure",
      "required": [
        "InstanceId",
        "Database"
      ],
      "members": {
        "InstanceId": {
          "shape": "InstanceId",
          "documentation": "<p>Instance ID.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        }
      },
      "documentation": "<p>Amazon RDS parameters.</p>"
    },
    "RecoveryWindowInDays": {
      "type": "long",
      "max": 30,
      "min": 7
    },
    "RedshiftParameters": {
      "type": "structure",
      "required": [
        "Database"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host. This field can be blank if <code>ClusterId</code> is provided.</p>"
        },
        "Port": {
          "shape": "OptionalPort",
          "documentation": "<p>Port. This field can be blank if the <code>ClusterId</code> is provided.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        },
        "ClusterId": {
          "shape": "ClusterId",
          "documentation": "<p>Cluster ID. This field can be blank if the <code>Host</code> and <code>Port</code> are provided.</p>"
        }
      },
      "documentation": "<p>Amazon Redshift parameters. The <code>ClusterId</code> field can be blank if <code>Host</code> and <code>Port</code> are both set. The <code>Host</code> and <code>Port</code> fields can be blank if the <code>ClusterId</code> field is set.</p>"
    },
    "RegisterUserRequest": {
      "type": "structure",
      "required": [
        "IdentityType",
        "Email",
        "UserRole",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "IdentityType": {
          "shape": "IdentityType",
          "documentation": "<p>Amazon QuickSight supports several ways of managing the identity of users. This parameter accepts two values:</p> <ul> <li> <p> <code>IAM</code>: A user whose identity maps to an existing IAM user or role. </p> </li> <li> <p> <code>QUICKSIGHT</code>: A user whose identity is owned and managed internally by Amazon QuickSight. </p> </li> </ul>"
        },
        "Email": {
          "shape": "String",
          "documentation": "<p>The email address of the user that you want to register.</p>"
        },
        "UserRole": {
          "shape": "UserRole",
          "documentation": "<p>The Amazon QuickSight role for the user. The user role can be one of the following:</p> <ul> <li> <p> <code>READER</code>: A user who has read-only access to dashboards.</p> </li> <li> <p> <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and dashboards.</p> </li> <li> <p> <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight settings.</p> </li> <li> <p> <code>RESTRICTED_READER</code>: This role isn't currently available for use.</p> </li> <li> <p> <code>RESTRICTED_AUTHOR</code>: This role isn't currently available for use.</p> </li> </ul>"
        },
        "IamArn": {
          "shape": "String",
          "documentation": "<p>The ARN of the IAM user or role that you are registering with Amazon QuickSight. </p>"
        },
        "SessionName": {
          "shape": "RoleSessionName",
          "documentation": "<p>You need to use this parameter only when you register one or more users using an assumed IAM role. You don't need to provide the session name for other scenarios, for example when you are registering an IAM user or an Amazon QuickSight user. You can register multiple users using the same IAM role if each user has a different session name. For more information on assuming IAM roles, see <a href=\"https://awscli.amazonaws.com/v2/documentation/api/latest/reference/sts/assume-role.html\"> <code>assume-role</code> </a> in the <i>AWS CLI Reference.</i> </p>"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The Amazon QuickSight user name that you want to create for the user you are registering.</p>"
        },
        "CustomPermissionsName": {
          "shape": "RoleName",
          "documentation": "<p>(Enterprise edition only) The name of the custom permissions profile that you want to assign to this user. Customized permissions allows you to control a user's access by restricting access the following operations:</p> <ul> <li> <p>Create and update data sources</p> </li> <li> <p>Create and update datasets</p> </li> <li> <p>Create and update email reports</p> </li> <li> <p>Subscribe to email reports</p> </li> </ul> <p>To add custom permissions to an existing user, use <code> <a>UpdateUser</a> </code> instead.</p> <p>A set of custom permissions includes any combination of these restrictions. Currently, you need to create the profile names for custom permission sets by using the QuickSight console. Then, you use the <code>RegisterUser</code> API operation to assign the named set of permissions to a QuickSight user. </p> <p>QuickSight custom permissions are applied through IAM policies. Therefore, they override the permissions typically granted by assigning QuickSight users to one of the default security cohorts in QuickSight (admin, author, reader).</p> <p>This feature is available only to QuickSight Enterprise edition subscriptions that use SAML 2.0-Based Federation for Single Sign-On (SSO).</p>"
        }
      }
    },
    "RegisterUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The user's user name.</p>"
        },
        "UserInvitationUrl": {
          "shape": "String",
          "documentation": "<p>The URL the user visits to complete registration and provide a password. This is returned only for users with an identity type of <code>QUICKSIGHT</code>.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "RelationalTable": {
      "type": "structure",
      "required": [
        "DataSourceArn",
        "Name",
        "InputColumns"
      ],
      "members": {
        "DataSourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the data source.</p>"
        },
        "Schema": {
          "shape": "RelationalTableSchema",
          "documentation": "<p>The schema name. This name applies to certain relational database engines.</p>"
        },
        "Name": {
          "shape": "RelationalTableName",
          "documentation": "<p>The name of the relational table.</p>"
        },
        "InputColumns": {
          "shape": "InputColumnList",
          "documentation": "<p>The column schema of the table.</p>"
        }
      },
      "documentation": "<p>A physical table type for relational data sources.</p>"
    },
    "RelationalTableName": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "RelationalTableSchema": {
      "type": "string",
      "max": 64
    },
    "RenameColumnOperation": {
      "type": "structure",
      "required": [
        "ColumnName",
        "NewColumnName"
      ],
      "members": {
        "ColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>The name of the column to be renamed.</p>"
        },
        "NewColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>The new name for the column.</p>"
        }
      },
      "documentation": "<p>A transform operation that renames a column.</p>"
    },
    "ResourceId": {
      "type": "string"
    },
    "ResourceName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "ResourcePermission": {
      "type": "structure",
      "required": [
        "Principal",
        "Actions"
      ],
      "members": {
        "Principal": {
          "shape": "Principal",
          "documentation": "<p>The Amazon Resource Name (ARN) of the principal. This can be one of the following:</p> <ul> <li> <p>The ARN of an Amazon QuickSight user, group, or namespace. (This is most common.)</p> </li> <li> <p>The ARN of an AWS account root: This is an IAM ARN rather than a QuickSight ARN. Use this option only to share resources (templates) across AWS accounts. (This is less common.) </p> </li> </ul>"
        },
        "Actions": {
          "shape": "ActionList",
          "documentation": "<p>The IAM action to grant or revoke permissions on, for example <code>\"quicksight:DescribeDashboard\"</code>.</p>"
        }
      },
      "documentation": "<p>Permission for the resource.</p>"
    },
    "ResourcePermissionList": {
      "type": "list",
      "member": {
        "shape": "ResourcePermission"
      },
      "max": 64,
      "min": 1
    },
    "ResourceStatus": {
      "type": "string",
      "enum": [
        "CREATION_IN_PROGRESS",
        "CREATION_SUCCESSFUL",
        "CREATION_FAILED",
        "UPDATE_IN_PROGRESS",
        "UPDATE_SUCCESSFUL",
        "UPDATE_FAILED",
        "DELETED"
      ]
    },
    "RestoreAnalysisRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AnalysisId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the analysis.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis that you're restoring.</p>",
          "location": "uri",
          "locationName": "AnalysisId"
        }
      }
    },
    "RestoreAnalysisResponse": {
      "type": "structure",
      "members": {
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the analysis that you're restoring.</p>"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis that you're restoring. </p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "RestrictiveResourceId": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[\\w\\-]+"
    },
    "RoleName": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "^[a-zA-Z0-9+=,.@_-]+$"
    },
    "RoleSessionName": {
      "type": "string",
      "max": 64,
      "min": 2,
      "pattern": "[\\w+=.@-]*"
    },
    "RowInfo": {
      "type": "structure",
      "members": {
        "RowsIngested": {
          "shape": "long",
          "documentation": "<p>The number of rows that were ingested.</p>",
          "box": true
        },
        "RowsDropped": {
          "shape": "long",
          "documentation": "<p>The number of rows that were not ingested.</p>",
          "box": true
        }
      },
      "documentation": "<p>Information about rows for a data set SPICE ingestion.</p>"
    },
    "RowLevelPermissionDataSet": {
      "type": "structure",
      "required": [
        "Arn",
        "PermissionPolicy"
      ],
      "members": {
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace associated with the row-level permissions dataset.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the permission dataset.</p>"
        },
        "PermissionPolicy": {
          "shape": "RowLevelPermissionPolicy",
          "documentation": "<p>Permission policy.</p>"
        }
      },
      "documentation": "<p>The row-level security configuration for the dataset.</p>"
    },
    "RowLevelPermissionPolicy": {
      "type": "string",
      "enum": [
        "GRANT_ACCESS",
        "DENY_ACCESS"
      ]
    },
    "S3Bucket": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "S3Key": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "S3Parameters": {
      "type": "structure",
      "required": [
        "ManifestFileLocation"
      ],
      "members": {
        "ManifestFileLocation": {
          "shape": "ManifestFileLocation",
          "documentation": "<p>Location of the Amazon S3 manifest file. This is NULL if the manifest file was uploaded in the console.</p>"
        }
      },
      "documentation": "<p>S3 parameters.</p>"
    },
    "S3Source": {
      "type": "structure",
      "required": [
        "DataSourceArn",
        "InputColumns"
      ],
      "members": {
        "DataSourceArn": {
          "shape": "Arn",
          "documentation": "<p>The amazon Resource Name (ARN) for the data source.</p>"
        },
        "UploadSettings": {
          "shape": "UploadSettings",
          "documentation": "<p>Information about the format for the S3 source file or files.</p>"
        },
        "InputColumns": {
          "shape": "InputColumnList",
          "documentation": "<p>A physical table type for as S3 data source.</p>"
        }
      },
      "documentation": "<p>A physical table type for as S3 data source.</p>"
    },
    "SearchAnalysesRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "Filters"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the analyses that you're searching for.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Filters": {
          "shape": "AnalysisSearchFilterList",
          "documentation": "<p>The structure for the search filters that you want to apply to your search. </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to return.</p>",
          "box": true
        }
      }
    },
    "SearchAnalysesResponse": {
      "type": "structure",
      "members": {
        "AnalysisSummaryList": {
          "shape": "AnalysisSummaryList",
          "documentation": "<p>Metadata describing the analyses that you searched for.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>A pagination token that can be used in a subsequent request. </p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "SearchDashboardsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "Filters"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the user whose dashboards you're searching for. </p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Filters": {
          "shape": "DashboardSearchFilterList",
          "documentation": "<p>The filters to apply to the search. Currently, you can search only by user name, for example, <code>\"Filters\": [ { \"Name\": \"QUICKSIGHT_USER\", \"Operator\": \"StringEquals\", \"Value\": \"arn:aws:quicksight:us-east-1:1:user/default/UserName1\" } ]</code> </p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The maximum number of results to be returned per request.</p>",
          "box": true
        }
      }
    },
    "SearchDashboardsResponse": {
      "type": "structure",
      "members": {
        "DashboardSummaryList": {
          "shape": "DashboardSummaryList",
          "documentation": "<p>The list of dashboards owned by the user specified in <code>Filters</code> in your request.</p>"
        },
        "NextToken": {
          "shape": "String",
          "documentation": "<p>The token for the next set of results, or null if there are no more results.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "ServiceNowParameters": {
      "type": "structure",
      "required": [
        "SiteBaseUrl"
      ],
      "members": {
        "SiteBaseUrl": {
          "shape": "SiteBaseUrl",
          "documentation": "<p>URL of the base site.</p>"
        }
      },
      "documentation": "<p>ServiceNow parameters.</p>"
    },
    "SessionLifetimeInMinutes": {
      "type": "long",
      "max": 600,
      "min": 15
    },
    "SheetControlsOption": {
      "type": "structure",
      "members": {
        "VisibilityState": {
          "shape": "DashboardUIState",
          "documentation": "<p>Visibility state.</p>"
        }
      },
      "documentation": "<p>Sheet controls option.</p>"
    },
    "SheetStyle": {
      "type": "structure",
      "members": {
        "Tile": {
          "shape": "TileStyle",
          "documentation": "<p>The display options for tiles.</p>"
        },
        "TileLayout": {
          "shape": "TileLayoutStyle",
          "documentation": "<p>The layout options for tiles.</p>"
        }
      },
      "documentation": "<p>The theme display options for sheets. </p>"
    },
    "SiteBaseUrl": {
      "type": "string",
      "max": 1024,
      "min": 1
    },
    "SnowflakeParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Database",
        "Warehouse"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        },
        "Warehouse": {
          "shape": "Warehouse",
          "documentation": "<p>Warehouse.</p>"
        }
      },
      "documentation": "<p>Snowflake parameters.</p>"
    },
    "SparkParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        }
      },
      "documentation": "<p>Spark parameters.</p>"
    },
    "SqlQuery": {
      "type": "string",
      "max": 65536,
      "min": 1
    },
    "SqlServerParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port",
        "Database"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        }
      },
      "documentation": "<p>SQL Server parameters.</p>"
    },
    "SslProperties": {
      "type": "structure",
      "members": {
        "DisableSsl": {
          "shape": "Boolean",
          "documentation": "<p>A Boolean option to control whether SSL should be disabled.</p>"
        }
      },
      "documentation": "<p>Secure Socket Layer (SSL) properties that apply when QuickSight connects to your underlying data source.</p>"
    },
    "StatusCode": {
      "type": "integer"
    },
    "String": {
      "type": "string"
    },
    "StringList": {
      "type": "list",
      "member": {
        "shape": "String"
      }
    },
    "StringParameter": {
      "type": "structure",
      "required": [
        "Name",
        "Values"
      ],
      "members": {
        "Name": {
          "shape": "NonEmptyString",
          "documentation": "<p>A display name for a string parameter.</p>"
        },
        "Values": {
          "shape": "StringList",
          "documentation": "<p>The values of a string parameter.</p>"
        }
      },
      "documentation": "<p>A string parameter.</p>"
    },
    "StringParameterList": {
      "type": "list",
      "member": {
        "shape": "StringParameter"
      },
      "max": 100
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "TagKey",
          "documentation": "<p>Tag key.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>Tag value.</p>"
        }
      },
      "documentation": "<p>The key or keys of the key-value pairs for the resource tag or tags assigned to the resource.</p>"
    },
    "TagColumnOperation": {
      "type": "structure",
      "required": [
        "ColumnName",
        "Tags"
      ],
      "members": {
        "ColumnName": {
          "shape": "ColumnName",
          "documentation": "<p>The column that this operation acts on.</p>"
        },
        "Tags": {
          "shape": "ColumnTagList",
          "documentation": "<p>The dataset column tag, currently only used for geospatial type tagging. .</p> <note> <p>This is not tags for the AWS tagging feature. .</p> </note>"
        }
      },
      "documentation": "<p>A transform operation that tags a column with additional information.</p>"
    },
    "TagKey": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TagKeyList": {
      "type": "list",
      "member": {
        "shape": "TagKey"
      },
      "max": 200,
      "min": 1
    },
    "TagList": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 200,
      "min": 1
    },
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "Tags"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>",
          "location": "uri",
          "locationName": "ResourceArn"
        },
        "Tags": {
          "shape": "TagList",
          "documentation": "<p>Contains a map of the key-value pairs for the resource tag or tags assigned to the resource.</p>"
        }
      }
    },
    "TagResourceResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 1
    },
    "Template": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the template.</p>"
        },
        "Name": {
          "shape": "TemplateName",
          "documentation": "<p>The display name of the template.</p>"
        },
        "Version": {
          "shape": "TemplateVersion",
          "documentation": "<p>A structure describing the versions of the template.</p>"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template. This is unique per AWS Region for each AWS account.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time when this was last updated.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>Time when this was created.</p>"
        }
      },
      "documentation": "<p>A template object. A <i>template</i> is an entity in QuickSight that encapsulates the metadata required to create an analysis and that you can use to create a dashboard. A template adds a layer of abstraction by using placeholders to replace the dataset associated with an analysis. You can use templates to create dashboards by replacing dataset placeholders with datasets that follow the same schema that was used to create the source analysis and template.</p> <p>You can share templates across AWS accounts by allowing users in other AWS accounts to create a template or a dashboard from an existing template.</p>"
    },
    "TemplateAlias": {
      "type": "structure",
      "members": {
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The display name of the template alias.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the template alias.</p>"
        },
        "TemplateVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the template alias.</p>"
        }
      },
      "documentation": "<p>The template alias.</p>"
    },
    "TemplateAliasList": {
      "type": "list",
      "member": {
        "shape": "TemplateAlias"
      },
      "max": 100
    },
    "TemplateError": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "TemplateErrorType",
          "documentation": "<p>Type of error.</p>"
        },
        "Message": {
          "shape": "NonEmptyString",
          "documentation": "<p>Description of the error type.</p>"
        }
      },
      "documentation": "<p>List of errors that occurred when the template version creation failed.</p>"
    },
    "TemplateErrorList": {
      "type": "list",
      "member": {
        "shape": "TemplateError"
      },
      "min": 1
    },
    "TemplateErrorType": {
      "type": "string",
      "enum": [
        "SOURCE_NOT_FOUND",
        "DATA_SET_NOT_FOUND",
        "INTERNAL_FAILURE",
        "ACCESS_DENIED"
      ]
    },
    "TemplateName": {
      "type": "string",
      "max": 2048,
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "TemplateSourceAnalysis": {
      "type": "structure",
      "required": [
        "Arn",
        "DataSetReferences"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "DataSetReferences": {
          "shape": "DataSetReferenceList",
          "documentation": "<p>A structure containing information about the dataset references used as placeholders in the template.</p>"
        }
      },
      "documentation": "<p>The source analysis of the template.</p>"
    },
    "TemplateSourceEntity": {
      "type": "structure",
      "members": {
        "SourceAnalysis": {
          "shape": "TemplateSourceAnalysis",
          "documentation": "<p>The source analysis, if it is based on an analysis.</p>"
        },
        "SourceTemplate": {
          "shape": "TemplateSourceTemplate",
          "documentation": "<p>The source template, if it is based on an template.</p>"
        }
      },
      "documentation": "<p>The source entity of the template.</p>"
    },
    "TemplateSourceTemplate": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        }
      },
      "documentation": "<p>The source template of the template.</p>"
    },
    "TemplateSummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>A summary of a template.</p>"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the template. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "Name": {
          "shape": "TemplateName",
          "documentation": "<p>A display name for the template.</p>"
        },
        "LatestVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>A structure containing a list of version numbers for the template summary.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this template was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last time that this template was updated.</p>"
        }
      },
      "documentation": "<p>The template summary.</p>"
    },
    "TemplateSummaryList": {
      "type": "list",
      "member": {
        "shape": "TemplateSummary"
      },
      "max": 100
    },
    "TemplateVersion": {
      "type": "structure",
      "members": {
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this template version was created.</p>"
        },
        "Errors": {
          "shape": "TemplateErrorList",
          "documentation": "<p>Errors associated with this template version.</p>"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the template version.</p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>The HTTP status of the request.</p>"
        },
        "DataSetConfigurations": {
          "shape": "DataSetConfigurationList",
          "documentation": "<p>Schema of the dataset identified by the placeholder. Any dashboard created from this template should be bound to new datasets matching the same schema described through this API operation.</p>"
        },
        "Description": {
          "shape": "VersionDescription",
          "documentation": "<p>The description of the template.</p>"
        },
        "SourceEntityArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an analysis or template that was used to create this template.</p>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the theme associated with this version of the template.</p>"
        }
      },
      "documentation": "<p>A version of a template.</p>"
    },
    "TemplateVersionSummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the template version.</p>"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the template version.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The time that this template version was created.</p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>The status of the template version.</p>"
        },
        "Description": {
          "shape": "VersionDescription",
          "documentation": "<p>The description of the template version.</p>"
        }
      },
      "documentation": "<p>The template version.</p>"
    },
    "TemplateVersionSummaryList": {
      "type": "list",
      "member": {
        "shape": "TemplateVersionSummary"
      },
      "max": 100
    },
    "TeradataParameters": {
      "type": "structure",
      "required": [
        "Host",
        "Port",
        "Database"
      ],
      "members": {
        "Host": {
          "shape": "Host",
          "documentation": "<p>Host.</p>"
        },
        "Port": {
          "shape": "Port",
          "documentation": "<p>Port.</p>"
        },
        "Database": {
          "shape": "Database",
          "documentation": "<p>Database.</p>"
        }
      },
      "documentation": "<p>Teradata parameters.</p>"
    },
    "TextQualifier": {
      "type": "string",
      "enum": [
        "DOUBLE_QUOTE",
        "SINGLE_QUOTE"
      ]
    },
    "Theme": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the theme.</p>"
        },
        "Name": {
          "shape": "ThemeName",
          "documentation": "<p>The name that the user gives to the theme.</p>"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The identifier that the user gives to the theme.</p>"
        },
        "Version": {
          "shape": "ThemeVersion"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the theme was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the theme was last updated.</p>"
        },
        "Type": {
          "shape": "ThemeType",
          "documentation": "<p>The type of theme, based on how it was created. Valid values include: <code>QUICKSIGHT</code> and <code>CUSTOM</code>.</p>"
        }
      },
      "documentation": "<p>Summary information about a theme.</p>"
    },
    "ThemeAlias": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the theme alias.</p>"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The display name of the theme alias.</p>"
        },
        "ThemeVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the theme alias.</p>"
        }
      },
      "documentation": "<p>An alias for a theme.</p>"
    },
    "ThemeAliasList": {
      "type": "list",
      "member": {
        "shape": "ThemeAlias"
      },
      "max": 100
    },
    "ThemeConfiguration": {
      "type": "structure",
      "members": {
        "DataColorPalette": {
          "shape": "DataColorPalette",
          "documentation": "<p>Color properties that apply to chart data colors.</p>"
        },
        "UIColorPalette": {
          "shape": "UIColorPalette",
          "documentation": "<p>Color properties that apply to the UI and to charts, excluding the colors that apply to data. </p>"
        },
        "Sheet": {
          "shape": "SheetStyle",
          "documentation": "<p>Display options related to sheets.</p>"
        }
      },
      "documentation": "<p>The theme configuration. This configuration contains all of the display properties for a theme.</p>"
    },
    "ThemeError": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "ThemeErrorType",
          "documentation": "<p>The type of error.</p>"
        },
        "Message": {
          "shape": "NonEmptyString",
          "documentation": "<p>The error message.</p>"
        }
      },
      "documentation": "<p>Theme error.</p>"
    },
    "ThemeErrorList": {
      "type": "list",
      "member": {
        "shape": "ThemeError"
      },
      "min": 1
    },
    "ThemeErrorType": {
      "type": "string",
      "enum": [
        "INTERNAL_FAILURE"
      ]
    },
    "ThemeName": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "ThemeSummary": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "Name": {
          "shape": "ThemeName",
          "documentation": "<p>the display name for the theme.</p>"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the theme. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "LatestVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The latest version number for the theme. </p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that this theme was created.</p>"
        },
        "LastUpdatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The last date and time that this theme was updated.</p>"
        }
      },
      "documentation": "<p>The theme summary.</p>"
    },
    "ThemeSummaryList": {
      "type": "list",
      "member": {
        "shape": "ThemeSummary"
      },
      "max": 100
    },
    "ThemeType": {
      "type": "string",
      "enum": [
        "QUICKSIGHT",
        "CUSTOM",
        "ALL"
      ]
    },
    "ThemeVersion": {
      "type": "structure",
      "members": {
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the theme.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "Description": {
          "shape": "VersionDescription",
          "documentation": "<p>The description of the theme.</p>"
        },
        "BaseThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The Amazon QuickSight-defined ID of the theme that a custom theme inherits from. All themes initially inherit from a default QuickSight theme.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that this theme version was created.</p>"
        },
        "Configuration": {
          "shape": "ThemeConfiguration",
          "documentation": "<p>The theme configuration, which contains all the theme display properties.</p>"
        },
        "Errors": {
          "shape": "ThemeErrorList",
          "documentation": "<p>Errors associated with the theme.</p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>The status of the theme version.</p>"
        }
      },
      "documentation": "<p>A version of a theme.</p>"
    },
    "ThemeVersionSummary": {
      "type": "structure",
      "members": {
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the theme version.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the theme version.</p>"
        },
        "Description": {
          "shape": "VersionDescription",
          "documentation": "<p>The description of the theme version.</p>"
        },
        "CreatedTime": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that this theme version was created.</p>"
        },
        "Status": {
          "shape": "ResourceStatus",
          "documentation": "<p>The status of the theme version.</p>"
        }
      },
      "documentation": "<p>The theme version.</p>"
    },
    "ThemeVersionSummaryList": {
      "type": "list",
      "member": {
        "shape": "ThemeVersionSummary"
      },
      "max": 100
    },
    "TileLayoutStyle": {
      "type": "structure",
      "members": {
        "Gutter": {
          "shape": "GutterStyle",
          "documentation": "<p>The gutter settings that apply between tiles. </p>"
        },
        "Margin": {
          "shape": "MarginStyle",
          "documentation": "<p>The margin settings that apply around the outside edge of sheets.</p>"
        }
      },
      "documentation": "<p>The display options for the layout of tiles on a sheet.</p>"
    },
    "TileStyle": {
      "type": "structure",
      "members": {
        "Border": {
          "shape": "BorderStyle",
          "documentation": "<p>The border around a tile.</p>"
        }
      },
      "documentation": "<p>Display options related to tiles on a sheet.</p>"
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "TimestampList": {
      "type": "list",
      "member": {
        "shape": "Timestamp"
      }
    },
    "TransformOperation": {
      "type": "structure",
      "members": {
        "ProjectOperation": {
          "shape": "ProjectOperation",
          "documentation": "<p>An operation that projects columns. Operations that come after a projection can only refer to projected columns.</p>"
        },
        "FilterOperation": {
          "shape": "FilterOperation",
          "documentation": "<p>An operation that filters rows based on some condition.</p>"
        },
        "CreateColumnsOperation": {
          "shape": "CreateColumnsOperation",
          "documentation": "<p>An operation that creates calculated columns. Columns created in one such operation form a lexical closure.</p>"
        },
        "RenameColumnOperation": {
          "shape": "RenameColumnOperation",
          "documentation": "<p>An operation that renames a column.</p>"
        },
        "CastColumnTypeOperation": {
          "shape": "CastColumnTypeOperation",
          "documentation": "<p>A transform operation that casts a column to a different type.</p>"
        },
        "TagColumnOperation": {
          "shape": "TagColumnOperation",
          "documentation": "<p>An operation that tags a column with additional information.</p>"
        }
      },
      "documentation": "<p>A data transformation on a logical table. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.</p>"
    },
    "TransformOperationList": {
      "type": "list",
      "member": {
        "shape": "TransformOperation"
      },
      "max": 2048,
      "min": 1
    },
    "TwitterParameters": {
      "type": "structure",
      "required": [
        "Query",
        "MaxRows"
      ],
      "members": {
        "Query": {
          "shape": "Query",
          "documentation": "<p>Twitter query string.</p>"
        },
        "MaxRows": {
          "shape": "PositiveInteger",
          "documentation": "<p>Maximum number of rows to query Twitter.</p>"
        }
      },
      "documentation": "<p>Twitter parameters.</p>"
    },
    "TypeCastFormat": {
      "type": "string",
      "max": 32
    },
    "UIColorPalette": {
      "type": "structure",
      "members": {
        "PrimaryForeground": {
          "shape": "HexColor",
          "documentation": "<p>The color of text and other foreground elements that appear over the primary background regions, such as grid lines, borders, table banding, icons, and so on.</p>"
        },
        "PrimaryBackground": {
          "shape": "HexColor",
          "documentation": "<p>The background color that applies to visuals and other high emphasis UI.</p>"
        },
        "SecondaryForeground": {
          "shape": "HexColor",
          "documentation": "<p>The foreground color that applies to any sheet title, sheet control text, or UI that appears over the secondary background.</p>"
        },
        "SecondaryBackground": {
          "shape": "HexColor",
          "documentation": "<p>The background color that applies to the sheet background and sheet controls.</p>"
        },
        "Accent": {
          "shape": "HexColor",
          "documentation": "<p>This color is that applies to selected states and buttons.</p>"
        },
        "AccentForeground": {
          "shape": "HexColor",
          "documentation": "<p>The foreground color that applies to any text or other elements that appear over the accent color.</p>"
        },
        "Danger": {
          "shape": "HexColor",
          "documentation": "<p>The color that applies to error messages.</p>"
        },
        "DangerForeground": {
          "shape": "HexColor",
          "documentation": "<p>The foreground color that applies to any text or other elements that appear over the error color.</p>"
        },
        "Warning": {
          "shape": "HexColor",
          "documentation": "<p>This color that applies to warning and informational messages.</p>"
        },
        "WarningForeground": {
          "shape": "HexColor",
          "documentation": "<p>The foreground color that applies to any text or other elements that appear over the warning color.</p>"
        },
        "Success": {
          "shape": "HexColor",
          "documentation": "<p>The color that applies to success messages, for example the check mark for a successful download.</p>"
        },
        "SuccessForeground": {
          "shape": "HexColor",
          "documentation": "<p>The foreground color that applies to any text or other elements that appear over the success color.</p>"
        },
        "Dimension": {
          "shape": "HexColor",
          "documentation": "<p>The color that applies to the names of fields that are identified as dimensions.</p>"
        },
        "DimensionForeground": {
          "shape": "HexColor",
          "documentation": "<p>The foreground color that applies to any text or other elements that appear over the dimension color.</p>"
        },
        "Measure": {
          "shape": "HexColor",
          "documentation": "<p>The color that applies to the names of fields that are identified as measures.</p>"
        },
        "MeasureForeground": {
          "shape": "HexColor",
          "documentation": "<p>The foreground color that applies to any text or other elements that appear over the measure color.</p>"
        }
      },
      "documentation": "<p>The theme colors that apply to UI and to charts, excluding data colors. The colors description is a hexidecimal color code that consists of six alphanumerical characters, prefixed with <code>#</code>, for example #37BFF5. For more information, see <a href=\"https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html\">Using Themes in Amazon QuickSight</a> in the <i>Amazon QuickSight User Guide.</i> </p>"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceArn",
        "TagKeys"
      ],
      "members": {
        "ResourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>",
          "location": "uri",
          "locationName": "ResourceArn"
        },
        "TagKeys": {
          "shape": "TagKeyList",
          "documentation": "<p>The keys of the key-value pairs for the resource tag or tags assigned to the resource.</p>",
          "location": "querystring",
          "locationName": "keys"
        }
      }
    },
    "UntagResourceResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateAccountCustomizationRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AccountCustomization"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you want to update QuickSight customizations for.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace that you want to update QuickSight customizations for.</p>",
          "location": "querystring",
          "locationName": "namespace"
        },
        "AccountCustomization": {
          "shape": "AccountCustomization",
          "documentation": "<p>The QuickSight customizations you're updating in the current AWS Region. </p>"
        }
      }
    },
    "UpdateAccountCustomizationResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the updated customization for this AWS account.</p>"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that you want to update QuickSight customizations for.</p>"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace associated with the customization that you're updating.</p>"
        },
        "AccountCustomization": {
          "shape": "AccountCustomization",
          "documentation": "<p>The QuickSight customizations you're updating in the current AWS Region. </p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateAccountSettingsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DefaultNamespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that contains the QuickSight settings that you want to list.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DefaultNamespace": {
          "shape": "Namespace",
          "documentation": "<p>The default namespace for this AWS Account. Currently, the default is <code>default</code>. IAM users who register for the first time with QuickSight provide an email that becomes associated with the default namespace.</p>"
        },
        "NotificationEmail": {
          "shape": "String",
          "documentation": "<p>The email address that you want QuickSight to send notifications to regarding your AWS account or QuickSight subscription.</p>"
        }
      }
    },
    "UpdateAccountSettingsResponse": {
      "type": "structure",
      "members": {
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateAnalysisPermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AnalysisId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the analysis whose permissions you're updating. You must be using the AWS account that the analysis is in.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis whose permissions you're updating. The ID is part of the analysis URL.</p>",
          "location": "uri",
          "locationName": "AnalysisId"
        },
        "GrantPermissions": {
          "shape": "UpdateResourcePermissionList",
          "documentation": "<p>A structure that describes the permissions to add and the principal to add them to.</p>"
        },
        "RevokePermissions": {
          "shape": "UpdateResourcePermissionList",
          "documentation": "<p>A structure that describes the permissions to remove and the principal to remove them from.</p>"
        }
      }
    },
    "UpdateAnalysisPermissionsResponse": {
      "type": "structure",
      "members": {
        "AnalysisArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the analysis that you updated.</p>"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis that you updated permissions for.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A structure that describes the principals and the resource-level permissions on an analysis.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateAnalysisRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AnalysisId",
        "Name",
        "SourceEntity"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the analysis that you're updating.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the analysis that you're updating. This ID displays in the URL of the analysis.</p>",
          "location": "uri",
          "locationName": "AnalysisId"
        },
        "Name": {
          "shape": "AnalysisName",
          "documentation": "<p>A descriptive name for the analysis that you're updating. This name displays for the analysis in the QuickSight console.</p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>The parameter names and override values that you want to use. An analysis can have any parameter type, and some parameters might accept multiple values. </p>"
        },
        "SourceEntity": {
          "shape": "AnalysisSourceEntity",
          "documentation": "<p>A source entity to use for the analysis that you're updating. This metadata structure contains details that describe a source template and one or more datasets.</p>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the theme to apply to the analysis that you're creating. To see the theme in the QuickSight console, make sure that you have access to it.</p>"
        }
      }
    },
    "UpdateAnalysisResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the analysis that you're updating.</p>"
        },
        "AnalysisId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID of the analysis.</p>"
        },
        "UpdateStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The update status of the last update that was made to the analysis.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "UpdateDashboardPermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the dashboard whose permissions you're updating.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        },
        "GrantPermissions": {
          "shape": "UpdateResourcePermissionList",
          "documentation": "<p>The permissions that you want to grant on this resource.</p>"
        },
        "RevokePermissions": {
          "shape": "UpdateResourcePermissionList",
          "documentation": "<p>The permissions that you want to revoke from this resource.</p>"
        }
      }
    },
    "UpdateDashboardPermissionsResponse": {
      "type": "structure",
      "members": {
        "DashboardArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dashboard.</p>"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>Information about the permissions on the dashboard.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateDashboardPublishedVersionRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId",
        "VersionNumber"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the dashboard that you're updating.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        },
        "VersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the dashboard.</p>",
          "location": "uri",
          "locationName": "VersionNumber"
        }
      }
    },
    "UpdateDashboardPublishedVersionResponse": {
      "type": "structure",
      "members": {
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>"
        },
        "DashboardArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dashboard.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "UpdateDashboardRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DashboardId",
        "Name",
        "SourceEntity"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the dashboard that you're updating.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>",
          "location": "uri",
          "locationName": "DashboardId"
        },
        "Name": {
          "shape": "DashboardName",
          "documentation": "<p>The display name of the dashboard.</p>"
        },
        "SourceEntity": {
          "shape": "DashboardSourceEntity",
          "documentation": "<p>The entity that you are using as a source when you update the dashboard. In <code>SourceEntity</code>, you specify the type of object you're using as source. You can only update a dashboard from a template, so you use a <code>SourceTemplate</code> entity. If you need to update a dashboard from an analysis, first convert the analysis to a template by using the <a>CreateTemplate</a> API operation. For <code>SourceTemplate</code>, specify the Amazon Resource Name (ARN) of the source template. The <code>SourceTemplate</code> ARN can contain any AWS Account and any QuickSight-supported AWS Region. </p> <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> to list the replacement datasets for the placeholders listed in the original. The schema in each dataset must match its placeholder. </p>"
        },
        "Parameters": {
          "shape": "Parameters",
          "documentation": "<p>A structure that contains the parameters of the dashboard. These are parameter overrides for a dashboard. A dashboard can have any type of parameters, and some parameters might accept multiple values.</p>"
        },
        "VersionDescription": {
          "shape": "VersionDescription",
          "documentation": "<p>A description for the first version of the dashboard being created.</p>"
        },
        "DashboardPublishOptions": {
          "shape": "DashboardPublishOptions",
          "documentation": "<p>Options for publishing the dashboard when you create it:</p> <ul> <li> <p> <code>AvailabilityStatus</code> for <code>AdHocFilteringOption</code> - This status can be either <code>ENABLED</code> or <code>DISABLED</code>. When this is set to <code>DISABLED</code>, QuickSight disables the left filter pane on the published dashboard, which can be used for ad hoc (one-time) filtering. This option is <code>ENABLED</code> by default. </p> </li> <li> <p> <code>AvailabilityStatus</code> for <code>ExportToCSVOption</code> - This status can be either <code>ENABLED</code> or <code>DISABLED</code>. The visual option to export data to .CSV format isn't enabled when this is set to <code>DISABLED</code>. This option is <code>ENABLED</code> by default. </p> </li> <li> <p> <code>VisibilityState</code> for <code>SheetControlsOption</code> - This visibility state can be either <code>COLLAPSED</code> or <code>EXPANDED</code>. This option is <code>COLLAPSED</code> by default. </p> </li> </ul>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. If you add a value for this field, it overrides the value that was originally associated with the entity. The theme ARN must exist in the same AWS account where you create the dashboard.</p>"
        }
      }
    },
    "UpdateDashboardResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the resource.</p>"
        },
        "VersionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN of the dashboard, including the version number.</p>"
        },
        "DashboardId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the dashboard.</p>"
        },
        "CreationStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The creation status of the request.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "UpdateDataSetPermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSetId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset whose permissions you want to update. This ID is unique per AWS Region for each AWS account.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        },
        "GrantPermissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>The resource permissions that you want to grant to the dataset.</p>"
        },
        "RevokePermissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>The resource permissions that you want to revoke from the dataset.</p>"
        }
      }
    },
    "UpdateDataSetPermissionsResponse": {
      "type": "structure",
      "members": {
        "DataSetArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset whose permissions you want to update. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateDataSetRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSetId",
        "Name",
        "PhysicalTableMap",
        "ImportMode"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset that you want to update. This ID is unique per AWS Region for each AWS account.</p>",
          "location": "uri",
          "locationName": "DataSetId"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>The display name for the dataset.</p>"
        },
        "PhysicalTableMap": {
          "shape": "PhysicalTableMap",
          "documentation": "<p>Declares the physical tables that are available in the underlying data sources.</p>"
        },
        "LogicalTableMap": {
          "shape": "LogicalTableMap",
          "documentation": "<p>Configures the combination and transformation of the data from the physical tables.</p>"
        },
        "ImportMode": {
          "shape": "DataSetImportMode",
          "documentation": "<p>Indicates whether you want to import the data into SPICE.</p>"
        },
        "ColumnGroups": {
          "shape": "ColumnGroupList",
          "documentation": "<p>Groupings of columns that work together in certain QuickSight features. Currently, only geospatial hierarchy is supported.</p>"
        },
        "RowLevelPermissionDataSet": {
          "shape": "RowLevelPermissionDataSet",
          "documentation": "<p>The row-level security configuration for the data you want to create.</p>"
        }
      }
    },
    "UpdateDataSetResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the dataset.</p>"
        },
        "DataSetId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "IngestionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the ingestion, which is triggered as a result of dataset creation if the import mode is SPICE.</p>"
        },
        "IngestionId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the ingestion, which is triggered as a result of dataset creation if the import mode is SPICE.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateDataSourcePermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSourceId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account. </p>",
          "location": "uri",
          "locationName": "DataSourceId"
        },
        "GrantPermissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions that you want to grant on the data source.</p>"
        },
        "RevokePermissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions that you want to revoke on the data source.</p>"
        }
      }
    },
    "UpdateDataSourcePermissionsResponse": {
      "type": "structure",
      "members": {
        "DataSourceArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the data source.</p>"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateDataSourceRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "DataSourceId",
        "Name"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The AWS account ID.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account. </p>",
          "location": "uri",
          "locationName": "DataSourceId"
        },
        "Name": {
          "shape": "ResourceName",
          "documentation": "<p>A display name for the data source.</p>"
        },
        "DataSourceParameters": {
          "shape": "DataSourceParameters",
          "documentation": "<p>The parameters that QuickSight uses to connect to your underlying source.</p>"
        },
        "Credentials": {
          "shape": "DataSourceCredentials",
          "documentation": "<p>The credentials that QuickSight that uses to connect to your underlying source. Currently, only credentials based on user name and password are supported.</p>"
        },
        "VpcConnectionProperties": {
          "shape": "VpcConnectionProperties",
          "documentation": "<p>Use this parameter only when you want QuickSight to use a VPC connection when connecting to your underlying source.</p>"
        },
        "SslProperties": {
          "shape": "SslProperties",
          "documentation": "<p>Secure Socket Layer (SSL) properties that apply when QuickSight connects to your underlying source.</p>"
        }
      }
    },
    "UpdateDataSourceResponse": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the data source.</p>"
        },
        "DataSourceId": {
          "shape": "ResourceId",
          "documentation": "<p>The ID of the data source. This ID is unique per AWS Region for each AWS account.</p>"
        },
        "UpdateStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The update status of the data source's last update.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "AwsAccountId",
        "Namespace"
      ],
      "members": {
        "GroupName": {
          "shape": "GroupName",
          "documentation": "<p>The name of the group that you want to update.</p>",
          "location": "uri",
          "locationName": "GroupName"
        },
        "Description": {
          "shape": "GroupDescription",
          "documentation": "<p>The description for the group that you want to update.</p>"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the group is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        }
      }
    },
    "UpdateGroupResponse": {
      "type": "structure",
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>The name of the group.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateIAMPolicyAssignmentRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "AssignmentName",
        "Namespace"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the IAM policy assignment.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>The name of the assignment. This name must be unique within an AWS account.</p>",
          "location": "uri",
          "locationName": "AssignmentName"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace of the assignment.</p>",
          "location": "uri",
          "locationName": "Namespace"
        },
        "AssignmentStatus": {
          "shape": "AssignmentStatus",
          "documentation": "<p>The status of the assignment. Possible values are as follows:</p> <ul> <li> <p> <code>ENABLED</code> - Anything specified in this assignment is used when creating the data source.</p> </li> <li> <p> <code>DISABLED</code> - This assignment isn't used when creating the data source.</p> </li> <li> <p> <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the data source.</p> </li> </ul>"
        },
        "PolicyArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the IAM policy to apply to the QuickSight users and groups specified in this assignment.</p>"
        },
        "Identities": {
          "shape": "IdentityMap",
          "documentation": "<p>The QuickSight users, groups, or both that you want to assign the policy to.</p>"
        }
      }
    },
    "UpdateIAMPolicyAssignmentResponse": {
      "type": "structure",
      "members": {
        "AssignmentName": {
          "shape": "IAMPolicyAssignmentName",
          "documentation": "<p>The name of the assignment. </p>"
        },
        "AssignmentId": {
          "shape": "String",
          "documentation": "<p>The ID of the assignment.</p>"
        },
        "PolicyArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the IAM policy applied to the QuickSight users and groups specified in this assignment.</p>"
        },
        "Identities": {
          "shape": "IdentityMap",
          "documentation": "<p>The QuickSight users, groups, or both that the IAM policy is assigned to.</p>"
        },
        "AssignmentStatus": {
          "shape": "AssignmentStatus",
          "documentation": "<p>The status of the assignment. Possible values are as follows:</p> <ul> <li> <p> <code>ENABLED</code> - Anything specified in this assignment is used when creating the data source.</p> </li> <li> <p> <code>DISABLED</code> - This assignment isn't used when creating the data source.</p> </li> <li> <p> <code>DRAFT</code> - This assignment is an unfinished draft and isn't used when creating the data source.</p> </li> </ul>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateResourcePermissionList": {
      "type": "list",
      "member": {
        "shape": "ResourcePermission"
      },
      "max": 100
    },
    "UpdateTemplateAliasRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId",
        "AliasName",
        "TemplateVersionNumber"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template alias that you're updating.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The alias of the template that you want to update. If you name a specific alias, you update the version that the alias points to. You can specify the latest version of the template by providing the keyword <code>$LATEST</code> in the <code>AliasName</code> parameter. The keyword <code>$PUBLISHED</code> doesn't apply to templates.</p>",
          "location": "uri",
          "locationName": "AliasName"
        },
        "TemplateVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the template.</p>"
        }
      }
    },
    "UpdateTemplateAliasResponse": {
      "type": "structure",
      "members": {
        "TemplateAlias": {
          "shape": "TemplateAlias",
          "documentation": "<p>The template alias.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "UpdateTemplatePermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "GrantPermissions": {
          "shape": "UpdateResourcePermissionList",
          "documentation": "<p>A list of resource permissions to be granted on the template. </p>"
        },
        "RevokePermissions": {
          "shape": "UpdateResourcePermissionList",
          "documentation": "<p>A list of resource permissions to be revoked from the template. </p>"
        }
      }
    },
    "UpdateTemplatePermissionsResponse": {
      "type": "structure",
      "members": {
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>"
        },
        "TemplateArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the template.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>A list of resource permissions to be set on the template.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateTemplateRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "TemplateId",
        "SourceEntity"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the template that you're updating.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>",
          "location": "uri",
          "locationName": "TemplateId"
        },
        "SourceEntity": {
          "shape": "TemplateSourceEntity",
          "documentation": "<p>The entity that you are using as a source when you update the template. In <code>SourceEntity</code>, you specify the type of object you're using as source: <code>SourceTemplate</code> for a template or <code>SourceAnalysis</code> for an analysis. Both of these require an Amazon Resource Name (ARN). For <code>SourceTemplate</code>, specify the ARN of the source template. For <code>SourceAnalysis</code>, specify the ARN of the source analysis. The <code>SourceTemplate</code> ARN can contain any AWS Account and any QuickSight-supported AWS Region. </p> <p>Use the <code>DataSetReferences</code> entity within <code>SourceTemplate</code> or <code>SourceAnalysis</code> to list the replacement datasets for the placeholders listed in the original. The schema in each dataset must match its placeholder. </p>"
        },
        "VersionDescription": {
          "shape": "VersionDescription",
          "documentation": "<p>A description of the current template version that is being updated. Every time you call <code>UpdateTemplate</code>, you create a new version of the template. Each version of the template maintains a description of the version in the <code>VersionDescription</code> field.</p>"
        },
        "Name": {
          "shape": "TemplateName",
          "documentation": "<p>The name for the template.</p>"
        }
      }
    },
    "UpdateTemplateResponse": {
      "type": "structure",
      "members": {
        "TemplateId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the template.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the template.</p>"
        },
        "VersionArn": {
          "shape": "Arn",
          "documentation": "<p>The ARN for the template, including the version information of the first version.</p>"
        },
        "CreationStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The creation status of the template.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "UpdateThemeAliasRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId",
        "AliasName",
        "ThemeVersionNumber"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme alias that you're updating.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "AliasName": {
          "shape": "AliasName",
          "documentation": "<p>The name of the theme alias that you want to update.</p>",
          "location": "uri",
          "locationName": "AliasName"
        },
        "ThemeVersionNumber": {
          "shape": "VersionNumber",
          "documentation": "<p>The version number of the theme that the alias should reference.</p>"
        }
      }
    },
    "UpdateThemeAliasResponse": {
      "type": "structure",
      "members": {
        "ThemeAlias": {
          "shape": "ThemeAlias",
          "documentation": "<p>Information about the theme alias.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "UpdateThemePermissionsRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "GrantPermissions": {
          "shape": "UpdateResourcePermissionList",
          "documentation": "<p>A list of resource permissions to be granted for the theme.</p>"
        },
        "RevokePermissions": {
          "shape": "UpdateResourcePermissionList",
          "documentation": "<p>A list of resource permissions to be revoked from the theme.</p>"
        }
      }
    },
    "UpdateThemePermissionsResponse": {
      "type": "structure",
      "members": {
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>"
        },
        "ThemeArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the theme.</p>"
        },
        "Permissions": {
          "shape": "ResourcePermissionList",
          "documentation": "<p>The resulting list of resource permissions for the theme.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UpdateThemeRequest": {
      "type": "structure",
      "required": [
        "AwsAccountId",
        "ThemeId",
        "BaseThemeId"
      ],
      "members": {
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID of the AWS account that contains the theme that you're updating.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>",
          "location": "uri",
          "locationName": "ThemeId"
        },
        "Name": {
          "shape": "ThemeName",
          "documentation": "<p>The name for the theme.</p>"
        },
        "BaseThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The theme ID, defined by Amazon QuickSight, that a custom theme inherits from. All themes initially inherit from a default QuickSight theme.</p>"
        },
        "VersionDescription": {
          "shape": "VersionDescription",
          "documentation": "<p>A description of the theme version that you're updating Every time that you call <code>UpdateTheme</code>, you create a new version of the theme. Each version of the theme maintains a description of the version in <code>VersionDescription</code>.</p>"
        },
        "Configuration": {
          "shape": "ThemeConfiguration",
          "documentation": "<p>The theme configuration, which contains the theme display properties.</p>"
        }
      }
    },
    "UpdateThemeResponse": {
      "type": "structure",
      "members": {
        "ThemeId": {
          "shape": "RestrictiveResourceId",
          "documentation": "<p>The ID for the theme.</p>"
        },
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the theme.</p>"
        },
        "VersionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the new version of the theme.</p>"
        },
        "CreationStatus": {
          "shape": "ResourceStatus",
          "documentation": "<p>The creation status of the theme.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        }
      }
    },
    "UpdateUserRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "AwsAccountId",
        "Namespace",
        "Email",
        "Role"
      ],
      "members": {
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The Amazon QuickSight user name that you want to update.</p>",
          "location": "uri",
          "locationName": "UserName"
        },
        "AwsAccountId": {
          "shape": "AwsAccountId",
          "documentation": "<p>The ID for the AWS account that the user is in. Currently, you use the ID for the AWS account that contains your Amazon QuickSight account.</p>",
          "location": "uri",
          "locationName": "AwsAccountId"
        },
        "Namespace": {
          "shape": "Namespace",
          "documentation": "<p>The namespace. Currently, you should set this to <code>default</code>.</p>",
          "location": "uri",
          "locationName": "Namespace"
        },
        "Email": {
          "shape": "String",
          "documentation": "<p>The email address of the user that you want to update.</p>"
        },
        "Role": {
          "shape": "UserRole",
          "documentation": "<p>The Amazon QuickSight role of the user. The role can be one of the following default security cohorts:</p> <ul> <li> <p> <code>READER</code>: A user who has read-only access to dashboards.</p> </li> <li> <p> <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and dashboards.</p> </li> <li> <p> <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight settings.</p> </li> </ul> <p>The name of the QuickSight role is invisible to the user except for the console screens dealing with permissions.</p>"
        },
        "CustomPermissionsName": {
          "shape": "RoleName",
          "documentation": "<p>(Enterprise edition only) The name of the custom permissions profile that you want to assign to this user. Customized permissions allows you to control a user's access by restricting access the following operations:</p> <ul> <li> <p>Create and update data sources</p> </li> <li> <p>Create and update datasets</p> </li> <li> <p>Create and update email reports</p> </li> <li> <p>Subscribe to email reports</p> </li> </ul> <p>A set of custom permissions includes any combination of these restrictions. Currently, you need to create the profile names for custom permission sets by using the QuickSight console. Then, you use the <code>RegisterUser</code> API operation to assign the named set of permissions to a QuickSight user. </p> <p>QuickSight custom permissions are applied through IAM policies. Therefore, they override the permissions typically granted by assigning QuickSight users to one of the default security cohorts in QuickSight (admin, author, reader).</p> <p>This feature is available only to QuickSight Enterprise edition subscriptions that use SAML 2.0-Based Federation for Single Sign-On (SSO).</p>"
        },
        "UnapplyCustomPermissions": {
          "shape": "Boolean",
          "documentation": "<p>A flag that you use to indicate that you want to remove all custom permissions from this user. Using this parameter resets the user to the state it was in before a custom permissions profile was applied. This parameter defaults to NULL and it doesn't accept any other value.</p>"
        }
      }
    },
    "UpdateUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>The Amazon QuickSight user.</p>"
        },
        "RequestId": {
          "shape": "String",
          "documentation": "<p>The AWS request ID for this operation.</p>"
        },
        "Status": {
          "shape": "StatusCode",
          "documentation": "<p>The HTTP status of the request.</p>",
          "location": "statusCode"
        }
      }
    },
    "UploadSettings": {
      "type": "structure",
      "members": {
        "Format": {
          "shape": "FileFormat",
          "documentation": "<p>File format.</p>"
        },
        "StartFromRow": {
          "shape": "PositiveInteger",
          "documentation": "<p>A row number to start reading data from.</p>",
          "box": true
        },
        "ContainsHeader": {
          "shape": "Boolean",
          "documentation": "<p>Whether the file has a header row, or the files each have a header row.</p>",
          "box": true
        },
        "TextQualifier": {
          "shape": "TextQualifier",
          "documentation": "<p>Text qualifier.</p>"
        },
        "Delimiter": {
          "shape": "Delimiter",
          "documentation": "<p>The delimiter between values in the file.</p>"
        }
      },
      "documentation": "<p>Information about the format for a source file or files.</p>"
    },
    "User": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the user.</p>"
        },
        "UserName": {
          "shape": "UserName",
          "documentation": "<p>The user's user name.</p>"
        },
        "Email": {
          "shape": "String",
          "documentation": "<p>The user's email address.</p>"
        },
        "Role": {
          "shape": "UserRole",
          "documentation": "<p>The Amazon QuickSight role for the user. The user role can be one of the following:.</p> <ul> <li> <p> <code>READER</code>: A user who has read-only access to dashboards.</p> </li> <li> <p> <code>AUTHOR</code>: A user who can create data sources, datasets, analyses, and dashboards.</p> </li> <li> <p> <code>ADMIN</code>: A user who is an author, who can also manage Amazon QuickSight settings.</p> </li> <li> <p> <code>RESTRICTED_READER</code>: This role isn't currently available for use.</p> </li> <li> <p> <code>RESTRICTED_AUTHOR</code>: This role isn't currently available for use.</p> </li> </ul>"
        },
        "IdentityType": {
          "shape": "IdentityType",
          "documentation": "<p>The type of identity authentication used by the user.</p>"
        },
        "Active": {
          "shape": "Boolean",
          "documentation": "<p>The active status of user. When you create an Amazon QuickSight user that’s not an IAM user or an Active Directory user, that user is inactive until they sign in and provide a password.</p>"
        },
        "PrincipalId": {
          "shape": "String",
          "documentation": "<p>The principal ID of the user.</p>"
        },
        "CustomPermissionsName": {
          "shape": "RoleName",
          "documentation": "<p>The custom permissions profile associated with this user.</p>"
        }
      },
      "documentation": "<p>A registered user of Amazon QuickSight. </p>"
    },
    "UserList": {
      "type": "list",
      "member": {
        "shape": "User"
      }
    },
    "UserName": {
      "type": "string",
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "UserRole": {
      "type": "string",
      "enum": [
        "ADMIN",
        "AUTHOR",
        "READER",
        "RESTRICTED_AUTHOR",
        "RESTRICTED_READER"
      ]
    },
    "Username": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "VersionDescription": {
      "type": "string",
      "max": 512,
      "min": 1
    },
    "VersionNumber": {
      "type": "long",
      "min": 1
    },
    "VpcConnectionProperties": {
      "type": "structure",
      "required": [
        "VpcConnectionArn"
      ],
      "members": {
        "VpcConnectionArn": {
          "shape": "Arn",
          "documentation": "<p>The Amazon Resource Name (ARN) for the VPC connection.</p>"
        }
      },
      "documentation": "<p>VPC connection properties.</p>"
    },
    "Warehouse": {
      "type": "string",
      "max": 128
    },
    "WorkGroup": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "boolean": {
      "type": "boolean"
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
  "documentation": "<fullname>Amazon QuickSight API Reference</fullname> <p>Amazon QuickSight is a fully managed, serverless business intelligence service for the AWS Cloud that makes it easy to extend data and insights to every user in your organization. This API reference contains documentation for a programming interface that you can use to manage Amazon QuickSight. </p>"
}
]===]))