local decode = require("cjson").new().decode
return assert(decode([===[
{
  "version": "2.0",
  "metadata": {
    "apiVersion": "2010-05-08",
    "endpointPrefix": "iam",
    "globalEndpoint": "iam.amazonaws.com",
    "protocol": "query",
    "serviceAbbreviation": "IAM",
    "serviceFullName": "AWS Identity and Access Management",
    "serviceId": "IAM",
    "signatureVersion": "v4",
    "uid": "iam-2010-05-08",
    "xmlNamespace": "https://iam.amazonaws.com/doc/2010-05-08/"
  },
  "operations": {
    "AddClientIDToOpenIDConnectProvider": {
      "name": "AddClientIDToOpenIDConnectProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddClientIDToOpenIDConnectProviderRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource.</p> <p>This operation is idempotent; it does not fail or return an error if you add an existing client ID to the provider.</p>"
    },
    "AddRoleToInstanceProfile": {
      "name": "AddRoleToInstanceProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddRoleToInstanceProfileRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds the specified IAM role to the specified instance profile. An instance profile can contain only one role. (The number and size of IAM resources in an AWS account are limited. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS Quotas</a> in the <i>IAM User Guide</i>.) You can remove the existing role and then add a different role to an instance profile. You must then wait for the change to appear across all of AWS because of <a href=\"https://en.wikipedia.org/wiki/Eventual_consistency\">eventual consistency</a>. To force the change, you must <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html\">disassociate the instance profile</a> and then <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html\">associate the instance profile</a>, or you can stop your instance and then restart it.</p> <note> <p>The caller of this API must be granted the <code>PassRole</code> permission on the IAM role by a permissions policy.</p> </note> <p>For more information about roles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html\">Working with Roles</a>. For more information about instance profiles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html\">About Instance Profiles</a>.</p>"
    },
    "AddUserToGroup": {
      "name": "AddUserToGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AddUserToGroupRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds the specified user to the specified group.</p>"
    },
    "AttachGroupPolicy": {
      "name": "AttachGroupPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AttachGroupPolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyNotAttachableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Attaches the specified managed policy to the specified IAM group.</p> <p>You use this API to attach a managed policy to a group. To embed an inline policy in a group, use <a>PutGroupPolicy</a>.</p> <p>For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "AttachRolePolicy": {
      "name": "AttachRolePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AttachRolePolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "PolicyNotAttachableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Attaches the specified managed policy to the specified IAM role. When you attach a managed policy to a role, the managed policy becomes part of the role's permission (access) policy.</p> <note> <p>You cannot use a managed policy as the role's trust policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>.</p> </note> <p>Use this API to attach a <i>managed</i> policy to a role. To embed an inline policy in a role, use <a>PutRolePolicy</a>. For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "AttachUserPolicy": {
      "name": "AttachUserPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "AttachUserPolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyNotAttachableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Attaches the specified managed policy to the specified user.</p> <p>You use this API to attach a <i>managed</i> policy to a user. To embed an inline policy in a user, use <a>PutUserPolicy</a>.</p> <p>For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "ChangePassword": {
      "name": "ChangePassword",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ChangePasswordRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidUserTypeException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "EntityTemporarilyUnmodifiableException"
        },
        {
          "shape": "PasswordPolicyViolationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Changes the password of the IAM user who is calling this operation. The AWS account root user password is not affected by this operation.</p> <p>To change the password for a different user, see <a>UpdateLoginProfile</a>. For more information about modifying passwords, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html\">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateAccessKey": {
      "name": "CreateAccessKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAccessKeyRequest"
      },
      "output": {
        "shape": "CreateAccessKeyResponse",
        "resultWrapper": "CreateAccessKeyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p> Creates a new AWS secret access key and corresponding AWS access key ID for the specified user. The default status for new keys is <code>Active</code>.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials. This is true even if the AWS account has no associated users.</p> <p>The number and size of IAM resources in an AWS account are limited. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS Quotas</a> in the <i>IAM User Guide</i>.</p> <important> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.</p> </important>"
    },
    "CreateAccountAlias": {
      "name": "CreateAccountAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateAccountAliasRequest"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates an alias for your AWS account. For information about using an AWS account alias, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html\">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateGroup": {
      "name": "CreateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateGroupRequest"
      },
      "output": {
        "shape": "CreateGroupResponse",
        "resultWrapper": "CreateGroupResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new group.</p> <p>The number and size of IAM resources in an AWS account are limited. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS Quotas</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateInstanceProfile": {
      "name": "CreateInstanceProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateInstanceProfileRequest"
      },
      "output": {
        "shape": "CreateInstanceProfileResponse",
        "resultWrapper": "CreateInstanceProfileResult"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p> Creates a new instance profile. For information about instance profiles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html\">About Instance Profiles</a>.</p> <p>The number and size of IAM resources in an AWS account are limited. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS Quotas</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateLoginProfile": {
      "name": "CreateLoginProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateLoginProfileRequest"
      },
      "output": {
        "shape": "CreateLoginProfileResponse",
        "resultWrapper": "CreateLoginProfileResult"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "PasswordPolicyViolationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p> Creates a password for the specified user, giving the user the ability to access AWS services through the AWS Management Console. For more information about managing passwords, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html\">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateOpenIDConnectProvider": {
      "name": "CreateOpenIDConnectProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateOpenIDConnectProviderRequest"
      },
      "output": {
        "shape": "CreateOpenIDConnectProviderResponse",
        "resultWrapper": "CreateOpenIDConnectProviderResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates an IAM entity to describe an identity provider (IdP) that supports <a href=\"http://openid.net/connect/\">OpenID Connect (OIDC)</a>.</p> <p>The OIDC provider that you create with this operation can be used as a principal in a role's trust policy. Such a policy establishes a trust relationship between AWS and the OIDC provider.</p> <p>When you create the IAM OIDC provider, you specify the following:</p> <ul> <li> <p>The URL of the OIDC identity provider (IdP) to trust</p> </li> <li> <p>A list of client IDs (also known as audiences) that identify the application or applications that are allowed to authenticate using the OIDC provider</p> </li> <li> <p>A list of thumbprints of one or more server certificates that the IdP uses</p> </li> </ul> <p>You get all of this information from the OIDC IdP that you want to use to access AWS.</p> <note> <p>The trust for the OIDC provider is derived from the IAM provider that this operation creates. Therefore, it is best to limit access to the <a>CreateOpenIDConnectProvider</a> operation to highly privileged users.</p> </note>"
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
        "shape": "CreatePolicyResponse",
        "resultWrapper": "CreatePolicyResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new managed policy for your AWS account.</p> <p>This operation creates a policy version with a version identifier of <code>v1</code> and sets v1 as the policy's default version. For more information about policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policies in general, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreatePolicyVersion": {
      "name": "CreatePolicyVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreatePolicyVersionRequest"
      },
      "output": {
        "shape": "CreatePolicyVersionResponse",
        "resultWrapper": "CreatePolicyVersionResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new version of the specified managed policy. To update a managed policy, you create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must delete an existing version using <a>DeletePolicyVersion</a> before you create a new version.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the version that is in effect for the IAM users, groups, and roles to which the policy is attached.</p> <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateRole": {
      "name": "CreateRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateRoleRequest"
      },
      "output": {
        "shape": "CreateRoleResponse",
        "resultWrapper": "CreateRoleResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new role for your AWS account. For more information about roles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html\">IAM Roles</a>. The number and size of IAM resources in an AWS account are limited. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS Quotas</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateSAMLProvider": {
      "name": "CreateSAMLProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateSAMLProviderRequest"
      },
      "output": {
        "shape": "CreateSAMLProviderResponse",
        "resultWrapper": "CreateSAMLProviderResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2.0.</p> <p>The SAML provider resource that you create with this operation can be used as a principal in an IAM role's trust policy. Such a policy can enable federated users who sign in using the SAML IdP to assume the role. You can create an IAM role that supports Web-based single sign-on (SSO) to the AWS Management Console or one that supports API access to AWS.</p> <p>When you create the SAML provider resource, you upload a SAML metadata document that you get from your IdP. That document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that the IdP sends. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p> <note> <p> This operation requires <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p> </note> <p> For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html\">Enabling SAML 2.0 Federated Users to Access the AWS Management Console</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html\">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateServiceLinkedRole": {
      "name": "CreateServiceLinkedRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateServiceLinkedRoleRequest"
      },
      "output": {
        "shape": "CreateServiceLinkedRoleResponse",
        "resultWrapper": "CreateServiceLinkedRoleResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates an IAM role that is linked to a specific AWS service. The service controls the attached policies and when the role can be deleted. This helps ensure that the service is not broken by an unexpectedly changed or deleted role, which could put your AWS resources into an unknown state. Allowing the service to control the role helps improve service stability and proper cleanup when a service and its role are no longer needed. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html\">Using Service-Linked Roles</a> in the <i>IAM User Guide</i>. </p> <p>To attach a policy to this service-linked role, you must make the request using the AWS service that depends on this role.</p>"
    },
    "CreateServiceSpecificCredential": {
      "name": "CreateServiceSpecificCredential",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateServiceSpecificCredentialRequest"
      },
      "output": {
        "shape": "CreateServiceSpecificCredentialResponse",
        "resultWrapper": "CreateServiceSpecificCredentialResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceNotSupportedException"
        }
      ],
      "documentation": "<p>Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request. These credentials are generated by IAM, and can be used only for the specified service. </p> <p>You can have a maximum of two sets of service-specific credentials for each supported service per user.</p> <p>The only supported service at this time is AWS CodeCommit.</p> <p>You can reset the password to a new service-generated value by calling <a>ResetServiceSpecificCredential</a>.</p> <p>For more information about service-specific credentials, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html\">Using IAM with AWS CodeCommit: Git Credentials, SSH Keys, and AWS Access Keys</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateUser": {
      "name": "CreateUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateUserRequest"
      },
      "output": {
        "shape": "CreateUserResponse",
        "resultWrapper": "CreateUserResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new IAM user for your AWS account.</p> <p>The number and size of IAM resources in an AWS account are limited. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS Quotas</a> in the <i>IAM User Guide</i>.</p>"
    },
    "CreateVirtualMFADevice": {
      "name": "CreateVirtualMFADevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "CreateVirtualMFADeviceRequest"
      },
      "output": {
        "shape": "CreateVirtualMFADeviceResponse",
        "resultWrapper": "CreateVirtualMFADeviceResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Creates a new virtual MFA device for the AWS account. After creating the virtual MFA, use <a>EnableMFADevice</a> to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html\">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p> <p>The number and size of IAM resources in an AWS account are limited. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS Quotas</a> in the <i>IAM User Guide</i>.</p> <important> <p>The seed information contained in the QR code and the Base32 string should be treated like any other secret access information. In other words, protect the seed information as you would your AWS access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.</p> </important>"
    },
    "DeactivateMFADevice": {
      "name": "DeactivateMFADevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeactivateMFADeviceRequest"
      },
      "errors": [
        {
          "shape": "EntityTemporarilyUnmodifiableException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html\">Enabling a Virtual Multi-factor Authentication (MFA) Device</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DeleteAccessKey": {
      "name": "DeleteAccessKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAccessKeyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the access key pair associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p>"
    },
    "DeleteAccountAlias": {
      "name": "DeleteAccountAlias",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteAccountAliasRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p> Deletes the specified AWS account alias. For information about using an AWS account alias, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html\">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DeleteAccountPasswordPolicy": {
      "name": "DeleteAccountPasswordPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the password policy for the AWS account. There are no parameters.</p>"
    },
    "DeleteGroup": {
      "name": "DeleteGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteGroupRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "DeleteConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified IAM group. The group must not contain any users or have any attached policies.</p>"
    },
    "DeleteGroupPolicy": {
      "name": "DeleteGroupPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteGroupPolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified inline policy that is embedded in the specified IAM group.</p> <p>A group can also have managed policies attached to it. To detach a managed policy from a group, use <a>DetachGroupPolicy</a>. For more information about policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DeleteInstanceProfile": {
      "name": "DeleteInstanceProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteInstanceProfileRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "DeleteConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified instance profile. The instance profile must not have an associated role.</p> <important> <p>Make sure that you do not have any Amazon EC2 instances running with the instance profile you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important> <p>For more information about instance profiles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html\">About Instance Profiles</a>.</p>"
    },
    "DeleteLoginProfile": {
      "name": "DeleteLoginProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteLoginProfileRequest"
      },
      "errors": [
        {
          "shape": "EntityTemporarilyUnmodifiableException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the password for the specified IAM user, which terminates the user's ability to access AWS services through the AWS Management Console.</p> <important> <p> Deleting a user's password does not prevent a user from accessing AWS through the command line interface or the API. To prevent all user access, you must also either make any access keys inactive or delete them. For more information about making keys inactive or deleting them, see <a>UpdateAccessKey</a> and <a>DeleteAccessKey</a>. </p> </important>"
    },
    "DeleteOpenIDConnectProvider": {
      "name": "DeleteOpenIDConnectProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteOpenIDConnectProviderRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes an OpenID Connect identity provider (IdP) resource object in IAM.</p> <p>Deleting an IAM OIDC provider resource does not update any roles that reference the provider as a principal in their trust policies. Any attempt to assume a role that references a deleted provider fails.</p> <p>This operation is idempotent; it does not fail or return an error if you call the operation for a provider that does not exist.</p>"
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
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "DeleteConflictException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified managed policy.</p> <p>Before you can delete a managed policy, you must first detach the policy from all users, groups, and roles that it is attached to. In addition, you must delete all the policy's versions. The following steps describe the process for deleting a managed policy:</p> <ul> <li> <p>Detach the policy from all users, groups, and roles that the policy is attached to, using the <a>DetachUserPolicy</a>, <a>DetachGroupPolicy</a>, or <a>DetachRolePolicy</a> API operations. To list all the users, groups, and roles that a policy is attached to, use <a>ListEntitiesForPolicy</a>.</p> </li> <li> <p>Delete all versions of the policy using <a>DeletePolicyVersion</a>. To list the policy's versions, use <a>ListPolicyVersions</a>. You cannot use <a>DeletePolicyVersion</a> to delete the version that is marked as the default version. You delete the policy's default version in the next step of the process.</p> </li> <li> <p>Delete the policy (this automatically deletes the policy's default version) using this API.</p> </li> </ul> <p>For information about managed policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DeletePolicyVersion": {
      "name": "DeletePolicyVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeletePolicyVersionRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "DeleteConflictException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified version from the specified managed policy.</p> <p>You cannot delete the default version from a policy using this API. To delete the default version from a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use <a>ListPolicyVersions</a>.</p> <p>For information about versions for managed policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DeleteRole": {
      "name": "DeleteRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRoleRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "DeleteConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified role. The role must not have any policies attached. For more information about roles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html\">Working with Roles</a>.</p> <important> <p>Make sure that you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important>"
    },
    "DeleteRolePermissionsBoundary": {
      "name": "DeleteRolePermissionsBoundary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRolePermissionsBoundaryRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the permissions boundary for the specified IAM role. </p> <important> <p>Deleting the permissions boundary for a role might increase its permissions. For example, it might allow anyone who assumes the role to perform all the actions granted in its permissions policies. </p> </important>"
    },
    "DeleteRolePolicy": {
      "name": "DeleteRolePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteRolePolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified inline policy that is embedded in the specified IAM role.</p> <p>A role can also have managed policies attached to it. To detach a managed policy from a role, use <a>DetachRolePolicy</a>. For more information about policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DeleteSAMLProvider": {
      "name": "DeleteSAMLProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSAMLProviderRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes a SAML provider resource in IAM.</p> <p>Deleting the provider resource from IAM does not update any roles that reference the SAML provider resource's ARN as a principal in their trust policies. Any attempt to assume a role that references a non-existent provider resource ARN fails.</p> <note> <p> This operation requires <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p> </note>"
    },
    "DeleteSSHPublicKey": {
      "name": "DeleteSSHPublicKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSSHPublicKeyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        }
      ],
      "documentation": "<p>Deletes the specified SSH public key.</p> <p>The SSH public key deleted by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html\">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
    },
    "DeleteServerCertificate": {
      "name": "DeleteServerCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServerCertificateRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "DeleteConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified server certificate.</p> <p>For more information about working with server certificates, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <important> <p> If you are using a server certificate with Elastic Load Balancing, deleting the certificate could have implications for your application. If Elastic Load Balancing doesn't detect the deletion of bound certificates, it may continue to use the certificates. This could cause Elastic Load Balancing to stop accepting traffic. We recommend that you remove the reference to the certificate from Elastic Load Balancing before using this command to delete the certificate. For more information, go to <a href=\"https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html\">DeleteLoadBalancerListeners</a> in the <i>Elastic Load Balancing API Reference</i>.</p> </important>"
    },
    "DeleteServiceLinkedRole": {
      "name": "DeleteServiceLinkedRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServiceLinkedRoleRequest"
      },
      "output": {
        "shape": "DeleteServiceLinkedRoleResponse",
        "resultWrapper": "DeleteServiceLinkedRoleResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Submits a service-linked role deletion request and returns a <code>DeletionTaskId</code>, which you can use to check the status of the deletion. Before you call this operation, confirm that the role has no active sessions and that any resources used by the role in the linked service are deleted. If you call this operation more than once for the same service-linked role and an earlier deletion task is not complete, then the <code>DeletionTaskId</code> of the earlier request is returned.</p> <p>If you submit a deletion request for a service-linked role whose linked service is still accessing a resource, then the deletion task fails. If it fails, the <a>GetServiceLinkedRoleDeletionStatus</a> API operation returns the reason for the failure, usually including the resources that must be deleted. To delete the service-linked role, you must first remove those resources from the linked service and then submit the deletion request again. Resources are specific to the service that is linked to the role. For more information about removing resources from a service, see the <a href=\"http://docs.aws.amazon.com/\">AWS documentation</a> for your service.</p> <p>For more information about service-linked roles, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role\">Roles Terms and Concepts: AWS Service-Linked Role</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DeleteServiceSpecificCredential": {
      "name": "DeleteServiceSpecificCredential",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteServiceSpecificCredentialRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        }
      ],
      "documentation": "<p>Deletes the specified service-specific credential.</p>"
    },
    "DeleteSigningCertificate": {
      "name": "DeleteSigningCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteSigningCertificateRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes a signing certificate associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated IAM users.</p>"
    },
    "DeleteUser": {
      "name": "DeleteUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUserRequest"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "DeleteConflictException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified IAM user. Unlike the AWS Management Console, when you delete a user programmatically, you must delete the items attached to the user manually, or the deletion fails. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli\">Deleting an IAM User</a>. Before attempting to delete a user, remove the following items:</p> <ul> <li> <p>Password (<a>DeleteLoginProfile</a>)</p> </li> <li> <p>Access keys (<a>DeleteAccessKey</a>)</p> </li> <li> <p>Signing certificate (<a>DeleteSigningCertificate</a>)</p> </li> <li> <p>SSH public key (<a>DeleteSSHPublicKey</a>)</p> </li> <li> <p>Git credentials (<a>DeleteServiceSpecificCredential</a>)</p> </li> <li> <p>Multi-factor authentication (MFA) device (<a>DeactivateMFADevice</a>, <a>DeleteVirtualMFADevice</a>)</p> </li> <li> <p>Inline policies (<a>DeleteUserPolicy</a>)</p> </li> <li> <p>Attached managed policies (<a>DetachUserPolicy</a>)</p> </li> <li> <p>Group memberships (<a>RemoveUserFromGroup</a>)</p> </li> </ul>"
    },
    "DeleteUserPermissionsBoundary": {
      "name": "DeleteUserPermissionsBoundary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUserPermissionsBoundaryRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the permissions boundary for the specified IAM user.</p> <important> <p>Deleting the permissions boundary for a user might increase its permissions by allowing the user to perform all the actions granted in its permissions policies. </p> </important>"
    },
    "DeleteUserPolicy": {
      "name": "DeleteUserPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteUserPolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes the specified inline policy that is embedded in the specified IAM user.</p> <p>A user can also have managed policies attached to it. To detach a managed policy from a user, use <a>DetachUserPolicy</a>. For more information about policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DeleteVirtualMFADevice": {
      "name": "DeleteVirtualMFADevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DeleteVirtualMFADeviceRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "DeleteConflictException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Deletes a virtual MFA device.</p> <note> <p> You must deactivate a user's virtual MFA device before you can delete it. For information about deactivating MFA devices, see <a>DeactivateMFADevice</a>. </p> </note>"
    },
    "DetachGroupPolicy": {
      "name": "DetachGroupPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetachGroupPolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the specified managed policy from the specified IAM group.</p> <p>A group can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteGroupPolicy</a> API. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DetachRolePolicy": {
      "name": "DetachRolePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetachRolePolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the specified managed policy from the specified role.</p> <p>A role can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteRolePolicy</a> API. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "DetachUserPolicy": {
      "name": "DetachUserPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "DetachUserPolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the specified managed policy from the specified user.</p> <p>A user can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteUserPolicy</a> API. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "EnableMFADevice": {
      "name": "EnableMFADevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "EnableMFADeviceRequest"
      },
      "errors": [
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "EntityTemporarilyUnmodifiableException"
        },
        {
          "shape": "InvalidAuthenticationCodeException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Enables the specified MFA device and associates it with the specified IAM user. When enabled, the MFA device is required for every subsequent login by the IAM user associated with the device.</p>"
    },
    "GenerateCredentialReport": {
      "name": "GenerateCredentialReport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "GenerateCredentialReportResponse",
        "resultWrapper": "GenerateCredentialReportResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p> Generates a credential report for the AWS account. For more information about the credential report, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html\">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GenerateOrganizationsAccessReport": {
      "name": "GenerateOrganizationsAccessReport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GenerateOrganizationsAccessReportRequest"
      },
      "output": {
        "shape": "GenerateOrganizationsAccessReportResponse",
        "resultWrapper": "GenerateOrganizationsAccessReportResult"
      },
      "errors": [
        {
          "shape": "ReportGenerationLimitExceededException"
        }
      ],
      "documentation": "<p>Generates a report for service last accessed data for AWS Organizations. You can generate a report for any entities (organization root, organizational unit, or account) or policies in your organization.</p> <p>To call this operation, you must be signed in using your AWS Organizations master account credentials. You can use your long-term IAM user or root user credentials, or temporary credentials from assuming an IAM role. SCPs must be enabled for your organization root. You must have the required IAM and AWS Organizations permissions. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Refining Permissions Using Service Last Accessed Data</a> in the <i>IAM User Guide</i>.</p> <p>You can generate a service last accessed data report for entities by specifying only the entity's path. This data includes a list of services that are allowed by any service control policies (SCPs) that apply to the entity.</p> <p>You can generate a service last accessed data report for a policy by specifying an entity's path and an optional AWS Organizations policy ID. This data includes a list of services that are allowed by the specified SCP.</p> <p>For each service in both report types, the data includes the most recent account activity that the policy allows to account principals in the entity or the entity's children. For important information about the data, reporting period, permissions required, troubleshooting, and supported Regions see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Reducing Permissions Using Service Last Accessed Data</a> in the <i>IAM User Guide</i>.</p> <important> <p>The data includes all attempts to access AWS, not just the successful ones. This includes all attempts that were made using the AWS Management Console, the AWS API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that an account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html\">Logging IAM Events with CloudTrail</a> in the <i>IAM User Guide</i>.</p> </important> <p>This operation returns a <code>JobId</code>. Use this parameter in the <code> <a>GetOrganizationsAccessReport</a> </code> operation to check the status of the report generation. To check the status of this request, use the <code>JobId</code> parameter in the <code> <a>GetOrganizationsAccessReport</a> </code> operation and test the <code>JobStatus</code> response parameter. When the job is complete, you can retrieve the report.</p> <p>To generate a service last accessed data report for entities, specify an entity path without specifying the optional AWS Organizations policy ID. The type of entity that you specify determines the data returned in the report.</p> <ul> <li> <p> <b>Root</b> – When you specify the organizations root as the entity, the resulting report lists all of the services allowed by SCPs that are attached to your root. For each service, the report includes data for all accounts in your organization except the master account, because the master account is not limited by SCPs.</p> </li> <li> <p> <b>OU</b> – When you specify an organizational unit (OU) as the entity, the resulting report lists all of the services allowed by SCPs that are attached to the OU and its parents. For each service, the report includes data for all accounts in the OU or its children. This data excludes the master account, because the master account is not limited by SCPs.</p> </li> <li> <p> <b>Master account</b> – When you specify the master account, the resulting report lists all AWS services, because the master account is not limited by SCPs. For each service, the report includes data for only the master account.</p> </li> <li> <p> <b>Account</b> – When you specify another account as the entity, the resulting report lists all of the services allowed by SCPs that are attached to the account and its parents. For each service, the report includes data for only the specified account.</p> </li> </ul> <p>To generate a service last accessed data report for policies, specify an entity path and the optional AWS Organizations policy ID. The type of entity that you specify determines the data returned for each service.</p> <ul> <li> <p> <b>Root</b> – When you specify the root entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for all accounts in your organization to which the SCP applies. This data excludes the master account, because the master account is not limited by SCPs. If the SCP is not attached to any entities in the organization, then the report will return a list of services with no data.</p> </li> <li> <p> <b>OU</b> – When you specify an OU entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for all accounts in the OU or its children to which the SCP applies. This means that other accounts outside the OU that are affected by the SCP might not be included in the data. This data excludes the master account, because the master account is not limited by SCPs. If the SCP is not attached to the OU or one of its children, the report will return a list of services with no data.</p> </li> <li> <p> <b>Master account</b> – When you specify the master account, the resulting report lists all AWS services, because the master account is not limited by SCPs. If you specify a policy ID in the CLI or API, the policy is ignored. For each service, the report includes data for only the master account.</p> </li> <li> <p> <b>Account</b> – When you specify another account entity and a policy ID, the resulting report lists all of the services that are allowed by the specified SCP. For each service, the report includes data for only the specified account. This means that other accounts in the organization that are affected by the SCP might not be included in the data. If the SCP is not attached to the account, the report will return a list of services with no data.</p> </li> </ul> <note> <p>Service last accessed data does not use other policy types when determining whether a principal could access a service. These other policy types include identity-based policies, resource-based policies, access control lists, IAM permissions boundaries, and STS assume role policies. It only applies SCP logic. For more about the evaluation of policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics\">Evaluating Policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>For more information about service last accessed data, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Reducing Policy Scope by Viewing User Activity</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GenerateServiceLastAccessedDetails": {
      "name": "GenerateServiceLastAccessedDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GenerateServiceLastAccessedDetailsRequest"
      },
      "output": {
        "shape": "GenerateServiceLastAccessedDetailsResponse",
        "resultWrapper": "GenerateServiceLastAccessedDetailsResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Generates a report that includes details about when an IAM resource (user, group, role, or policy) was last used in an attempt to access AWS services. Recent activity usually appears within four hours. IAM reports activity for the last 365 days, or less if your Region began supporting this feature within the last year. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions Where Data Is Tracked</a>.</p> <important> <p>The service last accessed data includes all attempts to access an AWS API, not just the successful ones. This includes all attempts that were made using the AWS Management Console, the AWS API through any of the SDKs, or any of the command line tools. An unexpected entry in the service last accessed data does not mean that your account has been compromised, because the request might have been denied. Refer to your CloudTrail logs as the authoritative source for information about all API calls and whether they were successful or denied access. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html\">Logging IAM Events with CloudTrail</a> in the <i>IAM User Guide</i>.</p> </important> <p>The <code>GenerateServiceLastAccessedDetails</code> operation returns a <code>JobId</code>. Use this parameter in the following operations to retrieve the following details from your report: </p> <ul> <li> <p> <a>GetServiceLastAccessedDetails</a> – Use this operation for users, groups, roles, or policies to list every AWS service that the resource could access using permissions policies. For each service, the response includes information about the most recent access attempt.</p> <p>The <code>JobId</code> returned by <code>GenerateServiceLastAccessedDetail</code> must be used by the same role within a session, or by the same user when used to call <code>GetServiceLastAccessedDetail</code>.</p> </li> <li> <p> <a>GetServiceLastAccessedDetailsWithEntities</a> – Use this operation for groups and policies to list information about the associated entities (users or roles) that attempted to access a specific AWS service. </p> </li> </ul> <p>To check the status of the <code>GenerateServiceLastAccessedDetails</code> request, use the <code>JobId</code> parameter in the same operations and test the <code>JobStatus</code> response parameter.</p> <p>For additional information about the permissions policies that allow an identity (user, group, or role) to access specific services, use the <a>ListPoliciesGrantingServiceAccess</a> operation.</p> <note> <p>Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, AWS Organizations policies, IAM permissions boundaries, and AWS STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics\">Evaluating Policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>For more information about service and action last accessed data, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Reducing Permissions Using Service Last Accessed Data</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GetAccessKeyLastUsed": {
      "name": "GetAccessKeyLastUsed",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAccessKeyLastUsedRequest"
      },
      "output": {
        "shape": "GetAccessKeyLastUsedResponse",
        "resultWrapper": "GetAccessKeyLastUsedResult"
      },
      "documentation": "<p>Retrieves information about when the specified access key was last used. The information includes the date and time of last use, along with the AWS service and Region that were specified in the last request made with that key.</p>"
    },
    "GetAccountAuthorizationDetails": {
      "name": "GetAccountAuthorizationDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetAccountAuthorizationDetailsRequest"
      },
      "output": {
        "shape": "GetAccountAuthorizationDetailsResponse",
        "resultWrapper": "GetAccountAuthorizationDetailsResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another. Use this API to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href=\"https://tools.ietf.org/html/rfc3986\">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>You can optionally filter the results using the <code>Filter</code> parameter. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "GetAccountPasswordPolicy": {
      "name": "GetAccountPasswordPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "GetAccountPasswordPolicyResponse",
        "resultWrapper": "GetAccountPasswordPolicyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the password policy for the AWS account. For more information about using a password policy, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html\">Managing an IAM Password Policy</a>.</p>"
    },
    "GetAccountSummary": {
      "name": "GetAccountSummary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "GetAccountSummaryResponse",
        "resultWrapper": "GetAccountSummaryResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves information about IAM entity usage and IAM quotas in the AWS account.</p> <p>The number and size of IAM resources in an AWS account are limited. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html\">IAM and STS Quotas</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GetContextKeysForCustomPolicy": {
      "name": "GetContextKeysForCustomPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetContextKeysForCustomPolicyRequest"
      },
      "output": {
        "shape": "GetContextKeysForPolicyResponse",
        "resultWrapper": "GetContextKeysForCustomPolicyResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value specified in an IAM policy. Use <code>GetContextKeysForCustomPolicy</code> to understand what key names and values you must supply when you call <a>SimulateCustomPolicy</a>. Note that all parameters are shown in unencoded form here for clarity but must be URL encoded to be included as a part of a real HTML request.</p>"
    },
    "GetContextKeysForPrincipalPolicy": {
      "name": "GetContextKeysForPrincipalPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetContextKeysForPrincipalPolicyRequest"
      },
      "output": {
        "shape": "GetContextKeysForPolicyResponse",
        "resultWrapper": "GetContextKeysForPrincipalPolicyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Gets a list of all of the context keys referenced in all the IAM policies that are attached to the specified IAM entity. The entity can be an IAM user, group, or role. If you specify a user, then the request also includes all of the policies attached to groups that the user is a member of.</p> <p>You can optionally include a list of one or more additional policies, specified as strings. If you want to include <i>only</i> a list of policies by string, use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. Context keys can be evaluated by testing against a value in an IAM policy. Use <a>GetContextKeysForPrincipalPolicy</a> to understand what key names and values you must supply when you call <a>SimulatePrincipalPolicy</a>.</p>"
    },
    "GetCredentialReport": {
      "name": "GetCredentialReport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "output": {
        "shape": "GetCredentialReportResponse",
        "resultWrapper": "GetCredentialReportResult"
      },
      "errors": [
        {
          "shape": "CredentialReportNotPresentException"
        },
        {
          "shape": "CredentialReportExpiredException"
        },
        {
          "shape": "CredentialReportNotReadyException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p> Retrieves a credential report for the AWS account. For more information about the credential report, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html\">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GetGroup": {
      "name": "GetGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetGroupRequest"
      },
      "output": {
        "shape": "GetGroupResponse",
        "resultWrapper": "GetGroupResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p> Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "GetGroupPolicy": {
      "name": "GetGroupPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetGroupPolicyRequest"
      },
      "output": {
        "shape": "GetGroupPolicyResponse",
        "resultWrapper": "GetGroupPolicyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the specified inline policy document that is embedded in the specified IAM group.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href=\"https://tools.ietf.org/html/rfc3986\">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM group can also have managed policies attached to it. To retrieve a managed policy document that is attached to a group, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GetInstanceProfile": {
      "name": "GetInstanceProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetInstanceProfileRequest"
      },
      "output": {
        "shape": "GetInstanceProfileResponse",
        "resultWrapper": "GetInstanceProfileResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p> Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role. For more information about instance profiles, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html\">About Instance Profiles</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GetLoginProfile": {
      "name": "GetLoginProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetLoginProfileRequest"
      },
      "output": {
        "shape": "GetLoginProfileResponse",
        "resultWrapper": "GetLoginProfileResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the user name and password-creation date for the specified IAM user. If the user has not been assigned a password, the operation returns a 404 (<code>NoSuchEntity</code>) error.</p>"
    },
    "GetOpenIDConnectProvider": {
      "name": "GetOpenIDConnectProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOpenIDConnectProviderRequest"
      },
      "output": {
        "shape": "GetOpenIDConnectProviderResponse",
        "resultWrapper": "GetOpenIDConnectProviderResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM.</p>"
    },
    "GetOrganizationsAccessReport": {
      "name": "GetOrganizationsAccessReport",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetOrganizationsAccessReportRequest"
      },
      "output": {
        "shape": "GetOrganizationsAccessReportResponse",
        "resultWrapper": "GetOrganizationsAccessReportResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        }
      ],
      "documentation": "<p>Retrieves the service last accessed data report for AWS Organizations that was previously generated using the <code> <a>GenerateOrganizationsAccessReport</a> </code> operation. This operation retrieves the status of your report job and the report contents.</p> <p>Depending on the parameters that you passed when you generated the report, the data returned could include different information. For details, see <a>GenerateOrganizationsAccessReport</a>.</p> <p>To call this operation, you must be signed in to the master account in your organization. SCPs must be enabled for your organization root. You must have permissions to perform this operation. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Refining Permissions Using Service Last Accessed Data</a> in the <i>IAM User Guide</i>.</p> <p>For each service that principals in an account (root users, IAM users, or IAM roles) could access using SCPs, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, it returns the reason that it failed.</p> <p>By default, the list is sorted by service namespace.</p>"
    },
    "GetPolicy": {
      "name": "GetPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPolicyRequest"
      },
      "output": {
        "shape": "GetPolicyResponse",
        "resultWrapper": "GetPolicyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API. This API returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use <a>GetPolicyVersion</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GetPolicyVersion": {
      "name": "GetPolicyVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetPolicyVersionRequest"
      },
      "output": {
        "shape": "GetPolicyVersionResponse",
        "resultWrapper": "GetPolicyVersionResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves information about the specified version of the specified managed policy, including the policy document.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href=\"https://tools.ietf.org/html/rfc3986\">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>To list the available versions for a policy, use <a>ListPolicyVersions</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded in a user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about the types of policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GetRole": {
      "name": "GetRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRoleRequest"
      },
      "output": {
        "shape": "GetRoleResponse",
        "resultWrapper": "GetRoleResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role. For more information about roles, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html\">Working with Roles</a>.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href=\"https://tools.ietf.org/html/rfc3986\">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note>"
    },
    "GetRolePolicy": {
      "name": "GetRolePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetRolePolicyRequest"
      },
      "output": {
        "shape": "GetRolePolicyResponse",
        "resultWrapper": "GetRolePolicyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the specified inline policy document that is embedded with the specified IAM role.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href=\"https://tools.ietf.org/html/rfc3986\">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM role can also have managed policies attached to it. To retrieve a managed policy document that is attached to a role, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about roles, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html\">Using Roles to Delegate Permissions and Federate Identities</a>.</p>"
    },
    "GetSAMLProvider": {
      "name": "GetSAMLProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSAMLProviderRequest"
      },
      "output": {
        "shape": "GetSAMLProviderResponse",
        "resultWrapper": "GetSAMLProviderResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated.</p> <note> <p>This operation requires <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p> </note>"
    },
    "GetSSHPublicKey": {
      "name": "GetSSHPublicKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetSSHPublicKeyRequest"
      },
      "output": {
        "shape": "GetSSHPublicKeyResponse",
        "resultWrapper": "GetSSHPublicKeyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "UnrecognizedPublicKeyEncodingException"
        }
      ],
      "documentation": "<p>Retrieves the specified SSH public key, including metadata about the key.</p> <p>The SSH public key retrieved by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html\">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
    },
    "GetServerCertificate": {
      "name": "GetServerCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServerCertificateRequest"
      },
      "output": {
        "shape": "GetServerCertificateResponse",
        "resultWrapper": "GetServerCertificateResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves information about the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic includes a list of AWS services that can use the server certificates that you manage with IAM.</p>"
    },
    "GetServiceLastAccessedDetails": {
      "name": "GetServiceLastAccessedDetails",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServiceLastAccessedDetailsRequest"
      },
      "output": {
        "shape": "GetServiceLastAccessedDetailsResponse",
        "resultWrapper": "GetServiceLastAccessedDetailsResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves a service last accessed report that was created using the <code>GenerateServiceLastAccessedDetails</code> operation. You can use the <code>JobId</code> parameter in <code>GetServiceLastAccessedDetails</code> to retrieve the status of your report job. When the report is complete, you can retrieve the generated report. The report includes a list of AWS services that the resource (user, group, role, or managed policy) can access.</p> <note> <p>Service last accessed data does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, AWS Organizations policies, IAM permissions boundaries, and AWS STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics\">Evaluating Policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>For each service that the resource could access using permissions policies, the operation returns details about the most recent access attempt. If there was no attempt, the service is listed without details about the most recent attempt to access the service. If the operation fails, the <code>GetServiceLastAccessedDetails</code> operation returns the reason that it failed.</p> <p>The <code>GetServiceLastAccessedDetails</code> operation returns a list of services. This list includes the number of entities that have attempted to access the service and the date and time of the last attempt. It also returns the ARN of the following entity, depending on the resource ARN that you used to generate the report:</p> <ul> <li> <p> <b>User</b> – Returns the user ARN that you used to generate the report</p> </li> <li> <p> <b>Group</b> – Returns the ARN of the group member (user) that last attempted to access the service</p> </li> <li> <p> <b>Role</b> – Returns the role ARN that you used to generate the report</p> </li> <li> <p> <b>Policy</b> – Returns the ARN of the user or role that last used the policy to attempt to access the service</p> </li> </ul> <p>By default, the list is sorted by service namespace.</p> <p>If you specified <code>ACTION_LEVEL</code> granularity when you generated the report, this operation returns service and action last accessed data. This includes the most recent access attempt for each tracked action within a service. Otherwise, this operation returns only service data.</p> <p>For more information about service and action last accessed data, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html\">Reducing Permissions Using Service Last Accessed Data</a> in the <i>IAM User Guide</i>.</p>"
    },
    "GetServiceLastAccessedDetailsWithEntities": {
      "name": "GetServiceLastAccessedDetailsWithEntities",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServiceLastAccessedDetailsWithEntitiesRequest"
      },
      "output": {
        "shape": "GetServiceLastAccessedDetailsWithEntitiesResponse",
        "resultWrapper": "GetServiceLastAccessedDetailsWithEntitiesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>After you generate a group or policy report using the <code>GenerateServiceLastAccessedDetails</code> operation, you can use the <code>JobId</code> parameter in <code>GetServiceLastAccessedDetailsWithEntities</code>. This operation retrieves the status of your report job and a list of entities that could have used group or policy permissions to access the specified service.</p> <ul> <li> <p> <b>Group</b> – For a group report, this operation returns a list of users in the group that could have used the group’s policies in an attempt to access the service.</p> </li> <li> <p> <b>Policy</b> – For a policy report, this operation returns a list of entities (users or roles) that could have used the policy in an attempt to access the service.</p> </li> </ul> <p>You can also use this operation for user or role reports to retrieve details about those entities.</p> <p>If the operation fails, the <code>GetServiceLastAccessedDetailsWithEntities</code> operation returns the reason that it failed.</p> <p>By default, the list of associated entities is sorted by date, with the most recent access listed first.</p>"
    },
    "GetServiceLinkedRoleDeletionStatus": {
      "name": "GetServiceLinkedRoleDeletionStatus",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetServiceLinkedRoleDeletionStatusRequest"
      },
      "output": {
        "shape": "GetServiceLinkedRoleDeletionStatusResponse",
        "resultWrapper": "GetServiceLinkedRoleDeletionStatusResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the status of your service-linked role deletion. After you use the <a>DeleteServiceLinkedRole</a> API operation to submit a service-linked role for deletion, you can use the <code>DeletionTaskId</code> parameter in <code>GetServiceLinkedRoleDeletionStatus</code> to check the status of the deletion. If the deletion fails, this operation returns the reason that it failed, if that information is returned by the service.</p>"
    },
    "GetUser": {
      "name": "GetUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetUserRequest"
      },
      "output": {
        "shape": "GetUserResponse",
        "resultWrapper": "GetUserResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID used to sign the request to this API.</p>"
    },
    "GetUserPolicy": {
      "name": "GetUserPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "GetUserPolicyRequest"
      },
      "output": {
        "shape": "GetUserPolicyResponse",
        "resultWrapper": "GetUserPolicyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Retrieves the specified inline policy document that is embedded in the specified IAM user.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href=\"https://tools.ietf.org/html/rfc3986\">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM user can also have managed policies attached to it. To retrieve a managed policy document that is attached to a user, use <a>GetPolicy</a> to determine the policy's default version. Then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "ListAccessKeys": {
      "name": "ListAccessKeys",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccessKeysRequest"
      },
      "output": {
        "shape": "ListAccessKeysResponse",
        "resultWrapper": "ListAccessKeysResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Returns information about the access key IDs associated with the specified IAM user. If there is none, the operation returns an empty list.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p> <note> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation.</p> </note>"
    },
    "ListAccountAliases": {
      "name": "ListAccountAliases",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAccountAliasesRequest"
      },
      "output": {
        "shape": "ListAccountAliasesResponse",
        "resultWrapper": "ListAccountAliasesResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the account alias associated with the AWS account (Note: you can have only one). For information about using an AWS account alias, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html\">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>"
    },
    "ListAttachedGroupPolicies": {
      "name": "ListAttachedGroupPolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAttachedGroupPoliciesRequest"
      },
      "output": {
        "shape": "ListAttachedGroupPoliciesResponse",
        "resultWrapper": "ListAttachedGroupPoliciesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists all managed policies that are attached to the specified IAM group.</p> <p>An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use the <a>ListGroupPolicies</a> API. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.</p>"
    },
    "ListAttachedRolePolicies": {
      "name": "ListAttachedRolePolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAttachedRolePoliciesRequest"
      },
      "output": {
        "shape": "ListAttachedRolePoliciesResponse",
        "resultWrapper": "ListAttachedRolePoliciesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists all managed policies that are attached to the specified IAM role.</p> <p>An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use the <a>ListRolePolicies</a> API. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the operation returns an empty list.</p>"
    },
    "ListAttachedUserPolicies": {
      "name": "ListAttachedUserPolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListAttachedUserPoliciesRequest"
      },
      "output": {
        "shape": "ListAttachedUserPoliciesResponse",
        "resultWrapper": "ListAttachedUserPoliciesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists all managed policies that are attached to the specified IAM user.</p> <p>An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use the <a>ListUserPolicies</a> API. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the operation returns an empty list.</p>"
    },
    "ListEntitiesForPolicy": {
      "name": "ListEntitiesForPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListEntitiesForPolicyRequest"
      },
      "output": {
        "shape": "ListEntitiesForPolicyResponse",
        "resultWrapper": "ListEntitiesForPolicyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists all IAM users, groups, and roles that the specified managed policy is attached to.</p> <p>You can use the optional <code>EntityFilter</code> parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set <code>EntityFilter</code> to <code>Role</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListGroupPolicies": {
      "name": "ListGroupPolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGroupPoliciesRequest"
      },
      "output": {
        "shape": "ListGroupPoliciesResponse",
        "resultWrapper": "ListGroupPoliciesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the names of the inline policies that are embedded in the specified IAM group.</p> <p>An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use <a>ListAttachedGroupPolicies</a>. For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified group, the operation returns an empty list.</p>"
    },
    "ListGroups": {
      "name": "ListGroups",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGroupsRequest"
      },
      "output": {
        "shape": "ListGroupsResponse",
        "resultWrapper": "ListGroupsResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the IAM groups that have the specified path prefix.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListGroupsForUser": {
      "name": "ListGroupsForUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListGroupsForUserRequest"
      },
      "output": {
        "shape": "ListGroupsForUserResponse",
        "resultWrapper": "ListGroupsForUserResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the IAM groups that the specified IAM user belongs to.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListInstanceProfiles": {
      "name": "ListInstanceProfiles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListInstanceProfilesRequest"
      },
      "output": {
        "shape": "ListInstanceProfilesResponse",
        "resultWrapper": "ListInstanceProfilesResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the instance profiles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about instance profiles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html\">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListInstanceProfilesForRole": {
      "name": "ListInstanceProfilesForRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListInstanceProfilesForRoleRequest"
      },
      "output": {
        "shape": "ListInstanceProfilesForRoleResponse",
        "resultWrapper": "ListInstanceProfilesForRoleResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the instance profiles that have the specified associated IAM role. If there are none, the operation returns an empty list. For more information about instance profiles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html\">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListMFADevices": {
      "name": "ListMFADevices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListMFADevicesRequest"
      },
      "output": {
        "shape": "ListMFADevicesResponse",
        "resultWrapper": "ListMFADevicesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this operation lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this API.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListOpenIDConnectProviders": {
      "name": "ListOpenIDConnectProviders",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListOpenIDConnectProvidersRequest"
      },
      "output": {
        "shape": "ListOpenIDConnectProvidersResponse",
        "resultWrapper": "ListOpenIDConnectProvidersResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the AWS account.</p>"
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
        "shape": "ListPoliciesResponse",
        "resultWrapper": "ListPoliciesResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies.</p> <p>You can filter the list of policies that is returned using the optional <code>OnlyAttached</code>, <code>Scope</code>, and <code>PathPrefix</code> parameters. For example, to list only the customer managed policies in your AWS account, set <code>Scope</code> to <code>Local</code>. To list only AWS managed policies, set <code>Scope</code> to <code>AWS</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about managed policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "ListPoliciesGrantingServiceAccess": {
      "name": "ListPoliciesGrantingServiceAccess",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPoliciesGrantingServiceAccessRequest"
      },
      "output": {
        "shape": "ListPoliciesGrantingServiceAccessResponse",
        "resultWrapper": "ListPoliciesGrantingServiceAccessResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        }
      ],
      "documentation": "<p>Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service.</p> <note> <p>This operation does not use other policy types when determining whether a resource could access a service. These other policy types include resource-based policies, access control lists, AWS Organizations policies, IAM permissions boundaries, and AWS STS assume role policies. It only applies permissions policy logic. For more about the evaluation of policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics\">Evaluating Policies</a> in the <i>IAM User Guide</i>.</p> </note> <p>The list of policies returned by the operation depends on the ARN of the identity that you provide.</p> <ul> <li> <p> <b>User</b> – The list of policies includes the managed and inline policies that are attached to the user directly. The list also includes any additional managed and inline policies that are attached to the group to which the user belongs. </p> </li> <li> <p> <b>Group</b> – The list of policies includes only the managed and inline policies that are attached to the group directly. Policies that are attached to the group’s user are not included.</p> </li> <li> <p> <b>Role</b> – The list of policies includes only the managed and inline policies that are attached to the role.</p> </li> </ul> <p>For each managed policy, this operation returns the ARN and policy name. For each inline policy, it returns the policy name and the entity to which it is attached. Inline policies do not have an ARN. For more information about these policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>Policies that are attached to users and roles as permissions boundaries are not returned. To view which managed policy is currently used to set the permissions boundary for a user or role, use the <a>GetUser</a> or <a>GetRole</a> operations.</p>"
    },
    "ListPolicyVersions": {
      "name": "ListPolicyVersions",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListPolicyVersionsRequest"
      },
      "output": {
        "shape": "ListPolicyVersionsResponse",
        "resultWrapper": "ListPolicyVersionsResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version.</p> <p>For more information about managed policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "ListRolePolicies": {
      "name": "ListRolePolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRolePoliciesRequest"
      },
      "output": {
        "shape": "ListRolePoliciesResponse",
        "resultWrapper": "ListRolePoliciesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the names of the inline policies that are embedded in the specified IAM role.</p> <p>An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use <a>ListAttachedRolePolicies</a>. For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified role, the operation returns an empty list.</p>"
    },
    "ListRoleTags": {
      "name": "ListRoleTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRoleTagsRequest"
      },
      "output": {
        "shape": "ListRoleTagsResponse",
        "resultWrapper": "ListRoleTagsResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the tags that are attached to the specified role. The returned list of tags is sorted by tag key. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
    },
    "ListRoles": {
      "name": "ListRoles",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListRolesRequest"
      },
      "output": {
        "shape": "ListRolesResponse",
        "resultWrapper": "ListRolesResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the IAM roles that have the specified path prefix. If there are none, the operation returns an empty list. For more information about roles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html\">Working with Roles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListSAMLProviders": {
      "name": "ListSAMLProviders",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSAMLProvidersRequest"
      },
      "output": {
        "shape": "ListSAMLProvidersResponse",
        "resultWrapper": "ListSAMLProvidersResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the SAML provider resource objects defined in IAM in the account.</p> <note> <p> This operation requires <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p> </note>"
    },
    "ListSSHPublicKeys": {
      "name": "ListSSHPublicKeys",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSSHPublicKeysRequest"
      },
      "output": {
        "shape": "ListSSHPublicKeysResponse",
        "resultWrapper": "ListSSHPublicKeysResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        }
      ],
      "documentation": "<p>Returns information about the SSH public keys associated with the specified IAM user. If none exists, the operation returns an empty list.</p> <p>The SSH public keys returned by this operation are used only for authenticating the IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html\">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListServerCertificates": {
      "name": "ListServerCertificates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServerCertificatesRequest"
      },
      "output": {
        "shape": "ListServerCertificatesResponse",
        "resultWrapper": "ListServerCertificatesResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the operation returns an empty list.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about working with server certificates, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p>"
    },
    "ListServiceSpecificCredentials": {
      "name": "ListServiceSpecificCredentials",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListServiceSpecificCredentialsRequest"
      },
      "output": {
        "shape": "ListServiceSpecificCredentialsResponse",
        "resultWrapper": "ListServiceSpecificCredentialsResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceNotSupportedException"
        }
      ],
      "documentation": "<p>Returns information about the service-specific credentials associated with the specified IAM user. If none exists, the operation returns an empty list. The service-specific credentials returned by this operation are used only for authenticating the IAM user to a specific service. For more information about using service-specific credentials to authenticate to an AWS service, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html\">Set Up service-specific credentials</a> in the AWS CodeCommit User Guide.</p>"
    },
    "ListSigningCertificates": {
      "name": "ListSigningCertificates",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListSigningCertificatesRequest"
      },
      "output": {
        "shape": "ListSigningCertificatesResponse",
        "resultWrapper": "ListSigningCertificatesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Returns information about the signing certificates associated with the specified IAM user. If none exists, the operation returns an empty list.</p> <p>Although each user is limited to a small number of signing certificates, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request for this API. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p>"
    },
    "ListUserPolicies": {
      "name": "ListUserPolicies",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListUserPoliciesRequest"
      },
      "output": {
        "shape": "ListUserPoliciesResponse",
        "resultWrapper": "ListUserPoliciesResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the names of the inline policies embedded in the specified IAM user.</p> <p>An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use <a>ListAttachedUserPolicies</a>. For more information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified user, the operation returns an empty list.</p>"
    },
    "ListUserTags": {
      "name": "ListUserTags",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListUserTagsRequest"
      },
      "output": {
        "shape": "ListUserTagsResponse",
        "resultWrapper": "ListUserTagsResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the tags that are attached to the specified user. The returned list of tags is sorted by tag key. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
    },
    "ListUsers": {
      "name": "ListUsers",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListUsersRequest"
      },
      "output": {
        "shape": "ListUsersResponse",
        "resultWrapper": "ListUsersResult"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Lists the IAM users that have the specified path prefix. If no path prefix is specified, the operation returns all users in the AWS account. If there are none, the operation returns an empty list.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "ListVirtualMFADevices": {
      "name": "ListVirtualMFADevices",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ListVirtualMFADevicesRequest"
      },
      "output": {
        "shape": "ListVirtualMFADevicesResponse",
        "resultWrapper": "ListVirtualMFADevicesResult"
      },
      "documentation": "<p>Lists the virtual MFA devices defined in the AWS account by assignment status. If you do not specify an assignment status, the operation returns a list of all virtual MFA devices. Assignment status can be <code>Assigned</code>, <code>Unassigned</code>, or <code>Any</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>"
    },
    "PutGroupPolicy": {
      "name": "PutGroupPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutGroupPolicyRequest"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds or updates an inline policy document that is embedded in the specified IAM group.</p> <p>A user can also have managed policies attached to it. To attach a managed policy to a group, use <a>AttachGroupPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a group, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html\">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutGroupPolicy</code>. For general information about using the Query API with IAM, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html\">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>"
    },
    "PutRolePermissionsBoundary": {
      "name": "PutRolePermissionsBoundary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRolePermissionsBoundaryRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "PolicyNotAttachableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds or updates the policy that is specified as the IAM role's permissions boundary. You can use an AWS managed policy or a customer managed policy to set the boundary for a role. Use the boundary to control the maximum permissions that the role can have. Setting a permissions boundary is an advanced feature that can affect the permissions for the role.</p> <p>You cannot set the boundary for a service-linked role. </p> <important> <p>Policies used as permissions boundaries do not provide permissions. You must also attach a permissions policy to the role. To learn how the effective permissions for a role are evaluated, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html\">IAM JSON Policy Evaluation Logic</a> in the IAM User Guide. </p> </important>"
    },
    "PutRolePolicy": {
      "name": "PutRolePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutRolePolicyRequest"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds or updates an inline policy document that is embedded in the specified IAM role.</p> <p>When you embed an inline policy in a role, the inline policy is used as part of the role's access (permissions) policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>. For more information about IAM roles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html\">Using Roles to Delegate Permissions and Federate Identities</a>.</p> <p>A role can also have a managed policy attached to it. To attach a managed policy to a role, use <a>AttachRolePolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed with a role, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html\">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutRolePolicy</code>. For general information about using the Query API with IAM, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html\">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>"
    },
    "PutUserPermissionsBoundary": {
      "name": "PutUserPermissionsBoundary",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutUserPermissionsBoundaryRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyNotAttachableException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds or updates the policy that is specified as the IAM user's permissions boundary. You can use an AWS managed policy or a customer managed policy to set the boundary for a user. Use the boundary to control the maximum permissions that the user can have. Setting a permissions boundary is an advanced feature that can affect the permissions for the user.</p> <important> <p>Policies that are used as permissions boundaries do not provide permissions. You must also attach a permissions policy to the user. To learn how the effective permissions for a user are evaluated, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html\">IAM JSON Policy Evaluation Logic</a> in the IAM User Guide. </p> </important>"
    },
    "PutUserPolicy": {
      "name": "PutUserPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "PutUserPolicyRequest"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds or updates an inline policy document that is embedded in the specified IAM user.</p> <p>An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use <a>AttachUserPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a user, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html\">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutUserPolicy</code>. For general information about using the Query API with IAM, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html\">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>"
    },
    "RemoveClientIDFromOpenIDConnectProvider": {
      "name": "RemoveClientIDFromOpenIDConnectProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveClientIDFromOpenIDConnectProviderRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object.</p> <p>This operation is idempotent; it does not fail or return an error if you try to remove a client ID that does not exist.</p>"
    },
    "RemoveRoleFromInstanceProfile": {
      "name": "RemoveRoleFromInstanceProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveRoleFromInstanceProfileRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the specified IAM role from the specified EC2 instance profile.</p> <important> <p>Make sure that you do not have any Amazon EC2 instances running with the role you are about to remove from the instance profile. Removing a role from an instance profile that is associated with a running instance might break any applications running on the instance.</p> </important> <p> For more information about IAM roles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html\">Working with Roles</a>. For more information about instance profiles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html\">About Instance Profiles</a>.</p>"
    },
    "RemoveUserFromGroup": {
      "name": "RemoveUserFromGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "RemoveUserFromGroupRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the specified user from the specified group.</p>"
    },
    "ResetServiceSpecificCredential": {
      "name": "ResetServiceSpecificCredential",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResetServiceSpecificCredentialRequest"
      },
      "output": {
        "shape": "ResetServiceSpecificCredentialResponse",
        "resultWrapper": "ResetServiceSpecificCredentialResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        }
      ],
      "documentation": "<p>Resets the password for a service-specific credential. The new password is AWS generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.</p>"
    },
    "ResyncMFADevice": {
      "name": "ResyncMFADevice",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "ResyncMFADeviceRequest"
      },
      "errors": [
        {
          "shape": "InvalidAuthenticationCodeException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Synchronizes the specified MFA device with its IAM resource object on the AWS servers.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html\">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p>"
    },
    "SetDefaultPolicyVersion": {
      "name": "SetDefaultPolicyVersion",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SetDefaultPolicyVersionRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Sets the specified version of the specified policy as the policy's default (operative) version.</p> <p>This operation affects all users, groups, and roles that the policy is attached to. To list the users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API.</p> <p>For information about managed policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
    },
    "SetSecurityTokenServicePreferences": {
      "name": "SetSecurityTokenServicePreferences",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SetSecurityTokenServicePreferencesRequest"
      },
      "errors": [
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Sets the specified version of the global endpoint token as the token version used for the AWS account.</p> <p>By default, AWS Security Token Service (STS) is available as a global service, and all STS requests go to a single endpoint at <code>https://sts.amazonaws.com</code>. AWS recommends using Regional STS endpoints to reduce latency, build in redundancy, and increase session token availability. For information about Regional endpoints for STS, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region\">AWS Regions and Endpoints</a> in the <i>AWS General Reference</i>.</p> <p>If you make an STS call to the global endpoint, the resulting session tokens might be valid in some Regions but not others. It depends on the version that is set in this operation. Version 1 tokens are valid only in AWS Regions that are available by default. These tokens do not work in manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However, version 2 tokens are longer and might affect systems where you temporarily store tokens. For information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html\">Activating and Deactivating STS in an AWS Region</a> in the <i>IAM User Guide</i>.</p> <p>To view the current session token version, see the <code>GlobalEndpointTokenVersion</code> entry in the response of the <a>GetAccountSummary</a> operation.</p>"
    },
    "SimulateCustomPolicy": {
      "name": "SimulateCustomPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SimulateCustomPolicyRequest"
      },
      "output": {
        "shape": "SimulatePolicyResponse",
        "resultWrapper": "SimulateCustomPolicyResult"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyEvaluationException"
        }
      ],
      "documentation": "<p>Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and AWS resources to determine the policies' effective permissions. The policies are provided as strings.</p> <p>The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations.</p> <p>If you want to simulate existing policies that are attached to an IAM user, group, or role, use <a>SimulatePrincipalPolicy</a> instead.</p> <p>Context keys are variables that are maintained by AWS and its services and which provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForCustomPolicy</a>.</p> <p>If the output is long, you can use <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>"
    },
    "SimulatePrincipalPolicy": {
      "name": "SimulatePrincipalPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "SimulatePrincipalPolicyRequest"
      },
      "output": {
        "shape": "SimulatePolicyResponse",
        "resultWrapper": "SimulatePrincipalPolicyResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "PolicyEvaluationException"
        }
      ],
      "documentation": "<p>Simulate how a set of IAM policies attached to an IAM entity works with a list of API operations and AWS resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to.</p> <p>You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use <a>SimulateCustomPolicy</a> instead.</p> <p>You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation.</p> <p>The simulation does not perform the API operations; it only checks the authorization to determine if the simulated policies allow or deny the operations.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>SimulateCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>If the output is long, you can use the <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>"
    },
    "TagRole": {
      "name": "TagRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagRoleRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds one or more tags to an IAM role. The role can be a regular role or a service-linked role. If a tag with the same key name already exists, then that tag is overwritten with the new value.</p> <p>A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:</p> <ul> <li> <p> <b>Administrative grouping and discovery</b> - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name <i>Project</i> and the value <i>MyImportantProject</i>. Or search for all resources with the key name <i>Cost Center</i> and the value <i>41200</i>. </p> </li> <li> <p> <b>Access control</b> - Reference tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM user or role that has a specified tag attached. You can also restrict access to only those resources that have a certain tag attached. For examples of policies that show how to use tags to control access, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\">Control Access Using IAM Tags</a> in the <i>IAM User Guide</i>.</p> </li> <li> <p> <b>Cost allocation</b> - Use tags to help track which individuals and teams are using which AWS resources.</p> </li> </ul> <note> <ul> <li> <p>Make sure that you have no invalid tags and that you do not exceed the allowed number of tags per role. In either case, the entire request fails and <i>no</i> tags are added to the role.</p> </li> <li> <p>AWS always interprets the tag <code>Value</code> as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.</p> </li> </ul> </note> <p>For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
    },
    "TagUser": {
      "name": "TagUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "TagUserRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Adds one or more tags to an IAM user. If a tag with the same key name already exists, then that tag is overwritten with the new value.</p> <p>A tag consists of a key name and an associated value. By assigning tags to your resources, you can do the following:</p> <ul> <li> <p> <b>Administrative grouping and discovery</b> - Attach tags to resources to aid in organization and search. For example, you could search for all resources with the key name <i>Project</i> and the value <i>MyImportantProject</i>. Or search for all resources with the key name <i>Cost Center</i> and the value <i>41200</i>. </p> </li> <li> <p> <b>Access control</b> - Reference tags in IAM user-based and resource-based policies. You can use tags to restrict access to only an IAM requesting user or to a role that has a specified tag attached. You can also restrict access to only those resources that have a certain tag attached. For examples of policies that show how to use tags to control access, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html\">Control Access Using IAM Tags</a> in the <i>IAM User Guide</i>.</p> </li> <li> <p> <b>Cost allocation</b> - Use tags to help track which individuals and teams are using which AWS resources.</p> </li> </ul> <note> <ul> <li> <p>Make sure that you have no invalid tags and that you do not exceed the allowed number of tags per role. In either case, the entire request fails and <i>no</i> tags are added to the role.</p> </li> <li> <p>AWS always interprets the tag <code>Value</code> as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.</p> </li> </ul> </note> <p>For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
    },
    "UntagRole": {
      "name": "UntagRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagRoleRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the specified tags from the role. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
    },
    "UntagUser": {
      "name": "UntagUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UntagUserRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Removes the specified tags from the user. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
    },
    "UpdateAccessKey": {
      "name": "UpdateAccessKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAccessKeyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Changes the status of the specified access key from Active to Inactive, or vice versa. This operation can be used to disable a user's key as part of a key rotation workflow.</p> <p>If the <code>UserName</code> is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p> <p>For information about rotating keys, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html\">Managing Keys and Certificates</a> in the <i>IAM User Guide</i>.</p>"
    },
    "UpdateAccountPasswordPolicy": {
      "name": "UpdateAccountPasswordPolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAccountPasswordPolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the password policy settings for the AWS account.</p> <note> <ul> <li> <p>This operation does not support partial updates. No parameters are required, but if you do not specify a parameter, that parameter's value reverts to its default value. See the <b>Request Parameters</b> section for each parameter's default value. Also note that some parameters do not allow the default parameter to be explicitly set. Instead, to invoke the default value, do not include that parameter when you invoke the operation.</p> </li> </ul> </note> <p> For more information about using a password policy, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html\">Managing an IAM Password Policy</a> in the <i>IAM User Guide</i>.</p>"
    },
    "UpdateAssumeRolePolicy": {
      "name": "UpdateAssumeRolePolicy",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateAssumeRolePolicyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "MalformedPolicyDocumentException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the policy that grants an IAM entity permission to assume a role. This is typically referred to as the \"role trust policy\". For more information about roles, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html\">Using Roles to Delegate Permissions and Federate Identities</a>.</p>"
    },
    "UpdateGroup": {
      "name": "UpdateGroup",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateGroupRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the name and/or the path of the specified IAM group.</p> <important> <p> You should understand the implications of changing a group's path or name. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html\">Renaming Users and Groups</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>The person making the request (the principal), must have permission to change the role group with the old name and the new name. For example, to change the group named <code>Managers</code> to <code>MGRs</code>, the principal must have a policy that allows them to update both groups. If the principal has permission to update the <code>Managers</code> group, but not the <code>MGRs</code> group, then the update fails. For more information about permissions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html\">Access Management</a>. </p> </note>"
    },
    "UpdateLoginProfile": {
      "name": "UpdateLoginProfile",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateLoginProfileRequest"
      },
      "errors": [
        {
          "shape": "EntityTemporarilyUnmodifiableException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "PasswordPolicyViolationException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Changes the password for the specified IAM user.</p> <p>IAM users can change their own passwords by calling <a>ChangePassword</a>. For more information about modifying passwords, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html\">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>"
    },
    "UpdateOpenIDConnectProviderThumbprint": {
      "name": "UpdateOpenIDConnectProviderThumbprint",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateOpenIDConnectProviderThumbprintRequest"
      },
      "errors": [
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.</p> <p>The list that you pass with this operation completely replaces the existing list of thumbprints. (The lists are not merged.)</p> <p>Typically, you need to update a thumbprint only when the identity provider's certificate changes, which occurs rarely. However, if the provider's certificate <i>does</i> change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.</p> <note> <p>Trust for the OIDC provider is derived from the provider's certificate and is validated by the thumbprint. Therefore, it is best to limit access to the <code>UpdateOpenIDConnectProviderThumbprint</code> operation to highly privileged users.</p> </note>"
    },
    "UpdateRole": {
      "name": "UpdateRole",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRoleRequest"
      },
      "output": {
        "shape": "UpdateRoleResponse",
        "resultWrapper": "UpdateRoleResult"
      },
      "errors": [
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the description or maximum session duration setting of a role.</p>"
    },
    "UpdateRoleDescription": {
      "name": "UpdateRoleDescription",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateRoleDescriptionRequest"
      },
      "output": {
        "shape": "UpdateRoleDescriptionResponse",
        "resultWrapper": "UpdateRoleDescriptionResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "UnmodifiableEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Use <a>UpdateRole</a> instead.</p> <p>Modifies only the description of a role. This operation performs the same function as the <code>Description</code> parameter in the <code>UpdateRole</code> operation.</p>"
    },
    "UpdateSAMLProvider": {
      "name": "UpdateSAMLProvider",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateSAMLProviderRequest"
      },
      "output": {
        "shape": "UpdateSAMLProviderResponse",
        "resultWrapper": "UpdateSAMLProviderResult"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidInputException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the metadata document for an existing SAML provider resource object.</p> <note> <p>This operation requires <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4</a>.</p> </note>"
    },
    "UpdateSSHPublicKey": {
      "name": "UpdateSSHPublicKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateSSHPublicKeyRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        }
      ],
      "documentation": "<p>Sets the status of an IAM user's SSH public key to active or inactive. SSH public keys that are inactive cannot be used for authentication. This operation can be used to disable a user's SSH public key as part of a key rotation work flow.</p> <p>The SSH public key affected by this operation is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html\">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
    },
    "UpdateServerCertificate": {
      "name": "UpdateServerCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServerCertificateRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the name and/or the path of the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic also includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <important> <p>You should understand the implications of changing a server certificate's path or name. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts\">Renaming a Server Certificate</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>The person making the request (the principal), must have permission to change the server certificate with the old name and the new name. For example, to change the certificate named <code>ProductionCert</code> to <code>ProdCert</code>, the principal must have a policy that allows them to update both certificates. If the principal has permission to update the <code>ProductionCert</code> group, but not the <code>ProdCert</code> certificate, then the update fails. For more information about permissions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html\">Access Management</a> in the <i>IAM User Guide</i>.</p> </note>"
    },
    "UpdateServiceSpecificCredential": {
      "name": "UpdateServiceSpecificCredential",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateServiceSpecificCredentialRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        }
      ],
      "documentation": "<p>Sets the status of a service-specific credential to <code>Active</code> or <code>Inactive</code>. Service-specific credentials that are inactive cannot be used for authentication to the service. This operation can be used to disable a user's service-specific credential as part of a credential rotation work flow.</p>"
    },
    "UpdateSigningCertificate": {
      "name": "UpdateSigningCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateSigningCertificateRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Changes the status of the specified user signing certificate from active to disabled, or vice versa. This operation can be used to disable an IAM user's signing certificate as part of a certificate rotation work flow.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p>"
    },
    "UpdateUser": {
      "name": "UpdateUser",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UpdateUserRequest"
      },
      "errors": [
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "EntityTemporarilyUnmodifiableException"
        },
        {
          "shape": "ConcurrentModificationException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Updates the name and/or the path of the specified IAM user.</p> <important> <p> You should understand the implications of changing an IAM user's path or name. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming\">Renaming an IAM User</a> and <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html\">Renaming an IAM Group</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p> To change a user name, the requester must have appropriate permissions on both the source object and the target object. For example, to change Bob to Robert, the entity making the request must have permission on Bob and Robert, or must have permission on all (*). For more information about permissions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html\">Permissions and Policies</a>. </p> </note>"
    },
    "UploadSSHPublicKey": {
      "name": "UploadSSHPublicKey",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UploadSSHPublicKeyRequest"
      },
      "output": {
        "shape": "UploadSSHPublicKeyResponse",
        "resultWrapper": "UploadSSHPublicKeyResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "InvalidPublicKeyException"
        },
        {
          "shape": "DuplicateSSHPublicKeyException"
        },
        {
          "shape": "UnrecognizedPublicKeyEncodingException"
        }
      ],
      "documentation": "<p>Uploads an SSH public key and associates it with the specified IAM user.</p> <p>The SSH public key uploaded by this operation can be used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html\">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>"
    },
    "UploadServerCertificate": {
      "name": "UploadServerCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UploadServerCertificateRequest"
      },
      "output": {
        "shape": "UploadServerCertificateResponse",
        "resultWrapper": "UploadServerCertificateResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "MalformedCertificateException"
        },
        {
          "shape": "KeyPairMismatchException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.</p> <p>We recommend that you use <a href=\"https://docs.aws.amazon.com/acm/\">AWS Certificate Manager</a> to provision, manage, and deploy your server certificates. With ACM you can request a certificate, deploy it to AWS resources, and let ACM handle certificate renewals for you. Certificates provided by ACM are free. For more information about using ACM, see the <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/\">AWS Certificate Manager User Guide</a>.</p> <p>For more information about working with server certificates, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html\">Working with Server Certificates</a> in the <i>IAM User Guide</i>. This topic includes a list of AWS services that can use the server certificates that you manage with IAM.</p> <p>For information about the number of server certificates you can upload, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html\">Limitations on IAM Entities and Objects</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because the body of the public key certificate, private key, and the certificate chain can be large, you should use POST rather than GET when calling <code>UploadServerCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href=\"https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html\">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html\">Calling the API by Making HTTP Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>"
    },
    "UploadSigningCertificate": {
      "name": "UploadSigningCertificate",
      "http": {
        "method": "POST",
        "requestUri": "/"
      },
      "input": {
        "shape": "UploadSigningCertificateRequest"
      },
      "output": {
        "shape": "UploadSigningCertificateResponse",
        "resultWrapper": "UploadSigningCertificateResult"
      },
      "errors": [
        {
          "shape": "LimitExceededException"
        },
        {
          "shape": "EntityAlreadyExistsException"
        },
        {
          "shape": "MalformedCertificateException"
        },
        {
          "shape": "InvalidCertificateException"
        },
        {
          "shape": "DuplicateCertificateException"
        },
        {
          "shape": "NoSuchEntityException"
        },
        {
          "shape": "ServiceFailureException"
        }
      ],
      "documentation": "<p>Uploads an X.509 signing certificate and associates it with the specified IAM user. Some AWS services use X.509 signing certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is <code>Active</code>.</p> <p>If the <code>UserName</code> is not specified, the IAM user name is determined implicitly based on the AWS access key ID used to sign the request. This operation works for access keys under the AWS account. Consequently, you can use this operation to manage AWS account root user credentials even if the AWS account has no associated users.</p> <note> <p>Because the body of an X.509 certificate can be large, you should use POST rather than GET when calling <code>UploadSigningCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href=\"https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html\">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html\">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>"
    }
  },
  "shapes": {
    "AccessAdvisorUsageGranularityType": {
      "type": "string",
      "enum": [
        "SERVICE_LEVEL",
        "ACTION_LEVEL"
      ]
    },
    "AccessDetail": {
      "type": "structure",
      "required": [
        "ServiceName",
        "ServiceNamespace"
      ],
      "members": {
        "ServiceName": {
          "shape": "serviceNameType",
          "documentation": "<p>The name of the service in which access was attempted.</p>"
        },
        "ServiceNamespace": {
          "shape": "serviceNamespaceType",
          "documentation": "<p>The namespace of the service in which access was attempted.</p> <p>To learn the service namespace of a service, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html\">Actions, Resources, and Condition Keys for AWS Services</a> in the <i>IAM User Guide</i>. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, <code>(service prefix: a4b)</code>. For more information about service namespaces, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "Region": {
          "shape": "stringType",
          "documentation": "<p>The Region where the last service access attempt occurred.</p> <p>This field is null if no principals in the reported Organizations entity attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        },
        "EntityPath": {
          "shape": "organizationsEntityPathType",
          "documentation": "<p>The path of the Organizations entity (root, organizational unit, or account) from which an authenticated principal last attempted to access the service. AWS does not report unauthenticated requests.</p> <p>This field is null if no principals (IAM users, IAM roles, or root users) in the reported Organizations entity attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        },
        "LastAuthenticatedTime": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when an authenticated principal most recently attempted to access the service. AWS does not report unauthenticated requests.</p> <p>This field is null if no principals in the reported Organizations entity attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        },
        "TotalAuthenticatedEntities": {
          "shape": "integerType",
          "documentation": "<p>The number of accounts with authenticated principals (root users, IAM users, and IAM roles) that attempted to access the service in the reporting period.</p>"
        }
      },
      "documentation": "<p>An object that contains details about when a principal in the reported AWS Organizations entity last attempted to access an AWS service. A principal can be an IAM user, an IAM role, or the AWS account root user within the reported Organizations entity.</p> <p>This data type is a response element in the <a>GetOrganizationsAccessReport</a> operation.</p>"
    },
    "AccessDetails": {
      "type": "list",
      "member": {
        "shape": "AccessDetail"
      }
    },
    "AccessKey": {
      "type": "structure",
      "required": [
        "UserName",
        "AccessKeyId",
        "Status",
        "SecretAccessKey"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user that the access key is associated with.</p>"
        },
        "AccessKeyId": {
          "shape": "accessKeyIdType",
          "documentation": "<p>The ID for this access key.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status of the access key. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not. </p>"
        },
        "SecretAccessKey": {
          "shape": "accessKeySecretType",
          "documentation": "<p>The secret key used to sign requests.</p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date when the access key was created.</p>"
        }
      },
      "documentation": "<p>Contains information about an AWS access key.</p> <p> This data type is used as a response element in the <a>CreateAccessKey</a> and <a>ListAccessKeys</a> operations. </p> <note> <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.</p> </note>"
    },
    "AccessKeyLastUsed": {
      "type": "structure",
      "required": [
        "LastUsedDate",
        "ServiceName",
        "Region"
      ],
      "members": {
        "LastUsedDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the access key was most recently used. This field is null in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM began tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul>"
        },
        "ServiceName": {
          "shape": "stringType",
          "documentation": "<p>The name of the AWS service with which this access key was most recently used. The value of this field is \"N/A\" in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM started tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul>"
        },
        "Region": {
          "shape": "stringType",
          "documentation": "<p>The AWS Region where this access key was most recently used. The value for this field is \"N/A\" in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM began tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul> <p>For more information about AWS Regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>"
        }
      },
      "documentation": "<p>Contains information about the last time an AWS access key was used since IAM began tracking this information on April 22, 2015.</p> <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> operation.</p>"
    },
    "AccessKeyMetadata": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user that the key is associated with.</p>"
        },
        "AccessKeyId": {
          "shape": "accessKeyIdType",
          "documentation": "<p>The ID for this access key.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status of the access key. <code>Active</code> means that the key is valid for API calls; <code>Inactive</code> means it is not.</p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date when the access key was created.</p>"
        }
      },
      "documentation": "<p>Contains information about an AWS access key, without its secret key.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> operation.</p>"
    },
    "ActionNameListType": {
      "type": "list",
      "member": {
        "shape": "ActionNameType"
      }
    },
    "ActionNameType": {
      "type": "string",
      "max": 128,
      "min": 3
    },
    "AddClientIDToOpenIDConnectProviderRequest": {
      "type": "structure",
      "required": [
        "OpenIDConnectProviderArn",
        "ClientID"
      ],
      "members": {
        "OpenIDConnectProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to add the client ID to. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>"
        },
        "ClientID": {
          "shape": "clientIDType",
          "documentation": "<p>The client ID (also known as audience) to add to the IAM OpenID Connect provider resource.</p>"
        }
      }
    },
    "AddRoleToInstanceProfileRequest": {
      "type": "structure",
      "required": [
        "InstanceProfileName",
        "RoleName"
      ],
      "members": {
        "InstanceProfileName": {
          "shape": "instanceProfileNameType",
          "documentation": "<p>The name of the instance profile to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role to add.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "AddUserToGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "UserName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name of the group to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user to add.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "ArnListType": {
      "type": "list",
      "member": {
        "shape": "arnType"
      }
    },
    "AttachGroupPolicyRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "PolicyArn"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the group to attach the policy to.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "AttachRolePolicyRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "PolicyArn"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the role to attach the policy to.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "AttachUserPolicyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "PolicyArn"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the IAM user to attach the policy to.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "AttachedPermissionsBoundary": {
      "type": "structure",
      "members": {
        "PermissionsBoundaryType": {
          "shape": "PermissionsBoundaryAttachmentType",
          "documentation": "<p> The permissions boundary usage type that indicates what type of IAM resource is used as the permissions boundary for an entity. This data type can only have a value of <code>Policy</code>.</p>"
        },
        "PermissionsBoundaryArn": {
          "shape": "arnType",
          "documentation": "<p> The ARN of the policy used to set the permissions boundary for the user or role.</p>"
        }
      },
      "documentation": "<p>Contains information about an attached permissions boundary.</p> <p>An attached permissions boundary is a managed policy that has been attached to a user or role to set the permissions boundary.</p> <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>"
    },
    "AttachedPolicy": {
      "type": "structure",
      "members": {
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The friendly name of the attached policy.</p>"
        },
        "PolicyArn": {
          "shape": "arnType"
        }
      },
      "documentation": "<p>Contains information about an attached policy.</p> <p>An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> operations. </p> <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>. </p>"
    },
    "BootstrapDatum": {
      "type": "blob",
      "sensitive": true
    },
    "ChangePasswordRequest": {
      "type": "structure",
      "required": [
        "OldPassword",
        "NewPassword"
      ],
      "members": {
        "OldPassword": {
          "shape": "passwordType",
          "documentation": "<p>The IAM user's current password.</p>"
        },
        "NewPassword": {
          "shape": "passwordType",
          "documentation": "<p>The new password. The new password must conform to the AWS account's password policy, if one exists.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (<code>\\u0020</code>) through the end of the ASCII character range (<code>\\u00FF</code>). You can also include the tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>) characters. Any of these characters are valid in a password. However, many tools, such as the AWS Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.</p>"
        }
      }
    },
    "ColumnNumber": {
      "type": "integer"
    },
    "ContextEntry": {
      "type": "structure",
      "members": {
        "ContextKeyName": {
          "shape": "ContextKeyNameType",
          "documentation": "<p>The full name of a condition context key, including the service prefix. For example, <code>aws:SourceIp</code> or <code>s3:VersionId</code>.</p>"
        },
        "ContextKeyValues": {
          "shape": "ContextKeyValueListType",
          "documentation": "<p>The value (or values, if the condition context key supports multiple values) to provide to the simulation when the key is referenced by a <code>Condition</code> element in an input policy.</p>"
        },
        "ContextKeyType": {
          "shape": "ContextKeyTypeEnum",
          "documentation": "<p>The data type of the value (or values) specified in the <code>ContextKeyValues</code> parameter.</p>"
        }
      },
      "documentation": "<p>Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the <code>Condition</code> elements of the input policies.</p> <p>This data type is used as an input parameter to <a>SimulateCustomPolicy</a> and <a>SimulatePrincipalPolicy</a>.</p>"
    },
    "ContextEntryListType": {
      "type": "list",
      "member": {
        "shape": "ContextEntry"
      }
    },
    "ContextKeyNameType": {
      "type": "string",
      "max": 256,
      "min": 5
    },
    "ContextKeyNamesResultListType": {
      "type": "list",
      "member": {
        "shape": "ContextKeyNameType"
      }
    },
    "ContextKeyTypeEnum": {
      "type": "string",
      "enum": [
        "string",
        "stringList",
        "numeric",
        "numericList",
        "boolean",
        "booleanList",
        "ip",
        "ipList",
        "binary",
        "binaryList",
        "date",
        "dateList"
      ]
    },
    "ContextKeyValueListType": {
      "type": "list",
      "member": {
        "shape": "ContextKeyValueType"
      }
    },
    "ContextKeyValueType": {
      "type": "string"
    },
    "CreateAccessKeyRequest": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the IAM user that the new key will belong to.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "CreateAccessKeyResponse": {
      "type": "structure",
      "required": [
        "AccessKey"
      ],
      "members": {
        "AccessKey": {
          "shape": "AccessKey",
          "documentation": "<p>A structure with details about the access key.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateAccessKey</a> request. </p>"
    },
    "CreateAccountAliasRequest": {
      "type": "structure",
      "required": [
        "AccountAlias"
      ],
      "members": {
        "AccountAlias": {
          "shape": "accountAliasType",
          "documentation": "<p>The account alias to create.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.</p>"
        }
      }
    },
    "CreateGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p> The path to the group. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name of the group to create. Do not include the path in this value.</p> <p>IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both \"MyResource\" and \"myresource\".</p>"
        }
      }
    },
    "CreateGroupResponse": {
      "type": "structure",
      "required": [
        "Group"
      ],
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>A structure containing details about the new group.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateGroup</a> request. </p>"
    },
    "CreateInstanceProfileRequest": {
      "type": "structure",
      "required": [
        "InstanceProfileName"
      ],
      "members": {
        "InstanceProfileName": {
          "shape": "instanceProfileNameType",
          "documentation": "<p>The name of the instance profile to create.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Path": {
          "shape": "pathType",
          "documentation": "<p> The path to the instance profile. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        }
      }
    },
    "CreateInstanceProfileResponse": {
      "type": "structure",
      "required": [
        "InstanceProfile"
      ],
      "members": {
        "InstanceProfile": {
          "shape": "InstanceProfile",
          "documentation": "<p>A structure containing details about the new instance profile.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateInstanceProfile</a> request. </p>"
    },
    "CreateLoginProfileRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "Password"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user to create a password for. The user must already exist.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Password": {
          "shape": "passwordType",
          "documentation": "<p>The new password for the user.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (<code>\\u0020</code>) through the end of the ASCII character range (<code>\\u00FF</code>). You can also include the tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>) characters. Any of these characters are valid in a password. However, many tools, such as the AWS Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.</p>"
        },
        "PasswordResetRequired": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether the user is required to set a new password on next sign-in.</p>"
        }
      }
    },
    "CreateLoginProfileResponse": {
      "type": "structure",
      "required": [
        "LoginProfile"
      ],
      "members": {
        "LoginProfile": {
          "shape": "LoginProfile",
          "documentation": "<p>A structure containing the user name and password create date.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateLoginProfile</a> request. </p>"
    },
    "CreateOpenIDConnectProviderRequest": {
      "type": "structure",
      "required": [
        "Url",
        "ThumbprintList"
      ],
      "members": {
        "Url": {
          "shape": "OpenIDConnectProviderUrlType",
          "documentation": "<p>The URL of the identity provider. The URL must begin with <code>https://</code> and should correspond to the <code>iss</code> claim in the provider's OpenID Connect ID tokens. Per the OIDC standard, path components are allowed but query parameters are not. Typically the URL consists of only a hostname, like <code>https://server.example.org</code> or <code>https://example.com</code>.</p> <p>You cannot register the same provider multiple times in a single AWS account. If you try to submit a URL that has already been used for an OpenID Connect provider in the AWS account, you will get an error.</p>"
        },
        "ClientIDList": {
          "shape": "clientIDListType",
          "documentation": "<p>A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the <code>client_id</code> parameter on OAuth requests.)</p> <p>You can register multiple client IDs with the same provider. For example, you might have multiple applications that use the same OIDC provider. You cannot register more than 100 client IDs with a single IAM OIDC provider.</p> <p>There is no defined format for a client ID. The <code>CreateOpenIDConnectProviderRequest</code> operation accepts client IDs up to 255 characters long.</p>"
        },
        "ThumbprintList": {
          "shape": "thumbprintListType",
          "documentation": "<p>A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificates. Typically this list includes only one entry. However, IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain multiple thumbprints if the identity provider is rotating certificates.</p> <p>The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.</p> <p>You must provide at least one thumbprint when creating an IAM OIDC provider. For example, assume that the OIDC provider is <code>server.example.com</code> and the provider stores its keys at https://keys.server.example.com/openid-connect. In that case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate used by https://keys.server.example.com.</p> <p>For more information about obtaining the OIDC provider's thumbprint, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html\">Obtaining the Thumbprint for an OpenID Connect Provider</a> in the <i>IAM User Guide</i>.</p>"
        }
      }
    },
    "CreateOpenIDConnectProviderResponse": {
      "type": "structure",
      "members": {
        "OpenIDConnectProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is created. For more information, see <a>OpenIDConnectProviderListEntry</a>. </p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateOpenIDConnectProvider</a> request. </p>"
    },
    "CreatePolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyName",
        "PolicyDocument"
      ],
      "members": {
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The friendly name of the policy.</p> <p>IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both \"MyResource\" and \"myresource\".</p>"
        },
        "Path": {
          "shape": "policyPathType",
          "documentation": "<p>The path for the policy.</p> <p>For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The JSON policy document that you want to use as the content for the new policy.</p> <p>You must provide policies in JSON format in IAM. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "Description": {
          "shape": "policyDescriptionType",
          "documentation": "<p>A friendly description of the policy.</p> <p>Typically used to store information about the permissions defined in the policy. For example, \"Grants access to production DynamoDB tables.\"</p> <p>The policy description is immutable. After a value is assigned, it cannot be changed.</p>"
        }
      }
    },
    "CreatePolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>A structure containing details about the new policy.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreatePolicy</a> request. </p>"
    },
    "CreatePolicyVersionRequest": {
      "type": "structure",
      "required": [
        "PolicyArn",
        "PolicyDocument"
      ],
      "members": {
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new version.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The JSON policy document that you want to use as the content for this new version of the policy.</p> <p>You must provide policies in JSON format in IAM. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "SetAsDefault": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether to set this version as the policy's default version.</p> <p>When this parameter is <code>true</code>, the new policy version becomes the operative version. That is, it becomes the version that is in effect for the IAM users, groups, and roles that the policy is attached to.</p> <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>"
        }
      }
    },
    "CreatePolicyVersionResponse": {
      "type": "structure",
      "members": {
        "PolicyVersion": {
          "shape": "PolicyVersion",
          "documentation": "<p>A structure containing details about the new policy version.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreatePolicyVersion</a> request. </p>"
    },
    "CreateRoleRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "AssumeRolePolicyDocument"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p> The path to the role. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role to create.</p> <p>IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both \"MyResource\" and \"myresource\".</p>"
        },
        "AssumeRolePolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The trust relationship policy document that grants an entity permission to assume the role.</p> <p>In IAM, you must provide a JSON policy that has been converted to a string. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul> <p> Upon success, the response includes the same trust policy in JSON format.</p>"
        },
        "Description": {
          "shape": "roleDescriptionType",
          "documentation": "<p>A description of the role.</p>"
        },
        "MaxSessionDuration": {
          "shape": "roleMaxSessionDurationType",
          "documentation": "<p>The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.</p> <p>Anyone who assumes the role from the AWS CLI or API can use the <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code> CLI parameter to request a longer session. The <code>MaxSessionDuration</code> setting determines the maximum duration that can be requested using the <code>DurationSeconds</code> parameter. If users don't specify a value for the <code>DurationSeconds</code> parameter, their security credentials are valid for one hour by default. This applies when you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI operations but does not apply when you use those operations to create a console URL. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM Roles</a> in the <i>IAM User Guide</i>.</p>"
        },
        "PermissionsBoundary": {
          "shape": "arnType",
          "documentation": "<p>The ARN of the policy that is used to set the permissions boundary for the role.</p>"
        },
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>A list of tags that you want to attach to the newly created role. Each tag consists of a key name and an associated value. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p> <note> <p>If any one of the tags is invalid or if you exceed the allowed number of tags per role, then the entire request fails and the role is not created.</p> </note>"
        }
      }
    },
    "CreateRoleResponse": {
      "type": "structure",
      "required": [
        "Role"
      ],
      "members": {
        "Role": {
          "shape": "Role",
          "documentation": "<p>A structure containing details about the new role.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateRole</a> request. </p>"
    },
    "CreateSAMLProviderRequest": {
      "type": "structure",
      "required": [
        "SAMLMetadataDocument",
        "Name"
      ],
      "members": {
        "SAMLMetadataDocument": {
          "shape": "SAMLMetadataDocumentType",
          "documentation": "<p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p> <p>For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html\">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i> </p>"
        },
        "Name": {
          "shape": "SAMLProviderNameType",
          "documentation": "<p>The name of the provider to create.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "CreateSAMLProviderResponse": {
      "type": "structure",
      "members": {
        "SAMLProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateSAMLProvider</a> request. </p>"
    },
    "CreateServiceLinkedRoleRequest": {
      "type": "structure",
      "required": [
        "AWSServiceName"
      ],
      "members": {
        "AWSServiceName": {
          "shape": "groupNameType",
          "documentation": "<p>The service principal for the AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: <code>elasticbeanstalk.amazonaws.com</code>. </p> <p>Service principals are unique and case-sensitive. To find the exact service principal for your service-linked role, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html\">AWS Services That Work with IAM</a> in the <i>IAM User Guide</i>. Look for the services that have <b>Yes </b>in the <b>Service-Linked Role</b> column. Choose the <b>Yes</b> link to view the service-linked role documentation for that service.</p>"
        },
        "Description": {
          "shape": "roleDescriptionType",
          "documentation": "<p>The description of the role.</p>"
        },
        "CustomSuffix": {
          "shape": "customSuffixType",
          "documentation": "<p/> <p>A string that you provide, which is combined with the service-provided prefix to form the complete role name. If you make multiple requests for the same service, then you must supply a different <code>CustomSuffix</code> for each request. Otherwise the request fails with a duplicate role name error. For example, you could add <code>-1</code> or <code>-debug</code> to the suffix.</p> <p>Some services do not support the <code>CustomSuffix</code> parameter. If you provide an optional suffix and the operation fails, try the operation again without the suffix.</p>"
        }
      }
    },
    "CreateServiceLinkedRoleResponse": {
      "type": "structure",
      "members": {
        "Role": {
          "shape": "Role",
          "documentation": "<p>A <a>Role</a> object that contains details about the newly created role.</p>"
        }
      }
    },
    "CreateServiceSpecificCredentialRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "ServiceName"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user that is to be associated with the credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "ServiceName": {
          "shape": "serviceName",
          "documentation": "<p>The name of the AWS service that is to be associated with the credentials. The service you specify here is the only service that can be accessed using these credentials.</p>"
        }
      }
    },
    "CreateServiceSpecificCredentialResponse": {
      "type": "structure",
      "members": {
        "ServiceSpecificCredential": {
          "shape": "ServiceSpecificCredential",
          "documentation": "<p>A structure that contains information about the newly created service-specific credential.</p> <important> <p>This is the only time that the password for this credential set is available. It cannot be recovered later. Instead, you must reset the password with <a>ResetServiceSpecificCredential</a>.</p> </important>"
        }
      }
    },
    "CreateUserRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p> The path for the user name. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the user to create.</p> <p>IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both \"MyResource\" and \"myresource\".</p>"
        },
        "PermissionsBoundary": {
          "shape": "arnType",
          "documentation": "<p>The ARN of the policy that is used to set the permissions boundary for the user.</p>"
        },
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>A list of tags that you want to attach to the newly created user. Each tag consists of a key name and an associated value. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p> <note> <p>If any one of the tags is invalid or if you exceed the allowed number of tags per user, then the entire request fails and the user is not created.</p> </note>"
        }
      }
    },
    "CreateUserResponse": {
      "type": "structure",
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>A structure with details about the new IAM user.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateUser</a> request. </p>"
    },
    "CreateVirtualMFADeviceRequest": {
      "type": "structure",
      "required": [
        "VirtualMFADeviceName"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p> The path for the virtual MFA device. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "VirtualMFADeviceName": {
          "shape": "virtualMFADeviceName",
          "documentation": "<p>The name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "CreateVirtualMFADeviceResponse": {
      "type": "structure",
      "required": [
        "VirtualMFADevice"
      ],
      "members": {
        "VirtualMFADevice": {
          "shape": "VirtualMFADevice",
          "documentation": "<p>A structure containing details about the new virtual MFA device.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>CreateVirtualMFADevice</a> request. </p>"
    },
    "DeactivateMFADeviceRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "SerialNumber"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user whose MFA device you want to deactivate.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "SerialNumber": {
          "shape": "serialNumberType",
          "documentation": "<p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>"
        }
      }
    },
    "DeleteAccessKeyRequest": {
      "type": "structure",
      "required": [
        "AccessKeyId"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user whose access key pair you want to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "AccessKeyId": {
          "shape": "accessKeyIdType",
          "documentation": "<p>The access key ID for the access key ID and secret access key you want to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        }
      }
    },
    "DeleteAccountAliasRequest": {
      "type": "structure",
      "required": [
        "AccountAlias"
      ],
      "members": {
        "AccountAlias": {
          "shape": "accountAliasType",
          "documentation": "<p>The name of the account alias to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.</p>"
        }
      }
    },
    "DeleteGroupPolicyRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "PolicyName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name (friendly name, not ARN) identifying the group that the policy is embedded in.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name identifying the policy document to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name of the IAM group to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteInstanceProfileRequest": {
      "type": "structure",
      "required": [
        "InstanceProfileName"
      ],
      "members": {
        "InstanceProfileName": {
          "shape": "instanceProfileNameType",
          "documentation": "<p>The name of the instance profile to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteLoginProfileRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the user whose password you want to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteOpenIDConnectProviderRequest": {
      "type": "structure",
      "required": [
        "OpenIDConnectProviderArn"
      ],
      "members": {
        "OpenIDConnectProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to delete. You can get a list of OpenID Connect provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>"
        }
      }
    },
    "DeletePolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyArn"
      ],
      "members": {
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy you want to delete.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "DeletePolicyVersionRequest": {
      "type": "structure",
      "required": [
        "PolicyArn",
        "VersionId"
      ],
      "members": {
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a version.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "VersionId": {
          "shape": "policyVersionIdType",
          "documentation": "<p>The policy version to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.</p> <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>"
        }
      }
    },
    "DeleteRolePermissionsBoundaryRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the IAM role from which you want to remove the permissions boundary.</p>"
        }
      }
    },
    "DeleteRolePolicyRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "PolicyName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name (friendly name, not ARN) identifying the role that the policy is embedded in.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the inline policy to delete from the specified IAM role.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteRoleRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteSAMLProviderRequest": {
      "type": "structure",
      "required": [
        "SAMLProviderArn"
      ],
      "members": {
        "SAMLProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SAML provider to delete.</p>"
        }
      }
    },
    "DeleteSSHPublicKeyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "SSHPublicKeyId"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "SSHPublicKeyId": {
          "shape": "publicKeyIdType",
          "documentation": "<p>The unique identifier for the SSH public key.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        }
      }
    },
    "DeleteServerCertificateRequest": {
      "type": "structure",
      "required": [
        "ServerCertificateName"
      ],
      "members": {
        "ServerCertificateName": {
          "shape": "serverCertificateNameType",
          "documentation": "<p>The name of the server certificate you want to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteServiceLinkedRoleRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the service-linked role to be deleted.</p>"
        }
      }
    },
    "DeleteServiceLinkedRoleResponse": {
      "type": "structure",
      "required": [
        "DeletionTaskId"
      ],
      "members": {
        "DeletionTaskId": {
          "shape": "DeletionTaskIdType",
          "documentation": "<p>The deletion task identifier that you can use to check the status of the deletion. This identifier is returned in the format <code>task/aws-service-role/&lt;service-principal-name&gt;/&lt;role-name&gt;/&lt;task-uuid&gt;</code>.</p>"
        }
      }
    },
    "DeleteServiceSpecificCredentialRequest": {
      "type": "structure",
      "required": [
        "ServiceSpecificCredentialId"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "ServiceSpecificCredentialId": {
          "shape": "serviceSpecificCredentialId",
          "documentation": "<p>The unique identifier of the service-specific credential. You can get this value by calling <a>ListServiceSpecificCredentials</a>.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        }
      }
    },
    "DeleteSigningCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateId"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user the signing certificate belongs to.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "CertificateId": {
          "shape": "certificateIdType",
          "documentation": "<p>The ID of the signing certificate to delete.</p> <p>The format of this parameter, as described by its <a href=\"http://wikipedia.org/wiki/regex\">regex</a> pattern, is a string of characters that can be upper- or lower-cased letters or digits.</p>"
        }
      }
    },
    "DeleteUserPermissionsBoundaryRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the IAM user from which you want to remove the permissions boundary.</p>"
        }
      }
    },
    "DeleteUserPolicyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "PolicyName"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name (friendly name, not ARN) identifying the user that the policy is embedded in.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name identifying the policy document to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteUserRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user to delete.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "DeleteVirtualMFADeviceRequest": {
      "type": "structure",
      "required": [
        "SerialNumber"
      ],
      "members": {
        "SerialNumber": {
          "shape": "serialNumberType",
          "documentation": "<p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>"
        }
      }
    },
    "DeletionTaskFailureReasonType": {
      "type": "structure",
      "members": {
        "Reason": {
          "shape": "ReasonType",
          "documentation": "<p>A short description of the reason that the service-linked role deletion failed.</p>"
        },
        "RoleUsageList": {
          "shape": "RoleUsageListType",
          "documentation": "<p>A list of objects that contains details about the service-linked role deletion failure, if that information is returned by the service. If the service-linked role has active sessions or if any resources that were used by the role have not been deleted from the linked service, the role can't be deleted. This parameter includes a list of the resources that are associated with the role and the Region in which the resources are being used.</p>"
        }
      },
      "documentation": "<p>The reason that the service-linked role deletion failed.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>"
    },
    "DeletionTaskIdType": {
      "type": "string",
      "max": 1000,
      "min": 1
    },
    "DeletionTaskStatusType": {
      "type": "string",
      "enum": [
        "SUCCEEDED",
        "IN_PROGRESS",
        "FAILED",
        "NOT_STARTED"
      ]
    },
    "DetachGroupPolicyRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "PolicyArn"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the IAM group to detach the policy from.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "DetachRolePolicyRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "PolicyArn"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the IAM role to detach the policy from.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "DetachUserPolicyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "PolicyArn"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the IAM user to detach the policy from.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "EnableMFADeviceRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "SerialNumber",
        "AuthenticationCode1",
        "AuthenticationCode2"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the IAM user for whom you want to enable the MFA device.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "SerialNumber": {
          "shape": "serialNumberType",
          "documentation": "<p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>"
        },
        "AuthenticationCode1": {
          "shape": "authenticationCodeType",
          "documentation": "<p>An authentication code emitted by the device. </p> <p>The format for this parameter is a string of six digits.</p> <important> <p>Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html\">resync the device</a>.</p> </important>"
        },
        "AuthenticationCode2": {
          "shape": "authenticationCodeType",
          "documentation": "<p>A subsequent authentication code emitted by the device.</p> <p>The format for this parameter is a string of six digits.</p> <important> <p>Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html\">resync the device</a>.</p> </important>"
        }
      }
    },
    "EntityDetails": {
      "type": "structure",
      "required": [
        "EntityInfo"
      ],
      "members": {
        "EntityInfo": {
          "shape": "EntityInfo",
          "documentation": "<p>The <code>EntityInfo</code> object that contains details about the entity (user or role).</p>"
        },
        "LastAuthenticated": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the authenticated entity last attempted to access AWS. AWS does not report unauthenticated requests.</p> <p>This field is null if no IAM entities attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        }
      },
      "documentation": "<p>An object that contains details about when the IAM entities (users or roles) were last used in an attempt to access the specified AWS service.</p> <p>This data type is a response element in the <a>GetServiceLastAccessedDetailsWithEntities</a> operation.</p>"
    },
    "EntityInfo": {
      "type": "structure",
      "required": [
        "Arn",
        "Name",
        "Type",
        "Id"
      ],
      "members": {
        "Arn": {
          "shape": "arnType"
        },
        "Name": {
          "shape": "userNameType",
          "documentation": "<p>The name of the entity (user or role).</p>"
        },
        "Type": {
          "shape": "policyOwnerEntityType",
          "documentation": "<p>The type of entity (user or role).</p>"
        },
        "Id": {
          "shape": "idType",
          "documentation": "<p>The identifier of the entity (user or role).</p>"
        },
        "Path": {
          "shape": "pathType",
          "documentation": "<p>The path to the entity (user or role). For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        }
      },
      "documentation": "<p>Contains details about the specified entity (user or role).</p> <p>This data type is an element of the <a>EntityDetails</a> object.</p>"
    },
    "EntityType": {
      "type": "string",
      "enum": [
        "User",
        "Role",
        "Group",
        "LocalManagedPolicy",
        "AWSManagedPolicy"
      ]
    },
    "ErrorDetails": {
      "type": "structure",
      "required": [
        "Message",
        "Code"
      ],
      "members": {
        "Message": {
          "shape": "stringType",
          "documentation": "<p>Detailed information about the reason that the operation failed.</p>"
        },
        "Code": {
          "shape": "stringType",
          "documentation": "<p>The error code associated with the operation failure.</p>"
        }
      },
      "documentation": "<p>Contains information about the reason that the operation failed.</p> <p>This data type is used as a response element in the <a>GetOrganizationsAccessReport</a>, <a>GetServiceLastAccessedDetails</a>, and <a>GetServiceLastAccessedDetailsWithEntities</a> operations.</p>"
    },
    "EvalDecisionDetailsType": {
      "type": "map",
      "key": {
        "shape": "EvalDecisionSourceType"
      },
      "value": {
        "shape": "PolicyEvaluationDecisionType"
      }
    },
    "EvalDecisionSourceType": {
      "type": "string",
      "max": 256,
      "min": 3
    },
    "EvaluationResult": {
      "type": "structure",
      "required": [
        "EvalActionName",
        "EvalDecision"
      ],
      "members": {
        "EvalActionName": {
          "shape": "ActionNameType",
          "documentation": "<p>The name of the API operation tested on the indicated resource.</p>"
        },
        "EvalResourceName": {
          "shape": "ResourceNameType",
          "documentation": "<p>The ARN of the resource that the indicated API operation was tested on.</p>"
        },
        "EvalDecision": {
          "shape": "PolicyEvaluationDecisionType",
          "documentation": "<p>The result of the simulation.</p>"
        },
        "MatchedStatements": {
          "shape": "StatementListType",
          "documentation": "<p>A list of the statements in the input policies that determine the result for this scenario. Remember that even if multiple statements allow the operation on the resource, if only one statement denies that operation, then the explicit deny overrides any allow. In addition, the deny statement is the only entry included in the result.</p>"
        },
        "MissingContextValues": {
          "shape": "ContextKeyNamesResultListType",
          "documentation": "<p>A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when the resource in a simulation is \"*\", either explicitly, or when the <code>ResourceArns</code> parameter blank. If you include a list of resources, then any missing context values are instead included under the <code>ResourceSpecificResults</code> section. To discover the context keys used by a set of policies, you can call <a>GetContextKeysForCustomPolicy</a> or <a>GetContextKeysForPrincipalPolicy</a>.</p>"
        },
        "OrganizationsDecisionDetail": {
          "shape": "OrganizationsDecisionDetail",
          "documentation": "<p>A structure that details how Organizations and its service control policies affect the results of the simulation. Only applies if the simulated user's account is part of an organization.</p>"
        },
        "PermissionsBoundaryDecisionDetail": {
          "shape": "PermissionsBoundaryDecisionDetail",
          "documentation": "<p>Contains information about the effect that a permissions boundary has on a policy simulation when the boundary is applied to an IAM entity.</p>"
        },
        "EvalDecisionDetails": {
          "shape": "EvalDecisionDetailsType",
          "documentation": "<p>Additional details about the results of the cross-account evaluation decision. This parameter is populated for only cross-account simulations. It contains a brief summary of how each policy type contributes to the final evaluation decision.</p> <p>If the simulation evaluates policies within the same account and includes a resource ARN, then the parameter is present but the response is empty. If the simulation evaluates policies within the same account and specifies all resources (<code>*</code>), then the parameter is not returned.</p> <p>When you make a cross-account request, AWS evaluates the request in the trusting account and the trusted account. The request is allowed only if both evaluations return <code>true</code>. For more information about how policies are evaluated, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics\">Evaluating Policies Within a Single Account</a>.</p> <p>If an AWS Organizations SCP included in the evaluation denies access, the simulation ends. In this case, policy evaluation does not proceed any further and this parameter is not returned.</p>"
        },
        "ResourceSpecificResults": {
          "shape": "ResourceSpecificResultListType",
          "documentation": "<p>The individual results of the simulation of the API operation specified in EvalActionName on each resource.</p>"
        }
      },
      "documentation": "<p>Contains the results of a simulation.</p> <p>This data type is used by the return parameter of <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulatePrincipalPolicy</a> </code>.</p>"
    },
    "EvaluationResultsListType": {
      "type": "list",
      "member": {
        "shape": "EvaluationResult"
      }
    },
    "GenerateCredentialReportResponse": {
      "type": "structure",
      "members": {
        "State": {
          "shape": "ReportStateType",
          "documentation": "<p>Information about the state of the credential report.</p>"
        },
        "Description": {
          "shape": "ReportStateDescriptionType",
          "documentation": "<p>Information about the credential report.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GenerateCredentialReport</a> request. </p>"
    },
    "GenerateOrganizationsAccessReportRequest": {
      "type": "structure",
      "required": [
        "EntityPath"
      ],
      "members": {
        "EntityPath": {
          "shape": "organizationsEntityPathType",
          "documentation": "<p>The path of the AWS Organizations entity (root, OU, or account). You can build an entity path using the known structure of your organization. For example, assume that your account ID is <code>123456789012</code> and its parent OU ID is <code>ou-rge0-awsabcde</code>. The organization root ID is <code>r-f6g7h8i9j0example</code> and your organization ID is <code>o-a1b2c3d4e5</code>. Your entity path is <code>o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-rge0-awsabcde/123456789012</code>.</p>"
        },
        "OrganizationsPolicyId": {
          "shape": "organizationsPolicyIdType",
          "documentation": "<p>The identifier of the AWS Organizations service control policy (SCP). This parameter is optional.</p> <p>This ID is used to generate information about when an account principal that is limited by the SCP attempted to access an AWS service.</p>"
        }
      }
    },
    "GenerateOrganizationsAccessReportResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "jobIDType",
          "documentation": "<p>The job identifier that you can use in the <a>GetOrganizationsAccessReport</a> operation.</p>"
        }
      }
    },
    "GenerateServiceLastAccessedDetailsRequest": {
      "type": "structure",
      "required": [
        "Arn"
      ],
      "members": {
        "Arn": {
          "shape": "arnType",
          "documentation": "<p>The ARN of the IAM resource (user, group, role, or managed policy) used to generate information about when the resource was last used in an attempt to access an AWS service.</p>"
        },
        "Granularity": {
          "shape": "AccessAdvisorUsageGranularityType",
          "documentation": "<p>The level of detail that you want to generate. You can specify whether you want to generate information about the last attempt to access services or actions. If you specify service-level granularity, this operation generates only service data. If you specify action-level granularity, it generates service and action data. If you don't include this optional parameter, the operation generates service data.</p>"
        }
      }
    },
    "GenerateServiceLastAccessedDetailsResponse": {
      "type": "structure",
      "members": {
        "JobId": {
          "shape": "jobIDType",
          "documentation": "<p>The <code>JobId</code> that you can use in the <a>GetServiceLastAccessedDetails</a> or <a>GetServiceLastAccessedDetailsWithEntities</a> operations. The <code>JobId</code> returned by <code>GenerateServiceLastAccessedDetail</code> must be used by the same role within a session, or by the same user when used to call <code>GetServiceLastAccessedDetail</code>.</p>"
        }
      }
    },
    "GetAccessKeyLastUsedRequest": {
      "type": "structure",
      "required": [
        "AccessKeyId"
      ],
      "members": {
        "AccessKeyId": {
          "shape": "accessKeyIdType",
          "documentation": "<p>The identifier of an access key.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        }
      }
    },
    "GetAccessKeyLastUsedResponse": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the AWS IAM user that owns this access key.</p> <p/>"
        },
        "AccessKeyLastUsed": {
          "shape": "AccessKeyLastUsed",
          "documentation": "<p>Contains information about the last time the access key was used.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetAccessKeyLastUsed</a> request. It is also returned as a member of the <a>AccessKeyMetaData</a> structure returned by the <a>ListAccessKeys</a> action.</p>"
    },
    "GetAccountAuthorizationDetailsRequest": {
      "type": "structure",
      "members": {
        "Filter": {
          "shape": "entityListType",
          "documentation": "<p>A list of entity types used to filter the results. Only the entities that match the types you specify are included in the output. Use the value <code>LocalManagedPolicy</code> to include customer managed policies.</p> <p>The format for this parameter is a comma-separated (if more than one) list of strings. Each string value in the list must be one of the valid values listed below.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        }
      }
    },
    "GetAccountAuthorizationDetailsResponse": {
      "type": "structure",
      "members": {
        "UserDetailList": {
          "shape": "userDetailListType",
          "documentation": "<p>A list containing information about IAM users.</p>"
        },
        "GroupDetailList": {
          "shape": "groupDetailListType",
          "documentation": "<p>A list containing information about IAM groups.</p>"
        },
        "RoleDetailList": {
          "shape": "roleDetailListType",
          "documentation": "<p>A list containing information about IAM roles.</p>"
        },
        "Policies": {
          "shape": "ManagedPolicyDetailListType",
          "documentation": "<p>A list containing information about managed policies.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetAccountAuthorizationDetails</a> request. </p>"
    },
    "GetAccountPasswordPolicyResponse": {
      "type": "structure",
      "required": [
        "PasswordPolicy"
      ],
      "members": {
        "PasswordPolicy": {
          "shape": "PasswordPolicy",
          "documentation": "<p>A structure that contains details about the account's password policy.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetAccountPasswordPolicy</a> request. </p>"
    },
    "GetAccountSummaryResponse": {
      "type": "structure",
      "members": {
        "SummaryMap": {
          "shape": "summaryMapType",
          "documentation": "<p>A set of key–value pairs containing information about IAM entity usage and IAM quotas.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetAccountSummary</a> request. </p>"
    },
    "GetContextKeysForCustomPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyInputList"
      ],
      "members": {
        "PolicyInputList": {
          "shape": "SimulationPolicyListType",
          "documentation": "<p>A list of policies for which you want the list of context keys referenced in those policies. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "GetContextKeysForPolicyResponse": {
      "type": "structure",
      "members": {
        "ContextKeyNames": {
          "shape": "ContextKeyNamesResultListType",
          "documentation": "<p>The list of context keys that are referenced in the input policies.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetContextKeysForPrincipalPolicy</a> or <a>GetContextKeysForCustomPolicy</a> request. </p>"
    },
    "GetContextKeysForPrincipalPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicySourceArn"
      ],
      "members": {
        "PolicySourceArn": {
          "shape": "arnType",
          "documentation": "<p>The ARN of a user, group, or role whose policies contain the context keys that you want listed. If you specify a user, the list includes context keys that are found in all policies that are attached to the user. The list also includes all groups that the user is a member of. If you pick a group or a role, then it includes only those context keys that are found in policies attached to that entity. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PolicyInputList": {
          "shape": "SimulationPolicyListType",
          "documentation": "<p>An optional list of additional policies for which you want the list of context keys that are referenced.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "GetCredentialReportResponse": {
      "type": "structure",
      "members": {
        "Content": {
          "shape": "ReportContentType",
          "documentation": "<p>Contains the credential report. The report is Base64-encoded.</p>"
        },
        "ReportFormat": {
          "shape": "ReportFormatType",
          "documentation": "<p>The format (MIME type) of the credential report.</p>"
        },
        "GeneratedTime": {
          "shape": "dateType",
          "documentation": "<p> The date and time when the credential report was created, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetCredentialReport</a> request. </p>"
    },
    "GetGroupPolicyRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "PolicyName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name of the group the policy is associated with.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy document to get.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "GetGroupPolicyResponse": {
      "type": "structure",
      "required": [
        "GroupName",
        "PolicyName",
        "PolicyDocument"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The group the policy is associated with.</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy.</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy document.</p> <p>IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetGroupPolicy</a> request. </p>"
    },
    "GetGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name of the group.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "GetGroupResponse": {
      "type": "structure",
      "required": [
        "Group",
        "Users"
      ],
      "members": {
        "Group": {
          "shape": "Group",
          "documentation": "<p>A structure that contains details about the group.</p>"
        },
        "Users": {
          "shape": "userListType",
          "documentation": "<p>A list of users in the group.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetGroup</a> request. </p>"
    },
    "GetInstanceProfileRequest": {
      "type": "structure",
      "required": [
        "InstanceProfileName"
      ],
      "members": {
        "InstanceProfileName": {
          "shape": "instanceProfileNameType",
          "documentation": "<p>The name of the instance profile to get information about.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "GetInstanceProfileResponse": {
      "type": "structure",
      "required": [
        "InstanceProfile"
      ],
      "members": {
        "InstanceProfile": {
          "shape": "InstanceProfile",
          "documentation": "<p>A structure containing details about the instance profile.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetInstanceProfile</a> request. </p>"
    },
    "GetLoginProfileRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the user whose login profile you want to retrieve.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "GetLoginProfileResponse": {
      "type": "structure",
      "required": [
        "LoginProfile"
      ],
      "members": {
        "LoginProfile": {
          "shape": "LoginProfile",
          "documentation": "<p>A structure containing the user name and password create date for the user.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetLoginProfile</a> request. </p>"
    },
    "GetOpenIDConnectProviderRequest": {
      "type": "structure",
      "required": [
        "OpenIDConnectProviderArn"
      ],
      "members": {
        "OpenIDConnectProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get information for. You can get a list of OIDC provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "GetOpenIDConnectProviderResponse": {
      "type": "structure",
      "members": {
        "Url": {
          "shape": "OpenIDConnectProviderUrlType",
          "documentation": "<p>The URL that the IAM OIDC provider resource object is associated with. For more information, see <a>CreateOpenIDConnectProvider</a>.</p>"
        },
        "ClientIDList": {
          "shape": "clientIDListType",
          "documentation": "<p>A list of client IDs (also known as audiences) that are associated with the specified IAM OIDC provider resource object. For more information, see <a>CreateOpenIDConnectProvider</a>.</p>"
        },
        "ThumbprintList": {
          "shape": "thumbprintListType",
          "documentation": "<p>A list of certificate thumbprints that are associated with the specified IAM OIDC provider resource object. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time when the IAM OIDC provider resource object was created in the AWS account.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetOpenIDConnectProvider</a> request. </p>"
    },
    "GetOrganizationsAccessReportRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "jobIDType",
          "documentation": "<p>The identifier of the request generated by the <a>GenerateOrganizationsAccessReport</a> operation.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "SortKey": {
          "shape": "sortKeyType",
          "documentation": "<p>The key that is used to sort the results. If you choose the namespace key, the results are returned in alphabetical order. If you choose the time key, the results are sorted numerically by the date and time.</p>"
        }
      }
    },
    "GetOrganizationsAccessReportResponse": {
      "type": "structure",
      "required": [
        "JobStatus",
        "JobCreationDate"
      ],
      "members": {
        "JobStatus": {
          "shape": "jobStatusType",
          "documentation": "<p>The status of the job.</p>"
        },
        "JobCreationDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the report job was created.</p>"
        },
        "JobCompletionDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the generated report job was completed or failed.</p> <p>This field is null if the job is still in progress, as indicated by a job status value of <code>IN_PROGRESS</code>.</p>"
        },
        "NumberOfServicesAccessible": {
          "shape": "integerType",
          "documentation": "<p>The number of services that the applicable SCPs allow account principals to access.</p>"
        },
        "NumberOfServicesNotAccessed": {
          "shape": "integerType",
          "documentation": "<p>The number of services that account principals are allowed but did not attempt to access.</p>"
        },
        "AccessDetails": {
          "shape": "AccessDetails",
          "documentation": "<p>An object that contains details about the most recent attempt to access the service.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        },
        "ErrorDetails": {
          "shape": "ErrorDetails"
        }
      }
    },
    "GetPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyArn"
      ],
      "members": {
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the managed policy that you want information about.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "GetPolicyResponse": {
      "type": "structure",
      "members": {
        "Policy": {
          "shape": "Policy",
          "documentation": "<p>A structure containing details about the policy.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetPolicy</a> request. </p>"
    },
    "GetPolicyVersionRequest": {
      "type": "structure",
      "required": [
        "PolicyArn",
        "VersionId"
      ],
      "members": {
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the managed policy that you want information about.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "VersionId": {
          "shape": "policyVersionIdType",
          "documentation": "<p>Identifies the policy version to retrieve.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.</p>"
        }
      }
    },
    "GetPolicyVersionResponse": {
      "type": "structure",
      "members": {
        "PolicyVersion": {
          "shape": "PolicyVersion",
          "documentation": "<p>A structure containing details about the policy version.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetPolicyVersion</a> request. </p>"
    },
    "GetRolePolicyRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "PolicyName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role associated with the policy.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy document to get.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "GetRolePolicyResponse": {
      "type": "structure",
      "required": [
        "RoleName",
        "PolicyName",
        "PolicyDocument"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The role the policy is associated with.</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy.</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy document.</p> <p>IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetRolePolicy</a> request. </p>"
    },
    "GetRoleRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the IAM role to get information about.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "GetRoleResponse": {
      "type": "structure",
      "required": [
        "Role"
      ],
      "members": {
        "Role": {
          "shape": "Role",
          "documentation": "<p>A structure containing details about the IAM role.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetRole</a> request. </p>"
    },
    "GetSAMLProviderRequest": {
      "type": "structure",
      "required": [
        "SAMLProviderArn"
      ],
      "members": {
        "SAMLProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get information about.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "GetSAMLProviderResponse": {
      "type": "structure",
      "members": {
        "SAMLMetadataDocument": {
          "shape": "SAMLMetadataDocumentType",
          "documentation": "<p>The XML metadata document that includes information about an identity provider.</p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time when the SAML provider was created.</p>"
        },
        "ValidUntil": {
          "shape": "dateType",
          "documentation": "<p>The expiration date and time for the SAML provider.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetSAMLProvider</a> request. </p>"
    },
    "GetSSHPublicKeyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "SSHPublicKeyId",
        "Encoding"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "SSHPublicKeyId": {
          "shape": "publicKeyIdType",
          "documentation": "<p>The unique identifier for the SSH public key.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        },
        "Encoding": {
          "shape": "encodingType",
          "documentation": "<p>Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use <code>SSH</code>. To retrieve the public key in PEM format, use <code>PEM</code>.</p>"
        }
      }
    },
    "GetSSHPublicKeyResponse": {
      "type": "structure",
      "members": {
        "SSHPublicKey": {
          "shape": "SSHPublicKey",
          "documentation": "<p>A structure containing details about the SSH public key.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetSSHPublicKey</a> request.</p>"
    },
    "GetServerCertificateRequest": {
      "type": "structure",
      "required": [
        "ServerCertificateName"
      ],
      "members": {
        "ServerCertificateName": {
          "shape": "serverCertificateNameType",
          "documentation": "<p>The name of the server certificate you want to retrieve information about.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "GetServerCertificateResponse": {
      "type": "structure",
      "required": [
        "ServerCertificate"
      ],
      "members": {
        "ServerCertificate": {
          "shape": "ServerCertificate",
          "documentation": "<p>A structure containing details about the server certificate.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetServerCertificate</a> request. </p>"
    },
    "GetServiceLastAccessedDetailsRequest": {
      "type": "structure",
      "required": [
        "JobId"
      ],
      "members": {
        "JobId": {
          "shape": "jobIDType",
          "documentation": "<p>The ID of the request generated by the <a>GenerateServiceLastAccessedDetails</a> operation. The <code>JobId</code> returned by <code>GenerateServiceLastAccessedDetail</code> must be used by the same role within a session, or by the same user when used to call <code>GetServiceLastAccessedDetail</code>.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        }
      }
    },
    "GetServiceLastAccessedDetailsResponse": {
      "type": "structure",
      "required": [
        "JobStatus",
        "JobCreationDate",
        "ServicesLastAccessed",
        "JobCompletionDate"
      ],
      "members": {
        "JobStatus": {
          "shape": "jobStatusType",
          "documentation": "<p>The status of the job.</p>"
        },
        "JobType": {
          "shape": "AccessAdvisorUsageGranularityType",
          "documentation": "<p>The type of job. Service jobs return information about when each service was last accessed. Action jobs also include information about when tracked actions within the service were last accessed.</p>"
        },
        "JobCreationDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the report job was created.</p>"
        },
        "ServicesLastAccessed": {
          "shape": "ServicesLastAccessed",
          "documentation": "<p> A <code>ServiceLastAccessed</code> object that contains details about the most recent attempt to access the service.</p>"
        },
        "JobCompletionDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the generated report job was completed or failed.</p> <p>This field is null if the job is still in progress, as indicated by a job status value of <code>IN_PROGRESS</code>.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        },
        "Error": {
          "shape": "ErrorDetails",
          "documentation": "<p>An object that contains details about the reason the operation failed.</p>"
        }
      }
    },
    "GetServiceLastAccessedDetailsWithEntitiesRequest": {
      "type": "structure",
      "required": [
        "JobId",
        "ServiceNamespace"
      ],
      "members": {
        "JobId": {
          "shape": "jobIDType",
          "documentation": "<p>The ID of the request generated by the <code>GenerateServiceLastAccessedDetails</code> operation.</p>"
        },
        "ServiceNamespace": {
          "shape": "serviceNamespaceType",
          "documentation": "<p>The service namespace for an AWS service. Provide the service namespace to learn when the IAM entity last attempted to access the specified service.</p> <p>To learn the service namespace for a service, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html\">Actions, Resources, and Condition Keys for AWS Services</a> in the <i>IAM User Guide</i>. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, <code>(service prefix: a4b)</code>. For more information about service namespaces, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        }
      }
    },
    "GetServiceLastAccessedDetailsWithEntitiesResponse": {
      "type": "structure",
      "required": [
        "JobStatus",
        "JobCreationDate",
        "JobCompletionDate",
        "EntityDetailsList"
      ],
      "members": {
        "JobStatus": {
          "shape": "jobStatusType",
          "documentation": "<p>The status of the job.</p>"
        },
        "JobCreationDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the report job was created.</p>"
        },
        "JobCompletionDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the generated report job was completed or failed.</p> <p>This field is null if the job is still in progress, as indicated by a job status value of <code>IN_PROGRESS</code>.</p>"
        },
        "EntityDetailsList": {
          "shape": "entityDetailsListType",
          "documentation": "<p>An <code>EntityDetailsList</code> object that contains details about when an IAM entity (user or role) used group or policy permissions in an attempt to access the specified AWS service.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        },
        "Error": {
          "shape": "ErrorDetails",
          "documentation": "<p>An object that contains details about the reason the operation failed.</p>"
        }
      }
    },
    "GetServiceLinkedRoleDeletionStatusRequest": {
      "type": "structure",
      "required": [
        "DeletionTaskId"
      ],
      "members": {
        "DeletionTaskId": {
          "shape": "DeletionTaskIdType",
          "documentation": "<p>The deletion task identifier. This identifier is returned by the <a>DeleteServiceLinkedRole</a> operation in the format <code>task/aws-service-role/&lt;service-principal-name&gt;/&lt;role-name&gt;/&lt;task-uuid&gt;</code>.</p>"
        }
      }
    },
    "GetServiceLinkedRoleDeletionStatusResponse": {
      "type": "structure",
      "required": [
        "Status"
      ],
      "members": {
        "Status": {
          "shape": "DeletionTaskStatusType",
          "documentation": "<p>The status of the deletion.</p>"
        },
        "Reason": {
          "shape": "DeletionTaskFailureReasonType",
          "documentation": "<p>An object that contains details about the reason the deletion failed.</p>"
        }
      }
    },
    "GetUserPolicyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "PolicyName"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user who the policy is associated with.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy document to get.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "GetUserPolicyResponse": {
      "type": "structure",
      "required": [
        "UserName",
        "PolicyName",
        "PolicyDocument"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The user the policy is associated with.</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy.</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy document.</p> <p>IAM stores policies in JSON format. However, resources that were created using AWS CloudFormation templates can be formatted in YAML. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetUserPolicy</a> request. </p>"
    },
    "GetUserRequest": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user to get information about.</p> <p>This parameter is optional. If it is not included, it defaults to the user making the request. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "GetUserResponse": {
      "type": "structure",
      "required": [
        "User"
      ],
      "members": {
        "User": {
          "shape": "User",
          "documentation": "<p>A structure containing details about the IAM user.</p> <important> <p>Due to a service issue, password last used data does not include password use from May 3, 2018 22:50 PDT to May 23, 2018 14:08 PDT. This affects <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_finding-unused.html\">last sign-in</a> dates shown in the IAM console and password last used dates in the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html\">IAM credential report</a>, and returned by this GetUser API. If users signed in during the affected time, the password last used date that is returned is the date the user last signed in before May 3, 2018. For users that signed in after May 23, 2018 14:08 PDT, the returned password last used date is accurate.</p> <p>You can use password last used information to identify unused credentials for deletion. For example, you might delete users who did not sign in to AWS in the last 90 days. In cases like this, we recommend that you adjust your evaluation window to include dates after May 23, 2018. Alternatively, if your users use access keys to access AWS programmatically you can refer to access key last used information because it is accurate for all dates. </p> </important>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>GetUser</a> request. </p>"
    },
    "Group": {
      "type": "structure",
      "required": [
        "Path",
        "GroupName",
        "GroupId",
        "Arn",
        "CreateDate"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p>The path to the group. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The friendly name that identifies the group.</p>"
        },
        "GroupId": {
          "shape": "idType",
          "documentation": "<p> The stable and unique string identifying the group. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "Arn": {
          "shape": "arnType",
          "documentation": "<p> The Amazon Resource Name (ARN) specifying the group. For more information about ARNs and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the group was created.</p>"
        }
      },
      "documentation": "<p>Contains information about an IAM group entity.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateGroup</a> </p> </li> <li> <p> <a>GetGroup</a> </p> </li> <li> <p> <a>ListGroups</a> </p> </li> </ul>"
    },
    "GroupDetail": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p>The path to the group. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The friendly name that identifies the group.</p>"
        },
        "GroupId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the group. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "Arn": {
          "shape": "arnType"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the group was created.</p>"
        },
        "GroupPolicyList": {
          "shape": "policyDetailListType",
          "documentation": "<p>A list of the inline policies embedded in the group.</p>"
        },
        "AttachedManagedPolicies": {
          "shape": "attachedPoliciesListType",
          "documentation": "<p>A list of the managed policies attached to the group.</p>"
        }
      },
      "documentation": "<p>Contains information about an IAM group, including all of the group's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>"
    },
    "InstanceProfile": {
      "type": "structure",
      "required": [
        "Path",
        "InstanceProfileName",
        "InstanceProfileId",
        "Arn",
        "CreateDate",
        "Roles"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p> The path to the instance profile. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "InstanceProfileName": {
          "shape": "instanceProfileNameType",
          "documentation": "<p>The name identifying the instance profile.</p>"
        },
        "InstanceProfileId": {
          "shape": "idType",
          "documentation": "<p> The stable and unique string identifying the instance profile. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "Arn": {
          "shape": "arnType",
          "documentation": "<p> The Amazon Resource Name (ARN) specifying the instance profile. For more information about ARNs and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date when the instance profile was created.</p>"
        },
        "Roles": {
          "shape": "roleListType",
          "documentation": "<p>The role associated with the instance profile.</p>"
        }
      },
      "documentation": "<p>Contains information about an instance profile.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateInstanceProfile</a> </p> </li> <li> <p> <a>GetInstanceProfile</a> </p> </li> <li> <p> <a>ListInstanceProfiles</a> </p> </li> <li> <p> <a>ListInstanceProfilesForRole</a> </p> </li> </ul>"
    },
    "LineNumber": {
      "type": "integer"
    },
    "ListAccessKeysRequest": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListAccessKeysResponse": {
      "type": "structure",
      "required": [
        "AccessKeyMetadata"
      ],
      "members": {
        "AccessKeyMetadata": {
          "shape": "accessKeyMetadataListType",
          "documentation": "<p>A list of objects containing metadata about the access keys.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListAccessKeys</a> request. </p>"
    },
    "ListAccountAliasesRequest": {
      "type": "structure",
      "members": {
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListAccountAliasesResponse": {
      "type": "structure",
      "required": [
        "AccountAliases"
      ],
      "members": {
        "AccountAliases": {
          "shape": "accountAliasListType",
          "documentation": "<p>A list of aliases associated with the account. AWS supports only one alias per account.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListAccountAliases</a> request. </p>"
    },
    "ListAttachedGroupPoliciesRequest": {
      "type": "structure",
      "required": [
        "GroupName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the group to list attached policies for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PathPrefix": {
          "shape": "policyPathType",
          "documentation": "<p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListAttachedGroupPoliciesResponse": {
      "type": "structure",
      "members": {
        "AttachedPolicies": {
          "shape": "attachedPoliciesListType",
          "documentation": "<p>A list of the attached policies.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListAttachedGroupPolicies</a> request. </p>"
    },
    "ListAttachedRolePoliciesRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the role to list attached policies for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PathPrefix": {
          "shape": "policyPathType",
          "documentation": "<p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListAttachedRolePoliciesResponse": {
      "type": "structure",
      "members": {
        "AttachedPolicies": {
          "shape": "attachedPoliciesListType",
          "documentation": "<p>A list of the attached policies.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListAttachedRolePolicies</a> request. </p>"
    },
    "ListAttachedUserPoliciesRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the user to list attached policies for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PathPrefix": {
          "shape": "policyPathType",
          "documentation": "<p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListAttachedUserPoliciesResponse": {
      "type": "structure",
      "members": {
        "AttachedPolicies": {
          "shape": "attachedPoliciesListType",
          "documentation": "<p>A list of the attached policies.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListAttachedUserPolicies</a> request. </p>"
    },
    "ListEntitiesForPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyArn"
      ],
      "members": {
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "EntityFilter": {
          "shape": "EntityType",
          "documentation": "<p>The entity type to use for filtering the results.</p> <p>For example, when <code>EntityFilter</code> is <code>Role</code>, only the roles that are attached to the specified policy are returned. This parameter is optional. If it is not included, all attached entities (users, groups, and roles) are returned. The argument for this parameter must be one of the valid values listed below.</p>"
        },
        "PathPrefix": {
          "shape": "pathType",
          "documentation": "<p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all entities.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "PolicyUsageFilter": {
          "shape": "PolicyUsageType",
          "documentation": "<p>The policy usage method to use for filtering the results.</p> <p>To list only permissions policies, set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only the policies used to set permissions boundaries, set the value to <code>PermissionsBoundary</code>.</p> <p>This parameter is optional. If it is not included, all policies are returned. </p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListEntitiesForPolicyResponse": {
      "type": "structure",
      "members": {
        "PolicyGroups": {
          "shape": "PolicyGroupListType",
          "documentation": "<p>A list of IAM groups that the policy is attached to.</p>"
        },
        "PolicyUsers": {
          "shape": "PolicyUserListType",
          "documentation": "<p>A list of IAM users that the policy is attached to.</p>"
        },
        "PolicyRoles": {
          "shape": "PolicyRoleListType",
          "documentation": "<p>A list of IAM roles that the policy is attached to.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListEntitiesForPolicy</a> request. </p>"
    },
    "ListGroupPoliciesRequest": {
      "type": "structure",
      "required": [
        "GroupName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name of the group to list policies for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListGroupPoliciesResponse": {
      "type": "structure",
      "required": [
        "PolicyNames"
      ],
      "members": {
        "PolicyNames": {
          "shape": "policyNameListType",
          "documentation": "<p>A list of policy names.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListGroupPolicies</a> request. </p>"
    },
    "ListGroupsForUserRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user to list groups for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListGroupsForUserResponse": {
      "type": "structure",
      "required": [
        "Groups"
      ],
      "members": {
        "Groups": {
          "shape": "groupListType",
          "documentation": "<p>A list of groups.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListGroupsForUser</a> request. </p>"
    },
    "ListGroupsRequest": {
      "type": "structure",
      "members": {
        "PathPrefix": {
          "shape": "pathPrefixType",
          "documentation": "<p> The path prefix for filtering the results. For example, the prefix <code>/division_abc/subdivision_xyz/</code> gets all groups whose path starts with <code>/division_abc/subdivision_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all groups. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListGroupsResponse": {
      "type": "structure",
      "required": [
        "Groups"
      ],
      "members": {
        "Groups": {
          "shape": "groupListType",
          "documentation": "<p>A list of groups.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListGroups</a> request. </p>"
    },
    "ListInstanceProfilesForRoleRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role to list instance profiles for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListInstanceProfilesForRoleResponse": {
      "type": "structure",
      "required": [
        "InstanceProfiles"
      ],
      "members": {
        "InstanceProfiles": {
          "shape": "instanceProfileListType",
          "documentation": "<p>A list of instance profiles.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListInstanceProfilesForRole</a> request. </p>"
    },
    "ListInstanceProfilesRequest": {
      "type": "structure",
      "members": {
        "PathPrefix": {
          "shape": "pathPrefixType",
          "documentation": "<p> The path prefix for filtering the results. For example, the prefix <code>/application_abc/component_xyz/</code> gets all instance profiles whose path starts with <code>/application_abc/component_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all instance profiles. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListInstanceProfilesResponse": {
      "type": "structure",
      "required": [
        "InstanceProfiles"
      ],
      "members": {
        "InstanceProfiles": {
          "shape": "instanceProfileListType",
          "documentation": "<p>A list of instance profiles.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListInstanceProfiles</a> request. </p>"
    },
    "ListMFADevicesRequest": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user whose MFA devices you want to list.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListMFADevicesResponse": {
      "type": "structure",
      "required": [
        "MFADevices"
      ],
      "members": {
        "MFADevices": {
          "shape": "mfaDeviceListType",
          "documentation": "<p>A list of MFA devices.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListMFADevices</a> request. </p>"
    },
    "ListOpenIDConnectProvidersRequest": {
      "type": "structure",
      "members": {}
    },
    "ListOpenIDConnectProvidersResponse": {
      "type": "structure",
      "members": {
        "OpenIDConnectProviderList": {
          "shape": "OpenIDConnectProviderListType",
          "documentation": "<p>The list of IAM OIDC provider resource objects defined in the AWS account.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListOpenIDConnectProviders</a> request. </p>"
    },
    "ListPoliciesGrantingServiceAccessEntry": {
      "type": "structure",
      "members": {
        "ServiceNamespace": {
          "shape": "serviceNamespaceType",
          "documentation": "<p>The namespace of the service that was accessed.</p> <p>To learn the service namespace of a service, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html\">Actions, Resources, and Condition Keys for AWS Services</a> in the <i>IAM User Guide</i>. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, <code>(service prefix: a4b)</code>. For more information about service namespaces, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "Policies": {
          "shape": "policyGrantingServiceAccessListType",
          "documentation": "<p>The <code>PoliciesGrantingServiceAccess</code> object that contains details about the policy.</p>"
        }
      },
      "documentation": "<p>Contains details about the permissions policies that are attached to the specified identity (user, group, or role).</p> <p>This data type is used as a response element in the <a>ListPoliciesGrantingServiceAccess</a> operation.</p>"
    },
    "ListPoliciesGrantingServiceAccessRequest": {
      "type": "structure",
      "required": [
        "Arn",
        "ServiceNamespaces"
      ],
      "members": {
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "Arn": {
          "shape": "arnType",
          "documentation": "<p>The ARN of the IAM identity (user, group, or role) whose policies you want to list.</p>"
        },
        "ServiceNamespaces": {
          "shape": "serviceNamespaceListType",
          "documentation": "<p>The service namespace for the AWS services whose policies you want to list.</p> <p>To learn the service namespace for a service, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html\">Actions, Resources, and Condition Keys for AWS Services</a> in the <i>IAM User Guide</i>. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, <code>(service prefix: a4b)</code>. For more information about service namespaces, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "ListPoliciesGrantingServiceAccessResponse": {
      "type": "structure",
      "required": [
        "PoliciesGrantingServiceAccess"
      ],
      "members": {
        "PoliciesGrantingServiceAccess": {
          "shape": "listPolicyGrantingServiceAccessResponseListType",
          "documentation": "<p>A <code>ListPoliciesGrantingServiceAccess</code> object that contains details about the permissions policies attached to the specified identity (user, group, or role).</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      }
    },
    "ListPoliciesRequest": {
      "type": "structure",
      "members": {
        "Scope": {
          "shape": "policyScopeType",
          "documentation": "<p>The scope to use for filtering the results.</p> <p>To list only AWS managed policies, set <code>Scope</code> to <code>AWS</code>. To list only the customer managed policies in your AWS account, set <code>Scope</code> to <code>Local</code>.</p> <p>This parameter is optional. If it is not included, or if it is set to <code>All</code>, all policies are returned.</p>"
        },
        "OnlyAttached": {
          "shape": "booleanType",
          "documentation": "<p>A flag to filter the results to only the attached policies.</p> <p>When <code>OnlyAttached</code> is <code>true</code>, the returned list contains only the policies that are attached to an IAM user, group, or role. When <code>OnlyAttached</code> is <code>false</code>, or when the parameter is not included, all policies are returned.</p>"
        },
        "PathPrefix": {
          "shape": "policyPathType",
          "documentation": "<p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "PolicyUsageFilter": {
          "shape": "PolicyUsageType",
          "documentation": "<p>The policy usage method to use for filtering the results.</p> <p>To list only permissions policies, set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only the policies used to set permissions boundaries, set the value to <code>PermissionsBoundary</code>.</p> <p>This parameter is optional. If it is not included, all policies are returned. </p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListPoliciesResponse": {
      "type": "structure",
      "members": {
        "Policies": {
          "shape": "policyListType",
          "documentation": "<p>A list of policies.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListPolicies</a> request. </p>"
    },
    "ListPolicyVersionsRequest": {
      "type": "structure",
      "required": [
        "PolicyArn"
      ],
      "members": {
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListPolicyVersionsResponse": {
      "type": "structure",
      "members": {
        "Versions": {
          "shape": "policyDocumentVersionListType",
          "documentation": "<p>A list of policy versions.</p> <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListPolicyVersions</a> request. </p>"
    },
    "ListRolePoliciesRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role to list policies for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListRolePoliciesResponse": {
      "type": "structure",
      "required": [
        "PolicyNames"
      ],
      "members": {
        "PolicyNames": {
          "shape": "policyNameListType",
          "documentation": "<p>A list of policy names.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListRolePolicies</a> request. </p>"
    },
    "ListRoleTagsRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the IAM role for which you want to see the list of tags.</p> <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>(Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListRoleTagsResponse": {
      "type": "structure",
      "required": [
        "Tags"
      ],
      "members": {
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>The list of tags currently that is attached to the role. Each tag consists of a key name and an associated value. If no tags are attached to the specified role, the response contains an empty list.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can use the <code>Marker</code> request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when more results are available. Check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      }
    },
    "ListRolesRequest": {
      "type": "structure",
      "members": {
        "PathPrefix": {
          "shape": "pathPrefixType",
          "documentation": "<p> The path prefix for filtering the results. For example, the prefix <code>/application_abc/component_xyz/</code> gets all roles whose path starts with <code>/application_abc/component_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListRolesResponse": {
      "type": "structure",
      "required": [
        "Roles"
      ],
      "members": {
        "Roles": {
          "shape": "roleListType",
          "documentation": "<p>A list of roles.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListRoles</a> request. </p>"
    },
    "ListSAMLProvidersRequest": {
      "type": "structure",
      "members": {}
    },
    "ListSAMLProvidersResponse": {
      "type": "structure",
      "members": {
        "SAMLProviderList": {
          "shape": "SAMLProviderListType",
          "documentation": "<p>The list of SAML provider resource objects defined in IAM for this AWS account.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListSAMLProviders</a> request. </p>"
    },
    "ListSSHPublicKeysRequest": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user to list SSH public keys for. If none is specified, the <code>UserName</code> field is determined implicitly based on the AWS access key used to sign the request.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListSSHPublicKeysResponse": {
      "type": "structure",
      "members": {
        "SSHPublicKeys": {
          "shape": "SSHPublicKeyListType",
          "documentation": "<p>A list of the SSH public keys assigned to IAM user.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListSSHPublicKeys</a> request.</p>"
    },
    "ListServerCertificatesRequest": {
      "type": "structure",
      "members": {
        "PathPrefix": {
          "shape": "pathPrefixType",
          "documentation": "<p> The path prefix for filtering the results. For example: <code>/company/servercerts</code> would get all server certificates for which the path starts with <code>/company/servercerts</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all server certificates. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListServerCertificatesResponse": {
      "type": "structure",
      "required": [
        "ServerCertificateMetadataList"
      ],
      "members": {
        "ServerCertificateMetadataList": {
          "shape": "serverCertificateMetadataListType",
          "documentation": "<p>A list of server certificates.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListServerCertificates</a> request. </p>"
    },
    "ListServiceSpecificCredentialsRequest": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the user whose service-specific credentials you want information about. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "ServiceName": {
          "shape": "serviceName",
          "documentation": "<p>Filters the returned results to only those for the specified AWS service. If not specified, then AWS returns service-specific credentials for all services.</p>"
        }
      }
    },
    "ListServiceSpecificCredentialsResponse": {
      "type": "structure",
      "members": {
        "ServiceSpecificCredentials": {
          "shape": "ServiceSpecificCredentialsListType",
          "documentation": "<p>A list of structures that each contain details about a service-specific credential.</p>"
        }
      }
    },
    "ListSigningCertificatesRequest": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the IAM user whose signing certificates you want to examine.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListSigningCertificatesResponse": {
      "type": "structure",
      "required": [
        "Certificates"
      ],
      "members": {
        "Certificates": {
          "shape": "certificateListType",
          "documentation": "<p>A list of the user's signing certificate information.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListSigningCertificates</a> request. </p>"
    },
    "ListUserPoliciesRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user to list policies for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListUserPoliciesResponse": {
      "type": "structure",
      "required": [
        "PolicyNames"
      ],
      "members": {
        "PolicyNames": {
          "shape": "policyNameListType",
          "documentation": "<p>A list of policy names.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListUserPolicies</a> request. </p>"
    },
    "ListUserTagsRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the IAM user whose tags you want to see.</p> <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>(Optional) Use this only when paginating results to indicate the maximum number of items that you want in the response. If additional items exist beyond the maximum that you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when more results are available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListUserTagsResponse": {
      "type": "structure",
      "required": [
        "Tags"
      ],
      "members": {
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>The list of tags that are currently attached to the user. Each tag consists of a key name and an associated value. If no tags are attached to the specified user, the response contains an empty list.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can use the <code>Marker</code> request parameter to make a subsequent pagination request that retrieves more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when more results are available. Check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      }
    },
    "ListUsersRequest": {
      "type": "structure",
      "members": {
        "PathPrefix": {
          "shape": "pathPrefixType",
          "documentation": "<p> The path prefix for filtering the results. For example: <code>/division_abc/subdivision_xyz/</code>, which would get all user names whose path starts with <code>/division_abc/subdivision_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all user names. This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListUsersResponse": {
      "type": "structure",
      "required": [
        "Users"
      ],
      "members": {
        "Users": {
          "shape": "userListType",
          "documentation": "<p>A list of users.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListUsers</a> request. </p>"
    },
    "ListVirtualMFADevicesRequest": {
      "type": "structure",
      "members": {
        "AssignmentStatus": {
          "shape": "assignmentStatusType",
          "documentation": "<p> The status (<code>Unassigned</code> or <code>Assigned</code>) of the devices to list. If you do not specify an <code>AssignmentStatus</code>, the operation defaults to <code>Any</code>, which lists both assigned and unassigned virtual MFA devices.,</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        }
      }
    },
    "ListVirtualMFADevicesResponse": {
      "type": "structure",
      "required": [
        "VirtualMFADevices"
      ],
      "members": {
        "VirtualMFADevices": {
          "shape": "virtualMFADeviceListType",
          "documentation": "<p> The list of virtual MFA devices in the current account that match the <code>AssignmentStatus</code> value that was passed in the request.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>ListVirtualMFADevices</a> request. </p>"
    },
    "LoginProfile": {
      "type": "structure",
      "required": [
        "UserName",
        "CreateDate"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the user, which can be used for signing in to the AWS Management Console.</p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date when the password for the user was created.</p>"
        },
        "PasswordResetRequired": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether the user is required to set a new password on next sign-in.</p>"
        }
      },
      "documentation": "<p>Contains the user name and password create date for a user.</p> <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> operations. </p>"
    },
    "MFADevice": {
      "type": "structure",
      "required": [
        "UserName",
        "SerialNumber",
        "EnableDate"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The user with whom the MFA device is associated.</p>"
        },
        "SerialNumber": {
          "shape": "serialNumberType",
          "documentation": "<p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p>"
        },
        "EnableDate": {
          "shape": "dateType",
          "documentation": "<p>The date when the MFA device was enabled for the user.</p>"
        }
      },
      "documentation": "<p>Contains information about an MFA device.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> operation.</p>"
    },
    "ManagedPolicyDetail": {
      "type": "structure",
      "members": {
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The friendly name (not ARN) identifying the policy.</p>"
        },
        "PolicyId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the policy.</p> <p>For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "Arn": {
          "shape": "arnType"
        },
        "Path": {
          "shape": "policyPathType",
          "documentation": "<p>The path to the policy.</p> <p>For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "DefaultVersionId": {
          "shape": "policyVersionIdType",
          "documentation": "<p>The identifier for the version of the policy that is set as the default (operative) version.</p> <p>For more information about policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>. </p>"
        },
        "AttachmentCount": {
          "shape": "attachmentCountType",
          "documentation": "<p>The number of principal entities (users, groups, and roles) that the policy is attached to.</p>"
        },
        "PermissionsBoundaryUsageCount": {
          "shape": "attachmentCountType",
          "documentation": "<p>The number of entities (users and roles) for which the policy is used as the permissions boundary. </p> <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>"
        },
        "IsAttachable": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>"
        },
        "Description": {
          "shape": "policyDescriptionType",
          "documentation": "<p>A friendly description of the policy.</p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the policy was created.</p>"
        },
        "UpdateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the policy was last updated.</p> <p>When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.</p>"
        },
        "PolicyVersionList": {
          "shape": "policyDocumentVersionListType",
          "documentation": "<p>A list containing information about the versions of the policy.</p>"
        }
      },
      "documentation": "<p>Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p> <p>For more information about managed policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>. </p>"
    },
    "ManagedPolicyDetailListType": {
      "type": "list",
      "member": {
        "shape": "ManagedPolicyDetail"
      }
    },
    "OpenIDConnectProviderListEntry": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "arnType"
        }
      },
      "documentation": "<p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>"
    },
    "OpenIDConnectProviderListType": {
      "type": "list",
      "member": {
        "shape": "OpenIDConnectProviderListEntry"
      },
      "documentation": "<p>Contains a list of IAM OpenID Connect providers.</p>"
    },
    "OpenIDConnectProviderUrlType": {
      "type": "string",
      "documentation": "<p>Contains a URL that specifies the endpoint for an OpenID Connect provider.</p>",
      "max": 255,
      "min": 1
    },
    "OrganizationsDecisionDetail": {
      "type": "structure",
      "members": {
        "AllowedByOrganizations": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether the simulated operation is allowed by the Organizations service control policies that impact the simulated user's account.</p>"
        }
      },
      "documentation": "<p>Contains information about the effect that Organizations has on a policy simulation.</p>"
    },
    "PasswordPolicy": {
      "type": "structure",
      "members": {
        "MinimumPasswordLength": {
          "shape": "minimumPasswordLengthType",
          "documentation": "<p>Minimum length to require for IAM user passwords.</p>"
        },
        "RequireSymbols": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether to require symbols for IAM user passwords.</p>"
        },
        "RequireNumbers": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether to require numbers for IAM user passwords.</p>"
        },
        "RequireUppercaseCharacters": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether to require uppercase characters for IAM user passwords.</p>"
        },
        "RequireLowercaseCharacters": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether to require lowercase characters for IAM user passwords.</p>"
        },
        "AllowUsersToChangePassword": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether IAM users are allowed to change their own password.</p>"
        },
        "ExpirePasswords": {
          "shape": "booleanType",
          "documentation": "<p>Indicates whether passwords in the account expire. Returns true if <code>MaxPasswordAge</code> contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.</p>"
        },
        "MaxPasswordAge": {
          "shape": "maxPasswordAgeType",
          "documentation": "<p>The number of days that an IAM user password is valid.</p>"
        },
        "PasswordReusePrevention": {
          "shape": "passwordReusePreventionType",
          "documentation": "<p>Specifies the number of previous passwords that IAM users are prevented from reusing.</p>"
        },
        "HardExpiry": {
          "shape": "booleanObjectType",
          "documentation": "<p>Specifies whether IAM users are prevented from setting a new password after their password has expired.</p>"
        }
      },
      "documentation": "<p>Contains information about the account password policy.</p> <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> operation. </p>"
    },
    "PermissionsBoundaryAttachmentType": {
      "type": "string",
      "enum": [
        "PermissionsBoundaryPolicy"
      ]
    },
    "PermissionsBoundaryDecisionDetail": {
      "type": "structure",
      "members": {
        "AllowedByPermissionsBoundary": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether an action is allowed by a permissions boundary that is applied to an IAM entity (user or role). A value of <code>true</code> means that the permissions boundary does not deny the action. This means that the policy includes an <code>Allow</code> statement that matches the request. In this case, if an identity-based policy also allows the action, the request is allowed. A value of <code>false</code> means that either the requested action is not allowed (implicitly denied) or that the action is explicitly denied by the permissions boundary. In both of these cases, the action is not allowed, regardless of the identity-based policy.</p>"
        }
      },
      "documentation": "<p>Contains information about the effect that a permissions boundary has on a policy simulation when the boundary is applied to an IAM entity.</p>"
    },
    "Policy": {
      "type": "structure",
      "members": {
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The friendly name (not ARN) identifying the policy.</p>"
        },
        "PolicyId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the policy.</p> <p>For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "Arn": {
          "shape": "arnType"
        },
        "Path": {
          "shape": "policyPathType",
          "documentation": "<p>The path to the policy.</p> <p>For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "DefaultVersionId": {
          "shape": "policyVersionIdType",
          "documentation": "<p>The identifier for the version of the policy that is set as the default version.</p>"
        },
        "AttachmentCount": {
          "shape": "attachmentCountType",
          "documentation": "<p>The number of entities (users, groups, and roles) that the policy is attached to.</p>"
        },
        "PermissionsBoundaryUsageCount": {
          "shape": "attachmentCountType",
          "documentation": "<p>The number of entities (users and roles) for which the policy is used to set the permissions boundary. </p> <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>"
        },
        "IsAttachable": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>"
        },
        "Description": {
          "shape": "policyDescriptionType",
          "documentation": "<p>A friendly description of the policy.</p> <p>This element is included in the response to the <a>GetPolicy</a> operation. It is not included in the response to the <a>ListPolicies</a> operation. </p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the policy was created.</p>"
        },
        "UpdateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the policy was last updated.</p> <p>When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.</p>"
        }
      },
      "documentation": "<p>Contains information about a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicy</a>, <a>GetPolicy</a>, and <a>ListPolicies</a> operations. </p> <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>. </p>"
    },
    "PolicyDetail": {
      "type": "structure",
      "members": {
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy.</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy document.</p>"
        }
      },
      "documentation": "<p>Contains information about an IAM policy, including the policy document.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>"
    },
    "PolicyEvaluationDecisionType": {
      "type": "string",
      "enum": [
        "allowed",
        "explicitDeny",
        "implicitDeny"
      ]
    },
    "PolicyGrantingServiceAccess": {
      "type": "structure",
      "required": [
        "PolicyName",
        "PolicyType"
      ],
      "members": {
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The policy name.</p>"
        },
        "PolicyType": {
          "shape": "policyType",
          "documentation": "<p>The policy type. For more information about these policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
        },
        "PolicyArn": {
          "shape": "arnType"
        },
        "EntityType": {
          "shape": "policyOwnerEntityType",
          "documentation": "<p>The type of entity (user or role) that used the policy to access the service to which the inline policy is attached.</p> <p>This field is null for managed policies. For more information about these policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
        },
        "EntityName": {
          "shape": "entityNameType",
          "documentation": "<p>The name of the entity (user or role) to which the inline policy is attached.</p> <p>This field is null for managed policies. For more information about these policy types, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains details about the permissions policies that are attached to the specified identity (user, group, or role).</p> <p>This data type is an element of the <a>ListPoliciesGrantingServiceAccessEntry</a> object.</p>"
    },
    "PolicyGroup": {
      "type": "structure",
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name (friendly name, not ARN) identifying the group.</p>"
        },
        "GroupId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the group. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains information about a group that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>. </p>"
    },
    "PolicyGroupListType": {
      "type": "list",
      "member": {
        "shape": "PolicyGroup"
      }
    },
    "PolicyIdentifierType": {
      "type": "string"
    },
    "PolicyRole": {
      "type": "structure",
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name (friendly name, not ARN) identifying the role.</p>"
        },
        "RoleId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the role. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains information about a role that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>. </p>"
    },
    "PolicyRoleListType": {
      "type": "list",
      "member": {
        "shape": "PolicyRole"
      }
    },
    "PolicySourceType": {
      "type": "string",
      "enum": [
        "user",
        "group",
        "role",
        "aws-managed",
        "user-managed",
        "resource",
        "none"
      ]
    },
    "PolicyUsageType": {
      "type": "string",
      "documentation": "<p>The policy usage type that indicates whether the policy is used as a permissions policy or as the permissions boundary for an entity.</p> <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>",
      "enum": [
        "PermissionsPolicy",
        "PermissionsBoundary"
      ]
    },
    "PolicyUser": {
      "type": "structure",
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name (friendly name, not ARN) identifying the user.</p>"
        },
        "UserId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the user. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains information about a user that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>. </p>"
    },
    "PolicyUserListType": {
      "type": "list",
      "member": {
        "shape": "PolicyUser"
      }
    },
    "PolicyVersion": {
      "type": "structure",
      "members": {
        "Document": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy document.</p> <p>The policy document is returned in the response to the <a>GetPolicyVersion</a> and <a>GetAccountAuthorizationDetails</a> operations. It is not returned in the response to the <a>CreatePolicyVersion</a> or <a>ListPolicyVersions</a> operations. </p> <p>The policy document returned in this structure is URL-encoded compliant with <a href=\"https://tools.ietf.org/html/rfc3986\">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p>"
        },
        "VersionId": {
          "shape": "policyVersionIdType",
          "documentation": "<p>The identifier for the policy version.</p> <p>Policy version identifiers always begin with <code>v</code> (always lowercase). When a policy is created, the first policy version is <code>v1</code>. </p>"
        },
        "IsDefaultVersion": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether the policy version is set as the policy's default version.</p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the policy version was created.</p>"
        }
      },
      "documentation": "<p>Contains information about a version of a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> operations. </p> <p>For more information about managed policies, refer to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html\">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>. </p>"
    },
    "Position": {
      "type": "structure",
      "members": {
        "Line": {
          "shape": "LineNumber",
          "documentation": "<p>The line containing the specified position in the document.</p>"
        },
        "Column": {
          "shape": "ColumnNumber",
          "documentation": "<p>The column in the line containing the specified position in the document.</p>"
        }
      },
      "documentation": "<p>Contains the row and column of a location of a <code>Statement</code> element in a policy document.</p> <p>This data type is used as a member of the <code> <a>Statement</a> </code> type.</p>"
    },
    "PutGroupPolicyRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "PolicyName",
        "PolicyDocument"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name of the group to associate the policy with.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-.</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy document.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy document.</p> <p>You must provide policies in JSON format in IAM. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "PutRolePermissionsBoundaryRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "PermissionsBoundary"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the IAM role for which you want to set the permissions boundary.</p>"
        },
        "PermissionsBoundary": {
          "shape": "arnType",
          "documentation": "<p>The ARN of the policy that is used to set the permissions boundary for the role.</p>"
        }
      }
    },
    "PutRolePolicyRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "PolicyName",
        "PolicyDocument"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role to associate the policy with.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy document.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy document.</p> <p>You must provide policies in JSON format in IAM. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "PutUserPermissionsBoundaryRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "PermissionsBoundary"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name (friendly name, not ARN) of the IAM user for which you want to set the permissions boundary.</p>"
        },
        "PermissionsBoundary": {
          "shape": "arnType",
          "documentation": "<p>The ARN of the policy that is used to set the permissions boundary for the user.</p>"
        }
      }
    },
    "PutUserPolicyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "PolicyName",
        "PolicyDocument"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user to associate the policy with.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyName": {
          "shape": "policyNameType",
          "documentation": "<p>The name of the policy document.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy document.</p> <p>You must provide policies in JSON format in IAM. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "ReasonType": {
      "type": "string",
      "max": 1000
    },
    "RegionNameType": {
      "type": "string",
      "max": 100,
      "min": 1
    },
    "RemoveClientIDFromOpenIDConnectProviderRequest": {
      "type": "structure",
      "required": [
        "OpenIDConnectProviderArn",
        "ClientID"
      ],
      "members": {
        "OpenIDConnectProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the client ID from. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ClientID": {
          "shape": "clientIDType",
          "documentation": "<p>The client ID (also known as audience) to remove from the IAM OIDC provider resource. For more information about client IDs, see <a>CreateOpenIDConnectProvider</a>.</p>"
        }
      }
    },
    "RemoveRoleFromInstanceProfileRequest": {
      "type": "structure",
      "required": [
        "InstanceProfileName",
        "RoleName"
      ],
      "members": {
        "InstanceProfileName": {
          "shape": "instanceProfileNameType",
          "documentation": "<p>The name of the instance profile to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role to remove.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "RemoveUserFromGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName",
        "UserName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>The name of the group to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user to remove.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "ReportContentType": {
      "type": "blob"
    },
    "ReportFormatType": {
      "type": "string",
      "enum": [
        "text/csv"
      ]
    },
    "ReportStateDescriptionType": {
      "type": "string"
    },
    "ReportStateType": {
      "type": "string",
      "enum": [
        "STARTED",
        "INPROGRESS",
        "COMPLETE"
      ]
    },
    "ResetServiceSpecificCredentialRequest": {
      "type": "structure",
      "required": [
        "ServiceSpecificCredentialId"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "ServiceSpecificCredentialId": {
          "shape": "serviceSpecificCredentialId",
          "documentation": "<p>The unique identifier of the service-specific credential.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        }
      }
    },
    "ResetServiceSpecificCredentialResponse": {
      "type": "structure",
      "members": {
        "ServiceSpecificCredential": {
          "shape": "ServiceSpecificCredential",
          "documentation": "<p>A structure with details about the updated service-specific credential, including the new password.</p> <important> <p>This is the <b>only</b> time that you can access the password. You cannot recover the password later, but you can reset it again.</p> </important>"
        }
      }
    },
    "ResourceHandlingOptionType": {
      "type": "string",
      "max": 64,
      "min": 1
    },
    "ResourceNameListType": {
      "type": "list",
      "member": {
        "shape": "ResourceNameType"
      }
    },
    "ResourceNameType": {
      "type": "string",
      "max": 2048,
      "min": 1
    },
    "ResourceSpecificResult": {
      "type": "structure",
      "required": [
        "EvalResourceName",
        "EvalResourceDecision"
      ],
      "members": {
        "EvalResourceName": {
          "shape": "ResourceNameType",
          "documentation": "<p>The name of the simulated resource, in Amazon Resource Name (ARN) format.</p>"
        },
        "EvalResourceDecision": {
          "shape": "PolicyEvaluationDecisionType",
          "documentation": "<p>The result of the simulation of the simulated API operation on the resource specified in <code>EvalResourceName</code>.</p>"
        },
        "MatchedStatements": {
          "shape": "StatementListType",
          "documentation": "<p>A list of the statements in the input policies that determine the result for this part of the simulation. Remember that even if multiple statements allow the operation on the resource, if <i>any</i> statement denies that operation, then the explicit deny overrides any allow. In addition, the deny statement is the only entry included in the result.</p>"
        },
        "MissingContextValues": {
          "shape": "ContextKeyNamesResultListType",
          "documentation": "<p>A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when a list of ARNs is included in the <code>ResourceArns</code> parameter instead of \"*\". If you do not specify individual resources, by setting <code>ResourceArns</code> to \"*\" or by not including the <code>ResourceArns</code> parameter, then any missing context values are instead included under the <code>EvaluationResults</code> section. To discover the context keys used by a set of policies, you can call <a>GetContextKeysForCustomPolicy</a> or <a>GetContextKeysForPrincipalPolicy</a>.</p>"
        },
        "EvalDecisionDetails": {
          "shape": "EvalDecisionDetailsType",
          "documentation": "<p>Additional details about the results of the evaluation decision on a single resource. This parameter is returned only for cross-account simulations. This parameter explains how each policy type contributes to the resource-specific evaluation decision.</p>"
        },
        "PermissionsBoundaryDecisionDetail": {
          "shape": "PermissionsBoundaryDecisionDetail",
          "documentation": "<p>Contains information about the effect that a permissions boundary has on a policy simulation when that boundary is applied to an IAM entity.</p>"
        }
      },
      "documentation": "<p>Contains the result of the simulation of a single API operation call on a single resource.</p> <p>This data type is used by a member of the <a>EvaluationResult</a> data type.</p>"
    },
    "ResourceSpecificResultListType": {
      "type": "list",
      "member": {
        "shape": "ResourceSpecificResult"
      }
    },
    "ResyncMFADeviceRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "SerialNumber",
        "AuthenticationCode1",
        "AuthenticationCode2"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user whose MFA device you want to resynchronize.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "SerialNumber": {
          "shape": "serialNumberType",
          "documentation": "<p>Serial number that uniquely identifies the MFA device.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "AuthenticationCode1": {
          "shape": "authenticationCodeType",
          "documentation": "<p>An authentication code emitted by the device.</p> <p>The format for this parameter is a sequence of six digits.</p>"
        },
        "AuthenticationCode2": {
          "shape": "authenticationCodeType",
          "documentation": "<p>A subsequent authentication code emitted by the device.</p> <p>The format for this parameter is a sequence of six digits.</p>"
        }
      }
    },
    "Role": {
      "type": "structure",
      "required": [
        "Path",
        "RoleName",
        "RoleId",
        "Arn",
        "CreateDate"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p> The path to the role. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The friendly name that identifies the role.</p>"
        },
        "RoleId": {
          "shape": "idType",
          "documentation": "<p> The stable and unique string identifying the role. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "Arn": {
          "shape": "arnType",
          "documentation": "<p> The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i> guide. </p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the role was created.</p>"
        },
        "AssumeRolePolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy that grants an entity permission to assume the role.</p>"
        },
        "Description": {
          "shape": "roleDescriptionType",
          "documentation": "<p>A description of the role that you provide.</p>"
        },
        "MaxSessionDuration": {
          "shape": "roleMaxSessionDurationType",
          "documentation": "<p>The maximum session duration (in seconds) for the specified role. Anyone who uses the AWS CLI, or API to assume the role can specify the duration using the optional <code>DurationSeconds</code> API parameter or <code>duration-seconds</code> CLI parameter.</p>"
        },
        "PermissionsBoundary": {
          "shape": "AttachedPermissionsBoundary",
          "documentation": "<p>The ARN of the policy used to set the permissions boundary for the role.</p> <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>"
        },
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>A list of tags that are attached to the specified role. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
        },
        "RoleLastUsed": {
          "shape": "RoleLastUsed",
          "documentation": "<p>Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions Where Data Is Tracked</a> in the <i>IAM User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains information about an IAM role. This structure is returned as a response element in several API operations that interact with roles.</p>"
    },
    "RoleDetail": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p>The path to the role. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The friendly name that identifies the role.</p>"
        },
        "RoleId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the role. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "Arn": {
          "shape": "arnType"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the role was created.</p>"
        },
        "AssumeRolePolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The trust policy that grants permission to assume the role.</p>"
        },
        "InstanceProfileList": {
          "shape": "instanceProfileListType",
          "documentation": "<p>A list of instance profiles that contain this role.</p>"
        },
        "RolePolicyList": {
          "shape": "policyDetailListType",
          "documentation": "<p>A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.</p>"
        },
        "AttachedManagedPolicies": {
          "shape": "attachedPoliciesListType",
          "documentation": "<p>A list of managed policies attached to the role. These policies are the role's access (permissions) policies.</p>"
        },
        "PermissionsBoundary": {
          "shape": "AttachedPermissionsBoundary",
          "documentation": "<p>The ARN of the policy used to set the permissions boundary for the role.</p> <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>"
        },
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>A list of tags that are attached to the specified role. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
        },
        "RoleLastUsed": {
          "shape": "RoleLastUsed",
          "documentation": "<p>Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions Where Data Is Tracked</a> in the <i>IAM User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains information about an IAM role, including all of the role's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>"
    },
    "RoleLastUsed": {
      "type": "structure",
      "members": {
        "LastUsedDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a> that the role was last used.</p> <p>This field is null if the role has not been used within the IAM tracking period. For more information about the tracking period, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions Where Data Is Tracked</a> in the <i>IAM User Guide</i>. </p>"
        },
        "Region": {
          "shape": "stringType",
          "documentation": "<p>The name of the AWS Region in which the role was last used.</p>"
        }
      },
      "documentation": "<p>Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period\">Regions Where Data Is Tracked</a> in the <i>IAM User Guide</i>.</p> <p>This data type is returned as a response element in the <a>GetRole</a> and <a>GetAccountAuthorizationDetails</a> operations.</p>"
    },
    "RoleUsageListType": {
      "type": "list",
      "member": {
        "shape": "RoleUsageType"
      }
    },
    "RoleUsageType": {
      "type": "structure",
      "members": {
        "Region": {
          "shape": "RegionNameType",
          "documentation": "<p>The name of the Region where the service-linked role is being used.</p>"
        },
        "Resources": {
          "shape": "ArnListType",
          "documentation": "<p>The name of the resource that is using the service-linked role.</p>"
        }
      },
      "documentation": "<p>An object that contains details about how a service-linked role is used, if that information is returned by the service.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>"
    },
    "SAMLMetadataDocumentType": {
      "type": "string",
      "max": 10000000,
      "min": 1000
    },
    "SAMLProviderListEntry": {
      "type": "structure",
      "members": {
        "Arn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SAML provider.</p>"
        },
        "ValidUntil": {
          "shape": "dateType",
          "documentation": "<p>The expiration date and time for the SAML provider.</p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time when the SAML provider was created.</p>"
        }
      },
      "documentation": "<p>Contains the list of SAML providers for this account.</p>"
    },
    "SAMLProviderListType": {
      "type": "list",
      "member": {
        "shape": "SAMLProviderListEntry"
      }
    },
    "SAMLProviderNameType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w._-]+"
    },
    "SSHPublicKey": {
      "type": "structure",
      "required": [
        "UserName",
        "SSHPublicKeyId",
        "Fingerprint",
        "SSHPublicKeyBody",
        "Status"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the SSH public key.</p>"
        },
        "SSHPublicKeyId": {
          "shape": "publicKeyIdType",
          "documentation": "<p>The unique identifier for the SSH public key.</p>"
        },
        "Fingerprint": {
          "shape": "publicKeyFingerprintType",
          "documentation": "<p>The MD5 message digest of the SSH public key.</p>"
        },
        "SSHPublicKeyBody": {
          "shape": "publicKeyMaterialType",
          "documentation": "<p>The SSH public key.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status of the SSH public key. <code>Active</code> means that the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means that the key cannot be used.</p>"
        },
        "UploadDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the SSH public key was uploaded.</p>"
        }
      },
      "documentation": "<p>Contains information about an SSH public key.</p> <p>This data type is used as a response element in the <a>GetSSHPublicKey</a> and <a>UploadSSHPublicKey</a> operations. </p>"
    },
    "SSHPublicKeyListType": {
      "type": "list",
      "member": {
        "shape": "SSHPublicKeyMetadata"
      }
    },
    "SSHPublicKeyMetadata": {
      "type": "structure",
      "required": [
        "UserName",
        "SSHPublicKeyId",
        "Status",
        "UploadDate"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the SSH public key.</p>"
        },
        "SSHPublicKeyId": {
          "shape": "publicKeyIdType",
          "documentation": "<p>The unique identifier for the SSH public key.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status of the SSH public key. <code>Active</code> means that the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means that the key cannot be used.</p>"
        },
        "UploadDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the SSH public key was uploaded.</p>"
        }
      },
      "documentation": "<p>Contains information about an SSH public key, without the key's body or fingerprint.</p> <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a> operation.</p>"
    },
    "ServerCertificate": {
      "type": "structure",
      "required": [
        "ServerCertificateMetadata",
        "CertificateBody"
      ],
      "members": {
        "ServerCertificateMetadata": {
          "shape": "ServerCertificateMetadata",
          "documentation": "<p>The meta information of the server certificate, such as its name, path, ID, and ARN.</p>"
        },
        "CertificateBody": {
          "shape": "certificateBodyType",
          "documentation": "<p>The contents of the public key certificate.</p>"
        },
        "CertificateChain": {
          "shape": "certificateChainType",
          "documentation": "<p>The contents of the public key certificate chain.</p>"
        }
      },
      "documentation": "<p>Contains information about a server certificate.</p> <p> This data type is used as a response element in the <a>GetServerCertificate</a> operation. </p>"
    },
    "ServerCertificateMetadata": {
      "type": "structure",
      "required": [
        "Path",
        "ServerCertificateName",
        "ServerCertificateId",
        "Arn"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p> The path to the server certificate. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "ServerCertificateName": {
          "shape": "serverCertificateNameType",
          "documentation": "<p>The name that identifies the server certificate.</p>"
        },
        "ServerCertificateId": {
          "shape": "idType",
          "documentation": "<p> The stable and unique string identifying the server certificate. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "Arn": {
          "shape": "arnType",
          "documentation": "<p> The Amazon Resource Name (ARN) specifying the server certificate. For more information about ARNs and how to use them in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "UploadDate": {
          "shape": "dateType",
          "documentation": "<p>The date when the server certificate was uploaded.</p>"
        },
        "Expiration": {
          "shape": "dateType",
          "documentation": "<p>The date on which the certificate is set to expire.</p>"
        }
      },
      "documentation": "<p>Contains information about a server certificate without its certificate body, certificate chain, and private key.</p> <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a> operations. </p>"
    },
    "ServiceLastAccessed": {
      "type": "structure",
      "required": [
        "ServiceName",
        "ServiceNamespace"
      ],
      "members": {
        "ServiceName": {
          "shape": "serviceNameType",
          "documentation": "<p>The name of the service in which access was attempted.</p>"
        },
        "LastAuthenticated": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when an authenticated entity most recently attempted to access the service. AWS does not report unauthenticated requests.</p> <p>This field is null if no IAM entities attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        },
        "ServiceNamespace": {
          "shape": "serviceNamespaceType",
          "documentation": "<p>The namespace of the service in which access was attempted.</p> <p>To learn the service namespace of a service, go to <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html\">Actions, Resources, and Condition Keys for AWS Services</a> in the <i>IAM User Guide</i>. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, <code>(service prefix: a4b)</code>. For more information about service namespaces, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "LastAuthenticatedEntity": {
          "shape": "arnType",
          "documentation": "<p>The ARN of the authenticated entity (user or role) that last attempted to access the service. AWS does not report unauthenticated requests.</p> <p>This field is null if no IAM entities attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        },
        "LastAuthenticatedRegion": {
          "shape": "stringType",
          "documentation": "<p>The Region from which the authenticated entity (user or role) last attempted to access the service. AWS does not report unauthenticated requests.</p> <p>This field is null if no IAM entities attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        },
        "TotalAuthenticatedEntities": {
          "shape": "integerType",
          "documentation": "<p>The total number of authenticated principals (root user, IAM users, or IAM roles) that have attempted to access the service.</p> <p>This field is null if no principals attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        },
        "TrackedActionsLastAccessed": {
          "shape": "TrackedActionsLastAccessed",
          "documentation": "<p>An object that contains details about the most recent attempt to access a tracked action within the service.</p> <p>This field is null if there no tracked actions or if the principal did not use the tracked actions within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>. This field is also null if the report was generated at the service level and not the action level. For more information, see the <code>Granularity</code> field in <a>GenerateServiceLastAccessedDetails</a>.</p>"
        }
      },
      "documentation": "<p>Contains details about the most recent attempt to access the service.</p> <p>This data type is used as a response element in the <a>GetServiceLastAccessedDetails</a> operation.</p>"
    },
    "ServiceSpecificCredential": {
      "type": "structure",
      "required": [
        "CreateDate",
        "ServiceName",
        "ServiceUserName",
        "ServicePassword",
        "ServiceSpecificCredentialId",
        "UserName",
        "Status"
      ],
      "members": {
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the service-specific credential were created.</p>"
        },
        "ServiceName": {
          "shape": "serviceName",
          "documentation": "<p>The name of the service associated with the service-specific credential.</p>"
        },
        "ServiceUserName": {
          "shape": "serviceUserName",
          "documentation": "<p>The generated user name for the service-specific credential. This value is generated by combining the IAM user's name combined with the ID number of the AWS account, as in <code>jane-at-123456789012</code>, for example. This value cannot be configured by the user.</p>"
        },
        "ServicePassword": {
          "shape": "servicePassword",
          "documentation": "<p>The generated password for the service-specific credential.</p>"
        },
        "ServiceSpecificCredentialId": {
          "shape": "serviceSpecificCredentialId",
          "documentation": "<p>The unique identifier for the service-specific credential.</p>"
        },
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the service-specific credential.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status of the service-specific credential. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not.</p>"
        }
      },
      "documentation": "<p>Contains the details of a service-specific credential.</p>"
    },
    "ServiceSpecificCredentialMetadata": {
      "type": "structure",
      "required": [
        "UserName",
        "Status",
        "ServiceUserName",
        "CreateDate",
        "ServiceSpecificCredentialId",
        "ServiceName"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the service-specific credential.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status of the service-specific credential. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not.</p>"
        },
        "ServiceUserName": {
          "shape": "serviceUserName",
          "documentation": "<p>The generated user name for the service-specific credential.</p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the service-specific credential were created.</p>"
        },
        "ServiceSpecificCredentialId": {
          "shape": "serviceSpecificCredentialId",
          "documentation": "<p>The unique identifier for the service-specific credential.</p>"
        },
        "ServiceName": {
          "shape": "serviceName",
          "documentation": "<p>The name of the service associated with the service-specific credential.</p>"
        }
      },
      "documentation": "<p>Contains additional details about a service-specific credential.</p>"
    },
    "ServiceSpecificCredentialsListType": {
      "type": "list",
      "member": {
        "shape": "ServiceSpecificCredentialMetadata"
      }
    },
    "ServicesLastAccessed": {
      "type": "list",
      "member": {
        "shape": "ServiceLastAccessed"
      }
    },
    "SetDefaultPolicyVersionRequest": {
      "type": "structure",
      "required": [
        "PolicyArn",
        "VersionId"
      ],
      "members": {
        "PolicyArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM policy whose default version you want to set.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "VersionId": {
          "shape": "policyVersionIdType",
          "documentation": "<p>The version of the policy to set as the default (operative) version.</p> <p>For more information about managed policy versions, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html\">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>"
        }
      }
    },
    "SetSecurityTokenServicePreferencesRequest": {
      "type": "structure",
      "required": [
        "GlobalEndpointTokenVersion"
      ],
      "members": {
        "GlobalEndpointTokenVersion": {
          "shape": "globalEndpointTokenVersion",
          "documentation": "<p>The version of the global endpoint token. Version 1 tokens are valid only in AWS Regions that are available by default. These tokens do not work in manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However, version 2 tokens are longer and might affect systems where you temporarily store tokens.</p> <p>For information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html\">Activating and Deactivating STS in an AWS Region</a> in the <i>IAM User Guide</i>.</p>"
        }
      }
    },
    "SigningCertificate": {
      "type": "structure",
      "required": [
        "UserName",
        "CertificateId",
        "CertificateBody",
        "Status"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the user the signing certificate is associated with.</p>"
        },
        "CertificateId": {
          "shape": "certificateIdType",
          "documentation": "<p>The ID for the signing certificate.</p>"
        },
        "CertificateBody": {
          "shape": "certificateBodyType",
          "documentation": "<p>The contents of the signing certificate.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status of the signing certificate. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not.</p>"
        },
        "UploadDate": {
          "shape": "dateType",
          "documentation": "<p>The date when the signing certificate was uploaded.</p>"
        }
      },
      "documentation": "<p>Contains information about an X.509 signing certificate.</p> <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a> operations. </p>"
    },
    "SimulateCustomPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicyInputList",
        "ActionNames"
      ],
      "members": {
        "PolicyInputList": {
          "shape": "SimulationPolicyListType",
          "documentation": "<p>A list of policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy. Do not include any resource-based policies in this parameter. Any resource-based policy must be submitted with the <code>ResourcePolicy</code> parameter. The policies cannot be \"scope-down\" policies, such as you could include in a call to <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html\">GetFederationToken</a> or one of the <a href=\"https://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html\">AssumeRole</a> API operations. In other words, do not use policies designed to restrict what a user can do while using the temporary credentials.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "PermissionsBoundaryPolicyInputList": {
          "shape": "SimulationPolicyListType",
          "documentation": "<p>The IAM permissions boundary policy to simulate. The permissions boundary sets the maximum permissions that an IAM entity can have. You can input only one permissions boundary when you pass a policy to this operation. For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Entities</a> in the <i>IAM User Guide</i>. The policy input is specified as a string that contains the complete, valid JSON text of a permissions boundary policy.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "ActionNames": {
          "shape": "ActionNameListType",
          "documentation": "<p>A list of names of API operations to evaluate in the simulation. Each operation is evaluated against each resource. Each operation must include the service identifier, such as <code>iam:CreateUser</code>. This operation does not support using wildcards (*) in an action name.</p>"
        },
        "ResourceArns": {
          "shape": "ResourceNameListType",
          "documentation": "<p>A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided, then the value defaults to <code>*</code> (all resources). Each API in the <code>ActionNames</code> parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.</p> <p>The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the <code>ResourcePolicy</code> parameter.</p> <p>If you include a <code>ResourcePolicy</code>, then it must be applicable to all of the resources included in the simulation or you receive an invalid input error.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ResourcePolicy": {
          "shape": "policyDocumentType",
          "documentation": "<p>A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "ResourceOwner": {
          "shape": "ResourceNameType",
          "documentation": "<p>An ARN representing the AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN. Examples of resource ARNs include an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also used as the account owner of any <code>ResourcePolicy</code> included in the simulation. If the <code>ResourceOwner</code> parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in <code>CallerArn</code>. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user <code>CallerArn</code>.</p> <p>The ARN for an account uses the following syntax: <code>arn:aws:iam::<i>AWS-account-ID</i>:root</code>. For example, to represent the account with the 112233445566 ID, use the following ARN: <code>arn:aws:iam::112233445566-ID:root</code>. </p>"
        },
        "CallerArn": {
          "shape": "ResourceNameType",
          "documentation": "<p>The ARN of the IAM user that you want to use as the simulated caller of the API operations. <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> so that the policy's <code>Principal</code> element has a value to use in evaluating the policy.</p> <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.</p>"
        },
        "ContextEntries": {
          "shape": "ContextEntryListType",
          "documentation": "<p>A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permissions policies, the corresponding value is supplied.</p>"
        },
        "ResourceHandlingOption": {
          "shape": "ResourceHandlingOptionType",
          "documentation": "<p>Specifies the type of simulation to run. Different API operations that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.</p> <p>Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported Platforms</a> in the <i>Amazon EC2 User Guide</i>.</p> <ul> <li> <p> <b>EC2-Classic-InstanceStore</b> </p> <p>instance, image, security-group</p> </li> <li> <p> <b>EC2-Classic-EBS</b> </p> <p>instance, image, security-group, volume</p> </li> <li> <p> <b>EC2-VPC-InstanceStore</b> </p> <p>instance, image, security-group, network-interface</p> </li> <li> <p> <b>EC2-VPC-InstanceStore-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet</p> </li> <li> <p> <b>EC2-VPC-EBS</b> </p> <p>instance, image, security-group, network-interface, volume</p> </li> <li> <p> <b>EC2-VPC-EBS-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet, volume</p> </li> </ul>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        }
      }
    },
    "SimulatePolicyResponse": {
      "type": "structure",
      "members": {
        "EvaluationResults": {
          "shape": "EvaluationResultsListType",
          "documentation": "<p>The results of the simulation.</p>"
        },
        "IsTruncated": {
          "shape": "booleanType",
          "documentation": "<p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all your results.</p>"
        },
        "Marker": {
          "shape": "responseMarkerType",
          "documentation": "<p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>SimulatePrincipalPolicy</a> or <a>SimulateCustomPolicy</a> request.</p>"
    },
    "SimulatePrincipalPolicyRequest": {
      "type": "structure",
      "required": [
        "PolicySourceArn",
        "ActionNames"
      ],
      "members": {
        "PolicySourceArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to include in the simulation. If you specify a user, group, or role, the simulation includes all policies that are associated with that entity. If you specify a user, the simulation also includes all policies that are attached to any groups the user belongs to.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "PolicyInputList": {
          "shape": "SimulationPolicyListType",
          "documentation": "<p>An optional list of additional policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "PermissionsBoundaryPolicyInputList": {
          "shape": "SimulationPolicyListType",
          "documentation": "<p>The IAM permissions boundary policy to simulate. The permissions boundary sets the maximum permissions that the entity can have. You can input only one permissions boundary when you pass a policy to this operation. An IAM entity can only have one permissions boundary in effect at a time. For example, if a permissions boundary is attached to an entity and you pass in a different permissions boundary policy using this parameter, then the new permissions boundary policy is used for the simulation. For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Entities</a> in the <i>IAM User Guide</i>. The policy input is specified as a string containing the complete, valid JSON text of a permissions boundary policy.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "ActionNames": {
          "shape": "ActionNameListType",
          "documentation": "<p>A list of names of API operations to evaluate in the simulation. Each operation is evaluated for each resource. Each operation must include the service identifier, such as <code>iam:CreateUser</code>.</p>"
        },
        "ResourceArns": {
          "shape": "ResourceNameListType",
          "documentation": "<p>A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided, then the value defaults to <code>*</code> (all resources). Each API in the <code>ActionNames</code> parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.</p> <p>The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the <code>ResourcePolicy</code> parameter.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ResourcePolicy": {
          "shape": "policyDocumentType",
          "documentation": "<p>A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "ResourceOwner": {
          "shape": "ResourceNameType",
          "documentation": "<p>An AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN. Examples of resource ARNs include an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also used as the account owner of any <code>ResourcePolicy</code> included in the simulation. If the <code>ResourceOwner</code> parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in <code>CallerArn</code>. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user <code>CallerArn</code>.</p>"
        },
        "CallerArn": {
          "shape": "ResourceNameType",
          "documentation": "<p>The ARN of the IAM user that you want to specify as the simulated caller of the API operations. If you do not specify a <code>CallerArn</code>, it defaults to the ARN of the user that you specify in <code>PolicySourceArn</code>, if you specified a user. If you include both a <code>PolicySourceArn</code> (for example, <code>arn:aws:iam::123456789012:user/David</code>) and a <code>CallerArn</code> (for example, <code>arn:aws:iam::123456789012:user/Bob</code>), the result is that you simulate calling the API operations as Bob, as if Bob had David's policies.</p> <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.</p> <p> <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> and the <code>PolicySourceArn</code> is not the ARN for an IAM user. This is required so that the resource-based policy's <code>Principal</code> element has a value to use in evaluating the policy.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ContextEntries": {
          "shape": "ContextEntryListType",
          "documentation": "<p>A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permissions policies, the corresponding value is supplied.</p>"
        },
        "ResourceHandlingOption": {
          "shape": "ResourceHandlingOptionType",
          "documentation": "<p>Specifies the type of simulation to run. Different API operations that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.</p> <p>Each of the EC2 scenarios requires that you specify instance, image, and security group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported Platforms</a> in the <i>Amazon EC2 User Guide</i>.</p> <ul> <li> <p> <b>EC2-Classic-InstanceStore</b> </p> <p>instance, image, security group</p> </li> <li> <p> <b>EC2-Classic-EBS</b> </p> <p>instance, image, security group, volume</p> </li> <li> <p> <b>EC2-VPC-InstanceStore</b> </p> <p>instance, image, security group, network interface</p> </li> <li> <p> <b>EC2-VPC-InstanceStore-Subnet</b> </p> <p>instance, image, security group, network interface, subnet</p> </li> <li> <p> <b>EC2-VPC-EBS</b> </p> <p>instance, image, security group, network interface, volume</p> </li> <li> <p> <b>EC2-VPC-EBS-Subnet</b> </p> <p>instance, image, security group, network interface, subnet, volume</p> </li> </ul>"
        },
        "MaxItems": {
          "shape": "maxItemsType",
          "documentation": "<p>Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, the number of items defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>"
        },
        "Marker": {
          "shape": "markerType",
          "documentation": "<p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>"
        }
      }
    },
    "SimulationPolicyListType": {
      "type": "list",
      "member": {
        "shape": "policyDocumentType"
      }
    },
    "Statement": {
      "type": "structure",
      "members": {
        "SourcePolicyId": {
          "shape": "PolicyIdentifierType",
          "documentation": "<p>The identifier of the policy that was provided as an input.</p>"
        },
        "SourcePolicyType": {
          "shape": "PolicySourceType",
          "documentation": "<p>The type of the policy.</p>"
        },
        "StartPosition": {
          "shape": "Position",
          "documentation": "<p>The row and column of the beginning of the <code>Statement</code> in an IAM policy.</p>"
        },
        "EndPosition": {
          "shape": "Position",
          "documentation": "<p>The row and column of the end of a <code>Statement</code> in an IAM policy.</p>"
        }
      },
      "documentation": "<p>Contains a reference to a <code>Statement</code> element in a policy document that determines the result of the simulation.</p> <p>This data type is used by the <code>MatchedStatements</code> member of the <code> <a>EvaluationResult</a> </code> type.</p>"
    },
    "StatementListType": {
      "type": "list",
      "member": {
        "shape": "Statement"
      }
    },
    "Tag": {
      "type": "structure",
      "required": [
        "Key",
        "Value"
      ],
      "members": {
        "Key": {
          "shape": "tagKeyType",
          "documentation": "<p>The key name that can be used to look up or retrieve the associated value. For example, <code>Department</code> or <code>Cost Center</code> are common choices.</p>"
        },
        "Value": {
          "shape": "tagValueType",
          "documentation": "<p>The value associated with this tag. For example, tags with a key name of <code>Department</code> could have values such as <code>Human Resources</code>, <code>Accounting</code>, and <code>Support</code>. Tags with a key name of <code>Cost Center</code> might have values that consist of the number associated with the different cost centers in your company. Typically, many resources have tags with the same key name but with different values.</p> <note> <p>AWS always interprets the tag <code>Value</code> as a single string. If you need to store an array, you can store comma-separated values in the string. However, you must interpret the value in your code.</p> </note>"
        }
      },
      "documentation": "<p>A structure that represents user-provided metadata that can be associated with a resource such as an IAM user or role. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
    },
    "TagRoleRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "Tags"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role that you want to add tags to.</p> <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>The list of tags that you want to attach to the role. Each tag consists of a key name and an associated value. You can specify this with a JSON string.</p>"
        }
      }
    },
    "TagUserRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "Tags"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user that you want to add tags to.</p> <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>"
        },
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>The list of tags that you want to attach to the user. Each tag consists of a key name and an associated value.</p>"
        }
      }
    },
    "TrackedActionLastAccessed": {
      "type": "structure",
      "members": {
        "ActionName": {
          "shape": "stringType",
          "documentation": "<p>The name of the tracked action to which access was attempted. Tracked actions are actions that report activity to IAM.</p>"
        },
        "LastAccessedEntity": {
          "shape": "arnType"
        },
        "LastAccessedTime": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when an authenticated entity most recently attempted to access the tracked service. AWS does not report unauthenticated requests.</p> <p>This field is null if no IAM entities attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        },
        "LastAccessedRegion": {
          "shape": "stringType",
          "documentation": "<p>The Region from which the authenticated entity (user or role) last attempted to access the tracked action. AWS does not report unauthenticated requests.</p> <p>This field is null if no IAM entities attempted to access the service within the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period\">reporting period</a>.</p>"
        }
      },
      "documentation": "<p>Contains details about the most recent attempt to access an action within the service.</p> <p>This data type is used as a response element in the <a>GetServiceLastAccessedDetails</a> operation.</p>"
    },
    "TrackedActionsLastAccessed": {
      "type": "list",
      "member": {
        "shape": "TrackedActionLastAccessed"
      }
    },
    "UntagRoleRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "TagKeys"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the IAM role from which you want to remove tags.</p> <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "TagKeys": {
          "shape": "tagKeyListType",
          "documentation": "<p>A list of key names as a simple array of strings. The tags with matching keys are removed from the specified role.</p>"
        }
      }
    },
    "UntagUserRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "TagKeys"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the IAM user from which you want to remove tags.</p> <p>This parameter accepts (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>"
        },
        "TagKeys": {
          "shape": "tagKeyListType",
          "documentation": "<p>A list of key names as a simple array of strings. The tags with matching keys are removed from the specified user.</p>"
        }
      }
    },
    "UpdateAccessKeyRequest": {
      "type": "structure",
      "required": [
        "AccessKeyId",
        "Status"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user whose key you want to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "AccessKeyId": {
          "shape": "accessKeyIdType",
          "documentation": "<p>The access key ID of the secret access key you want to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p> The status you want to assign to the secret access key. <code>Active</code> means that the key can be used for API calls to AWS, while <code>Inactive</code> means that the key cannot be used.</p>"
        }
      }
    },
    "UpdateAccountPasswordPolicyRequest": {
      "type": "structure",
      "members": {
        "MinimumPasswordLength": {
          "shape": "minimumPasswordLengthType",
          "documentation": "<p>The minimum number of characters allowed in an IAM user password.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>6</code>.</p>"
        },
        "RequireSymbols": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters:</p> <p>! @ # $ % ^ &amp; * ( ) _ + - = [ ] { } | '</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that passwords do not require at least one symbol character.</p>"
        },
        "RequireNumbers": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that passwords do not require at least one numeric character.</p>"
        },
        "RequireUppercaseCharacters": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z).</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that passwords do not require at least one uppercase character.</p>"
        },
        "RequireLowercaseCharacters": {
          "shape": "booleanType",
          "documentation": "<p>Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z).</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that passwords do not require at least one lowercase character.</p>"
        },
        "AllowUsersToChangePassword": {
          "shape": "booleanType",
          "documentation": "<p> Allows all IAM users in your account to use the AWS Management Console to change their own passwords. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html\">Letting IAM Users Change Their Own Passwords</a> in the <i>IAM User Guide</i>.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that IAM users in the account do not automatically have permissions to change their own password.</p>"
        },
        "MaxPasswordAge": {
          "shape": "maxPasswordAgeType",
          "documentation": "<p>The number of days that an IAM user password is valid.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>0</code>. The result is that IAM user passwords never expire.</p>"
        },
        "PasswordReusePrevention": {
          "shape": "passwordReusePreventionType",
          "documentation": "<p>Specifies the number of previous passwords that IAM users are prevented from reusing.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>0</code>. The result is that IAM users are not prevented from reusing previous passwords.</p>"
        },
        "HardExpiry": {
          "shape": "booleanObjectType",
          "documentation": "<p>Prevents IAM users from setting a new password after their password has expired. The IAM user cannot be accessed until an administrator resets the password.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that IAM users can change their passwords after they expire and continue to sign in as the user.</p>"
        }
      }
    },
    "UpdateAssumeRolePolicyRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "PolicyDocument"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role to update with the new policy.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "PolicyDocument": {
          "shape": "policyDocumentType",
          "documentation": "<p>The policy that grants an entity permission to assume the role.</p> <p>You must provide policies in JSON format in IAM. However, for AWS CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML format. AWS CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "UpdateGroupRequest": {
      "type": "structure",
      "required": [
        "GroupName"
      ],
      "members": {
        "GroupName": {
          "shape": "groupNameType",
          "documentation": "<p>Name of the IAM group to update. If you're changing the name of the group, this is the original name.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "NewPath": {
          "shape": "pathType",
          "documentation": "<p>New path for the IAM group. Only include this if changing the group's path.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "NewGroupName": {
          "shape": "groupNameType",
          "documentation": "<p>New name for the IAM group. Only include this if changing the group's name.</p> <p>IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both \"MyResource\" and \"myresource\".</p>"
        }
      }
    },
    "UpdateLoginProfileRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the user whose password you want to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "Password": {
          "shape": "passwordType",
          "documentation": "<p>The new password for the specified IAM user.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul> <p>However, the format can be further restricted by the account administrator by setting a password policy on the AWS account. For more information, see <a>UpdateAccountPasswordPolicy</a>.</p>"
        },
        "PasswordResetRequired": {
          "shape": "booleanObjectType",
          "documentation": "<p>Allows this new password to be used only once by requiring the specified IAM user to set a new password on next sign-in.</p>"
        }
      }
    },
    "UpdateOpenIDConnectProviderThumbprintRequest": {
      "type": "structure",
      "required": [
        "OpenIDConnectProviderArn",
        "ThumbprintList"
      ],
      "members": {
        "OpenIDConnectProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        },
        "ThumbprintList": {
          "shape": "thumbprintListType",
          "documentation": "<p>A list of certificate thumbprints that are associated with the specified IAM OpenID Connect provider. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>"
        }
      }
    },
    "UpdateRoleDescriptionRequest": {
      "type": "structure",
      "required": [
        "RoleName",
        "Description"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role that you want to modify.</p>"
        },
        "Description": {
          "shape": "roleDescriptionType",
          "documentation": "<p>The new description that you want to apply to the specified role.</p>"
        }
      }
    },
    "UpdateRoleDescriptionResponse": {
      "type": "structure",
      "members": {
        "Role": {
          "shape": "Role",
          "documentation": "<p>A structure that contains details about the modified role.</p>"
        }
      }
    },
    "UpdateRoleRequest": {
      "type": "structure",
      "required": [
        "RoleName"
      ],
      "members": {
        "RoleName": {
          "shape": "roleNameType",
          "documentation": "<p>The name of the role that you want to modify.</p>"
        },
        "Description": {
          "shape": "roleDescriptionType",
          "documentation": "<p>The new description that you want to apply to the specified role.</p>"
        },
        "MaxSessionDuration": {
          "shape": "roleMaxSessionDurationType",
          "documentation": "<p>The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.</p> <p>Anyone who assumes the role from the AWS CLI or API can use the <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code> CLI parameter to request a longer session. The <code>MaxSessionDuration</code> setting determines the maximum duration that can be requested using the <code>DurationSeconds</code> parameter. If users don't specify a value for the <code>DurationSeconds</code> parameter, their security credentials are valid for one hour by default. This applies when you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI operations but does not apply when you use those operations to create a console URL. For more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html\">Using IAM Roles</a> in the <i>IAM User Guide</i>.</p>"
        }
      }
    },
    "UpdateRoleResponse": {
      "type": "structure",
      "members": {}
    },
    "UpdateSAMLProviderRequest": {
      "type": "structure",
      "required": [
        "SAMLMetadataDocument",
        "SAMLProviderArn"
      ],
      "members": {
        "SAMLMetadataDocument": {
          "shape": "SAMLMetadataDocumentType",
          "documentation": "<p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p>"
        },
        "SAMLProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SAML provider to update.</p> <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>"
        }
      }
    },
    "UpdateSAMLProviderResponse": {
      "type": "structure",
      "members": {
        "SAMLProviderArn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) of the SAML provider that was updated.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>UpdateSAMLProvider</a> request. </p>"
    },
    "UpdateSSHPublicKeyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "SSHPublicKeyId",
        "Status"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "SSHPublicKeyId": {
          "shape": "publicKeyIdType",
          "documentation": "<p>The unique identifier for the SSH public key.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status to assign to the SSH public key. <code>Active</code> means that the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means that the key cannot be used.</p>"
        }
      }
    },
    "UpdateServerCertificateRequest": {
      "type": "structure",
      "required": [
        "ServerCertificateName"
      ],
      "members": {
        "ServerCertificateName": {
          "shape": "serverCertificateNameType",
          "documentation": "<p>The name of the server certificate that you want to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "NewPath": {
          "shape": "pathType",
          "documentation": "<p>The new path for the server certificate. Include this only if you are updating the server certificate's path.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "NewServerCertificateName": {
          "shape": "serverCertificateNameType",
          "documentation": "<p>The new name for the server certificate. Include this only if you are updating the server certificate's name. The name of the certificate cannot contain any spaces.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        }
      }
    },
    "UpdateServiceSpecificCredentialRequest": {
      "type": "structure",
      "required": [
        "ServiceSpecificCredentialId",
        "Status"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user associated with the service-specific credential. If you do not specify this value, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "ServiceSpecificCredentialId": {
          "shape": "serviceSpecificCredentialId",
          "documentation": "<p>The unique identifier of the service-specific credential.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p>The status to be assigned to the service-specific credential.</p>"
        }
      }
    },
    "UpdateSigningCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateId",
        "Status"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the IAM user the signing certificate belongs to.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "CertificateId": {
          "shape": "certificateIdType",
          "documentation": "<p>The ID of the signing certificate you want to update.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>"
        },
        "Status": {
          "shape": "statusType",
          "documentation": "<p> The status you want to assign to the certificate. <code>Active</code> means that the certificate can be used for API calls to AWS <code>Inactive</code> means that the certificate cannot be used.</p>"
        }
      }
    },
    "UpdateUserRequest": {
      "type": "structure",
      "required": [
        "UserName"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>Name of the user to update. If you're changing the name of the user, this is the original user name.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "NewPath": {
          "shape": "pathType",
          "documentation": "<p>New path for the IAM user. Include this parameter only if you're changing the user's path.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p>"
        },
        "NewUserName": {
          "shape": "userNameType",
          "documentation": "<p>New name for the user. Include this parameter only if you're changing the user's name.</p> <p>IAM user, group, role, and policy names must be unique within the account. Names are not distinguished by case. For example, you cannot create resources named both \"MyResource\" and \"myresource\".</p>"
        }
      }
    },
    "UploadSSHPublicKeyRequest": {
      "type": "structure",
      "required": [
        "UserName",
        "SSHPublicKeyBody"
      ],
      "members": {
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The name of the IAM user to associate the SSH public key with.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "SSHPublicKeyBody": {
          "shape": "publicKeyMaterialType",
          "documentation": "<p>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format. The minimum bit-length of the public key is 2048 bits. For example, you can generate a 2048-bit key, and the resulting PEM file is 1679 bytes long.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "UploadSSHPublicKeyResponse": {
      "type": "structure",
      "members": {
        "SSHPublicKey": {
          "shape": "SSHPublicKey",
          "documentation": "<p>Contains information about the SSH public key.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>UploadSSHPublicKey</a> request.</p>"
    },
    "UploadServerCertificateRequest": {
      "type": "structure",
      "required": [
        "ServerCertificateName",
        "CertificateBody",
        "PrivateKey"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p>The path for the server certificate. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (<code>\\u0021</code>) through the DEL character (<code>\\u007F</code>), including most punctuation characters, digits, and upper and lowercased letters.</p> <note> <p> If you are uploading a server certificate specifically for use with Amazon CloudFront distributions, you must specify a path using the <code>path</code> parameter. The path must begin with <code>/cloudfront</code> and must include a trailing slash (for example, <code>/cloudfront/test/</code>).</p> </note>"
        },
        "ServerCertificateName": {
          "shape": "serverCertificateNameType",
          "documentation": "<p>The name for the server certificate. Do not include the path in this value. The name of the certificate cannot contain any spaces.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "CertificateBody": {
          "shape": "certificateBodyType",
          "documentation": "<p>The contents of the public key certificate in PEM-encoded format.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "PrivateKey": {
          "shape": "privateKeyType",
          "documentation": "<p>The contents of the private key in PEM-encoded format.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        },
        "CertificateChain": {
          "shape": "certificateChainType",
          "documentation": "<p>The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "UploadServerCertificateResponse": {
      "type": "structure",
      "members": {
        "ServerCertificateMetadata": {
          "shape": "ServerCertificateMetadata",
          "documentation": "<p>The meta information of the uploaded server certificate without its certificate body, certificate chain, and private key.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>UploadServerCertificate</a> request. </p>"
    },
    "UploadSigningCertificateRequest": {
      "type": "structure",
      "required": [
        "CertificateBody"
      ],
      "members": {
        "UserName": {
          "shape": "existingUserNameType",
          "documentation": "<p>The name of the user the signing certificate is for.</p> <p>This parameter allows (through its <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>"
        },
        "CertificateBody": {
          "shape": "certificateBodyType",
          "documentation": "<p>The contents of the signing certificate.</p> <p>The <a href=\"http://wikipedia.org/wiki/regex\">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (<code>\\u0020</code>) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through <code>\\u00FF</code>)</p> </li> <li> <p>The special characters tab (<code>\\u0009</code>), line feed (<code>\\u000A</code>), and carriage return (<code>\\u000D</code>)</p> </li> </ul>"
        }
      }
    },
    "UploadSigningCertificateResponse": {
      "type": "structure",
      "required": [
        "Certificate"
      ],
      "members": {
        "Certificate": {
          "shape": "SigningCertificate",
          "documentation": "<p>Information about the certificate.</p>"
        }
      },
      "documentation": "<p>Contains the response to a successful <a>UploadSigningCertificate</a> request. </p>"
    },
    "User": {
      "type": "structure",
      "required": [
        "Path",
        "UserName",
        "UserId",
        "Arn",
        "CreateDate"
      ],
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p>The path to the user. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The friendly name identifying the user.</p>"
        },
        "UserId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the user. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "Arn": {
          "shape": "arnType",
          "documentation": "<p>The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and how to use ARNs in policies, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>. </p>"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the user was created.</p>"
        },
        "PasswordLastUsed": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the user's password was last used to sign in to an AWS website. For a list of AWS websites that capture a user's last sign-in time, see the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html\">Credential Reports</a> topic in the <i>IAM User Guide</i>. If a password is used more than once in a five-minute span, only the first use is returned in this field. If the field is null (no value), then it indicates that they never signed in with a password. This can be because:</p> <ul> <li> <p>The user never had a password.</p> </li> <li> <p>A password exists but has not been used since IAM started tracking this information on October 20, 2014.</p> </li> </ul> <p>A null value does not mean that the user <i>never</i> had a password. Also, if the user does not currently have a password but had one in the past, then this field contains the date and time the most recent password was used.</p> <p>This value is returned only in the <a>GetUser</a> and <a>ListUsers</a> operations. </p>"
        },
        "PermissionsBoundary": {
          "shape": "AttachedPermissionsBoundary",
          "documentation": "<p>The ARN of the policy used to set the permissions boundary for the user.</p> <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>"
        },
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>A list of tags that are associated with the specified user. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains information about an IAM user entity.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateUser</a> </p> </li> <li> <p> <a>GetUser</a> </p> </li> <li> <p> <a>ListUsers</a> </p> </li> </ul>"
    },
    "UserDetail": {
      "type": "structure",
      "members": {
        "Path": {
          "shape": "pathType",
          "documentation": "<p>The path to the user. For more information about paths, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "UserName": {
          "shape": "userNameType",
          "documentation": "<p>The friendly name identifying the user.</p>"
        },
        "UserId": {
          "shape": "idType",
          "documentation": "<p>The stable and unique string identifying the user. For more information about IDs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>"
        },
        "Arn": {
          "shape": "arnType"
        },
        "CreateDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time, in <a href=\"http://www.iso.org/iso/iso8601\">ISO 8601 date-time format</a>, when the user was created.</p>"
        },
        "UserPolicyList": {
          "shape": "policyDetailListType",
          "documentation": "<p>A list of the inline policies embedded in the user.</p>"
        },
        "GroupList": {
          "shape": "groupNameListType",
          "documentation": "<p>A list of IAM groups that the user is in.</p>"
        },
        "AttachedManagedPolicies": {
          "shape": "attachedPoliciesListType",
          "documentation": "<p>A list of the managed policies attached to the user.</p>"
        },
        "PermissionsBoundary": {
          "shape": "AttachedPermissionsBoundary",
          "documentation": "<p>The ARN of the policy used to set the permissions boundary for the user.</p> <p>For more information about permissions boundaries, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html\">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>"
        },
        "Tags": {
          "shape": "tagListType",
          "documentation": "<p>A list of tags that are associated with the specified user. For more information about tagging, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html\">Tagging IAM Identities</a> in the <i>IAM User Guide</i>.</p>"
        }
      },
      "documentation": "<p>Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>"
    },
    "VirtualMFADevice": {
      "type": "structure",
      "required": [
        "SerialNumber"
      ],
      "members": {
        "SerialNumber": {
          "shape": "serialNumberType",
          "documentation": "<p>The serial number associated with <code>VirtualMFADevice</code>.</p>"
        },
        "Base32StringSeed": {
          "shape": "BootstrapDatum",
          "documentation": "<p> The base32 seed defined as specified in <a href=\"https://tools.ietf.org/html/rfc3548.txt\">RFC3548</a>. The <code>Base32StringSeed</code> is base64-encoded. </p>"
        },
        "QRCodePNG": {
          "shape": "BootstrapDatum",
          "documentation": "<p> A QR code PNG image that encodes <code>otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String</code> where <code>$virtualMFADeviceName</code> is one of the create call arguments. <code>AccountName</code> is the user name if set (otherwise, the account ID otherwise), and <code>Base32String</code> is the seed in base32 format. The <code>Base32String</code> value is base64-encoded. </p>"
        },
        "User": {
          "shape": "User",
          "documentation": "<p>The IAM user associated with this virtual MFA device.</p>"
        },
        "EnableDate": {
          "shape": "dateType",
          "documentation": "<p>The date and time on which the virtual MFA device was enabled.</p>"
        }
      },
      "documentation": "<p>Contains information about a virtual MFA device.</p>"
    },
    "accessKeyIdType": {
      "type": "string",
      "max": 128,
      "min": 16,
      "pattern": "[\\w]+"
    },
    "accessKeyMetadataListType": {
      "type": "list",
      "member": {
        "shape": "AccessKeyMetadata"
      },
      "documentation": "<p>Contains a list of access key metadata.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> operation.</p>"
    },
    "accessKeySecretType": {
      "type": "string",
      "sensitive": true
    },
    "accountAliasListType": {
      "type": "list",
      "member": {
        "shape": "accountAliasType"
      }
    },
    "accountAliasType": {
      "type": "string",
      "max": 63,
      "min": 3,
      "pattern": "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$"
    },
    "arnType": {
      "type": "string",
      "documentation": "<p>The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS resources.</p> <p>For more information about ARNs, go to <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>. </p>",
      "max": 2048,
      "min": 20
    },
    "assignmentStatusType": {
      "type": "string",
      "enum": [
        "Assigned",
        "Unassigned",
        "Any"
      ]
    },
    "attachedPoliciesListType": {
      "type": "list",
      "member": {
        "shape": "AttachedPolicy"
      }
    },
    "attachmentCountType": {
      "type": "integer"
    },
    "authenticationCodeType": {
      "type": "string",
      "max": 6,
      "min": 6,
      "pattern": "[\\d]+"
    },
    "booleanObjectType": {
      "type": "boolean",
      "box": true
    },
    "booleanType": {
      "type": "boolean"
    },
    "certificateBodyType": {
      "type": "string",
      "max": 16384,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "certificateChainType": {
      "type": "string",
      "max": 2097152,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "certificateIdType": {
      "type": "string",
      "max": 128,
      "min": 24,
      "pattern": "[\\w]+"
    },
    "certificateListType": {
      "type": "list",
      "member": {
        "shape": "SigningCertificate"
      },
      "documentation": "<p>Contains a list of signing certificates.</p> <p>This data type is used as a response element in the <a>ListSigningCertificates</a> operation.</p>"
    },
    "clientIDListType": {
      "type": "list",
      "member": {
        "shape": "clientIDType"
      }
    },
    "clientIDType": {
      "type": "string",
      "max": 255,
      "min": 1
    },
    "customSuffixType": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "dateType": {
      "type": "timestamp"
    },
    "encodingType": {
      "type": "string",
      "enum": [
        "SSH",
        "PEM"
      ]
    },
    "entityDetailsListType": {
      "type": "list",
      "member": {
        "shape": "EntityDetails"
      }
    },
    "entityListType": {
      "type": "list",
      "member": {
        "shape": "EntityType"
      }
    },
    "entityNameType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "existingUserNameType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "globalEndpointTokenVersion": {
      "type": "string",
      "enum": [
        "v1Token",
        "v2Token"
      ]
    },
    "groupDetailListType": {
      "type": "list",
      "member": {
        "shape": "GroupDetail"
      }
    },
    "groupListType": {
      "type": "list",
      "member": {
        "shape": "Group"
      },
      "documentation": "<p>Contains a list of IAM groups.</p> <p>This data type is used as a response element in the <a>ListGroups</a> operation.</p>"
    },
    "groupNameListType": {
      "type": "list",
      "member": {
        "shape": "groupNameType"
      }
    },
    "groupNameType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "idType": {
      "type": "string",
      "max": 128,
      "min": 16,
      "pattern": "[\\w]+"
    },
    "instanceProfileListType": {
      "type": "list",
      "member": {
        "shape": "InstanceProfile"
      },
      "documentation": "<p>Contains a list of instance profiles.</p>"
    },
    "instanceProfileNameType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "integerType": {
      "type": "integer"
    },
    "jobIDType": {
      "type": "string",
      "max": 36,
      "min": 36
    },
    "jobStatusType": {
      "type": "string",
      "enum": [
        "IN_PROGRESS",
        "COMPLETED",
        "FAILED"
      ]
    },
    "listPolicyGrantingServiceAccessResponseListType": {
      "type": "list",
      "member": {
        "shape": "ListPoliciesGrantingServiceAccessEntry"
      }
    },
    "markerType": {
      "type": "string",
      "max": 320,
      "min": 1,
      "pattern": "[\\u0020-\\u00FF]+"
    },
    "maxItemsType": {
      "type": "integer",
      "max": 1000,
      "min": 1
    },
    "maxPasswordAgeType": {
      "type": "integer",
      "box": true,
      "max": 1095,
      "min": 1
    },
    "mfaDeviceListType": {
      "type": "list",
      "member": {
        "shape": "MFADevice"
      },
      "documentation": "<p>Contains a list of MFA devices.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> and <a>ListVirtualMFADevices</a> operations. </p>"
    },
    "minimumPasswordLengthType": {
      "type": "integer",
      "max": 128,
      "min": 6
    },
    "organizationsEntityPathType": {
      "type": "string",
      "max": 427,
      "min": 19,
      "pattern": "^o-[0-9a-z]{10,32}\\/r-[0-9a-z]{4,32}[0-9a-z-\\/]*"
    },
    "organizationsPolicyIdType": {
      "type": "string",
      "pattern": "^p-[0-9a-zA-Z_]{8,128}$"
    },
    "passwordReusePreventionType": {
      "type": "integer",
      "box": true,
      "max": 24,
      "min": 1
    },
    "passwordType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+",
      "sensitive": true
    },
    "pathPrefixType": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "\\u002F[\\u0021-\\u007F]*"
    },
    "pathType": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "(\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F)"
    },
    "policyDescriptionType": {
      "type": "string",
      "max": 1000
    },
    "policyDetailListType": {
      "type": "list",
      "member": {
        "shape": "PolicyDetail"
      }
    },
    "policyDocumentType": {
      "type": "string",
      "max": 131072,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "policyDocumentVersionListType": {
      "type": "list",
      "member": {
        "shape": "PolicyVersion"
      }
    },
    "policyGrantingServiceAccessListType": {
      "type": "list",
      "member": {
        "shape": "PolicyGrantingServiceAccess"
      }
    },
    "policyListType": {
      "type": "list",
      "member": {
        "shape": "Policy"
      }
    },
    "policyNameListType": {
      "type": "list",
      "member": {
        "shape": "policyNameType"
      },
      "documentation": "<p>Contains a list of policy names.</p> <p>This data type is used as a response element in the <a>ListPolicies</a> operation.</p>"
    },
    "policyNameType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "policyOwnerEntityType": {
      "type": "string",
      "enum": [
        "USER",
        "ROLE",
        "GROUP"
      ]
    },
    "policyPathType": {
      "type": "string",
      "max": 512,
      "min": 1,
      "pattern": "((/[A-Za-z0-9\\.,\\+@=_-]+)*)/"
    },
    "policyScopeType": {
      "type": "string",
      "enum": [
        "All",
        "AWS",
        "Local"
      ]
    },
    "policyType": {
      "type": "string",
      "enum": [
        "INLINE",
        "MANAGED"
      ]
    },
    "policyVersionIdType": {
      "type": "string",
      "pattern": "v[1-9][0-9]*(\\.[A-Za-z0-9-]*)?"
    },
    "privateKeyType": {
      "type": "string",
      "max": 16384,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+",
      "sensitive": true
    },
    "publicKeyFingerprintType": {
      "type": "string",
      "max": 48,
      "min": 48,
      "pattern": "[:\\w]+"
    },
    "publicKeyIdType": {
      "type": "string",
      "max": 128,
      "min": 20,
      "pattern": "[\\w]+"
    },
    "publicKeyMaterialType": {
      "type": "string",
      "max": 16384,
      "min": 1,
      "pattern": "[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+"
    },
    "responseMarkerType": {
      "type": "string"
    },
    "roleDescriptionType": {
      "type": "string",
      "max": 1000,
      "pattern": "[\\p{L}\\p{M}\\p{Z}\\p{S}\\p{N}\\p{P}]*"
    },
    "roleDetailListType": {
      "type": "list",
      "member": {
        "shape": "RoleDetail"
      }
    },
    "roleListType": {
      "type": "list",
      "member": {
        "shape": "Role"
      },
      "documentation": "<p>Contains a list of IAM roles.</p> <p>This data type is used as a response element in the <a>ListRoles</a> operation.</p>"
    },
    "roleMaxSessionDurationType": {
      "type": "integer",
      "max": 43200,
      "min": 3600
    },
    "roleNameType": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "serialNumberType": {
      "type": "string",
      "max": 256,
      "min": 9,
      "pattern": "[\\w+=/:,.@-]+"
    },
    "serverCertificateMetadataListType": {
      "type": "list",
      "member": {
        "shape": "ServerCertificateMetadata"
      }
    },
    "serverCertificateNameType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "serviceName": {
      "type": "string"
    },
    "serviceNameType": {
      "type": "string"
    },
    "serviceNamespaceListType": {
      "type": "list",
      "member": {
        "shape": "serviceNamespaceType"
      },
      "max": 200,
      "min": 1
    },
    "serviceNamespaceType": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[\\w-]*"
    },
    "servicePassword": {
      "type": "string",
      "sensitive": true
    },
    "serviceSpecificCredentialId": {
      "type": "string",
      "max": 128,
      "min": 20,
      "pattern": "[\\w]+"
    },
    "serviceUserName": {
      "type": "string",
      "max": 200,
      "min": 17,
      "pattern": "[\\w+=,.@-]+"
    },
    "sortKeyType": {
      "type": "string",
      "enum": [
        "SERVICE_NAMESPACE_ASCENDING",
        "SERVICE_NAMESPACE_DESCENDING",
        "LAST_AUTHENTICATED_TIME_ASCENDING",
        "LAST_AUTHENTICATED_TIME_DESCENDING"
      ]
    },
    "statusType": {
      "type": "string",
      "enum": [
        "Active",
        "Inactive"
      ]
    },
    "stringType": {
      "type": "string"
    },
    "summaryKeyType": {
      "type": "string",
      "enum": [
        "Users",
        "UsersQuota",
        "Groups",
        "GroupsQuota",
        "ServerCertificates",
        "ServerCertificatesQuota",
        "UserPolicySizeQuota",
        "GroupPolicySizeQuota",
        "GroupsPerUserQuota",
        "SigningCertificatesPerUserQuota",
        "AccessKeysPerUserQuota",
        "MFADevices",
        "MFADevicesInUse",
        "AccountMFAEnabled",
        "AccountAccessKeysPresent",
        "AccountSigningCertificatesPresent",
        "AttachedPoliciesPerGroupQuota",
        "AttachedPoliciesPerRoleQuota",
        "AttachedPoliciesPerUserQuota",
        "Policies",
        "PoliciesQuota",
        "PolicySizeQuota",
        "PolicyVersionsInUse",
        "PolicyVersionsInUseQuota",
        "VersionsPerPolicyQuota",
        "GlobalEndpointTokenVersion"
      ]
    },
    "summaryMapType": {
      "type": "map",
      "key": {
        "shape": "summaryKeyType"
      },
      "value": {
        "shape": "summaryValueType"
      }
    },
    "summaryValueType": {
      "type": "integer"
    },
    "tagKeyListType": {
      "type": "list",
      "member": {
        "shape": "tagKeyType"
      },
      "max": 50
    },
    "tagKeyType": {
      "type": "string",
      "max": 128,
      "min": 1,
      "pattern": "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]+"
    },
    "tagListType": {
      "type": "list",
      "member": {
        "shape": "Tag"
      },
      "max": 50
    },
    "tagValueType": {
      "type": "string",
      "max": 256,
      "min": 0,
      "pattern": "[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*"
    },
    "thumbprintListType": {
      "type": "list",
      "member": {
        "shape": "thumbprintType"
      },
      "documentation": "<p>Contains a list of thumbprints of identity provider server certificates.</p>"
    },
    "thumbprintType": {
      "type": "string",
      "documentation": "<p>Contains a thumbprint for an identity provider's server certificate.</p> <p>The identity provider's server certificate thumbprint is the hex-encoded SHA-1 hash value of the self-signed X.509 certificate. This thumbprint is used by the domain where the OpenID Connect provider makes its keys available. The thumbprint is always a 40-character string.</p>",
      "max": 40,
      "min": 40
    },
    "userDetailListType": {
      "type": "list",
      "member": {
        "shape": "UserDetail"
      }
    },
    "userListType": {
      "type": "list",
      "member": {
        "shape": "User"
      },
      "documentation": "<p>Contains a list of users.</p> <p>This data type is used as a response element in the <a>GetGroup</a> and <a>ListUsers</a> operations. </p>"
    },
    "userNameType": {
      "type": "string",
      "max": 64,
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    },
    "virtualMFADeviceListType": {
      "type": "list",
      "member": {
        "shape": "VirtualMFADevice"
      }
    },
    "virtualMFADeviceName": {
      "type": "string",
      "min": 1,
      "pattern": "[\\w+=,.@-]+"
    }
  },
  "documentation": "<fullname>AWS Identity and Access Management</fullname> <p>AWS Identity and Access Management (IAM) is a web service for securely controlling access to AWS services. With IAM, you can centrally manage users, security credentials such as access keys, and permissions that control which AWS resources users and applications can access. For more information about IAM, see <a href=\"http://aws.amazon.com/iam/\">AWS Identity and Access Management (IAM)</a> and the <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/\">AWS Identity and Access Management User Guide</a>.</p>"
}
]===]))
