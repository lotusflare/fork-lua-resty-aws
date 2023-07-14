local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2016-11-28",
    "endpointPrefix": "organizations",
    "jsonVersion": "1.1",
    "protocol": "json",
    "serviceAbbreviation": "Organizations",
    "serviceFullName": "AWS Organizations",
    "serviceId": "Organizations",
    "signatureVersion": "v4",
    "targetPrefix": "AWSOrganizationsV20161128",
    "uid": "organizations-2016-11-28"
  },
  "operations": {
    "AcceptHandshake": {
      "name": "AcceptHandshake",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AcceptHandshakeRequest"
      },
      "output": {
        "shape": "AcceptHandshakeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "HandshakeConstraintViolationException"
        },
        {
          "shape": "HandshakeNotFoundException"
        },
        {
          "shape": "InvalidHandshakeTransitionException"
        },
        {
          "shape": "HandshakeAlreadyInStateException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "AccessDeniedForDependencyException"
        }
      ],
      "documentation": "<p>Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request. </p> <p>This operation can be called only by the following principals when they also have the relevant IAM permissions:</p> <ul> <li> <p> <b>Invitation to join</b> or <b>Approve all features request</b> handshakes: only a principal from the member account. </p> <p>The user who calls the API for an invitation to join must have the <code>organizations:AcceptHandshake</code> permission. If you enabled all features in the organization, the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that AWS Organizations can create the required service-linked role named <code>AWSServiceRoleForOrganizations</code>. For more information, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles\">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p> <b>Enable all features final confirmation</b> handshake: only a principal from the master account.</p> <p>For more information about invitations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html\">Inviting an AWS Account to Join Your Organization</a> in the <i>AWS Organizations User Guide.</i> For more information about requests to enable all features in the organization, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide.</i> </p> </li> </ul> <p>After you accept a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that, it's deleted.</p>"
    },
    "AttachPolicy": {
      "name": "AttachPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AttachPolicyRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "DuplicatePolicyAttachmentException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "PolicyTypeNotEnabledException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        },
        {
          "shape": "PolicyChangesInProgressException"
        }
      ],
      "documentation": "<p>Attaches a policy to a root, an organizational unit (OU), or an individual account. How the policy affects accounts depends on the type of policy. Refer to the <i>AWS Organizations User Guide</i> for information about each policy type:</p> <ul> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a> </p> </li> </ul> <p>This operation can be called only from the organization's master account.</p>"
    },
    "CancelHandshake": {
      "name": "CancelHandshake",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CancelHandshakeRequest"
      },
      "output": {
        "shape": "CancelHandshakeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "HandshakeNotFoundException"
        },
        {
          "shape": "InvalidHandshakeTransitionException"
        },
        {
          "shape": "HandshakeAlreadyInStateException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Cancels a handshake. Canceling a handshake sets the handshake state to <code>CANCELED</code>. </p> <p>This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use <a>DeclineHandshake</a> instead. After a handshake is canceled, the recipient can no longer respond to that handshake.</p> <p>After you cancel a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that, it's deleted.</p>"
    },
    "CreateAccount": {
      "name": "CreateAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAccountRequest"
      },
      "output": {
        "shape": "CreateAccountResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "FinalizingOrganizationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Creates an AWS account that is automatically a member of the organization whose credentials made the request. This is an asynchronous request that AWS performs in the background. Because <code>CreateAccount</code> operates asynchronously, it can return a successful completion message even though account initialization might still be in progress. You might need to wait a few minutes before you can successfully access the account. To check the status of the request, do one of the following:</p> <ul> <li> <p>Use the <code>OperationId</code> response element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p> </li> <li> <p>Check the AWS CloudTrail log for the <code>CreateAccountResult</code> event. For information on using AWS CloudTrail with AWS Organizations, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html\">Monitoring the Activity in Your Organization</a> in the <i>AWS Organizations User Guide.</i> </p> </li> </ul> <p/> <p>The user who calls the API to create an account must have the <code>organizations:CreateAccount</code> permission. If you enabled all features in the organization, AWS Organizations creates the required service-linked role named <code>AWSServiceRoleForOrganizations</code>. For more information, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs\">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> <p>AWS Organizations preconfigures the new member account with a role (named <code>OrganizationAccountAccessRole</code> by default) that grants users in the master account administrator permissions in the new member account. Principals in the master account can assume the role. AWS Organizations clones the company name and address information for the new account from the organization's master account.</p> <p>This operation can be called only from the organization's master account.</p> <p>For more information about creating accounts, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html\">Creating an AWS Account in Your Organization</a> in the <i>AWS Organizations User Guide.</i> </p> <important> <ul> <li> <p>When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account, such as a payment method and signing the end user license agreement (EULA) is <i>not</i> automatically collected. If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info\"> To leave an organization as a member account</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>If you get an exception that indicates that you exceeded your account limits for the organization, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> <li> <p>If you get an exception that indicates that the operation failed because your organization is still initializing, wait one hour and then try again. If the error persists, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> <li> <p>Using <code>CreateAccount</code> to create multiple temporary accounts isn't recommended. You can only close an account from the Billing and Cost Management Console, and you must be signed in as the root user. For information on the requirements and process for closing an account, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html\">Closing an AWS Account</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> </important> <note> <p>When you create a member account with this operation, you can choose whether to create the account with the <b>IAM User and Role Access to Billing Information</b> switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable it, only the account root user can access billing information. For information about how to disable this switch for an account, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html\">Granting Access to Your Billing Information and Tools</a>.</p> </note>"
    },
    "CreateGovCloudAccount": {
      "name": "CreateGovCloudAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateGovCloudAccountRequest"
      },
      "output": {
        "shape": "CreateGovCloudAccountResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "FinalizingOrganizationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>This action is available if all of the following are true:</p> <ul> <li> <p>You're authorized to create accounts in the AWS GovCloud (US) Region. For more information on the AWS GovCloud (US) Region, see the <a href=\"http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html\"> <i>AWS GovCloud User Guide</i>.</a> </p> </li> <li> <p>You already have an account in the AWS GovCloud (US) Region that is associated with your master account in the commercial Region. </p> </li> <li> <p>You call this action from the master account of your organization in the commercial Region.</p> </li> <li> <p>You have the <code>organizations:CreateGovCloudAccount</code> permission. AWS Organizations creates the required service-linked role named <code>AWSServiceRoleForOrganizations</code>. For more information, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs\">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide.</i> </p> </li> </ul> <p>AWS automatically enables AWS CloudTrail for AWS GovCloud (US) accounts, but you should also do the following:</p> <ul> <li> <p>Verify that AWS CloudTrail is enabled to store logs.</p> </li> <li> <p>Create an S3 bucket for AWS CloudTrail log storage.</p> <p>For more information, see <a href=\"http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html\">Verifying AWS CloudTrail Is Enabled</a> in the <i>AWS GovCloud User Guide</i>. </p> </li> </ul> <p>You call this action from the master account of your organization in the commercial Region to create a standalone AWS account in the AWS GovCloud (US) Region. After the account is created, the master account of an organization in the AWS GovCloud (US) Region can invite it to that organization. For more information on inviting standalone accounts in the AWS GovCloud (US) to join an organization, see <a href=\"http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html\">AWS Organizations</a> in the <i>AWS GovCloud User Guide.</i> </p> <p>Calling <code>CreateGovCloudAccount</code> is an asynchronous request that AWS performs in the background. Because <code>CreateGovCloudAccount</code> operates asynchronously, it can return a successful completion message even though account initialization might still be in progress. You might need to wait a few minutes before you can successfully access the account. To check the status of the request, do one of the following:</p> <ul> <li> <p>Use the <code>OperationId</code> response element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p> </li> <li> <p>Check the AWS CloudTrail log for the <code>CreateAccountResult</code> event. For information on using AWS CloudTrail with Organizations, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html\">Monitoring the Activity in Your Organization</a> in the <i>AWS Organizations User Guide.</i> </p> </li> </ul> <p/> <p>When you call the <code>CreateGovCloudAccount</code> action, you create two accounts: a standalone account in the AWS GovCloud (US) Region and an associated account in the commercial Region for billing and support purposes. The account in the commercial Region is automatically a member of the organization whose credentials made the request. Both accounts are associated with the same email address.</p> <p>A role is created in the new account in the commercial Region that allows the master account in the organization in the commercial Region to assume it. An AWS GovCloud (US) account is then created and associated with the commercial account that you just created. A role is created in the new AWS GovCloud (US) account that can be assumed by the AWS GovCloud (US) account that is associated with the master account of the commercial organization. For more information and to view a diagram that explains how account access works, see <a href=\"http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html\">AWS Organizations</a> in the <i>AWS GovCloud User Guide.</i> </p> <p>For more information about creating accounts, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html\">Creating an AWS Account in Your Organization</a> in the <i>AWS Organizations User Guide.</i> </p> <important> <ul> <li> <p>When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account is <i>not</i> automatically collected. This includes a payment method and signing the end user license agreement (EULA). If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info\"> To leave an organization as a member account</a> in the <i>AWS Organizations User Guide.</i> </p> </li> <li> <p>If you get an exception that indicates that you exceeded your account limits for the organization, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> <li> <p>If you get an exception that indicates that the operation failed because your organization is still initializing, wait one hour and then try again. If the error persists, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> <li> <p>Using <code>CreateGovCloudAccount</code> to create multiple temporary accounts isn't recommended. You can only close an account from the AWS Billing and Cost Management console, and you must be signed in as the root user. For information on the requirements and process for closing an account, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html\">Closing an AWS Account</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> </important> <note> <p>When you create a member account with this operation, you can choose whether to create the account with the <b>IAM User and Role Access to Billing Information</b> switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable it, only the account root user can access billing information. For information about how to disable this switch for an account, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html\">Granting Access to Your Billing Information and Tools</a>.</p> </note>"
    },
    "CreateOrganization": {
      "name": "CreateOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateOrganizationRequest"
      },
      "output": {
        "shape": "CreateOrganizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AlreadyInOrganizationException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "AccessDeniedForDependencyException"
        }
      ],
      "documentation": "<p>Creates an AWS organization. The account whose user is calling the <code>CreateOrganization</code> operation automatically becomes the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account\">master account</a> of the new organization.</p> <p>This operation must be called using credentials from the account that is to become the new organization's master account. The principal must also have the relevant IAM permissions.</p> <p>By default (or if you set the <code>FeatureSet</code> parameter to <code>ALL</code>), the new organization is created with all features enabled and service control policies automatically enabled in the root. If you instead choose to create the organization supporting only the consolidated billing features by setting the <code>FeatureSet</code> parameter to <code>CONSOLIDATED_BILLING\"</code>, no policy types are enabled by default, and you can't use organization policies</p>"
    },
    "CreateOrganizationalUnit": {
      "name": "CreateOrganizationalUnit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateOrganizationalUnitRequest"
      },
      "output": {
        "shape": "CreateOrganizationalUnitResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "DuplicateOrganizationalUnitException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ParentNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Creates an organizational unit (OU) within a root or parent OU. An OU is a container for accounts that enables you to organize your accounts to apply policies according to your business requirements. The number of levels deep that you can nest OUs is dependent upon the policy types enabled for that root. For service control policies, the limit is five. </p> <p>For more information about OUs, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html\">Managing Organizational Units</a> in the <i>AWS Organizations User Guide.</i> </p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "CreatePolicy": {
      "name": "CreatePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePolicyRequest"
      },
      "output": {
        "shape": "CreatePolicyResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "DuplicatePolicyException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "PolicyTypeNotAvailableForOrganizationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual AWS account.</p> <p>For more information about policies and their use, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html\">Managing Organization Policies</a>.</p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "DeclineHandshake": {
      "name": "DeclineHandshake",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeclineHandshakeRequest"
      },
      "output": {
        "shape": "DeclineHandshakeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "HandshakeNotFoundException"
        },
        {
          "shape": "InvalidHandshakeTransitionException"
        },
        {
          "shape": "HandshakeAlreadyInStateException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Declines a handshake request. This sets the handshake state to <code>DECLINED</code> and effectively deactivates the request.</p> <p>This operation can be called only from the account that received the handshake. The originator of the handshake can use <a>CancelHandshake</a> instead. The originator can't reactivate a declined request, but can reinitiate the process with a new handshake request.</p> <p>After you decline a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that, it's deleted.</p>"
    },
    "DeleteOrganization": {
      "name": "DeleteOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OrganizationNotEmptyException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes the organization. You can delete an organization only by using credentials from the master account. The organization must be empty of member accounts.</p>"
    },
    "DeleteOrganizationalUnit": {
      "name": "DeleteOrganizationalUnit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteOrganizationalUnitRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OrganizationalUnitNotEmptyException"
        },
        {
          "shape": "OrganizationalUnitNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Deletes an organizational unit (OU) from a root or another OU. You must first remove all accounts and child OUs from the OU that you want to delete.</p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "DeletePolicy": {
      "name": "DeletePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePolicyRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyInUseException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Deletes the specified policy from your organization. Before you perform this operation, you must first detach the policy from all organizational units (OUs), roots, and accounts.</p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "DeregisterDelegatedAdministrator": {
      "name": "DeregisterDelegatedAdministrator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeregisterDelegatedAdministratorRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AccountNotFoundException"
        },
        {
          "shape": "AccountNotRegisteredException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Removes the specified member AWS account as a delegated administrator for the specified AWS service.</p> <important> <p>Deregistering a delegated administrator can have unintended impacts on the functionality of the enabled AWS service. See the documentation for the enabled service before you deregister a delegated administrator so that you understand any potential impacts.</p> </important> <p>You can run this action only for AWS services that support this feature. For a current list of services that support it, see the column <i>Supports Delegated Administrator</i> in the table at <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html\">AWS Services that you can use with AWS Organizations</a> in the <i>AWS Organizations User Guide.</i> </p> <p>This operation can be called only from the organization's master account.</p>"
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
        "shape": "DescribeAccountResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AccountNotFoundException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves AWS Organizations-related information about the specified account.</p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "DescribeCreateAccountStatus": {
      "name": "DescribeCreateAccountStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeCreateAccountStatusRequest"
      },
      "output": {
        "shape": "DescribeCreateAccountStatusResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "CreateAccountStatusNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Retrieves the current status of an asynchronous request to create an account.</p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "DescribeEffectivePolicy": {
      "name": "DescribeEffectivePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeEffectivePolicyRequest"
      },
      "output": {
        "shape": "DescribeEffectivePolicyResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "EffectivePolicyNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Returns the contents of the effective policy for specified policy type and account. The effective policy is the aggregation of any policies of the specified type that the account inherits, plus any policy of that type that is directly attached to the account. </p> <p>This operation applies only to policy types <i>other</i> than service control policies (SCPs).</p> <p>For more information about policy inheritance, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies-inheritance.html\">How Policy Inheritance Works</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "DescribeHandshake": {
      "name": "DescribeHandshake",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeHandshakeRequest"
      },
      "output": {
        "shape": "DescribeHandshakeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "HandshakeNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves information about a previously requested handshake. The handshake ID comes from the response to the original <a>InviteAccountToOrganization</a> operation that generated the handshake.</p> <p>You can access handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>, or <code>CANCELED</code> for only 30 days after they change to that state. They're then deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>"
    },
    "DescribeOrganization": {
      "name": "DescribeOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "DescribeOrganizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves information about the organization that the user's account belongs to.</p> <p>This operation can be called from any account in the organization.</p> <note> <p>Even if a policy type is shown as available in the organization, you can disable it separately at the root level with <a>DisablePolicyType</a>. Use <a>ListRoots</a> to see the status of policy types for a specified root.</p> </note>"
    },
    "DescribeOrganizationalUnit": {
      "name": "DescribeOrganizationalUnit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribeOrganizationalUnitRequest"
      },
      "output": {
        "shape": "DescribeOrganizationalUnitResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OrganizationalUnitNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Retrieves information about an organizational unit (OU).</p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "DescribePolicy": {
      "name": "DescribePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DescribePolicyRequest"
      },
      "output": {
        "shape": "DescribePolicyResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Retrieves information about a policy.</p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "DetachPolicy": {
      "name": "DetachPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetachPolicyRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyNotAttachedException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        },
        {
          "shape": "PolicyChangesInProgressException"
        }
      ],
      "documentation": "<p>Detaches a policy from a target root, organizational unit (OU), or account. </p> <important> <p>If the policy being detached is a service control policy (SCP), the changes to permissions for AWS Identity and Access Management (IAM) users and roles in affected accounts are immediate.</p> </important> <p>Every root, OU, and account must have at least one SCP attached. If you want to replace the default <code>FullAWSAccess</code> policy with an SCP that limits the permissions that can be delegated, you must attach the replacement SCP before you can remove the default SCP. This is the authorization strategy of an \"<a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_allowlist\">allow list</a>\". If you instead attach a second SCP and leave the <code>FullAWSAccess</code> SCP still attached, and specify <code>\"Effect\": \"Deny\"</code> in the second SCP to override the <code>\"Effect\": \"Allow\"</code> in the <code>FullAWSAccess</code> policy (or any other attached SCP), you're using the authorization strategy of a \"<a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_denylist\">deny list</a>\".</p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "DisableAWSServiceAccess": {
      "name": "DisableAWSServiceAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisableAWSServiceAccessRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Disables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you disable integration, the specified service no longer can create a <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html\">service-linked role</a> in <i>new</i> accounts in your organization. This means the service can't perform operations on your behalf on any new accounts in your organization. The service can still perform operations in older accounts until the service completes its clean-up from AWS Organizations.</p> <p/> <important> <p>We recommend that you disable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the other service is aware that it can clean up any resources that are required only for the integration. How the service cleans up its resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>After you perform the <code>DisableAWSServiceAccess</code> operation, the specified service can no longer perform operations in your organization's accounts unless the operations are explicitly permitted by the IAM policies that are attached to your roles.</p> <p>For more information about integrating other services with AWS Organizations, including the list of services that work with Organizations, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html\">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide.</i> </p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "DisablePolicyType": {
      "name": "DisablePolicyType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DisablePolicyTypeRequest"
      },
      "output": {
        "shape": "DisablePolicyTypeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyTypeNotEnabledException"
        },
        {
          "shape": "RootNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        },
        {
          "shape": "PolicyChangesInProgressException"
        }
      ],
      "documentation": "<p>Disables an organizational policy type in a root. A policy of a certain type can be attached to entities in a root only if that type is enabled in the root. After you perform this operation, you no longer can attach policies of the specified type to that root or to any organizational unit (OU) or account in that root. You can undo this by using the <a>EnablePolicyType</a> operation.</p> <p>This is an asynchronous request that AWS performs in the background. If you disable a policy type for a root, it still appears enabled for the organization if <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">all features</a> are enabled for the organization. AWS recommends that you first use <a>ListRoots</a> to see the status of policy types for a specified root, and then use this operation. </p> <p>This operation can be called only from the organization's master account.</p> <p> To view the status of available policy types in the organization, use <a>DescribeOrganization</a>.</p>"
    },
    "EnableAWSServiceAccess": {
      "name": "EnableAWSServiceAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableAWSServiceAccessRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Enables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you enable integration, you allow the specified service to create a <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html\">service-linked role</a> in all the accounts in your organization. This allows the service to perform operations on your behalf in your organization and its accounts.</p> <important> <p>We recommend that you enable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the service is aware that it can create the resources that are required for the integration. How the service creates those resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>For more information about enabling services to integrate with AWS Organizations, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html\">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide.</i> </p> <p>This operation can be called only from the organization's master account and only if the organization has <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">enabled all features</a>.</p>"
    },
    "EnableAllFeatures": {
      "name": "EnableAllFeatures",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableAllFeaturesRequest"
      },
      "output": {
        "shape": "EnableAllFeaturesResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "HandshakeConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Enables all features in an organization. This enables the use of organization policies that can restrict the services and actions that can be called in each account. Until you enable all features, you have access only to consolidated billing, and you can't use any of the advanced account administration features that AWS Organizations supports. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide.</i> </p> <important> <p>This operation is required only for organizations that were created explicitly with only the consolidated billing features enabled. Calling this operation sends a handshake to every invited account in the organization. The feature set change can be finalized and the additional features enabled only after all administrators in the invited accounts approve the change by accepting the handshake.</p> </important> <p>After you enable all features, you can separately enable or disable individual policy types in a root using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. To see the status of policy types in a root, use <a>ListRoots</a>.</p> <p>After all invited member accounts accept the handshake, you finalize the feature set change by accepting the handshake that contains <code>\"Action\": \"ENABLE_ALL_FEATURES\"</code>. This completes the change.</p> <p>After you enable all features in your organization, the master account in the organization can apply policies on all member accounts. These policies can restrict what users and even administrators in those accounts can do. The master account can apply policies that prevent accounts from leaving the organization. Ensure that your account administrators are aware of this.</p> <p>This operation can be called only from the organization's master account. </p>"
    },
    "EnablePolicyType": {
      "name": "EnablePolicyType",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnablePolicyTypeRequest"
      },
      "output": {
        "shape": "EnablePolicyTypeResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyTypeAlreadyEnabledException"
        },
        {
          "shape": "RootNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "PolicyTypeNotAvailableForOrganizationException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        },
        {
          "shape": "PolicyChangesInProgressException"
        }
      ],
      "documentation": "<p>Enables a policy type in a root. After you enable a policy type in a root, you can attach policies of that type to the root, any organizational unit (OU), or account in that root. You can undo this by using the <a>DisablePolicyType</a> operation.</p> <p>This is an asynchronous request that AWS performs in the background. AWS recommends that you first use <a>ListRoots</a> to see the status of policy types for a specified root, and then use this operation. </p> <p>This operation can be called only from the organization's master account.</p> <p>You can enable a policy type in a root only if that policy type is available in the organization. To view the status of available policy types in the organization, use <a>DescribeOrganization</a>.</p>"
    },
    "InviteAccountToOrganization": {
      "name": "InviteAccountToOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "InviteAccountToOrganizationRequest"
      },
      "output": {
        "shape": "InviteAccountToOrganizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "AccountOwnerNotVerifiedException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "HandshakeConstraintViolationException"
        },
        {
          "shape": "DuplicateHandshakeException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "FinalizingOrganizationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Sends an invitation to another account to join your organization as a member account. AWS Organizations sends email on your behalf to the email address that is associated with the other account's owner. The invitation is implemented as a <a>Handshake</a> whose details are in the response.</p> <important> <ul> <li> <p>You can invite AWS accounts only from the same seller as the master account. For example, if your organization's master account was created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in India, you can invite only other AISPL accounts to your organization. You can't combine accounts from AISPL and AWS or from any other AWS seller. For more information, see <a href=\"http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html\">Consolidated Billing in India</a>.</p> </li> <li> <p>If you receive an exception that indicates that you exceeded your account limits for the organization or that the operation failed because your organization is still initializing, wait one hour and then try again. If the error persists after an hour, contact <a href=\"https://console.aws.amazon.com/support/home#/\">AWS Support</a>.</p> </li> </ul> </important> <p>This operation can be called only from the organization's master account.</p>"
    },
    "LeaveOrganization": {
      "name": "LeaveOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AccountNotFoundException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "MasterCannotLeaveOrganizationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Removes a member account from its parent organization. This version of the operation is performed by the account that wants to leave. To remove a member account as a user in the master account, use <a>RemoveAccountFromOrganization</a> instead.</p> <p>This operation can be called only from a member account in the organization.</p> <important> <ul> <li> <p>The master account in an organization with all features enabled can set service control policies (SCPs) that can restrict what administrators of member accounts can do. This includes preventing them from successfully calling <code>LeaveOrganization</code> and leaving the organization. </p> </li> <li> <p>You can leave an organization as a member account only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For each account that you want to make standalone, you must perform the following steps. If any of the steps are already completed for this account, that step doesn't appear.</p> <ul> <li> <p>Choose a support plan</p> </li> <li> <p>Provide and verify the required contact information</p> </li> <li> <p>Provide a current payment method</p> </li> </ul> <p>AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account isn't attached to an organization. Follow the steps at <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info\"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide.</i> </p> </li> <li> <p>You can leave an organization only after you enable IAM user access to billing in your account. For more information, see <a href=\"http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate\">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide.</i> </p> </li> </ul> </important>"
    },
    "ListAWSServiceAccessForOrganization": {
      "name": "ListAWSServiceAccessForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAWSServiceAccessForOrganizationRequest"
      },
      "output": {
        "shape": "ListAWSServiceAccessForOrganizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts.</p> <p>For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html\">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide.</i> </p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListAccounts": {
      "name": "ListAccounts",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccountsRequest"
      },
      "output": {
        "shape": "ListAccountsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists all the accounts in the organization. To request only the accounts in a specified root or organizational unit (OU), use the <a>ListAccountsForParent</a> operation instead.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListAccountsForParent": {
      "name": "ListAccountsForParent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccountsForParentRequest"
      },
      "output": {
        "shape": "ListAccountsForParentResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ParentNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that aren't in any OU. If you specify an OU, you get a list of all the accounts in only that OU and not in any child OUs. To get a list of all accounts in the organization, use the <a>ListAccounts</a> operation.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListChildren": {
      "name": "ListChildren",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListChildrenRequest"
      },
      "output": {
        "shape": "ListChildrenResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ParentNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists all of the organizational units (OUs) or accounts that are contained in the specified parent OU or root. This operation, along with <a>ListParents</a> enables you to traverse the tree structure that makes up this root.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListCreateAccountStatus": {
      "name": "ListCreateAccountStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListCreateAccountStatusRequest"
      },
      "output": {
        "shape": "ListCreateAccountStatusResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Lists the account creation requests that match the specified status that is currently being tracked for the organization.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListDelegatedAdministrators": {
      "name": "ListDelegatedAdministrators",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDelegatedAdministratorsRequest"
      },
      "output": {
        "shape": "ListDelegatedAdministratorsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Lists the AWS accounts that are designated as delegated administrators in this organization.</p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListDelegatedServicesForAccount": {
      "name": "ListDelegatedServicesForAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListDelegatedServicesForAccountRequest"
      },
      "output": {
        "shape": "ListDelegatedServicesForAccountResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AccountNotFoundException"
        },
        {
          "shape": "AccountNotRegisteredException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>List the AWS services for which the specified account is a delegated administrator. </p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListHandshakesForAccount": {
      "name": "ListHandshakesForAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListHandshakesForAccountRequest"
      },
      "output": {
        "shape": "ListHandshakesForAccountResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists the current handshakes that are associated with the account of the requesting user.</p> <p>Handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>, or <code>CANCELED</code> appear in the results of this API for only 30 days after changing to that state. After that, they're deleted and no longer accessible.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called from any account in the organization.</p>"
    },
    "ListHandshakesForOrganization": {
      "name": "ListHandshakesForOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListHandshakesForOrganizationRequest"
      },
      "output": {
        "shape": "ListHandshakesForOrganizationResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists the handshakes that are associated with the organization that the requesting user is part of. The <code>ListHandshakesForOrganization</code> operation returns a list of handshake structures. Each structure contains details and status about a handshake.</p> <p>Handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>, or <code>CANCELED</code> appear in the results of this API for only 30 days after changing to that state. After that, they're deleted and no longer accessible.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListOrganizationalUnitsForParent": {
      "name": "ListOrganizationalUnitsForParent",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListOrganizationalUnitsForParentRequest"
      },
      "output": {
        "shape": "ListOrganizationalUnitsForParentResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ParentNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists the organizational units (OUs) in a parent organizational unit or root.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListParents": {
      "name": "ListParents",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListParentsRequest"
      },
      "output": {
        "shape": "ListParentsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ChildNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with <a>ListChildren</a> enables you to traverse the tree structure that makes up this root.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p> <note> <p>In the current release, a child can have only a single parent. </p> </note>"
    },
    "ListPolicies": {
      "name": "ListPolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPoliciesRequest"
      },
      "output": {
        "shape": "ListPoliciesResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Retrieves the list of all policies in an organization of a specified type.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListPoliciesForTarget": {
      "name": "ListPoliciesForTarget",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPoliciesForTargetRequest"
      },
      "output": {
        "shape": "ListPoliciesForTargetResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListRoots": {
      "name": "ListRoots",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRootsRequest"
      },
      "output": {
        "shape": "ListRootsResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists the roots that are defined in the current organization.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p> <note> <p>Policy types can be enabled and disabled in roots. This is distinct from whether they're available in the organization. When you enable all features, you make policy types available for use in that organization. Individual policy types can then be enabled and disabled in a root. To see the availability of a policy type in an organization, use <a>DescribeOrganization</a>.</p> </note>"
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
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Lists tags for the specified resource. </p> <p>Currently, you can list tags on an account in AWS Organizations.</p> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "ListTargetsForPolicy": {
      "name": "ListTargetsForPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListTargetsForPolicyRequest"
      },
      "output": {
        "shape": "ListTargetsForPolicyResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Lists all the roots, organizational units (OUs), and accounts that the specified policy is attached to.</p> <note> <p>Always check the <code>NextToken</code> response parameter for a <code>null</code> value when calling a <code>List*</code> operation. These operations can occasionally return an empty set of results even when there are more results available. The <code>NextToken</code> response parameter value is <code>null</code> <i>only</i> when there are no more results to display.</p> </note> <p>This operation can be called only from the organization's master account or by a member account that is a delegated administrator for an AWS service.</p>"
    },
    "MoveAccount": {
      "name": "MoveAccount",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "MoveAccountRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "SourceParentNotFoundException"
        },
        {
          "shape": "DestinationParentNotFoundException"
        },
        {
          "shape": "DuplicateAccountException"
        },
        {
          "shape": "AccountNotFoundException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ServiceException"
        }
      ],
      "documentation": "<p>Moves an account from its current source parent root or organizational unit (OU) to the specified destination parent root or OU.</p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "RegisterDelegatedAdministrator": {
      "name": "RegisterDelegatedAdministrator",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RegisterDelegatedAdministratorRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AccountAlreadyRegisteredException"
        },
        {
          "shape": "AccountNotFoundException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        }
      ],
      "documentation": "<p>Enables the specified member account to administer the Organizations features of the specified AWS service. It grants read-only access to AWS Organizations service data. The account still requires IAM permissions to access and administer the AWS service.</p> <p>You can run this action only for AWS services that support this feature. For a current list of services that support it, see the column <i>Supports Delegated Administrator</i> in the table at <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrated-services-list.html\">AWS Services that you can use with AWS Organizations</a> in the <i>AWS Organizations User Guide.</i> </p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "RemoveAccountFromOrganization": {
      "name": "RemoveAccountFromOrganization",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveAccountFromOrganizationRequest"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AccountNotFoundException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "MasterCannotLeaveOrganizationException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Removes the specified account from the organization.</p> <p>The removed account becomes a standalone account that isn't a member of any organization. It's no longer subject to any policies and is responsible for its own bill payments. The organization's master account is no longer charged for any expenses accrued by the member account after it's removed from the organization.</p> <p>This operation can be called only from the organization's master account. Member accounts can remove themselves with <a>LeaveOrganization</a> instead.</p> <important> <p>You can remove an account from your organization only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For an account that you want to make standalone, you must choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account isn't attached to an organization. To remove an account that doesn't yet have this information, you must sign in as the member account and follow the steps at <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info\"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide.</i> </p> </important>"
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
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Adds one or more tags to the specified resource.</p> <p>Currently, you can tag and untag accounts in AWS Organizations.</p> <p>This operation can be called only from the organization's master account.</p>"
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
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "TargetNotFoundException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Removes a tag from the specified resource. </p> <p>Currently, you can tag and untag accounts in AWS Organizations.</p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "UpdateOrganizationalUnit": {
      "name": "UpdateOrganizationalUnit",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateOrganizationalUnitRequest"
      },
      "output": {
        "shape": "UpdateOrganizationalUnitResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "DuplicateOrganizationalUnitException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "OrganizationalUnitNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        }
      ],
      "documentation": "<p>Renames the specified organizational unit (OU). The ID and ARN don't change. The child OUs and accounts remain in place, and any attached policies of the OU remain attached. </p> <p>This operation can be called only from the organization's master account.</p>"
    },
    "UpdatePolicy": {
      "name": "UpdatePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdatePolicyRequest"
      },
      "output": {
        "shape": "UpdatePolicyResponse"
      },
      "errors": [
        {
          "shape": "AccessDeniedException"
        },
        {
          "shape": "AWSOrganizationsNotInUseException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ConstraintViolationException"
        },
        {
          "shape": "DuplicatePolicyException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "PolicyNotFoundException"
        },
        {
          "shape": "ServiceException"
        },
        {
          "shape": "TooManyRequestsException"
        },
        {
          "shape": "UnsupportedAPIEndpointException"
        },
        {
          "shape": "PolicyChangesInProgressException"
        }
      ],
      "documentation": "<p>Updates an existing policy with a new name, description, or content. If you don't supply any parameter, that value remains unchanged. You can't change a policy's type.</p> <p>This operation can be called only from the organization's master account.</p>"
    }
  },
  "shapes": {
    "AcceptHandshakeRequest": {
      "type": "structure",
      "required": [
        "HandshakeId"
      ],
      "members": {
        "HandshakeId": {
          "shape": "HandshakeId",
          "documentation": "<p>The unique identifier (ID) of the handshake that you want to accept.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for handshake ID string requires \"h-\" followed by from 8 to 32 lowercase letters or digits.</p>"
        }
      }
    },
    "AcceptHandshakeResponse": {
      "type": "structure",
      "members": {
        "Handshake": {
          "shape": "Handshake",
          "documentation": "<p>A structure that contains details about the accepted handshake.</p>"
        }
      }
    },
    "Account": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "AccountId",
          "documentation": "<p>The unique identifier (ID) of the account.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12 digits.</p>"
        },
        "Arn": {
          "shape": "AccountArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the account.</p> <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email address associated with the AWS account.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for this parameter is a string of characters that represents a standard internet email address.</p>"
        },
        "Name": {
          "shape": "AccountName",
          "documentation": "<p>The friendly name of the account.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>"
        },
        "Status": {
          "shape": "AccountStatus",
          "documentation": "<p>The status of the account in the organization.</p>"
        },
        "JoinedMethod": {
          "shape": "AccountJoinedMethod",
          "documentation": "<p>The method by which the account joined the organization.</p>"
        },
        "JoinedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date the account became a part of the organization.</p>"
        }
      },
      "documentation": "<p>Contains information about an AWS account that is a member of an organization.</p>"
    },
    "AccountArn": {
      "type": "string",
      "pattern": "^arn:aws:organizations::\\d{12}:account\\/o-[a-z0-9]{10,32}\\/\\d{12}"
    },
    "AccountId": {
      "type": "string",
      "max": 12,
      "pattern": "^\\d{12}$"
    },
    "AccountJoinedMethod": {
      "type": "string",
      "enum": [
        "INVITED",
        "CREATED"
      ]
    },
    "AccountName": {
      "type": "string",
      "max": 50,
      "min": 1,
      "pattern": "[\\u0020-\\u007E]+",
      "sensitive": true
    },
    "AccountStatus": {
      "type": "string",
      "enum": [
        "ACTIVE",
        "SUSPENDED"
      ]
    },
    "Accounts": {
      "type": "list",
      "member": {
        "shape": "Account"
      }
    },
    "ActionType": {
      "type": "string",
      "enum": [
        "INVITE",
        "ENABLE_ALL_FEATURES",
        "APPROVE_ALL_FEATURES",
        "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
      ]
    },
    "AttachPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyId",
        "TargetId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The unique identifier (ID) of the policy that you want to attach to the target. You can get the ID for the policy by calling the <a>ListPolicies</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>"
        },
        "TargetId": {
          "shape": "PolicyTargetId",
          "documentation": "<p>The unique identifier (ID) of the root, OU, or account that you want to attach the policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a> operations.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p> <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or digits.</p> </li> <li> <p> <b>Account</b> - A string that consists of exactly 12 digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        }
      }
    },
    "AwsManagedPolicy": {
      "type": "boolean"
    },
    "CancelHandshakeRequest": {
      "type": "structure",
      "required": [
        "HandshakeId"
      ],
      "members": {
        "HandshakeId": {
          "shape": "HandshakeId",
          "documentation": "<p>The unique identifier (ID) of the handshake that you want to cancel. You can get the ID from the <a>ListHandshakesForOrganization</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for handshake ID string requires \"h-\" followed by from 8 to 32 lowercase letters or digits.</p>"
        }
      }
    },
    "CancelHandshakeResponse": {
      "type": "structure",
      "members": {
        "Handshake": {
          "shape": "Handshake",
          "documentation": "<p>A structure that contains details about the handshake that you canceled.</p>"
        }
      }
    },
    "Child": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ChildId",
          "documentation": "<p>The unique identifier (ID) of this child entity.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a child ID string requires one of the following:</p> <ul> <li> <p>Account: A string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): A string that begins with \"ou-\" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>"
        },
        "Type": {
          "shape": "ChildType",
          "documentation": "<p>The type of this child entity.</p>"
        }
      },
      "documentation": "<p>Contains a list of child entities, either OUs or accounts.</p>"
    },
    "ChildId": {
      "type": "string",
      "max": 100,
      "pattern": "^(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"
    },
    "ChildType": {
      "type": "string",
      "enum": [
        "ACCOUNT",
        "ORGANIZATIONAL_UNIT"
      ]
    },
    "Children": {
      "type": "list",
      "member": {
        "shape": "Child"
      }
    },
    "CreateAccountFailureReason": {
      "type": "string",
      "enum": [
        "ACCOUNT_LIMIT_EXCEEDED",
        "EMAIL_ALREADY_EXISTS",
        "INVALID_ADDRESS",
        "INVALID_EMAIL",
        "CONCURRENT_ACCOUNT_MODIFICATION",
        "INTERNAL_FAILURE",
        "GOVCLOUD_ACCOUNT_ALREADY_EXISTS",
        "MISSING_BUSINESS_VALIDATION",
        "MISSING_PAYMENT_INSTRUMENT"
      ]
    },
    "CreateAccountRequest": {
      "type": "structure",
      "required": [
        "Email",
        "AccountName"
      ],
      "members": {
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account. You must use a valid email address to complete account creation. You can't access the root user of the account or remove an account that was created with an invalid email address.</p>"
        },
        "AccountName": {
          "shape": "AccountName",
          "documentation": "<p>The friendly name of the member account.</p>"
        },
        "RoleName": {
          "shape": "RoleName",
          "documentation": "<p>(Optional)</p> <p>The name of an IAM role that AWS Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account.</p> <p>If you don't specify this parameter, the role name defaults to <code>OrganizationAccountAccessRole</code>.</p> <p>For more information about how to use this role to access the member account, see the following links:</p> <ul> <li> <p> <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role\">Accessing and Administering the Member Accounts in Your Organization</a> in the <i>AWS Organizations User Guide</i> </p> </li> <li> <p>Steps 2 and 3 in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html\">Tutorial: Delegate Access Across AWS Accounts Using IAM Roles</a> in the <i>IAM User Guide</i> </p> </li> </ul> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter. The pattern can include uppercase letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>"
        },
        "IamUserAccessToBilling": {
          "shape": "IAMUserAccessToBilling",
          "documentation": "<p>If set to <code>ALLOW</code>, the new account enables IAM users to access account billing information <i>if</i> they have the required permissions. If set to <code>DENY</code>, only the root user of the new account can access account billing information. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate\">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and IAM users and roles with the required permissions can access billing information for the new account.</p>"
        }
      }
    },
    "CreateAccountRequestId": {
      "type": "string",
      "max": 36,
      "pattern": "^car-[a-z0-9]{8,32}$"
    },
    "CreateAccountResponse": {
      "type": "structure",
      "members": {
        "CreateAccountStatus": {
          "shape": "CreateAccountStatus",
          "documentation": "<p>A structure that contains details about the request to create an account. This response structure might not be fully populated when you first receive it because account creation is an asynchronous process. You can pass the returned <code>CreateAccountStatus</code> ID as a parameter to <a>DescribeCreateAccountStatus</a> to get status about the progress of the request at later times. You can also check the AWS CloudTrail log for the <code>CreateAccountResult</code> event. For more information, see <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html\">Monitoring the Activity in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>"
        }
      }
    },
    "CreateAccountState": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "SUCCEEDED",
        "FAILED"
      ]
    },
    "CreateAccountStates": {
      "type": "list",
      "member": {
        "shape": "CreateAccountState"
      }
    },
    "CreateAccountStatus": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "CreateAccountRequestId",
          "documentation": "<p>The unique identifier (ID) that references this request. You get this value from the response of the initial <a>CreateAccount</a> request to create the account.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a create account request ID string requires \"car-\" followed by from 8 to 32 lower-case letters or digits.</p>"
        },
        "AccountName": {
          "shape": "AccountName",
          "documentation": "<p>The account name given to the account when it was created.</p>"
        },
        "State": {
          "shape": "CreateAccountState",
          "documentation": "<p>The status of the request.</p>"
        },
        "RequestedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the request was made for the account creation.</p>"
        },
        "CompletedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the account was created and the request completed.</p>"
        },
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>If the account was created successfully, the unique identifier (ID) of the new account.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12 digits.</p>"
        },
        "GovCloudAccountId": {
          "shape": "AccountId",
          "documentation": "<p>If the account was created successfully, the unique identifier (ID) of the new account in the AWS GovCloud (US) Region.</p>"
        },
        "FailureReason": {
          "shape": "CreateAccountFailureReason",
          "documentation": "<p>If the request failed, a description of the reason for the failure.</p> <ul> <li> <p>ACCOUNT_LIMIT_EXCEEDED: The account could not be created because you have reached the limit on the number of accounts in your organization.</p> </li> <li> <p>CONCURRENT_ACCOUNT_MODIFICATION: You already submitted a request with the same information.</p> </li> <li> <p>EMAIL_ALREADY_EXISTS: The account could not be created because another AWS account with that email address already exists.</p> </li> <li> <p>GOVCLOUD_ACCOUNT_ALREADY_EXISTS: The account in the AWS GovCloud (US) Region could not be created because this Region already includes an account with that email address.</p> </li> <li> <p>INVALID_ADDRESS: The account could not be created because the address you provided is not valid.</p> </li> <li> <p>INVALID_EMAIL: The account could not be created because the email address you provided is not valid.</p> </li> <li> <p>INTERNAL_FAILURE: The account could not be created because of an internal failure. Try again later. If the problem persists, contact Customer Support.</p> </li> <li> <p>MISSING_BUSINESS_VALIDATION: The AWS account that owns your organization has not received Business Validation.</p> </li> <li> <p> MISSING_PAYMENT_INSTRUMENT: You must configure the master account with a valid payment method, such as a credit card.</p> </li> </ul>"
        }
      },
      "documentation": "<p>Contains the status about a <a>CreateAccount</a> or <a>CreateGovCloudAccount</a> request to create an AWS account or an AWS GovCloud (US) account in an organization.</p>"
    },
    "CreateAccountStatuses": {
      "type": "list",
      "member": {
        "shape": "CreateAccountStatus"
      }
    },
    "CreateGovCloudAccountRequest": {
      "type": "structure",
      "required": [
        "Email",
        "AccountName"
      ],
      "members": {
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email address of the owner to assign to the new member account in the commercial Region. This email address must not already be associated with another AWS account. You must use a valid email address to complete account creation. You can't access the root user of the account or remove an account that was created with an invalid email address. Like all request parameters for <code>CreateGovCloudAccount</code>, the request for the email address for the AWS GovCloud (US) account originates from the commercial Region, not from the AWS GovCloud (US) Region.</p>"
        },
        "AccountName": {
          "shape": "AccountName",
          "documentation": "<p>The friendly name of the member account.</p>"
        },
        "RoleName": {
          "shape": "RoleName",
          "documentation": "<p>(Optional)</p> <p>The name of an IAM role that AWS Organizations automatically preconfigures in the new member accounts in both the AWS GovCloud (US) Region and in the commercial Region. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account.</p> <p>If you don't specify this parameter, the role name defaults to <code>OrganizationAccountAccessRole</code>.</p> <p>For more information about how to use this role to access the member account, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role\">Accessing and Administering the Member Accounts in Your Organization</a> in the <i>AWS Organizations User Guide</i> and steps 2 and 3 in <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html\">Tutorial: Delegate Access Across AWS Accounts Using IAM Roles</a> in the <i>IAM User Guide.</i> </p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter. The pattern can include uppercase letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>"
        },
        "IamUserAccessToBilling": {
          "shape": "IAMUserAccessToBilling",
          "documentation": "<p>If set to <code>ALLOW</code>, the new linked account in the commercial Region enables IAM users to access account billing information <i>if</i> they have the required permissions. If set to <code>DENY</code>, only the root user of the new account can access account billing information. For more information, see <a href=\"https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate\">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide.</i> </p> <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and IAM users and roles with the required permissions can access billing information for the new account.</p>"
        }
      }
    },
    "CreateGovCloudAccountResponse": {
      "type": "structure",
      "members": {
        "CreateAccountStatus": {
          "shape": "CreateAccountStatus"
        }
      }
    },
    "CreateOrganizationRequest": {
      "type": "structure",
      "members": {
        "FeatureSet": {
          "shape": "OrganizationFeatureSet",
          "documentation": "<p>Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.</p> <ul> <li> <p> <code>CONSOLIDATED_BILLING</code>: All member accounts have their bills consolidated to and paid by the master account. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only\">Consolidated billing</a> in the <i>AWS Organizations User Guide.</i> </p> <p> The consolidated billing feature subset isn't available for organizations in the AWS GovCloud (US) Region.</p> </li> <li> <p> <code>ALL</code>: In addition to all the features supported by the consolidated billing feature set, the master account can also apply any policy type to any member account in the organization. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all\">All features</a> in the <i>AWS Organizations User Guide.</i> </p> </li> </ul>"
        }
      }
    },
    "CreateOrganizationResponse": {
      "type": "structure",
      "members": {
        "Organization": {
          "shape": "Organization",
          "documentation": "<p>A structure that contains details about the newly created organization.</p>"
        }
      }
    },
    "CreateOrganizationalUnitRequest": {
      "type": "structure",
      "required": [
        "ParentId",
        "Name"
      ],
      "members": {
        "ParentId": {
          "shape": "ParentId",
          "documentation": "<p>The unique identifier (ID) of the parent root or OU that you want to create the new OU in.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p> <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        },
        "Name": {
          "shape": "OrganizationalUnitName",
          "documentation": "<p>The friendly name to assign to the new OU.</p>"
        }
      }
    },
    "CreateOrganizationalUnitResponse": {
      "type": "structure",
      "members": {
        "OrganizationalUnit": {
          "shape": "OrganizationalUnit",
          "documentation": "<p>A structure that contains details about the newly created OU.</p>"
        }
      }
    },
    "CreatePolicyRequest": {
      "type": "structure",
      "required": [
        "Content",
        "Description",
        "Name",
        "Type"
      ],
      "members": {
        "Content": {
          "shape": "PolicyContent",
          "documentation": "<p>The policy text content to add to the new policy. The text that you supply must adhere to the rules of the policy type you specify in the <code>Type</code> parameter.</p>"
        },
        "Description": {
          "shape": "PolicyDescription",
          "documentation": "<p>An optional description to assign to the policy.</p>"
        },
        "Name": {
          "shape": "PolicyName",
          "documentation": "<p>The friendly name to assign to the policy.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>"
        },
        "Type": {
          "shape": "PolicyType",
          "documentation": "<p>The type of policy to create. You can specify one of the following values:</p> <ul> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a> </p> </li> </ul>"
        }
      }
    },
    "CreatePolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>A structure that contains details about the newly created policy.</p>"
        }
      }
    },
    "DeclineHandshakeRequest": {
      "type": "structure",
      "required": [
        "HandshakeId"
      ],
      "members": {
        "HandshakeId": {
          "shape": "HandshakeId",
          "documentation": "<p>The unique identifier (ID) of the handshake that you want to decline. You can get the ID from the <a>ListHandshakesForAccount</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for handshake ID string requires \"h-\" followed by from 8 to 32 lowercase letters or digits.</p>"
        }
      }
    },
    "DeclineHandshakeResponse": {
      "type": "structure",
      "members": {
        "Handshake": {
          "shape": "Handshake",
          "documentation": "<p>A structure that contains details about the declined handshake. The state is updated to show the value <code>DECLINED</code>.</p>"
        }
      }
    },
    "DelegatedAdministrator": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "AccountId",
          "documentation": "<p>The unique identifier (ID) of the delegated administrator's account.</p>"
        },
        "Arn": {
          "shape": "AccountArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the delegated administrator's account.</p>"
        },
        "Email": {
          "shape": "Email",
          "documentation": "<p>The email address that is associated with the delegated administrator's AWS account.</p>"
        },
        "Name": {
          "shape": "AccountName",
          "documentation": "<p>The friendly name of the delegated administrator's account.</p>"
        },
        "Status": {
          "shape": "AccountStatus",
          "documentation": "<p>The status of the delegated administrator's account in the organization.</p>"
        },
        "JoinedMethod": {
          "shape": "AccountJoinedMethod",
          "documentation": "<p>The method by which the delegated administrator's account joined the organization.</p>"
        },
        "JoinedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date when the delegated administrator's account became a part of the organization.</p>"
        },
        "DelegationEnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date when the account was made a delegated administrator.</p>"
        }
      },
      "documentation": "<p>Contains information about the delegated administrator.</p>"
    },
    "DelegatedAdministrators": {
      "type": "list",
      "member": {
        "shape": "DelegatedAdministrator"
      }
    },
    "DelegatedService": {
      "type": "structure",
      "members": {
        "ServicePrincipal": {
          "shape": "ServicePrincipal",
          "documentation": "<p>The name of a service that can request an operation for the specified service. This is typically in the form of a URL, such as: <code> <i>servicename</i>.amazonaws.com</code>.</p>"
        },
        "DelegationEnabledDate": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the account became a delegated administrator for this service. </p>"
        }
      },
      "documentation": "<p>Contains information about the AWS service for which the account is a delegated administrator.</p>"
    },
    "DelegatedServices": {
      "type": "list",
      "member": {
        "shape": "DelegatedService"
      }
    },
    "DeleteOrganizationalUnitRequest": {
      "type": "structure",
      "required": [
        "OrganizationalUnitId"
      ],
      "members": {
        "OrganizationalUnitId": {
          "shape": "OrganizationalUnitId",
          "documentation": "<p>The unique identifier (ID) of the organizational unit that you want to delete. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>"
        }
      }
    },
    "DeletePolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The unique identifier (ID) of the policy that you want to delete. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>"
        }
      }
    },
    "DeregisterDelegatedAdministratorRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "ServicePrincipal"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID number of the member account in the organization that you want to deregister as a delegated administrator.</p>"
        },
        "ServicePrincipal": {
          "shape": "ServicePrincipal",
          "documentation": "<p>The service principal name of an AWS service for which the account is a delegated administrator.</p> <p>Delegated administrator privileges are revoked for only the specified AWS service from the member account. If the specified service is the only service for which the member account is a delegated administrator, the operation also revokes Organizations read action permissions.</p>"
        }
      }
    },
    "DescribeAccountRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The unique identifier (ID) of the AWS account that you want information about. You can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12 digits.</p>"
        }
      }
    },
    "DescribeAccountResponse": {
      "type": "structure",
      "members": {
        "Account": {
          "shape": "Account",
          "documentation": "<p>A structure that contains information about the requested account.</p>"
        }
      }
    },
    "DescribeCreateAccountStatusRequest": {
      "type": "structure",
      "required": [
        "CreateAccountRequestId"
      ],
      "members": {
        "CreateAccountRequestId": {
          "shape": "CreateAccountRequestId",
          "documentation": "<p>Specifies the <code>operationId</code> that uniquely identifies the request. You can get the ID from the response to an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a create account request ID string requires \"car-\" followed by from 8 to 32 lowercase letters or digits.</p>"
        }
      }
    },
    "DescribeCreateAccountStatusResponse": {
      "type": "structure",
      "members": {
        "CreateAccountStatus": {
          "shape": "CreateAccountStatus",
          "documentation": "<p>A structure that contains the current status of an account creation request.</p>"
        }
      }
    },
    "DescribeEffectivePolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyType"
      ],
      "members": {
        "PolicyType": {
          "shape": "EffectivePolicyType",
          "documentation": "<p>The type of policy that you want information about. You can specify one of the following values:</p> <ul> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a> </p> </li> </ul>"
        },
        "TargetId": {
          "shape": "PolicyTargetId",
          "documentation": "<p>When you're signed in as the master account, specify the ID of the account that you want details about. Specifying an organization root or organizational unit (OU) as the target is not supported. </p>"
        }
      }
    },
    "DescribeEffectivePolicyResponse": {
      "type": "structure",
      "members": {
        "EffectivePolicy": {
          "shape": "EffectivePolicy",
          "documentation": "<p>The contents of the effective policy.</p>"
        }
      }
    },
    "DescribeHandshakeRequest": {
      "type": "structure",
      "required": [
        "HandshakeId"
      ],
      "members": {
        "HandshakeId": {
          "shape": "HandshakeId",
          "documentation": "<p>The unique identifier (ID) of the handshake that you want information about. You can get the ID from the original call to <a>InviteAccountToOrganization</a>, or from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for handshake ID string requires \"h-\" followed by from 8 to 32 lowercase letters or digits.</p>"
        }
      }
    },
    "DescribeHandshakeResponse": {
      "type": "structure",
      "members": {
        "Handshake": {
          "shape": "Handshake",
          "documentation": "<p>A structure that contains information about the specified handshake.</p>"
        }
      }
    },
    "DescribeOrganizationResponse": {
      "type": "structure",
      "members": {
        "Organization": {
          "shape": "Organization",
          "documentation": "<p>A structure that contains information about the organization.</p> <important> <p>The <code>AvailablePolicyTypes</code> part of the response is deprecated, and you shouldn't use it in your apps. It doesn't include any policy type supported by Organizations other than SCPs. To determine which policy types are enabled in your organization, use the <code> <a>ListRoots</a> </code> operation.</p> </important>"
        }
      }
    },
    "DescribeOrganizationalUnitRequest": {
      "type": "structure",
      "required": [
        "OrganizationalUnitId"
      ],
      "members": {
        "OrganizationalUnitId": {
          "shape": "OrganizationalUnitId",
          "documentation": "<p>The unique identifier (ID) of the organizational unit that you want details about. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>"
        }
      }
    },
    "DescribeOrganizationalUnitResponse": {
      "type": "structure",
      "members": {
        "OrganizationalUnit": {
          "shape": "OrganizationalUnit",
          "documentation": "<p>A structure that contains details about the specified OU.</p>"
        }
      }
    },
    "DescribePolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The unique identifier (ID) of the policy that you want details about. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>"
        }
      }
    },
    "DescribePolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>A structure that contains details about the specified policy.</p>"
        }
      }
    },
    "DetachPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyId",
        "TargetId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The unique identifier (ID) of the policy you want to detach. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>"
        },
        "TargetId": {
          "shape": "PolicyTargetId",
          "documentation": "<p>The unique identifier (ID) of the root, OU, or account that you want to detach the policy from. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a> operations.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p> <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or digits.</p> </li> <li> <p> <b>Account</b> - A string that consists of exactly 12 digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        }
      }
    },
    "DisableAWSServiceAccessRequest": {
      "type": "structure",
      "required": [
        "ServicePrincipal"
      ],
      "members": {
        "ServicePrincipal": {
          "shape": "ServicePrincipal",
          "documentation": "<p>The service principal name of the AWS service for which you want to disable integration with your organization. This is typically in the form of a URL, such as <code> <i>service-abbreviation</i>.amazonaws.com</code>.</p>"
        }
      }
    },
    "DisablePolicyTypeRequest": {
      "type": "structure",
      "required": [
        "RootId",
        "PolicyType"
      ],
      "members": {
        "RootId": {
          "shape": "RootId",
          "documentation": "<p>The unique identifier (ID) of the root in which you want to disable a policy type. You can get the ID from the <a>ListRoots</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by from 4 to 32 lowercase letters or digits.</p>"
        },
        "PolicyType": {
          "shape": "PolicyType",
          "documentation": "<p>The policy type that you want to disable in this root. You can specify one of the following values:</p> <ul> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a> </p> </li> </ul>"
        }
      }
    },
    "DisablePolicyTypeResponse": {
      "type": "structure",
      "members": {
        "Root": {
          "shape": "Root",
          "documentation": "<p>A structure that shows the root with the updated list of enabled policy types.</p>"
        }
      }
    },
    "EffectivePolicy": {
      "type": "structure",
      "members": {
        "PolicyContent": {
          "shape": "PolicyContent",
          "documentation": "<p>The text content of the policy.</p>"
        },
        "LastUpdatedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The time of the last update to this policy.</p>"
        },
        "TargetId": {
          "shape": "PolicyTargetId",
          "documentation": "<p>The account ID of the policy target. </p>"
        },
        "PolicyType": {
          "shape": "EffectivePolicyType",
          "documentation": "<p>The policy type.</p>"
        }
      },
      "documentation": "<p>Contains rules to be applied to the affected accounts. The effective policy is the aggregation of any policies the account inherits, plus any policy directly attached to the account.</p>"
    },
    "EffectivePolicyType": {
      "type": "string",
      "enum": [
        "TAG_POLICY",
        "BACKUP_POLICY",
        "AISERVICES_OPT_OUT_POLICY"
      ]
    },
    "Email": {
      "type": "string",
      "max": 64,
      "min": 6,
      "pattern": "[^\\s@]+@[^\\s@]+\\.[^\\s@]+",
      "sensitive": true
    },
    "EnableAWSServiceAccessRequest": {
      "type": "structure",
      "required": [
        "ServicePrincipal"
      ],
      "members": {
        "ServicePrincipal": {
          "shape": "ServicePrincipal",
          "documentation": "<p>The service principal name of the AWS service for which you want to enable integration with your organization. This is typically in the form of a URL, such as <code> <i>service-abbreviation</i>.amazonaws.com</code>.</p>"
        }
      }
    },
    "EnableAllFeaturesRequest": {
      "type": "structure",
      "members": {}
    },
    "EnableAllFeaturesResponse": {
      "type": "structure",
      "members": {
        "Handshake": {
          "shape": "Handshake",
          "documentation": "<p>A structure that contains details about the handshake created to support this request to enable all features in the organization.</p>"
        }
      }
    },
    "EnablePolicyTypeRequest": {
      "type": "structure",
      "required": [
        "RootId",
        "PolicyType"
      ],
      "members": {
        "RootId": {
          "shape": "RootId",
          "documentation": "<p>The unique identifier (ID) of the root in which you want to enable a policy type. You can get the ID from the <a>ListRoots</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by from 4 to 32 lowercase letters or digits.</p>"
        },
        "PolicyType": {
          "shape": "PolicyType",
          "documentation": "<p>The policy type that you want to enable. You can specify one of the following values:</p> <ul> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a> </p> </li> </ul>"
        }
      }
    },
    "EnablePolicyTypeResponse": {
      "type": "structure",
      "members": {
        "Root": {
          "shape": "Root",
          "documentation": "<p>A structure that shows the root with the updated list of enabled policy types.</p>"
        }
      }
    },
    "EnabledServicePrincipal": {
      "type": "structure",
      "members": {
        "ServicePrincipal": {
          "shape": "ServicePrincipal",
          "documentation": "<p>The name of the service principal. This is typically in the form of a URL, such as: <code> <i>servicename</i>.amazonaws.com</code>.</p>"
        },
        "DateEnabled": {
          "shape": "Timestamp",
          "documentation": "<p>The date that the service principal was enabled for integration with AWS Organizations.</p>"
        }
      },
      "documentation": "<p>A structure that contains details of a service principal that represents an AWS service that is enabled to integrate with AWS Organizations.</p>"
    },
    "EnabledServicePrincipals": {
      "type": "list",
      "member": {
        "shape": "EnabledServicePrincipal"
      }
    },
    "GenericArn": {
      "type": "string",
      "pattern": "^arn:aws:organizations::.+:.+"
    },
    "Handshake": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "HandshakeId",
          "documentation": "<p>The unique identifier (ID) of a handshake. The originating account creates the ID when it initiates the handshake.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for handshake ID string requires \"h-\" followed by from 8 to 32 lower-case letters or digits.</p>"
        },
        "Arn": {
          "shape": "HandshakeArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of a handshake.</p> <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "Parties": {
          "shape": "HandshakeParties",
          "documentation": "<p>Information about the two accounts that are participating in the handshake.</p>"
        },
        "State": {
          "shape": "HandshakeState",
          "documentation": "<p>The current state of the handshake. Use the state to trace the flow of the handshake through the process from its creation to its acceptance. The meaning of each of the valid values is as follows:</p> <ul> <li> <p> <b>REQUESTED</b>: This handshake was sent to multiple recipients (applicable to only some handshake types) and not all recipients have responded yet. The request stays in this state until all recipients respond.</p> </li> <li> <p> <b>OPEN</b>: This handshake was sent to multiple recipients (applicable to only some policy types) and all recipients have responded, allowing the originator to complete the handshake action.</p> </li> <li> <p> <b>CANCELED</b>: This handshake is no longer active because it was canceled by the originating account.</p> </li> <li> <p> <b>ACCEPTED</b>: This handshake is complete because it has been accepted by the recipient.</p> </li> <li> <p> <b>DECLINED</b>: This handshake is no longer active because it was declined by the recipient account.</p> </li> <li> <p> <b>EXPIRED</b>: This handshake is no longer active because the originator did not receive a response of any kind from the recipient before the expiration time (15 days).</p> </li> </ul>"
        },
        "RequestedTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the handshake request was made.</p>"
        },
        "ExpirationTimestamp": {
          "shape": "Timestamp",
          "documentation": "<p>The date and time that the handshake expires. If the recipient of the handshake request fails to respond before the specified date and time, the handshake becomes inactive and is no longer valid.</p>"
        },
        "Action": {
          "shape": "ActionType",
          "documentation": "<p>The type of handshake, indicating what action occurs when the recipient accepts the handshake. The following handshake types are supported:</p> <ul> <li> <p> <b>INVITE</b>: This type of handshake represents a request to join an organization. It is always sent from the master account to only non-member accounts.</p> </li> <li> <p> <b>ENABLE_ALL_FEATURES</b>: This type of handshake represents a request to enable all features in an organization. It is always sent from the master account to only <i>invited</i> member accounts. Created accounts do not receive this because those accounts were created by the organization's master account and approval is inferred.</p> </li> <li> <p> <b>APPROVE_ALL_FEATURES</b>: This type of handshake is sent from the Organizations service when all member accounts have approved the <code>ENABLE_ALL_FEATURES</code> invitation. It is sent only to the master account and signals the master that it can finalize the process to enable all features.</p> </li> </ul>"
        },
        "Resources": {
          "shape": "HandshakeResources",
          "documentation": "<p>Additional information that is needed to process the handshake.</p>"
        }
      },
      "documentation": "<p>Contains information that must be exchanged to securely establish a relationship between two accounts (an <i>originator</i> and a <i>recipient</i>). For example, when a master account (the originator) invites another account (the recipient) to join its organization, the two accounts exchange information as a series of handshake requests and responses.</p> <p> <b>Note:</b> Handshakes that are CANCELED, ACCEPTED, or DECLINED show up in lists for only 30 days after entering that state After that they are deleted.</p>"
    },
    "HandshakeArn": {
      "type": "string",
      "pattern": "^arn:aws:organizations::\\d{12}:handshake\\/o-[a-z0-9]{10,32}\\/[a-z_]{1,32}\\/h-[0-9a-z]{8,32}"
    },
    "HandshakeFilter": {
      "type": "structure",
      "members": {
        "ActionType": {
          "shape": "ActionType",
          "documentation": "<p>Specifies the type of handshake action.</p> <p>If you specify <code>ActionType</code>, you cannot also specify <code>ParentHandshakeId</code>.</p>"
        },
        "ParentHandshakeId": {
          "shape": "HandshakeId",
          "documentation": "<p>Specifies the parent handshake. Only used for handshake types that are a child of another type.</p> <p>If you specify <code>ParentHandshakeId</code>, you cannot also specify <code>ActionType</code>.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for handshake ID string requires \"h-\" followed by from 8 to 32 lower-case letters or digits.</p>"
        }
      },
      "documentation": "<p>Specifies the criteria that are used to select the handshakes for the operation.</p>"
    },
    "HandshakeId": {
      "type": "string",
      "max": 34,
      "pattern": "^h-[0-9a-z]{8,32}$"
    },
    "HandshakeNotes": {
      "type": "string",
      "max": 1024,
      "pattern": "[\\s\\S]*",
      "sensitive": true
    },
    "HandshakeParties": {
      "type": "list",
      "member": {
        "shape": "HandshakeParty"
      }
    },
    "HandshakeParty": {
      "type": "structure",
      "required": [
        "Id",
        "Type"
      ],
      "members": {
        "Id": {
          "shape": "HandshakePartyId",
          "documentation": "<p>The unique identifier (ID) for the party.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for handshake ID string requires \"h-\" followed by from 8 to 32 lower-case letters or digits.</p>"
        },
        "Type": {
          "shape": "HandshakePartyType",
          "documentation": "<p>The type of party.</p>"
        }
      },
      "documentation": "<p>Identifies a participant in a handshake.</p>"
    },
    "HandshakePartyId": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[\\s\\S]*",
      "sensitive": true
    },
    "HandshakePartyType": {
      "type": "string",
      "enum": [
        "ACCOUNT",
        "ORGANIZATION",
        "EMAIL"
      ]
    },
    "HandshakeResource": {
      "type": "structure",
      "members": {
        "Value": {
          "shape": "HandshakeResourceValue",
          "documentation": "<p>The information that is passed to the other party in the handshake. The format of the value string must match the requirements of the specified type.</p>"
        },
        "Type": {
          "shape": "HandshakeResourceType",
          "documentation": "<p>The type of information being passed, specifying how the value is to be interpreted by the other party:</p> <ul> <li> <p> <code>ACCOUNT</code> - Specifies an AWS account ID number.</p> </li> <li> <p> <code>ORGANIZATION</code> - Specifies an organization ID number.</p> </li> <li> <p> <code>EMAIL</code> - Specifies the email address that is associated with the account that receives the handshake. </p> </li> <li> <p> <code>OWNER_EMAIL</code> - Specifies the email address associated with the master account. Included as information about an organization. </p> </li> <li> <p> <code>OWNER_NAME</code> - Specifies the name associated with the master account. Included as information about an organization. </p> </li> <li> <p> <code>NOTES</code> - Additional text provided by the handshake initiator and intended for the recipient to read.</p> </li> </ul>"
        },
        "Resources": {
          "shape": "HandshakeResources",
          "documentation": "<p>When needed, contains an additional array of <code>HandshakeResource</code> objects.</p>"
        }
      },
      "documentation": "<p>Contains additional data that is needed to process a handshake.</p>"
    },
    "HandshakeResourceType": {
      "type": "string",
      "enum": [
        "ACCOUNT",
        "ORGANIZATION",
        "ORGANIZATION_FEATURE_SET",
        "EMAIL",
        "MASTER_EMAIL",
        "MASTER_NAME",
        "NOTES",
        "PARENT_HANDSHAKE"
      ]
    },
    "HandshakeResourceValue": {
      "type": "string",
      "sensitive": true
    },
    "HandshakeResources": {
      "type": "list",
      "member": {
        "shape": "HandshakeResource"
      }
    },
    "HandshakeState": {
      "type": "string",
      "enum": [
        "REQUESTED",
        "OPEN",
        "CANCELED",
        "ACCEPTED",
        "DECLINED",
        "EXPIRED"
      ]
    },
    "Handshakes": {
      "type": "list",
      "member": {
        "shape": "Handshake"
      }
    },
    "IAMUserAccessToBilling": {
      "type": "string",
      "enum": [
        "ALLOW",
        "DENY"
      ]
    },
    "InviteAccountToOrganizationRequest": {
      "type": "structure",
      "required": [
        "Target"
      ],
      "members": {
        "Target": {
          "shape": "HandshakeParty",
          "documentation": "<p>The identifier (ID) of the AWS account that you want to invite to join your organization. This is a JSON object that contains the following elements: </p> <p> <code>{ \"Type\": \"ACCOUNT\", \"Id\": \"&lt;<i> <b>account id number</b> </i>&gt;\" }</code> </p> <p>If you use the AWS CLI, you can submit this as a single string, similar to the following example:</p> <p> <code>--target Id=123456789012,Type=ACCOUNT</code> </p> <p>If you specify <code>\"Type\": \"ACCOUNT\"</code>, you must provide the AWS account ID number as the <code>Id</code>. If you specify <code>\"Type\": \"EMAIL\"</code>, you must specify the email address that is associated with the account.</p> <p> <code>--target Id=diego@example.com,Type=EMAIL</code> </p>"
        },
        "Notes": {
          "shape": "HandshakeNotes",
          "documentation": "<p>Additional information that you want to include in the generated email to the recipient account owner.</p>"
        }
      }
    },
    "InviteAccountToOrganizationResponse": {
      "type": "structure",
      "members": {
        "Handshake": {
          "shape": "Handshake",
          "documentation": "<p>A structure that contains details about the handshake that is created to support this invitation request.</p>"
        }
      }
    },
    "ListAWSServiceAccessForOrganizationRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListAWSServiceAccessForOrganizationResponse": {
      "type": "structure",
      "members": {
        "EnabledServicePrincipals": {
          "shape": "EnabledServicePrincipals",
          "documentation": "<p>A list of the service principals for the services that are enabled to integrate with your organization. Each principal is a structure that includes the name and the date that it was enabled for integration with AWS Organizations.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListAccountsForParentRequest": {
      "type": "structure",
      "required": [
        "ParentId"
      ],
      "members": {
        "ParentId": {
          "shape": "ParentId",
          "documentation": "<p>The unique identifier (ID) for the parent root or organization unit (OU) whose accounts you want to list.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListAccountsForParentResponse": {
      "type": "structure",
      "members": {
        "Accounts": {
          "shape": "Accounts",
          "documentation": "<p>A list of the accounts in the specified root or OU.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListAccountsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListAccountsResponse": {
      "type": "structure",
      "members": {
        "Accounts": {
          "shape": "Accounts",
          "documentation": "<p>A list of objects in the organization.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListChildrenRequest": {
      "type": "structure",
      "required": [
        "ParentId",
        "ChildType"
      ],
      "members": {
        "ParentId": {
          "shape": "ParentId",
          "documentation": "<p>The unique identifier (ID) for the parent root or OU whose children you want to list.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p> <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        },
        "ChildType": {
          "shape": "ChildType",
          "documentation": "<p>Filters the output to include only the specified child type.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListChildrenResponse": {
      "type": "structure",
      "members": {
        "Children": {
          "shape": "Children",
          "documentation": "<p>The list of children of the specified parent container.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListCreateAccountStatusRequest": {
      "type": "structure",
      "members": {
        "States": {
          "shape": "CreateAccountStates",
          "documentation": "<p>A list of one or more states that you want included in the response. If this parameter isn't present, all requests are included in the response.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListCreateAccountStatusResponse": {
      "type": "structure",
      "members": {
        "CreateAccountStatuses": {
          "shape": "CreateAccountStatuses",
          "documentation": "<p>A list of objects with details about the requests. Certain elements, such as the accountId number, are present in the output only after the account has been successfully created.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListDelegatedAdministratorsRequest": {
      "type": "structure",
      "members": {
        "ServicePrincipal": {
          "shape": "ServicePrincipal",
          "documentation": "<p>Specifies a service principal name. If specified, then the operation lists the delegated administrators only for the specified service.</p> <p>If you don't specify a service principal, the operation lists all delegated administrators for all services in your organization.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListDelegatedAdministratorsResponse": {
      "type": "structure",
      "members": {
        "DelegatedAdministrators": {
          "shape": "DelegatedAdministrators",
          "documentation": "<p>The list of delegated administrators in your organization.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListDelegatedServicesForAccountRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID number of a delegated administrator account in the organization.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListDelegatedServicesForAccountResponse": {
      "type": "structure",
      "members": {
        "DelegatedServices": {
          "shape": "DelegatedServices",
          "documentation": "<p>The services for which the account is a delegated administrator.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListHandshakesForAccountRequest": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "HandshakeFilter",
          "documentation": "<p>Filters the handshakes that you want included in the response. The default is all types. Use the <code>ActionType</code> element to limit the output to only a specified type, such as <code>INVITE</code>, <code>ENABLE_ALL_FEATURES</code>, or <code>APPROVE_ALL_FEATURES</code>. Alternatively, for the <code>ENABLE_ALL_FEATURES</code> handshake that generates a separate child handshake for each member account, you can specify <code>ParentHandshakeId</code> to see only the handshakes that were generated by that parent request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListHandshakesForAccountResponse": {
      "type": "structure",
      "members": {
        "Handshakes": {
          "shape": "Handshakes",
          "documentation": "<p>A list of <a>Handshake</a> objects with details about each of the handshakes that is associated with the specified account.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListHandshakesForOrganizationRequest": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "HandshakeFilter",
          "documentation": "<p>A filter of the handshakes that you want included in the response. The default is all types. Use the <code>ActionType</code> element to limit the output to only a specified type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake for each member account, you can specify the <code>ParentHandshakeId</code> to see only the handshakes that were generated by that parent request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListHandshakesForOrganizationResponse": {
      "type": "structure",
      "members": {
        "Handshakes": {
          "shape": "Handshakes",
          "documentation": "<p>A list of <a>Handshake</a> objects with details about each of the handshakes that are associated with an organization.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListOrganizationalUnitsForParentRequest": {
      "type": "structure",
      "required": [
        "ParentId"
      ],
      "members": {
        "ParentId": {
          "shape": "ParentId",
          "documentation": "<p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p> <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListOrganizationalUnitsForParentResponse": {
      "type": "structure",
      "members": {
        "OrganizationalUnits": {
          "shape": "OrganizationalUnits",
          "documentation": "<p>A list of the OUs in the specified root or parent OU.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListParentsRequest": {
      "type": "structure",
      "required": [
        "ChildId"
      ],
      "members": {
        "ChildId": {
          "shape": "ChildId",
          "documentation": "<p>The unique identifier (ID) of the OU or account whose parent containers you want to list. Don't specify a root.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a child ID string requires one of the following:</p> <ul> <li> <p> <b>Account</b> - A string that consists of exactly 12 digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListParentsResponse": {
      "type": "structure",
      "members": {
        "Parents": {
          "shape": "Parents",
          "documentation": "<p>A list of parents for the specified child account or OU.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListPoliciesForTargetRequest": {
      "type": "structure",
      "required": [
        "TargetId",
        "Filter"
      ],
      "members": {
        "TargetId": {
          "shape": "PolicyTargetId",
          "documentation": "<p>The unique identifier (ID) of the root, organizational unit, or account whose policies you want to list.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p> <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or digits.</p> </li> <li> <p> <b>Account</b> - A string that consists of exactly 12 digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        },
        "Filter": {
          "shape": "PolicyType",
          "documentation": "<p>The type of policy that you want to include in the returned list. You must specify one of the following values:</p> <ul> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a> </p> </li> </ul>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListPoliciesForTargetResponse": {
      "type": "structure",
      "members": {
        "Policies": {
          "shape": "Policies",
          "documentation": "<p>The list of policies that match the criteria in the request.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListPoliciesRequest": {
      "type": "structure",
      "required": [
        "Filter"
      ],
      "members": {
        "Filter": {
          "shape": "PolicyType",
          "documentation": "<p>Specifies the type of policy that you want to include in the response. You must specify one of the following values:</p> <ul> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html\">AISERVICES_OPT_OUT_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html\">BACKUP_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html\">SERVICE_CONTROL_POLICY</a> </p> </li> <li> <p> <a href=\"http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html\">TAG_POLICY</a> </p> </li> </ul>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListPoliciesResponse": {
      "type": "structure",
      "members": {
        "Policies": {
          "shape": "Policies",
          "documentation": "<p>A list of policies that match the filter criteria in the request. The output list doesn't include the policy contents. To see the content for a policy, see <a>DescribePolicy</a>.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListRootsRequest": {
      "type": "structure",
      "members": {
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListRootsResponse": {
      "type": "structure",
      "members": {
        "Roots": {
          "shape": "Roots",
          "documentation": "<p>A list of roots that are defined in an organization.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListTagsForResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId"
      ],
      "members": {
        "ResourceId": {
          "shape": "TaggableResourceId",
          "documentation": "<p>The ID of the resource that you want to retrieve tags for. </p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        }
      }
    },
    "ListTagsForResourceResponse": {
      "type": "structure",
      "members": {
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tags that are assigned to the resource.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "ListTargetsForPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The unique identifier (ID) of the policy whose attachments you want to know.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>The parameter for receiving additional results if you receive a <code>NextToken</code> response in a previous request. A <code>NextToken</code> response indicates that more output is available. Set this parameter to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>"
        },
        "MaxResults": {
          "shape": "MaxResults",
          "documentation": "<p>The total number of results that you want included on each page of the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>"
        }
      }
    },
    "ListTargetsForPolicyResponse": {
      "type": "structure",
      "members": {
        "Targets": {
          "shape": "PolicyTargets",
          "documentation": "<p>A list of structures, each of which contains details about one of the entities to which the specified policy is attached.</p>"
        },
        "NextToken": {
          "shape": "NextToken",
          "documentation": "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"
        }
      }
    },
    "MaxResults": {
      "type": "integer",
      "box": true,
      "max": 20,
      "min": 1
    },
    "MoveAccountRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "SourceParentId",
        "DestinationParentId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The unique identifier (ID) of the account that you want to move.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12 digits.</p>"
        },
        "SourceParentId": {
          "shape": "ParentId",
          "documentation": "<p>The unique identifier (ID) of the root or organizational unit that you want to move the account from.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p> <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        },
        "DestinationParentId": {
          "shape": "ParentId",
          "documentation": "<p>The unique identifier (ID) of the root or organizational unit that you want to move the account to.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p> <b>Root</b> - A string that begins with \"r-\" followed by from 4 to 32 lowercase letters or digits.</p> </li> <li> <p> <b>Organizational unit (OU)</b> - A string that begins with \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p> </li> </ul>"
        }
      }
    },
    "NextToken": {
      "type": "string",
      "max": 100000,
      "pattern": "[\\s\\S]*"
    },
    "Organization": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "OrganizationId",
          "documentation": "<p>The unique identifier (ID) of an organization.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organization ID string requires \"o-\" followed by from 10 to 32 lower-case letters or digits.</p>"
        },
        "Arn": {
          "shape": "OrganizationArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of an organization.</p> <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "FeatureSet": {
          "shape": "OrganizationFeatureSet",
          "documentation": "<p>Specifies the functionality that currently is available to the organization. If set to \"ALL\", then all features are enabled and policies can be applied to accounts in the organization. If set to \"CONSOLIDATED_BILLING\", then only consolidated billing functionality is available. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "MasterAccountArn": {
          "shape": "AccountArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the account that is designated as the master account for the organization.</p> <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "MasterAccountId": {
          "shape": "AccountId",
          "documentation": "<p>The unique identifier (ID) of the master account of an organization.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12 digits.</p>"
        },
        "MasterAccountEmail": {
          "shape": "Email",
          "documentation": "<p>The email address that is associated with the AWS account that is designated as the master account for the organization.</p>"
        },
        "AvailablePolicyTypes": {
          "shape": "PolicyTypes",
          "documentation": "<important> <p>Do not use. This field is deprecated and doesn't provide complete information about the policies in your organization.</p> </important> <p>To determine the policies that are enabled and available for use in your organization, use the <a>ListRoots</a> operation instead.</p>"
        }
      },
      "documentation": "<p>Contains details about an organization. An organization is a collection of accounts that are centrally managed together using consolidated billing, organized hierarchically with organizational units (OUs), and controlled with policies .</p>"
    },
    "OrganizationArn": {
      "type": "string",
      "pattern": "^arn:aws:organizations::\\d{12}:organization\\/o-[a-z0-9]{10,32}"
    },
    "OrganizationFeatureSet": {
      "type": "string",
      "enum": [
        "ALL",
        "CONSOLIDATED_BILLING"
      ]
    },
    "OrganizationId": {
      "type": "string",
      "pattern": "^o-[a-z0-9]{10,32}$"
    },
    "OrganizationalUnit": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "OrganizationalUnitId",
          "documentation": "<p>The unique identifier (ID) associated with this OU.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires \"ou-\" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lower-case letters or digits.</p>"
        },
        "Arn": {
          "shape": "OrganizationalUnitArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of this OU.</p> <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "Name": {
          "shape": "OrganizationalUnitName",
          "documentation": "<p>The friendly name of this OU.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>"
        }
      },
      "documentation": "<p>Contains details about an organizational unit (OU). An OU is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.</p>"
    },
    "OrganizationalUnitArn": {
      "type": "string",
      "pattern": "^arn:aws:organizations::\\d{12}:ou\\/o-[a-z0-9]{10,32}\\/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}"
    },
    "OrganizationalUnitId": {
      "type": "string",
      "max": 68,
      "pattern": "^ou-[0-9a-z]{4,32}-[a-z0-9]{8,32}$"
    },
    "OrganizationalUnitName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\s\\S]*"
    },
    "OrganizationalUnits": {
      "type": "list",
      "member": {
        "shape": "OrganizationalUnit"
      }
    },
    "Parent": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "ParentId",
          "documentation": "<p>The unique identifier (ID) of the parent entity.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: A string that begins with \"r-\" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): A string that begins with \"ou-\" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>"
        },
        "Type": {
          "shape": "ParentType",
          "documentation": "<p>The type of the parent entity.</p>"
        }
      },
      "documentation": "<p>Contains information about either a root or an organizational unit (OU) that can contain OUs or accounts in an organization.</p>"
    },
    "ParentId": {
      "type": "string",
      "max": 100,
      "pattern": "^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"
    },
    "ParentType": {
      "type": "string",
      "enum": [
        "ROOT",
        "ORGANIZATIONAL_UNIT"
      ]
    },
    "Parents": {
      "type": "list",
      "member": {
        "shape": "Parent"
      }
    },
    "Policies": {
      "type": "list",
      "member": {
        "shape": "PolicySummary"
      }
    },
    "Policy": {
      "type": "structure",
      "members": {
        "PolicySummary": {
          "shape": "PolicySummary",
          "documentation": "<p>A structure that contains additional details about the policy.</p>"
        },
        "Content": {
          "shape": "PolicyContent",
          "documentation": "<p>The text content of the policy.</p>"
        }
      },
      "documentation": "<p>Contains rules to be applied to the affected accounts. Policies can be attached directly to accounts, or to roots and OUs to affect all accounts in those hierarchies.</p>"
    },
    "PolicyArn": {
      "type": "string",
      "pattern": "^(arn:aws:organizations::\\d{12}:policy\\/o-[a-z0-9]{10,32}\\/[0-9a-z_]+\\/p-[0-9a-z]{10,32})|(arn:aws:organizations::aws:policy\\/[0-9a-z_]+\\/p-[0-9a-zA-Z_]{10,128})"
    },
    "PolicyContent": {
      "type": "string",
      "max": 1000000,
      "min": 1,
      "pattern": "[\\s\\S]*"
    },
    "PolicyDescription": {
      "type": "string",
      "max": 512,
      "pattern": "[\\s\\S]*"
    },
    "PolicyId": {
      "type": "string",
      "max": 130,
      "pattern": "^p-[0-9a-zA-Z_]{8,128}$"
    },
    "PolicyName": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\s\\S]*"
    },
    "PolicySummary": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "PolicyId",
          "documentation": "<p>The unique identifier (ID) of the policy.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed by from 8 to 128 lower-case letters or digits.</p>"
        },
        "Arn": {
          "shape": "PolicyArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the policy.</p> <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "Name": {
          "shape": "PolicyName",
          "documentation": "<p>The friendly name of the policy.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>"
        },
        "Description": {
          "shape": "PolicyDescription",
          "documentation": "<p>The description of the policy.</p>"
        },
        "Type": {
          "shape": "PolicyType",
          "documentation": "<p>The type of policy.</p>"
        },
        "AwsManaged": {
          "shape": "AwsManagedPolicy",
          "documentation": "<p>A boolean value that indicates whether the specified policy is an AWS managed policy. If true, then you can attach the policy to roots, OUs, or accounts, but you cannot edit it.</p>"
        }
      },
      "documentation": "<p>Contains information about a policy, but does not include the content. To see the content of a policy, see <a>DescribePolicy</a>.</p>"
    },
    "PolicyTargetId": {
      "type": "string",
      "max": 100,
      "pattern": "^(r-[0-9a-z]{4,32})|(\\d{12})|(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$"
    },
    "PolicyTargetSummary": {
      "type": "structure",
      "members": {
        "TargetId": {
          "shape": "PolicyTargetId",
          "documentation": "<p>The unique identifier (ID) of the policy target.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: A string that begins with \"r-\" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: A string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): A string that begins with \"ou-\" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in). This string is followed by a second \"-\" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>"
        },
        "Arn": {
          "shape": "GenericArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the policy target.</p> <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "Name": {
          "shape": "TargetName",
          "documentation": "<p>The friendly name of the policy target.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>"
        },
        "Type": {
          "shape": "TargetType",
          "documentation": "<p>The type of the policy target.</p>"
        }
      },
      "documentation": "<p>Contains information about a root, OU, or account that a policy is attached to.</p>"
    },
    "PolicyTargets": {
      "type": "list",
      "member": {
        "shape": "PolicyTargetSummary"
      }
    },
    "PolicyType": {
      "type": "string",
      "enum": [
        "SERVICE_CONTROL_POLICY",
        "TAG_POLICY",
        "BACKUP_POLICY",
        "AISERVICES_OPT_OUT_POLICY"
      ]
    },
    "PolicyTypeStatus": {
      "type": "string",
      "enum": [
        "ENABLED",
        "PENDING_ENABLE",
        "PENDING_DISABLE"
      ]
    },
    "PolicyTypeSummary": {
      "type": "structure",
      "members": {
        "Type": {
          "shape": "PolicyType",
          "documentation": "<p>The name of the policy type.</p>"
        },
        "Status": {
          "shape": "PolicyTypeStatus",
          "documentation": "<p>The status of the policy type as it relates to the associated root. To attach a policy of the specified type to a root or to an OU or account in that root, it must be available in the organization and enabled for that root.</p>"
        }
      },
      "documentation": "<p>Contains information about a policy type and its status in the associated root.</p>"
    },
    "PolicyTypes": {
      "type": "list",
      "member": {
        "shape": "PolicyTypeSummary"
      }
    },
    "RegisterDelegatedAdministratorRequest": {
      "type": "structure",
      "required": [
        "AccountId",
        "ServicePrincipal"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The account ID number of the member account in the organization to register as a delegated administrator.</p>"
        },
        "ServicePrincipal": {
          "shape": "ServicePrincipal",
          "documentation": "<p>The service principal of the AWS service for which you want to make the member account a delegated administrator.</p>"
        }
      }
    },
    "RemoveAccountFromOrganizationRequest": {
      "type": "structure",
      "required": [
        "AccountId"
      ],
      "members": {
        "AccountId": {
          "shape": "AccountId",
          "documentation": "<p>The unique identifier (ID) of the member account that you want to remove from the organization.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an account ID string requires exactly 12 digits.</p>"
        }
      }
    },
    "RoleName": {
      "type": "string",
      "max": 64,
      "pattern": "[\\w+=,.@-]{1,64}"
    },
    "Root": {
      "type": "structure",
      "members": {
        "Id": {
          "shape": "RootId",
          "documentation": "<p>The unique identifier (ID) for the root.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a root ID string requires \"r-\" followed by from 4 to 32 lower-case letters or digits.</p>"
        },
        "Arn": {
          "shape": "RootArn",
          "documentation": "<p>The Amazon Resource Name (ARN) of the root.</p> <p>For more information about ARNs in Organizations, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns\">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>"
        },
        "Name": {
          "shape": "RootName",
          "documentation": "<p>The friendly name of the root.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>"
        },
        "PolicyTypes": {
          "shape": "PolicyTypes",
          "documentation": "<p>The types of policies that are currently enabled for the root and therefore can be attached to the root or to its OUs or accounts.</p> <note> <p>Even if a policy type is shown as available in the organization, you can separately enable and disable them at the root level by using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. Use <a>DescribeOrganization</a> to see the availability of the policy types in that organization.</p> </note>"
        }
      },
      "documentation": "<p>Contains details about a root. A root is a top-level parent node in the hierarchy of an organization that can contain organizational units (OUs) and accounts. Every root contains every AWS account in the organization. Each root enables the accounts to be organized in a different way and to have different policy types enabled for use in that root.</p>"
    },
    "RootArn": {
      "type": "string",
      "pattern": "^arn:aws:organizations::\\d{12}:root\\/o-[a-z0-9]{10,32}\\/r-[0-9a-z]{4,32}"
    },
    "RootId": {
      "type": "string",
      "max": 34,
      "pattern": "^r-[0-9a-z]{4,32}$"
    },
    "RootName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "Roots": {
      "type": "list",
      "member": {
        "shape": "Root"
      }
    },
    "ServicePrincipal": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+=,.@-]*"
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
          "documentation": "<p>The key identifier, or name, of the tag.</p>"
        },
        "Value": {
          "shape": "TagValue",
          "documentation": "<p>The string value that's associated with the key of the tag. You can set the value of a tag to an empty string, but you can't set the value of a tag to null.</p>"
        }
      },
      "documentation": "<p>A custom key-value pair associated with a resource such as an account within your organization. </p>"
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
    "TagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "Tags"
      ],
      "members": {
        "ResourceId": {
          "shape": "TaggableResourceId",
          "documentation": "<p>The ID of the resource to add a tag to.</p>"
        },
        "Tags": {
          "shape": "Tags",
          "documentation": "<p>The tag to add to the specified resource. You must specify both a tag key and value. You can set the value of a tag to an empty string, but you can't set it to null.</p>"
        }
      }
    },
    "TagValue": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"
    },
    "TaggableResourceId": {
      "type": "string",
      "max": 12,
      "pattern": "^\\d{12}$"
    },
    "Tags": {
      "type": "list",
      "member": {
        "shape": "Tag"
      }
    },
    "TargetName": {
      "type": "string",
      "max": 128,
      "min": 1
    },
    "TargetType": {
      "type": "string",
      "enum": [
        "ACCOUNT",
        "ORGANIZATIONAL_UNIT",
        "ROOT"
      ]
    },
    "Timestamp": {
      "type": "timestamp"
    },
    "UntagResourceRequest": {
      "type": "structure",
      "required": [
        "ResourceId",
        "TagKeys"
      ],
      "members": {
        "ResourceId": {
          "shape": "TaggableResourceId",
          "documentation": "<p>The ID of the resource to remove the tag from.</p>"
        },
        "TagKeys": {
          "shape": "TagKeys",
          "documentation": "<p>The tag to remove from the specified resource.</p>"
        }
      }
    },
    "UpdateOrganizationalUnitRequest": {
      "type": "structure",
      "required": [
        "OrganizationalUnitId"
      ],
      "members": {
        "OrganizationalUnitId": {
          "shape": "OrganizationalUnitId",
          "documentation": "<p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for an organizational unit ID string requires \"ou-\" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the OU). This string is followed by a second \"-\" dash and from 8 to 32 additional lowercase letters or digits.</p>"
        },
        "Name": {
          "shape": "OrganizationalUnitName",
          "documentation": "<p>The new name that you want to assign to the OU.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>"
        }
      }
    },
    "UpdateOrganizationalUnitResponse": {
      "type": "structure",
      "members": {
        "OrganizationalUnit": {
          "shape": "OrganizationalUnit",
          "documentation": "<p>A structure that contains the details about the specified OU, including its new name.</p>"
        }
      }
    },
    "UpdatePolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyId"
      ],
      "members": {
        "PolicyId": {
          "shape": "PolicyId",
          "documentation": "<p>The unique identifier (ID) of the policy that you want to update.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> for a policy ID string requires \"p-\" followed by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>"
        },
        "Name": {
          "shape": "PolicyName",
          "documentation": "<p>If provided, the new name for the policy.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>"
        },
        "Description": {
          "shape": "PolicyDescription",
          "documentation": "<p>If provided, the new description for the policy.</p>"
        },
        "Content": {
          "shape": "PolicyContent",
          "documentation": "<p>If provided, the new content for the policy. The text must be correctly formatted JSON that complies with the syntax for the policy's type. For more information, see <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html\">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide.</i> </p>"
        }
      }
    },
    "UpdatePolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>A structure that contains details about the updated policy, showing the requested changes.</p>"
        }
      }
    }
  },
  "documentation": "<fullname>AWS Organizations</fullname>"
}
]===]))